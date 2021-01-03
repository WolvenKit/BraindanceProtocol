# BraindanceProtocol

A collection of LUA scripts to modify your Cyberpunk 2077 experience

## Available Tweaks

- Prevent _V_ from being knocked over by NPC vehicles
- Disable AutoSaves
- Increase AutoSaves increments
- Decrease AutoSaves increments
- Increase Quicksave slots available
- Toggle in-game rain
- Activate GodMode
- Give Player Johnny's Items
- Give Player lots of money
- Set Player to Max Level, Streetcred, Perk level, and Attribute level
- Give Player all Legendary recipies
- Unlock all player vehicles

## Requirements

[CyberEngineTweaks](https://github.com/yamashi/CyberEngineTweaks#usage-and-configuration)

## Installation

Drop `mods` folder into `bin\x64\plugins\cyber_engine_tweaks\`

## Pre-Requisites

Inside of `bin\x64\plugins\cyber_engine_tweaks\mods\autoexec.lua` (create it if it does not exist) add the following:

```
dofile(string.format( "braindance_autoexec.lua", mod ))
```

## Configuration

### Autorun Protocols

Inside of `bin\x64\plugins\cyber_engine_tweaks\mods\braindance_autoexec.lua` configure the protocols you wish to run.

### Manually Activate Protocols

```lua
-- Cheats
Cheats.Player.MaxOut() -- Max Level, Attributes, Skill Points, Money,
Cheats.Player.GodMode() -- Permanent to your SaveFile
Cheats.Crafting.AddAll() -- Add Recipes & Materials
Cheats.Johnny.AddItems() -- Adds Johnny's Legendary Items
```
