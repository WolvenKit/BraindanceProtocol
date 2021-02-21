local fact = require("fact")
local BD = require("BD")
local protocols = require("protocols")
local ui = require("ui")
local i18n = require("i18n")

local hotkeys = {}

hotkeys.bindings = {
  {
    ID = "hotkey_interface",
    Callback = function()
      if not ui.drawWindow then
        fact.GetValue()
      end
      ui.drawWindow = not ui.drawWindow
    end
  },

  {
    ID = "hotkey_godMode",
    Callback = function() BD.Cheats.Player.GodModeToggle() end
  },

  {
    ID = "hotkey_infStamina",
    Callback = function() BD.Cheats.Player.InfiniteStaminaToggle() end
  },

  {
    ID = "hotkey_slowMo",
    Callback = function() BD.Cheats.Player.SlowMotionToggle() end
  },

  {
    ID = "hotkey_addAmmo",
    Callback = function() BD.Cheats.Ammo.AddAmmo() end
  },

  {
    ID = "hotkey_infAmmo",
    Callback = function() BD.Cheats.Ammo.InfiniteAmmoToggle() end
  },

  {
    ID = "hotkey_noReload",
    Callback = function() BD.Cheats.Ammo.InfiniteAmmoNoReloadToggle() end
  },

  {
    ID = "hotkey_addMoney",
    Callback = function() BD.Cheats.Player.AddMoney(10000) end
  },

  {
    ID = "hotkey_forceKillNPC",
    Callback = function() BD.Cheats.Player.ForceNPCDeath() end
  },

}

function hotkeys:Register()
  for _, v in ipairs(self.bindings) do
    registerHotkey(v.ID, i18n(v.ID), v.Callback)
  end
end

return hotkeys
