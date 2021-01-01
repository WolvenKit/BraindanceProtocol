local Utilities = require("braindance_protocol.utility")
local Inventory = require("braindance_protocol.inventory")

local Johnny = {}

function Johnny.AddItems()
    local moduleName = "Add Johnny's Items"
    Utilities.StartProtocol(moduleName)

    Inventory.AddItem("Q005_Johnny_Glasses", 1)
    Inventory.AddItem("Q204_samurai_jacket", 1)
    Inventory.AddItem("Q005_Johnny_Shirt", 1)
    Inventory.AddItem("Q005_Johnny_Pants", 1)
    Inventory.AddItem("Q005_Johnny_Shoes", 1)

    Utilities.FinishProtocol(moduleName)
end

return Johnny
