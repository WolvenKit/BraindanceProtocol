local Ammo = {
    counter = 0,
    isInfiniteAmmo = false,
    isInfiniteAmmoNoReload = false,
    lastMagazineAmmoCount = 0,
    lastActiveWeapon = nil
}

local Utilities = require("utility")
local Inventory = require("inventory")

-- All credits to Nexusmods user "TheBs65422" for the infinite ammo script
function Ammo.AddAmmo()
    local moduleName = "Refill All Ammunition"
    Utilities.StartProtocol(moduleName)

    Game.AddToInventory("Ammo.HandgunAmmo", 1000)
    Game.AddToInventory("Ammo.ShotgunAmmo", 1000)
    Game.AddToInventory("Ammo.RifleAmmo", 1000)
    Game.AddToInventory("Ammo.SniperRifleAmmo", 1000)
    Game.AddToInventory("Ammo.Special", 1000)

    Utilities.FinishProtocol(moduleName)
end

function Ammo.GetHashAndLength(itemID)
    if itemID == nil then
        return nil
    end

    local hash = tostring(itemID):match("= (%g+),")
    local length = tostring(itemID):match("= (%g+) }")
    local result = nil

    if hash ~= nil and length ~= nil then
        result = { hash, length }
    end

    return result
end

function Ammo.IsNewWeapon(weapon)
    if weapon == nil then
        return false
    elseif Ammo.lastActiveWeapon == nil then
        return true
    else
        local currentWeaponData = Ammo.GetHashAndLength(weapon:GetItemID())

        if currentWeaponData == nil then
            return false
        end

        local lastWeaponData = Ammo.GetHashAndLength(Ammo.lastActiveWeapon.itemID)

        if lastWeaponData == nil then
            return true
        end

        if currentWeaponData[1] ~= lastWeaponData[1] and currentWeaponData[2] ~= lastWeaponData[2] then
            return true
        else
            return false
        end
    end
end

function Ammo.SetNewWeapon(weapon)
    if weapon ~= nil and Game ~= nil then
        local statsSystem = Game.GetStatsSystem()
        local weaponItemData = weapon:GetItemData()

        if statsSystem ~= nil and weaponItemData ~= nil then
            local weaponStatsObjectID = weaponItemData:GetStatsObjectID()

            if weaponStatsObjectID ~= nil then
                Ammo.lastActiveWeapon = {}
        
                Ammo.lastActiveWeapon.statsObjectID = weaponStatsObjectID
                Ammo.lastActiveWeapon.itemID = weapon:GetItemID()
                Ammo.lastActiveWeapon.numShotsToFire = statsSystem:GetStatValue(weaponStatsObjectID, Game.EnumValueFromString("gamedataStatType", "NumShotsToFire"))
            end
        end
    end
end

function Ammo.RestoreLastWeaponStats(isModifiedStats)
    if Ammo.lastActiveWeapon ~= nil then
        if isModifiedStats then
            local statModifier = Game['gameRPGManager::CreateStatModifier;gamedataStatTypegameStatModifierTypeFloat'](Game.EnumValueFromString("gamedataStatType", "NumShotsToFire"), Game.EnumValueFromString("gameStatModifierType", "Additive"), Ammo.lastActiveWeapon.numShotsToFire)

            if statModifier ~= nil then
                local statsSystem = Game.GetStatsSystem()

                if statsSystem ~= nil then
                    statsSystem:AddModifier(Ammo.lastActiveWeapon.statsObjectID, statModifier)
                end
            end
        end

        Ammo.lastActiveWeapon = nil
        Ammo.lastMagazineAmmoCount = 0
    end
end

function Ammo.RefillAmmo(weapon, amount)
    if weapon ~= nil then
        local ammoType = Game['gameweaponObject::GetAmmoType;WeaponObject'](weapon)

        if ammoType ~= nil and Game ~= nil then
            local transactionSystem = Game.GetTransactionSystem()
            local player = Game.GetPlayer()

            if transactionSystem ~= nil and player ~= nil then
                transactionSystem:GiveItem(player, ammoType, amount)
            end
        end
    end
end

function Ammo.InfiniteAmmoToggle()
    local moduleName = "Auto Refill Ammo Toggle"
    Utilities.StartProtocol(moduleName)
	
    if Ammo.isInfiniteAmmo then
        Ammo.RestoreLastWeaponStats(false)
    end

    Ammo.isInfiniteAmmo = not Ammo.isInfiniteAmmo

    if Ammo.isInfiniteAmmo and Ammo.isInfiniteAmmoNoReload then
        Ammo.InfiniteAmmoNoReloadToggle()
    end
    print("Auto Refill:", Ammo.isInfiniteAmmo)
	Utilities.FinishProtocol(moduleName)
end

function Ammo.InfiniteAmmoNoReloadToggle()
    local moduleName = "No Reload Toggle"
    Utilities.StartProtocol(moduleName)
	
    if Ammo.isInfiniteAmmoNoReload then
        Ammo.RestoreLastWeaponStats(true)
    end

    Ammo.isInfiniteAmmoNoReload = not Ammo.isInfiniteAmmoNoReload

    if Ammo.isInfiniteAmmoNoReload and Ammo.isInfiniteAmmo then
        Ammo.InfiniteAmmoToggle()
    end
    print("No Reload:", Ammo.isInfiniteAmmoNoReload)
	Utilities.FinishProtocol(moduleName)
end

function Ammo.OnUpdateAmmo(deltaTime)
    if (Ammo.isInfiniteAmmo or Ammo.isInfiniteAmmoNoReload) and Game ~= nil then
        Ammo.counter = Ammo.counter + deltaTime
        if (Ammo.counter > 0.5) then
            Ammo.counter = Ammo.counter - 0.5

            local player = Game.GetPlayer()

            if player ~= nil then
                local activeWeapon = Game.GetTransactionSystem():GetItemInSlot(player, TweakDBID.new('AttachmentSlots.WeaponRight'))
                
                if activeWeapon ~= nil and Game['gameweaponObject::IsRanged;ItemID'](activeWeapon:GetItemID()) then
                    if Ammo.isInfiniteAmmo then
                        Ammo.SetInfiniteAmmo(activeWeapon)
                    elseif Ammo.isInfiniteAmmoNoReload then
                        Ammo.SetInfiniteAmmoNoReload(activeWeapon)
                    end
                end
            end
        end
    end
end

function Ammo.SetInfiniteAmmo(weapon)
    if weapon ~= nil and Game ~= nil then
        if Ammo.IsNewWeapon(weapon) then
            Ammo.RestoreLastWeaponStats(false)
            Ammo.SetNewWeapon(weapon)
        end

        if Ammo.lastMagazineAmmoCount < 1 then
            Ammo.lastMagazineAmmoCount = Game['gameweaponObject::GetMagazineCapacity;WeaponObject'](weapon)
        end

        local currentMagazineAmmoCount = Game['gameweaponObject::GetMagazineAmmoCount;WeaponObject'](weapon)

        if currentMagazineAmmoCount < Ammo.lastMagazineAmmoCount then
            Ammo.RefillAmmo(weapon, Ammo.lastMagazineAmmoCount - currentMagazineAmmoCount)

            Ammo.lastMagazineAmmoCount = currentMagazineAmmoCount
        end
    end
end

function Ammo.SetInfiniteAmmoNoReload(weapon)
    if weapon ~= nil and Ammo.IsNewWeapon(weapon) and Game ~= nil then
        Ammo.RestoreLastWeaponStats(true)
        Ammo.SetNewWeapon(weapon)

        if Ammo.lastActiveWeapon ~= nil then
            local statModifier = Game['gameRPGManager::CreateStatModifier;gamedataStatTypegameStatModifierTypeFloat'](Game.EnumValueFromString("gamedataStatType", "NumShotsToFire"), Game.EnumValueFromString("gameStatModifierType", "Additive"), -Ammo.lastActiveWeapon.numShotsToFire)
            local statsSystem = Game.GetStatsSystem()

            if statModifier ~= nil and statsSystem ~= nil then
                statsSystem:AddModifier(Ammo.lastActiveWeapon.statsObjectID, statModifier)
            end
        end
    end
end

return Ammo