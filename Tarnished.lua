
SMODS.Atlas {
    key = "Jokers",
    path = "Jokers.png",
    px = 71,
    py = 95
}

SMODS.Atlas {
    key = "HC_deck",
    path = "hc_deck.png",
    px = 71,
    py = 95
}
  
SMODS.Atlas {
    key = "LC_deck",
    path = "lc_deck.png",
    px = 71,
    py = 95
}
  


local function has_any_enhancement(card)
    card.extra_enhancements = nil
    for k, _ in pairs(SMODS.get_enhancements(card)) do
        sendInfoMessage(k, "has_any_enhancement")
        return true 
    end
    return false
end

SMODS.Joker {
    key = 'fragile-heart',
    atlas = 'Jokers',
    pos = { x = 0, y = 0},
    loc_txt = {
        name = "Fragile Heart",
        text = {
            "Enhances played {C:red}Hearts{}", -- [[todo]] use localized value
            "{C:green}#1# in #2#{} chance played {C:red}heart{}",
            "is destroyed"
        }
    },
    config = {
        extra = {
            odds = 4,
        },
        discovered = true
    },
    loc_vars = function(self, info_queue, card) 
        return { vars = { (G.GAME.probabilities.normal or 1), card.ability.extra.odds } }
    end,
    calculate = function(self, card, context)
        -- score, then add enhancement
        if context.individual and context.cardarea == G.play then
            if context.other_card:is_suit('Hearts') and not has_any_enhancement(context.other_card) then
                context.other_card:set_ability(G.P_CENTERS[SMODS.poll_enhancement({ guaranteed = true })], nill, true)
                return {}
            end
        end

        if context.destroy_card and context.cardarea == G.play and context.other_card:is_suit('Hearts') then
            return {
                remove = pseudorandom('hearts', 0, 1) < G.GAME.probabilities.normal / card.ability.extra.odds
            }
        end
    end,
    rarity = 2,
    cost = 6,
    eternal_compat = true,
    perishable_compat = true
}

SMODS.Suit {
    key = "broken-heart",
    card_key = "BH",
    pos = { y = 0 },
    ui_pos = 5,
    loc_txt = {
        singular = "Broken Heart",
        plural = "Broken Hearts"
    },
    lc_atlas = 'LC_deck',
    hc_atlas = 'HC_deck'
}

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
            { s = 'tarnished_BH', r = "A" }, 
    
        }
    }
}

