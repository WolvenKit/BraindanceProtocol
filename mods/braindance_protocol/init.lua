local BD = require("BD")
local hotkeys = require("hotkeys")
local ui = require("ui")
local Options = require("options")
Options:load()

hotkeys:Register()
ui:Update()
ui:Draw()

registerForEvent("onInit", function()
    -- Execute Braindance protocols
    BD.Examples.Initialise()
end)

return BD
