local BD = require("BD")
local hotkeys = require("hotkeys")
local ui = require("ui")
local Options = require("options")
Options:load()
Options:loadfav()

hotkeys:Register()
ui:Update()
ui:Draw()

registerForEvent("onInit", function()
    print("[BD] Braindance Protocol Initialized!")
end)

registerForEvent("onShutdown", function()
  Options:savefav()
end)

return BD
