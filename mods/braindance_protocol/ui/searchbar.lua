local CPS = require("CPStyling")
local theme = CPS.theme
local color = CPS.color
local search = require("ui/search")
local i18n = require("i18n")
local searchbar = {
  seleted = false,
  textbefore = "",
  text = "",
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
  ImGui.PushItemWidth(200)
  self.text, self.seleted = ImGui.InputTextWithHint("##searchbar", i18n("searchbar_hint"), self.text, 20)
  ImGui.PopItemWidth()
  if self.text ~= "" then
    ImGui.SetItemAllowOverlap()
    ImGui.SameLine(190)
    CPS.colorBegin("Button", theme.Hidden)
    if ImGui.Button("X") then
      self.text = ""
      search:clear()
    end
    CPS.colorEnd(1)
  end
  if self:onTextChange() then
    search:query(self.text)
  end
end

return searchbar
