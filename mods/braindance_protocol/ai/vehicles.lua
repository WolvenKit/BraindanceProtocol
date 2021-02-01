local Vehicles = {}

local Utilities = require("utility")


function Vehicles.PreventKnockdown()
    local moduleName = "Prevent Vehicle Knockdown"
    Utilities.StartProtocol(moduleName)
    GameOptions.SetFloat("Crowds", "MinimumSpeedForKnockdownByCar", 99.000000)
    Utilities.FinishProtocol(moduleName)
end

function Vehicles.GetAll()
    local moduleName = "Get all vehicles"
    Utilities.StartProtocol(moduleName)

    vs = Game.GetVehicleSystem()
    vs:EnableAllPlayerVehicles()

    Utilities.FinishProtocol(moduleName)
end

-- Individual Vehicles
function Vehicles.GetMahirSupronFS3()
    local moduleName = "Adding Vehicle: Mahir - Supron FS3"
    Utilities.StartProtocol(moduleName)

	vs = Game.GetVehicleSystem()
	vs:EnablePlayerVehicle('Vehicle.v_standard25_mahir_supron_player', true, false)

    Utilities.FinishProtocol(moduleName)
end

function Vehicles.GetMaiMaiP126()
    local moduleName = "Adding Vehicle: Makigai - MaiMai P126"
    Utilities.StartProtocol(moduleName)

	vs = Game.GetVehicleSystem()
	vs:EnablePlayerVehicle('Vehicle.v_standard2_makigai_maimai_player', true, false)

    Utilities.FinishProtocol(moduleName)
end

function Vehicles.GetThortonColbyC125()
    local moduleName = "Adding Vehicle: Thorton - Colby C125"
    Utilities.StartProtocol(moduleName)

	vs = Game.GetVehicleSystem()
	vs:EnablePlayerVehicle('Vehicle.v_standard2_thorton_colby_player', true, false)

    Utilities.FinishProtocol(moduleName)
end

function Vehicles.GetThortonColbyCX410Green()
    local moduleName = "Adding Vehicle: Thorton - Colby CX 410 Butte (green)"
    Utilities.StartProtocol(moduleName)

	vs = Game.GetVehicleSystem()
	vs:EnablePlayerVehicle('Vehicle.v_standard25_thorton_colby_pickup_player', true, false)

    Utilities.FinishProtocol(moduleName)
end

function Vehicles.GetThortonColbyCX410Red()
    local moduleName = "Adding Vehicle: Thorton - Colby CX 410 Butte (red)"
    Utilities.StartProtocol(moduleName)

	vs = Game.GetVehicleSystem()
	vs:EnablePlayerVehicle('Vehicle.v_standard25_thorton_colby_pickup_02_player', true, false)

    Utilities.FinishProtocol(moduleName)
end

function Vehicles.GetThortonColbyLittleMule()
    local moduleName = "Adding Vehicle: Thorton - Colby 'Little Mule'"
    Utilities.StartProtocol(moduleName)

	vs = Game.GetVehicleSystem()
	vs:EnablePlayerVehicle('Vehicle.v_standard25_thorton_colby_nomad_player', true, false)

    Utilities.FinishProtocol(moduleName)
end

function Vehicles.GetThortonGalenaG240()
    local moduleName = "Adding Vehicle: Thorton - Galena G240"
    Utilities.StartProtocol(moduleName)

	vs = Game.GetVehicleSystem()
	vs:EnablePlayerVehicle('Vehicle.v_standard2_thorton_galena_player', true, false)

    Utilities.FinishProtocol(moduleName)
end

function Vehicles.GetThortonGalenaGecko()
    local moduleName = "Adding Vehicle: Thorton - Galena 'Gecko'"
    Utilities.StartProtocol(moduleName)

	vs = Game.GetVehicleSystem()
	vs:EnablePlayerVehicle('Vehicle.v_standard2_thorton_galena_nomad_player', true, false)

    Utilities.FinishProtocol(moduleName)
end

function Vehicles.GetThortonGalenaRattler()
    local moduleName = "Adding Vehicle: Thorton - Galena 'Rattler'"
    Utilities.StartProtocol(moduleName)

	vs = Game.GetVehicleSystem()
	vs:EnablePlayerVehicle('Vehicle.v_standard2_thorton_galena_bobas_player', true, false)

    Utilities.FinishProtocol(moduleName)
end

function Vehicles.GetThortonMackinawMTL1()
    local moduleName = "Adding Vehicle: Thorton - Mackinaw MTL1"
    Utilities.StartProtocol(moduleName)

	vs = Game.GetVehicleSystem()
	vs:EnablePlayerVehicle('Vehicle.v_standard3_thorton_mackinaw_player', true, false)

    Utilities.FinishProtocol(moduleName)
end

function Vehicles.GetThortonMackinawBeast()
    local moduleName = "Adding Vehicle: Thorton - Mackinaw 'Beast'"
    Utilities.StartProtocol(moduleName)

	vs = Game.GetVehicleSystem()
	vs:EnablePlayerVehicle('Vehicle.v_standard3_thorton_mackinaw_ncu_player', true, false)

    Utilities.FinishProtocol(moduleName)
end

function Vehicles.GetVillefortAlvaradoVato()
    local moduleName = "Adding Vehicle: Villefort - Alvarado 'Vato'"
    Utilities.StartProtocol(moduleName)

	vs = Game.GetVehicleSystem()
	vs:EnablePlayerVehicle('Vehicle.v_sport2_villefort_alvarado_valentinos_player', true, false)

    Utilities.FinishProtocol(moduleName)
end

function Vehicles.GetVillefortAlvaradoV4F570Delegate()
    local moduleName = "Adding Vehicle: Villefort - Alvarado V4F 570 Delegate"
    Utilities.StartProtocol(moduleName)

	vs = Game.GetVehicleSystem()
	vs:EnablePlayerVehicle('Vehicle.v_sport2_villefort_alvarado_player', true, false)

    Utilities.FinishProtocol(moduleName)
end

function Vehicles.GetVillefortColumbusV340FFreight()
    local moduleName = "Adding Vehicle: Villefort - Columbus V340-F Freight"
    Utilities.StartProtocol(moduleName)

	vs = Game.GetVehicleSystem()
	vs:EnablePlayerVehicle('Vehicle.v_standard25_villefort_columbus_player', true, false)

    Utilities.FinishProtocol(moduleName)
end

function Vehicles.GetVillefortCortesV5000ValorPink()
    local moduleName = "Adding Vehicle: Villefort - Cortes V5000 Valor (pink)"
    Utilities.StartProtocol(moduleName)

	vs = Game.GetVehicleSystem()
	vs:EnablePlayerVehicle('Vehicle.v_standard2_villefort_cortes_player', true, false)

    Utilities.FinishProtocol(moduleName)
end

function Vehicles.GetVillefortCortesDelaminNo21()
    local moduleName = "Adding Vehicle: Villefort - Cortes Delamain No.21"
    Utilities.StartProtocol(moduleName)

	vs = Game.GetVehicleSystem()
	vs:EnablePlayerVehicle('Vehicle.v_standard2_villefort_cortes_delamain_player', true, false)

    Utilities.FinishProtocol(moduleName)
end

function Vehicles.GetChevalierEmperor620Ragnar()
    local moduleName = "Adding Vehicle: Chevalier - Emperor 620 Ragnar"
    Utilities.StartProtocol(moduleName)

	vs = Game.GetVehicleSystem()
	vs:EnablePlayerVehicle('Vehicle.v_standard3_chevalier_emperor_player', true, false)

    Utilities.FinishProtocol(moduleName)
end

function Vehicles.GetChevalierThrax338Jefferson()
    local moduleName = "Adding Vehicle: Chevalier - Thrax 338 Jefferson"
    Utilities.StartProtocol(moduleName)

	vs = Game.GetVehicleSystem()
	vs:EnablePlayerVehicle('Vehicle.v_standard2_chevalier_thrax_player', true, false)

    Utilities.FinishProtocol(moduleName)
end

function Vehicles.GetBrennanApollo()
    local moduleName = "Adding Vehicle: Brennan - Apollo"
    Utilities.StartProtocol(moduleName)

	vs = Game.GetVehicleSystem()
	vs:EnablePlayerVehicle('Vehicle.v_sportbike3_brennan_apollo_player', true, false)

    Utilities.FinishProtocol(moduleName)
end

function Vehicles.GetBrennanApolloScorpion()
    local moduleName = "Adding Vehicle: Brennan - Apollo 'Scorpion'"
    Utilities.StartProtocol(moduleName)

	vs = Game.GetVehicleSystem()
	vs:EnablePlayerVehicle('Vehicle.v_sportbike3_brennan_apollo_nomad_player', true, false)

    Utilities.FinishProtocol(moduleName)
end

function Vehicles.GetJackiesArch()
    local moduleName = "Adding Vehicle: Jackie's Arch"
    Utilities.StartProtocol(moduleName)

	vs = Game.GetVehicleSystem()
	vs:EnablePlayerVehicle('Vehicle.v_sportbike2_arch_jackie_player', true, false)

    Utilities.FinishProtocol(moduleName)
end

function Vehicles.GetJackiesTunedArch()
    local moduleName = "Adding Vehicle: Jackie's Tuned Arch"
    Utilities.StartProtocol(moduleName)

	vs = Game.GetVehicleSystem()
	vs:EnablePlayerVehicle('Vehicle.v_sportbike2_arch_jackie_tuned_player', true, false)

    Utilities.FinishProtocol(moduleName)
end

function Vehicles.GetArchNazare()
    local moduleName = "Adding Vehicle: Arch - Nazaré"
    Utilities.StartProtocol(moduleName)

	vs = Game.GetVehicleSystem()
	vs:EnablePlayerVehicle('Vehicle.v_sportbike2_arch_player', true, false)

    Utilities.FinishProtocol(moduleName)
end

function Vehicles.GetArchNazareItsumade()
    local moduleName = "Adding Vehicle: Arch - Nazaré 'Itsumade'"
    Utilities.StartProtocol(moduleName)

	vs = Game.GetVehicleSystem()
	vs:EnablePlayerVehicle('Vehicle.v_sportbike2_arch_tyger_player', true, false)

    Utilities.FinishProtocol(moduleName)
end

function Vehicles.GetYaibaKusanagiMizuchi()
    local moduleName = "Adding Vehicle: Yaiba - Kusanagi 'Mizuchi'"
    Utilities.StartProtocol(moduleName)

	vs = Game.GetVehicleSystem()
	vs:EnablePlayerVehicle('Vehicle.v_sportbike1_yaiba_kusanagi_tyger_player', true, false)

    Utilities.FinishProtocol(moduleName)
end

function Vehicles.GetYaibaKusanagiCT3X()
    local moduleName = "Adding Vehicle: Yaiba - Kusanagi CT-3X"
    Utilities.StartProtocol(moduleName)

	vs = Game.GetVehicleSystem()
	vs:EnablePlayerVehicle('Vehicle.v_sportbike1_yaiba_kusanagi_player', true, false)

    Utilities.FinishProtocol(moduleName)
end

function Vehicles.GetPorsche911Johnny()
    local moduleName = "Adding Vehicle: Porsche - 911 II (930) TURBO"
    Utilities.StartProtocol(moduleName)

	vs = Game.GetVehicleSystem()
	vs:EnablePlayerVehicle('Vehicle.v_sport2_porsche_911turbo_player', true, false)

    Utilities.FinishProtocol(moduleName)
end

function Vehicles.GetArcherQuartzECT2R660()
    local moduleName = "Adding Vehicle: Archer - Quartz EC-T2 R660"
    Utilities.StartProtocol(moduleName)

	vs = Game.GetVehicleSystem()
	vs:EnablePlayerVehicle('Vehicle.v_standard2_archer_quartz_player', true, false)

    Utilities.FinishProtocol(moduleName)
end

function Vehicles.GetMizutaniShionCoyote()
    local moduleName = "Adding Vehicle: Mizutani - Shion 'Coyote'"
    Utilities.StartProtocol(moduleName)

	vs = Game.GetVehicleSystem()
	vs:EnablePlayerVehicle('Vehicle.v_sport2_mizutani_shion_nomad_player', true, false)

    Utilities.FinishProtocol(moduleName)
end

function Vehicles.GetMizutaniShionCoyoteRed()
    local moduleName = "Adding Vehicle: Mizutani - Shion 'Coyote' (Red)"
    Utilities.StartProtocol(moduleName)

	vs = Game.GetVehicleSystem()
	vs:EnablePlayerVehicle('Vehicle.v_sport2_mizutani_shion_nomad_02_player', true, false)

    Utilities.FinishProtocol(moduleName)
end

function Vehicles.GetMizutaniShionMZ2()
    local moduleName = "Adding Vehicle: Mizutani - Shion MZ2"
    Utilities.StartProtocol(moduleName)

	vs = Game.GetVehicleSystem()
	vs:EnablePlayerVehicle('Vehicle.v_sport2_mizutani_shion_player', true, false)

    Utilities.FinishProtocol(moduleName)
end

function Vehicles.GetQuadraTurboR740()
    local moduleName = "Adding Vehicle: Quadra - Turbo-R 740"
    Utilities.StartProtocol(moduleName)

	vs = Game.GetVehicleSystem()
	vs:EnablePlayerVehicle('Vehicle.v_sport1_quadra_turbo_player', true, false)

    Utilities.FinishProtocol(moduleName)
end

function Vehicles.GetQuadraTurboRVTech()
    local moduleName = "Adding Vehicle: Quadra - Turbo-R V-Tech"
    Utilities.StartProtocol(moduleName)

	vs = Game.GetVehicleSystem()
	vs:EnablePlayerVehicle('Vehicle.v_sport1_quadra_turbo_r_player', true, false)

    Utilities.FinishProtocol(moduleName)
end

function Vehicles.GetQuadraType66Cthulhu()
    local moduleName = "Adding Vehicle: Quadra - Type-66 'Cthulhu'"
    Utilities.StartProtocol(moduleName)

	vs = Game.GetVehicleSystem()
	vs:EnablePlayerVehicle('Vehicle.v_sport2_quadra_type66_nomad_ncu_player', true, false)

    Utilities.FinishProtocol(moduleName)
end

function Vehicles.GetQuadraType66Javelina()
    local moduleName = "Adding Vehicle: Quadra - Type-66 'Javelina'"
    Utilities.StartProtocol(moduleName)

	vs = Game.GetVehicleSystem()
	vs:EnablePlayerVehicle('Vehicle.v_sport2_quadra_type66_nomad_player', true, false)

    Utilities.FinishProtocol(moduleName)
end

function Vehicles.GetQuadraType66JenRowley()
    local moduleName = "Adding Vehicle: Quadra - Type-66 'Jen Rowley'"
    Utilities.StartProtocol(moduleName)

	vs = Game.GetVehicleSystem()
	vs:EnablePlayerVehicle('Vehicle.v_sport2_quadra_type66_player', true, false)

    Utilities.FinishProtocol(moduleName)
end

function Vehicles.GetQuadraType66Avenger()
    local moduleName = "Adding Vehicle: Quadra - Type-66 Avenger"
    Utilities.StartProtocol(moduleName)

	vs = Game.GetVehicleSystem()
	vs:EnablePlayerVehicle('Vehicle.v_sport2_quadra_type66_avenger_player', true, false)

    Utilities.FinishProtocol(moduleName)
end

function Vehicles.GetRayfieldAerondightGuinevere()
    local moduleName = "Adding Vehicle: Rayfield - Aerondight 'Guinevere'"
    Utilities.StartProtocol(moduleName)

	vs = Game.GetVehicleSystem()
	vs:EnablePlayerVehicle('Vehicle.v_sport1_rayfield_aerondight_player', true, false)

    Utilities.FinishProtocol(moduleName)
end

function Vehicles.GetRayfieldCaliburn()
    local moduleName = "Adding Vehicle: Rayfield - Caliburn"
    Utilities.StartProtocol(moduleName)

	vs = Game.GetVehicleSystem()
	vs:EnablePlayerVehicle('Vehicle.v_sport1_rayfield_caliburn_player', true, false)

    Utilities.FinishProtocol(moduleName)
end

function Vehicles.GetRayfieldCaliburnBlack()
    local moduleName = "Adding Vehicle: Rayfield - Caliburn (Black)"
    Utilities.StartProtocol(moduleName)

	vs = Game.GetVehicleSystem()
	vs:EnablePlayerVehicle('Vehicle.v_sport1_rayfield_caliburn_02_player', true, false)

    Utilities.FinishProtocol(moduleName)
end

function Vehicles.GetHerreraOutlawGTS()
    local moduleName = "Adding Vehicle: Herrera - Outlaw GTS"
    Utilities.StartProtocol(moduleName)

	vs = Game.GetVehicleSystem()
	vs:EnablePlayerVehicle('Vehicle.v_sport1_herrera_outlaw_player', true, false)

    Utilities.FinishProtocol(moduleName)
end

return Vehicles
