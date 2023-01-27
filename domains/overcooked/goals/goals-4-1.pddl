;Margherita pizza made with cheese, tomato, basil, baked on pizza dough made from egg and flour.
        (exists (?egg - food ?flour - food ?tomato - food ?cheese - food ?basil - food ?plate - receptacle)
            (and (food-type egg ?egg)
                 (food-type flour ?flour)
                 (food-type tomato ?tomato)
                 (food-type cheese ?cheese)
                 (food-type basil ?basil)
                 (receptacle-type plate ?plate)
                 (prepared slice ?tomato)
                 (combined-with mix ?egg ?flour)
                 (cooked-with bake ?egg ?flour)
                 (cooked-with bake ?tomato ?flour)
                 (cooked-with bake ?tomato ?cheese)
                 (cooked-with bake ?cheese ?basil)
                 (in-receptacle ?tomato ?plate)
                 (in-receptacle ?cheese ?plate)
                 (in-receptacle ?basil ?plate)
                 (in-receptacle ?egg ?plate)
                 (in-receptacle ?flour ?plate)))
;A cheese pizza made with cheese and tomato baked on pizza dough made from egg and flour.
        (exists (?egg - food ?flour - food ?tomato - food ?cheese - food ?plate - receptacle)
            (and (food-type egg ?egg)
                 (food-type flour ?flour)
                 (food-type tomato ?tomato)
                 (food-type cheese ?cheese)
                 (receptacle-type plate ?plate)
                 (prepared slice ?tomato)
                 (combined-with mix ?egg ?flour)
                 (cooked-with bake ?egg ?flour)
                 (cooked-with bake ?tomato ?flour)
                 (cooked-with bake ?tomato ?cheese)
                 (in-receptacle ?tomato ?plate)
                 (in-receptacle ?cheese ?plate)
                 (in-receptacle ?egg ?plate)
                 (in-receptacle ?flour ?plate)))
;A pepperoni pizza made with cheese, tomato, and sausage baked on pizza dough made from egg and flour.
        (exists (?egg - food ?flour - food ?tomato - food ?cheese - food ?sausage - food ?plate - receptacle)
            (and (food-type egg ?egg)
                 (food-type flour ?flour)
                 (food-type tomato ?tomato)
                 (food-type cheese ?cheese)
                 (food-type sausage ?sausage)
                 (receptacle-type plate ?plate)
                 (prepared slice ?tomato)
                 (combined-with mix ?egg ?flour)
                 (cooked-with bake ?egg ?flour)
                 (cooked-with bake ?tomato ?flour)
                 (cooked-with bake ?tomato ?cheese)
                 (cooked-with bake ?cheese ?sausage)
                 (in-receptacle ?tomato ?plate)
                 (in-receptacle ?cheese ?plate)
                 (in-receptacle ?sausage ?plate)
                 (in-receptacle ?egg ?plate)
                 (in-receptacle ?flour ?plate)))
;A olive pizza made with cheese, tomato, and olive baked on pizza dough made from egg and flour.
        (exists (?egg - food ?flour - food ?tomato - food ?cheese - food ?olive - food ?plate - receptacle)
            (and (food-type egg ?egg)
                 (food-type flour ?flour)
                 (food-type tomato ?tomato)
                 (food-type cheese ?cheese)
                 (food-type olive ?olive)
                 (receptacle-type plate ?plate)
                 (prepared slice ?tomato)
                 (combined-with mix ?egg ?flour)
                 (cooked-with bake ?egg ?flour)
                 (cooked-with bake ?tomato ?flour)
                 (cooked-with bake ?tomato ?cheese)
                 (cooked-with bake ?cheese ?olive)
                 (in-receptacle ?tomato ?plate)
                 (in-receptacle ?cheese ?plate)
                 (in-receptacle ?olive ?plate)
                 (in-receptacle ?egg ?plate)
                 (in-receptacle ?flour ?plate)))
;A pepperoni and olive pizza made with cheese, tomato, sausage and olive baked on pizza dough made from egg and flour.
        (exists (?egg - food ?flour - food ?tomato - food ?cheese - food ?sausage - food ?olive - food ?plate - receptacle)
            (and (food-type egg ?egg)
                 (food-type flour ?flour)
                 (food-type tomato ?tomato)
                 (food-type cheese ?cheese)
                 (food-type sausage ?sausage)
                 (food-type olive ?olive)
                 (receptacle-type plate ?plate)
                 (prepared slice ?tomato)
                 (combined-with mix ?egg ?flour)
                 (cooked-with bake ?egg ?flour)
                 (cooked-with bake ?flour ?tomato)
                 (cooked-with bake ?tomato ?cheese)
                 (cooked-with bake ?cheese ?sausage)
                 (cooked-with bake ?sausage ?olive)
                 (in-receptacle ?tomato ?plate)
                 (in-receptacle ?cheese ?plate)
                 (in-receptacle ?sausage ?plate)
                 (in-receptacle ?olive ?plate)
                 (in-receptacle ?egg ?plate)
                 (in-receptacle ?flour ?plate)))