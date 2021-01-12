local Crafting = {
	rootPath = "plugins.cyber_engine_tweaks.mods.braindance_protocol."
}

local Utilities = require(Crafting.rootPath.."utility")
local Inventory = require(Crafting.rootPath.."inventory")

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

function Crafting.AddLegendaryRecipes()
    local moduleName = "Add Legendary Crafting Recipies"
    Utilities.StartProtocol(moduleName)
    
-- These are legendary clothing recipes
    -- Chest Armor
    Inventory.AddItem("LegendaryJumpsuitRecipe")
    Inventory.AddItem("LegendaryShirtRecipe")
    Inventory.AddItem("LegendaryTightJumpsuitRecipe")
    Inventory.AddItem("LegendaryTShirtRecipe")
   
    -- Chest DLC/GOG
    Inventory.AddItem("Recipe_GOG_DLC_TShirt_Legendary")
    Inventory.AddItem("Recipe_GOG_Galaxy_TShirt_Legendary")
   
    -- Head Armor
    Inventory.AddItem("LegendaryCapRecipe")
    Inventory.AddItem("LegendaryHatRecipe")
    Inventory.AddItem("LegendaryScarfRecipe")
   
    -- Face Armor
    Inventory.AddItem("LegendaryGlassesRecipe")
    Inventory.AddItem("LegendaryTechRecipe")
    Inventory.AddItem("LegendaryVisorRecipe")
  
    -- Feet Armor
    Inventory.AddItem("LegendaryBootsRecipe")
    Inventory.AddItem("LegendaryCasualShoesRecipe")
    Inventory.AddItem("LegendaryFormalShoesRecipe")
   
    -- Legs Armor
    Inventory.AddItem("LegendaryFormalPantsRecipe")
    Inventory.AddItem("LegendaryFormalSkirtRecipe")
    Inventory.AddItem("LegendaryPantsRecipe")
    Inventory.AddItem("LegendaryShortsRecipe")
    
    -- Outer Torso Armor
    Inventory.AddItem("LegendaryJacketRecipe")
    Inventory.AddItem("LegendaryVestRecipe")
    Inventory.AddItem("Recipe_GOG_DLC_Jacket_Legendary")
    Inventory.AddItem("Recipe_SQ031_Samurai_Jacket_Legendary")

-- These are all the legendary guns, rifles, etc recipes
    -- Assault Rifles
    Inventory.AddItem("LegendaryAjaxRecipe")
    Inventory.AddItem("LegendaryCopperheadRecipe")
    Inventory.AddItem("LegendaryMasamuneRecipe")
    Inventory.AddItem("LegendarySidewinderRecipe")
    
    -- SMGs
    Inventory.AddItem("LegendaryDianRecipe")
    Inventory.AddItem("LegendaryPulsarRecipe")
    Inventory.AddItem("LegendarySaratogaRecipe")
    Inventory.AddItem("LegendaryShingenRecipe")
    
    -- DB Shotguns
    Inventory.AddItem("LegendaryIglaRecipe")
    Inventory.AddItem("LegendaryPalicaRecipe")
    Inventory.AddItem("LegendarySataraRecipe")
    Inventory.AddItem("LegendaryTesteraRecipe")
    
    -- Shotguns
    Inventory.AddItem("LegendaryCarnageRecipe")
    Inventory.AddItem("LegendaryCrusherRecipe")
    Inventory.AddItem("LegendaryTacticianRecipe")
    Inventory.AddItem("LegendaryZhuoRecipe")
     
    -- Pistols
    Inventory.AddItem("LegendaryChaoRecipe")
    Inventory.AddItem("LegendaryKenshinRecipe")
    Inventory.AddItem("LegendaryLexingtonRecipe")
    Inventory.AddItem("LegendaryLibertyRecipe")
    Inventory.AddItem("LegendaryNueRecipe")
    Inventory.AddItem("LegendaryOmahaRecipe")
    Inventory.AddItem("LegendaryUnityRecipe")
    Inventory.AddItem("LegendaryYukimuraRecipe")
    
    -- Revolvers
    Inventory.AddItem("LegendaryBuryaRecipe")
    Inventory.AddItem("LegendaryNovaRecipe")
    Inventory.AddItem("LegendaryOvertureRecipe")
    Inventory.AddItem("LegendaryQuasarRecipe")
   
    -- Precision Rifles
    Inventory.AddItem("LegendaryAchillesRecipe")
    Inventory.AddItem("LegendarySor22Recipe")
    
    -- Sniper Rifles
    Inventory.AddItem("LegendaryAshuraRecipe")
    Inventory.AddItem("LegendaryGradRecipe")
    Inventory.AddItem("LegendaryNekomataRecipe")

-- Melee Weapons
    -- Blade weapons
    Inventory.AddItem("LegendaryButchersKnifeRecipe")
    Inventory.AddItem("LegendaryChefsKnifeRecipe")
    Inventory.AddItem("LegendaryKatanaRecipe")
    Inventory.AddItem("LegendaryKnifeRecipe")
    Inventory.AddItem("LegendaryKukriRecipe")
    Inventory.AddItem("LegendaryMacheteRecipe")
    Inventory.AddItem("LegendaryTantoRecipe")
    Inventory.AddItem("Recipe_Preset_Katana_GoG_Legendary")
   
    
    -- Blunt weapons
    Inventory.AddItem("LegendaryBatonAlphaRecipe")
    Inventory.AddItem("LegendaryBatRecipe")
    Inventory.AddItem("LegendaryCrowbarRecipe")
    Inventory.AddItem("LegendaryHammerRecipe")
    Inventory.AddItem("LegendaryKanaboRecipe")
    Inventory.AddItem("LegendaryPipeWrenchRecipe")
    Inventory.AddItem("LegendaryTireIronRecipe")
    Inventory.AddItem("LegendaryTomahawkRecipe")

    
-- Legendary Clothing Mods
    Inventory.AddItem("Recipe_PowerfulFabricEnhancer01")
    Inventory.AddItem("Recipe_PowerfulFabricEnhancer03")
    Inventory.AddItem("Recipe_PowerfulFabricEnhancer07")
    Inventory.AddItem("Recipe_PowerfulFabricEnhancer08")
    Inventory.AddItem("Recipe_SimpleFabricEnhancer03")
    Inventory.AddItem("Recipe_SimpleFabricEnhancer04")

-- Legendary Quickhack Mods
    Inventory.AddItem("Recipe_BlindLvl4Program")
    Inventory.AddItem("Recipe_BrainMeltLvl4Program")
    Inventory.AddItem("Recipe_CommsNoiseLvl4Program")
    Inventory.AddItem("Recipe_ContagionLvl4Program")
    Inventory.AddItem("Recipe_EMPOverloadLvl4Program")
    Inventory.AddItem("Recipe_GrenadeExplodeLvl4Program")
    Inventory.AddItem("Recipe_LocomotionMalfunctionLvl4Program")
    Inventory.AddItem("Recipe_MadnessLvl4Program")
    Inventory.AddItem("Recipe_OverheatLvl4Program")
    Inventory.AddItem("Recipe_PingLvl4Program")
    Inventory.AddItem("Recipe_SuicideLvl4Program")
    Inventory.AddItem("Recipe_WeaponMalfunctionLvl4Program")

-- "Iconic" (unique) weapons tagged as legendary
    -- Gold Plated Baseball Bat
    Inventory.AddItem("Recipe_Preset_Baseball_Bat_Denny_Legendary")
    
    -- Widow Maker
    Inventory.AddItem("Recipe_Preset_Achilles_Nash_Legendary")
    
    -- Moron Labe
    Inventory.AddItem("Recipe_Preset_Ajax_Moron_Legendary")
    
    -- Tinker Bell
    Inventory.AddItem("Recipe_Preset_Baton_Tinker_Bell_Legendary")
    
    -- Comrade's Hammer
    Inventory.AddItem("Recipe_Preset_Burya_Comrade_Legendary")
    
    -- Cottonmouth
    Inventory.AddItem("Recipe_Preset_Cane_Fingers_Legendary")
    
    -- Mox
    Inventory.AddItem("Recipe_Preset_Carnage_Mox_Legendary")
    
    -- PSALM 11:16
    Inventory.AddItem("Recipe_Preset_Copperhead_Genesis_Legendary")
    
    -- Sir John Phallustiff
    Inventory.AddItem("Recipe_Preset_Dildo_Stout_Legendary")
    
    -- O'Five
    Inventory.AddItem("Recipe_Preset_Grad_Buck_Legendary")
    
    -- Overwatch
    Inventory.AddItem("Recipe_Preset_Grad_Panam_Legendary")
    
    -- Sovereign
    Inventory.AddItem("Recipe_Preset_Igla_Sovereign_Legendary")
    
    -- Cocktail Stick
    Inventory.AddItem("Recipe_Preset_Katana_Cocktail_Legendary")
    
    -- Tsumetogi
    Inventory.AddItem("Recipe_Preset_Katana_Hiromi_Legendary")
    
    -- Satori
    Inventory.AddItem("Recipe_Preset_Katana_Saburo_Legendary")
    
    -- Scalpel
    Inventory.AddItem("Recipe_Preset_Katana_Surgeon_Legendary")
    
    -- Jinchu-Maru
    Inventory.AddItem("Recipe_Preset_Katana_Takemura_Legendary")
    
    -- Apparition
    Inventory.AddItem("Recipe_Preset_Kenshin_Frank_Legendary")
    
    -- Chaos
    Inventory.AddItem("Recipe_Preset_Kenshin_Royce_Legendary")
    
    -- Stinger
    Inventory.AddItem("Recipe_Preset_Knife_Stinger_Legendary")
    
    -- Dying Night
    Inventory.AddItem("Recipe_Preset_Lexington_Wilson_Legendary")
    
    -- Plan B
    Inventory.AddItem("Recipe_Preset_Liberty_Dex_Legendary")
    
    -- Kongou
    Inventory.AddItem("Recipe_Preset_Liberty_Yorinobu_Legendary")
    
    -- Breakthrough
    Inventory.AddItem("Recipe_Preset_Nekomata_Breakthrough_Legendary")
    
    -- Doom Doom
    Inventory.AddItem("Recipe_Preset_Nova_Doom_Doom_Legendary")
    
    -- La Chingona Dorada
    Inventory.AddItem("Recipe_Preset_Nue_Jackie_Legendary")
    
    -- Death & Taxes
    Inventory.AddItem("Recipe_Preset_Nue_Maiko_Legendary")
    
    -- Lizzie
    Inventory.AddItem("Recipe_Preset_Omaha_Suzie_Legendary")
    
    -- Amnesty
    Inventory.AddItem("Recipe_Preset_Overture_Cassidy_Legendary")
    
    -- Archangel
    Inventory.AddItem("Recipe_Preset_Overture_Kerry_Legendary")
    
    -- Crash
    Inventory.AddItem("Recipe_Preset_Overture_River_Legendary")
    
    -- Buzzsaw
    Inventory.AddItem("Recipe_Preset_Pulsar_Buzzsaw_Legendary")
    
    -- Fenrir
    Inventory.AddItem("Recipe_Preset_Saratoga_Maelstrom_Legendary")
    
    -- Problem Solver
    Inventory.AddItem("Recipe_Preset_Saratoga_Raffen_Legendary")
    
    -- Divided We Stand
    Inventory.AddItem("Recipe_Preset_Sidewinder_Divided_Legendary")
    
    -- The Headsman
    Inventory.AddItem("Recipe_Preset_Tactician_Headsman_Legendary")
    
    -- Genjiroh
    Inventory.AddItem("Recipe_Preset_Yukimura_Kiji_Legendary")    
    
    Utilities.FinishProtocol(moduleName)
end

function Crafting.AddAll()
    local moduleName = "Add all Crafting objects"
    Utilities.StartProtocol(moduleName)

    Crafting.AddLegendaryMaterials()
    Crafting.AddLegendaryRecipes()

    Utilities.FinishProtocol(moduleName)
end

return Crafting
