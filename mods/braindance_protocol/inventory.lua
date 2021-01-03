local Inventory = {}

local ItemHashes = "braindance_protocol/data/ItemHashes.txt"

function Inventory.AddItem(item, quantity)
	quantity = quantity or 1
	
    Game.AddToInventory(string.format("Items.%s", item), quantity)
end

function Inventory.AddAllItems(quantity)
	quantity = quantity or 1
	
	for line in io.lines(ItemHashes) do
		Game.AddToInventory(line, quantity)
	end
end

function Inventory.AddFilteredItems(filter, quantity)
	quantity = quantity or 1
	
	for line in io.lines(ItemHashes) do
		if string.match(line, filter) then
			Game.AddToInventory(line, quantity)
		end
	end
end

return Inventory
