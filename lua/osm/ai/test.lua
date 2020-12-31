--[[ 
dofile ("Q:\\Modding\\Cyberpunk\\CyberTweaks2077\\lua\\osm\\ai\\test.lua")
]]

local Threat = {}


local One = { drop = 0.001, maxtime = 0.001, avoidtraces = 0 }
local Two = { drop = 9999, maxtime = 9999, avoidtraces = 9999 }


function Threat.PrintValues(stage)
    print("--------------------------------------")
    one = GameOptions.Get("ThreatTracking", "ThreatDropFactor")
    two = GameOptions.Get("LoSFinderSystem", "TryFinalTracesOnlyMaxTime")
    three = GameOptions.Get("LoSFinderSystem", "AvoidTracesNumber")
    print(stage, one, two, three)
    print("--------------------------------------")
end

function Threat.Test(config)
    Threat.PrintValues("Before: ")

    print("Configuring: Threat Module")
    
    GameOptions.SetFloat("ThreatTracking", "ThreatDropFactor", config.drop)
    GameOptions.SetFloat("LoSFinderSystem", "TryFinalTracesOnlyMaxTime", config.maxtime)
    GameOptions.SetInt("LoSFinderSystem", "AvoidTracesNumber", config.avoidtraces)
    
    Threat.PrintValues("After :")
end

Threat.Test(One)

return Threat


-- 


--[[
4-5 seconds 'police pursuit'
// seemingly invsible when stood infront of milltech
// could get shot by drones and police
GameOptions.SetFloat("ThreatTracking", "ThreatDropFactor", 9999)
GameOptions.SetFloat("LoSFinderSystem", "TryFinalTracesOnlyMaxTime", 9999)
GameOptions.SetInt("LoSFinderSystem", "AvoidTracesNumber", 9999)
]]


--[[
one = GameOptions.Get("ThreatTracking", "ThreatDropFactor")
two = GameOptions.Get("LoSFinderSystem", "TryFinalTracesOnlyMaxTime")
three = GameOptions.Get("LoSFinderSystem", "AvoidTracesNumber")
print(one, two, three)
]]



--[[
    
function Threat.TestOne()
    print("Configuring: Threat Protocols 1")
    GameOptions.SetFloat("ThreatTracking", "ThreatDropFactor", 999.0) --

    GameOptions.SetFloat("LoSFinderSystem", "TryFinalTracesOnlyMaxDist", 100.0) -- 
    GameOptions.SetFloat("LoSFinderSystem", "TryFinalTracesOnlyMaxTime", 100.000000) --
    GameOptions.SetFloat("LoSFinderSystem", "TryFinalTracesOnlyLongTracesCoeff", 0.7) --

    GameOptions.SetFloat("LoSFinderSystem", "MinLoSTraceLen", 0.5) --
    GameOptions.SetFloat("LoSFinderSystem", "ObstacleLoSTraceDist", 0.2) --

end
]]