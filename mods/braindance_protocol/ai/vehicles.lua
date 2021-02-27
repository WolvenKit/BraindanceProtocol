local Vehicles = {}

local Utilities = require("utility")


function Vehicles.PreventKnockdown()
    local moduleName = "Prevent Vehicle Knockdown"
    GameOptions.SetFloat("Crowds", "MinimumSpeedForKnockdownByCar", 99.000000)
    Utilities.FinishProtocol(moduleName)
end

function Vehicles.GetAll()
    local moduleName = "Get all vehicles"

    vs = Game.GetVehicleSystem()
    vs:EnableAllPlayerVehicles()

    Utilities.FinishProtocol(moduleName)
end

-- Individual Vehicles
function Vehicles.GetMahirSupronFS3()
    local moduleName = "Adding Vehicle: Mahir - Supron FS3"

	vs = Game.GetVehicleSystem()
	vs:EnablePlayerVehicle('Vehicle.v_standard25_mahir_supron_player', true, false)

    Utilities.FinishProtocol(moduleName)
end

function Vehicles.GetMaiMaiP126()
    local moduleName = "Adding Vehicle: Makigai - MaiMai P126"

	vs = Game.GetVehicleSystem()
	vs:EnablePlayerVehicle('Vehicle.v_standard2_makigai_maimai_player', true, false)

    Utilities.FinishProtocol(moduleName)
end

function Vehicles.GetThortonColbyC125()
    local moduleName = "Adding Vehicle: Thorton - Colby C125"

	vs = Game.GetVehicleSystem()
	vs:EnablePlayerVehicle('Vehicle.v_standard2_thorton_colby_player', true, false)

    Utilities.FinishProtocol(moduleName)
end

function Vehicles.GetThortonColbyCX410Green()
    local moduleName = "Adding Vehicle: Thorton - Colby CX 410 Butte (green)"

	vs = Game.GetVehicleSystem()
	vs:EnablePlayerVehicle('Vehicle.v_standard25_thorton_colby_pickup_player', true, false)

    Utilities.FinishProtocol(moduleName)
end

function Vehicles.GetThortonColbyCX410Red()
    local moduleName = "Adding Vehicle: Thorton - Colby CX 410 Butte (red)"

	vs = Game.GetVehicleSystem()
	vs:EnablePlayerVehicle('Vehicle.v_standard25_thorton_colby_pickup_02_player', true, false)

    Utilities.FinishProtocol(moduleName)
end

function Vehicles.GetThortonColbyLittleMule()
    local moduleName = "Adding Vehicle: Thorton - Colby 'Little Mule'"

	vs = Game.GetVehicleSystem()
	vs:EnablePlayerVehicle('Vehicle.v_standard25_thorton_colby_nomad_player', true, false)

    Utilities.FinishProtocol(moduleName)
end

function Vehicles.GetThortonGalenaG240()
    local moduleName = "Adding Vehicle: Thorton - Galena G240"

	vs = Game.GetVehicleSystem()
	vs:EnablePlayerVehicle('Vehicle.v_standard2_thorton_galena_player', true, false)

    Utilities.FinishProtocol(moduleName)
end

function Vehicles.GetThortonGalenaGecko()
    local moduleName = "Adding Vehicle: Thorton - Galena 'Gecko'"

	vs = Game.GetVehicleSystem()
	vs:EnablePlayerVehicle('Vehicle.v_standard2_thorton_galena_nomad_player', true, false)

    Utilities.FinishProtocol(moduleName)
end

function Vehicles.GetThortonGalenaRattler()
    local moduleName = "Adding Vehicle: Thorton - Galena 'Rattler'"

	vs = Game.GetVehicleSystem()
	vs:EnablePlayerVehicle('Vehicle.v_standard2_thorton_galena_bobas_player', true, false)

    Utilities.FinishProtocol(moduleName)
end

function Vehicles.GetThortonMackinawMTL1()
    local moduleName = "Adding Vehicle: Thorton - Mackinaw MTL1"

	vs = Game.GetVehicleSystem()
	vs:EnablePlayerVehicle('Vehicle.v_standard3_thorton_mackinaw_player', true, false)

    Utilities.FinishProtocol(moduleName)
end

function Vehicles.GetThortonMackinawBeast()
    local moduleName = "Adding Vehicle: Thorton - Mackinaw 'Beast'"

	vs = Game.GetVehicleSystem()
	vs:EnablePlayerVehicle('Vehicle.v_standard3_thorton_mackinaw_ncu_player', true, false)

    Utilities.FinishProtocol(moduleName)
end

function Vehicles.GetVillefortAlvaradoVato()
    local moduleName = "Adding Vehicle: Villefort - Alvarado 'Vato'"

	vs = Game.GetVehicleSystem()
	vs:EnablePlayerVehicle('Vehicle.v_sport2_villefort_alvarado_valentinos_player', true, false)

    Utilities.FinishProtocol(moduleName)
end

function Vehicles.GetVillefortAlvaradoV4F570Delegate()
    local moduleName = "Adding Vehicle: Villefort - Alvarado V4F 570 Delegate"

	vs = Game.GetVehicleSystem()
	vs:EnablePlayerVehicle('Vehicle.v_sport2_villefort_alvarado_player', true, false)

    Utilities.FinishProtocol(moduleName)
end

function Vehicles.GetVillefortColumbusV340FFreight()
    local moduleName = "Adding Vehicle: Villefort - Columbus V340-F Freight"

	vs = Game.GetVehicleSystem()
	vs:EnablePlayerVehicle('Vehicle.v_standard25_villefort_columbus_player', true, false)

    Utilities.FinishProtocol(moduleName)
end

function Vehicles.GetVillefortCortesV5000ValorPink()
    local moduleName = "Adding Vehicle: Villefort - Cortes V5000 Valor (pink)"

	vs = Game.GetVehicleSystem()
	vs:EnablePlayerVehicle('Vehicle.v_standard2_villefort_cortes_player', true, false)

    Utilities.FinishProtocol(moduleName)
end

function Vehicles.GetVillefortCortesDelaminNo21()
    local moduleName = "Adding Vehicle: Villefort - Cortes Delamain No.21"

	vs = Game.GetVehicleSystem()
	vs:EnablePlayerVehicle('Vehicle.v_standard2_villefort_cortes_delamain_player', true, false)

    Utilities.FinishProtocol(moduleName)
end

function Vehicles.GetChevalierEmperor620Ragnar()
    local moduleName = "Adding Vehicle: Chevalier - Emperor 620 Ragnar"

	vs = Game.GetVehicleSystem()
	vs:EnablePlayerVehicle('Vehicle.v_standard3_chevalier_emperor_player', true, false)

    Utilities.FinishProtocol(moduleName)
end

function Vehicles.GetChevalierThrax338Jefferson()
    local moduleName = "Adding Vehicle: Chevalier - Thrax 338 Jefferson"

	vs = Game.GetVehicleSystem()
	vs:EnablePlayerVehicle('Vehicle.v_standard2_chevalier_thrax_player', true, false)

    Utilities.FinishProtocol(moduleName)
end

function Vehicles.GetBrennanApollo()
    local moduleName = "Adding Vehicle: Brennan - Apollo"

	vs = Game.GetVehicleSystem()
	vs:EnablePlayerVehicle('Vehicle.v_sportbike3_brennan_apollo_player', true, false)

    Utilities.FinishProtocol(moduleName)
end

function Vehicles.GetBrennanApolloScorpion()
    local moduleName = "Adding Vehicle: Brennan - Apollo 'Scorpion'"

	vs = Game.GetVehicleSystem()
	vs:EnablePlayerVehicle('Vehicle.v_sportbike3_brennan_apollo_nomad_player', true, false)

    Utilities.FinishProtocol(moduleName)
end

function Vehicles.GetJackiesArch()
    local moduleName = "Adding Vehicle: Jackie's Arch"

	vs = Game.GetVehicleSystem()
	vs:EnablePlayerVehicle('Vehicle.v_sportbike2_arch_jackie_player', true, false)

    Utilities.FinishProtocol(moduleName)
end

function Vehicles.GetJackiesTunedArch()
    local moduleName = "Adding Vehicle: Jackie's Tuned Arch"

	vs = Game.GetVehicleSystem()
	vs:EnablePlayerVehicle('Vehicle.v_sportbike2_arch_jackie_tuned_player', true, false)

    Utilities.FinishProtocol(moduleName)
end

function Vehicles.GetArchNazare()
    local moduleName = "Adding Vehicle: Arch - Nazaré"

	vs = Game.GetVehicleSystem()
	vs:EnablePlayerVehicle('Vehicle.v_sportbike2_arch_player', true, false)

    Utilities.FinishProtocol(moduleName)
end

function Vehicles.GetArchNazareItsumade()
    local moduleName = "Adding Vehicle: Arch - Nazaré 'Itsumade'"

	vs = Game.GetVehicleSystem()
	vs:EnablePlayerVehicle('Vehicle.v_sportbike2_arch_tyger_player', true, false)

    Utilities.FinishProtocol(moduleName)
end

function Vehicles.GetYaibaKusanagiMizuchi()
    local moduleName = "Adding Vehicle: Yaiba - Kusanagi 'Mizuchi'"

	vs = Game.GetVehicleSystem()
	vs:EnablePlayerVehicle('Vehicle.v_sportbike1_yaiba_kusanagi_tyger_player', true, false)

    Utilities.FinishProtocol(moduleName)
end

function Vehicles.GetYaibaKusanagiCT3X()
    local moduleName = "Adding Vehicle: Yaiba - Kusanagi CT-3X"

	vs = Game.GetVehicleSystem()
	vs:EnablePlayerVehicle('Vehicle.v_sportbike1_yaiba_kusanagi_player', true, false)

    Utilities.FinishProtocol(moduleName)
end

function Vehicles.GetPorsche911Johnny()
    local moduleName = "Adding Vehicle: Porsche - 911 II (930) TURBO"

	vs = Game.GetVehicleSystem()
	vs:EnablePlayerVehicle('Vehicle.v_sport2_porsche_911turbo_player', true, false)

    Utilities.FinishProtocol(moduleName)
end

function Vehicles.GetArcherQuartzECT2R660()
    local moduleName = "Adding Vehicle: Archer - Quartz EC-T2 R660"

	vs = Game.GetVehicleSystem()
	vs:EnablePlayerVehicle('Vehicle.v_standard2_archer_quartz_player', true, false)

    Utilities.FinishProtocol(moduleName)
end

function Vehicles.GetMizutaniShionCoyote()
    local moduleName = "Adding Vehicle: Mizutani - Shion 'Coyote'"

	vs = Game.GetVehicleSystem()
	vs:EnablePlayerVehicle('Vehicle.v_sport2_mizutani_shion_nomad_player', true, false)

    Utilities.FinishProtocol(moduleName)
end

function Vehicles.GetMizutaniShionCoyoteRed()
    local moduleName = "Adding Vehicle: Mizutani - Shion 'Coyote' (Red)"

	vs = Game.GetVehicleSystem()
	vs:EnablePlayerVehicle('Vehicle.v_sport2_mizutani_shion_nomad_02_player', true, false)

    Utilities.FinishProtocol(moduleName)
end

function Vehicles.GetMizutaniShionMZ2()
    local moduleName = "Adding Vehicle: Mizutani - Shion MZ2"

	vs = Game.GetVehicleSystem()
	vs:EnablePlayerVehicle('Vehicle.v_sport2_mizutani_shion_player', true, false)

    Utilities.FinishProtocol(moduleName)
end

function Vehicles.GetQuadraTurboR740()
    local moduleName = "Adding Vehicle: Quadra - Turbo-R 740"

	vs = Game.GetVehicleSystem()
	vs:EnablePlayerVehicle('Vehicle.v_sport1_quadra_turbo_player', true, false)

    Utilities.FinishProtocol(moduleName)
end

function Vehicles.GetQuadraTurboRVTech()
    local moduleName = "Adding Vehicle: Quadra - Turbo-R V-Tech"

	vs = Game.GetVehicleSystem()
	vs:EnablePlayerVehicle('Vehicle.v_sport1_quadra_turbo_r_player', true, false)

    Utilities.FinishProtocol(moduleName)
end

function Vehicles.GetQuadraType66Cthulhu()
    local moduleName = "Adding Vehicle: Quadra - Type-66 'Cthulhu'"

	vs = Game.GetVehicleSystem()
	vs:EnablePlayerVehicle('Vehicle.v_sport2_quadra_type66_nomad_ncu_player', true, false)

    Utilities.FinishProtocol(moduleName)
end

function Vehicles.GetQuadraType66Javelina()
    local moduleName = "Adding Vehicle: Quadra - Type-66 'Javelina'"

	vs = Game.GetVehicleSystem()
	vs:EnablePlayerVehicle('Vehicle.v_sport2_quadra_type66_nomad_player', true, false)

    Utilities.FinishProtocol(moduleName)
end

function Vehicles.GetQuadraType66JenRowley()
    local moduleName = "Adding Vehicle: Quadra - Type-66 'Jen Rowley'"

	vs = Game.GetVehicleSystem()
	vs:EnablePlayerVehicle('Vehicle.v_sport2_quadra_type66_player', true, false)

    Utilities.FinishProtocol(moduleName)
end

function Vehicles.GetQuadraType66Avenger()
    local moduleName = "Adding Vehicle: Quadra - Type-66 Avenger"

	vs = Game.GetVehicleSystem()
	vs:EnablePlayerVehicle('Vehicle.v_sport2_quadra_type66_avenger_player', true, false)

    Utilities.FinishProtocol(moduleName)
end

function Vehicles.GetRayfieldAerondightGuinevere()
    local moduleName = "Adding Vehicle: Rayfield - Aerondight 'Guinevere'"

	vs = Game.GetVehicleSystem()
	vs:EnablePlayerVehicle('Vehicle.v_sport1_rayfield_aerondight_player', true, false)

    Utilities.FinishProtocol(moduleName)
end

function Vehicles.GetRayfieldCaliburn()
    local moduleName = "Adding Vehicle: Rayfield - Caliburn"

	vs = Game.GetVehicleSystem()
	vs:EnablePlayerVehicle('Vehicle.v_sport1_rayfield_caliburn_player', true, false)

    Utilities.FinishProtocol(moduleName)
end

function Vehicles.GetRayfieldCaliburnBlack()
    local moduleName = "Adding Vehicle: Rayfield - Caliburn (Black)"

	vs = Game.GetVehicleSystem()
	vs:EnablePlayerVehicle('Vehicle.v_sport1_rayfield_caliburn_02_player', true, false)

    Utilities.FinishProtocol(moduleName)
end

function Vehicles.GetHerreraOutlawGTS()
    local moduleName = "Adding Vehicle: Herrera - Outlaw GTS"

	vs = Game.GetVehicleSystem()
	vs:EnablePlayerVehicle('Vehicle.v_sport1_herrera_outlaw_player', true, false)

    Utilities.FinishProtocol(moduleName)
end

return Vehicles
