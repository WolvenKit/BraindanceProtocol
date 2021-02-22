local fact = require("fact")
local BD = require("BD")
local protocols = require("protocols")
local ui = require("ui")
local i18n = require("i18n")
local Options = require("options")

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
  }
}

function hotkeys:Register()
  for _, v in ipairs(self.bindings) do
    registerHotkey(v.ID, i18n(v.ID), v.Callback)
  end
  for _, v in ipairs(Options.fav_value.hk) do
    for _, pv in ipairs(protocols.Items) do
      if pv.id == v then
        registerHotkey(pv.id:gsub(".","_"), i18n(pv.name), pv.cmd)
      end
    end
  end
end

return hotkeys
