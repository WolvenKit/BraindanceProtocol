local BD = require("BD")
local hotkeys = require("hotkeys")
local ui = require("ui")

hotkeys()

registerForEvent("onInit", function()
    CPS = require("CPStyling")
    theme = CPS.theme
    color = CPS.color
    fact = require("fact")
    i18n = require("i18n")
    languages = require("lang/lang")
    Options = require("options")
    Options:load()
    protocols = require("protocols")
    -- wWidth, wHeight = GetDisplayResolution()
    -- Execute Braindance protocols
    BD.Examples.Initialise()
end)

-- Open BDP with the CET console
registerForEvent("onOverlayOpen", function()
    ui.drawWindow = true
end)

registerForEvent("onOverlayClose", function()
    ui.drawWindow = false
end)

ui:Update()
ui:Draw()

return BD
