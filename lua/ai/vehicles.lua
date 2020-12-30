local Vehicles = {}

function Vehicles.PreventKnockdown()
    print("Setting: Prevent Vehicle Knockdown")
    GameOptions.SetFloat("Crowds", "MinimumSpeedForKnockdownByCar", 99.000000) -- Prevent being knocked down by NPC Vehicles
end

return Vehicles
