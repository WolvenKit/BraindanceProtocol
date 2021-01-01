# BraindanceProtocol

A collection of LUA scripts to modify your Cyberpunk 2077 experience

## Available Tweaks

- Prevent _V_ from being knocked over by NPC vehicles
- Disable AutoSaves
- Increase AutoSaves increments
- Decrease AutoSaves increments

## Requirements

[CyberEngineTweaks](https://github.com/yamashi/CyberEngineTweaks#usage-and-configuration)

## Installation

Drop `mods` folder into `bin\x64`

## Usage

Inside of `bin\x64\mods\autoexec.lua` add the following:

```
s = [[
---------------------------------------------------------------------
Running mod autoexec scripts in order...
---------------------------------------------------------------------
]]

-- Load Order
local loadOrder = {
    "braindance"
}

-- Initialise Mods
for i, mod in ipairs(loadOrder) do
    dofile(string.format( "%s_autoexec.lua", mod ))
end
```

## Configuration

Inside of `bin\x64\mods\braindance_autoexec.lua` configure the protocols you wish to run.
