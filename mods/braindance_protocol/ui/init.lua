local ui = {}
local BD = require("BD")
local fact = require("fact")
local i18n = require("i18n")
local languages = require("lang/lang")
local CPS = require("CPStyling")
local Options = require("options")
local theme = CPS.theme
local color = CPS.color
local protocols = require("protocols")
local langUpdate = require("lang/update")

if Options.value.debug then
    ui.drawWindow = true
else
    ui.drawWindow = false
end

ui.wWidth, ui.wHeight = GetDisplayResolution()

function ui:Update()
  registerForEvent("onUpdate", function(deltaTime)

    for l in pairs(languages) do
      if languages[l].selLang then
        Options:setLang(languages[l].id)
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

  -- Open BDP with the CET console
  registerForEvent("onOverlayOpen", function()
      fact.GetValue()
      self.drawWindow = true
  end)

  registerForEvent("onOverlayClose", function()
      self.drawWindow = false
  end)

end

function ui:Draw()
  registerForEvent("onDraw", function()
    if self.drawWindow then
      CPS.setThemeBegin()
      CPS.styleBegin("WindowPadding", 5, 5)
      ImGui.SetNextWindowSize(400, 620)
      ImGui.SetNextWindowPos(self.wWidth-600, self.wHeight/2-180, ImGuiCond.FirstUseEver)
      self.drawWindow = ImGui.Begin(i18n("window_title"), true, ImGuiWindowFlags.NoResize)
      ImGui.AlignTextToFramePadding()
      ImGui.Text(i18n("window_title"))
      ImGui.SameLine(390-ImGui.CalcTextSize(i18n("button_language")))
      ImGui.Text(i18n("button_language"))
      if ImGui.IsItemClicked() then
        ImGui.OpenPopup("Language")
      end
      if ImGui.BeginPopup("Language") then
        if Options.value.debug then
          if ImGui.Button("Update language files") then
            langUpdate()
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
end

return ui
