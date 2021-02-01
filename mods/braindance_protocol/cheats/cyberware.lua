local Cyberware = {}

local Utilities = require("utility")
local Inventory = require("inventory")

function Cyberware.AddIconicCW()
    local moduleName = "Add All Iconic Cyberware Items"
    Utilities.StartProtocol(moduleName)

-- All Iconic Cyberware Items
	-- Cyberdeck OS
	Inventory.AddItem("BerserkC3MK5")
	Inventory.AddItem("BerserkC4MK5")
	Inventory.AddItem("FuyutsuiTinkererLegendaryMKIII")
	Inventory.AddItem("NetwatchNetdriverLegendaryMKV")
	Inventory.AddItem("SandevistanC3MK5")
	Inventory.AddItem("SandevistanC4MK5")

	Utilities.FinishProtocol(moduleName)
end


function Cyberware.AddLegendaryCW()
    local moduleName = "Add All Legendary Cyberware Items"
    Utilities.StartProtocol(moduleName)

-- All Legendary Cyberware Items
	-- Arms
	Inventory.AddItem("MantisBladesLegendary")
	Inventory.AddItem("NanoWiresLegendary")
	Inventory.AddItem("ProjectileLauncherLegendary")
	Inventory.AddItem("StrongArmsLegendary")

	-- Circulatory System
	Inventory.AddItem("BioConductorsLegendary")
	Inventory.AddItem("BloodPumpLegendary")
	Inventory.AddItem("DischargeConnectorLegendary")
	Inventory.AddItem("EnhancedBloodVesselsLegendary")
	Inventory.AddItem("HealthMonitorLegendary")
	Inventory.AddItem("IronLungsLegendary")
	Inventory.AddItem("MicroGeneratorLegendary")
	Inventory.AddItem("SecondHeart")
	Inventory.AddItem("StaminaRegenBoosterLegendary")

	-- Cyberdeck OS
	Inventory.AddItem("ArasakaLegendaryMKIV")
	Inventory.AddItem("BerserkC2MK4")
	Inventory.AddItem("BerserkC3MK4")
	Inventory.AddItem("RavenLegendaryMKIV")
	Inventory.AddItem("SandevistanC2MK4")
	Inventory.AddItem("SandevistanC3MK4")
	Inventory.AddItem("StephensonLegendaryMKIV")
	Inventory.AddItem("TetratronicRipplerLegendaryMKIV")

	-- Frontal Cortex
	Inventory.AddItem("AntiVirus")
	Inventory.AddItem("BrainCapacityBoosterLegendary")
	Inventory.AddItem("HealOnKillLegendary")
	Inventory.AddItem("ImprovedPerceptionLegendary")
	Inventory.AddItem("LimbicSystemEnhancementLegendary")
	Inventory.AddItem("MemoryReplenishmentLegendary")
	Inventory.AddItem("RoboticCoreLegendary")

	-- Hands
	Inventory.AddItem("PowerGripLegendary")
	Inventory.AddItem("SmartLinkLegendary")

	-- Immune System
	Inventory.AddItem("ElectroshockMechanismLegendary")
	Inventory.AddItem("ResistancesBoosterLegendary")

	-- Integumentary System
	Inventory.AddItem("OpticalCamoLegendary")
	Inventory.AddItem("SubdermalArmorLegendary")

	-- Nervous System
	Inventory.AddItem("KerenzikovLegendary")
	Inventory.AddItem("NeoFiberLegendary")
	Inventory.AddItem("PainReductor")
	Inventory.AddItem("ReflexRecorderLegendary")
	Inventory.AddItem("SynapticAcceleratorLegendary")

	-- Quickhack Items (not recipes)
	Inventory.AddItem("BlindLvl4Program")
	Inventory.AddItem("BrainMeltLvl4Program")
	Inventory.AddItem("CommsNoiseLvl4Program")
	Inventory.AddItem("ContagionLvl4Program")
	Inventory.AddItem("EMPOverloadLvl4Program")
	Inventory.AddItem("GrenadeExplodeLvl4Program")
	Inventory.AddItem("LocomotionMalfunctionLvl4Program")
	Inventory.AddItem("MadnessLvl4Program")
	Inventory.AddItem("OverheatLvl4Program")
	Inventory.AddItem("PingLvl4Program")
	Inventory.AddItem("SuicideLvl4Program")
	Inventory.AddItem("SystemCollapseLvl4Program")
	Inventory.AddItem("WeaponMalfunctionLvl4Program")

	-- Skeleton
	Inventory.AddItem("CyberRotorsLegendary")
	Inventory.AddItem("EndoskeletonLegendary")
	Inventory.AddItem("EnhancedTissueLegendary")

	Utilities.FinishProtocol(moduleName)
end

function Cyberware.AddEpicCW()
    local moduleName = "Add All Epic Cyberware Items"
    Utilities.StartProtocol(moduleName)

-- All Epic Cyberware Items
	-- Arms
	Inventory.AddItem("MantisBladesEpic")
	Inventory.AddItem("NanoWiresEpic")
	Inventory.AddItem("ProjectileLauncherEpic")
	Inventory.AddItem("StrongArmsEpic")

	-- Circulatory System
	Inventory.AddItem("BioConductorsEpic")
	Inventory.AddItem("BloodPumpEpic")
	Inventory.AddItem("DischargeConnectorEpic")
	Inventory.AddItem("EnhancedBloodVesselsEpic")
	Inventory.AddItem("HealthMonitorEpic")
	Inventory.AddItem("IronLungsEpic")
	Inventory.AddItem("MicroGeneratorEpic")
	Inventory.AddItem("StaminaRegenBoosterEpic")

	-- Cyberdeck OS
	Inventory.AddItem("ArasakaEpicMKIII")
	Inventory.AddItem("BerserkC1MK3")
	Inventory.AddItem("BerserkC2MK3")
	Inventory.AddItem("BiotechEpicMKIII")
	Inventory.AddItem("RavenEpicMKIII")
	Inventory.AddItem("SandevistanC1MK3")
	Inventory.AddItem("SandevistanC2MK3")
	Inventory.AddItem("StephensonEpicMKIII")
	Inventory.AddItem("TetratronicEpicMKIII")

	-- Frontal Cortex
	Inventory.AddItem("BrainCapacityBoosterEpic")
	Inventory.AddItem("HealOnKillEpic")
	Inventory.AddItem("ImprovedPerceptionEpic")
	Inventory.AddItem("MemoryBoostEpic")
	Inventory.AddItem("MemoryReplenishmentEpic")
	Inventory.AddItem("RoboticCoreEpic")

	-- Hands
	Inventory.AddItem("PowerGripEpic")
	Inventory.AddItem("SmartLinkEpic")

	-- Immune System
	Inventory.AddItem("ElectroshockMechanismEpic")
	Inventory.AddItem("ResistancesBoosterEpic")
	Inventory.AddItem("ReverseMetabolicEnhancer")
	Inventory.AddItem("ReversePowerInductor")

	-- Integumentary System
	Inventory.AddItem("HeatUsingBooster")
	Inventory.AddItem("OpticalCamoEpic")
	Inventory.AddItem("SubdermalArmorEpic")

	-- Legs
	Inventory.AddItem("CatPaws")
	Inventory.AddItem("ReinforcedMusclesEpic")

	-- Nervous System
	Inventory.AddItem("ImprovedReactionEpic")
	Inventory.AddItem("KerenzikovEpic")
	Inventory.AddItem("NeoFiberEpic")
	Inventory.AddItem("SynapticAcceleratorEpic")

	-- Ocular System
	Inventory.AddItem("KiroshiOpticsEpic")

	-- Quickhack Items (not recipes)
	Inventory.AddItem("BlindLvl3Program")
	Inventory.AddItem("BrainMeltLvl3Program")
	Inventory.AddItem("CommsCallInLvl3Program")
	Inventory.AddItem("CommsNoiseLvl3Program")
	Inventory.AddItem("ContagionLvl3Program")
	Inventory.AddItem("DisableCyberwareLvl3Program")
	Inventory.AddItem("EMPOverloadLvl3Program")
	Inventory.AddItem("GrenadeExplodeLvl3Program")
	Inventory.AddItem("LocomotionMalfunctionLvl3Program")
	Inventory.AddItem("MadnessLvl3Program")
	Inventory.AddItem("MemoryWipeLvl3Program")
	Inventory.AddItem("OverheatLvl3Program")
	Inventory.AddItem("PingLvl3Program")
	Inventory.AddItem("SuicideLvl3Program")
	Inventory.AddItem("SystemCollapseLvl3Program")
	Inventory.AddItem("WeaponMalfunctionLvl3Program")
	Inventory.AddItem("WhistleLvl3Program")

	-- Skeleton
	Inventory.AddItem("CyberRotorsEpic")
	Inventory.AddItem("DenseMarrowEpic")
	Inventory.AddItem("EndoskeletonEpic")
	Inventory.AddItem("EnhancedTissueEpic")
	Inventory.AddItem("JointLockEpic")
	Inventory.AddItem("MicroVibrationsGeneratorEpic")

	Utilities.FinishProtocol(moduleName)
end

function Cyberware.AddRareCW()
    local moduleName = "Add All Rare Cyberware Items"
    Utilities.StartProtocol(moduleName)

	-- Arms
	Inventory.AddItem("MantisBlades")
	Inventory.AddItem("NanoWires")
	Inventory.AddItem("ProjectileLauncher")
	Inventory.AddItem("StrongArms")

	-- Circulatory System
	Inventory.AddItem("BioConductorsRare")
	Inventory.AddItem("BloodPumpRare")
	Inventory.AddItem("DischargeConnectorRare")
	Inventory.AddItem("EnhancedBloodVesselsRare")
	Inventory.AddItem("HealthMonitorRare")
	Inventory.AddItem("IronLungsRare")
	Inventory.AddItem("MicroGeneratorRare")
	Inventory.AddItem("StaminaRegenBoosterRare")

	-- Cyberdeck OS
	Inventory.AddItem("BerserkC1MK2")
	Inventory.AddItem("BerserkC2MK2")
	Inventory.AddItem("BioDyneRareMKII")
	Inventory.AddItem("BiotechRareMKII")
	Inventory.AddItem("SandevistanC1MK2")
	Inventory.AddItem("SandevistanC2MK2")
	Inventory.AddItem("SeachoRareMKII")
	Inventory.AddItem("StephensonRareMKII")
	Inventory.AddItem("TetratronicRareMKII")

	-- Frontal Cortex
	Inventory.AddItem("BrainCapacityBoosterRare")
	Inventory.AddItem("FastAccessMemoryRare")
	Inventory.AddItem("LimbicSystemEnhancementRare")
	Inventory.AddItem("MemoryBoostRare")
	Inventory.AddItem("RoboticCoreRare")

	-- Hands
	Inventory.AddItem("PowerGripRare")
	Inventory.AddItem("SmartLinkRare")

	-- Immune System
	Inventory.AddItem("ToxinCleanser")

	-- Integumentary System
	Inventory.AddItem("FireproofSkin")
	Inventory.AddItem("GroundingPlating")
	Inventory.AddItem("MetalCoveredSkin")
	Inventory.AddItem("OpticalCamoRare")
	Inventory.AddItem("SubdermalArmorRare")

	-- Legs
	Inventory.AddItem("BoostedTendonsRare")
	Inventory.AddItem("ReinforcedMusclesRare")

	-- Nervous System
	Inventory.AddItem("ImprovedReactionRare")
	Inventory.AddItem("KerenzikovRare")
	Inventory.AddItem("NeoFiberRare")
	Inventory.AddItem("NervousSystemDischarge")
	Inventory.AddItem("ReflexRecorderRare")
	Inventory.AddItem("SynapticAcceleratorRare")

	-- Ocular System
	Inventory.AddItem("KiroshiOpticsRare")

	-- Quickhack Items (not recipes)
	Inventory.AddItem("BlindLvl2Program")
	Inventory.AddItem("BrainMeltLvl2Program")
	Inventory.AddItem("CommsNoiseLvl2Program")
	Inventory.AddItem("ContagionLvl2Program")
	Inventory.AddItem("DisableCyberwareLvl2Program")
	Inventory.AddItem("EMPOverloadLvl2Program")
	Inventory.AddItem("LocomotionMalfunctionLvl2Program")
	Inventory.AddItem("MemoryWipeLvl2Program")
	Inventory.AddItem("OverheatLvl2Program")
	Inventory.AddItem("PingLvl2Program")
	Inventory.AddItem("WeaponMalfunctionLvl2Program")
	Inventory.AddItem("WhistleLvl2Program")

	-- Skeleton
	Inventory.AddItem("CyberRotorsRare")
	Inventory.AddItem("DenseMarrowRare")
	Inventory.AddItem("EndoskeletonRare")
	Inventory.AddItem("EnhancedTissueRare")
	Inventory.AddItem("JointLockRare")
	Inventory.AddItem("MicroVibrationsGeneratorRare")
	Inventory.AddItem("TitaniumInfusedBonesRare")

	Utilities.FinishProtocol(moduleName)
end

function Cyberware.AddUncommonCW()
    local moduleName = "Add All Uncommon Cyberware Items"
    Utilities.StartProtocol(moduleName)

	-- All Uncommon Cyberware Items
	-- Circulatory System
	Inventory.AddItem("BloodPumpUncommon")
	Inventory.AddItem("EnhancedBloodVesselsUncommon")
	Inventory.AddItem("HealthMonitorUncommon")
	Inventory.AddItem("IronLungsUncommon")
	Inventory.AddItem("MicroGeneratorUncommon")
	Inventory.AddItem("StaminaRegenBoosterUncommon")
	Inventory.AddItem("TyrosineInjector")

	-- Cyberdeck OS
	Inventory.AddItem("BerserkC1MK1")
	Inventory.AddItem("BerserkC2MK1")
	Inventory.AddItem("BioDyneUncommonMKI")
	Inventory.AddItem("BiotechUncommonMKI")
	Inventory.AddItem("SandevistanC1MK1")
	Inventory.AddItem("SandevistanC2MK1")
	Inventory.AddItem("SeachoUncommonMKI")
	Inventory.AddItem("TetratronicUncommonMKI")

	-- Frontal Cortex
	Inventory.AddItem("FastAccessMemoryUncommon")
	Inventory.AddItem("HealOnKillUncommon")
	Inventory.AddItem("ImprovedPerceptionUncommon")
	Inventory.AddItem("MemoryBoostUncommon")
	Inventory.AddItem("RoboticCoreUncommon")

	-- Immune System
	Inventory.AddItem("ElectroshockMechanismUncommon")
	Inventory.AddItem("ResistancesBoosterUncommon")

	-- Integumentary System
	Inventory.AddItem("SubdermalArmorUncommon")

	-- Nervous System
	Inventory.AddItem("ImprovedReactionUncommon")
	Inventory.AddItem("KerenzikovUncommon")
	Inventory.AddItem("NeoFiberUncommon")
	Inventory.AddItem("ReflexRecorderUncommon")
	Inventory.AddItem("SynapticAcceleratorUncommon")

	-- Quickhack Items (not recipes)
	Inventory.AddItem("BlindProgram")
	Inventory.AddItem("CommsCallInProgram")
	Inventory.AddItem("CommsNoiseProgram")
	Inventory.AddItem("ContagionProgram")
	Inventory.AddItem("DisableCyberwareProgram")
	Inventory.AddItem("EMPOverloadProgram")
	Inventory.AddItem("LocomotionMalfunctionProgram")
	Inventory.AddItem("OverheatProgram")
	Inventory.AddItem("PingProgram")
	Inventory.AddItem("WeaponMalfunctionProgram")
	Inventory.AddItem("WhistleProgram")

	-- Skeleton
	Inventory.AddItem("CyberRotorsUncommon")
	Inventory.AddItem("DenseMarrowUncommon")
	Inventory.AddItem("EndoskeletonUncommon")
	Inventory.AddItem("EnhancedTissueUncommon")
	Inventory.AddItem("MicroVibrationsGeneratorUncommon")
	Inventory.AddItem("TitaniumInfusedBonesUncommon")

	Utilities.FinishProtocol(moduleName)
end

function Cyberware.AddCommonCW()
    local moduleName = "Add All Common Cyberware Items"
    Utilities.StartProtocol(moduleName)

	-- Circulatory System
	Inventory.AddItem("BloodPumpCommon")
	Inventory.AddItem("EnhancedBloodVesselsCommon")
	Inventory.AddItem("HealthMonitorCommon")
	Inventory.AddItem("IronLungsCommon")
	Inventory.AddItem("MicroGeneratorCommon")
	Inventory.AddItem("StaminaRegenBoosterCommon")

	-- Cyberdeck OS
	Inventory.AddItem("FuyutsuiCommonMKI")
	Inventory.AddItem("MilitechParaline")

	-- Frontal Cortex
	Inventory.AddItem("FastAccessMemoryCommon")
	Inventory.AddItem("HealOnKillCommon")
	Inventory.AddItem("ImprovedPerceptionCommon")
	Inventory.AddItem("LimbicSystemEnhancementCommon")
	Inventory.AddItem("MemoryBoostCommon")
	Inventory.AddItem("RoboticCoreCommon")

	-- Hands
	-- "Tattoo: Together Forever"
	Game.GetTransactionSystem():GiveItem(Game.GetPlayer(),
	GetSingleton("gameItemID"):FromTDBID(TweakDBID.new(0x15138755, 0x16)), 1)

	-- "Tattoo: Tyger Claws Dermal Imprint"
	Game.GetTransactionSystem():GiveItem(Game.GetPlayer(),
	GetSingleton("gameItemID"):FromTDBID(TweakDBID.new(0x18FD8A52, 0x12)), 1)

	-- "Tattoo: Johnny's Special"
	Game.GetTransactionSystem():GiveItem(Game.GetPlayer(),
	GetSingleton("gameItemID"):FromTDBID(TweakDBID.new(0xA93E60FD, 0x12)), 1)

	-- Immune System
	Inventory.AddItem("ElectroshockMechanismCommon")
	Inventory.AddItem("ResistancesBoosterCommon")

	-- Integumentary System
	Inventory.AddItem("SubdermalArmorCommon")

	-- Nervous System
	Inventory.AddItem("KerenzikovCommon")
	Inventory.AddItem("NeoFiberCommon")
	Inventory.AddItem("ReflexRecorderCommon")
	Inventory.AddItem("SynapticAcceleratorCommon")

	-- Ocular System
	Inventory.AddItem("KiroshiOptics")

	-- Skeleton
	Inventory.AddItem("CyberRotorsCommon")
	Inventory.AddItem("EndoskeletonCommon")
	Inventory.AddItem("EnhancedTissueCommon")
	Inventory.AddItem("TitaniumInfusedBonesCommon")

	Utilities.FinishProtocol(moduleName)
end

function Cyberware.AddAllCW()
    local moduleName = "Add All Cyberware Items"
    Utilities.StartProtocol(moduleName)

	Cyberware.AddIconicCW()
	Cyberware.AddLegendaryCW()
	Cyberware.AddEpicCW()
	Cyberware.AddRareCW()
	Cyberware.AddUncommonCW()
	Cyberware.AddCommonCW()


    Utilities.FinishProtocol(moduleName)
end

return Cyberware
