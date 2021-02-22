local ui = {
  search = require("ui/search"),
  searchbar = require("ui/searchbar"),
  searchlist = require("ui/searchlist"),
  list = require("ui/list")
}
local BD = require("BD")
local fact = require("fact")
local i18n = require("i18n")
local CPS = require("CPStyling")

ui.wWidth, ui.wHeight = GetDisplayResolution()

function ui:Update()
  registerForEvent("onUpdate", function(deltaTime)

    self.searchbar.UpdateLang()

    self.list.UpdateItem()

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
      ImGui.Spacing()

      self.searchbar:Draw()
      self.searchbar.DrawLang()

      ImGui.Spacing()
      ImGui.Separator()

    -- List container
      local Childx, Childy = ImGui.GetContentRegionAvail()
      ImGui.BeginChild("List", Childx+6, Childy)

      if self.searchbar.text ~= "" then
        self.searchlist.Draw()
      elseif self.searchbar.draw_hklist then
        self.list.DrawHKlist()
      else
        self.list.DrawTree()
      end

      ImGui.EndChild()

      ImGui.End()
      CPS.styleEnd(1)
      CPS.setThemeEnd()
    end
  end)
end

return ui
