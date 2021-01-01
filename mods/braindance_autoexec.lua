--[[

Add the Braindance Protocols you wish to autoexec at the start of the game (main menu)

]]

-- Load LUA modules into memory
Utilities = require("braindance_protocol.utility")
Examples = require("braindance_protocol.examples.init")
Vehicles = require("braindance_protocol.ai.vehicles")

Cheats =
{
	Crafting = require("braindance_protocol.cheats.crafting"),
	Johnny = require("braindance_protocol.cheats.johnny"),
	Player = require("braindance_protocol.cheats.player")
}

-- Execute Braindance protocols
Examples.Initialise()
Vehicles.PreventKnockdown()
