
SMODS.Joker {
    key = 'fragile-heart',
    atlas = 'Jokers',
    pos = { x = 0, y = 0},
    loc_txt = {
        name = "Fragile Heart",
        text = {
            "Enhances scoring {C:red}Hearts{}", -- [[todo]] use localized value and color
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

        -- https://github.com/Steamodded/smods/wiki/Guide-%E2%80%90-Joker-Calculation
        if context.cardarea == G.jokers and context.before then
            for i=1, #context.scoring_hand do 
                if context.scoring_hand[i]:is_suit('Hearts') and context.scoring_hand[i].config.center.key == "c_base" then
                    SMODS.calculate_effect({
                        message = "Enhanced"
                    }, context.scoring_hand[i])
                    context.scoring_hand[i]:set_ability(G.P_CENTERS[SMODS.poll_enhancement({ guaranteed = true })], nill, true)
                end
            end

            return {
                message = "here"
            }
        end

        if context.destroy_card and context.cardarea == G.play and context.destroying_card:is_suit('Hearts') then 
            
            if pseudorandom('hearts', 0, 1) < G.GAME.probabilities.normal / card.ability.extra.odds then 
                return {
                    remove = true,
                    message = "Heartbroken"
                }
            else 
                return {
                    remove = false,
                    message = "Safe"
                }
            end
        end

    end,
    rarity = 2,
    cost = 6,
    eternal_compat = true,
    perishable_compat = true
}
