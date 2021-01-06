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
        Head = 1,
        Face = 1,
        InnerChest = 1,
        OuterChest = 1,
        UnderwearTop = 1,
        UnderwearBottom = 1,
        Feet = 1,        
        Legs = 1,
        Weapon = 3,    
        QuickSlot = 3,
        Consumable = 3,
        Splinter = 1,
        PersonalLink = 1,
        Gadget = 1,
        LegsCW = 3,
        FrontalCortexCW = 3,
        EyesCW = 1,
        IntegumentarySystemCW = 3,
        MusculoSkeletalSystemCW = 2,
        NervousSystemCW = 2,
        CardiovascularSystemCW = 3,
        ImmuneSystemCW = 2,
        IntegumentarySystemCW = 3,
        HandsCW = 2,
        ArmsCW = 2,
        AbilityCW = 6,
        SystemReplacementCW = 1,    
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
