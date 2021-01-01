local Utilities = require("braindance_protocol.utility")
local Player = require("braindance_protocol.player")

function Player.GodMode()
    local moduleName = "Enable God Mode"
    Utilities.StartProtocol(moduleName)

    Player.ModifyStat("Health", 99999)
    Player.ModifyStat("Armor", 99999)
    Player.AddStatModifier("HealthRegeneration", 99999, "Additive")
    Player.ModifyStat("HealthInCombatRegenEnabled", true)
    Player.ModifyStat("HealthInCombatRegenRateMult", 20, "Additive")
    Player.ModifyStat("HealthInCombatStartDelay", -99, "Additive")
    Player.ModifyStat("HealthOutOfCombatRegenEnabled", true)
    Player.ModifyStat("HealthOutOfCombatRegenRateMult", 20, "Additive")

    Player.ModifyStat("StaminaRegenEnabled", true)
    Player.ModifyStat("StaminaRegenRateMult", 20, "Additive")
    Player.ModifyStat("StaminaRegenStartDelay", -99, "Additive")

    Player.ModifyStat("Memory", 10)
    Player.ModifyStat("MemoryCostModifier", -90, "Additive")
    Player.ModifyStat("MemoryInCombatRegenEnabled", true)
    Player.ModifyStat("MemoryInCombatRegenRateMult", 20, "Additive")
    Player.ModifyStat("MemoryInCombatStartDelay", -99, "Additive")
    Player.ModifyStat("MemoryOutOfCombatRegenEnabled", true)
    Player.ModifyStat("MemoryOutOfCombatRegenRateMult", 20, "Additive")
    Player.ModifyStat("MemoryOutOfCombatStartDelay", -99, "Additive")

    Utilities.FinishProtocol(moduleName)
end

function Player.AddMoney(quantity)
    local moduleName = "l-o-a-d-s-a-m-o-n-e-y"
    Utilities.StartProtocol(moduleName)

    quantity = quantity or 999999

    Inventory.AddItem("money", quantity)

    Utilities.FinishProtocol(moduleName)
end

function Player.MaxOut()
    local moduleName = "Max out Level, Streetcred, Perk, and Attributes"
    Utilities.StartProtocol(moduleName)

    Player.SetLevel("Level", 50)
    Player.SetLevel("StreetCred", 50)

    -- Perks
    Player.SetLevel("Assault", 20)
    Player.SetLevel("Athletics", 20)
    Player.SetLevel("Brawling", 20)
    Player.SetLevel("ColdBlood", 20)
    Player.SetLevel("CombatHacking", 20)
    Player.SetLevel("Crafting", 20)
    Player.SetLevel("Demolition", 20)
    Player.SetLevel("Engineering", 20)
    Player.SetLevel("Gunslinger", 20)
    Player.SetLevel("Hacking", 20)
    Player.SetLevel("Kenjutsu", 20)
    Player.SetLevel("Stealth", 20)

    -- Attributes
    Player.SetLevel("Strength", 20)
    Player.SetLevel("Reflexes", 20)
    Player.SetLevel("TechnicalAbility", 20)
    Player.SetLevel("Intelligence", 20)
    Player.SetLevel("Cool", 20)

    Utilities.FinishProtocol(moduleName)
end

return Player

