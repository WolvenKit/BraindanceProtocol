local Platform = {}

local Utilities = require("utility")


function Platform.UnlockAllAchievements()
    local moduleName = "Unlock All Achievements"
    Utilities.StartProtocol(moduleName)
    Game.UnlockAllAchievements()
    Utilities.FinishProtocol(moduleName)
end

return Platform
