; Salad bar with tomato and lettuce salad as goal
(define (problem overcooked-problem-1-2)
	(:domain overcooked)
	(:objects
		tomato lettuce cucumber onion salad-dressing - ftype ; Food types
		chopping-board plate mixing-bowl - rtype ; Receptacle types
		knife - ttype ; Tool types
		mixer - atype ; Appliance types
		slice - prepare-method ; Preparation methods
		mix - combine-method ; Combination methods
		tomato1 lettuce1 cucumber1 onion1 salad-dressing1  food ; Food objects
		board1 plate1 bowl1 - receptacle ; Receptacle objects
		knife1 - tool ; Tool objects
		start-loc food-loc chop-loc plate-loc mix-loc - location ; Locations
	)
	(:init
		; Type declarations
		(food-type tomato tomato1)
		(food-type lettuce lettuce1)
		(food-type cucumber cucumber1)
		(food-type onion onion1)
		(food-type salad-dressing salad-dressing1)
		(receptacle-type chopping-board board1)
		(receptacle-type plate plate1)
		(receptacle-type mixing-bowl mixing-bowl1)
		(tool-type knife knife1)
		; Method declarations
		(has-prepare-method slice chopping-board knife)
		(has-combine-method mix mixing-bowl mixer)
		; Initial agent state
		(handempty)
		(agent-at-loc start-loc)
		; Initial food locations
		(object-at-loc tomato1 food-loc)
		(object-at-loc lettuce1 food-loc)
		(object-at-loc cucumber1 food-loc)
		(object-at-loc salad-dressing1 food-loc)
		; Initial receptacle and tool locations
		(object-at-loc board1 chop-loc)
		(object-at-loc knife1 chop-loc)
		(object-at-loc plate1 plate-loc)
		; Initial appliance locations
		(object-at-loc mixing-bowl1 mix-loc)
	)
	(:goal
		(exists (?lettuce - food ?tomato - food ?cucumber - food ?onion - food ?salad-dressing - food ?plate - receptacle)
		        (and (food-type lettuce ?lettuce)
					 (food-type tomato ?tomato)
                     (food-type cucumber ?cucumber)
					 (food-type onion ?onion)
					 (food-type salad-dressing ?salad-dressing)
					 (receptacle-type plate ?plate)
		             (prepared slice ?lettuce)
					 (prepared slice ?tomato)
					 (prepared slice ?cucumber)
					 (prepared slice ?onion)
					 (combined-with mix ?salad-dressing ?lettuce)
					 (combined-with mix ?lettuce ?tomato)
					 (combined-with mix ?tomato ?onion)
					 (combined-with mix ?onion ?cucumber)
		             (in-receptacle ?lettuce ?plate)
					 (in-receptacle ?cucumber ?plate)
					 (in-receptacle ?onion ?plate)
					 (in-receptacle ?tomato ?plate)
					 (in-receptacle ?salad-dressing ?plate)))
	)
)

