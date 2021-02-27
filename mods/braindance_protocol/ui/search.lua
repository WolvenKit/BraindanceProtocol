local protocols = require("protocols")
local i18n = require("i18n")
local search = {
  result = {}
}

function search:query(keyword)
  self.result = {}
  if string.len(keyword) >= 2 then
    for _,v in ipairs(protocols.Items) do
      local name = i18n(v.name):lower()
      local description = i18n(v.description):lower()
      local keyword = keyword:lower()
      if name:match(keyword) or description:match(keyword) then
        table.insert(self.result, v)
      end
    end
  end
end

function search:clear()
  self.result = {}
end

return search
