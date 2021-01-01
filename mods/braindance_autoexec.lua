--[[

Add the Braindance Protocols you wish to autoexec at the start of the game (main menu)

]]

-- Load LUA modules into memory
Utilities = require("braindance_protocol.utility")
Player = require("braindance_protocol.player")
Inventory = require("braindance_protocol.inventory")
Vehicles = require("braindance_protocol.ai.vehicles")
Examples = require("braindance_protocol.examples.init")

Cheats = {
	Crafting = require("braindance_protocol.cheats.crafting"),
	Johnny = require("braindance_protocol.cheats.johnny"),
	Player = require("braindance_protocol.cheats.player")
}

-- Execute Braindance protocols
Examples.Initialise()
Vehicles.PreventKnockdown()
