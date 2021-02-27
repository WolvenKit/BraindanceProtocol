local Saves = {}

local Utilities = require("utility")

function Saves.DisableAutosave()
    local moduleName = "Disable Autosave"
    GameOptions.SetBool("SaveConfig", "AutoSaveEnabled", false)
    Utilities.FinishProtocol(moduleName)
end

function Saves.DecreaseAutosaves()
    local moduleName = "Decrease Autosaves"
    GameOptions.SetBool("SaveConfig", "AutoSaveEnabled", true)
    GameOptions.SetInt("SaveConfig", "AutoSavePeriod", 600)
    Utilities.FinishProtocol(moduleName)
end

function Saves.IncreaseAutosaves()
    local moduleName = "Increase Autosaves"
    GameOptions.SetFloat("SaveConfig", "AutoSaveEnabled", true)
    GameOptions.SetInt("SaveConfig", "AutoSavePeriod", 100)
    Utilities.FinishProtocol(moduleName)
end

function Saves.IncreaseQuicksaves()
    local moduleName = "Increase Quicksaves"
    GameOptions.SetInt("Developer/SaveSlotsConfig", "NumQuickSaveSlots", 10)
    Utilities.FinishProtocol(moduleName)
end

return Saves
