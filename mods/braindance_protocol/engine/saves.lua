local Saves = {
	rootPath = "plugins.cyber_engine_tweaks.mods.braindance_protocol."
}

local Utilities = require(Saves.rootPath.."utility")

function Saves.DisableAutosave()
    local moduleName = "Disable Autosave"
    Utilities.StartProtocol(moduleName)
    GameOptions.SetFloat("SaveConfig", "AutoSaveEnabled", false)
    Utilities.FinishProtocol(moduleName)
end

function Saves.DecreaseAutosaves()
    local moduleName = "Decrease Autosaves"
    Utilities.StartProtocol(moduleName)
    GameOptions.SetFloat("SaveConfig", "AutoSaveEnabled", true)
    GameOptions.SetFloat("SaveConfig", "AutoSavePeriod", 600)
    Utilities.FinishProtocol(moduleName)
end

function Saves.IncreaseAutosaves()
    local moduleName = "Increase Autosaves"
    Utilities.StartProtocol(moduleName)
    GameOptions.SetFloat("SaveConfig", "AutoSaveEnabled", true)
    GameOptions.SetFloat("SaveConfig", "AutoSavePeriod", 100)
    Utilities.FinishProtocol(moduleName)
end

function Saves.IncreaseQuicksaves()
    local moduleName = "Increase Quicksaves"
    Utilities.StartProtocol(moduleName)
    GameOptions.SetInt("SaveSlotsConfig", "NumQuickSaveSlots", 10)
    Utilities.FinishProtocol(moduleName)
end

return Saves
