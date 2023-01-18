;Goal 1: Tuna + rice sushi
        (exists (?tuna - food ?rice - food ?plate - receptacle)
                (and (food-type tuna ?tuna)
                     (food-type rice ?rice)
                     (receptacle-type plate ?plate)
                     (prepared slice ?tuna)
                     (cooked boil ?rice)
                     (in-receptacle ?rice ?plate)
                     (in-receptacle ?tuna ?plate)))
; Goal 2: Salmon + rice sushi
        (exists (?salmon - food ?rice - food ?plate - receptacle)
                (and (food-type salmon ?salmon)
                     (food-type rice ?rice)
                     (receptacle-type plate ?plate)
                     (prepared slice ?salmon)
                     (cooked boil ?rice)
                     (in-receptacle ?rice ?plate)
                     (in-receptacle ?salmon ?plate)))
;Goal 3: Tuna + salmon + rice sushi
        (exists (?salmon - food ?rice - food ?tuna - food ?plate - receptacle)
                (and (food-type salmon ?salmon)
                     (food-type rice ?rice)
                     (food-type tuna ?tuna)
                     (receptacle-type plate ?plate)
                     (prepared slice ?salmon)
                     (prepared slice ?tuna)
                     (cooked boil ?rice)
                     (in-receptacle ?salmon ?plate)
                     (in-receptacle ?rice ?plate)
                     (in-receptacle ?tuna ?plate)))
;Goal 4: Griled tuna rice bowl
        (exists (?tuna - food ?bowl - receptacle)
                (and (food-type tuna ?tuna)
                     (receptacle-type bowl ?bowl)
                     (cooked grill ?tuna)
                     (in-receptacle ?tuna ?bowl)))
;Goal 5: Raw tuna rice bowl
        (exists (?tuna - food ?bowl - receptacle)
                (and (food-type tuna ?tuna)
                     (receptacle-type bowl ?bowl)
                     (in-receptacle ?tuna ?bowl)))