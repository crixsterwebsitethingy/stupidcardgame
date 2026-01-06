return function(game)
    print("Mod is running")

    game:mods_setHandSize(-1)
    local giggity = {"Johhny Bravo", "Dexter", "Dee Dee", "Mandark", "The Powerpuff Girls"}
    game:mods_addJokers(giggity, {"double points", "extra attempt"})
end