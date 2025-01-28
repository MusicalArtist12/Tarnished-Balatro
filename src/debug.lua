
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
            { id = "hand_size", value = 104 },
            { id = "dollars", value = 1000 },
            { id = "discards", value = 10 },
            { id = "hands", value = 10 },
            { id = "reroll_cost", value = 0 },
            { id = "joker_slots", value = 150 }
        }
    },
    vouchers = {
        { id = 'v_tarnished_mausoleum' }
    },
    deck = {
        type = 'Challenge Deck',
        cards = { 
            { s = 'H', r = "A" }, 
            { s = 'H', r = "K" }, 
            { s = 'H', r = "Q" }, 
            { s = 'H', r = "J" }, 
            { s = 'H', r = "T" }, 
            { s = 'H', r = "9" }, 
            { s = 'H', r = "8" }, 
            { s = 'H', r = "7" }, 
            { s = 'H', r = "6" }, 
            { s = 'H', r = "5" }, 
            { s = 'H', r = "4" }, 
            { s = 'H', r = "3" }, 
            { s = 'H', r = "2" }, 

            { s = 'C', r = "A" }, 
            { s = 'C', r = "K" }, 
            { s = 'C', r = "Q" }, 
            { s = 'C', r = "J" }, 
            { s = 'C', r = "T" }, 
            { s = 'C', r = "9" }, 
            { s = 'C', r = "8" }, 
            { s = 'C', r = "7" }, 
            { s = 'C', r = "6" }, 
            { s = 'C', r = "5" }, 
            { s = 'C', r = "4" }, 
            { s = 'C', r = "3" }, 
            { s = 'C', r = "2" }, 

            { s = 'D', r = "A" }, 
            { s = 'D', r = "K" }, 
            { s = 'D', r = "Q" }, 
            { s = 'D', r = "J" }, 
            { s = 'D', r = "T" }, 
            { s = 'D', r = "9" }, 
            { s = 'D', r = "8" }, 
            { s = 'D', r = "7" }, 
            { s = 'D', r = "6" }, 
            { s = 'D', r = "5" }, 
            { s = 'D', r = "4" }, 
            { s = 'D', r = "3" }, 
            { s = 'D', r = "2" }, 
    
            { s = 'S', r = "A" }, 
            { s = 'S', r = "K" }, 
            { s = 'S', r = "Q" }, 
            { s = 'S', r = "J" }, 
            { s = 'S', r = "T" }, 
            { s = 'S', r = "9" }, 
            { s = 'S', r = "8" }, 
            { s = 'S', r = "7" }, 
            { s = 'S', r = "6" }, 
            { s = 'S', r = "5" }, 
            { s = 'S', r = "4" }, 
            { s = 'S', r = "3" }, 
            { s = 'S', r = "2" }, 

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
            { s = 'tarnished_RS', r = "2" }
        }
    }
}



-- serves to test features, comment out before creating a release
SMODS.Challenge {
    key = 'debugb',
    loc_txt = {
        name = "Debug2",
        text = "test"
    },
    jokers = {
        { id = "j_tarnished_fragile-heart" }
    },
    rules = {
        modifiers = {
            { id = "hand_size", value = 104 },
            { id = "dollars", value = 1000 },
            { id = "discards", value = 10 },
            { id = "hands", value = 10 },
            { id = "reroll_cost", value = 0 },
            { id = "joker_slots", value = 150 }
        }
    },
    vouchers = {
        { id = 'v_tarnished_mausoleum' }
    },
    deck = {
        type = 'Challenge Deck',
        cards = { 
            { s = 'H', r = "A" }, 
            { s = 'H', r = "K" }, 
            { s = 'H', r = "Q" }, 
            { s = 'H', r = "J" }, 
            { s = 'H', r = "T" }, 
            { s = 'H', r = "9" }, 
            { s = 'H', r = "8" }, 
            { s = 'H', r = "7" }, 
            { s = 'H', r = "6" }, 
            { s = 'H', r = "5" }, 
            { s = 'H', r = "4" }, 
            { s = 'H', r = "3" }, 
            { s = 'H', r = "2" }, 

            { s = 'C', r = "A" }, 
            { s = 'C', r = "K" }, 
            { s = 'C', r = "Q" }, 
            { s = 'C', r = "J" }, 
            { s = 'C', r = "T" }, 
            { s = 'C', r = "9" }, 
            { s = 'C', r = "8" }, 
            { s = 'C', r = "7" }, 
            { s = 'C', r = "6" }, 
            { s = 'C', r = "5" }, 
            { s = 'C', r = "4" }, 
            { s = 'C', r = "3" }, 
            { s = 'C', r = "2" }, 

            { s = 'D', r = "A" }, 
            { s = 'D', r = "K" }, 
            { s = 'D', r = "Q" }, 
            { s = 'D', r = "J" }, 
            { s = 'D', r = "T" }, 
            { s = 'D', r = "9" }, 
            { s = 'D', r = "8" }, 
            { s = 'D', r = "7" }, 
            { s = 'D', r = "6" }, 
            { s = 'D', r = "5" }, 
            { s = 'D', r = "4" }, 
            { s = 'D', r = "3" }, 
            { s = 'D', r = "2" }, 
    
            { s = 'S', r = "A" }, 
            { s = 'S', r = "K" }, 
            { s = 'S', r = "Q" }, 
            { s = 'S', r = "J" }, 
            { s = 'S', r = "T" }, 
            { s = 'S', r = "9" }, 
            { s = 'S', r = "8" }, 
            { s = 'S', r = "7" }, 
            { s = 'S', r = "6" }, 
            { s = 'S', r = "5" }, 
            { s = 'S', r = "4" }, 
            { s = 'S', r = "3" }, 
            { s = 'S', r = "2" }, 
        }
    }
}

