(move start-loc food-loc)
(pick-up apple1 food-loc)
(move food-loc chop-loc)
(place-in apple1 board1 chop-loc)
(pick-up knife1 chop-loc)
(prepare slice board1 knife1 apple1 chop-loc)
; They pick up an apple and slice it on the chopping board.
(put-down knife1 chop-loc)
(move chop-loc food-loc)
(pick-up strawberry1 food-loc)
(move food-loc chop-loc)
(place-in strawberry1 board1 chop-loc)
(pick-up knife1 chop-loc)
(prepare slice board1 knife1 strawberry1 chop-loc)
; They slice strawberry on the chopping board.
(put-down knife1 chop-loc)
(pick-up board1 chop-loc)
(move chop-loc glass-loc)
(transfer board1 glass1 glass-loc)
; They transfer the sliced apple and strawberry to the glass.
(put-down board1 glass-loc)
(move glass-loc food-loc)
(pick-up grape1 food-loc)
(move food-loc glass-loc)
(place-in grape1 glass1 glass-loc)
; They place some grapes into the glass.
