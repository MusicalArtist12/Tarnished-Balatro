local add_tranished_variant = function(card) 
    local suit = card.base.suit
    local rank = card.base.value
    
    if card.base.suit == 'Hearts' then
        suit = 'tarnished_BH'
    elseif card.base.suit == 'Clubs' then
        suit = 'tarnished_OC'
    elseif card.base.suit == 'Diamonds' then
        suit = 'tarnished_BD'
    elseif card.base.suit == 'Spades' then
        suit = 'tarnished_RS'
    end

    create_playing_card({
        front = G.P_CARDS[suit .. '_' .. rank],
        center = G.P_CENTERS.c_base,
    }, G.hand, nil, nil, nil)
end

-- [[TODO]] fix the description... its bad
--          description should also definitely use loc_var and color
SMODS.Voucher {
    key = "mausoleum",
    loc_txt = {
        name = 'The Mausoleum',
        text = { 
            'Tarnished playing cards', 
            'are now available', 
            'Destroyed Hearts now turn into Broken Hearts of the same rank',
            'Clubs left in hand have a 1/2 chance of becoming an Overgrown Club',
            'Adding Diamonds to your deck have a 1/2 chance of also adding a Blood Diamond',
            'Discarding Spades have a 1/2 chance of turning into a Rusty Spade'
        }
    },
    atlas = 'Vouchers',
    pos = { y = 0, x = 7 },
    cost = 10,
    config = {
        discovered = false,
        unlocked = true
    },
    redeem = function(self, card) 
        TARNISHED.tarnished_pool = true
    end,
    calculate = function(self, card, context) 
        if context.remove_playing_cards == true and context.removed then
            for i=1, #context.removed do
                if context.removed[i]:is_suit('Hearts') then
                    add_tranished_variant(context.removed[i])
                end
            end
        end
    end

}

SMODS.Voucher {
    key = "catacombs",
    loc_txt = {
        name = 'The Catacombs',
        text = { 'Tarnished cards also count', 'as their untarnished suit'}
    },
    atlas = 'Vouchers',
    requires = { 'v_tarnished_mausoleum' },
    pos = { y = 0, x = 7 },
    cost = 10,
    config = {
        discovered = false,
        unlocked = true
    },
}