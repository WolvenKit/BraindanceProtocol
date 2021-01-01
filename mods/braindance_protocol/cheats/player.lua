local Utilities = require("braindance_protocol.utility")

local Player = {}

function Player.GodMode()
    local moduleName = "Enable God Mode"
    Utilities.StartProtocol(moduleName)

    Utilities.ModifyStat("Health", 99999)
    Utilities.AddStatModifier("HealthRegeneration", 99999, "Additive")
    Utilities.ModifyStat("HealthInCombatRegenEnabled", true)
    Utilities.ModifyStat("HealthInCombatRegenRateMult", 20, "Additive")
    Utilities.ModifyStat("HealthInCombatStartDelay", 0.1, "Additive")

    Utilities.FinishProtocol(moduleName)
end

function Player.AddMoney(quantity)
    local moduleName = "l-o-a-d-s-a-m-o-n-e-y"
    Utilities.StartProtocol(moduleName)

    quantity = quantity or 999999

    Utilities.AddItem("money", quantity)

    Utilities.FinishProtocol(moduleName)
end

function Player.MaxOut()
    local moduleName = "Max out Level, Streetcred, Perk, and Attributes"
    Utilities.StartProtocol(moduleName)

    Utilities.SetLevel("Level", 50)
    Utilities.SetLevel("StreetCred", 50)

    -- Perks
    Utilities.SetLevel("Assault", 20)
    Utilities.SetLevel("Athletics", 20)
    Utilities.SetLevel("Brawling", 20)
    Utilities.SetLevel("ColdBlood", 20)
    Utilities.SetLevel("CombatHacking", 20)
    Utilities.SetLevel("Crafting", 20)
    Utilities.SetLevel("Demolition", 20)
    Utilities.SetLevel("Engineering", 20)
    Utilities.SetLevel("Gunslinger", 20)
    Utilities.SetLevel("Hacking", 20)
    Utilities.SetLevel("Kenjutsu", 20)
    Utilities.SetLevel("Stealth", 20)

    -- Attributes
    Utilities.SetLevel("Strength", 20)
    Utilities.SetLevel("Reflexes", 20)
    Utilities.SetLevel("TechnicalAbility", 20)
    Utilities.SetLevel("Intelligence", 20)
    Utilities.SetLevel("Cool", 20)

    Utilities.FinishProtocol(moduleName)
end

return Player

