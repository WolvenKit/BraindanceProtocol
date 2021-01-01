local Utilities = require("braindance_protocol.utility")

local Crafting = {}

function Crafting.AddLegendaryMaterials(quantity)
    local moduleName = "Add Crafting Materials"
    Utilities.StartProtocol(moduleName)

    quantity = quantity or 9999

    Utilities.AddItem("LegendaryMaterial1", quantity)
    Utilities.AddItem("LegendaryMaterial2", quantity)
    Utilities.AddItem("EpicMaterial1", quantity)
    Utilities.AddItem("EpicMaterial2", quantity)
    Utilities.AddItem("RareMaterial1", quantity)
    Utilities.AddItem("RareMaterial2", quantity)
    Utilities.AddItem("UncommonMaterial1", quantity)
    Utilities.AddItem("CommonMaterial1", quantity)

    Utilities.FinishProtocol(moduleName)
end

function Crafting.AddLegendaryRecipies()
    local moduleName = "Add Legendary Crafting Recipies"
    Utilities.StartProtocol(moduleName)

    Utilities.AddItem("LegendaryBootsRecipe", 1)
    Utilities.AddItem("LegendaryCapRecipe", 1)
    Utilities.AddItem("LegendaryCasualShoesRecipe", 1)
    Utilities.AddItem("LegendaryFormalPantsRecipe", 1)
    Utilities.AddItem("LegendaryFormalShoesRecipe", 1)
    Utilities.AddItem("LegendaryFormalSkirtRecipe", 1)
    Utilities.AddItem("LegendaryGlassesRecipe", 1)
    Utilities.AddItem("LegendaryGogglesRecipe", 1)
    Utilities.AddItem("LegendaryHatRecipe", 1)
    Utilities.AddItem("LegendaryJacketRecipe", 1)
    Utilities.AddItem("LegendaryJumpsuitRecipe", 1)
    Utilities.AddItem("LegendaryPantsRecipe", 1)
    Utilities.AddItem("LegendaryScarfRecipe", 1)
    Utilities.AddItem("LegendaryShirtRecipe", 1)
    Utilities.AddItem("LegendaryShortsRecipe", 1)
    Utilities.AddItem("LegendaryTShirtRecipe", 1)
    Utilities.AddItem("LegendaryTechRecipe", 1)
    Utilities.AddItem("LegendaryTightJumpsuitRecipe", 1)
    Utilities.AddItem("LegendaryVestRecipe", 1)
    Utilities.AddItem("LegendaryVisorRecipe", 1)
    Utilities.AddItem("LegendaryCasualShoesRecipe", 1)

    Utilities.FinishProtocol(moduleName)
end

return Crafting
