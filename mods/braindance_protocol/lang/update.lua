local function alignstr(str) -- for aligning the table in output files
    count = string.len(str)
    stime = 59 - count
    newstr = str
    for i = 1, stime do
        newstr = newstr.." "
    end
    return newstr
end

local function update()
  local i18n_str = {}
  local i = 1
  -- read hotkeys.bindings into i18n_str
  local hotkeys = dofile("hotkeys")
  for _,v in ipairs(hotkeys.bindings) do
    i18n_str[i] = v.ID
    print(i..": "..i18n_str[i])
    i = i + 1
  end

  -- scan ui/init.lua for i18n strings
  local init_lua = io.open("ui/init.lua", "r")
  local init_lua_s = init_lua:read("*a")
  for w in string.gmatch(init_lua_s, [[i18n%("([^"]+)]]) do
      for t in pairs(i18n_str) do
          if w == i18n_str[t] then
              str_exsit = true
          else
              str_exsit = false
          end
      end
      if str_exsit ~= true then
          i18n_str[i] = w
          print(i..": "..i18n_str[i])
          i = i + 1
      end
  end
  init_lua:close()
  -- read protocols.Parents into i18n_str
  local protocols = dofile("protocols.lua")
  for t in pairs(protocols.Parents) do
      i18n_str[i] = "parent_"..protocols.Parents[t].id
      print(i..": "..i18n_str[i])
      i = i + 1
  end
  -- read protocols.Items into i18n_str
  for t in pairs(protocols.Items) do
      i18n_str[i] = protocols.Items[t].name --name
      print(i..": "..i18n_str[i])
      i = i + 1
      i18n_str[i] = protocols.Items[t].description --tip
      print(i..": "..i18n_str[i])
      i = i + 1
      if protocols.Items[t].type == "Button" or protocols.Items[t].type == "Input" then --Button and Input
          i18n_str[i] = protocols.Items[t].button_label
          print(i..": "..i18n_str[i])
          i = i + 1
      elseif protocols.Items[t].type == "Select" then --Select
          i18n_str[i] = protocols.Items[t].options
          print(i..": "..i18n_str[i])
          i = i + 1
      elseif protocols.Items[t].type == "Toggle" then --Toggle
          i18n_str[i] = protocols.Items[t].button_label1
          print(i..": "..i18n_str[i])
          i = i + 1
          i18n_str[i] = protocols.Items[t].button_label2
          print(i..": "..i18n_str[i])
          i = i + 1
      end
  end
  --Done read all i18n strings into i18n_str

  -- Write into files.
  local languages = dofile("lang/lang.lua")
  for t in pairs(languages) do
      local lang = languages[t].id
      local old_en_file = dofile("lang/en.lua")
      local old_lang_file = dofile("lang/"..lang..".lua")
      local new_lang_file = io.open("lang/"..lang.."_update.lua", "w")
      -- header
      new_lang_file:write("return {\n")
      new_lang_file:write("  "..lang.." = {\n")
      -- strings starts here
      for t in pairs(i18n_str) do
          if old_lang_file[lang][i18n_str[t]] then  -- if this i18n string exists in the old lang file, copy it
              new_lang_file:write("    "..alignstr(i18n_str[t]).." = \"")
              new_lang_file:write(old_lang_file[lang][i18n_str[t]]:gsub("\"","\\\""):gsub("\0","\\0"):gsub("\n","\\n").."\"")
          elseif old_en_file.en[i18n_str[t]] then -- if this i18n string exists in the old en file, copy it and comment
              new_lang_file:write("    -- "..alignstr(i18n_str[t]).." = \"")
              new_lang_file:write(old_en_file.en[i18n_str[t]]:gsub("\"","\\\""):gsub("\0","\\0"):gsub("\n","\\n").."\"")
          else
              new_lang_file:write("    -- "..alignstr(i18n_str[t]).." = \"\"") -- else leave blank and comment
          end
          if t < i-1 then
              new_lang_file:write(" ,\n")
          else
              new_lang_file:write("\n")
          end
      end
      -- end
      new_lang_file:write("  }\n}")
      io.close(new_lang_file)
  end
  print("[BD] Language files updated..")
end

return update
