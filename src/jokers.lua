
SMODS.Joker {
    key = 'fragile-heart',
    atlas = 'Jokers',
    pos = { x = 0, y = 0},
    loc_txt = {
        name = "Fragile Heart",
        text = {
            "Enhances scoring {C:SUITS:Hearts}Hearts{}", -- [[todo]] use localized name, but also this doesn't work
            "{C:green}#1# in #2#{} chance played {C:SUITS:Hearts}heart{}",
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
        if context.cardarea == G.jokers and context.before then
            for i=1, #context.scoring_hand do 
                if context.scoring_hand[i]:is_suit('Hearts') and context.scoring_hand[i].config.center.key == "c_base" then
                    SMODS.calculate_effect({
                        message = "Enhanced"
                    }, context.scoring_hand[i])
                    context.scoring_hand[i]:set_ability(G.P_CENTERS[SMODS.poll_enhancement({ guaranteed = true })], nill, true)
                end
            end
            return {}
        end

        if context.destroy_card and context.cardarea == G.play and context.destroy_card:is_suit('Hearts') then 
            if pseudorandom('hearts', 0, 1) < (G.GAME.probabilities.normal / card.ability.extra.odds) then 
                return {
                    remove = true,
                }
            end
        end

        return {}
    end,
    rarity = 2,
    cost = 6,
    eternal_compat = true,
    perishable_compat = true
}
