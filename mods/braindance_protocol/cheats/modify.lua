local Modify = {
	rootPath = "plugins.cyber_engine_tweaks.mods.braindance_protocol."
}

local Utilities = require(Modify.rootPath.."utility")

function Modify.Set(cat, slot, rarity)
    local moduleName = "Modify."
    Utilities.StartProtocol(moduleName)

	player = Game.GetPlayer()
	ssc = Game.GetScriptableSystemsContainer()
	ts = Game.GetTransactionSystem()
	es = ssc:Get(CName.new('EquipmentSystem'))
	cs = ssc:Get(CName.new('CraftingSystem'))

	espd = es:GetPlayerData(player)
	espd['GetItemInEquipSlot2'] = espd['GetItemInEquipSlot;gamedataEquipmentAreaInt32']
	cs['SetItemLevel2'] = cs['SetItemLevel;gameItemData']

	itemid = espd:GetItemInEquipSlot2(cat, slot)
	if itemid.tdbid.hash ~= 0 then 
		itemdata = ts:GetItemData(player, itemid)
		cs:SetItemLevel2(itemdata)
		Game['gameRPGManager::ForceItemQuality;GameObjectgameItemDataCName'](player, itemdata, CName.new(rarity))
	end
	
    Utilities.FinishProtocol(moduleName)
end

function Modify.RemoveQuestTags()
    local moduleName = "Removed Quest Tags From Items"
    Utilities.StartProtocol(moduleName)
	
		player = Game.GetPlayer() 
		ssc = Game.GetScriptableSystemsContainer() 
		ts = Game.GetTransactionSystem() 
		es = ssc:Get(CName.new('EquipmentSystem')) 
		espd = es:GetPlayerData(player) 
		espd['GetItemInEquipSlot2'] = espd['GetItemInEquipSlot;gamedataEquipmentAreaInt32'] 
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
				print('Removing quest tags ' .. k .. ' slot ' .. (i - 1)) 
				itemid = espd:GetItemInEquipSlot2(k, i - 1) if itemid.tdbid.hash ~= 0 then 
				itemdata = ts:GetItemData(player, itemid) if itemdata:HasTag("Quest") then 
				itemdata:RemoveDynamicTag("Quest") end 
				end 
			end 
		end
	
	Utilities.FinishProtocol(moduleName)
end

return Modify