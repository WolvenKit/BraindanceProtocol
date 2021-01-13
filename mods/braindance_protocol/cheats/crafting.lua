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
    Inventory.AddItem("Recipe_GOG_DLC_TShirt_Epic")
    
    Inventory.AddItem("Recipe_GOG_Galaxy_TShirt_Legendary")
    Inventory.AddItem("Recipe_GOG_Galaxy_TShirt_Epic")
   
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

-- All Legendary Quickhack Mods
    Inventory.AddItem("Recipe_BlindLvl4Program")
    Inventory.AddItem("Recipe_BlindLvl3Program")
    Inventory.AddItem("Recipe_BlindLvl2Program")
    Inventory.AddItem("Recipe_BlindProgram")
    
    Inventory.AddItem("Recipe_BrainMeltLvl4Program")
    Inventory.AddItem("Recipe_BrainMeltLvl3Program")
    Inventory.AddItem("Recipe_BrainMeltLvl2Program")
    
    Inventory.AddItem("Recipe_CommsNoiseLvl4Program")
    Inventory.AddItem("Recipe_CommsNoiseLvl3Program")
    Inventory.AddItem("Recipe_CommsNoiseLvl2Program")
    Inventory.AddItem("Recipe_CommsNoiseProgram")
    
    Inventory.AddItem("Recipe_ContagionLvl4Program")
    Inventory.AddItem("Recipe_ContagionLvl3Program")
    Inventory.AddItem("Recipe_ContagionLvl2Program")
    Inventory.AddItem("Recipe_ContagionProgram")

    Inventory.AddItem("Recipe_EMPOverloadLvl4Program")
    Inventory.AddItem("Recipe_EMPOverloadLvl3Program")
    Inventory.AddItem("Recipe_EMPOverloadLvl2Program")
    Inventory.AddItem("Recipe_EMPOverloadProgram")
    
    Inventory.AddItem("Recipe_GrenadeExplodeLvl4Program")
    Inventory.AddItem("Recipe_GrenadeExplodeLvl3Program")
    
    Inventory.AddItem("Recipe_LocomotionMalfunctionLvl4Program")
    Inventory.AddItem("Recipe_LocomotionMalfunctionLvl3Program")
    Inventory.AddItem("Recipe_LocomotionMalfunctionLvl2Program")
    Inventory.AddItem("Recipe_LocomotionMalfunctionProgram")
    
    Inventory.AddItem("Recipe_MadnessLvl4Program")
    Inventory.AddItem("Recipe_MadnessLvl3Program")
    
    Inventory.AddItem("Recipe_OverheatLvl4Program")
    Inventory.AddItem("Recipe_OverheatLvl3Program")
    Inventory.AddItem("Recipe_OverheatLvl2Program")
    Inventory.AddItem("Recipe_OverheatProgram")
    
    Inventory.AddItem("Recipe_PingLvl4Program")
    Inventory.AddItem("Recipe_PingLvl3Program")
    Inventory.AddItem("Recipe_PingLvl2Program")
    Inventory.AddItem("Recipe_PingProgram")
    
    Inventory.AddItem("Recipe_SuicideLvl4Program")
    Inventory.AddItem("Recipe_SuicideLvl3Program")
    
    Inventory.AddItem("Recipe_SystemCollapseLvl4Program")
    Inventory.AddItem("Recipe_SystemCollapseLvl3Program")
    
    Inventory.AddItem("Recipe_WeaponMalfunctionLvl4Program")
    Inventory.AddItem("Recipe_WeaponMalfunctionLvl3Program")
    Inventory.AddItem("Recipe_WeaponMalfunctionLvl2Program")
    Inventory.AddItem("Recipe_WeaponMalfunctionProgram")
   
    -- All Epic Quickhack Mods
    Inventory.AddItem("Recipe_WhistleLvl3Program")
    Inventory.AddItem("Recipe_WhistleLvl2Program")
    Inventory.AddItem("Recipe_WhistleProgram")
    
    Inventory.AddItem("Recipe_MemoryWipeLvl3Program")
    Inventory.AddItem("Recipe_MemoryWipeLvl2Program")
    
    Inventory.AddItem("Recipe_DisableCyberwareLvl3Program")
    Inventory.AddItem("Recipe_DisableCyberwareLvl2Program")
    Inventory.AddItem("Recipe_DisableCyberwareProgram")

    
-- "Iconic" (unique) weapons tagged as legendary + the lesser versions of the recipes
-- Note: All of these might not work, due to some recipes requiring the  
-- "original" weapon, given as a reward different from different quests
    -- Gold Plated Baseball Bat
    Inventory.AddItem("Recipe_Preset_Baseball_Bat_Denny_Legendary")
    Inventory.AddItem("Recipe_Preset_Baseball_Bat_Denny_Epic")
    
    -- Widow Maker
    Inventory.AddItem("Recipe_Preset_Achilles_Nash_Legendary")
    Inventory.AddItem("Recipe_Preset_Achilles_Nash_Epic")
    
    -- Moron Labe
    Inventory.AddItem("Recipe_Preset_Ajax_Moron_Legendary")
    Inventory.AddItem("Recipe_Preset_Ajax_Moron")
    
    -- Tinker Bell
    Inventory.AddItem("Recipe_Preset_Baton_Tinker_Bell_Legendary")
    Inventory.AddItem("Recipe_Preset_Baton_Tinker_Bell_Epic")
    
    -- Comrade's Hammer
    Inventory.AddItem("Recipe_Preset_Burya_Comrade_Legendary")
    Inventory.AddItem("Recipe_Preset_Burya_Comrade")
    
    -- Cottonmouth
    Inventory.AddItem("Recipe_Preset_Cane_Fingers_Legendary")
    Inventory.AddItem("Recipe_Preset_Cane_Fingers_Epic")
    
    -- Mox
    Inventory.AddItem("Recipe_Preset_Carnage_Mox_Legendary")
    Inventory.AddItem("Recipe_Preset_Carnage_Mox_Epic")
    
    -- PSALM 11:16
    Inventory.AddItem("Recipe_Preset_Copperhead_Genesis_Legendary")
    Inventory.AddItem("Recipe_Preset_Copperhead_Genesis_Epic")
    Inventory.AddItem("Recipe_Preset_Copperhead_Genesis")
    
    -- Sir John Phallustiff
    Inventory.AddItem("Recipe_Preset_Dildo_Stout_Legendary")
    Inventory.AddItem("Recipe_Preset_Dildo_Stout_Epic")
    
    -- O'Five
    Inventory.AddItem("Recipe_Preset_Grad_Buck_Legendary")
    
    -- Overwatch
    Inventory.AddItem("Recipe_Preset_Grad_Panam_Legendary")
    Inventory.AddItem("Recipe_Preset_Grad_Panam_Epic")
    Inventory.AddItem("Recipe_Preset_Grad_Panam")
    
    -- Sovereign
    Inventory.AddItem("Recipe_Preset_Igla_Sovereign_Legendary")
    Inventory.AddItem("Recipe_Preset_Igla_Sovereign")
    
    -- Cocktail Stick
    Inventory.AddItem("Recipe_Preset_Katana_Cocktail_Legendary")
    Inventory.AddItem("Recipe_Preset_Katana_Cocktail_Epic")
    
    -- Tsumetogi
    Inventory.AddItem("Recipe_Preset_Katana_Hiromi_Legendary")
    Inventory.AddItem("Recipe_Preset_Katana_Hiromi_Epic")
    
    -- Satori
    Inventory.AddItem("Recipe_Preset_Katana_Saburo_Legendary")
    Inventory.AddItem("Recipe_Preset_Katana_Saburo_Epic")
    
    -- Scalpel
    Inventory.AddItem("Recipe_Preset_Katana_Surgeon_Legendary")
    Inventory.AddItem("Recipe_Preset_Katana_Surgeon_Epic")
    
    -- Jinchu-Maru
    Inventory.AddItem("Recipe_Preset_Katana_Takemura_Legendary")
    
    -- Apparition
    Inventory.AddItem("Recipe_Preset_Kenshin_Frank_Legendary")
    
    -- Chaos
    Inventory.AddItem("Recipe_Preset_Kenshin_Royce_Legendary")
    Inventory.AddItem("Recipe_Preset_Kenshin_Royce_Epic")
    
    -- Stinger
    Inventory.AddItem("Recipe_Preset_Knife_Stinger_Legendary")
    Inventory.AddItem("Recipe_Preset_Knife_Stinger_Epic")
    
    -- Dying Night
    Inventory.AddItem("Recipe_Preset_Lexington_Wilson_Legendary")
    Inventory.AddItem("Recipe_Preset_Lexington_Wilson_Epic")
    Inventory.AddItem("Recipe_Preset_Lexington_Wilson_Rare")
    
    -- Plan B
    Inventory.AddItem("Recipe_Preset_Liberty_Dex_Legendary")
    Inventory.AddItem("Recipe_Preset_Liberty_Dex_Epic")
    
    -- Kongou
    Inventory.AddItem("Recipe_Preset_Liberty_Yorinobu_Legendary")
    Inventory.AddItem("Recipe_Preset_Liberty_Yorinobu_Epic")
    
    -- Breakthrough
    Inventory.AddItem("Recipe_Preset_Nekomata_Breakthrough_Legendary")
    
    -- Doom Doom
    Inventory.AddItem("Recipe_Preset_Nova_Doom_Doom_Legendary")
    Inventory.AddItem("Recipe_Preset_Nova_Doom_Doom_Epic")
    
    -- La Chingona Dorada
    Inventory.AddItem("Recipe_Preset_Nue_Jackie_Legendary")
    Inventory.AddItem("Recipe_Preset_Nue_Jackie_Epic")
    
    -- Death & Taxes
    Inventory.AddItem("Recipe_Preset_Nue_Maiko_Legendary")
    Inventory.AddItem("Recipe_Preset_Nue_Maiko_Epic")
    
    -- Lizzie
    Inventory.AddItem("Recipe_Preset_Omaha_Suzie_Legendary")
    Inventory.AddItem("Recipe_Preset_Omaha_Suzie_Epic")
    
    -- Amnesty
    Inventory.AddItem("Recipe_Preset_Overture_Cassidy_Legendary")
    
    -- Archangel
    Inventory.AddItem("Recipe_Preset_Overture_Kerry_Legendary")
    Inventory.AddItem("Recipe_Preset_Overture_Kerry_Epic")
    
    -- Crash
    Inventory.AddItem("Recipe_Preset_Overture_River_Legendary")
    
    -- Buzzsaw
    Inventory.AddItem("Recipe_Preset_Pulsar_Buzzsaw_Legendary")
    Inventory.AddItem("Recipe_Preset_Pulsar_Buzzsaw_Epic")
    Inventory.AddItem("Recipe_Preset_Pulsar_Buzzsaw")
    
    -- Fenrir
    Inventory.AddItem("Recipe_Preset_Saratoga_Maelstrom_Legendary")
    Inventory.AddItem("Recipe_Preset_Saratoga_Maelstrom_Epic")
    
    -- Problem Solver
    Inventory.AddItem("Recipe_Preset_Saratoga_Raffen_Legendary")
    Inventory.AddItem("Recipe_Preset_Saratoga_Raffen_Epic")
    
    -- Divided We Stand
    Inventory.AddItem("Recipe_Preset_Sidewinder_Divided_Legendary")
    Inventory.AddItem("Recipe_Preset_Sidewinder_Divided_Epic")
    
    -- The Headsman
    Inventory.AddItem("Recipe_Preset_Tactician_Headsman_Legendary")
    Inventory.AddItem("Recipe_Preset_Tactician_Headsman")
    
    -- Genjiroh
    Inventory.AddItem("Recipe_Preset_Yukimura_Kiji_Legendary")    
    
    Utilities.FinishProtocol(moduleName)
end


function Crafting.AddModRecipes()
    local moduleName = "Add All Mod Recipies"
    Utilities.StartProtocol(moduleName)
    
-- These are all the Clothing Mod recipes 
-- (excluding legendary ones added previously)
    Inventory.AddItem("Recipe_PowerfulFabricEnhancer02")
    Inventory.AddItem("Recipe_PowerfulFabricEnhancer04") 
    Inventory.AddItem("Recipe_PowerfulFabricEnhancer05") 
    Inventory.AddItem("Recipe_PowerfulFabricEnhancer06") 
    Inventory.AddItem("Recipe_SimpleFabricEnhancer01") 
    Inventory.AddItem("Recipe_SimpleFabricEnhancer02")
    Inventory.AddItem("Recipe_SimpleFabricEnhancer05")

    
-- These are all the Cyberware Mod recipes
    Inventory.AddItem("Recipe_AnimalsBerserkFragment1") 
    
    Inventory.AddItem("Recipe_ArasakaSandevistanFragment1") 
    
    Inventory.AddItem("Recipe_ArmsCyberwareSharedFragment1") 
    Inventory.AddItem("Recipe_ArmsCyberwareSharedFragment2") 
    Inventory.AddItem("Recipe_ArmsCyberwareSharedFragment3")
    Inventory.AddItem("Recipe_ArmsCyberwareSharedFragment4")
    
    Inventory.AddItem("Recipe_ChemicalDamageCable")
    Inventory.AddItem("Recipe_ChemicalDamageEdge")
    Inventory.AddItem("Recipe_ChemicalDamageKnuckles")
    Inventory.AddItem("Recipe_ChemicalDamageRound")
    
    Inventory.AddItem("Recipe_ElectricDamageCable")
    Inventory.AddItem("Recipe_ElectricDamageEdge")
    Inventory.AddItem("Recipe_ElectricDamageKnuckles")
    Inventory.AddItem("Recipe_ElectricDamageRound")
    
    Inventory.AddItem("Recipe_ExplosiveDamageRound")
    
    Inventory.AddItem("Recipe_FastRotor")
    Inventory.AddItem("Recipe_SlowRotor")
    
    Inventory.AddItem("Recipe_HighChargedBattery")
    Inventory.AddItem("Recipe_HighChargedWiresBattery")
    
    Inventory.AddItem("Recipe_KiroshiOpticsFragment1")
    Inventory.AddItem("Recipe_KiroshiOpticsFragment2")
    Inventory.AddItem("Recipe_KiroshiOpticsFragment3")
    Inventory.AddItem("Recipe_KiroshiOpticsFragment4")
    Inventory.AddItem("Recipe_KiroshiOpticsFragment5")
    
    Inventory.AddItem("Recipe_LowChargedBattery")
    Inventory.AddItem("Recipe_LowChargedWiresBattery")
    Inventory.AddItem("Recipe_MediumChargedBattery")
    Inventory.AddItem("Recipe_MediumChargedWiresBattery")
    
    Inventory.AddItem("Recipe_MetalPlating")
    Inventory.AddItem("Recipe_NeoplasticPlating")
    Inventory.AddItem("Recipe_TitaniumPlating")
    
    Inventory.AddItem("Recipe_PhysicalDamageCable")
    Inventory.AddItem("Recipe_PhysicalDamageEdge")
    Inventory.AddItem("Recipe_PhysicalDamageKnuckles")
    
    Inventory.AddItem("Recipe_SandevistanFragment1")
    Inventory.AddItem("Recipe_SandevistanFragment2")
    Inventory.AddItem("Recipe_SandevistanFragment3")
    Inventory.AddItem("Recipe_SandevistanFragment4")

    Inventory.AddItem("Recipe_TechWeaponMod03")
    
    Inventory.AddItem("Recipe_ThermalDamageCable")
    Inventory.AddItem("Recipe_ThermalDamageEdge")
    Inventory.AddItem("Recipe_ThermalDamageKnuckles")
    Inventory.AddItem("Recipe_ThermalDamageRound")
    
    Inventory.AddItem("Recipe_TygerClawsSandevistanFragment1")
    Inventory.AddItem("Recipe_ValentinosSandevistanFragment1")

    -- These 3 are marked as useless, added them nontheless. Remove the dashes to enable them.
    --Inventory.AddItem("Recipe_TechWeaponMod01")
    --Inventory.AddItem("Recipe_TechWeaponMod02")
    --Inventory.AddItem("Recipe_TechWeaponMod04")

-- These are all the Weapon Attachment Mod recipes
    Inventory.AddItem("Recipe_SimpleWeaponMod01")
    Inventory.AddItem("Recipe_SimpleWeaponMod02")
    Inventory.AddItem("Recipe_SimpleWeaponMod03")
    Inventory.AddItem("Recipe_SimpleWeaponMod04")
    
    -- These 6 are marked as useless, added them nontheless. Remove the dashes to enable them.   
    --Inventory.AddItem("Recipe_PowerWeaponMod01")
    --Inventory.AddItem("Recipe_PowerWeaponMod02")
    --Inventory.AddItem("Recipe_PowerWeaponMod03")
    --Inventory.AddItem("Recipe_PowerWeaponMod04")
    --Inventory.AddItem("Recipe_PowerWeaponMod05")
    --Inventory.AddItem("Recipe_PowerWeaponMod06")


    Utilities.FinishProtocol(moduleName)
end    

function Crafting.AddMedRecipes()
    local moduleName = "Add All Med/Medicine Recipies"
    Utilities.StartProtocol(moduleName)
 
-- These are all the Medicine recipes 
    Inventory.AddItem("RecipeBonesMcCoy70V0")
    Inventory.AddItem("RecipeBonesMcCoy70V1")
    Inventory.AddItem("RecipeBonesMcCoy70V2")
    
    Inventory.AddItem("RecipeFirstAidWhiffV0")
    Inventory.AddItem("RecipeFirstAidWhiffV1")
    Inventory.AddItem("RecipeFirstAidWhiffV2")
        
    Inventory.AddItem("RecipeCarryCapacityBooster")
    Inventory.AddItem("RecipeHealthBooster")
    Inventory.AddItem("RecipeMemoryBooster")
    Inventory.AddItem("RecipeOxyBooster")
    Inventory.AddItem("RecipeStaminaBooster")
    
    Utilities.FinishProtocol(moduleName)
end    

function Crafting.AddGrenadeRecipes()
    local moduleName = "Add All Grenade Recipies"
    Utilities.StartProtocol(moduleName)
-- These are all the Grenade recipes, except "Ozob's Nose"    
    Inventory.AddItem("RecipeGrenadeBiohazardHoming")
    Inventory.AddItem("RecipeGrenadeBiohazardRegular")
    
    Inventory.AddItem("RecipeGrenadeCuttingRegular")
    
    Inventory.AddItem("RecipeGrenadeEMPHoming")
    Inventory.AddItem("RecipeGrenadeEMPRegular")
    Inventory.AddItem("RecipeGrenadeEMPSticky")
    
    Inventory.AddItem("RecipeGrenadeFlashHoming")
    Inventory.AddItem("RecipeGrenadeFlashRegular")
    
    Inventory.AddItem("RecipeGrenadeFragHoming")
    Inventory.AddItem("RecipeGrenadeFragRegular")
    Inventory.AddItem("RecipeGrenadeFragSticky")
    
    Inventory.AddItem("RecipeGrenadeIncendiaryHoming")
    Inventory.AddItem("RecipeGrenadeIncendiaryRegular")
    Inventory.AddItem("RecipeGrenadeIncendiarySticky")
    
    Inventory.AddItem("RecipeGrenadeReconRegular")
    Inventory.AddItem("RecipeGrenadeReconSticky")

    Utilities.FinishProtocol(moduleName)
end    


function Crafting.AddAll()
    local moduleName = "Add all Crafting objects"
    Utilities.StartProtocol(moduleName)

    Crafting.AddLegendaryMaterials()
    Crafting.AddLegendaryRecipes()
    Crafting.AddModRecipes()
    Crafting.AddMedRecipes()
    Crafting.AddGrenadeRecipes()

    Utilities.FinishProtocol(moduleName)
end

return Crafting
