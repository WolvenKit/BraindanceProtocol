local BraindanceProtocol = {
description = "",
rootPath =	"plugins.cyber_engine_tweaks.mods.braindance_protocol."
}

local BD = require(BraindanceProtocol.rootPath.."BD")

registerForEvent("onInit", function()
	CPS = require(BraindanceProtocol.rootPath.."CPStyling")
	fact = require(BraindanceProtocol.rootPath.."fact")
	protocols = require(BraindanceProtocol.rootPath.."protocols")
	theme = CPS.theme
	color = CPS.color
	drawWindow = false
	wWidth, wHeight = GetDisplayResolution()
	-- Execute Braindance protocols
	BD.Examples.Initialise()
end)

registerForEvent("onUpdate", function()
	if ImGui.IsKeyDown(0x42) and ImGui.IsKeyPressed(0x44, false) then -- Hotkey B+D
		if not drawWindow then
			for i in pairs(protocols.Items) do
				if protocols.Items[i].parent == "Facts" and protocols.Items[i].type ~= "Button" then
					protocols.Items[i].value = fact.GetValue(protocols.Items[i].id)
				end
			end
		end
		drawWindow = not drawWindow
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
end)

registerForEvent("onDraw", function()
	if drawWindow then
		CPS.setThemeBegin()
		drawWindow = ImGui.Begin("Braindance Protocol", true, ImGuiWindowFlags.NoResize)
		ImGui.SetWindowSize(400, 620)
		ImGui.SetWindowPos(wWidth-600, wHeight/2-180, ImGuiCond.FirstUseEver)
		for i in pairs(protocols.Parents) do
			if i <= 2 then ImGui.SetNextItemOpen(true, ImGuiCond.FirstUseEver) end
			CPS.colorBegin("Text" , color.white)
			CPS.colorBegin("Header", { 0.08, 0.08, 0.15, 0.8 })
			local headerOpen = ImGui.CollapsingHeader(protocols.Parents[i].name)
			CPS.colorEnd(2)
			if headerOpen then
				for t in pairs(protocols.Items) do
					local btnWidth = 130
					if protocols.Items[t].parent == protocols.Parents[i].id then
						ImGui.BeginGroup()
						ImGui.PushID(t)
						if protocols.Items[t].type == "Button" then
							protocols.Items[t].press = ImGui.Button(protocols.Items[t].button_label, btnWidth, 0)
						elseif protocols.Items[t].type == "Input" then
							ImGui.PushItemWidth(btnWidth*2/3-2)
							protocols.Items[t].value = ImGui.InputInt("##input" , protocols.Items[t].value, 0)
							ImGui.PopItemWidth()
							ImGui.SameLine(btnWidth*2/3)
							protocols.Items[t].press = ImGui.Button(protocols.Items[t].button_label, btnWidth/3, 0)
						elseif protocols.Items[t].type == "Toggle" then
							protocols.Items[t].value, protocols.Items[t].press = CPS.CPToggle( nil, protocols.Items[t].button_label1, protocols.Items[t].button_label2, protocols.Items[t].value, btnWidth, 0)
						elseif protocols.Items[t].type == "Select" then
							ImGui.PushItemWidth(btnWidth)
							protocols.Items[t].value, protocols.Items[t].press = ImGui.Combo("##select", protocols.Items[t].value, protocols.Items[t].options)
							ImGui.PopItemWidth()
						end
						ImGui.SameLine()
						ImGui.Text(protocols.Items[t].name)
						ImGui.PopID()
						ImGui.EndGroup()
						if ImGui.IsItemHovered() then
							ImGui.SetTooltip(protocols.Items[t].description)
						end
					end
				end
			end
		end
		CPS.setThemeEnd()
	end
end)

return BD
