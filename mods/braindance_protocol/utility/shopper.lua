local Shopper = {
	rootPath = "plugins.cyber_engine_tweaks.mods.braindance_protocol."
}

local Utilities = require(Shopper.rootPath.."utility")
local Inventory = require(Shopper.rootPath.."inventory")

local alcohols = {
    "Items.Alcohol", -- Unnamed generic alcohol
    "Items.GoodQualityAlcohol", -- Unnamed generic alcohol
    "Items.GoodQualityAlcohol1", -- Donaghy's
    "Items.GoodQualityAlcohol2", -- Centzon Totochtin
    "Items.GoodQualityAlcohol3", -- Randver
    "Items.GoodQualityAlcohol4", -- AB-Synth
    "Items.GoodQualityAlcohol5", -- Champaradise
    "Items.GoodQualityAlcohol6", -- La Perle Des Alpes
    "Items.LowQualityAlcohol", -- Unnamed generic alcohol
    "Items.LowQualityAlcohol1", -- Abydos Classic
    "Items.LowQualityAlcohol2", -- Abydos King Size
    "Items.LowQualityAlcohol3", -- Broseph Ale
    "Items.LowQualityAlcohol4", -- Broseph Lager
    "Items.LowQualityAlcohol5", -- 21st Stout
    "Items.LowQualityAlcohol6", -- Bumelant
    "Items.LowQualityAlcohol7", -- Chirrisco
    "Items.LowQualityAlcohol8", -- Pitorro
    "Items.LowQualityAlcohol9", -- Tequila Especial
    "Items.MediumQualityAlcohol", -- Unnamed generic alcohol
    "Items.MediumQualityAlcohol1", -- Pingo Pálido
    "Items.MediumQualityAlcohol2", -- O'Dockin Whiskey
    "Items.MediumQualityAlcohol3", -- Bolshevik Vodka
    "Items.MediumQualityAlcohol4", -- Conine
    "Items.MediumQualityAlcohol5", -- Joe Tiel's Okie Hooch
    "Items.MediumQualityAlcohol6", -- Papa Garcin
    "Items.MediumQualityAlcohol7", -- Blue Grass
    "Items.NomadsAlcohol1", -- Moonshine
    "Items.NomadsAlcohol2", -- Trailerbrew Beer
    "Items.TopQualityAlcohol", -- Unnamed generic alcohol
    "Items.TopQualityAlcohol1", -- Calavera Feliz
    "Items.TopQualityAlcohol2", -- Chateau Delen 2012
    "Items.TopQualityAlcohol3", -- Armagnac Massy
    "Items.TopQualityAlcohol4", -- Sake Utagawa
    "Items.TopQualityAlcohol5", -- Baalbek Arak
    "Items.TopQualityAlcohol6", -- Romvlvs Gin
    "Items.TopQualityAlcohol7" -- Paul Night
}

function Shopper.SellAlcohol()
    -- Initialize protocol
    local moduleName = "Mercenaries Anonymous"
    Utilities.StartProtocol(moduleName)

    -- Get required utils
    local player = Game.GetPlayer()
    local transactionSystem = Game.GetTransactionSystem()

    -- Remove all known alcohols
    local totalAlcoholCount = 0
    for index, alcohol in ipairs(alcohols) do
		local alcoholTID = TweakDBID.new(alcohol)
        local alcoholID = ItemID.new(alcoholTID)
        local currentAlcoholCount = transactionSystem:GetItemQuantity(player, alcoholID)
        transactionSystem:RemoveItem(player, alcoholID, currentAlcoholCount)
        totalAlcoholCount = totalAlcoholCount + currentAlcoholCount
    end

    -- Add Eddies - alcohol value is constant for currently available items
    local moneyGained = 0
    if totalAlcoholCount > 0 then
        moneyGained = 30 * totalAlcoholCount
        Inventory.AddItem("money", moneyGained)
    end

    -- Print debug info
    print("Sold", totalAlcoholCount, "alcohol items for", moneyGained, "Eddies in total.")

    -- End of protocol
    Utilities.FinishProtocol(moduleName)
end

return Shopper