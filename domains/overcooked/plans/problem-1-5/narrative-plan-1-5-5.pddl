(move start-loc food-loc)
(pick-up bacon1 food-loc)
(move food-loc chop-loc)
(place-in bacon1 board1 chop-loc)
; They place bacon on the chopping board.
(pick-up glove1 chop-loc)
(prepare crumble board1 glove1 bacon1 chop-loc)
; They crumble the bacon using gloves.
(put-down glove1 chop-loc)
(pick-up board1 chop-loc)
(move chop-loc food-loc)
(put-down board1 food-loc)
(move food-loc chop-loc)
(pick-up knife1 chop-loc)
(move chop-loc food-loc)
(put-down knife1 food-loc)
; They bring the chopping board and knife to where the food is located.
(pick-up lettuce1 food-loc)
(place-in lettuce1 board1 food-loc)
(pick-up tomato1 food-loc)
(place-in tomato1 board1 food-loc)
(pick-up knife1 food-loc)
(prepare slice board1 knife1 tomato1 food-loc)
(prepare chop board1 knife1 lettuce1 food-loc)
; They place lettuce and tomato on the chopping board, then slice them.
(put-down knife1 food-loc)
(pick-up cheese1 food-loc)
(place-in cheese1 board1 food-loc)
(pick-up avocado1 food-loc)
(place-in avocado1 board1 food-loc)
(pick-up knife1 food-loc)
(prepare slice board1 knife1 avocado1 food-loc)
(prepare slice board1 knife1 cheese1 food-loc)
; They slice cheese and avocado as well.
(put-down knife1 food-loc)
(pick-up board1 food-loc)
(move food-loc plate-loc)
(transfer board1 plate1 plate-loc)
; They transfer everything on the chopping board to the plate.
(move plate-loc food-loc)
(put-down board1 food-loc)
(pick-up chicken1 food-loc)
(move food-loc stove-loc)
(place-in chicken1 pan1 stove-loc)
(cook grill pan1 stove2 stove-loc)
; They find chicken, place it in the pan, and grill it.
(pick-up pan1 stove-loc)
(move stove-loc plate-loc)
(transfer pan1 plate1 plate-loc)
; They add the grilled chicken to the plate.
(move plate-loc food-loc)
(put-down pan1 food-loc)
(pick-up egg1 food-loc)
(move food-loc stove-loc)
(place-in egg1 pot1 stove-loc)
(cook boil pot1 stove1 stove-loc)
; They place an egg in a pot, then boil it
(pick-up pot1 stove-loc)
(move stove-loc plate-loc)
(transfer pot1 plate1 plate-loc)
; They transfer the boiled egg to the plate.
(put-down pot1 plate-loc)
(move plate-loc food-loc)
(pick-up salad-dressing1 food-loc)
(move food-loc plate-loc)
(place-in salad-dressing1 plate1 plate-loc)
; They add salad dressing to the plate.
