(move start-loc blend-loc)
(pick-up blender-jug1 blend-loc)
(move blend-loc food-loc)
(put-down blender-jug1 food-loc)
; They move the blender jug to where the food is located.
(pick-up strawberry1 food-loc)
(place-in strawberry1 blender-jug1 food-loc)
; They add strawberries to the blender jug.
(pick-up apple1 food-loc)
(place-in apple1 blender-jug1 food-loc)
(pick-up watermelon1 food-loc)
(place-in watermelon1 blender-jug1 food-loc)
; They add apples and watermelon to the blender jug.
(pick-up ice1 food-loc)
(place-in ice1 blender-jug1 food-loc)
; They add ice to the blender jug.
(pick-up blender-jug1 food-loc)
(move food-loc blend-loc)
(put-down blender-jug1 blend-loc)
(combine blend blender-jug1 blender1 blend-loc)
; They put the blender jug back in the blender, then blend the ingredients.
(pick-up blender-jug1 blend-loc)
(move blend-loc glass-loc)
(transfer blender-jug1 glass1 glass-loc)
; They transfer the contents of the blender jug to a glass.
