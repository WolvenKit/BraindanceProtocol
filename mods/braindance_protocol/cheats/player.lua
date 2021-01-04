local Player = {
    rootPath = "plugins.cyber_engine_tweaks.mods.braindance_protocol."
}

local Utilities = require(Player.rootPath.."utility")

function Player.GodMode()
    local moduleName = "Enable God Mode"
    Utilities.StartProtocol(moduleName)

    Player.AddStatModifier("Health", 99999)
    Player.AddStatModifier("Armor", 99999)
    Player.AddStatModifier("HealthRegeneration", 99999)
    Player.AddStatModifier("HealthInCombatRegenEnabled", 1)
    Player.AddStatModifier("HealthInCombatRegenRateMult", 20)
    Player.AddStatModifier("HealthInCombatStartDelay", -99)
    Player.AddStatModifier("HealthOutOfCombatRegenEnabled", 1)
    Player.AddStatModifier("HealthOutOfCombatRegenRateMult", 20)

    Player.AddStatModifier("StaminaRegenEnabled", 1)
    Player.AddStatModifier("StaminaRegenRateMult", 20)
    Player.AddStatModifier("StaminaRegenStartDelay", -99)

    Player.AddStatModifier("Memory", 20)
    Player.AddStatModifier("MemoryCostModifier", -90)
    Player.AddStatModifier("MemoryInCombatRegenEnabled", 1)
    Player.AddStatModifier("MemoryInCombatRegenRateMult", 20)
    Player.AddStatModifier("MemoryInCombatStartDelay", -99)
    Player.AddStatModifier("MemoryOutOfCombatRegenEnabled", 1)
    Player.AddStatModifier("MemoryOutOfCombatRegenRateMult", 20)
    Player.AddStatModifier("MemoryOutOfCombatStartDelay", -99)

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

    Player.AddMoney()

    Utilities.FinishProtocol(moduleName)
end

return Player
