local Utilities = require("braindance_protocol.utility")

local Visual = {}

function Visual.Rain(state)
    local moduleName = "Toggle Rain"
    Utilities.StartProtocol(moduleName)
    state = state or true
    GameOptions.SetFloat("FeatureToggles", "RainMap", true)
    Utilities.FinishProtocol(moduleName)
end

return Visual
