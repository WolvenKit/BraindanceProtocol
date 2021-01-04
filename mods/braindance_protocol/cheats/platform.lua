local Platform = {
    rootPath = "plugins.cyber_engine_tweaks.mods.braindance_protocol."
}

local Utilities = require(Platform.rootPath.."utility")


function Platform.UnlockAllAchievements()
    local moduleName = "Unlock All Achievements"
    Utilities.StartProtocol(moduleName)
    Game.UnlockAllAchievements()
    Utilities.FinishProtocol(moduleName)
end

return Platform
