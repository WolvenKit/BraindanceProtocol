BraindanceProtocol = { description = "" }

function BraindanceProtocol:new()
    BD = {}
    setmetatable(BD, self)
    self.__index = self
    
	-- Load LUA modules into memory
	BD.Utilities = require("braindance_protocol.utility")
	BD.Player = require("braindance_protocol.player")
	BD.Inventory = require("braindance_protocol.inventory")
	BD.Vehicles = require("braindance_protocol.ai.vehicles")
	BD.Examples = require("braindance_protocol.examples.init")

	BD.Cheats = {
		Crafting = require("braindance_protocol.cheats.crafting"),
		Johnny = require("braindance_protocol.cheats.johnny"),
		Player = require("braindance_protocol.cheats.player"),
		Legend = require("braindance_protocol.cheats.legend")
	}

	-- Execute Braindance protocols
	BD.Examples.Initialise()
	BD.Vehicles.PreventKnockdown()
	
	return BD
end

return BraindanceProtocol:new()
