require("braindance_protocol.utility")

local Example = {}

function Example.Hello()
    local moduleName = "Hello World"
    Utilities.StartProtocol(moduleName)
    print("Hello World")
    Utilities.FinishProtocol(moduleName)
end

return Example
