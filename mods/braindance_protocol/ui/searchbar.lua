local CPS = require("CPStyling")
local theme = CPS.theme
local search = require("ui/search")
local i18n = require("i18n")
local languages = require("lang/lang")
local langUpdate = require("lang/update")
local Options = require("options")
local widgets = require("ui/widgets")

local searchbar = {
  seleted = false,
  textbefore = "",
  text = "",
  draw_hklist = false,
}

function searchbar:onTextChange()
  if self.seleted and self.textbefore ~= self.text then
    self.textbefore = self.text
    return true
  else
    return false
  end
end

function searchbar:Draw()
  local winWidth = ImGui.GetWindowSize()
  ImGui.Indent(3)
  ImGui.PushItemWidth(winWidth*0.7)
  self.text, self.seleted = ImGui.InputTextWithHint("##searchbar", i18n("searchbar_hint"), self.text, 20)
  ImGui.PopItemWidth()
  if self.text ~= "" then
    ImGui.SetItemAllowOverlap()
    ImGui.SameLine(winWidth*0.7 - ImGui.CalcTextSize("X")-4)
    CPS.colorBegin("Button", theme.Hidden)
    if ImGui.Button("X") then
      self.text = ""
      search:clear()
    end
    CPS.colorEnd(1)
  end
  ImGui.SameLine(winWidth*0.7 + 15)
  self.draw_hklist = widgets.HKButton("hklist", self.draw_hklist)
  if ImGui.IsItemHovered() then
    ImGui.SetTooltip(i18n("button_toggle_hklist_tooltip"))
  end
  ImGui.Unindent(3)
  if self:onTextChange() then
    search:query(self.text)
  end
end

function searchbar.DrawLang()
  local winWidth = ImGui.GetWindowSize()
  ImGui.SameLine(winWidth - ImGui.CalcTextSize(i18n("button_language")) - 10)
  ImGui.Text(i18n("button_language"))
  if ImGui.IsItemHovered() then
    ImGui.SetTooltip(i18n("button_language_tooltip"))
  end
  if ImGui.IsItemClicked() then
    ImGui.OpenPopup("Language")
  end
  if ImGui.BeginPopup("Language") then
    if Options.config_value.debug then
      if ImGui.Button(i18n("button_update_lang")) then
        langUpdate()
      end
    end
    for l in pairs(languages) do
      languages[l].selLang = ImGui.Selectable(languages[l].name, false)
    end
    ImGui.EndPopup()
  end
end

function searchbar.UpdateLang()
  for l in pairs(languages) do
    if languages[l].selLang then
      Options:setLang(languages[l].id)
      languages[l].selLang = false
    end
  end
end

return searchbar
