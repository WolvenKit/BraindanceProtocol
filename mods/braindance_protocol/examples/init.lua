local Example = {
    rootPath = "plugins.cyber_engine_tweaks.mods.braindance_protocol."
}

local Utilities = require(Example.rootPath.."utility")

local Example = {}

function Example.Initialise()
    local moduleName = "Init"
    Utilities.StartProtocol(moduleName)
    print("Initialising Braindance Protocol")
    Utilities.FinishProtocol(moduleName)
end

return Example
