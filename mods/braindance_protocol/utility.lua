local Utilities = {}

function Utilities.StartProtocol(name)
    print("---------------------------------------------------------------------")
    print(string.format("Executing Protocol: %s", name))
    print("---------------------------------------------------------------------")
end

function Utilities.FinishProtocol(name)
    print("---------------------------------------------------------------------")
    print(string.format("Finished Protocol: %s", name))
    print("---------------------------------------------------------------------")
    print("")
end

function Utilities.AddItem(item, quantity)
    Game.AddToInventory(string.format("Items.%s", item), quantity)
end

function Utilities.SetLevel(name, value)
    Game.SetLevel(string.format("%s", name), value)
end

function Utilities.ModifyStat(name, value)
    Game.ModStatPlayer(string.format("%s", name), value)
end

function Utilities.AddStatModifier(name, value, modType)
    Game.AddStatModifier(string.format("%s", name), value, modType)
end

return Utilities
