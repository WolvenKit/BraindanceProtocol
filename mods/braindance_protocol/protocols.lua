local BraindanceProtocol = {
rootPath =	"plugins.cyber_engine_tweaks.mods.braindance_protocol."
}

local BD = require(BraindanceProtocol.rootPath.."BD")

local Protocols = {
  Parents = {
    { id = "Cheats"         , name = "Cheats"                 },
    { id = "Crafting"       , name = "Crafting Recipes"       },
    { id = "ItemSets"       , name = "Item Sets"              },
    { id = "Cyberware"      , name = "Cyberware Items"        },
    { id = "Facts"          , name = "Facts [Spoiler Alert!]" },
    { id = "Utilities"      , name = "Utilities"              },
    { id = "Saves"          , name = "Saves"                  },
    { id = "Vehicles"       , name = "Vehicles"               }
  },
  Items = {
-- Button:
--  { id = "ID", name "Display name" , parent = "Parent" , description = "Tooltip text" , type = "Button" , button_label = "button label" , cmd = function () print("Command to run") end },
-- Input:
--  { id = "ID" , name = "Display name" , parent = "Parent" , description = "Tooltip text" , type = "Input" , button_label = "button label" , value = number (default value) , cmd = function(value) print("Command to run") end },
-- Toggle:
--  { id = "ID" , name = "Display name" , parent = "Parent" , description = "Tooltip text" , type = "Toggle" , button_label1 = "off button label" , button_label2 = "on button label" , cmd = function(value) print("Command to run") end },
-- Select:
--  { id = "ID" , name = "Display name" , parent = "Parent" , description = "Tooltip text" , type = "Select" , options = "Option1\0Option2\0Option3\0" , cmd = function(value) print("Command to run") end },

    { id = "Platform.UnlockAllAchievements" , name = "Unlock All Achievements" , parent = "Cheats" , description = "Unlock all achievements on your platform (Steam / GoG)." , type = "Button" , button_label = "Execute" , cmd = function() BD.Cheats.Platform.UnlockAllAchievements() end },
    { id = "Player.MaxOut" , name = "MaxOut Level, Attributes, etc" , parent = "Cheats" , description = "Max Level, Attributes, Skill Points, Money." , type = "Button" , button_label = "Execute" , cmd = function() BD.Cheats.Player.MaxOut() end },
    { id = "Player.Respec" , name = "Respec perks and attributes" , parent = "Cheats" , description = "Respec attributes and perks." , type = "Button" , button_label = "Execute" , cmd = function() BD.Cheats.Player.Respec() end },
    { id = "Player.GodMode" , name = "GodMode" , parent = "Cheats" , description = "Gives you pseudo \"god mode\". Permanent to your SaveFile." , type = "Button" , button_label = "Execute" , cmd = function() BD.Cheats.Player.GodMode() end },
    { id = "Player.AddMoney" , name = "Add Money" , parent = "Cheats" , description = "Gives the player specified amount of money." , type = "Input" , button_label = "Add" , value = 10000 , cmd = function(value) BD.Cheats.Player.AddMoney(value) end },
    { id = "Crafting.AddAll" , name = "Add All Recipes & Materials" , parent = "Crafting" , description = "Add all Recipes & Materials." , type = "Button" , button_label = "Execute" , cmd = function() BD.Cheats.Crafting.AddAll() end },
    { id = "Crafting.AddLegendaryMaterials" , name = "Add Legendary Materials" , parent = "Crafting" , description = "Add specified amount of legendary crafting materials." , type = "Input" , button_label = "Add" , value = 50 , cmd = function(value) BD.Cheats.Crafting.AddLegendaryMaterials(value) end },
    { id = "Crafting.AddLegendaryRecipes" , name = "Add Legendary Recipes" , parent = "Crafting" , description = "Adds all legendary crafting recipes." , type = "Button" , button_label = "Execute" , cmd = function() BD.Cheats.Crafting.AddLegendaryRecipes() end },
    { id = "Crafting.AddEpicRecipes" , name = "Add Epic Recipes" , parent = "Crafting" , description = "Adds all epic crafting recipes." , type = "Button" , button_label = "Execute" , cmd = function() BD.Cheats.Crafting.AddEpicRecipes() end },
    { id = "Crafting.AddRareRecipes" , name = "Add Rare Recipes" , parent = "Crafting" , description = "Adds all rare crafting recipes." , type = "Button" , button_label = "Execute" , cmd = function() BD.Cheats.Crafting.AddRareRecipes() end },
    { id = "Crafting.AddUncommonRecipes" , name = "Add Uncommon Recipes" , parent = "Crafting" , description = "Adds all uncommon crafting recipes." , type = "Button" , button_label = "Execute" , cmd = function() BD.Cheats.Crafting.AddUncommonRecipes() end },
    { id = "Crafting.AddCommonRecipes" , name = "Add Common Recipes" , parent = "Crafting" , description = "Adds all common crafting recipes." , type = "Button" , button_label = "Execute" , cmd = function() BD.Cheats.Crafting.AddCommonRecipes() end },
    { id = "Crafting.AddModRecipes" , name = "Add Mod Recipes" , parent = "Crafting" , description = "Adds all mod recipes (clothing + cyberware + weapon mods)." , type = "Button" , button_label = "Execute" , cmd = function() BD.Cheats.Crafting.AddModRecipes() end },
    { id = "Crafting.AddMedRecipes" , name = "Add Medicine Recipes" , parent = "Crafting" , description = "Adds all medicine recipes." , type = "Button" , button_label = "Execute" , cmd = function() BD.Cheats.Crafting.AddMedRecipes() end },
    { id = "Crafting.AddGrenadeRecipes" , name = "Add Grenade Recipes" , parent = "Crafting" , description = "Adds all grenade recipes." , type = "Button" , button_label = "Execute" , cmd = function() BD.Cheats.Crafting.AddGrenadeRecipes() end },
    { id = "Johnny.AddItems" , name = "Add Johnny's Items" , parent = "Crafting" , description = "Adds Johnny's Legendary Items and his Porsche." , type = "Button" , button_label = "Execute" , cmd = function() BD.Cheats.Johnny.AddItems() end },
    { id = "Legend.Create" , name = "Legendize Equipped Items" , parent = "Crafting" , description = "Makes all equipped items legendary with max stats." , type = "Button" , button_label = "Execute" , cmd = function() BD.Cheats.Legend.Create() end },
    { id = "ItemSets.AddAllSets" , name = "Add All Item Sets" , parent = "ItemSets" , description = "Adds All Item Sets Listed Below." , type = "Button" , button_label = "Execute" , cmd = function() BD.Cheats.ItemSets.AddAllSets() end },
    { id = "ItemSets.AddSetCorpo" , name = "Add Corpo Set" , parent = "ItemSets" , description = "Adds the \"Corpo\" item set." , type = "Button" , button_label = "Execute" , cmd = function() BD.Cheats.ItemSets.AddSetCorpo() end },
    { id = "ItemSets.AddSetFixer" , name = "Add Fixer Set" , parent = "ItemSets" , description = "Adds the \"Fixer\" item set." , type = "Button" , button_label = "Execute" , cmd = function() BD.Cheats.ItemSets.AddSetFixer() end },
    { id = "ItemSets.AddSetMaxTac" , name = "Add MaxTac Set" , parent = "ItemSets" , description = "Adds the \"MaxTac\" item set." , type = "Button" , button_label = "Execute" , cmd = function() BD.Cheats.ItemSets.AddSetMaxTac() end },
    { id = "ItemSets.AddSetMedia" , name = "Add Media Set" , parent = "ItemSets" , description = "Adds the \"Media\" item set." , type = "Button" , button_label = "Execute" , cmd = function() BD.Cheats.ItemSets.AddSetMedia() end },
    { id = "ItemSets.AddSetNetrunner" , name = "Add Netrunner Set" , parent = "ItemSets" , description = "Adds the \"Netrunner\" item set." , type = "Button" , button_label = "Execute" , cmd = function() BD.Cheats.ItemSets.AddSetNetrunner() end },
    { id = "ItemSets.AddSetNomad" , name = "Add Nomad Set" , parent = "ItemSets" , description = "Adds the \"Nomad\" item set." , type = "Button" , button_label = "Execute" , cmd = function() BD.Cheats.ItemSets.AddSetNomad() end },
    { id = "ItemSets.AddSetPolice" , name = "Add Police Set" , parent = "ItemSets" , description = "Adds the \"Police\" item set." , type = "Button" , button_label = "Execute" , cmd = function() BD.Cheats.ItemSets.AddSetPolice() end },
    { id = "ItemSets.AddSetRocker" , name = "Add Rocker Set" , parent = "ItemSets" , description = "Adds the \"Rocker\" item set." , type = "Button" , button_label = "Execute" , cmd = function() BD.Cheats.ItemSets.AddSetRocker() end },
    { id = "ItemSets.AddSetSolo" , name = "Add Solo Set" , parent = "ItemSets" , description = "Adds the \"Solo\" item set." , type = "Button" , button_label = "Execute" , cmd = function() BD.Cheats.ItemSets.AddSetSolo() end },
    { id = "ItemSets.AddSetTechie" , name = "Add Techie Set" , parent = "ItemSets" , description = "Adds the \"Techie\" item set." , type = "Button" , button_label = "Execute" , cmd = function() BD.Cheats.ItemSets.AddSetTechie() end },
    { id = "ItemSets.AddSetVCorpo" , name = "Add V's Corpo Set" , parent = "ItemSets" , description = "Adds \"V's Corpo\" item set." , type = "Button" , button_label = "Execute" , cmd = function() BD.Cheats.ItemSets.AddSetVCorpo() end },
    { id = "ItemSets.AddSetVNomad" , name = "Add V's Nomad Set" , parent = "ItemSets" , description = "Adds \"V's Nomad\" item set." , type = "Button" , button_label = "Execute" , cmd = function() BD.Cheats.ItemSets.AddSetVNomad() end },
    { id = "ItemSets.AddSetVStreetkid" , name = "Add V's Streetkid Set" , parent = "ItemSets" , description = "Adds \"V's Streetkid\" item set." , type = "Button" , button_label = "Execute" , cmd = function() BD.Cheats.ItemSets.AddSetVStreetkid() end },
    { id = "ItemSets.AddSetVEpilogue" , name = "Add V's Epilogue Set" , parent = "ItemSets" , description = "Adds \"V's Epilogue\" item set." , type = "Button" , button_label = "Execute" , cmd = function() BD.Cheats.ItemSets.AddSetVEpilogue() end },
    { id = "ItemSets.AddSetVMisc" , name = "Add V's Misc Set" , parent = "ItemSets" , description = "Adds \"the rest\" of V's default gear." , type = "Button" , button_label = "Execute" , cmd = function() BD.Cheats.ItemSets.AddSetVMisc() end },
    { id = "Cyberware.AddAllCW" , name = "Add All Cyberware" , parent = "Cyberware" , description = "Adds all Cyberware items (all qualities)." , type = "Button" , button_label = "Execute" , cmd = function() BD.Cheats.Cyberware.AddAllCW() end },
    { id = "Cyberware.AddIconicCW" , name = "Add Iconic Cyberware" , parent = "Cyberware" , description = "Adds all iconic Cyberware items." , type = "Button" , button_label = "Execute" , cmd = function() BD.Cheats.Cyberware.AddIconicCW() end },
    { id = "Cyberware.AddLegendaryCW" , name = "Add Legendary Cyberware" , parent = "Cyberware" , description = "Adds all legendary Cyberware items." , type = "Button" , button_label = "Execute" , cmd = function() BD.Cheats.Cyberware.AddLegendaryCW() end },
    { id = "Cyberware.AddEpicCW" , name = "Add Epic Cyberware" , parent = "Cyberware" , description = "Adds all epic Cyberware items." , type = "Button" , button_label = "Execute" , cmd = function() BD.Cheats.Cyberware.AddEpicCW() end },
    { id = "Cyberware.AddRareCW" , name = "Add Rare Cyberware" , parent = "Cyberware" , description = "Adds all rare Cyberware items." , type = "Button" , button_label = "Execute" , cmd = function() BD.Cheats.Cyberware.AddRareCW() end },
    { id = "Cyberware.AddUncommonCW" , name = "Add Uncommon Cyberware" , parent = "Cyberware" , description = "Adds all uncommon Cyberware items." , type = "Button" , button_label = "Execute" , cmd = function() BD.Cheats.Cyberware.AddUncommonCW() end },
    { id = "Cyberware.AddCommonCW" , name = "Add Common Cyberware" , parent = "Cyberware" , description = "Adds all common Cyberware items." , type = "Button" , button_label = "Execute" , cmd = function() BD.Cheats.Cyberware.AddCommonCW() end },
    { id = "Facts.SkippyMode" , name = "Set Skippy's Mode" , parent = "Facts" , description = "Sets Skippy to \"Stone Cold Killer\" mode or \"Puppy-Loving Pacifist\" mode." , type = "Toggle" , button_label1 = "Killer" , button_label2 = "Pacifist" , cmd = function(value) if value then BD.Cheats.Facts.SetSkippyToPLP() else BD.Cheats.Facts.SetSkippyToSCK() end end },
    { id = "Facts.SkippyAttitude" , name = "Set Skippy's Attitude" , parent = "Facts" , description = "Sets Skippy to being \"Friendly\" or \"Angry\"." , type = "Toggle" , button_label1 = "Angry" , button_label2 = "Friendly" , cmd = function(value) if value then BD.Cheats.Facts.SetSkippyToFriendly() else BD.Cheats.Facts.SetSkippyToHostile() end end },
    { id = "Facts.JackieBody" , name = "Set Jackie's Fate" , parent = "Facts" , description = "Select where you sent Jackie's body." , type = "Select" , options = "Send to victor\0Send to Welles\0Left in the Car\0" , cmd = function(value) if value == 0 then BD.Cheats.Facts.SendJackieToViktor() elseif value == 1 then BD.Cheats.Facts.SendJackieToWelles() elseif value == 2 then BD.Cheats.Facts.LeftJackieInCar() end end },
    { id = "Facts.GoroFate" , name = "Set Goro's Fate" , parent = "Facts" , description = "Set Takemura to alive (you saved him) or dead (you left him to die)." , type = "Toggle" , button_label1 = "Dead" , button_label2 = "Alive" , cmd = function(value) if value then BD.Cheats.Facts.SetGoroAlive() else BD.Cheats.Facts.SetGoroDead() end end },
    { id = "Facts.SetFingersToFriendly" , name = "Set Fingers To Friendly" , parent = "Facts" , description = "Fingers M.D. is now friendly." , type = "Button" , button_label = "Execute" , cmd = function() BD.Cheats.Facts.SetFingersToFriendly() end },
    { id = "Facts.SetJudyRomance" , name = "Set Judy Romance" , parent = "Facts" , description = "Judy is now romanceable." , type = "Button" , button_label = "Execute" , cmd = function() BD.Cheats.Facts.SetJudyRomance() end },
    { id = "Facts.SetRiverRomance" , name = "Set River Romance" , parent = "Facts" , description = "River is now romanceable." , type = "Button" , button_label = "Execute" , cmd = function() BD.Cheats.Facts.SetRiverRomance() end },
    -- { id = "Facts.SetPanamRomance" , name = "Set Panam Romance" , parent = "Facts" , description = "Panam is now romanceable." , type = "Button" , button_label = "Execute" , cmd = function() BD.Cheats.Facts.SetPanamRomance() end },
    { id = "Facts.SetKerryRomance" , name = "Set Kerry Romance" , parent = "Facts" , description = "Kerry is now romanceable." , type = "Button" , button_label = "Execute" , cmd = function() BD.Cheats.Facts.SetKerryRomance() end },
    { id = "Facts.SetJohnnyAsFriend" , name = "Set Johnny As Friend" , parent = "Facts" , description = "Unlock Johnny's secret ending." , type = "Button" , button_label = "Execute" , cmd = function() BD.Cheats.Facts.SetJohnnyAsFriend() end },
    { id = "Shopper.SellJunk" , name = "Sell Junk" , parent = "Utilities" , description = "\"Sells\" all common junk items from players inventory by removing\nthem and adding appropriate amount of Eddies back." , type = "Button" , button_label = "Execute" , cmd = function() BD.Shopper.SellJunk() end },
    { id = "Shopper.SellAlcohol" , name = "Sell Alcohol" , parent = "Utilities" , description = "As above but for alcohol (consumables)." , type = "Button" , button_label = "Execute" , cmd = function() BD.Shopper.SellAlcohol() end },
    { id = "Shopper.SellJewellery" , name = "Sell Jewellery" , parent = "Utilities" , description = "As above but for jewellery (pricier junk)." , type = "Button" , button_label = "Execute" , cmd = function() BD.Shopper.SellJewellery() end },
    { id = "Shopper.SellAllUselessItems" , name = "Sell All Useless Items" , parent = "Utilities" , description = "As above but all at the same time." , type = "Button" , button_label = "Execute" , cmd = function() BD.Shopper.SellAllUselessItems() end },
    { id = "Saves.DisableAutosave" , name = "Disable Autosave" , parent = "Saves" , description = "Disables auto saving." , type = "Button" , button_label = "Execute" , cmd = function() BD.Saves.DisableAutosave() end },
    { id = "Saves.DecreaseAutosaves" , name = "Decrease Autosaves" , parent = "Saves" , description = "Decreases time between auto saves." , type = "Button" , button_label = "Execute" , cmd = function() BD.Saves.DecreaseAutosaves() end },
    { id = "Saves.IncreaseAutosaves" , name = "Increase Autosaves" , parent = "Saves" , description = "Increases time between auto saves." , type = "Button" , button_label = "Execute" , cmd = function() BD.Saves.IncreaseAutosaves() end },
    { id = "Saves.IncreaseQuicksaves" , name = "Increase Quicksaves" , parent = "Saves" , description = "Increase Quicksave slots to 10." , type = "Button" , button_label = "Execute" , cmd = function() BD.Saves.IncreaseQuicksaves() end },
    { id = "Vehicles.GetAll" , name = "Get All Vehicles" , parent = "Vehicles" , description = "Grants you all ownable player vehicles." , type = "Button" , button_label = "Execute" , cmd = function() BD.Vehicles.GetAll() end },
    { id = "Vehicles.PreventKnockdown", name = "Prevent Vehicle Knock Down" , parent = "Vehicles" , description = "Prevent getting knocked down by vehicles" , type = "Button" , button_label = "Execute" , cmd = function() BD.Vehicles.PreventKnockdown() end }
  }
}

return Protocols
