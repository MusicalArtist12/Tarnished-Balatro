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

    return true
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
            'Destroyed Hearts have a 1/2 of becoming a Broken Heart of the same rank',
            'Clubs left in hand have a 1/2 chance of becoming an Overgrown Club',
            'Adding Diamonds to your deck have a 1/2 chance of also adding a Blood Diamond',
            'Discarding Spades have a 1/2 chance of becoming a Rusty Spade'
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
        
        -- hearts
        if context.remove_playing_cards == true and context.removed then
            for i=1, #context.removed do
                if context.removed[i]:is_suit('Hearts') then
                    assert(add_tranished_variant(context.removed[i]))
                    SMODS.calculate_effect({
                        message = "Tarnished"
                    }, context.removed[i])
                end
                SMODS.calculate_effect({
                    message = "Safe"
                }, context.removed[i])
            end
            
            return {}
        end

        -- clubs
        if context.cardarea == G.hand and context.individual then
            -- G.hand.cards - turn clubs into overgrown clubs
            if context.other_card:is_suit('Clubs') then
                assert(SMODS.change_base(context.other_card, 'tarnished_overgrown-club', nil))
                
                SMODS.calculate_effect({
                    message = "Tarnished"
                }, context.other_card)
            end
            return {}
        end

        
        -- spades
        if context.discard then
            if context.other_card:is_suit('Spades') then
                
                SMODS.calculate_effect({
                    message = "Tarnished"
                }, context.other_card)

                assert(SMODS.change_base(context.other_card, 'tarnished_rusty-spade', nil))
            end
            -- context.other_card ? or context.full_hand - turn these into spades
        end


        -- diamonds
        if context.playing_card_added then
            for i=1, #context.cards do
                if context.cards[i]:is_suit('Diamonds') then
                    assert(add_tranished_variant(context.cards[i]))
                    SMODS.calculate_effect({
                        message = "Tarnished"
                    }, context.cards[i])
                end
            end
            -- context.cards -- add a tarnished diamond 
            return {}
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