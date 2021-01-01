local Inventory = {}

function Inventory.AddItem(item, quantity)
    Game.AddToInventory(string.format("Items.%s", item), quantity)
end

return Inventory
