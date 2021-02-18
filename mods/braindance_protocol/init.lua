local BraindanceProtocol = {
description = "",
}

local BD = require("BD")

registerForEvent("onInit", function()
    CPS = require("CPStyling")
    fact = require("fact")
    i18n = require("i18n")
    languages = require("lang/lang")
    theme = CPS.theme
    color = CPS.color
    config = loadConfig()
    protocols = require("protocols")
    if config.debug then
        drawWindow = true
    else
        drawWindow = false
    end
    wWidth, wHeight = GetDisplayResolution()
    -- Execute Braindance protocols
    BD.Examples.Initialise()
end)

-- Open BDP with the CET console
registerForEvent("onOverlayOpen", function()
    drawWindow = true
end)

registerForEvent("onOverlayClose", function()
    drawWindow = false
end)

registerHotkey("braindance_protocol_interface", "Open Protocol Interface", function()
    if not drawWindow then
        for i in pairs(protocols.Items) do
            if protocols.Items[i].parent == "Facts" and protocols.Items[i].type ~= "Button" then
                protocols.Items[i].value = fact.GetValue(protocols.Items[i].id)
            end
        end
    end
    drawWindow = not drawWindow
end)

-- Hotkeys
registerHotkey("braindance_protocol_godMode", "God Mode Toggle", function()
    BD.Cheats.Player.GodModeToggle()
end)

registerHotkey("braindance_protocol_infStamina", "Infinite Stamina Toggle", function()
    BD.Cheats.Player.InfiniteStaminaToggle()
end)

registerHotkey("braindance_protocol_slowMo", "Slow Motion Toggle", function()
    BD.Cheats.Player.SlowMotionToggle()
end)

registerHotkey("braindance_protocol_addAmmo", "Refill Ammunition", function()
    BD.Cheats.Ammo.AddAmmo()
end)

registerHotkey("braindance_protocol_infAmmo", "Infinite Ammunition Toggle", function()
    BD.Cheats.Ammo.InfiniteAmmoToggle()
end)

registerHotkey("braindance_protocol_noReload", "No Reload Toggle", function()
    BD.Cheats.Ammo.InfiniteAmmoNoReloadToggle()
end)

registerHotkey("braindance_protocol_addMoney", "Add Some Money", function()
    BD.Cheats.Player.AddMoney(10000)
end)

registerHotkey("braindance_protocol_forceKillNPC", "Force Kill NPC", function()
    BD.Cheats.Player.ForceNPCDeath()
end)

registerForEvent("onUpdate", function(deltaTime)
    for l in pairs(languages) do
        if languages[l].selLang then
            setLang(languages[l].id)
            languages[l].selLang = false
        end
    end
    for i in pairs(protocols.Items) do
        if protocols.Items[i].press then
            if protocols.Items[i].type ~= "Button" and protocols.Items[i].value ~= nil then
                protocols.Items[i].cmd(protocols.Items[i].value)
            else
                protocols.Items[i].cmd()
            end
        end
    end
-- Ammo OnUpdate
    BD.Cheats.Ammo.OnUpdateAmmo(deltaTime)
end)

registerForEvent("onDraw", function()
    if drawWindow then
        CPS.setThemeBegin()
        CPS.styleBegin("WindowPadding", 5, 5)
        drawWindow = ImGui.Begin(i18n("window_title"), true, ImGuiWindowFlags.NoResize | ImGuiWindowFlags.NoTitleBar)
        ImGui.SetWindowSize(400, 620)
        ImGui.SetWindowPos(wWidth-600, wHeight/2-180, ImGuiCond.FirstUseEver)
        ImGui.AlignTextToFramePadding()
        ImGui.Text(i18n("window_title"))
        ImGui.SameLine(390-ImGui.CalcTextSize(i18n("button_language")))
        ImGui.Text(i18n("button_language"))
        if ImGui.IsItemClicked() then
            ImGui.OpenPopup("Language")
        end
        if ImGui.BeginPopup("Language") then
            if config.debug then
                if ImGui.Button("Update language files") then
                    updateLang()
                    print("[BD] Language files updated..")
                end
            end
            for l in pairs(languages) do
                languages[l].selLang = ImGui.Selectable(languages[l].name, false)
            end
            ImGui.EndPopup()
        end
        local Childx, Childy = ImGui.GetContentRegionAvail()
        ImGui.BeginChild("List", Childx+6, Childy)
        for i in pairs(protocols.Parents) do
            if i <= 2 then ImGui.SetNextItemOpen(true, ImGuiCond.FirstUseEver) end
            CPS.colorBegin("Text" , color.white)
            CPS.colorBegin("Header", { 0.08, 0.08, 0.15, 0.8 })
            local headerOpen = ImGui.CollapsingHeader(i18n(protocols.Parents[i].name))
            CPS.colorEnd(2)
            if headerOpen then
                ImGui.Indent(3)
                for t in pairs(protocols.Items) do
                    local btnWidth = 130
                    if protocols.Items[t].parent == protocols.Parents[i].id then
                        ImGui.BeginGroup()
                        ImGui.PushID(t)
                        if protocols.Items[t].type == "Button" then
                            protocols.Items[t].press = CPS.CPButton(i18n(protocols.Items[t].button_label), btnWidth, 0)
                        elseif protocols.Items[t].type == "Input" then
                            ImGui.PushItemWidth(btnWidth*2/3-2)
                            protocols.Items[t].value = ImGui.InputInt("##input" , protocols.Items[t].value, 0)
                            ImGui.PopItemWidth()
                            ImGui.SameLine(btnWidth*2/3)
                            protocols.Items[t].press = CPS.CPButton(i18n(protocols.Items[t].button_label), btnWidth/3, 0)
                        elseif protocols.Items[t].type == "Toggle" then
                            protocols.Items[t].value, protocols.Items[t].press = CPS.CPToggle( nil, i18n(protocols.Items[t].button_label1), i18n(protocols.Items[t].button_label2), protocols.Items[t].value, btnWidth, 0)
                        elseif protocols.Items[t].type == "Select" then
                            ImGui.PushItemWidth(btnWidth)
                            protocols.Items[t].value, protocols.Items[t].press = ImGui.Combo("##select", protocols.Items[t].value, i18n(protocols.Items[t].options))
                            ImGui.PopItemWidth()
                        end
                        ImGui.SameLine()
                        ImGui.Text(i18n(protocols.Items[t].name))
                        ImGui.PopID()
                        ImGui.EndGroup()
                        if ImGui.IsItemHovered() then
                            ImGui.SetTooltip(i18n(protocols.Items[t].description))
                        end
                    end
                end
                ImGui.Unindent(3)
            end
        end
        ImGui.EndChild()
        ImGui.End()
        CPS.styleEnd(1)
        CPS.setThemeEnd()
    end
end)

function saveConfig(config_file, config)
    local file = io.open(config_file, "w")
    local jconfig = json.encode(config)
    file:write(jconfig)
    file:close()
end

function loadConfig()
    local config_file = "config.json"
    local config
    if CPS.fileExists(config_file) then
        local file = io.open(config_file, "r")
        config = json.decode(file:read("*a"))
        file:close()
        if config.lang == nil then
            config.lang = "en"
            saveConfig(config_file, config)
        end
    else
        config = { lang = "en" }
        saveConfig(config_file, config)
    end
    if config.lang ~= "en" then
        i18n.loadFile("lang/en.lua")
    end
    i18n.loadFile("lang/"..config.lang..".lua")
    i18n.setLocale(config.lang)
    return config
end

function setLang(language)
    i18n.loadFile("lang/"..language..".lua")
    i18n.setLocale(language)
    config.lang = language
    saveConfig("config.json", config)
end

function updateLang()
    local i18n_str = {}
    local i = 1
    -- scan init.lua for i18n strings
    local init_lua = io.open("init.lua", "r")
    local init_lua_s = init_lua:read("*a")
    for w in string.gmatch(init_lua_s, [[i18n%("([^"]+)]]) do
        for t in pairs(i18n_str) do
            if w == i18n_str[t] then
                str_exsit = true
            else
                str_exsit = false
            end
        end
        if str_exsit ~= true then
            i18n_str[i] = w
            print(i..": "..i18n_str[i])
            i = i + 1
        end
    end
    init_lua:close()
    -- read protocols.Parents into i18n_str
    local protocols = dofile("protocols.lua")
    for t in pairs(protocols.Parents) do
        i18n_str[i] = "parent_"..protocols.Parents[t].id
        print(i..": "..i18n_str[i])
        i = i + 1
    end
    -- read protocols.Items into i18n_str
    for t in pairs(protocols.Items) do
        i18n_str[i] = protocols.Items[t].name --name
        print(i..": "..i18n_str[i])
        i = i + 1
        i18n_str[i] = protocols.Items[t].description --tip
        print(i..": "..i18n_str[i])
        i = i + 1
        if protocols.Items[t].type == "Button" or protocols.Items[t].type == "Input" then --Button and Input
            i18n_str[i] = protocols.Items[t].button_label
            print(i..": "..i18n_str[i])
            i = i + 1
        elseif protocols.Items[t].type == "Select" then --Select
            i18n_str[i] = protocols.Items[t].options
            print(i..": "..i18n_str[i])
            i = i + 1
        elseif protocols.Items[t].type == "Toggle" then --Toggle
            i18n_str[i] = protocols.Items[t].button_label1
            print(i..": "..i18n_str[i])
            i = i + 1
            i18n_str[i] = protocols.Items[t].button_label2
            print(i..": "..i18n_str[i])
            i = i + 1
        end
    end
    --Done read all i18n strings into i18n_str

    -- Write into files.
    local function alignstr(str) -- for aligning the table in output files
        count = string.len(str)
        stime = 59 - count
        newstr = str
        for i = 1, stime do
            newstr = newstr.." "
        end
        return newstr
    end
    local languages = dofile("lang/lang.lua")
    for t in pairs(languages) do
        local lang = languages[t].id
        local old_en_file = dofile("lang/en.lua")
        local old_lang_file = dofile("lang/"..lang..".lua")
        local new_lang_file = io.open("lang/"..lang.."_update.lua", "w")
        -- header
        new_lang_file:write("return {\n")
        new_lang_file:write("  "..lang.." = {\n")
        -- strings starts here
        for t in pairs(i18n_str) do
            if old_lang_file[lang][i18n_str[t]] then  -- if this i18n string exists in the old lang file, copy it
                new_lang_file:write("    "..alignstr(i18n_str[t]).." = \"")
                new_lang_file:write(old_lang_file[lang][i18n_str[t]]:gsub("\"","\\\""):gsub("\0","\\0"):gsub("\n","\\n").."\"")
            elseif old_en_file.en[i18n_str[t]] then -- if this i18n string exists in the old en file, copy it and comment
                new_lang_file:write("    -- "..alignstr(i18n_str[t]).." = \"")
                new_lang_file:write(old_en_file.en[i18n_str[t]]:gsub("\"","\\\""):gsub("\0","\\0"):gsub("\n","\\n").."\"")
            else
                new_lang_file:write("    -- "..alignstr(i18n_str[t]).." = \"\"") -- else leave blank and comment
            end
            if t < i-1 then
                new_lang_file:write(" ,\n")
            else
                new_lang_file:write("\n")
            end
        end
        -- end
        new_lang_file:write("  }\n}")
        io.close(new_lang_file)
    end
end

return BD
