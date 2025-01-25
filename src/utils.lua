local function has_any_enhancement(card)
    card.extra_enhancements = nil
    for k, _ in pairs(SMODS.get_enhancements(card)) do
        sendInfoMessage(k, "has_any_enhancement")
        return true 
    end
    return false
end