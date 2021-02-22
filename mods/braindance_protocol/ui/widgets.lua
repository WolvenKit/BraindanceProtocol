local widgets = {} -- Needs clean up

function widgets.HKButton(str_id, value, size)
  local drawList = ImGui.GetWindowDrawList()
  local winX, winY = ImGui.GetWindowPos()
  local cursorX, cursorY = ImGui.GetCursorPos()
  local color
  if size == 0 or size == nil then
    size = ImGui.GetFontSize() + 4
  end
  local posX = winX + cursorX
  local posY = winY + cursorY
  local pressed = ImGui.InvisibleButton(str_id, size, size)
  local active = ImGui.IsItemActive()
  local hovered = ImGui.IsItemHovered()
  if pressed then
    value = not value
  end
  if active then
    color = 0xFF00FFFF
  elseif hovered then
    color = 0xFF009696
  elseif value then
    color = 0xFF00FFFF
  else
    color = 0xFF6B6B6B
  end
  AddKeyPressIcon(drawList, size, posX, posY, color, 2)
  return value, pressed
end

function widgets.StarButton(str_id, value, size)
  local drawList = ImGui.GetWindowDrawList()
  local winX, winY = ImGui.GetWindowPos()
  local cursorX, cursorY = ImGui.GetCursorPos()
  local color
  if size == 0 or size == nil then
    size = ImGui.GetFontSize() + 4
  end
  local posX = winX + cursorX + size/2
  local posY = winY + cursorY + size/2
  local pressed = ImGui.InvisibleButton(str_id, size, size)
  local active = ImGui.IsItemActive()
  local hovered = ImGui.IsItemHovered()
  if pressed then
    value = not value
  end
  if active then
    color = 0xFF00FFFF
  elseif hovered then
    color = 0xFF009696
  elseif value then
    color = 0xFF00FFFF
  else
    color = 0xFF6B6B6B
  end
  AddStarFilled(drawList, size/2, posX, posY, color)
  return value, pressed
end


local function getoutercorner(radius, centerX, centerY)
  local outer_corner = {}
  for i = 0, 4 do
    local angle = (2*i+1)*math.pi/5
    local x = radius * math.sin(angle) + centerX
    local y = radius * math.cos(angle) + centerY
    local point = {x = x, y = y}
    table.insert(outer_corner, point)
  end
  return outer_corner
end

local function getline(p1, p2)
  local a = (p2.y - p1.y) / (p2.x - p1.x)
  local b = p1.y - a * p1.x
  return {a = a, b = b}
end

local function getintersection(line1, line2)
  local x = (line2.b - line1.b) / (line1.a - line2.a)
  local y = line1.a * x + line1.b
  return {x = x, y = y}
end

local function getinnercorner(outer_corner)
  local innercorner = {}
  local function getnext(p)
    local p1, p2
    if p - 1 < 1 then
      p1 = p - 1 + 5
    else
      p1 = p - 1
    end
    if p1 + 2 > 5 then
      p2 = p1 + 2 - 5
    else
      p2 = p1 + 2
    end
    return p1, p2
  end

  for i = 1, 5 do
    local p1, p2, p3, p4, line1, line2
    p1, p2 = getnext(i)
    p3, p4 = getnext(i+1)
    line1 = getline(outer_corner[p1], outer_corner[p2])
    line2 = getline(outer_corner[p3], outer_corner[p4])
    point = getintersection(line1, line2)
    table.insert(innercorner, point)
  end
  return innercorner
end

local function AddStarFilled(drawList, radius, centerX, centerY, color)
  local outer_corner = getoutercorner(radius, centerX, centerY)
  local innercorner = getinnercorner(outer_corner)
  ImGui.ImDrawListAddTriangleFilled(drawList, outer_corner[1].x, outer_corner[1].y, outer_corner[3].x, outer_corner[3].y, innercorner[3].x, innercorner[3].y, color)
  ImGui.ImDrawListAddTriangleFilled(drawList, outer_corner[1].x, outer_corner[1].y, innercorner[3].x, innercorner[3].y, outer_corner[4].x, outer_corner[4].y, color)
  ImGui.ImDrawListAddTriangleFilled(drawList, innercorner[1].x, innercorner[1].y, outer_corner[2].x, outer_corner[2].y, innercorner[2].x, innercorner[2].y, color)
  ImGui.ImDrawListAddTriangleFilled(drawList, innercorner[5].x, innercorner[5].y, innercorner[4].x, innercorner[4].y, outer_corner[5].x, outer_corner[5].y, color)
end

local function AddStar(drawList, radius, centerX, centerY, color, thickness)
  local outer_corner = getoutercorner(radius, centerX, centerY)
  local innercorner = getinnercorner(outer_corner)
  for i = 1, 5 do
    local t
    if i + 1 > 5 then
      t = i - 4
    else
      t = i + 1
    end
    ImGui.ImDrawListAddLine(drawList, outer_corner[i].x, outer_corner[i].y, innercorner[i].x, innercorner[i].y, color, thickness)
    ImGui.ImDrawListAddLine(drawList, innercorner[i].x, innercorner[i].y, outer_corner[t].x, outer_corner[t].y, color, thickness)
  end
end

local function AddKeyPressIcon(drawList, size, posX, posY, color, thickness)
  local lines = {
    { {x = posX, y = posY - size * 0.2 + size}, {x = posX + size, y = posY - size * 0.2 + size} },
    { {x = posX + size * 1/4, y = posY - size * 0.2 + size * 4/5}, {x = posX + size * 3/4, y = posY - size * 0.2 + size * 4/5} },
    { {x = posX + size * 1/4, y = posY - size * 0.2 + size * 4/5}, {x = posX + size * 1/5, y = posY - size * 0.2 + size} },
    { {x = posX + size * 3/4, y = posY - size * 0.2 + size * 4/5}, {x = posX + size * 4/5, y = posY - size * 0.2 + size} },
    { {x = posX + size * 1/2, y = posY - size * 0.2 + size * 2/7}, {x = posX + size * 1/2, y = posY - size * 0.2 + size * 2/3} },
    { {x = posX + size * 1/2, y = posY - size * 0.2 + size * 2/3}, {x = posX + size * 1/3, y = posY - size * 0.2 + size * 1/2} },
    { {x = posX + size * 1/2, y = posY - size * 0.2 + size * 2/3}, {x = posX + size * 2/3, y = posY - size * 0.2 + size * 1/2} }
  }
  for _,v in ipairs(lines) do
    ImGui.ImDrawListAddLine(drawList, v[1].x, v[1].y, v[2].x, v[2].y, color, thickness)
  end
end

return widgets
