local Saves = {}

local Utilities = require("utility")

function Saves.DisableAutosave()
    local moduleName = "Disable Autosave"
    Utilities.StartProtocol(moduleName)
    GameOptions.SetBool("SaveConfig", "AutoSaveEnabled", false)
    Utilities.FinishProtocol(moduleName)
end

function Saves.DecreaseAutosaves()
    local moduleName = "Decrease Autosaves"
    Utilities.StartProtocol(moduleName)
    GameOptions.SetBool("SaveConfig", "AutoSaveEnabled", true)
    GameOptions.SetInt("SaveConfig", "AutoSavePeriod", 600)
    Utilities.FinishProtocol(moduleName)
end

function Saves.IncreaseAutosaves()
    local moduleName = "Increase Autosaves"
    Utilities.StartProtocol(moduleName)
    GameOptions.SetFloat("SaveConfig", "AutoSaveEnabled", true)
    GameOptions.SetInt("SaveConfig", "AutoSavePeriod", 100)
    Utilities.FinishProtocol(moduleName)
end

function Saves.IncreaseQuicksaves()
    local moduleName = "Increase Quicksaves"
    Utilities.StartProtocol(moduleName)
    GameOptions.SetInt("Developer/SaveSlotsConfig", "NumQuickSaveSlots", 10)
    Utilities.FinishProtocol(moduleName)
end

return Saves
