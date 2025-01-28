
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

        -- https://github.com/Steamodded/smods/wiki/Guide-%E2%80%90-Joker-Calculation


    end,
    rarity = 2,
    cost = 6,
    eternal_compat = true,
    perishable_compat = true
}
