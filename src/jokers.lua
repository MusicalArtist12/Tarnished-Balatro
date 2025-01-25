
SMODS.Joker {
    key = 'fragile-heart',
    atlas = 'Jokers',
    pos = { x = 0, y = 0},
    loc_txt = {
        name = "Fragile Heart",
        text = {
            "Enhances played {C:red}Hearts{}", -- [[todo]] use localized value and color
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
        
        -- check for null?
        -- score, then add enhancement
        if context.individual and context.cardarea == G.play
        and not context.other_card == nil and context.other_card:is_suit('Hearts') 
        and not TARNISHED:has_any_enhancement(context.other_card) then
            context.other_card:set_ability(G.P_CENTERS[SMODS.poll_enhancement({ guaranteed = true })], nill, true)
            return {}
        end

        if context.destroy_card 
        and context.cardarea == G.play 
        and not context.other_card == nil 
        and context.other_card:is_suit('Hearts') then
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
