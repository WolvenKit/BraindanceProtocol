-- SaveConfig/AutoSaveEnabled = true
-- SaveConfig/AutoSavePeriod = 300
-- SaveConfig/AutoSavePeriodOnLock = 30

local Saves = {}

function Saves.DisableAutosave()
    print("---------------------------------------------------------------------")
    GameOptions.SetFloat("SaveConfig", "AutoSaveEnabled", false)

    print("---------------------------------------------------------------------")
end

return Saves

