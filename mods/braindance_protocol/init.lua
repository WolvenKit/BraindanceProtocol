BraindanceProtocol = { description = "" }

function BraindanceProtocol:new()
    BD = {}
    setmetatable(BD, self)
    self.__index = self
    
	-- Load LUA modules into memory
	BD.Utilities = require("utility")
	BD.Player = require("player")
	BD.Inventory = require("inventory")
	BD.Vehicles = require("ai.vehicles")
	BD.Examples = require("examples.init")

	BD.Cheats = {
		Crafting = require("cheats.crafting"),
		Johnny = require("cheats.johnny"),
		Player = require("cheats.player")
	}

	-- Execute Braindance protocols
	BD.Examples.Initialise()
	BD.Vehicles.PreventKnockdown()
	
	return BD
end

return BraindanceProtocol:new()
