local Options = {
  config_file = "config.json",
  fav_file = "favorites.json",
  config_value = {},
  fav_value = {},
}
local i18n = require("i18n")
local protocols = require("protocols")

function Options:loadfav()
  local f = io.open(self.fav_file, "r")
  if f then
    self.fav_value = json.decode(f:read("*a"))
    f:close()
    for _, v in ipairs(self.fav_value.hk) do
      for _, pv in ipairs(protocols.Items) do
        if pv.id == v then
          pv.hk = true
        end
      end
    end
    for _, v in ipairs(self.fav_value.fav) do
      for _, pv in ipairs(protocols.Items) do
        if pv.id == v then
          pv.fav = true
        end
      end
    end
  else
    self.fav_value = {
      hk = {},
      fav = {}
    }
    self:savefav()
  end
end

function Options:savefav()
  local f = io.open(self.fav_file, "w")
  local jfav = json.encode(self.fav_value)
  f:write(jfav)
  f:close()
end

function Options:save()
  local f = io.open(self.config_file, "w")
  local jconfig = json.encode(self.config_value)
  f:write(jconfig)
  f:close()
end

function Options:load()
  local f = io.open(self.config_file, "r")
  if f then
    self.config_value = json.decode(f:read("*a"))
    f:close()
    if self.config_value.lang == nil then
      self.config_value.lang = "en"
      self:save()
    end
  else
    self.config_value = { lang = "en" }
    self:save()
  end
  if self.config_value.lang ~= "en" then
    i18n.loadFile("lang/en.lua")
  end
  i18n.loadFile("lang/"..self.config_value.lang..".lua")
  i18n.setLocale(self.config_value.lang)
end

function Options:setLang(language)
    i18n.loadFile("lang/"..language..".lua")
    i18n.setLocale(language)
    self.config_value.lang = language
    self:save()
end

function Options.removeOrinsert(tbl, value)
  local remove, pos
  for i, v in ipairs(tbl) do
    if v == value then
      remove = true
      pos = i
    end
  end
  if remove then
    table.remove(tbl, pos)
  else
    table.insert(tbl, value)
  end
end

return Options
