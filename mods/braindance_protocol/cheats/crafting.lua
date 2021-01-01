local Utilities = require("braindance_protocol.utility")

local Crafting = {}

function Crafting.AddLegendaryRecipies()
    local moduleName = "Add Crafting Materials"
    Utilities.StartProtocol(moduleName)

    Utilities.AddItem("LegendaryMaterial1", 99)
    Utilities.AddItem("LegendaryMaterial2", 99)
    Utilities.AddItem("EpicMaterial1", 99)
    Utilities.AddItem("EpicMaterial2", 99)
    Utilities.AddItem("RareMaterial1", 99)
    Utilities.AddItem("RareMaterial2", 99)
    Utilities.AddItem("UncommonMaterial1", 99)
    Utilities.AddItem("CommonMaterial1", 99)

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
