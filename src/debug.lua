
-- serves to test features, comment out before creating a release
SMODS.Challenge {
    key = 'debug',
    loc_txt = {
        name = "Debug",
        text = "test"
    },
    jokers = {
        { id = "j_tarnished_fragile-heart" }
    },
    rules = {
        modifiers = {
            { id = "hand_size", value = 52 },
            { id = "dollars", value = 1000 },
            { id = "discards", value = 10 },
            { id = "hands", value = 10 },
            { id = "reroll_cost", value = 0 },
            { id = "joker_slots", value = 150 }
        }
    },
    deck = {
        cards = { 
            { s = 'tarnished_BH', r = "A" }, 
            { s = 'tarnished_BH', r = "K" }, 
            { s = 'tarnished_BH', r = "Q" }, 
            { s = 'tarnished_BH', r = "J" }, 
            { s = 'tarnished_BH', r = "T" }, 
            { s = 'tarnished_BH', r = "9" }, 
            { s = 'tarnished_BH', r = "8" }, 
            { s = 'tarnished_BH', r = "7" }, 
            { s = 'tarnished_BH', r = "6" }, 
            { s = 'tarnished_BH', r = "5" }, 
            { s = 'tarnished_BH', r = "4" }, 
            { s = 'tarnished_BH', r = "3" }, 
            { s = 'tarnished_BH', r = "2" }, 

            { s = 'tarnished_OC', r = "A" }, 
            { s = 'tarnished_OC', r = "K" }, 
            { s = 'tarnished_OC', r = "Q" }, 
            { s = 'tarnished_OC', r = "J" }, 
            { s = 'tarnished_OC', r = "T" }, 
            { s = 'tarnished_OC', r = "9" }, 
            { s = 'tarnished_OC', r = "8" }, 
            { s = 'tarnished_OC', r = "7" }, 
            { s = 'tarnished_OC', r = "6" }, 
            { s = 'tarnished_OC', r = "5" }, 
            { s = 'tarnished_OC', r = "4" }, 
            { s = 'tarnished_OC', r = "3" }, 
            { s = 'tarnished_OC', r = "2" }, 

            { s = 'tarnished_BD', r = "A" }, 
            { s = 'tarnished_BD', r = "K" }, 
            { s = 'tarnished_BD', r = "Q" }, 
            { s = 'tarnished_BD', r = "J" }, 
            { s = 'tarnished_BD', r = "T" }, 
            { s = 'tarnished_BD', r = "9" }, 
            { s = 'tarnished_BD', r = "8" }, 
            { s = 'tarnished_BD', r = "7" }, 
            { s = 'tarnished_BD', r = "6" }, 
            { s = 'tarnished_BD', r = "5" }, 
            { s = 'tarnished_BD', r = "4" }, 
            { s = 'tarnished_BD', r = "3" }, 
            { s = 'tarnished_BD', r = "2" }, 
    
            { s = 'tarnished_RS', r = "A" }, 
            { s = 'tarnished_RS', r = "K" }, 
            { s = 'tarnished_RS', r = "Q" }, 
            { s = 'tarnished_RS', r = "J" }, 
            { s = 'tarnished_RS', r = "T" }, 
            { s = 'tarnished_RS', r = "9" }, 
            { s = 'tarnished_RS', r = "8" }, 
            { s = 'tarnished_RS', r = "7" }, 
            { s = 'tarnished_RS', r = "6" }, 
            { s = 'tarnished_RS', r = "5" }, 
            { s = 'tarnished_RS', r = "4" }, 
            { s = 'tarnished_RS', r = "3" }, 
            { s = 'tarnished_RS', r = "2" }, 
        }
    }
}

