local i18n = require("i18n")
local protocols = require("protocols")
local widgets = require("ui/widgets")
local Options = require("options")
local CPS = require("CPStyling")
local color = CPS.color

local list = {}

function list.DrawItem(item)
  local btnWidth = 135
  local text_hovered, fav_hovered, hk_hovered, list_hovered, fav_pressed, hk_pressed
  local draw_fav, draw_hk
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
  text_hovered = ImGui.IsItemHovered()
  ImGui.EndGroup()
  ImGui.Unindent(3)

  local pminX, pminY = ImGui.GetItemRectMin()
  local pmaxX, pmaxY = ImGui.GetItemRectMax()
  local width = ImGui.GetWindowContentRegionWidth()
  local drawList = ImGui.GetForegroundDrawList()

  list_hovered = ImGui.IsMouseHoveringRect(pminX, pminY, pminX+width, pmaxY, true)

  if item.fav or list_hovered then
    draw_fav = true
  else
    draw_fav = false
  end
  if item.hk or list_hovered then
    draw_hk = true
  else
    draw_hk = false
  end

  if draw_hk then
    ImGui.SameLine(width - ImGui.GetFontSize()*2 -20)
    item.hk, hk_pressed = widgets.HKButton("hk", item.hk)
    hk_hovered = ImGui.IsItemHovered()
  end
  if draw_fav then
    ImGui.SameLine(width - ImGui.GetFontSize()- 15)
    item.fav, fav_pressed = widgets.StarButton("fav", item.fav)
    fav_hovered = ImGui.IsItemHovered()
  end

  if hk_pressed then Options.removeOrinsert(Options.fav_value.hk, item.id) end
  if fav_pressed then Options.removeOrinsert(Options.fav_value.fav, item.id) end

  if fav_hovered then
    ImGui.SetTooltip(i18n("button_addfav_tooltip"))
  elseif hk_hovered then
    ImGui.SetTooltip(i18n("button_addhk_tooltip"))
  elseif text_hovered then
    ImGui.SetTooltip(i18n(item.description))
  end
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

function list.DrawTree()
  ImGui.SetNextItemOpen(true, ImGuiCond.FirstUseEver)
  CPS.colorBegin("Text" , color.white)
  CPS.colorBegin("Header", { 0.08, 0.08, 0.15, 0.8 })
  local fav_open = ImGui.CollapsingHeader(i18n("header_fav"))
  CPS.colorEnd(2)
  if fav_open then
    for t,v in ipairs(protocols.Items) do
      if v.fav then
        ImGui.PushID("fav"..tostring(t))
        list.DrawItem(v)
        ImGui.PopID()
      end
    end
  end

  for i,pv in ipairs(protocols.Parents) do
    if i < 2 then ImGui.SetNextItemOpen(true, ImGuiCond.FirstUseEver) end
    CPS.colorBegin("Text" , color.white)
    CPS.colorBegin("Header", { 0.08, 0.08, 0.15, 0.8 })
    local headerOpen = ImGui.CollapsingHeader(i18n(pv.name))
    CPS.colorEnd(2)
    if headerOpen then
      for t,iv in ipairs(protocols.Items) do
        if iv.parent == pv.id and iv.fav ~= true then
          ImGui.PushID(iv.parent..tostring(t))
          list.DrawItem(iv)
          ImGui.PopID()
        end
      end
    end
  end
end

function list.DrawHKlist()
  local hk_list = {}
  for _,v in ipairs(protocols.Items) do
    if v.hk then
      table.insert(hk_list, v)
    end
  end
  if #hk_list == 0 then
    ImGui.Indent(3)
    ImGui.Text(i18n("text_hklist_none"))
    ImGui.Unindent(3)
  else
    for i,v in ipairs(hk_list) do
      ImGui.PushID(i)
      list.DrawItem(v)
      ImGui.PopID()
    end
  end
end

return list
