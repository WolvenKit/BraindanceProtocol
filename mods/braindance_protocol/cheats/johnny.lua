local Utilities = require("braindance_protocol.utility")
local Inventory = require("braindance_protocol.inventory")

local Johnny = {}

function Johnny.AddItems()
    local moduleName = "Add Johnny's Items"
    Utilities.StartProtocol(moduleName)

	Inventory.AddItem("Preset_Silverhand_3516")
    Inventory.AddItem("Q005_Johnny_Glasses")
    Inventory.AddItem("Q005_Johnny_Glasses")
    Inventory.AddItem("Q204_samurai_jacket")
    Inventory.AddItem("Q005_Johnny_Shirt")
    Inventory.AddItem("Q005_Johnny_Pants")
    Inventory.AddItem("Q005_Johnny_Shoes")

    Utilities.FinishProtocol(moduleName)
end

return Johnny
