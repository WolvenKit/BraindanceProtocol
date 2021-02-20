local fact = require("fact")
local BD = require("BD")
local protocols = require("protocols")
local ui = require("ui")

local hotkeys = {}

hotkeys.bindings = {
  {
    ID = "hotkey_interface",
    Description = "Open Protocol Interface",
    Callback = function()
      if not ui.drawWindow then
        fact.GetValue()
      end
      ui.drawWindow = not ui.drawWindow
    end
  },

  {
    ID = "hotkey_godMode",
    Description = "God Mode Toggle",
    Callback = function() BD.Cheats.Player.GodModeToggle() end
  },

  {
    ID = "hotkey_infStamina",
    Description = "Infinite Stamina Toggle",
    Callback = function() BD.Cheats.Player.InfiniteStaminaToggle() end
  },

  {
    ID = "hotkey_slowMo",
    Description = "Slow Motion Toggle",
    Callback = function() BD.Cheats.Player.SlowMotionToggle() end
  },

  {
    ID = "hotkey_addAmmo",
    Description = "Refill Ammunition",
    Callback = function() BD.Cheats.Ammo.AddAmmo() end
  },

  {
    ID = "hotkey_infAmmo",
    Description = "Infinite Ammunition Toggle",
    Callback = function() BD.Cheats.Ammo.InfiniteAmmoToggle() end
  },

  {
    ID = "hotkey_noReload",
    Description = "No Reload Toggle",
    Callback = function() BD.Cheats.Ammo.InfiniteAmmoNoReloadToggle() end
  },

  {
    ID = "hotkey_addMoney",
    Description = "Add Some Money",
    Callback = function() BD.Cheats.Player.AddMoney(10000) end
  },

  {
    ID = "hotkey_forceKillNPC",
    Description = "Force Kill NPC",
    Callback = function() BD.Cheats.Player.ForceNPCDeath() end
  },

}

function hotkeys:Register()
  for _, v in ipairs(self.bindings) do
    registerHotkey(v.ID, v.Description, v.Callback)
  end
end

return hotkeys
