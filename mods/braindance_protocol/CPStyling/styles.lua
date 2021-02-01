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

return {
  color = {
    red             =            { 1.00, 0.00, 0.00, 1.00 },
    cyan            =            { 0.00, 1.00, 1.00, 1.00 },
    blue            =            { 0.00, 0.00, 1.00, 1.00 },
    darkblue        =            { 0.00, 0.00, 0.63, 1.00 },
    lightblue       =            { 0.68, 0.85, 0.90, 1.00 },
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
  },

  ImGuiStyleNames = {
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
}
