local Facts = {}

local Utilities = require("utility")
local Inventory = require("inventory")

-- Some Skippy Functions!
function Facts.SetSkippyToSCK()
    local moduleName = "Skippy Mode: Stone Cold Killer"
    Utilities.StartProtocol(moduleName)

	-- This will set the Skippy gun to "Stone Cold Killer" (headshots)
	Game.SetDebugFact("mq007_skippy_aim_at_head", 1)

    Utilities.FinishProtocol(moduleName)
end

function Facts.SetSkippyToPLP()
    local moduleName = "Skippy Mode: Puppy-Loving Pacifist"
    Utilities.StartProtocol(moduleName)

	-- This will set the Skippy gun to "Puppy-Loving Pacifist" (knee-shots)
	Game.SetDebugFact("mq007_skippy_aim_at_head", 0)

    Utilities.FinishProtocol(moduleName)
end

function Facts.SetSkippyToFriendly()
    local moduleName = "Skippy Is Now Friendly"
    Utilities.StartProtocol(moduleName)

	-- This will set the Skippy gun to be friendly
	Game.SetDebugFact("mq007_skippy_goes_emo", 0)

    Utilities.FinishProtocol(moduleName)
end

function Facts.SetSkippyToHostile()
    local moduleName = "Skippy Is Now Hostile"
    Utilities.StartProtocol(moduleName)

	-- This will set the Skippy gun to be hostile
	Game.SetDebugFact("mq007_skippy_goes_emo", 1)

    Utilities.FinishProtocol(moduleName)
end


-- Jackie Facts
function Facts.SendJackieToViktor()
    local moduleName = "You Sent Jackie To Viktor"
    Utilities.StartProtocol(moduleName)

	Game.SetDebugFact("q005_jackie_stay_notell", 0)
	Game.SetDebugFact("q005_jackie_to_mama", 0)
	Game.SetDebugFact("q005_jackie_to_hospital", 1)

    Utilities.FinishProtocol(moduleName)
end

function Facts.SendJackieToWelles()
    local moduleName = "You Sent Jackie To Mama Welles"
    Utilities.StartProtocol(moduleName)

	Game.SetDebugFact("q005_jackie_stay_notell", 0)
	Game.SetDebugFact("q005_jackie_to_hospital", 0)
	Game.SetDebugFact("q005_jackie_to_mama", 1)

    Utilities.FinishProtocol(moduleName)
end

function Facts.LeftJackieInCar()
    local moduleName = "You Left Jackie In The Car"
    Utilities.StartProtocol(moduleName)

	Game.SetDebugFact("q005_jackie_to_hospital", 0)
	Game.SetDebugFact("q005_jackie_to_mama", 0)
	Game.SetDebugFact("q005_jackie_stay_notell", 1)

    Utilities.FinishProtocol(moduleName)
end

-- Takemura Facts
function Facts.SetGoroAlive()
    local moduleName = "Takemura Is Now Alive"
    Utilities.StartProtocol(moduleName)

	Game.SetDebugFact("q112_takemura_dead", 0)

    Utilities.FinishProtocol(moduleName)
end

function Facts.SetGoroDead()
    local moduleName = "Takemura Is Now Dead"
    Utilities.StartProtocol(moduleName)

	Game.SetDebugFact("q112_takemura_dead", 1)

    Utilities.FinishProtocol(moduleName)
end

-- Dr. Fingers Facts
function Facts.SetFingersToFriendly()
    local moduleName = "Fingers M.D. Is Now Friendly And Alive"
    Utilities.StartProtocol(moduleName)

	Game.SetDebugFact("q105_fingers_dead", 0)
	Game.SetDebugFact("q105_fingers_beaten", 0)

    Utilities.FinishProtocol(moduleName)
end

-- Romance Facts
-- Apparently these need to be set, after each save reload.
-- Haven't tested that

function Facts.SetJudyRomance()
    local moduleName = "Judy Is Now Romanceable"
    Utilities.StartProtocol(moduleName)

	Game.GetQuestsSystem():SetFactStr("judy_romanceable", 1)
	Game.SetDebugFact("judy_romanceable", 1)

	Utilities.FinishProtocol(moduleName)
end

function Facts.SetRiverRomance()
    local moduleName = "River Is Now Romanceable"
    Utilities.StartProtocol(moduleName)

	Game.GetQuestsSystem():SetFactStr("river_romanceable", 1)
	Game.SetDebugFact("river_romanceable", 1)

	Utilities.FinishProtocol(moduleName)
end

function Facts.SetPanamRomance()
    local moduleName = "Panam Is Now Romanceable"
    Utilities.StartProtocol(moduleName)

	Game.GetQuestsSystem():SetFactStr("panam_romanceable", 1)
	Game.SetDebugFact("panam_romanceable", 1)

	Utilities.FinishProtocol(moduleName)
end

function Facts.SetKerryRomance()
    local moduleName = "Kerry Is Now Romanceable"
    Utilities.StartProtocol(moduleName)

	Game.GetQuestsSystem():SetFactStr("kerry_romanceable", 1)
	Game.SetDebugFact("kerry_romanceable", 1)

	Utilities.FinishProtocol(moduleName)
end

-- Enable Johnny's Secret Ending
function Facts.SetJohnnyAsFriend()
    local moduleName = "You Now Unlocked The Secret Ending"
    Utilities.StartProtocol(moduleName)

	Game.SetDebugFact("sq032_johnny_friend", 1)

	Utilities.FinishProtocol(moduleName)
end

return Facts
