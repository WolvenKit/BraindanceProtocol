local BraindanceProtocol = {
description = "",
rootPath =	"plugins.cyber_engine_tweaks.mods.braindance_protocol."
}

function BraindanceProtocol:new()
	local BDScripts = {}

		setmetatable(BDScripts, self)
	self.__index = self


	-- Load LUA modules into memory
	BDScripts.Utilities = require(BraindanceProtocol.rootPath.."utility")
	BDScripts.Player = require(BraindanceProtocol.rootPath.."player")
	BDScripts.Inventory = require(BraindanceProtocol.rootPath.."inventory")
	BDScripts.Vehicles = require(BraindanceProtocol.rootPath.."ai.vehicles")
	BDScripts.Examples = require(BraindanceProtocol.rootPath.."examples.init")
	BDScripts.Shopper = require(BraindanceProtocol.rootPath.."utility.shopper")
  BDScripts.Saves = require(BraindanceProtocol.rootPath.."engine.saves")

	BDScripts.Cheats = {
		Crafting = require(BraindanceProtocol.rootPath.."cheats.crafting"),
		Johnny = require(BraindanceProtocol.rootPath.."cheats.johnny"),
		Player = require(BraindanceProtocol.rootPath.."cheats.player"),
		Legend = require(BraindanceProtocol.rootPath.."cheats.legend"),
		Platform = require(BraindanceProtocol.rootPath.."cheats.platform"),
		Modify = require(BraindanceProtocol.rootPath.."cheats.modify"),
		ItemSets = require(BraindanceProtocol.rootPath.."cheats.itemsets"),
		Cyberware = require(BraindanceProtocol.rootPath.."cheats.cyberware"),
		Facts = require(BraindanceProtocol.rootPath.."cheats.facts")
	}

	-- Execute Braindance protocols
	BDScripts.Examples.Initialise()

	return BDScripts
end

local BD = BraindanceProtocol:new()

return BD
