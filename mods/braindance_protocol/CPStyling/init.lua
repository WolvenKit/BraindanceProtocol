-- MIT License
--
-- CPStyling.lua https://github.com/Nats-ji/CPStyling.lua
--
-- This file is a part of CPStyling.lua
--
-- Copyright (c) 2021 Mingming Cui
--
-- Permission is hereby granted, free of charge, to any person obtaining a copy
-- of this software and associated documentation files (the "Software"), to deal
-- in the Software without restriction, including without limitation the rights
-- to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
-- copies of the Software, and to permit persons to whom the Software is
-- furnished to do so, subject to the following conditions:
--
-- The above copyright notice and this permission notice shall be included in all
-- copies or substantial portions of the Software.
--
-- THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
-- IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
-- FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
-- AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
-- LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
-- OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
-- SOFTWARE.

local CPStyle = {}
local currentFilePath = "CPStyling/"
CPStyle.theme = require(currentFilePath.."theme")
local styles = require(currentFilePath.."styles")
local ImGuiStyleNames = styles.ImGuiStyleNames
CPStyle.color = styles.color

png = require(currentFilePath.."png-lua/png")

local function ToImGuiStyleName(style, which)
	if which == "Col" then
		for i in pairs(ImGuiStyleNames.Col) do
			if style == ImGuiStyleNames.Col[i].ImGuiStyleShort then
				return ImGuiStyleNames.Col[i].ImGuiStyle
			end
		end
	elseif which == "Var" then
		for i in pairs(ImGuiStyleNames.Var) do
			if style == ImGuiStyleNames.Var[i].ImGuiStyleShort then
				return ImGuiStyleNames.Var[i].ImGuiStyle
			end
		end
	end
end

local function hex2rgb(hex)
    local hex = hex:gsub("#","")
    if hex:len() == 3 then
      return (tonumber("0x"..hex:sub(1,1))*17)/255, (tonumber("0x"..hex:sub(2,2))*17)/255, (tonumber("0x"..hex:sub(3,3))*17)/255
    else
      return tonumber("0x"..hex:sub(1,2))/255, tonumber("0x"..hex:sub(3,4))/255, tonumber("0x"..hex:sub(5,6))/255
    end
end

function CPStyle.colorBegin(style, color)
  if type(color) == "number" then
    ImGui.PushStyleColor(ToImGuiStyleName(style, "Col"), color)
	elseif type(color) == "string" then
		local r, g, b = hex2rgb(color)
		ImGui.PushStyleColor(ToImGuiStyleName(style, "Col"), r, g, b, 1)
	elseif type(color) == "table" then
		if type(color[1]) == "string" and type(color[2]) == "number" then
			local r, g, b = hex2rgb(color[1])
			ImGui.PushStyleColor(ToImGuiStyleName(style, "Col"), r, g, b, color[2])
		elseif type(color[1]) == "number" and type(color[2]) == "number" and type(color[3]) == "number" then
			if color[4] == nil then
				ImGui.PushStyleColor(ToImGuiStyleName(style, "Col"), color[1], color[2], color[3], 1)
			else
				ImGui.PushStyleColor(ToImGuiStyleName(style, "Col"), color[1], color[2], color[3], color[4])
			end
		end
	end
end

function CPStyle.colorEnd(count)
  if count == nil then
    ImGui.PopStyleColor()
  else
    ImGui.PopStyleColor(count)
  end
end
--
function CPStyle.styleBegin(style, var1, var2)
	if var2 == nil then
		ImGui.PushStyleVar(ToImGuiStyleName(style, "Var"), var1)
	else
		ImGui.PushStyleVar(ToImGuiStyleName(style, "Var"), var1, var2)
	end
end

function CPStyle.styleEnd(count)
  if count == nil then
    ImGui.PopStyleVar()
  else
    ImGui.PopStyleVar(count)
  end
end

function CPStyle.setThemeBegin()
	CPStyle.colorBegin("Text"                           , CPStyle.theme.Text)
	CPStyle.colorBegin("TextDisabled"                   , CPStyle.theme.TextDisabled)
	CPStyle.colorBegin("WindowBg"                       , CPStyle.theme.WindowBg)
	CPStyle.colorBegin("ChildBg"                        , CPStyle.theme.ChildBg)
	CPStyle.colorBegin("PopupBg"                        , CPStyle.theme.PopupBg)
	CPStyle.colorBegin("Border"                         , CPStyle.theme.Border)
	CPStyle.colorBegin("BorderShadow"                   , CPStyle.theme.BorderShadow)
	CPStyle.colorBegin("FrameBg"                        , CPStyle.theme.FrameBg)
	CPStyle.colorBegin("FrameBgHovered"                 , CPStyle.theme.FrameBgHovered)
	CPStyle.colorBegin("FrameBgActive"                  , CPStyle.theme.FrameBgActive)
	CPStyle.colorBegin("TitleBg"                        , CPStyle.theme.TitleBg)
	CPStyle.colorBegin("TitleBgActive"                  , CPStyle.theme.TitleBgActive)
	CPStyle.colorBegin("TitleBgCollapsed"               , CPStyle.theme.TitleBgCollapsed)
	CPStyle.colorBegin("MenuBarBg"                      , CPStyle.theme.MenuBarBg)
	CPStyle.colorBegin("ScrollbarBg"                    , CPStyle.theme.ScrollbarBg)
	CPStyle.colorBegin("ScrollbarGrab"                  , CPStyle.theme.ScrollbarGrab)
	CPStyle.colorBegin("ScrollbarGrabHovered"           , CPStyle.theme.ScrollbarGrabHovered)
	CPStyle.colorBegin("ScrollbarGrabActive"            , CPStyle.theme.ScrollbarGrabActive)
	CPStyle.colorBegin("CheckMark"                      , CPStyle.theme.CheckMark)
	CPStyle.colorBegin("SliderGrab"                     , CPStyle.theme.SliderGrab)
	CPStyle.colorBegin("SliderGrabActive"               , CPStyle.theme.SliderGrabActive)
	CPStyle.colorBegin("Button"                         , CPStyle.theme.Button)
	CPStyle.colorBegin("ButtonHovered"                  , CPStyle.theme.ButtonHovered)
	CPStyle.colorBegin("ButtonActive"                   , CPStyle.theme.ButtonActive)
	CPStyle.colorBegin("Header"                         , CPStyle.theme.Header)
	CPStyle.colorBegin("HeaderHovered"                  , CPStyle.theme.HeaderHovered)
	CPStyle.colorBegin("HeaderActive"                   , CPStyle.theme.HeaderActive)
	CPStyle.colorBegin("Separator"                      , CPStyle.theme.Separator)
	CPStyle.colorBegin("SeparatorHovered"               , CPStyle.theme.SeparatorHovered)
	CPStyle.colorBegin("SeparatorActive"                , CPStyle.theme.SeparatorActive)
	CPStyle.colorBegin("ResizeGrip"                     , CPStyle.theme.ResizeGrip)
	CPStyle.colorBegin("ResizeGripHovered"              , CPStyle.theme.ResizeGripHovered)
	CPStyle.colorBegin("ResizeGripActive"               , CPStyle.theme.ResizeGripActive)
	CPStyle.colorBegin("Tab"                            , CPStyle.theme.Tab)
	CPStyle.colorBegin("TabHovered"                     , CPStyle.theme.TabHovered)
	CPStyle.colorBegin("TabActive"                      , CPStyle.theme.TabActive)
	CPStyle.colorBegin("TabUnfocused"                   , CPStyle.theme.TabUnfocused)
	CPStyle.colorBegin("TabUnfocusedActive"             , CPStyle.theme.TabUnfocusedActive)
	-- CPStyle.colorBegin("PlotLines"                      , CPStyle.theme.PlotLines)
	-- CPStyle.colorBegin("PlotLinesHovered"               , CPStyle.theme.PlotLinesHovered)
	-- CPStyle.colorBegin("PlotHistogram"                  , CPStyle.theme.PlotHistogram)
	-- CPStyle.colorBegin("PlotHistogramHovered"           , CPStyle.theme.PlotHistogramHovered)
	CPStyle.colorBegin("TextSelectedBg"                 , CPStyle.theme.TextSelectedBg)
	-- CPStyle.colorBegin("DragDropTarget"                 , CPStyle.theme.DragDropTarget)
	-- CPStyle.colorBegin("NavHighlight"                   , CPStyle.theme.NavHighlight)
	-- CPStyle.colorBegin("NavWindowingHighlight"          , CPStyle.theme.NavWindowingHighlight)
	-- CPStyle.colorBegin("NavWindowingDimBg"              , CPStyle.theme.NavWindowingDimBg)
	CPStyle.colorBegin("ModalWindowDimBg"               , CPStyle.theme.ModalWindowDimBg)
  CPStyle.styleBegin("WindowRounding"                 , 0)
	CPStyle.styleBegin("ScrollbarSize"                  , 9)
end

function CPStyle.setThemeEnd()
	CPStyle.styleEnd(2)
	CPStyle.colorEnd(40)
end

function CPStyle.setFrameThemeBegin()
	CPStyle.colorBegin("FrameBg"                        , CPStyle.theme.CPFrameBg)
	CPStyle.colorBegin("FrameBgHovered"                 , CPStyle.theme.CPFrameBgHovered)
	CPStyle.colorBegin("FrameBgActive"                  , CPStyle.theme.CPFrameBgActive)
	CPStyle.colorBegin("SliderGrab"                     , CPStyle.theme.CPSliderGrab)
	CPStyle.colorBegin("SliderGrabActive"               , CPStyle.theme.CPSliderGrabActive)
	CPStyle.colorBegin("Border"                         , CPStyle.theme.CPFrameBorder)
	CPStyle.colorBegin("TextSelectedBg"                 , CPStyle.theme.CPTextSelectedBg)
	CPStyle.styleBegin("FrameBorderSize"                , 1)
end

function CPStyle.setFrameThemeEnd()
	CPStyle.styleEnd(1)
	CPStyle.colorEnd(7)
end

-- CPButton

function CPStyle.CPButton(label, sizex, sizey)
	local press, hovered
	ImGui.BeginGroup()
	CPStyle.styleBegin("FrameBorderSize", 1)
	CPStyle.colorBegin("Button", CPStyle.theme.CPButton)
	CPStyle.colorBegin("ButtonHovered", CPStyle.theme.CPButtonHovered)
	CPStyle.colorBegin("ButtonActive", CPStyle.theme.CPButtonActive)
	CPStyle.colorBegin("Text", CPStyle.theme.CPButtonText)
	CPStyle.colorBegin("Border", CPStyle.theme.CPButtonBorder)
	if sizex == nil or sizey == nil then
		press = ImGui.Button(label)
	else
		press = ImGui.Button(label, sizex, sizey)
	end
	CPStyle.colorEnd(5)
	hovered = ImGui.IsItemHovered()
	if hovered then
		ImGui.SameLine(0.0001)
		CPStyle.colorBegin("Border", CPStyle.theme.CPButtonBorderHovered)
		CPStyle.colorBegin("Text", CPStyle.theme.Hidden)
		CPStyle.colorBegin("Button", CPStyle.theme.Hidden)
		if sizex == nil or sizey == nil then
			ImGui.Button(label.."##hovered")
		else
			ImGui.Button(label.."##hovered", sizex, sizey)
		end
		CPStyle.colorEnd(3)
	end
	CPStyle.styleEnd(1)
	ImGui.EndGroup()
	return press
end

-- CPToggle

function CPStyle.CPToggle(label, label_off, label_on, value, sizex, sizey)
	local press_off, press_on, hovered
	ImGui.BeginGroup()
	CPStyle.styleBegin("FrameBorderSize", 1)
	ImGui.BeginGroup()
	if value then
		CPStyle.colorBegin("Button", CPStyle.theme.CPToggleOffDisabled)
		CPStyle.colorBegin("Text", CPStyle.theme.CPToggleOffDisabledText)
		CPStyle.colorBegin("ButtonHovered", CPStyle.theme.CPToggleOffDisabledHovered)
		CPStyle.colorBegin("ButtonActive", CPStyle.theme.CPToggleOffDisabled)
		CPStyle.colorBegin("Border", CPStyle.theme.CPToggleOffDisabledBorder)
		press_off = ImGui.Button(label_off.."##cp", sizex/2-1,sizey)
		ImGui.PopStyleColor(5)
		ImGui.SameLine(sizex/2+1)
		CPStyle.colorBegin("Button", CPStyle.theme.CPToggleOn)
		CPStyle.colorBegin("Text", CPStyle.theme.CPToggleOnText)
		CPStyle.colorBegin("ButtonHovered", CPStyle.theme.CPToggleOnHovered)
		CPStyle.colorBegin("ButtonActive", CPStyle.theme.CPToggleOn)
		CPStyle.colorBegin("Border", CPStyle.theme.CPToggleOnBorder)
		press_on = ImGui.Button(label_on.."##cp", sizex/2-1, sizey)
		ImGui.PopStyleColor(5)

	else
		CPStyle.colorBegin("Button", CPStyle.theme.CPToggleOff)
		CPStyle.colorBegin("Text", CPStyle.theme.CPToggleOffText)
		CPStyle.colorBegin("ButtonHovered", CPStyle.theme.CPToggleOffHovered)
		CPStyle.colorBegin("ButtonActive", CPStyle.theme.CPToggleOff)
		CPStyle.colorBegin("Border", CPStyle.theme.CPToggleOffBorder)
		press_off = ImGui.Button(label_off.."##cp", sizex/2-1,sizey)
		ImGui.PopStyleColor(5)
		ImGui.SameLine(sizex/2+1)
		CPStyle.colorBegin("Button", CPStyle.theme.CPToggleOnDisabled)
		CPStyle.colorBegin("Text", CPStyle.theme.CPToggleOnDisabledText)
		CPStyle.colorBegin("ButtonHovered", CPStyle.theme.CPToggleOnDisabledHovered)
		CPStyle.colorBegin("ButtonActive", CPStyle.theme.CPToggleOnDisabled)
		CPStyle.colorBegin("Border", CPStyle.theme.CPToggleOnDisabledBorder)
		press_on = ImGui.Button(label_on.."##cp", sizex/2-1, sizey)
		ImGui.PopStyleColor(5)
	end

	if press_off and value == false then
		value = true
	elseif press_off and value == true then
		value = false
	elseif press_on and value == true then
		value = false
	elseif press_on and value == false then
		value = true
	end
	if press_off or press_on then press = true else press = false end
	ImGui.EndGroup()
	hovered = ImGui.IsItemHovered()

	if hovered then --show hovered border color and text color
		ImGui.SameLine(0.0001)
		ImGui.BeginGroup()
		if value then
			CPStyle.colorBegin("Border", CPStyle.theme.CPToggleOffDisabledBorderHovered)
			CPStyle.colorBegin("Button", CPStyle.theme.CPToggleOffDisabledHovered)
			CPStyle.colorBegin("Text", CPStyle.theme.CPToggleOffDisabledTextHovered)
			ImGui.Button(label_off.."##hovered", sizex/2-1,sizey)
			ImGui.PopStyleColor(3)
			ImGui.SameLine(sizex/2+1)
			CPStyle.colorBegin("Border", CPStyle.theme.CPToggleOnBorderHovered)
			CPStyle.colorBegin("Button", CPStyle.theme.CPToggleOnHovered)
			CPStyle.colorBegin("Text", CPStyle.theme.CPToggleOnTextHovered)
			ImGui.Button(label_on.."##hovered", sizex/2-1, sizey)
			ImGui.PopStyleColor(3)

		else
			CPStyle.colorBegin("Border", CPStyle.theme.CPToggleOffBorderHovered)
			CPStyle.colorBegin("Button", CPStyle.theme.CPToggleOffHovered)
			CPStyle.colorBegin("Text", CPStyle.theme.CPToggleOffTextHovered)
			ImGui.Button(label_off.."##hovered", sizex/2-1,sizey)
			ImGui.PopStyleColor(3)
			ImGui.SameLine(sizex/2+1)
			CPStyle.colorBegin("Border", CPStyle.theme.CPToggleOnDisabledBorderHovered)
			CPStyle.colorBegin("Button", CPStyle.theme.CPToggleOnDisabledHovered)
			CPStyle.colorBegin("Text", CPStyle.theme.CPToggleOnDisabledTextHovered)
			ImGui.Button(label_on.."##hovered", sizex/2-1, sizey)
			ImGui.PopStyleColor(3)
		end
		ImGui.EndGroup()
	end
	CPStyle.styleEnd(1)
  if label ~= nil and label ~= "" and label:match("^##") == nil then
  	CPStyle.colorBegin("Button", CPStyle.theme.Hidden)
  	CPStyle.colorBegin("Text", CPStyle.theme.Text)
  	CPStyle.colorBegin("ButtonHovered", CPStyle.theme.Hidden)
  	CPStyle.colorBegin("ButtonActive", CPStyle.theme.Hidden)
  	CPStyle.styleBegin("FrameBorderSize", 0)
  	CPStyle.styleBegin("ButtonTextAlign", 0, 0.5)
  	ImGui.SameLine(sizex)
  	ImGui.Button(label, 0, sizey)
  	CPStyle.styleEnd(2)
  	CPStyle.colorEnd(4)
  end
	ImGui.EndGroup()
	return value, press
end

function CPStyle.CPToolTip1Begin(sizex, sizey)
	CPStyle.styleBegin("WindowRounding", 0)
	CPStyle.styleBegin("PopupBorderSize", 0)
	CPStyle.styleBegin("ChildBorderSize", 1)
	CPStyle.colorBegin("PopupBg", CPStyle.theme.Hidden)
	CPStyle.colorBegin("ChildBg", CPStyle.theme.CPFrameBg)
	ImGui.BeginTooltip()
	CPStyle.CPRect("##SideRect", 8, sizey, CPStyle.theme.CPFrameBg, CPStyle.theme.CPFrameBorder, 1, 0)
	ImGui.SameLine(20)
	ImGui.BeginGroup()
	ImGui.BeginChild("ToolTipMain", sizex, sizey, true)
end

function CPStyle.CPToolTip1End()
	ImGui.EndChild()
	ImGui.EndGroup()
	ImGui.EndTooltip()
	CPStyle.colorEnd(2)
	CPStyle.styleEnd(3)
end

function CPStyle.CPToolTip2Begin(sizex, sizey)
	CPStyle.styleBegin("WindowRounding", 0)
	CPStyle.styleBegin("PopupBorderSize", 0)
	CPStyle.styleBegin("ChildBorderSize", 1)
	CPStyle.colorBegin("PopupBg", CPStyle.theme.Hidden)
	CPStyle.colorBegin("ChildBg", CPStyle.theme.CPToolTip2Bg)
	CPStyle.colorBegin("Border", CPStyle.theme.CPToolTip2Border)
	CPStyle.colorBegin("Separator", CPStyle.theme.CPToolTip2Separator)
	ImGui.BeginTooltip()
	CPStyle.CPRect("##SideRect", 8, sizey, CPStyle.theme.CPToolTip2SideBg, CPStyle.theme.CPToolTip2Border, 1, 0)
	ImGui.SameLine(16)
	ImGui.BeginGroup()
	ImGui.BeginChild("ToolTip2Main", sizex, sizey, true)
end

function CPStyle.CPToolTip2End()
	ImGui.EndChild()
	ImGui.EndGroup()
	ImGui.EndTooltip()
	CPStyle.colorEnd(4)
	CPStyle.styleEnd(3)
end

function CPStyle.CPRect(label, sizex, sizey, color, border_color, border_size, border_rounding, textalignx, textaligny)
	if border_color == nil then border_color = CPStyle.theme.Border end
	if border_size == nil then border_size = 0 end
	if border_rounding == nil then border_rounding = 0 end
	if textalignx == nil then textalignx = 0.5 end
	if textaligny == nil then textaligny = 0.5 end
	CPStyle.colorBegin("Border", border_color)
	CPStyle.colorBegin("Button", color)
	CPStyle.colorBegin("ButtonActive", color)
	CPStyle.colorBegin("ButtonHovered", color)
	CPStyle.styleBegin("FrameBorderSize", border_size)
	CPStyle.styleBegin("FrameRounding", border_rounding)
	CPStyle.styleBegin("ButtonTextAlign", textalignx, textaligny)
	local press = ImGui.Button(label, sizex, sizey)
	CPStyle.styleEnd(3)
	CPStyle.colorEnd(4)
	return press
end

function CPStyle.CPRect2(label, sizex, sizey, color)
	CPStyle.colorBegin("ChildBg", color)
	ImGui.BeginChild(label, sizex, sizey)
  ImGui.EndChild()
	CPStyle.colorEnd(1)
end

function CPStyle.CPDraw(name, image, scale)
  ImGui.BeginGroup()
  local basex, basey = ImGui.GetCursorPos()
  local pixelx = 1
  local pixely = 1
  local cursorx = basex
  local cursory = basey
  local totalPixel = image.width*image.height
  for i = 1, totalPixel do
    ImGui.SetCursorPos(cursorx, cursory)
    if image.pixels[pixely][pixelx][4] ~= 0 then
      CPStyle.CPRect2("##"..name..i, scale*1.2, scale*1.2, image.pixels[pixely][pixelx])
    end
    pixelx = pixelx + 1
    if pixelx > image.width then pixelx = 1 pixely = pixely + 1 end
    cursorx = basex+(pixelx-1)*scale
    cursory = basey+(pixely-1)*scale
  end
  ImGui.EndGroup()
end

function CPStyle.loadPNG(imagepath)
  local imgraw = png(imagepath)
  local img = {}
  local x = {}
  local y = {}
  img.width = imgraw.width
  img.height = imgraw.height
  for i in pairs(imgraw.pixels) do
    for t in pairs(imgraw.pixels[i]) do
      y[t] = { imgraw.pixels[i][t].R/255, imgraw.pixels[i][t].G/255, imgraw.pixels[i][t].B/255, imgraw.pixels[i][t].A/255 }
    end
    x[i] = y
    y = {}
  end
  img.pixels = x
  return img
end

function CPStyle.fileExists(filename)
   local f=io.open(filename,"r")
   if (f~=nil) then io.close(f) return true else return false end
end

return CPStyle
