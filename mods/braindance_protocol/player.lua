local Player = {}

function Player.SetLevel(name, value)
    Game.SetLevel(string.format("%s", name), value)
end

function Player.ModifyStat(name, value)
    Game.ModStatPlayer(string.format("%s", name), value)
end

function Player.AddStatModifier(name, value, modType)
    Game.AddStatModifier(string.format("%s", name), value, modType)
end

return Player
