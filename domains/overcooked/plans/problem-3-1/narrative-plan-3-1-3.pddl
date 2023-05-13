(move start-loc chop-loc)
(pick-up board1 chop-loc)
(move chop-loc food-loc)
(put-down board1 food-loc)
; They move the chopping board over to the food.
(pick-up ham1 food-loc)
(place-in ham1 board1 food-loc)
(pick-up cheese1 food-loc)
(place-in cheese1 board1 food-loc)
; They place ham and cheese in the chopping board.
(move food-loc chop-loc)
(pick-up knife1 chop-loc)
(move chop-loc food-loc)
(prepare slice board1 knife1 ham1 food-loc)
(prepare slice board1 knife1 cheese1 food-loc)
; They find a knife then slice the ham and cheese.
(put-down knife1 food-loc)
(move food-loc plate-loc)
(pick-up plate1 plate-loc)
(move plate-loc food-loc)
(put-down plate1 food-loc)
; They bring over a plate to the food.
(pick-up bread1 food-loc)
(place-in bread1 plate1 food-loc)
(take-out ham1 board1 food-loc)
(place-in ham1 plate1 food-loc)
(take-out cheese1 board1 food-loc)
(place-in cheese1 plate1 food-loc)
; They put bread on the plate, then add the ham and cheese.
(pick-up lettuce1 food-loc)
(place-in lettuce1 board1 food-loc)
(pick-up tomato1 food-loc)
(place-in tomato1 board1 food-loc)
(pick-up knife1 food-loc)
(prepare slice board1 knife1 lettuce1 food-loc)
(prepare slice board1 knife1 tomato1 food-loc)
; They place lettuce and tomato on the chopping board and slice them.
(put-down knife1 food-loc)
(pick-up board1 food-loc)
(transfer board1 plate1 food-loc)
; They transfer the lettuce and tomato to the plate.
