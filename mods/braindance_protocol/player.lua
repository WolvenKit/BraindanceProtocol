print("Player")

local Player = {}

function Player.SetLevel(name, value)
    Game.SetLevel(string.format("%s", name), value)
end

function Player.ModifyStat(name, value)
    Game.ModStatPlayer(string.format("%s", name), value)
end

function Player.AddStatModifier(name, value, modType)
	modType = modType or "Additive"
	
    Game.AddStatModifier(string.format("%s", name), value, modType)
end

return Player
