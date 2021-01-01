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

    Inventory.AddItem("LegendaryBootsRecipe", 1)
    Inventory.AddItem("LegendaryCapRecipe", 1)
    Inventory.AddItem("LegendaryCasualShoesRecipe", 1)
    Inventory.AddItem("LegendaryFormalPantsRecipe", 1)
    Inventory.AddItem("LegendaryFormalShoesRecipe", 1)
    Inventory.AddItem("LegendaryFormalSkirtRecipe", 1)
    Inventory.AddItem("LegendaryGlassesRecipe", 1)
    Inventory.AddItem("LegendaryGogglesRecipe", 1)
    Inventory.AddItem("LegendaryHatRecipe", 1)
    Inventory.AddItem("LegendaryJacketRecipe", 1)
    Inventory.AddItem("LegendaryJumpsuitRecipe", 1)
    Inventory.AddItem("LegendaryPantsRecipe", 1)
    Inventory.AddItem("LegendaryScarfRecipe", 1)
    Inventory.AddItem("LegendaryShirtRecipe", 1)
    Inventory.AddItem("LegendaryShortsRecipe", 1)
    Inventory.AddItem("LegendaryTShirtRecipe", 1)
    Inventory.AddItem("LegendaryTechRecipe", 1)
    Inventory.AddItem("LegendaryTightJumpsuitRecipe", 1)
    Inventory.AddItem("LegendaryVestRecipe", 1)
    Inventory.AddItem("LegendaryVisorRecipe", 1)
    Inventory.AddItem("LegendaryCasualShoesRecipe", 1)

    Utilities.FinishProtocol(moduleName)
end

return Crafting
