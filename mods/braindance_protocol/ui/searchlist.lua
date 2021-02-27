local i18n = require("i18n")
local CPS = require("CPStyling")
local search = require("ui/search")
local list = require("ui/list")
local searchlist = {}

function searchlist:Update()
  for i,v in ipairs(search.result) do
    if v.press then
      if v.type ~= "Button" and v.value ~= nil then
        v.cmd(v.value)
      else
        v.cmd()
      end
    end
  end
end

function searchlist:Draw()
  if #search.result == 0 then
    ImGui.Indent(3)
    ImGui.Text(i18n("text_searchlist_no_result"))
    ImGui.Unindent(3)
  else
    for i,v in ipairs(search.result) do
      ImGui.PushID(i)
      list.DrawItem(v)
      ImGui.PopID()
    end
  end
end

return searchlist
