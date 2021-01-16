BraindanceProtocol = {
	description = "",
	rootPath =  "plugins.cyber_engine_tweaks.mods.braindance_protocol."
}

function BraindanceProtocol:new()
	BD = {}

    setmetatable(BD, self)
	self.__index = self


	-- Load LUA modules into memory
	BD.Utilities = require(BraindanceProtocol.rootPath.."utility")
	BD.Player = require(BraindanceProtocol.rootPath.."player")
	BD.Inventory = require(BraindanceProtocol.rootPath.."inventory")
	BD.Vehicles = require(BraindanceProtocol.rootPath.."ai.vehicles")
	BD.Examples = require(BraindanceProtocol.rootPath.."examples.init")
	BD.Shopper = require(BraindanceProtocol.rootPath.."utility.shopper")

	BD.Cheats = {
		Crafting = require(BraindanceProtocol.rootPath.."cheats.crafting"),
		Johnny = require(BraindanceProtocol.rootPath.."cheats.johnny"),
		Player = require(BraindanceProtocol.rootPath.."cheats.player"),
		Legend = require(BraindanceProtocol.rootPath.."cheats.legend"),
		Platform = require(BraindanceProtocol.rootPath.."cheats.platform"),
		Modify = require(BraindanceProtocol.rootPath.."cheats.modify"),
		ItemSets = require(BraindanceProtocol.rootPath.."cheats.itemsets")
	}

	-- Execute Braindance protocols
	BD.Examples.Initialise()

	return BD
end

return BraindanceProtocol:new()
