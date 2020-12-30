# BraindanceProtocol

A collection of LUA scripts to modify your Cyberpunk 2077 experience

## Available Tweaks

- Prevent _V_ from being knocked over by NPC vehicles

## Installation

Drop `lua` folder into `bin\x64\`

## Requirements

[CyberEngineTweaks by Yamashi](https://github.com/yamashi/CyberEngineTweaks#usage-and-configuration)

## Usage

There are two ways of using the scripts

### Autoexec

Inside of `bin\x64\plugins\cyber_engine_tweaks\scripts\autoexec.lua` add the following at the end of the script:

```
Example = require("osm.examples.example")
Example.Hello()
```

### Manual

Open the console and run:

```
Example = require("osm.examples.example")
Example.Hello()
```

Your console should look similar to the snippet below:

```
> Example = require("osm.examples.example")
> Example.Hello()
Hello World
```