local Shopper = {}

local Utilities = require("utility")
local Inventory = require("inventory")

-- Sell value is constant for each 'junk' item type available
local price = {
    junk = 3,
    alcohol = 30,
    jewellery = 750
}

-- Temporary storage until proper collection of item hashes/names/etc. is added.
local items = {
    alcohol = {
        "Items.Alcohol", -- Unnamed [generic alcohol]
        "Items.GoodQualityAlcohol", -- Unnamed [generic alcohol]
        "Items.GoodQualityAlcohol1", -- Donaghy's
        "Items.GoodQualityAlcohol2", -- Centzon Totochtin
        "Items.GoodQualityAlcohol3", -- Randver
        "Items.GoodQualityAlcohol4", -- AB-Synth
        "Items.GoodQualityAlcohol5", -- Champaradise
        "Items.GoodQualityAlcohol6", -- La Perle Des Alpes
        "Items.LowQualityAlcohol", -- Unnamed [generic alcohol]
        "Items.LowQualityAlcohol1", -- Abydos Classic
        "Items.LowQualityAlcohol2", -- Abydos King Size
        "Items.LowQualityAlcohol3", -- Broseph Ale
        "Items.LowQualityAlcohol4", -- Broseph Lager
        "Items.LowQualityAlcohol5", -- 21st Stout
        "Items.LowQualityAlcohol6", -- Bumelant
        "Items.LowQualityAlcohol7", -- Chirrisco
        "Items.LowQualityAlcohol8", -- Pitorro
        "Items.LowQualityAlcohol9", -- Tequila Especial
        "Items.MediumQualityAlcohol", -- Unnamed [generic alcohol]
        "Items.MediumQualityAlcohol1", -- Pingo Pálido
        "Items.MediumQualityAlcohol2", -- O'Dockin Whiskey
        "Items.MediumQualityAlcohol3", -- Bolshevik Vodka
        "Items.MediumQualityAlcohol4", -- Conine
        "Items.MediumQualityAlcohol5", -- Joe Tiel's Okie Hooch
        "Items.MediumQualityAlcohol6", -- Papa Garcin
        "Items.MediumQualityAlcohol7", -- Blue Grass
        "Items.NomadsAlcohol1", -- Moonshine
        "Items.NomadsAlcohol2", -- Trailerbrew Beer
        "Items.TopQualityAlcohol", -- Unnamed [generic alcohol]
        "Items.TopQualityAlcohol1", -- Calavera Feliz
        "Items.TopQualityAlcohol2", -- Chateau Delen 2012
        "Items.TopQualityAlcohol3", -- Armagnac Massy
        "Items.TopQualityAlcohol4", -- Sake Utagawa
        "Items.TopQualityAlcohol5", -- Baalbek Arak
        "Items.TopQualityAlcohol6", -- Romvlvs Gin
        "Items.TopQualityAlcohol7" -- Paul Night
    },
    junk = {
        "Items.AnimalsJunkItem1", -- Broken Metal Fangs
        "Items.AnimalsJunkItem2", -- Grappling Gloves
        "Items.AnimalsJunkItem3", -- Jaguar Patch
        "Items.CasinoJunkItem1", -- Dice
        "Items.CasinoJunkItem2", -- Joker
        "Items.CasinoJunkItem3", -- Cards
        "Items.CasinoPoorJunkItem1", -- Damaged Poker Chip
        "Items.CasinoPoorJunkItem2", -- Drink Umbrella
        "Items.CasinoPoorJunkItem3", -- Ashtray
        "Items.CasinoRichJunkItem1", -- Cufflinks
        "Items.CasinoRichJunkItem2", -- NCU Signet Ring
        "Items.CasinoRichJunkItem3", -- Cigar
        "Items.GenericCorporationJunkItem1", -- Stress ball
        "Items.GenericCorporationJunkItem2", -- Stapler
        "Items.GenericCorporationJunkItem3", -- Hygiene Bag
        "Items.GenericCorporationJunkItem4", -- NDA
        "Items.GenericCorporationJunkItem5", -- Drip Coffee Maker
        "Items.GenericGangJunkItem1", -- Golden Chain
        "Items.GenericGangJunkItem2", -- Tatoo Needle
        "Items.GenericGangJunkItem3", -- Lighter
        "Items.GenericGangJunkItem4", -- Counterfit Documents
        "Items.GenericGangJunkItem5", -- Bloody Knife
        "Items.GenericJunkItem1", -- Vinyl Record
        "Items.GenericJunkItem10", -- Rosary
        "Items.GenericJunkItem11", -- Voodoo Rosary
        "Items.GenericJunkItem12", -- Spray Paint
        "Items.GenericJunkItem13", -- Spray Paint
        "Items.GenericJunkItem14", -- Lottery Scratchcard
        "Items.GenericJunkItem15", -- Hair Wax
        "Items.GenericJunkItem16", -- Perfume
        "Items.GenericJunkItem17", -- Perfume
        "Items.GenericJunkItem18", -- Medical Forceps
        "Items.GenericJunkItem19", -- Surgical Scissors
        "Items.GenericJunkItem2", -- Vinyl Record
        "Items.GenericJunkItem20", -- Pack of Cards
        "Items.GenericJunkItem21", -- Pack of Cards
        "Items.GenericJunkItem22", -- Pipe
        "Items.GenericJunkItem23", -- Pack of Cigarettes
        "Items.GenericJunkItem24", -- Pack of Cigarettes
        "Items.GenericJunkItem25", -- Cube
        "Items.GenericJunkItem26", -- Candles
        "Items.GenericJunkItem27", -- Incense
        "Items.GenericJunkItem28", -- Condoms
        "Items.GenericJunkItem29", -- Bubble Gum
        "Items.GenericJunkItem3", -- Vinyl Record
        "Items.GenericJunkItem30", -- Bubble Gum
        "Items.GenericJunkItem4", -- Medical Gauze
        "Items.GenericJunkItem5", -- Guitar Pick
        "Items.GenericJunkItem6", -- Ritual Bowl
        "Items.GenericJunkItem7", -- Flare
        "Items.GenericJunkItem8", -- Hand Fan
        "Items.GenericJunkItem9", -- Hand Fan
        "Items.GenericPoorJunkItem1", -- Disinfectant
        "Items.GenericPoorJunkItem2", -- Old Can
        "Items.GenericPoorJunkItem3", -- Glow Stick
        "Items.GenericPoorJunkItem4", -- Damaged Clothes
        "Items.GenericPoorJunkItem5", -- Spray Paint
        "Items.GenericRichJunkItem1", -- Champagne Bucket
        "Items.GenericRichJunkItem2", -- Abstract Painting
        "Items.GenericRichJunkItem3", -- Cashmere Wool
        "Items.GenericRichJunkItem4", -- Cheese Knives
        "Items.GenericRichJunkItem5", -- Crystal Decanter
        "Items.Junk", -- Moldy SYN-Cheese [generic junk]
        "Items.JunkLargeSize", -- Moldy SYN-Cheese [generic junk]
        "Items.JunkMediumSize", -- Moldy SYN-Cheese [generic junk]
        "Items.JunkSmallSize", -- Moldy SYN-Cheese [generic junk]
        "Items.MaelstromJunkItem1", -- Subdermal LED Diodes
        "Items.MaelstromJunkItem2", -- Soldering Iron
        "Items.MaelstromJunkItem3", -- Broken Eye Implant
        "Items.MilitechJunkItem1", -- Thigh Holster
        "Items.MilitechJunkItem2", -- Military Pocket Knife
        "Items.MilitechJunkItem3", -- Digital Compass
        "Items.MoxiesJunkItem1", -- Fluorescent Lipstick
        "Items.MoxiesJunkItem2", -- Torn Fishnets
        "Items.MoxiesJunkItem3", -- Condom
        "Items.NomadsJunkItem1", -- Brake Fluid
        "Items.NomadsJunkItem2", -- NUSA Map
        "Items.NomadsJunkItem3", -- Mess Kit
        "Items.ScavengersJunkItem1", -- Dull Scalpel
        "Items.ScavengersJunkItem2", -- Handcuffs
        "Items.ScavengersJunkItem3", -- Used AirHypo
        "Items.SexToyJunkItem1", -- Gag
        "Items.SexToyJunkItem2", -- Studded Dildo
        "Items.SexToyJunkItem3", -- Pilomancer 3000
        "Items.SexToyJunkItem4", -- Trans-Anal EXXXpress
        "Items.SexToyJunkItem5", -- Protector
        "Items.SexToyJunkItem6", -- Luv Compartment
        "Items.SixthStreetJunkItem1", -- NUSA Pin
        "Items.SixthStreetJunkItem2", -- Shortwave Transmitter
        "Items.SixthStreetJunkItem3", -- Military Canteen
        "Items.SouvenirJunkItem1", -- Postcard from Night City
        "Items.SouvenirJunkItem2", -- Souvenir Magnet
        "Items.SouvenirJunkItem3", -- Shell Casing Keychain
        "Items.SouvenirJunkItem4", -- Souvenir License Plate
        "Items.TygerClawsJunkItem1", -- Omamori
        "Items.TygerClawsJunkItem2", -- Chopsticks
        "Items.TygerClawsJunkItem3", -- Hanafuda Cards
        "Items.ValentinosJunkItem1", -- Hair Gel
        "Items.ValentinosJunkItem2", -- Calavera
        "Items.ValentinosJunkItem3", -- Decorative Spoon
        "Items.VoodooBoysJunkItem1", -- Shard with LOA Symbols
        "Items.VoodooBoysJunkItem2", -- Luminescent Chalk
        "Items.VoodooBoysJunkItem3", -- Candle
        "Items.WraithsJunkItem1", -- Tire Iron
        "Items.WraithsJunkItem2", -- Bloody Bandage
        "Items.WraithsJunkItem3" -- Turquoise Hair Dye
    },
    jewellery = {
        "Items.AnimalsJewellery", -- Bottlecap on a String [generic jewellery]
        "Items.AnimalsJewellery1", -- Syn-Fang Necklace
        "Items.AnimalsJewellery2", -- Leather Bracelete
        "Items.AnimalsJewellery3", -- Studded Chocker
        "Items.HighQualityJewellery", -- Bottlecap on a String [generic jewellery]
        "Items.HighQualityJewellery1", -- Silver Watch
        "Items.HighQualityJewellery2", -- Raven Skull Pendant
        "Items.HighQualityJewellery3", -- Wooden Beads
        "Items.HighQualityJewellery4", -- Shell Ring
        "Items.HighQualityJewellery5", -- Titanium Ring
        "Items.Jewellery", -- Bottlecap on a String [generic jewellery]
        "Items.LowQualityJewellery", -- Bottlecap on a String [generic jewellery]
        "Items.LowQualityJewellery1", -- Bullet Pendant
        "Items.LowQualityJewellery2", -- Cable Necklace
        "Items.LowQualityJewellery3", -- Plastic Beads
        "Items.LowQualityJewellery4", -- Nut Ring
        "Items.LowQualityJewellery5", -- PCB Earrings
        "Items.MediumQualityJewellery", -- Bottlecap on a String [generic jewellery]
        "Items.MediumQualityJewellery1", -- Dog Tag
        "Items.MediumQualityJewellery2", -- Brass Earrings
        "Items.MediumQualityJewellery3", -- Led Bracelets
        "Items.MediumQualityJewellery4", -- Velver O'Ring Choker
        "Items.MediumQualityJewellery5", -- Hairpin with Bow
        "Items.TygerClawsJewellery", -- Bottlecap on a String [generic jewellery]
        "Items.TygerClawsJewellery1", -- Silver Wrap Earrings
        "Items.TygerClawsJewellery2", -- Yin Yang Medalion
        "Items.TygerClawsJewellery3", -- Kanji Pendant
        "Items.ValentinosJewellery", -- Bottlecap on a String [generic jewellery]
        "Items.ValentinosJewellery1", -- Santa Muerte Brooch
        "Items.ValentinosJewellery2", -- Unknown [Cannot be spawned]
        "Items.ValentinosJewellery3", -- Skull Ring
        "Items.ValentinosJewellery4", -- Gold Cross
        "Items.ValentinosJewellery5" -- Signet Ring with Initials
    }
}

local sellItems = function(verboseType)
    -- Get required utils
    local player = Game.GetPlayer()
    local transactionSystem = Game.GetTransactionSystem()

    -- Remove all provided items
    local totalItemCount = 0
    for _, item in ipairs(items[verboseType]) do
        local itemTDBID = TweakDBID.new(item)
        local itemID = ItemID.new(itemTDBID)
        local currentItemCount = transactionSystem:GetItemQuantity(player, itemID)
        transactionSystem:RemoveItem(player, itemID, currentItemCount)
        totalItemCount = totalItemCount + currentItemCount
    end

    -- Add appropriate amount of Eddies
    local moneyGained = 0
    if totalItemCount > 0 then
        moneyGained = (price[verboseType] or price["junk"]) * totalItemCount
        Inventory.AddItem("money", moneyGained)
    end

    -- Print debug info
    print("Sold", totalItemCount, verboseType, "items. Total amount sent to your account:", moneyGained, "Eddies!")
end

function Shopper.SellJunk()
    -- Initialize protocol
    local moduleName = "The Trash Man"

    -- Execute generic selling logic for selected item type
    sellItems("junk")

    -- End of protocol
    Utilities.FinishProtocol(moduleName)
end

function Shopper.SellAlcohol()
    -- Initialize protocol
    local moduleName = "Mercenaries Anonymous"

    -- Execute generic selling logic
    sellItems("alcohol")

    -- End of protocol
    Utilities.FinishProtocol(moduleName)
end

function Shopper.SellJewellery()
    -- Initialize protocol
    local moduleName = "The Jewel Store Job"

    -- Execute generic selling logic
    sellItems("jewellery")

    -- End of protocol
    Utilities.FinishProtocol(moduleName)
end

function Shopper.SellAllUselessItems()
    -- Initialize protocol
    local moduleName = "V's Cleanup Detail"

    -- Execute generic selling logic for selected item type
    sellItems("junk")
    sellItems("alcohol")
    sellItems("jewellery")

    -- End of protocol
    Utilities.FinishProtocol(moduleName)
end

return Shopper
