local Utilities = require("utility")

local Visual = {}

function Visual.Rain(state)
    local moduleName = "Toggle Rain"
    state = state or true
    GameOptions.SetBool("Developer/FeatureToggles", "RainMap", state)
    Utilities.FinishProtocol(moduleName)
end

return Visual
