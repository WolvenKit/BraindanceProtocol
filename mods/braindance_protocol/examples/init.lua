local Utilities = require("utility")

local Example = {}

function Example.Initialise()
    local moduleName = "Init"
    Utilities.StartProtocol(moduleName)
    print("Initialising Braindance Protocol")
    Utilities.FinishProtocol(moduleName)
end

return Example
