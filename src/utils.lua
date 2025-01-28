TARNISHED.has_any_enhancement = function(card)
    if card.config then
        return card.config.center.key == "c_base"
    end
    return false
end