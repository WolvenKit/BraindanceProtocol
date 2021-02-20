local i18n = require("i18n")
local CPS = require("CPStyling")
local search = require("ui/search")

local searchlist = {}

function searchlist:Draw()
  for i,v in ipairs(search.result) do
    local btnWidth = 130
    ImGui.BeginGroup()
    ImGui.PushID(i)
    if v.type == "Button" then
      v.press = CPS.CPButton(i18n(v.button_label), btnWidth, 0)
    elseif v.type == "Input" then
      ImGui.PushItemWidth(btnWidth*2/3-2)
      v.value = ImGui.InputInt("##input" , v.value, 0)
      ImGui.PopItemWidth()
      ImGui.SameLine(btnWidth*2/3)
      v.press = CPS.CPButton(i18n(v.button_label), btnWidth/3, 0)
    elseif v.type == "Toggle" then
      v.value, v.press = CPS.CPToggle( nil, i18n(v.button_label1), i18n(v.button_label2), v.value, btnWidth, 0)
    elseif v.type == "Select" then
      ImGui.PushItemWidth(btnWidth)
      v.value, v.press = ImGui.Combo("##select", v.value, i18n(v.options))
      ImGui.PopItemWidth()
    end
    ImGui.SameLine()
    ImGui.Text(i18n(v.name))
    ImGui.PopID()
    ImGui.EndGroup()
    if ImGui.IsItemHovered() then
      ImGui.SetTooltip(i18n(v.description))
    end
  end
end

return searchlist
