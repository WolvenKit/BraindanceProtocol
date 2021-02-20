local Fact = {}
local protocols = require("protocols")

local function getFact(fact)
  local factValue = Game.GetQuestsSystem():GetFactStr(fact)
  return factValue
end

-- Get fact values for the toggle and combobox
local function getValue(id)
  local value, value2, value3
  if id == "Facts.SkippyMode" then
    value = getFact("mq007_skippy_aim_at_head")
    if value == 0 then return true else return false end
  elseif id == "Facts.SkippyAttitude" then
    value = getFact("mq007_skippy_goes_emo")
    if value == 0 then return true else return false end
  elseif id == "Facts.JackieBody" then
    value = getFact("q005_jackie_to_hospital")
    value2 = getFact("q005_jackie_to_mama")
    value3 = getFact("q005_jackie_stay_notell")
    if value == 1 and value2 == 0 and value3 == 0 then return 0
    elseif value == 0 and value2 == 1 and value3 == 0 then return 1
    elseif value == 0 and value2 == 0 and value3 == 1 then return 2
    else return -1 end
  elseif id == "Facts.GoroFate" then
    value = getFact("q112_takemura_dead")
    if value == 0 then return true else return false end
  end
end

function Fact.GetValue()
  for i in pairs(protocols.Items) do
      if protocols.Items[i].parent == "Facts" and protocols.Items[i].type ~= "Button" then
          protocols.Items[i].value = getValue(protocols.Items[i].id)
      end
  end
end

return Fact
