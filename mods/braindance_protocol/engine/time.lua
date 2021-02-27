local Time = {
    timeToggle = false
}

local Utilities = require("utility")

function Time.SetTimeTo06AM()
    local moduleName = "Time is now 6AM"

	-- 6AM / 06:00
	Game.GetTimeSystem():SetGameTimeByHMS(6, 0, 0)

	Utilities.FinishProtocol(moduleName)
end

function Time.SetTimeTo10PM()
    local moduleName = "Time is now 10PM"

	-- 10PM / 22:00
	Game.GetTimeSystem():SetGameTimeByHMS(22, 0, 0)

	Utilities.FinishProtocol(moduleName)
end

function Time.SetTime(quantity)
    local moduleName = "Time Changed"

    quantity = quantity or 0

    Game.GetTimeSystem():SetGameTimeByHMS(quantity, 0, 0)

    Utilities.FinishProtocol(moduleName)
end

-- Toggle Time Stops
function Time.TimeToggle()
    local moduleName = "Pause Time"

    Time.timeToggle = not Time.timeToggle
    Game.GetTimeSystem():SetPausedState(Time.timeToggle, CName.new())

    print("Status:", Time.timeToggle)
    Utilities.FinishProtocol(moduleName)
end

return Time
