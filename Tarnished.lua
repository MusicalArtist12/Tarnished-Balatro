
SMODS.Atlas {
    key = "Jokers",
    path = "Jokers.png",
    px = 71,
    py = 95
}

SMODS.Atlas {
    key = "Vouchers",
    path = "vouchers.png",
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
    key = "Backs",
    path = "backs.png",
    px = 71,
    py = 95
}
  

SMODS.Atlas {
    key = "LC_deck",
    path = "lc_deck.png",
    px = 71,
    py = 95
}
  
SMODS.Atlas {
    key = "LC_ui",
    path = "lc_ui.png",
    px = 18,
    py = 18
}
  
SMODS.Atlas {
    key = "HC_ui",
    path = "hc_ui.png",
    px = 18,
    py = 18
}

-- table for the items that unlock with Mausoleum Voucher
TARNISHED = {
    tarnished_pool = false
}

TARNISHED.Joker = SMODS.Joker:extend {
    in_pool = function(self, args) 
        return TARNISHED.tarnished_pool
    end
}

TARNISHED.Suit = SMODS.Suit:extend {
    lc_atlas = 'LC_deck',
    hc_atlas = 'HC_deck',
    lc_ui_atlas = 'LC_ui',
    hc_ui_atlas = 'HC_ui',
    hidden = true,
    in_pool = function(self, args)
        if args.initial_deck then
            return false
        end

        return TARNISHED.tarnished_pool
    end
}

for _, path in ipairs {
    "src/utils.lua",
    "src/jokers.lua",
    "src/suits.lua",
    "src/vouchers.lua",
    "src/decks.lua",
    "src/debug.lua" -- don't include in release builds
} do
    assert(SMODS.load_file(path))()
end

