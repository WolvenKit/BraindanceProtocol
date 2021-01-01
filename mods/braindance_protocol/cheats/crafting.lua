local Utilities = require("braindance_protocol.utility")
local Inventory = require("braindance_protocol.inventory")

local Crafting = {}

function Crafting.AddLegendaryMaterials(quantity)
    local moduleName = "Add Crafting Materials"
    Utilities.StartProtocol(moduleName)

    quantity = quantity or 9999

    Inventory.AddItem("LegendaryMaterial1", quantity)
    Inventory.AddItem("LegendaryMaterial2", quantity)
    Inventory.AddItem("EpicMaterial1", quantity)
    Inventory.AddItem("EpicMaterial2", quantity)
    Inventory.AddItem("RareMaterial1", quantity)
    Inventory.AddItem("RareMaterial2", quantity)
    Inventory.AddItem("UncommonMaterial1", quantity)
    Inventory.AddItem("CommonMaterial1", quantity)

    Utilities.FinishProtocol(moduleName)
end

function Crafting.AddLegendaryRecipies()
    local moduleName = "Add Legendary Crafting Recipies"
    Utilities.StartProtocol(moduleName)

    Inventory.AddItem("LegendaryBootsRecipe")
    Inventory.AddItem("LegendaryCapRecipe")
    Inventory.AddItem("LegendaryCasualShoesRecipe")
    Inventory.AddItem("LegendaryFormalPantsRecipe")
    Inventory.AddItem("LegendaryFormalShoesRecipe")
    Inventory.AddItem("LegendaryFormalSkirtRecipe")
    Inventory.AddItem("LegendaryGlassesRecipe")
    Inventory.AddItem("LegendaryGogglesRecipe")
    Inventory.AddItem("LegendaryHatRecipe")
    Inventory.AddItem("LegendaryJacketRecipe")
    Inventory.AddItem("LegendaryJumpsuitRecipe")
    Inventory.AddItem("LegendaryPantsRecipe")
    Inventory.AddItem("LegendaryScarfRecipe")
    Inventory.AddItem("LegendaryShirtRecipe")
    Inventory.AddItem("LegendaryShortsRecipe")
    Inventory.AddItem("LegendaryTShirtRecipe")
    Inventory.AddItem("LegendaryTechRecipe")
    Inventory.AddItem("LegendaryTightJumpsuitRecipe")
    Inventory.AddItem("LegendaryVestRecipe")
    Inventory.AddItem("LegendaryVisorRecipe")
    Inventory.AddItem("LegendaryCasualShoesRecipe")

    Utilities.FinishProtocol(moduleName)
end

return Crafting
