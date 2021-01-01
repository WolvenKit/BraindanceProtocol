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

    Player.ModifyStat("Memory", 20)
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
	local attributes =
	{
		"Strength", -- Body
		"Reflexes",
		"TechnicalAbility",
		"Intelligence",
		"Cool"
	}

	local skills =
	{
		"Level",
		"StreetCred",

		"Assault",
		"Athletics",
		"Brawling",
		"ColdBlood",
		"CombatHacking", -- Quickhacks
		"Crafting",
		"Demolition", -- Annihilation
		"Engineering",
		"Gunslinger",
		"Hacking",
		"Kenjutsu", -- Blades
		"Stealth"
	}

	local moduleName = "Max out Level, Streetcred, Perk, and Attributes"
    Utilities.StartProtocol(moduleName)

	for _, attribute in ipairs(attributes) do
		Game.SetAtt(attribute, 20)
	end

	for _, skill in ipairs(skills) do
		Game.AddExp(skill, 1000000000)
    end

    Player.AddMoney(999999)

    Utilities.FinishProtocol(moduleName)
end

return Player

