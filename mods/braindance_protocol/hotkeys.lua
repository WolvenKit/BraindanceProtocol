local hotkeys = {
  {
    ID = "braindance_protocol_interface",
    Description = "Open Protocol Interface",
    Callback = function()
      if not drawWindow then
          for i in pairs(protocols.Items) do
              if protocols.Items[i].parent == "Facts" and protocols.Items[i].type ~= "Button" then
                  protocols.Items[i].value = fact.GetValue(protocols.Items[i].id)
              end
          end
      end
      drawWindow = not drawWindow
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
