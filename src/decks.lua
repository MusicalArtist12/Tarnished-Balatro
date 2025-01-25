SMODS.Back {
    key = 'graveyard',
    loc_txt = {
        name = "Graveyard Deck",
        text = { "start run with", "Mausoleum Voucher", "and a deck of tarnished suits" }
    },
    atlas = 'Backs',
    pos = { x = 1, y = 4},
    config = {
        vouchers = { "v_tarnished_mausoleum" }
    },
    apply = function(self) 
        G.E_MANAGER:add_event(Event({
            func = function()
                for _, card in ipairs(G.playing_cards) do
                    if     card:is_suit('Hearts')   then assert(SMODS.change_base(card, "tarnished_broken-heart", nil))
                    elseif card:is_suit('Clubs')    then assert(SMODS.change_base(card, "tarnished_overgrown-club", nil))
                    elseif card:is_suit('Diamonds') then assert(SMODS.change_base(card, "tarnished_blood-diamond", nil))
                    elseif card:is_suit("Spades")   then assert(SMODS.change_base(card, "tarnished_rusty-spade", nil))
                    end
                end
                return true
            end
        }))
    end
}