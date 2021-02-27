local Johnny = {}

local Utilities = require("utility")
local Inventory = require("inventory")

function Johnny.AddItems()
    local moduleName = "Add Johnny's Items"

	Inventory.AddItem("Preset_Silverhand_3516")
    Inventory.AddItem("Q005_Johnny_Glasses")
    Inventory.AddItem("Q005_Johnny_Glasses")
    Inventory.AddItem("Q204_samurai_jacket")
    Inventory.AddItem("Q005_Johnny_Shirt")
    Inventory.AddItem("Q005_Johnny_Pants")
    Inventory.AddItem("Q005_Johnny_Shoes")
	Inventory.AddItem("PlayerSilverhandArm")

    vs = Game.GetVehicleSystem()
    vs:EnablePlayerVehicle("Vehicle.v_sport2_porsche_911turbo_player", true, false)

    Utilities.FinishProtocol(moduleName)
end

return Johnny
