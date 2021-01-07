local Johnny = {
    rootPath = "plugins.cyber_engine_tweaks.mods.braindance_protocol."
}

local Utilities = require(Johnny.rootPath.."utility")
local Inventory = require(Johnny.rootPath.."inventory")

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
	Game.GetTransactionSystem():GiveItem(Game.GetPlayer(), GetSingleton("gameItemID"):FromTDBID(TweakDBID.new(0xAE115D12, 0x19)), 1)

    vs = Game.GetVehicleSystem()
    vs:EnablePlayerVehicle("Vehicle.v_sport2_porsche_911turbo_player", true, false)

    Utilities.FinishProtocol(moduleName)
end

return Johnny