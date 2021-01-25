-- MIT License
--
-- - CPStyling.lua
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
local currentFilePath = (...):gsub("CPStyling$","")

local function isModuleAvailable(module)
    res = pcall(require,module)
    if res then return true
    elseif not(res) then
        return false
    end
end

if isModuleAvailable(currentFilePath.."png-lua/png") then
  png = require(currentFilePath.."png-lua/png")
end

CPStyle.theme = {
  Text                                        =           { 1.00, 0.38, 0.33, 1.00 },
  TextDisabled                                =           { 0.48, 0.39, 0.40, 1.00 },
  WindowBg                                    =           { 0.06, 0.04, 0.06, 0.90 },
  ChildBg                                     =           { 0.00, 0.00, 0.00, 0.00 },
  PopupBg                                     =           { 0.06, 0.04, 0.06, 0.90 },
  Border                                      =           { 0.30, 0.07, 0.08, 1.00 },
  BorderShadow                                =           { 0.00, 0.00, 0.00, 0.00 },
  FrameBg                                     =           { 0.50, 0.13, 0.16, 0.50 },
  FrameBgHovered                              =           { 0.32, 0.11, 0.12, 0.50 },
  FrameBgActive                               =           { 0.50, 0.13, 0.16, 0.50 },
  -- FrameBgDisabled                          =           { 0.48, 0.39, 0.40, 1.00 },
  -- FrameBgHoveredDisabled                   =           { 0.48, 0.39, 0.40, 1.00 },
  -- FrameBgActiveDisabled                    =           { 0.48, 0.39, 0.40, 1.00 },
  TitleBg                                     =           { 0.06, 0.04, 0.06, 0.90 },
  TitleBgActive                               =           { 0.06, 0.04, 0.06, 0.90 },
  TitleBgCollapsed                            =           { 0.06, 0.04, 0.06, 0.90 },
  MenuBarBg                                   =           { 0.00, 0.00, 0.00, 0.00 },
  ScrollbarBg                                 =           { 0.23, 0.07, 0.09, 1.00 },
  ScrollbarGrab                               =           { 0.95, 0.30, 0.28, 1.00 },
  ScrollbarGrabHovered                        =           { 0.95, 0.30, 0.28, 1.00 },
  ScrollbarGrabActive                         =           { 0.95, 0.30, 0.28, 1.00 },
  CheckMark                                   =           { 1.00, 0.44, 0.40, 1.00 },
  -- CheckMarkTrueDisabled                    =           { 0.34, 0.22, 0.24, 1.00 },
  -- CheckMarkFalseDisabled                   =           { 0.48, 0.39, 0.40, 1.00 },
  SliderGrab                                  =           { 0.64, 0.22, 0.21, 1.00 },
  SliderGrabActive                            =           { 0.64, 0.22, 0.21, 1.00 },
  Button                                      =           { 0.57, 0.17, 0.16, 1.00 },
  ButtonHovered                               =           { 0.45, 0.13, 0.14, 1.00 },
  ButtonActive                                =           { 0.57, 0.17, 0.16, 1.00 },
  Header                                      =           { 0.08, 0.08, 0.15, 1.00 },
  HeaderHovered                               =           { 0.22, 0.64, 0.69, 0.30 },
  HeaderActive                                =           { 0.22, 0.64, 0.69, 0.50 },
  Separator                                   =           { 0.26, 0.09, 0.09, 1.00 },
  SeparatorHovered                            =           { 0.26, 0.09, 0.09, 1.00 },
  SeparatorActive                             =           { 0.26, 0.09, 0.09, 1.00 },
  ResizeGrip                                  =           { 0.00, 0.00, 0.00, 0.00 },
  ResizeGripHovered                           =           { 0.45, 0.13, 0.14, 1.00 },
  ResizeGripActive                            =           { 0.57, 0.17, 0.16, 1.00 },
  Tab                                         =           { 0.57, 0.17, 0.16, 1.00 },
  TabHovered                                  =           { 0.45, 0.13, 0.14, 1.00 },
  TabActive                                   =           { 0.57, 0.17, 0.16, 1.00 },
  TabUnfocused                                =           { 0.45, 0.14, 0.13, 1.00 },
  TabUnfocusedActive                          =           { 0.58, 0.18, 0.16, 1.00 },
  -- PlotLines                                =           { 0.00, 0.00, 0.00, 0.00 },
  -- PlotLinesHovered                         =           { 0.00, 0.00, 0.00, 0.00 },
  -- PlotHistogram                            =           { 0.00, 0.00, 0.00, 0.00 },
  -- PlotHistogramHovered                     =           { 0.00, 0.00, 0.00, 0.00 },
  TextSelectedBg                              =           { 0.06, 0.06, 0.12, 1.00 },
  -- DragDropTarget                           =           { 0.00, 0.00, 0.00, 0.00 },
  -- NavHighlight                             =           { 0.00, 0.00, 0.00, 0.00 },
  -- NavWindowingHighlight                    =           { 0.00, 0.00, 0.00, 0.00 },
  -- NavWindowingDimBg                        =           { 0.00, 0.00, 0.00, 0.00 },
  ModalWindowDimBg                            =           { 0.00, 0.00, 0.00, 0.00 },
  ModalWindowDarkening                        =           { 0.00, 0.00, 0.00, 0.40 },
  CPButton                                    =           { 0.06, 0.06, 0.12, 1.00 },
  CPButtonHovered                             =           { 0.43, 0.13, 0.13, 1.00 },
  CPButtonActive                              =           { 0.57, 0.16, 0.16, 1.00 },
  CPButtonText                                =           { 0.34, 0.95, 0.98, 1.00 },
  CPButtonBorder                              =           { 0.40, 0.08, 0.09, 1.00 },
  CPButtonBorderHovered                       =           { 0.34, 0.95, 0.98, 1.00 },
  CPToggleOn                                  =           { 0.37, 0.96, 1.00, 1.00 },
  CPToggleOnHovered                           =           { 0.29, 0.77, 0.80, 1.00 },
  CPToggleOnText                              =           { 0.00, 0.00, 0.00, 1.00 },
  CPToggleOnTextHovered                       =           { 0.00, 0.00, 0.00, 1.00 },
  CPToggleOnBorder                            =           { 0.29, 0.61, 0.58, 1.00 },
  CPToggleOnBorderHovered                     =           { 0.26, 0.66, 0.65, 1.00 },
  CPToggleOnDisabled                          =           { 0.03, 0.12, 0.12, 1.00 },
  CPToggleOnDisabledHovered                   =           { 0.05, 0.16, 0.16, 1.00 },
  CPToggleOnDisabledText                      =           { 0.08, 0.23, 0.25, 1.00 },
  CPToggleOnDisabledTextHovered               =           { 0.09, 0.29, 0.30, 1.00 },
  CPToggleOnDisabledBorder                    =           { 0.06, 0.15, 0.15, 1.00 },
  CPToggleOnDisabledBorderHovered             =           { 0.09, 0.24, 0.25, 1.00 },
  CPToggleOff                                 =           { 0.58, 0.18, 0.16, 1.00 },
  CPToggleOffHovered                          =           { 0.45, 0.14, 0.13, 1.00 },
  CPToggleOffText                             =           { 1.00, 0.44, 0.41, 1.00 },
  CPToggleOffTextHovered                      =           { 1.00, 0.36, 0.33, 1.00 },
  CPToggleOffBorder                           =           { 0.92, 0.29, 0.26, 1.00 },
  CPToggleOffBorderHovered                    =           { 0.76, 0.23, 0.21, 1.00 },
  CPToggleOffDisabled                         =           { 0.09, 0.04, 0.07, 1.00 },
  CPToggleOffDisabledHovered                  =           { 0.16, 0.06, 0.07, 1.00 },
  CPToggleOffDisabledText                     =           { 0.32, 0.09, 0.10, 1.00 },
  CPToggleOffDisabledTextHovered              =           { 0.36, 0.11, 0.11, 1.00 },
  CPToggleOffDisabledBorder                   =           { 0.19, 0.08, 0.09, 1.00 },
  CPToggleOffDisabledBorderHovered            =           { 0.30, 0.09, 0.10, 1.00 },
  CPFrameBg                                   =           { 0.06, 0.06, 0.12, 1.00 },
  CPFrameBgHovered                            =           { 0.31, 0.11, 0.11, 1.00 },
  CPFrameBgActive                             =           { 0.57, 0.19, 0.19, 1.00 },
  CPSliderGrab                                =           { 0.64, 0.21, 0.21, 1.00 },
  CPSliderGrabActive                          =           { 0.64, 0.21, 0.21, 1.00 },
  CPFrameBorder                               =           { 0.40, 0.08, 0.09, 1.00 },
  CPTextSelectedBg                            =           { 0.45, 0.14, 0.13, 1.00 },
  CPToolTip2Bg                                =           { 0.11, 0.22, 0.25, 0.60 },
  CPToolTip2Border                            =           { 0.18, 0.42, 0.46, 1.00 },
  CPToolTip2Separator                         =           { 0.24, 0.55, 0.58, 1.00 },
  CPToolTip2SideBg                            =           { 0.12, 0.24, 0.27, 1.00 },
  Hidden                                      =           { 0.00, 0.00, 0.00, 0.00 }
}

CPStyle.color = {
  red             =            { 1.00, 0.00, 0.00, 1.00 },
  cyan            =            { 0.00, 1.00, 1.00, 1.00 },
  blue            =            { 0.00, 0.00, 1.00, 1.00 },
  darkBlue        =            { 0.00, 0.00, 0.63, 1.00 },
  lightBlue       =            { 0.68, 0.85, 0.90, 1.00 },
  purple          =            { 0.50, 0.00, 0.50, 1.00 },
  yellow          =            { 1.00, 1.00, 0.00, 1.00 },
  lime            =            { 0.00, 1.00, 0.00, 1.00 },
  magenta         =            { 1.00, 0.00, 1.00, 1.00 },
  white           =            { 1.00, 1.00, 1.00, 1.00 },
  silver          =            { 0.75, 0.75, 0.75, 1.00 },
  grey            =            { 0.50, 0.50, 0.50, 1.00 },
  black           =            { 0.00, 0.00, 0.00, 1.00 },
  orange          =            { 1.00, 0.65, 0.00, 1.00 },
  brown           =            { 0.65, 0.16, 0.16, 1.00 },
  maroon          =            { 0.50, 0.00, 0.00, 1.00 },
  green           =            { 0.00, 0.50, 0.00, 1.00 },
  olive           =            { 0.50, 0.50, 0.00, 1.00 }
}


local ImGuiStyleNames = {
  Col = {
    { ImGuiStyle = ImGuiCol.Text                        , ImGuiStyleShort = "Text" },
    { ImGuiStyle = ImGuiCol.TextDisabled                , ImGuiStyleShort = "TextDisabled" },
    { ImGuiStyle = ImGuiCol.WindowBg                    , ImGuiStyleShort = "WindowBg" },
    { ImGuiStyle = ImGuiCol.ChildBg                     , ImGuiStyleShort = "ChildBg" },
    { ImGuiStyle = ImGuiCol.PopupBg                     , ImGuiStyleShort = "PopupBg" },
    { ImGuiStyle = ImGuiCol.Border                      , ImGuiStyleShort = "Border" },
    { ImGuiStyle = ImGuiCol.BorderShadow                , ImGuiStyleShort = "BorderShadow" },
    { ImGuiStyle = ImGuiCol.FrameBg                     , ImGuiStyleShort = "FrameBg" },
    { ImGuiStyle = ImGuiCol.FrameBgHovered              , ImGuiStyleShort = "FrameBgHovered" },
    { ImGuiStyle = ImGuiCol.FrameBgActive               , ImGuiStyleShort = "FrameBgActive" },
    { ImGuiStyle = ImGuiCol.TitleBg                     , ImGuiStyleShort = "TitleBg" },
    { ImGuiStyle = ImGuiCol.TitleBgActive               , ImGuiStyleShort = "TitleBgActive" },
    { ImGuiStyle = ImGuiCol.TitleBgCollapsed            , ImGuiStyleShort = "TitleBgCollapsed" },
    { ImGuiStyle = ImGuiCol.MenuBarBg                   , ImGuiStyleShort = "MenuBarBg" },
    { ImGuiStyle = ImGuiCol.ScrollbarBg                 , ImGuiStyleShort = "ScrollbarBg" },
    { ImGuiStyle = ImGuiCol.ScrollbarGrab               , ImGuiStyleShort = "ScrollbarGrab" },
    { ImGuiStyle = ImGuiCol.ScrollbarGrabHovered        , ImGuiStyleShort = "ScrollbarGrabHovered" },
    { ImGuiStyle = ImGuiCol.ScrollbarGrabActive         , ImGuiStyleShort = "ScrollbarGrabActive" },
    { ImGuiStyle = ImGuiCol.CheckMark                   , ImGuiStyleShort = "CheckMark" },
    { ImGuiStyle = ImGuiCol.SliderGrab                  , ImGuiStyleShort = "SliderGrab" },
    { ImGuiStyle = ImGuiCol.SliderGrabActive            , ImGuiStyleShort = "SliderGrabActive" },
    { ImGuiStyle = ImGuiCol.Button                      , ImGuiStyleShort = "Button" },
    { ImGuiStyle = ImGuiCol.ButtonHovered               , ImGuiStyleShort = "ButtonHovered" },
    { ImGuiStyle = ImGuiCol.ButtonActive                , ImGuiStyleShort = "ButtonActive" },
    { ImGuiStyle = ImGuiCol.Header                      , ImGuiStyleShort = "Header" },
    { ImGuiStyle = ImGuiCol.HeaderHovered               , ImGuiStyleShort = "HeaderHovered" },
    { ImGuiStyle = ImGuiCol.HeaderActive                , ImGuiStyleShort = "HeaderActive" },
    { ImGuiStyle = ImGuiCol.Separator                   , ImGuiStyleShort = "Separator" },
    { ImGuiStyle = ImGuiCol.SeparatorHovered            , ImGuiStyleShort = "SeparatorHovered" },
    { ImGuiStyle = ImGuiCol.SeparatorActive             , ImGuiStyleShort = "SeparatorActive" },
    { ImGuiStyle = ImGuiCol.ResizeGrip                  , ImGuiStyleShort = "ResizeGrip" },
    { ImGuiStyle = ImGuiCol.ResizeGripHovered           , ImGuiStyleShort = "ResizeGripHovered" },
    { ImGuiStyle = ImGuiCol.ResizeGripActive            , ImGuiStyleShort = "ResizeGripActive" },
    { ImGuiStyle = ImGuiCol.Tab                         , ImGuiStyleShort = "Tab" },
    { ImGuiStyle = ImGuiCol.TabHovered                  , ImGuiStyleShort = "TabHovered" },
    { ImGuiStyle = ImGuiCol.TabActive                   , ImGuiStyleShort = "TabActive" },
    { ImGuiStyle = ImGuiCol.TabUnfocused                , ImGuiStyleShort = "TabUnfocused" },
    { ImGuiStyle = ImGuiCol.TabUnfocusedActive          , ImGuiStyleShort = "TabUnfocusedActive" },
    { ImGuiStyle = ImGuiCol.PlotLines                   , ImGuiStyleShort = "PlotLines" },
    { ImGuiStyle = ImGuiCol.PlotLinesHovered            , ImGuiStyleShort = "PlotLinesHovered" },
    { ImGuiStyle = ImGuiCol.PlotHistogram               , ImGuiStyleShort = "PlotHistogram" },
    { ImGuiStyle = ImGuiCol.PlotHistogramHovered        , ImGuiStyleShort = "PlotHistogramHovered" },
    { ImGuiStyle = ImGuiCol.TextSelectedBg              , ImGuiStyleShort = "TextSelectedBg" },
    { ImGuiStyle = ImGuiCol.DragDropTarget              , ImGuiStyleShort = "DragDropTarget" },
    { ImGuiStyle = ImGuiCol.NavHighlight                , ImGuiStyleShort = "NavHighlight" },
    { ImGuiStyle = ImGuiCol.NavWindowingHighlight       , ImGuiStyleShort = "NavWindowingHighlight" },
    { ImGuiStyle = ImGuiCol.NavWindowingDimBg           , ImGuiStyleShort = "NavWindowingDimBg" },
    { ImGuiStyle = ImGuiCol.ModalWindowDimBg            , ImGuiStyleShort = "ModalWindowDimBg" },
    { ImGuiStyle = ImGuiCol.ModalWindowDarkening        , ImGuiStyleShort = "ModalWindowDarkening" },
    { ImGuiStyle = ImGuiCol.COUNT                       , ImGuiStyleShort = "COUNT" }
  },
  Var = {
    { ImGuiStyle = ImGuiStyleVar.Alpha                  , ImGuiStyleShort = "Alpha" },
    { ImGuiStyle = ImGuiStyleVar.WindowPadding          , ImGuiStyleShort = "WindowPadding" },
    { ImGuiStyle = ImGuiStyleVar.WindowRounding         , ImGuiStyleShort = "WindowRounding" },
    { ImGuiStyle = ImGuiStyleVar.WindowBorderSize       , ImGuiStyleShort = "WindowBorderSize" },
    { ImGuiStyle = ImGuiStyleVar.WindowMinSize          , ImGuiStyleShort = "WindowMinSize" },
    { ImGuiStyle = ImGuiStyleVar.WindowTitleAlign       , ImGuiStyleShort = "WindowTitleAlign" },
    { ImGuiStyle = ImGuiStyleVar.ChildRounding          , ImGuiStyleShort = "ChildRounding" },
    { ImGuiStyle = ImGuiStyleVar.ChildBorderSize        , ImGuiStyleShort = "ChildBorderSize" },
    { ImGuiStyle = ImGuiStyleVar.PopupRounding          , ImGuiStyleShort = "PopupRounding" },
    { ImGuiStyle = ImGuiStyleVar.PopupBorderSize        , ImGuiStyleShort = "PopupBorderSize" },
    { ImGuiStyle = ImGuiStyleVar.FramePadding           , ImGuiStyleShort = "FramePadding" },
    { ImGuiStyle = ImGuiStyleVar.FrameRounding          , ImGuiStyleShort = "FrameRounding" },
    { ImGuiStyle = ImGuiStyleVar.FrameBorderSize        , ImGuiStyleShort = "FrameBorderSize" },
    { ImGuiStyle = ImGuiStyleVar.ItemSpacing            , ImGuiStyleShort = "ItemSpacing" },
    { ImGuiStyle = ImGuiStyleVar.ItemInnerSpacing       , ImGuiStyleShort = "ItemInnerSpacing" },
    { ImGuiStyle = ImGuiStyleVar.IndentSpacing          , ImGuiStyleShort = "IndentSpacing" },
    { ImGuiStyle = ImGuiStyleVar.ScrollbarSize          , ImGuiStyleShort = "ScrollbarSize" },
    { ImGuiStyle = ImGuiStyleVar.ScrollbarRounding      , ImGuiStyleShort = "ScrollbarRounding" },
    { ImGuiStyle = ImGuiStyleVar.GrabMinSize            , ImGuiStyleShort = "GrabMinSize" },
    { ImGuiStyle = ImGuiStyleVar.GrabRounding           , ImGuiStyleShort = "GrabRounding" },
    { ImGuiStyle = ImGuiStyleVar.TabRounding            , ImGuiStyleShort = "TabRounding" },
    { ImGuiStyle = ImGuiStyleVar.SelectableTextAlign    , ImGuiStyleShort = "SelectableTextAlign" },
    { ImGuiStyle = ImGuiStyleVar.ButtonTextAlign        , ImGuiStyleShort = "ButtonTextAlign" },
    { ImGuiStyle = ImGuiStyleVar.COUNT                  , ImGuiStyleShort = "COUNT" }
  }
}

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
	CPStyle.colorBegin("ModalWindowDarkening"           , CPStyle.theme.ModalWindowDarkening)
  CPStyle.styleBegin("WindowRounding"                 , 0)
	CPStyle.styleBegin("ScrollbarSize"                  , 9)
end

function CPStyle.setThemeEnd()
	CPStyle.styleEnd(2)
	CPStyle.colorEnd(41)
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
      CPStyle.CPRect2("##"..name..i, scale, scale, image.pixels[pixely][pixelx])
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

function CPStyle.getCWD(mod_name)
  if CPStyle.fileExists("./bin/x64/plugins/cyber_engine_tweaks/mods/"..mod_name.."/init.lua") then
    return "./bin/x64/plugins/cyber_engine_tweaks/mods/"..mod_name.."/"
  elseif CPStyle.fileExists("./plugins/cyber_engine_tweaks/mods/"..mod_name.."/init.lua") then
    return "./plugins/cyber_engine_tweaks/mods/"..mod_name.."/"
  elseif  CPStyle.fileExists("./"..mod_name.."/init.lua") then
    return "./"..mod_name.."/"
  end
end

return CPStyle
