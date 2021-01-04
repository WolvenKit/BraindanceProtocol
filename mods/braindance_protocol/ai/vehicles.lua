local Vehicles = {
    rootPath = "plugins.cyber_engine_tweaks.mods.braindance_protocol."
}

local Utilities = require(Vehicles.rootPath.."utility")


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

return Vehicles
