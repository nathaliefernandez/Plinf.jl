; Goal 1: Chocolate strawberries
        (exists (?chocolate - food ?strawberry - food ?plate - receptacle)
                (and (food-type chocolate ?chocolate)
                     (food-type strawberry ?strawberry)
                     (receptacle-type plate ?plate)
                     (combined-with mix ?chocolate ?strawberry)
                     (in-receptacle ?chocolate ?plate)
                     (in-receptacle ?strawberry ?plate)))
; Goal 2: Orange, peach, grape plate/parfait
        (exists (?orange - food ?peach - food ?grape - food ?glass - receptacle)
                (and (food-type orange ?orange)
                     (food-type peach ?peach)
                     (food-type grape ?grape)
                     (receptacle-type glass ?glass)
                     (prepared slice ?orange)
                     (prepared slice ?peach)
                     (in-receptacle ?orange ?glass)
                     (in-receptacle ?peach ?glass)
                     (in-receptacle ?grape ?glass)))
; Goal 3: Apple, grape, strawberry plate/parfait
        (exists (?apple - food ?strawberry - food ?grape - food ?glass - receptacle)
                (and (food-type apple ?apple)
                     (food-type strawberry ?strawberry)
                     (food-type grape ?grape)
                     (receptacle-type glass ?glass)
                     (prepared slice ?apple)
                     (prepared slice ?strawberry)
                     (in-receptacle ?apple ?glass)
                     (in-receptacle ?strawberry ?glass)
                     (in-receptacle ?grape ?glass)))
; Goal 4: Sliced apple
        (exists (?apple - food  ?plate - receptacle)
                (and (food-type apple ?apple)
                     (receptacle-type plate ?plate)
                     (prepared slice ?apple)
                     (in-receptacle ?apple ?plate)))
; Goal 5: Sliced orange
        (exists (?orange - food ?plate - receptacle)
                (and (food-type orange ?orange)
                     (receptacle-type plate ?plate)
                     (prepared slice ?orange)
                     (in-receptacle ?orange ?plate)))