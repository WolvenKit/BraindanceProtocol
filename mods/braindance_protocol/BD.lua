local BD = {}
-- Load LUA modules into memory

BD.Utilities = require("utility")
BD.Player    = require("player")
BD.Inventory = require("inventory")
BD.Vehicles  = require("ai/vehicles")
BD.Examples  = require("examples/init")
BD.Shopper   = require("utility/shopper")
BD.Saves     = require("engine/saves")
BD.Time      = require("engine/time")

BD.Cheats = {
    Crafting  = require("cheats/crafting"),
    Johnny    = require("cheats/johnny"),
    Player    = require("cheats/player"),
    Legend    = require("cheats/legend"),
    Platform  = require("cheats/platform"),
    Modify    = require("cheats/modify"),
    ItemSets  = require("cheats/itemsets"),
    Cyberware = require("cheats/cyberware"),
    Facts     = require("cheats/facts"),
    Teleport  = require("cheats/teleport"),
    Ammo      = require("cheats/ammo")
}

return BD
