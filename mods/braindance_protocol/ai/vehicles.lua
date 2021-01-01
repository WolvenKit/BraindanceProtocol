local Utilities = require("utility")

local Vehicles = {}

function Vehicles.PreventKnockdown()
    local moduleName = "Prevent Vehicle Knockdown"
    Utilities.StartProtocol(moduleName)
    GameOptions.SetFloat("Crowds", "MinimumSpeedForKnockdownByCar", 99.000000)
    Utilities.FinishProtocol(moduleName)
end

return Vehicles
