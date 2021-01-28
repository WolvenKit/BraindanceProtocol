# How to add a language?

1. Edit `lang.lua`, add language *name* and it's *id*. For example
    ```lua
    { id = "ja", name = "日本語 (Japanese)"}
    ```
    Make sure to also write it's English name inside parentheses, because it may be rendered as ?? in a font that doesn't support it.
    
2. Duplicate `en.lua` and rename it into the *id* of the language that you want to translate into. (e.g. `ja.lua`)

   It must be the same as the *id* you added in `lang.lua`
   
3. Edit Line2 in the new language file you created (e.g. `ja.lua`). Replace `en` to the *id* of your language.

   ```lua
   en = {    =>    ja = {
   ```

4. Replace the English strings with your translation.

   ```lua
   window_title = "Braindance Protocol" ,    =>    window_title = "ブレインダンスプロトコル" ,
   ```
   
5. Save the files, launch the game, and *Braindance Protocol*. Switch the language to the new language you just added and debug it.

6. After double-checking your translation, make a pull request.

# How to update existing language files?

After adding more protocols into `protocols.lua`, we need to update the language files to match the new protocols. There is a function for you to do this automatically.

1. Add `"debug" = true` into `config.json`. For example:
    ```json
    {"lang":"en", "debug":true}
    ```
2. Start *Braindance Protocol*, press the <kbd>Update language files</kbd> button.
3. Updated language files will be created with "_update" suffix inside "lang/". (e.g. `en_update.lua`)
4. New strings will be commented inside the `xx_update.lua`
```lua
    window_title = "Brandance Protocol",
    -- new_string = ""
```

### How <kbd>Update language files</kbd> works?
1. It will scan `init.lua` for strings inside `i18n("some_string")`, and strings from `protocols.lua`.
2. Then it will read and compare with the old language files.
3. If the translation of this string exists in the old language files, it will copy it over.
4. If the translation doesn't exist in the old language files, but exists in `en.lua`, it will copy it over from `en.lua` and comment it.
5. Else it will leave it blank and comment. (e.g. ` -- window_title = ""`)
6. Save into a new file with "_update" as the suffix. (e.g. en_update.lua)
