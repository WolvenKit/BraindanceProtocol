# BraindanceProtocol

A collection of Lua scripts to modify your Cyberpunk 2077 experience.

## Requirements

- Requires v1.8.2 of [CyberEngineTweaks](https://github.com/yamashi/CyberEngineTweaks/tree/v1.8.2).
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
BD.Cheats.Crafting.AddAll() -- Add all Recipes & Materials
BD.Cheats.Crafting.AddLegendaryMaterials(quantity) -- Add specified amount of legendary crafting materials
BD.Cheats.Crafting.AddLegendaryRecipes() -- Adds all legendary crafting recipes.
BD.Cheats.Johnny.AddItems() -- Adds Johnny's Legendary Items and his Porsche.
BD.Cheats.Legend.Create() -- Makes all equipped items legendary with max stats.

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
