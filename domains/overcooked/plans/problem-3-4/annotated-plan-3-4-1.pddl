(move start-loc food-loc)
(pick-up cheese1 food-loc)
(move food-loc chop-loc)
(place-in cheese1 board1 chop-loc)
(move chop-loc food-loc)
(pick-up tomato1 food-loc)
(move food-loc chop-loc)
(place-in tomato1 board1 chop-loc)
(move chop-loc food-loc)
(pick-up lettuce1 food-loc)
(move food-loc chop-loc)
(place-in lettuce1 board1 chop-loc)
(pick-up knife1 chop-loc)
(prepare slice board1 knife1 tomato1 chop-loc)
(prepare slice board1 knife1 cheese1 chop-loc)
(prepare slice board1 knife1 lettuce1 chop-loc)
; They pick up cheese, tomato, and lettuce and slice them on the chopping board.
(put-down knife1 chop-loc)
(pick-up board1 chop-loc)
(move chop-loc plate-loc)
(transfer board1 plate1 plate-loc)
; They place the sliced cheese, tomato, and lettuce on the place.
(move plate-loc food-loc)
(put-down board1 food-loc)
(pick-up tuna1 food-loc)
(move food-loc mix-loc)
(place-in tuna1 mixing-bowl1 mix-loc)
(move mix-loc food-loc)
(pick-up mayo1 food-loc)
(move food-loc mix-loc)
(place-in mayo1 mixing-bowl1 mix-loc)
(combine mix mixing-bowl1 mixer1 mix-loc)
; They pick up the tuna and mayo and mix them in a mixing bowl.
(pick-up mixing-bowl1 mix-loc)
(move mix-loc plate-loc)
(transfer mixing-bowl1 plate1 plate-loc)
; They add the mixed tuna and mayo to the plate with the sliced cheese, tomato, and lettuce,
(move plate-loc food-loc)
(put-down mixing-bowl1 food-loc)
(pick-up bread1 food-loc)
(move food-loc plate-loc)
(place-in bread1 plate1 plate-loc)
; They pick up the bread and put it on the plate with the slices cheese, tomato, lettuce, and tuna and mayo.
