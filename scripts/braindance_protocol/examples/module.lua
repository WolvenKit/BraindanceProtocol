require("braindance_protocol.utility")

local Example = {}

function Example.Initialise()
    local moduleName = "Hello World"
    Utilities.StartProtocol(moduleName)
    print("Initialising Braindance Protocol")
    Utilities.FinishProtocol(moduleName)
end

return Example
