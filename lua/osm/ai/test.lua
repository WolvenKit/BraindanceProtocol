--[[ 
dofile ("Q:\\Modding\\Cyberpunk\\CyberTweaks2077\\lua\\osm\\ai\\test.lua")
]]

local Threat = {}


local One = { drop = 0.001, maxtime = 0.001, avoidtracesnumber = 0, avoidtracesmindist = 0.5 } -- Took a long time to leave combat
local Two = { drop = 0.001, maxtime = 0.001, avoidtracesnumber = 0, avoidtracesmindist = 5000 } -- 
local Three = { drop = 0.001, maxtime = 5000, avoidtracesnumber = 0, avoidtracesmindist = 5000, tryfinaltracesonlymaxdist = 5000 } -- 
local Four = { drop = 0.001, maxtime = 5000000, avoidtracesnumber = 0, avoidtracesmindist = 5000000, tryfinaltracesonlymaxdist = 5000000 } -- 
local Five = { drop = 500000, maxtime = 5000000000, avoidtracesnumber = 0, avoidtracesmindist = 5000000000, tryfinaltracesonlymaxdist = 5000000000 } -- 


function Threat.PrintValues(stage)
    print("--------------------------------------")
    one = GameOptions.Get("ThreatTracking", "ThreatDropFactor")
    two = GameOptions.Get("LoSFinderSystem", "TryFinalTracesOnlyMaxTime")
    three = GameOptions.Get("LoSFinderSystem", "AvoidTracesNumber")
    four = GameOptions.Get("LoSFinderSystem", "AvoidTraceHitsMinDist")
    five = GameOptions.Get("LoSFinderSystem", "TryFinalTracesOnlyMaxDist")

    print(stage, one, two, three, four, five)
    print("--------------------------------------")
end

function Threat.Test(config)
    Threat.PrintValues("Before: ")

    print("Configuring: Threat Module")
    
    GameOptions.SetFloat("ThreatTracking", "ThreatDropFactor", config.drop)
    GameOptions.SetFloat("LoSFinderSystem", "TryFinalTracesOnlyMaxTime", config.maxtime)
    GameOptions.SetInt("LoSFinderSystem", "AvoidTracesNumber", config.avoidtracesnumber)
    GameOptions.SetFloat("LoSFinderSystem", "AvoidTraceHitsMinDist", config.avoidtracesmindist)
    GameOptions.SetFloat("LoSFinderSystem", "TryFinalTracesOnlyMaxDist", config.tryfinaltracesonlymaxdist)
    GameOptions.SetFloat("LoSFinderSystem", "ElevatedNPCNaviSearchRadius", 500000.0)

    GameOptions.SetFloat("Occlusion", "MaxDistance", 2000.0)
    GameOptions.SetFloat("Crowd", "AppropriateMinLastSeenTime", 10.0)
    GameOptions.SetFloat("Crowd", "AppropriateMinDistToPlayer", 10.0)
    GameOptions.SetFloat("Occlusion", "MaxFarPlane", 8000.0)
    GameOptions.SetFloat("LoSFinderSystem", "ElevatedNPCNaviSearchRadius", 500000.0)

    Threat.PrintValues("After :")
end

Threat.Test(Five)

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