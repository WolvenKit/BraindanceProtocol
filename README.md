# BraindanceProtocol

A collection of Lua scripts to modify your Cyberpunk 2077 experience.

## Requirements

- Requires v1.8.3 of [CyberEngineTweaks](https://github.com/yamashi/CyberEngineTweaks/tree/v1.8.3).
  - For help installing CyberEngineTweaks, see this [Installation page on the wiki](https://wiki.cybermods.net/cyber-engine-tweaks/getting-started/installing).
- Version 1.0.6 of Cyberpunk 2077

## Installation

Drop `mods` folder into `bin\x64\plugins\cyber_engine_tweaks\`

## In-Game Lua Console

```lua
BD = GetMod("braindance_protocol")
```

Following that, all below commands will be available.

## Activating Protocols

```lua
-- Cheats
BD.Cheats.Platform.UnlockAllAchievements() -- Unlock all achievements on your platform (Steam / GoG)
BD.Cheats.Player.MaxOut() -- Max Level, Attributes, Skill Points, Money,
BD.Cheats.Player.Respec() -- Respec attributes and perks
BD.Cheats.Player.GodMode() -- Gives you pseudo "god mode". Permanent to your SaveFile
BD.Cheats.Player.AddMoney(amount) -- Gives the player specified amount of money. If no amount is specified, gives you 999999 money.

-- Crafting Recipes
BD.Cheats.Crafting.AddAll() -- Add all Recipes & Materials
BD.Cheats.Crafting.AddLegendaryMaterials(quantity) -- Add specified amount of legendary crafting materials
BD.Cheats.Crafting.AddLegendaryRecipes() -- Adds all legendary crafting recipes.
BD.Cheats.Crafting.AddEpicRecipes() -- Adds all epic crafting recipes.
BD.Cheats.Crafting.AddRareRecipes() -- Adds all rare crafting recipes.
BD.Cheats.Crafting.AddUncommonRecipes() -- Adds all uncommon crafting recipes.
BD.Cheats.Crafting.AddCommonRecipes() -- Adds all common crafting recipes.
BD.Cheats.Crafting.AddModRecipes() -- Adds all mod recipes (clothing + cyberware + weapon mods)
BD.Cheats.Crafting.AddMedRecipes() -- Adds all medicine recipes
BD.Cheats.Crafting.AddGrenadeRecipes() -- Adds all grenade recipes
BD.Cheats.Johnny.AddItems() -- Adds Johnny's Legendary Items and his Porsche.
BD.Cheats.Legend.Create() -- Makes all equipped items legendary with max stats.

-- Item Sets
BD.Cheats.ItemSets.AddAllSets() -- Adds All Item Sets Listed Below
BD.Cheats.ItemSets.AddSetCorpo() -- Adds the "Corpo" item set
BD.Cheats.ItemSets.AddSetFixer() -- Adds the "Fixer" item set
BD.Cheats.ItemSets.AddSetMaxTac() -- Adds the "MaxTac" item set
BD.Cheats.ItemSets.AddSetMedia() -- Adds the "Media" item set
BD.Cheats.ItemSets.AddSetNetrunner() -- Adds the "Netrunner" item set
BD.Cheats.ItemSets.AddSetNomad() -- Adds the "Nomad" item set
BD.Cheats.ItemSets.AddSetPolice() -- Adds the "Police" item set
BD.Cheats.ItemSets.AddSetRocker() -- Adds the "Rocker" item set
BD.Cheats.ItemSets.AddSetSolo() -- Adds the "Solo" item set
BD.Cheats.ItemSets.AddSetTechie() -- Adds the "Techie" item set
BD.Cheats.ItemSets.AddSetVCorpo() -- Adds "V's Corpo" item set
BD.Cheats.ItemSets.AddSetVNomad() -- Adds "V's Nomad" item set
BD.Cheats.ItemSets.AddSetVStreetkid() -- Adds "V's Streetkid" item set
BD.Cheats.ItemSets.AddSetVEpilogue() -- Adds "V's Epilogue" item set
BD.Cheats.ItemSets.AddSetVMisc() -- Adds "the rest" of V's default gear

-- Cyberware Items
BD.Cheats.Cyberware.AddAllCW() -- Adds all Cyberware items (all qualities)
BD.Cheats.Cyberware.AddIconicCW() -- Adds all iconic Cyberware items
BD.Cheats.Cyberware.AddLegendaryCW() -- Adds all legendary Cyberware items
BD.Cheats.Cyberware.AddEpicCW() -- Adds all epic Cyberware items
BD.Cheats.Cyberware.AddRareCW() -- Adds all rare Cyberware items
BD.Cheats.Cyberware.AddUncommonCW() -- Adds all uncommon Cyberware items 
BD.Cheats.Cyberware.AddCommonCW() -- Adds all common Cyberware items

-- Facts [Spoiler Alert!]
BD.Cheats.Facts.SetSkippyToSCK() -- Sets Skippy to "Stone Cold Killer" mode
BD.Cheats.Facts.SetSkippyToPLP() -- Sets Skippy to "Puppy-Loving Pacifist" mode
BD.Cheats.Facts.SetSkippyToFriendly() -- Sets Skippy to being "Friendly" 
BD.Cheats.Facts.SetSkippyToHostile() -- Sets Skippy to being "Hostile"

BD.Cheats.Facts.SendJackieToViktor() -- You sent Jackie to Viktor
BD.Cheats.Facts.SendJackieToWelles() -- You sent Jackie to Mama Welles
BD.Cheats.Facts.LeftJackieInCar() -- You left Jackie in the car

BD.Cheats.Facts.SetGoroAlive() -- Takemura is alive (you saved him)
BD.Cheats.Facts.SetGoroDead() -- Takemura is dead (you left him to die)

BD.Cheats.Facts.SetFingersToFriendly() -- Fingers M.D. is now friendly

BD.Cheats.Facts.SetJudyRomance() -- Judy is now romanceable
BD.Cheats.Facts.SetRiverRomance() -- River is now romanceable
BD.Cheats.Facts.SetPanamRomance() -- Panam is now romanceable
BD.Cheats.Facts.SetKerryRomance() -- Kerry is now romanceable

BD.Cheats.Facts.SetJohnnyAsFriend() -- Unlock Johnny's secret ending

-- Utilities
BD.Shopper.SellJunk() -- "Sells" all common junk items from players inventory by removing them and adding appropriate amount of Eddies back.
BD.Shopper.SellAlcohol() -- As above but for alcohol (consumables).
BD.Shopper.SellJewellery() -- As above but for jewellery (pricier junk).
BD.Shopper.SellAllUselessItems() -- As above but all at the same time.

-- Saves
BD.Saves.DisableAutosave() -- Disables auto saving.
BD.Saves.DecreaseAutosaves() -- Decreases time between auto saves.
BD.Saves.IncreaseAutosaves() -- Increases time between auto saves.
BD.Saves.IncreaseQuicksaves() -- Increase Quicksave slots to 10

-- Vehicles
BD.Vehicles.GetAll() -- Grants you all ownable player vehicles.
```
