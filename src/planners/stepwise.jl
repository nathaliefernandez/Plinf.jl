## Abstractions for sampling plans across multiple timesteps ##
export get_step, get_step_proposal
export sample_step_range, propose_step_range
export extract_plan, extract_traj

## Interface for plan states ##

"Abstract plan state for step-wise plan computation."
abstract type AbstractPlanState end

"Returns current action, given the step-wise planning state."
get_action(ps::AbstractPlanState)::Term =
    error("Not implemented")

"Returns next environment state, given the step-wise planning state."
get_next_state(ps::AbstractPlanState)::State =
    error("Not implemented")

"Extract plan from a sequence of planning states."
extract_plan(plan_states::AbstractArray{<:AbstractPlanState}) =
    error("Not implemented.")

"Extract planned trajectory from a sequence of planning states."
extract_traj(plan_states::AbstractArray{<:AbstractPlanState}) =
    error("Not implemented.")

"Default state implementation for a planning step."
struct PlanState <: AbstractPlanState
    step::Int
    plan::Vector{Term}
    traj::Vector{State}
end

get_action(ps::PlanState)::Term =
    0 < ps.step <= length(ps.plan) ? ps.plan[ps.step] : Const(Symbol("--"))

"Extract plan from a sequence of planning states."
extract_plan(plan_states::AbstractArray{PlanState}) = plan_states[end].plan

"Extract planned trajectory from a sequence of planning states."
extract_traj(plan_states::AbstractArray{PlanState}) = plan_states[end].traj

"Intialize step-wise planning state."
init_plan_state(::Planner)::AbstractPlanState =
    PlanState(0, Term[], State[])

## Step-wise planning calls ##

"Returns a step-wise version of the planning call."
get_step(::Planner)::GenerativeFunction = planner_step

"Returns the data-driven proposal for a planning step."
get_step_proposal(::Planner)::GenerativeFunction = planner_propose_step

"Default step-wise planning call, which does all planning up-front."
@gen function planner_step(t::Int, ps::PlanState, planner::Planner,
                           domain::Domain, state::State, spec::Specification)
   if ps.step == 0 # Calls planner at the start
       call = get_call(planner)
       plan, traj = @trace(call(planner, domain, state, spec))
       if plan == nothing || traj == nothing # Return no-op on plan failure
           plan, traj = Term[Const(Symbol("--"))], State[state]
       end
       return PlanState(1, plan, traj)
   else
       return PlanState(ps.step + 1, ps.plan, ps.traj)
   end
end

"Default proposal for planner step."
@gen function planner_propose_step(t::Int, ps::AbstractPlanState,
                                   planner::Planner, domain::Domain,
                                   state::State, spec::Specification,
                                   obs_states::Vector{<:Union{State,Nothing}},
                                   proposal_args::Tuple)
    # Default to using prior as proposal
    step_call = get_step(planner)
    return @trace(step_call(t, ps, planner, domain, state, spec))
end

"Sample planning steps for timesteps in `t1:t2`."
@gen function sample_step_range(t1::Int, t2::Int, ps::AbstractPlanState,
                                planner::Planner, domain::Domain,
                                env_states::Vector{<:Union{State,Nothing}},
                                spec::Specification)
   step_call = get_step(planner)
   plan_states = Vector{typeof(ps)}()
   state = nothing
   for t in 1:(t2-t1+1)
       state = (t == 1 || env_states[t] !== nothing) ? env_states[t] :
           transition(domain, state, get_action(ps))
       ps = @trace(step_call(t+t1-1, ps, planner, domain, state, spec),
                   :timestep => t+t1-1 => :agent => :plan)
       push!(plan_states, ps)
   end
   return plan_states
end

"Propose planning steps for timesteps in `t1:t2`."
@gen function propose_step_range(t1::Int, t2::Int, ps::AbstractPlanState,
                                 planner::Planner, domain::Domain,
                                 env_states::Vector{<:Union{State,Nothing}},
                                 spec::Specification,
                                 obs_states::Vector{<:Union{State,Nothing}},
                                 proposal_args::Vector{<:Union{Tuple,Nothing}})
   step_propose = get_step_proposal(planner)
   plan_states = Vector{typeof(ps)}()
   state = nothing
   for t in 1:(t2-t1+1)
       state = (t == 1 || env_states[t] !== nothing) ? env_states[t] :
           transition(domain, state, get_action(ps))
       ps = @trace(step_propose(t+t1-1, ps, planner, domain, state,
                                spec, obs_states[t:end], proposal_args[t]),
                   :timestep => t+t1-1 => :agent => :plan)
   end
   return plan_states
end
