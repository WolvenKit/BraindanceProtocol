local Utilities = require("braindance_protocol.utility")

local Threat = {}

function Threat.IncreasePoliceSearchTime()
    local moduleName = "Increase Police Search Time"
    Utilities.StartProtocol(moduleName)
    GameOptions.SetFloat("ThreatTracking", "ThreatDropFactor", 0.000000)
    GameOptions.SetFloat("LoSFinderSystem", "TryFinalTracesOnlyMaxTime ", 1000.000000)
    Utilities.FinishProtocol(moduleName)
end

return Threat

