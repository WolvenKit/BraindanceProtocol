local BraindanceProtocol = {
    description = "",
}

function BraindanceProtocol:new()
    local BDScripts = {}

        setmetatable(BDScripts, self)
    self.__index = self


    -- Load LUA modules into memory
    BDScripts.Utilities = require("utility")
    BDScripts.Player    = require("player")
    BDScripts.Inventory = require("inventory")
    BDScripts.Vehicles  = require("ai/vehicles")
    BDScripts.Examples  = require("examples/init")
    BDScripts.Shopper   = require("utility/shopper")
    BDScripts.Saves     = require("engine/saves")
    BDScripts.Time      = require("engine/time")

    BDScripts.Cheats = {
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

    return BDScripts
end

local BD = BraindanceProtocol:new()

return BD
