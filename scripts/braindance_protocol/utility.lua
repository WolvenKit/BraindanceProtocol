--[[ 
    Utility functions for Braindance Protocols
]]

local Utilities = {}

function Utilities.StartProtocol(protocolName)
    print("---------------------------------------------------------------------")
    print(string.format("Executing Protocol: %s", protocolName))
    print("---------------------------------------------------------------------")
end

function Utilities.FinishProtocol(protocolName)
    print("---------------------------------------------------------------------")
    print(string.format("Finished Protocol: %s", protocolName))
    print("---------------------------------------------------------------------")
end
