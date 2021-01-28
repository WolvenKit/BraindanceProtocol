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
    local moduleName = "Add Legendary Crafting Recipes"
    Utilities.StartProtocol(moduleName)
    
-- These are legendary clothing recipes
    -- Chest Armor
    Inventory.AddItem("LegendaryJumpsuitRecipe")
    Inventory.AddItem("LegendaryShirtRecipe")
    Inventory.AddItem("LegendaryTightJumpsuitRecipe")
    Inventory.AddItem("LegendaryTShirtRecipe")
   
    -- DLC/GOG Stuff
    Inventory.AddItem("Recipe_GOG_DLC_TShirt_Legendary")
    Inventory.AddItem("Recipe_GOG_DLC_TShirt_Epic")
    
    Inventory.AddItem("Recipe_GOG_Galaxy_TShirt_Legendary")
    Inventory.AddItem("Recipe_GOG_Galaxy_TShirt_Epic")
    
    Inventory.AddItem("Recipe_GOG_DLC_Jacket_Legendary")
    Inventory.AddItem("Recipe_GOG_DLC_Jacket_Epic")
   
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
    Inventory.AddItem("Recipe_SQ031_Samurai_Jacket_Legendary")
    Inventory.AddItem("Recipe_SQ031_Samurai_Jacket_Epic")
    
    
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
    Inventory.AddItem("Recipe_Preset_Katana_GoG_Epic")
   
    
    -- Blunt weapons
    Inventory.AddItem("LegendaryBatonAlphaRecipe")
    Inventory.AddItem("LegendaryBatRecipe")
    Inventory.AddItem("LegendaryCrowbarRecipe")
    Inventory.AddItem("LegendaryHammerRecipe")
    Inventory.AddItem("LegendaryIronPipeRecipe")
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

-- All Legendary Quickhack Mods (Max-LVL4 Quickhacks)
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
    local moduleName = "Add All Mod Recipes"
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
    local moduleName = "Add All Med/Medicine Recipes"
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
    local moduleName = "Add All Grenade Recipes"
    Utilities.StartProtocol(moduleName)
-- These are all the Grenade recipes    
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
	
	-- Ozob's Nose
	Game.AddToInventory("Items.RecipeGrenadeOzobsNose")
	--Game.GetTransactionSystem():GiveItem(Game.GetPlayer(), 
	--GetSingleton("gameItemID"):FromTDBID(TweakDBID.new(0xA91A5B6B, 28)), 1)

    Utilities.FinishProtocol(moduleName)
end    

function Crafting.AddEpicRecipes()
    local moduleName = "Add All Epic Crafting Recipes"
    Utilities.StartProtocol(moduleName)
    
-- These are legendary clothing recipes
    -- Chest Armor
    Inventory.AddItem("EpicLooseShirtRecipe")
    Inventory.AddItem("EpicTShirtRecipe")
    Inventory.AddItem("EpicUndershirtRecipe")
   
    -- Head Armor
    Inventory.AddItem("EpicCapRecipe")
    Inventory.AddItem("EpicHatRecipe")
    Inventory.AddItem("EpicHelmetRecipe")
    Inventory.AddItem("EpicScarfRecipe")

    -- Face Armor
    Inventory.AddItem("EpicGlassesRecipe")
    Inventory.AddItem("EpicMaskRecipe")
    Inventory.AddItem("EpicVisorRecipe")
   
    -- Feet Armor
    Inventory.AddItem("EpicBootsRecipe")
    Inventory.AddItem("EpicCasualShoesRecipe")
    Inventory.AddItem("EpicFormalShoesRecipe")
   
    -- Legs Armor
    Inventory.AddItem("EpicFormalSkirtRecipe")
    Inventory.AddItem("EpicPantsRecipe")
    Inventory.AddItem("EpicShortsRecipe")
    
    -- Outer Torso Armor
    Inventory.AddItem("EpicCoatRecipe")
    Inventory.AddItem("EpicFormalJacketRecipe")

-- These are all the epic guns, rifles, etc recipes
    -- Assault Rifles
    Inventory.AddItem("EpicAjaxRecipe")
    Inventory.AddItem("EpicCopperheadRecipe")
    Inventory.AddItem("EpicMasamuneRecipe")
    Inventory.AddItem("EpicSidewinderRecipe")
    
    -- SMGs
    Inventory.AddItem("EpicDianRecipe")
    Inventory.AddItem("EpicPulsarRecipe")
    Inventory.AddItem("EpicSaratogaRecipe")
    Inventory.AddItem("EpicShingenRecipe")
    
    -- DB Shotguns
    Inventory.AddItem("EpicIglaRecipe")
    Inventory.AddItem("EpicPalicaRecipe")
    Inventory.AddItem("EpicSataraRecipe")
    Inventory.AddItem("EpicTesteraRecipe")
    
    -- Shotguns
    Inventory.AddItem("EpicCarnageRecipe")
    Inventory.AddItem("EpicCrusherRecipe")
    Inventory.AddItem("EpicTacticianRecipe")
    Inventory.AddItem("EpicZhuoRecipe")
     
    -- Pistols
    Inventory.AddItem("EpicChaoRecipe")
    Inventory.AddItem("EpicKenshinRecipe")
    Inventory.AddItem("EpicLexingtonRecipe")
    Inventory.AddItem("EpicLibertyRecipe")
    Inventory.AddItem("EpicNueRecipe")
    Inventory.AddItem("EpicOmahaRecipe")
    Inventory.AddItem("EpicUnityRecipe")
    Inventory.AddItem("EpicYukimuraRecipe")
    
    -- Revolvers
    Inventory.AddItem("EpicBuryaRecipe")
    Inventory.AddItem("EpicNovaRecipe")
    Inventory.AddItem("EpicOvertureRecipe")
    Inventory.AddItem("EpicQuasarRecipe")
   
    -- Precision Rifles
    Inventory.AddItem("EpicAchillesRecipe")
    Inventory.AddItem("EpicSor22Recipe")
    
    -- Sniper Rifles
    Inventory.AddItem("EpicAshuraRecipe")
    Inventory.AddItem("EpicGradRecipe")
    Inventory.AddItem("EpicNekomataRecipe")

-- Melee Weapons
    -- Blade weapons
    Inventory.AddItem("EpicButchersKnifeRecipe")
    Inventory.AddItem("EpicChefsKnifeRecipe")
    Inventory.AddItem("EpicKatanaRecipe")
    Inventory.AddItem("EpicKnifeRecipe")
    Inventory.AddItem("EpicKukriRecipe")
    Inventory.AddItem("EpicMacheteRecipe")
    Inventory.AddItem("EpicTantoRecipe")

    -- Blunt weapons
    Inventory.AddItem("EpicBatonGammaRecipe")
    Inventory.AddItem("EpicBatRecipe")
    Inventory.AddItem("EpicHammerRecipe")
    Inventory.AddItem("EpicIronPipeRecipe")
    Inventory.AddItem("EpicKanaboRecipe")
    Inventory.AddItem("EpicTireIronRecipe")

-- All Epic Quickhack Mods (Max-LVL3 Quickhack mods)
    Inventory.AddItem("Recipe_WhistleLvl3Program")
    Inventory.AddItem("Recipe_WhistleLvl2Program")
    Inventory.AddItem("Recipe_WhistleProgram")
    
    Inventory.AddItem("Recipe_MemoryWipeLvl3Program")
    Inventory.AddItem("Recipe_MemoryWipeLvl2Program")
    
    Inventory.AddItem("Recipe_DisableCyberwareLvl3Program")
    Inventory.AddItem("Recipe_DisableCyberwareLvl2Program")
    Inventory.AddItem("Recipe_DisableCyberwareProgram")
    
    Utilities.FinishProtocol(moduleName)
end

function Crafting.AddRareRecipes()
    local moduleName = "Add All Rare Crafting Recipes"
    Utilities.StartProtocol(moduleName)

-- These are rare clothing recipes
    -- Chest Armor
    Inventory.AddItem("RareShirtRecipe")
    Inventory.AddItem("RareTShirtRecipe")
    Inventory.AddItem("RareUndershirtRecipe")

    -- Head Armor
    Inventory.AddItem("RareHatRecipe")
    Inventory.AddItem("RareHelmetRecipe")
    Inventory.AddItem("RareScarfRecipe")

    -- Face Armor
    Inventory.AddItem("RareGlassesRecipe")
    Inventory.AddItem("RareMaskRecipe")
    Inventory.AddItem("RareTechRecipe")
   
    -- Feet Armor
    Inventory.AddItem("RareBootsRecipe")
    Inventory.AddItem("RareCasualShoesRecipe")
    Inventory.AddItem("RareFormalShoesRecipe")
   
    -- Legs Armor
    Inventory.AddItem("RareFormalPantsRecipe")
    Inventory.AddItem("RarePantsRecipe")
    Inventory.AddItem("RareShortsRecipe")
    
    -- Outer Torso Armor
    Inventory.AddItem("RareCoatRecipe")
    Inventory.AddItem("RareFormalJacketRecipe")
    Inventory.AddItem("RareJacketRecipe")
    Inventory.AddItem("RareVestRecipe")

-- These are all the rare guns, rifles, etc recipes
    -- Assault Rifles
    Inventory.AddItem("RareAjaxRecipe")
    Inventory.AddItem("RareCopperheadRecipe")
    Inventory.AddItem("RareMasamuneRecipe")
    Inventory.AddItem("RareSidewinderRecipe")
    
    -- SMGs
    Inventory.AddItem("RareDianRecipe")
    Inventory.AddItem("RarePulsarRecipe")
    Inventory.AddItem("RareSaratogaRecipe")
    Inventory.AddItem("RareShingenRecipe")
    
    -- LMGs
    Inventory.AddItem("RareDefenderRecipe")
    
    -- DB Shotguns
    Inventory.AddItem("RareIglaRecipe")
    Inventory.AddItem("RarePalicaRecipe")
    Inventory.AddItem("RareSataraRecipe")
    Inventory.AddItem("RareTesteraRecipe")
    
    -- Shotguns
    Inventory.AddItem("RareCarnageRecipe")
    Inventory.AddItem("RareCrusherRecipe")
    Inventory.AddItem("RareTacticianRecipe")
    Inventory.AddItem("RareZhuoRecipe")
     
    -- Pistols
    Inventory.AddItem("RareChaoRecipe")
    Inventory.AddItem("RareKenshinRecipe")
    Inventory.AddItem("RareLexingtonRecipe")
    Inventory.AddItem("RareLibertyRecipe")
    Inventory.AddItem("RareNueRecipe")
    Inventory.AddItem("RareOmahaRecipe")
    Inventory.AddItem("RareUnityRecipe")
    Inventory.AddItem("RareYukimuraRecipe")
    
    -- Revolvers
    Inventory.AddItem("RareBuryaRecipe")
    Inventory.AddItem("RareNovaRecipe")
    Inventory.AddItem("RareOvertureRecipe")
    Inventory.AddItem("RareQuasarRecipe")
   
    -- Precision Rifles
    Inventory.AddItem("RareAchillesRecipe")
    Inventory.AddItem("RareSor22Recipe")
    
    -- Sniper Rifles
    Inventory.AddItem("RareAshuraRecipe")
    Inventory.AddItem("RareGradRecipe")
    Inventory.AddItem("RareNekomataRecipe")

-- Melee Weapons
    -- Blade weapons
    Inventory.AddItem("RareButchersKnifeRecipe")
    Inventory.AddItem("RareChefsKnifeRecipe")
    Inventory.AddItem("RareKatanaRecipe")
    Inventory.AddItem("RareKnifeRecipe")
    Inventory.AddItem("RareKukriRecipe")
    Inventory.AddItem("RareMacheteRecipe")
    Inventory.AddItem("RareTantoRecipe")

    -- Blunt weapons
    Inventory.AddItem("RareBatonBetaRecipe")
    Inventory.AddItem("RareBatRecipe")
    Inventory.AddItem("RareHammerRecipe")
    Inventory.AddItem("RareIronPipeRecipe")
    Inventory.AddItem("RareKanaboRecipe")
    Inventory.AddItem("RareTireIronRecipe")
    
    Utilities.FinishProtocol(moduleName)
end

function Crafting.AddUncommonRecipes()
    local moduleName = "Add All Uncommon Crafting Recipes"
    Utilities.StartProtocol(moduleName)
    
-- These are uncommon clothing recipes
    -- Chest Armor
    Inventory.AddItem("UncommonShirtRecipe")
    Inventory.AddItem("UncommonUndershirtRecipe")
   
    -- Head Armor
    Inventory.AddItem("UncommonBalaclavaRecipe")
    Inventory.AddItem("UncommonCapRecipe")
    Inventory.AddItem("UncommonHelmetRecipe")

    -- Face Armor
    Inventory.AddItem("UncommonMaskRecipe")
    Inventory.AddItem("UncommonTechRecipe")
    Inventory.AddItem("UncommonVisorRecipe")
   
    -- Feet Armor
    Inventory.AddItem("UncommonBootsRecipe")
    Inventory.AddItem("UncommonCasualShoesRecipe")
    Inventory.AddItem("UncommonFormalShoesRecipe")
   
    -- Legs Armor
    Inventory.AddItem("UncommonFormalPantsRecipe")
    Inventory.AddItem("UncommonFormalSkirtRecipe")
    Inventory.AddItem("UncommonPantsRecipe")
    
    -- Outer Torso Armor
    Inventory.AddItem("UncommonJacketRecipe")
    Inventory.AddItem("UncommonVestRecipe")

    
-- These are all the uncommon guns, rifles, etc recipes
    -- Assault Rifles
    Inventory.AddItem("UncommonAjaxRecipe")
    Inventory.AddItem("UncommonCopperheadRecipe")
    Inventory.AddItem("UncommonMasamuneRecipe")
    Inventory.AddItem("UncommonSidewinderRecipe")
    
    -- SMGs
    Inventory.AddItem("UncommonDianRecipe")
    Inventory.AddItem("UncommonPulsarRecipe")
    Inventory.AddItem("UncommonSaratogaRecipe")
    Inventory.AddItem("UncommonShingenRecipe")
    
    -- DB Shotguns
    Inventory.AddItem("UncommonIglaRecipe")
    Inventory.AddItem("UncommonPalicaRecipe")
    Inventory.AddItem("UncommonSataraRecipe")
    Inventory.AddItem("UncommonTesteraRecipe")
    
    -- Shotguns
    Inventory.AddItem("UncommonCarnageRecipe")
    Inventory.AddItem("UncommonCrusherRecipe")
    Inventory.AddItem("UncommonTacticianRecipe")
    Inventory.AddItem("UncommonZhuoRecipe")
     
    -- Pistols
    Inventory.AddItem("UncommonChaoRecipe")
    Inventory.AddItem("UncommonKenshinRecipe")
    Inventory.AddItem("UncommonLexingtonRecipe")
    Inventory.AddItem("UncommonLibertyRecipe")
    Inventory.AddItem("UncommonNueRecipe")
    Inventory.AddItem("UncommonOmahaRecipe")
    Inventory.AddItem("UncommonUnityRecipe")
    Inventory.AddItem("UncommonYukimuraRecipe")
    
    -- Revolvers
    Inventory.AddItem("UncommonBuryaRecipe")
    Inventory.AddItem("UncommonNovaRecipe")
    Inventory.AddItem("UncommonOvertureRecipe")
    Inventory.AddItem("UncommonQuasarRecipe")
   
    -- Precision Rifles
    Inventory.AddItem("UncommonAchillesRecipe")
    Inventory.AddItem("UncommonSor22Recipe")
    
    -- Sniper Rifles
    Inventory.AddItem("UncommonAshuraRecipe")
    Inventory.AddItem("UncommonGradRecipe")
    Inventory.AddItem("UncommonNekomataRecipe")

-- Melee Weapons
    -- Blade weapons
    Inventory.AddItem("UncommonButchersKnifeRecipe")
    Inventory.AddItem("UncommonChefsKnifeRecipe")
    Inventory.AddItem("UncommonKatanaRecipe")
    Inventory.AddItem("UncommonKnifeRecipe")
    Inventory.AddItem("UncommonKukriRecipe")
    Inventory.AddItem("UncommonMacheteRecipe")
    Inventory.AddItem("UncommonTantoRecipe")

    -- Blunt weapons
    Inventory.AddItem("UncommonBatonRecipe")
    Inventory.AddItem("UncommonBatRecipe")
    Inventory.AddItem("UncommonHammerRecipe")
    Inventory.AddItem("UncommonIronPipeRecipe")
    Inventory.AddItem("UncommonKanaboRecipe")
    Inventory.AddItem("UncommonTireIronRecipe")
    
    Utilities.FinishProtocol(moduleName)
end 


function Crafting.AddCommonRecipes()
    local moduleName = "Add All Common Crafting Recipes"
    Utilities.StartProtocol(moduleName)
-- There are no common clothing recipes
-- These are all the common guns, rifles, etc recipes
    -- Assault Rifles
    Inventory.AddItem("CommonAjaxRecipe")
    Inventory.AddItem("CommonCopperheadRecipe")
    Inventory.AddItem("CommonMasamuneRecipe")
    Inventory.AddItem("CommonSidewinderRecipe")
    
    -- SMGs
    Inventory.AddItem("CommonDianRecipe")
    Inventory.AddItem("CommonPulsarRecipe")
    Inventory.AddItem("CommonSaratogaRecipe")
    Inventory.AddItem("CommonShingenRecipe")
    
    -- DB Shotguns
    Inventory.AddItem("CommonIglaRecipe")
    Inventory.AddItem("CommonPalicaRecipe")
    Inventory.AddItem("CommonSataraRecipe")
    Inventory.AddItem("CommonTesteraRecipe")
    
    -- Shotguns
    Inventory.AddItem("CommonCarnageRecipe")
    Inventory.AddItem("CommonCrusherRecipe")
    Inventory.AddItem("CommonTacticianRecipe")
    Inventory.AddItem("CommonZhuoRecipe")
     
    -- Pistols
    Inventory.AddItem("CommonChaoRecipe")
    Inventory.AddItem("CommonKenshinRecipe")
    Inventory.AddItem("CommonLexingtonRecipe")
    Inventory.AddItem("CommonLibertyRecipe")
    Inventory.AddItem("CommonNueRecipe")
    Inventory.AddItem("CommonOmahaRecipe")
    Inventory.AddItem("CommonUnityRecipe")
    Inventory.AddItem("CommonYukimuraRecipe")
    
    -- Revolvers
    Inventory.AddItem("CommonBuryaRecipe")
    Inventory.AddItem("CommonNovaRecipe")
    Inventory.AddItem("CommonOvertureRecipe")
    Inventory.AddItem("CommonQuasarRecipe")
   
    -- Precision Rifles
    Inventory.AddItem("CommonAchillesRecipe")
    Inventory.AddItem("CommonSor22Recipe")
    
    -- Sniper Rifles
    Inventory.AddItem("CommonAshuraRecipe")
    Inventory.AddItem("CommonGradRecipe")
    Inventory.AddItem("CommonNekomataRecipe")

-- Melee Weapons
    -- Blade weapons
    Inventory.AddItem("CommonButchersKnifeRecipe")
    Inventory.AddItem("CommonChefsKnifeRecipe")
    Inventory.AddItem("CommonKatanaRecipe")
    Inventory.AddItem("CommonKnifeRecipe")
    Inventory.AddItem("CommonKukriRecipe")
    Inventory.AddItem("CommonMacheteRecipe")
    Inventory.AddItem("CommonTantoRecipe")

    -- Blunt weapons
    Inventory.AddItem("CommonBatRecipe")
    Inventory.AddItem("CommonBatonAlphaRecipe")
    Inventory.AddItem("CommonHammerRecipe")
    Inventory.AddItem("CommonIronPipeRecipe")
    Inventory.AddItem("CommonKanaboRecipe")
    Inventory.AddItem("CommonTireIronRecipe")
    
    Utilities.FinishProtocol(moduleName)
end 


function Crafting.AddAll()
    local moduleName = "Add All Crafting Objects"
    Utilities.StartProtocol(moduleName)

    Crafting.AddLegendaryMaterials()
    Crafting.AddLegendaryRecipes()
    Crafting.AddEpicRecipes()
    Crafting.AddRareRecipes()
    Crafting.AddUncommonRecipes()
    Crafting.AddCommonRecipes()
    Crafting.AddModRecipes()
    Crafting.AddMedRecipes()
    Crafting.AddGrenadeRecipes()
    
    Utilities.FinishProtocol(moduleName)
end

return Crafting
