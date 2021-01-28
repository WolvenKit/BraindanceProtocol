local Player = {
    rootPath = "plugins.cyber_engine_tweaks.mods.braindance_protocol."
}

local Utilities = require(Player.rootPath .. "utility")
local Inventory = require(Player.rootPath .. "inventory")

local DEFAULT_ATTRIBUTE_LEVEL = 3
local ATTRIBUTES = {
    "Strength", -- Body
    "Reflexes",
    "TechnicalAbility",
    "Intelligence",
    "Cool"
}

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

	for _, attribute in ipairs(ATTRIBUTES) do
		Game.SetAtt(attribute, 20)
	end

	for _, skill in ipairs(skills) do
		Game.AddExp(skill, 1000000000)
    end

    Player.AddMoney()

    Utilities.FinishProtocol(moduleName)
end

function Player.Respec()
    local moduleName = "Respec player perks and attributes"
    Utilities.StartProtocol(moduleName)

    local playerID = Game.GetPlayer():GetEntityID()
    local statsSystem = Game.GetStatsSystem()
    local attributesPointsToAdd = 0

    -- reset each attribute to default level and compute how many attribute points the player get from the respect
    for _, attribute in ipairs(ATTRIBUTES) do
        local currentLevel = statsSystem:GetStatValue(playerID, attribute)
        attributesPointsToAdd = attributesPointsToAdd + (currentLevel - DEFAULT_ATTRIBUTE_LEVEL)
        Game.SetAtt(attribute, DEFAULT_ATTRIBUTE_LEVEL)
    end 

    if attributesPointsToAdd > 0 then
        Game.GiveDevPoints("Attribute", attributesPointsToAdd)
    end

    -- reset perks using the tabula resa game item
    Game.AddToInventory("Items.PerkPointsResetter",1)

    Utilities.FinishProtocol(moduleName)
end

function Player.UnlockAllVehicles()
    local moduleName = "Unlock All Vehicles"
    Utilities.StartProtocol(moduleName)
    Game.EnableAllPlayerVehicles()
    Utilities.FinishProtocol(moduleName)
end

-- Slow Motion
function Player.SlowMotionOn()
    local moduleName = "Enable Slow-Motion"
    Utilities.StartProtocol(moduleName)
    Game.Slowmo()
    Utilities.FinishProtocol(moduleName)
end

function Player.SlowMotionOff()
    local moduleName = "Disablle Slow-Motion"
    Utilities.StartProtocol(moduleName)
	Game.Noslowmo()
    Utilities.FinishProtocol(moduleName)
end

-- Rocket Boots / Slow Fall
function Player.RocketBootsOn()
    local moduleName = "Enables Rocket Boots (slow fall) - Reload Game To Disable"
    Utilities.StartProtocol(moduleName)
	Game.ModStatPlayer("HasAirThrusters", "1")
    Utilities.FinishProtocol(moduleName)
end

-- Forced NPC Death
function Player.ForceNPCDeath()
    local moduleName = "Kills The Targeted NPC"
    Utilities.StartProtocol(moduleName)
	Game.ForcedNPCDeath()
    Utilities.FinishProtocol(moduleName)
end

-- Discover All Points Of Interest
function Player.DiscoverAllPOI()
    local moduleName = "Reveals All Points Of Interests (All '?' Marks)"
    Utilities.StartProtocol(moduleName)
	Game.GetMappinSystem():DebugDiscoverAllPoiMappins()
    Utilities.FinishProtocol(moduleName)
end

-- Infinte Stamina
function Player.InfiniteStaminaOn()
    local moduleName = "Enables Infine Stamina"
    Utilities.StartProtocol(moduleName)
	Game.InfiniteStamina(true)
    Utilities.FinishProtocol(moduleName)
end

function Player.InfiniteStaminaOff()
    local moduleName = "Disable Infine Stamina"
    Utilities.StartProtocol(moduleName)
	Game.InfiniteStamina(false)
    Utilities.FinishProtocol(moduleName)
end

-- Infinite Oxygen
function Player.InfiniteOxygenOn()
    local moduleName = "Enable Infine Oxygen - Reload Game To Disable"
    Utilities.StartProtocol(moduleName)
	Game.ModStatPlayer("CanBreatheUnderwater", "1")
    Utilities.FinishProtocol(moduleName)
end

-- Player Stats (Cumulative Adding Of Stats)
function Player.AddMaxHealth(quantity)
    local moduleName = "Add Max Health (cumulative)"
    Utilities.StartProtocol(moduleName)
	
	quantity = quantity or 100

    Game.ModStatPlayer("Health", "quantity")
    
	Utilities.FinishProtocol(moduleName)
end

function Player.AddMaxArmor(quantity)
    local moduleName = "Add Max Armor (cumulative)"
    Utilities.StartProtocol(moduleName)
	
	quantity = quantity or 100

    Game.ModStatPlayer("Armor", "quantity")
    
	Utilities.FinishProtocol(moduleName)
end

function Player.AddMaxStamina(quantity)
    local moduleName = "Add Max Stamina (cumulative)"
    Utilities.StartProtocol(moduleName)
	
	quantity = quantity or 100

    Game.ModStatPlayer("Stamina", "quantity")
    
	Utilities.FinishProtocol(moduleName)
end

function Player.AddMaxOxygen(quantity)
    local moduleName = "Add Max Oxygen (cumulative)"
    Utilities.StartProtocol(moduleName)
	
	quantity = quantity or 100

    Game.ModStatPlayer("Oxygen", "quantity")
    
	Utilities.FinishProtocol(moduleName)
end

function Player.AddMaxCritDamage(quantity)
    local moduleName = "Add Max Critical Damage (cumulative)"
    Utilities.StartProtocol(moduleName)
	
	quantity = quantity or 100

    Game.ModStatPlayer("CritDamage", "quantity")
    
	Utilities.FinishProtocol(moduleName)
end

function Player.AddMaxCarryCapacity(quantity)
    local moduleName = "Add Max Carry Capacity (cumulative)"
    Utilities.StartProtocol(moduleName)
	
	quantity = quantity or 100

    Game.ModStatPlayer("CarryCapacity", "quantity")
    
	Utilities.FinishProtocol(moduleName)
end

function Player.AddMaxMemorySlots(quantity)
    local moduleName = "Add Memory Slots (cumulative)"
    Utilities.StartProtocol(moduleName)
	
	quantity = quantity or 5

    Game.ModStatPlayer("Memory", "quantity")
    
	Utilities.FinishProtocol(moduleName)
end

function Player.AddMaxMovementSpeed(quantity)
    local moduleName = "Add Movement Speed (cumulative)"
    Utilities.StartProtocol(moduleName)
	
	quantity = quantity or 5

    Game.ModStatPlayer("MaxSpeed", "quantity")
    
	Utilities.FinishProtocol(moduleName)
end

return Player