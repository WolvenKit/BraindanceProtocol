--[[

Add the Braindance Protocols you wish to autoexec at the start of the game (main menu)

]]

-- Load LUA modules into memory
local Utilities = require("braindance_protocol.utility")
local Examples = require("braindance_protocol.examples.init")
local Vehicles = require("braindance_protocol.ai.vehicles")

-- Sleep
-- Utilities.Sleep(5)

-- Execute Braindance protocols
Examples.Initialise()
Vehicles.PreventKnockdown()

-- Declare alias functions for in-game protocols
