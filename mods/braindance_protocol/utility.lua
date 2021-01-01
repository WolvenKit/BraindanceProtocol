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

return Utilities
