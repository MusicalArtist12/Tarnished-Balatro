SMODS.Voucher {
    key = "mausoleum",
    loc_txt = {
        name = 'The Mausoleum',
        text = { 'Tarnished playing cards', 'are now available'}
    },
    atlas = 'Vouchers',
    pos = { y = 0, x = 7 },
    cost = 10,
    config = {
        discovered = true,
        unlocked = true
    },
    redeem = function(self, card) 
        TARNISHED.mausoleum_voucher_unlocked = true
    end,
    calculate = function(self, card, context) 
        
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
        discovered = true,
        unlocked = true
    },
}