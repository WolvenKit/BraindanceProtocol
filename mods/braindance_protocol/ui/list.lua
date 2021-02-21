local i18n = require("i18n")
local protocols = require("protocols")
local CPS = require("CPStyling")
local color = CPS.color

local list = {}

function list.DrawItem(item)
  local btnWidth = 135
  ImGui.Indent(3)
  ImGui.BeginGroup()
  if item.type == "Button" then
    item.press = CPS.CPButton(i18n(item.button_label), btnWidth, 0)
  elseif item.type == "Input" then
    ImGui.PushItemWidth(btnWidth*3/5-2)
    item.value = ImGui.InputInt("##input" , item.value, 0)
    ImGui.PopItemWidth()
    ImGui.SameLine(btnWidth*3/5)
    item.press = CPS.CPButton(i18n(item.button_label), btnWidth*2/5, 0)
  elseif item.type == "Toggle" then
    item.value, item.press = CPS.CPToggle( nil, i18n(item.button_label1), i18n(item.button_label2), item.value, btnWidth, 0)
  elseif item.type == "Select" then
    ImGui.PushItemWidth(btnWidth)
    item.value, item.press = ImGui.Combo("##select", item.value, i18n(item.options))
    ImGui.PopItemWidth()
  end
  ImGui.SameLine()
  ImGui.Text(i18n(item.name))
  ImGui.EndGroup()
  if ImGui.IsItemHovered() then
    ImGui.SetTooltip(i18n(item.description))
  end
  ImGui.Unindent(3)
end

function list.UpdateItem()
  for i in pairs(protocols.Items) do
    if protocols.Items[i].press then
      if protocols.Items[i].type ~= "Button" and protocols.Items[i].value ~= nil then
        protocols.Items[i].cmd(protocols.Items[i].value)
      else
        protocols.Items[i].cmd()
      end
    end
  end
end

function list:DrawTree()
  for i,pv in ipairs(protocols.Parents) do
    if i < 2 then ImGui.SetNextItemOpen(true, ImGuiCond.FirstUseEver) end
    CPS.colorBegin("Text" , color.white)
    CPS.colorBegin("Header", { 0.08, 0.08, 0.15, 0.8 })
    local headerOpen = ImGui.CollapsingHeader(i18n(pv.name))
    CPS.colorEnd(2)
    if headerOpen then
      for t,iv in ipairs(protocols.Items) do
        if iv.parent == pv.id then
          ImGui.PushID(t)
          list.DrawItem(iv)
          ImGui.PopID()
        end
      end
    end
  end
end

return list
