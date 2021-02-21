local Options = {
  filename = "config.json",
  value = {}
}
local i18n = require("i18n")

function Options:save()
  local f = io.open(self.filename, "w")
  local jconfig = json.encode(self.value)
  f:write(jconfig)
  f:close()
end

function Options:load()
  local f = io.open(self.filename, "r")
  if f then
    self.value = json.decode(f:read("*a"))
    f:close()
    if self.value.lang == nil then
      self.value.lang = "en"
      self:save()
    end
  else
    self.value = { lang = "en" }
    self:save()
  end
  if self.value.lang ~= "en" then
    i18n.loadFile("lang/en.lua")
  end
  i18n.loadFile("lang/"..self.value.lang..".lua")
  i18n.setLocale(self.value.lang)
end

function Options:setLang(language)
    i18n.loadFile("lang/"..language..".lua")
    i18n.setLocale(language)
    self.value.lang = language
    self:save()
end

return Options
