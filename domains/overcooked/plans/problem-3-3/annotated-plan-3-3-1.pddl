(move start-loc food-loc)
(pick-up cheese1 food-loc)
(move food-loc chop-loc)
(place-in cheese1 board1 chop-loc)
(pick-up knife1 chop-loc)
(prepare slice board1 knife1 cheese1 chop-loc)
; (prepared slice cheese1)
(put-down knife1 chop-loc)
(pick-up board1 chop-loc)
(move chop-loc plate-loc)
(transfer board1 plate1 plate-loc)
; (in-receptacle cheese1 plate1)
; First, they slice cheese on a chopping board then put it on the plate.
(move plate-loc food-loc)
(put-down board1 food-loc)
(pick-up potato1 food-loc)
(place-in potato1 board1 food-loc)
(move food-loc chop-loc)
(pick-up knife1 chop-loc)
(move chop-loc food-loc)
(prepare slice board1 knife1 potato1 food-loc)
; (prepared slice potato1)
; Then, they slice the potato on the chopping board.
(put-down knife1 food-loc)
(pick-up board1 food-loc)
(move food-loc fryer-loc)
(transfer board1 basket1 fryer-loc)
(cook deep-fry basket1 fryer1 fryer-loc)
; (cooked deep-fry potato1)
; Then, they deep fry the slices of potato.
(move fryer-loc chop-loc)
(put-down board1 chop-loc)
(move chop-loc fryer-loc)
(pick-up basket1 fryer-loc)
(move fryer-loc plate-loc)
(transfer basket1 plate1 plate-loc)
; (in-receptacle potato1 plate1)
; Then, they transfer the fried slices of potato to the plate with the cheese.
(move plate-loc food-loc)
(put-down basket1 food-loc)
(pick-up beef1 food-loc)
(move food-loc stove-loc)
(place-in beef1 pan1 stove-loc)
(cook grill pan1 stove1 stove-loc)
; (cooked grill beef1)
; Then, they pick up the beef and place it on a pan on the stove to grill.
(pick-up pan1 stove-loc)
(move stove-loc plate-loc)
(transfer pan1 plate1 plate-loc)
; (in-receptacle beef1 plate1)
; Then, they transfer the grilled beef to the plate.
(put-down pan1 plate-loc)
(move plate-loc food-loc)
(pick-up hamburger-bun1 food-loc)
(move food-loc plate-loc)
(place-in hamburger-bun1 plate1 plate-loc)
; (in-receptacle hamburger-bun1 plate1)
; Then, they pick up the hamburger bun and place it on the plate with the grilled beef and cheese.
