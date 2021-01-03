local Utilities = require("braindance_protocol.utility")

local Saves = {}

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
    local moduleName = "Decrease Autosaves"
    Utilities.StartProtocol(moduleName)
    GameOptions.SetFloat("SaveConfig", "AutoSaveEnabled", true)
    GameOptions.SetFloat("SaveConfig", "AutoSavePeriod", 100)
    Utilities.FinishProtocol(moduleName)
end

function Saves.IncreaseQuickaves()
    local moduleName = "Increase Quicksaves"
    Utilities.StartProtocol(moduleName)
    GameOptions.SetInt("SaveSlotsConfig", "NumQuickSaveSlots", 10)
    Utilities.FinishProtocol(moduleName)
end

return Saves
