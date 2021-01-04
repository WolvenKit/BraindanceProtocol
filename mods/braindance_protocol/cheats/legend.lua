local Legend = {
	rootPath = "plugins.cyber_engine_tweaks.mods.braindance_protocol."
}

local Utilities = require(Legend.rootPath.."utility")

function Legend.Create()
    local moduleName = "I Am Legend - Make all equipped gear Legendary with max stats."
    Utilities.StartProtocol(moduleName)

	player = Game.GetPlayer()
	ssc = Game.GetScriptableSystemsContainer()
	ts = Game.GetTransactionSystem()
	es = ssc:Get(CName.new('EquipmentSystem'))
	cs = ssc:Get(CName.new('CraftingSystem'))

	espd = es:GetPlayerData(player)
	espd['GetItemInEquipSlot2'] = espd['GetItemInEquipSlot;gamedataEquipmentAreaInt32']
	cs['SetItemLevel2'] = cs['SetItemLevel;gameItemData']

	local slots = {
		Face = 1,
		Feet = 1,
		Head = 1,
		InnerChest = 1,
		Legs = 1,
		OuterChest = 1,
		Weapon = 3
	}

	for k,v in pairs(slots) do
		for i=1,v do
			print('Upgrading item in ' .. k .. ' slot ' .. (i - 1))
			itemid = espd:GetItemInEquipSlot2(k, i - 1)
			if itemid.tdbid.hash ~= 0 then 
				itemdata = ts:GetItemData(player, itemid)
				cs:SetItemLevel2(itemdata)
				Game['gameRPGManager::ForceItemQuality;GameObjectgameItemDataCName'](player, itemdata, CName.new('Legendary'))
			end
		end
	end
	
    Utilities.FinishProtocol(moduleName)
end

return Legend
