(move start-loc food-loc)
(pick-up tuna1 food-loc)
(move food-loc chop-loc)
(place-in tuna1 board1 chop-loc)
; They place tuna on the chopping board.
(move chop-loc food-loc)
(pick-up salmon1 food-loc)
(move food-loc chop-loc)
(place-in salmon1 board1 chop-loc)
; They place salmon on the chopping board.
(pick-up s-knife1 chop-loc)
(prepare slice board1 s-knife1 salmon1 chop-loc)
(prepare slice board1 s-knife1 tuna1 chop-loc)
; They slice the salmon and tuna.
(put-down s-knife1 chop-loc)
(pick-up board1 chop-loc)
(move chop-loc plate-loc)
(transfer board1 plate1 plate-loc)
; They transfer the sliced salmon and tuna to a plate.
