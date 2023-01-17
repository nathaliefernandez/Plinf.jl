; Goal 1: Cheeseburger
        (exists (?hamburger-bun - food ?beef - food ?cheese - food ?plate - receptacle)
                (and (food-type beef ?beef)
                     (food-type hamburger-bun ?hamburger-bun)
                     (food-type cheese ?cheese)
                     (receptacle-type plate ?plate)
                     (cooked grill ?beef)
                     (prepared slice ?cheese)
                     (in-receptacle ?hamburger-bun ?plate)
                     (in-receptacle ?beef ?plate)
                     (in-receptacle ?cheese ?plate)))
; Goal 2: Hamburger
        (exists (?hamburger-bun - food ?beef - food ?potato - food ?plate - receptacle)
                (and (food-type beef ?beef)
                     (food-type hamburger-bun ?hamburger-bun)
                     (receptacle-type plate ?plate)
                     (cooked grill ?beef)
                     (in-receptacle ?hamburger-bun ?plate)
                     (in-receptacle ?beef ?plate)))
; Goal 3: Burger and fries
        (exists (?hamburger-bun - food ?beef - food ?potato - food ?plate - receptacle)
                (and (food-type beef ?beef)
                     (food-type hamburger-bun ?hamburger-bun)
                     (food-type potato ?potato)
                     (receptacle-type plate ?plate)
                     (cooked grill ?beef)
                     (prepared slice ?potato)
                     (cooked deep-fry ?potato)
                     (in-receptacle ?hamburger-bun ?plate)
                     (in-receptacle ?beef ?plate)
                     (in-receptacle ?potato ?plate)))
; Goal 4: Cheeseburger and fries
        (exists (?hamburger-bun - food ?beef - food ?cheese - food ?potato - food ?plate - receptacle)
                (and (food-type beef ?beef)
                     (food-type hamburger-bun ?hamburger-bun)
                     (food-type cheese ?cheese)
                     (food-type potato ?potato)
                     (receptacle-type plate ?plate)
                     (cooked grill ?beef)
                     (prepared slice ?cheese)
                     (prepared slice ?potato)
                     (cooked deep-fry ?potato)
                     (in-receptacle ?hamburger-bun ?plate)
                     (in-receptacle ?beef ?plate)
                     (in-receptacle ?cheese ?plate)
                     (in-receptacle ?potato ?plate)))
; Goal 5: Fries
        (exists (?potato - food ?plate - receptacle)
                (and (food-type potato ?potato)
                     (receptacle-type plate ?plate)
                     (prepared slice ?potato)
                     (cooked deep-fry ?potato)
                     (in-receptacle ?potato ?plate)))
    