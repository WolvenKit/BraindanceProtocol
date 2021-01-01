local Inventory = {}

local ItemHashes = "braindance_protocol/data/ItemHashes.txt"

function Inventory.AddItem(item, quantity)
    Game.AddToInventory(string.format("Items.%s", item), quantity)
end

function Inventory.AddAllItems()
	for line in io.lines(ItemHashes) do
		Game.AddToInventory(line, amount or 1)
	end
end

function Inventory.AddFilteredItems(filter, amount)
	for line in io.lines(ItemHashes) do
		if string.match(line, filter) then
			Game.AddToInventory(line, amount or 1)
		end
	end
end

return Inventory
