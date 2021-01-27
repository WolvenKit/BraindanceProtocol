local Legend = {
	rootPath = "plugins.cyber_engine_tweaks.mods.braindance_protocol."
}

local Utilities = require(Legend.rootPath.."utility")

function Legend.UpgradeWeapons()
    local moduleName = "All Equipped Weapons Are Now Legendary With Max Stats"
    Utilities.StartProtocol(moduleName)
	
	player = Game.GetPlayer() 
	ssc = Game.GetScriptableSystemsContainer() 
	ts = Game.GetTransactionSystem() 
	ss = Game.GetStatsSystem() 
	es = ssc:Get(CName.new('EquipmentSystem')) 
	espd = es:GetPlayerData(player) 
	espd['GetItemInEquipSlot2'] = espd['GetItemInEquipSlot;gamedataEquipmentAreaInt32'] 
	playerPLValue = ss:GetStatValue(player:GetEntityID(), 'PowerLevel') 
	
	local slots = { 
		Weapon = 3 
	} 
	
	for k,v in pairs(slots) do 
		for i=1,v do 
		print('Upgrading item in ' .. k .. ' slot ' .. (i - 1))
		itemid = espd:GetItemInEquipSlot2(k, i - 1) 
		if itemid.tdbid.hash ~= 0 then 
			itemdata = ts:GetItemData(player, itemid) 
			statObj = itemdata:GetStatsObjectID() end 
			itemLevel = ss:GetStatValue(statObj, 'ItemLevel') 
			powerLevel = ss:GetStatValue(statObj, 'PowerLevel') 
			addItemLevel = 0 if itemLevel < math.floor(playerPLValue) * 10 then 
			addItemLevel = math.floor(playerPLValue - powerLevel) * 10 + 5 
			levelMod = Game['gameRPGManager::CreateStatModifier;gamedataStatTypegameStatModifierTypeFloat']('ItemLevel', 'Additive', addItemLevel) 
			ss:AddSavedModifier(statObj, levelMod) end 
			itemQuality = ss:GetStatValue(statObj, 'Quality') 
			newItemQuality = itemQuality if itemQuality < 5 then 
			newItemQuality = 4 ss:RemoveAllModifiers(statObj, 'Quality', true) 
			qualityMod = Game['gameRPGManager::CreateStatModifier;gamedataStatTypegameStatModifierTypeFloat']('Quality', 'Additive', newItemQuality) 
			ss:AddSavedModifier(statObj, qualityMod) 
			end 
		end 
	end
	
	Utilities.FinishProtocol(moduleName)
end


function Legend.UpgradeArmor()
    local moduleName = "All Equipped Armor Are Now Legendary With Max Stats"
    Utilities.StartProtocol(moduleName)
	
	player = Game.GetPlayer() 
	ssc = Game.GetScriptableSystemsContainer() 
	ts = Game.GetTransactionSystem() 
	ss = Game.GetStatsSystem() 
	es = ssc:Get(CName.new('EquipmentSystem')) 
	espd = es:GetPlayerData(player) 
	espd['GetItemInEquipSlot2'] = espd['GetItemInEquipSlot;gamedataEquipmentAreaInt32'] 
	playerPLValue = ss:GetStatValue(player:GetEntityID(), 'PowerLevel') 
	
	local slots = { 
		Head = 1, 
		Face = 1, 
		InnerChest = 1, 
		OuterChest = 1, 
		Feet = 1, 
		Legs = 1, 
		Outfit = 1 
	} 

	for k,v in pairs(slots) do 
		for i=1,v do 
		print('Upgrading item in ' .. k .. ' slot ' .. (i - 1))
		itemid = espd:GetItemInEquipSlot2(k, i - 1) 
		if itemid.tdbid.hash ~= 0 then 
			itemdata = ts:GetItemData(player, itemid) 
			statObj = itemdata:GetStatsObjectID() end 
			itemLevel = ss:GetStatValue(statObj, 'ItemLevel') 
			powerLevel = ss:GetStatValue(statObj, 'PowerLevel') 
			addItemLevel = 0 if itemLevel < math.floor(playerPLValue) * 10 then 
			addItemLevel = math.floor(playerPLValue - powerLevel) * 10 + 5 
			levelMod = Game['gameRPGManager::CreateStatModifier;gamedataStatTypegameStatModifierTypeFloat']('ItemLevel', 'Additive', addItemLevel) 
			ss:AddSavedModifier(statObj, levelMod) end 
			itemQuality = ss:GetStatValue(statObj, 'Quality') 
			newItemQuality = itemQuality if itemQuality < 5 then 
			newItemQuality = 4 ss:RemoveAllModifiers(statObj, 'Quality', true) 
			qualityMod = Game['gameRPGManager::CreateStatModifier;gamedataStatTypegameStatModifierTypeFloat']('Quality', 'Additive', newItemQuality) 
			ss:AddSavedModifier(statObj, qualityMod) 
			end 
		end 
	end
	
	Utilities.FinishProtocol(moduleName)
end


function Legend.UpgradeMods()
    local moduleName = "All Non-Equipped Mods Are Now Legendary With Max Stats"
    Utilities.StartProtocol(moduleName)
	
	player = Game.GetPlayer() 
	ssc = Game.GetScriptableSystemsContainer() 
	ts = Game.GetTransactionSystem() 
	cs = ssc:Get(CName.new('CraftingSystem')) ok, 
	backpack_items = ts:GetItemList(player) 
	
	local modType = { 
		Prt_FabricEnhancer = true, 
		Prt_Mod = true, 
		Prt_Fragment = true, 
		Prt_Scope = true, 
		Prt_Muzzle = true 
	} 
	
	for i, v in ipairs(backpack_items) do 
		itemid = v:GetID() 
		itemdata = ts:GetItemData(player, v:GetID()) 
		vType = Game["gameRPGManager::GetItemType;ItemID"](itemid) if 
		modType[vType.value] then 
		cs['SetItemLevel2'] = cs['SetItemLevel;gameItemData'] 
		cs:SetItemLevel2(itemdata) Game['gameRPGManager::ForceItemQuality;GameObjectgameItemDataCName'](player, itemdata, CName.new('Legendary')) 
		end  
	end 
	
	Utilities.FinishProtocol(moduleName)
end


function Legend.UpgradeCW()
    local moduleName = "All Equipped Cyberware Are Now Legendary. NOTE: This is just for aesthetics. You should add the real items, from the other commands"
    Utilities.StartProtocol(moduleName)
	
	player = Game.GetPlayer() 
	ssc = Game.GetScriptableSystemsContainer() 
	ts = Game.GetTransactionSystem() 
	ss = Game.GetStatsSystem() 
	es = ssc:Get(CName.new('EquipmentSystem')) 
	espd = es:GetPlayerData(player) 
	espd['GetItemInEquipSlot2'] = espd['GetItemInEquipSlot;gamedataEquipmentAreaInt32'] 
	playerPLValue = ss:GetStatValue(player:GetEntityID(), 'PowerLevel') 
	
	local slots = { 
		FrontalCortexCW = 3, 
		EyesCW = 1, 
		CardiovascularSystemCW = 3, 
		ImmuneSystemCW = 2, 
		NervousSystemCW = 2, 
		IntegumentarySystemCW = 3, 
		SystemReplacementCW = 1, 
		MusculoskeletalSystemCW = 2, 
		HandsCW = 2, 
		ArmsCW = 2, 
		LegsCW = 3, 
		PersonalLink = 1, 
		Splinter = 1, 
		Gadget = 1, 
		AbilityCW = 6 
	} 
	
	for k,v in pairs(slots) do 
		for i=1,v do
		print('Upgrading item in ' .. k .. ' slot ' .. (i - 1))		
		itemid = espd:GetItemInEquipSlot2(k, i - 1) 
			if itemid.tdbid.hash ~= 0 then 
			itemdata = ts:GetItemData(player, itemid) 
			statObj = itemdata:GetStatsObjectID() end 
			itemLevel = ss:GetStatValue(statObj, 'ItemLevel') 
			powerLevel = ss:GetStatValue(statObj, 'PowerLevel') 
			addItemLevel = 0 if itemLevel < math.floor(playerPLValue) * 10 
			then addItemLevel = math.floor(playerPLValue - powerLevel) * 10 + 5 
			levelMod = Game['gameRPGManager::CreateStatModifier;gamedataStatTypegameStatModifierTypeFloat']('ItemLevel', 'Additive', addItemLevel) 
			ss:AddSavedModifier(statObj, levelMod) end 
			itemQuality = ss:GetStatValue(statObj, 'Quality') 
			newItemQuality = itemQuality if itemQuality < 5 then 
			newItemQuality = 4 ss:RemoveAllModifiers(statObj, 'Quality', true) 
			qualityMod = Game['gameRPGManager::CreateStatModifier;gamedataStatTypegameStatModifierTypeFloat']('Quality', 'Additive', newItemQuality) 
			ss:AddSavedModifier(statObj, qualityMod)
			end 
		end 
	end
	
	Utilities.FinishProtocol(moduleName)
end

function Legend.UpgradeAll()
    local moduleName = "Make all equipped gear Legendary with max stats - except equipped mods"
	Utilities.StartProtocol(moduleName)
	
	Legend.UpgradeWeapons()
	Legend.UpgradeArmor()
	Legend.UpgradeMods()
	--Legend.UpgradeCW()
	
    Utilities.FinishProtocol(moduleName)
end

return Legend