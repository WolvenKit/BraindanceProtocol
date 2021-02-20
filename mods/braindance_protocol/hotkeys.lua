local fact = require("fact")
local BD = require("BD")
local protocols = require("protocols")
local ui = require("ui")

local hotkeys = {
  {
    ID = "braindance_protocol_interface",
    Description = "Open Protocol Interface",
    Callback = function()
      if not ui.drawWindow then
        fact.GetValue()
      end
      ui.drawWindow = not ui.drawWindow
    end
  },

  {
    ID = "braindance_protocol_godMode",
    Description = "God Mode Toggle",
    Callback = function() BD.Cheats.Player.GodModeToggle() end
  },

  {
    ID = "braindance_protocol_infStamina",
    Description = "Infinite Stamina Toggle",
    Callback = function() BD.Cheats.Player.InfiniteStaminaToggle() end
  },

  {
    ID = "braindance_protocol_slowMo",
    Description = "Slow Motion Toggle",
    Callback = function() BD.Cheats.Player.SlowMotionToggle() end
  },

  {
    ID = "braindance_protocol_addAmmo",
    Description = "Refill Ammunition",
    Callback = function() BD.Cheats.Ammo.AddAmmo() end
  },

  {
    ID = "braindance_protocol_infAmmo",
    Description = "Infinite Ammunition Toggle",
    Callback = function() BD.Cheats.Ammo.InfiniteAmmoToggle() end
  },

  {
    ID = "braindance_protocol_noReload",
    Description = "No Reload Toggle",
    Callback = function() BD.Cheats.Ammo.InfiniteAmmoNoReloadToggle() end
  },

  {
    ID = "braindance_protocol_addMoney",
    Description = "Add Some Money",
    Callback = function() BD.Cheats.Player.AddMoney(10000) end
  },

  {
    ID = "braindance_protocol_forceKillNPC",
    Description = "Force Kill NPC",
    Callback = function() BD.Cheats.Player.ForceNPCDeath() end
  },

}

local function register()
  for _, v in ipairs(hotkeys) do
    registerHotkey(v.ID, v.Description, v.Callback)
  end
end

return register
