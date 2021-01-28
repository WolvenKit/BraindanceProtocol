local Time = {
    rootPath = "plugins.cyber_engine_tweaks.mods.braindance_protocol."
}

local Utilities = require(Time.rootPath .. "utility")

function Time.SetTimeTo06AM()
    local moduleName = "Time is now 6AM"
    Utilities.StartProtocol(moduleName)
    
	-- 6AM / 06:00
	Game.GetTimeSystem():SetGameTimeByHMS(6, 0, 0)
	
	Utilities.FinishProtocol(moduleName)
end

function Time.SetTimeTo10PM()
    local moduleName = "Time is now 10PM"
    Utilities.StartProtocol(moduleName)
    
	-- 10PM / 22:00
	Game.GetTimeSystem():SetGameTimeByHMS(22, 0, 0)
	
	Utilities.FinishProtocol(moduleName)
end

function Time.SetTime(quantity)
    local moduleName = "Time Changed"
    Utilities.StartProtocol(moduleName)

    quantity = quantity or 0

    Game.GetTimeSystem():SetGameTimeByHMS(quantity, 0, 0)
	
    Utilities.FinishProtocol(moduleName)
end

function Time.StartTime()
    local moduleName = "Unfreeze Clock (Resume Ingame Time)"
    Utilities.StartProtocol(moduleName)
    Game.GetTimeSystem():SetPausedState(false, CName.new())
	Utilities.FinishProtocol(moduleName)
end

function Time.StopTime()
    local moduleName = "Freeze Clock (Stop Ingame Time)"
    Utilities.StartProtocol(moduleName)
    Game.GetTimeSystem():SetPausedState(true, CName.new())
	Utilities.FinishProtocol(moduleName)
end


return Time