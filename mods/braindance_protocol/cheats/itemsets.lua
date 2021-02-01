local ItemSets = {}

local Utilities = require("utility")
local Inventory = require("inventory")


function ItemSets.AddSetCorpo()
    local moduleName = "Add Corpo Item Set"
    Utilities.StartProtocol(moduleName)

	-- Corpo Set
    Inventory.AddItem("Corporate_01_Set_FormalJacket")
    Inventory.AddItem("Corporate_01_Set_FormalShirt")
    Inventory.AddItem("Corporate_01_Set_FormalShoes")
    Inventory.AddItem("Corporate_01_Set_Glasses")
	Inventory.AddItem("Corporate_01_Set_Pants")

	Utilities.FinishProtocol(moduleName)
end

function ItemSets.AddSetFixer()
    local moduleName = "Add Fixer Item Set"
    Utilities.StartProtocol(moduleName)

	-- Fixer Set
    Inventory.AddItem("Fixer_01_Set_Coat")
    Inventory.AddItem("Fixer_01_Set_FormalShoes")
    Inventory.AddItem("Fixer_01_Set_Glasses")
    Inventory.AddItem("Fixer_01_Set_Pants")
	Inventory.AddItem("Fixer_01_Set_TShirt")

	Utilities.FinishProtocol(moduleName)
end

function ItemSets.AddSetMaxTac()
    local moduleName = "Add MaxTac Item Set"
    Utilities.StartProtocol(moduleName)

	-- MaxTac Set
    Inventory.AddItem("SQ030_MaxTac_Chest")
    Inventory.AddItem("SQ030_MaxTac_Helmet")
    Inventory.AddItem("SQ030_MaxTac_Pants")

	Utilities.FinishProtocol(moduleName)
end

function ItemSets.AddSetMedia()
    local moduleName = "Add Media Item Set"
    Utilities.StartProtocol(moduleName)

	-- Media Set
    Inventory.AddItem("Media_01_Set_Cap")
    Inventory.AddItem("Media_01_Set_Pants")
    Inventory.AddItem("Media_01_Set_Shirt")
    Inventory.AddItem("Media_01_Set_Shoes")
	Inventory.AddItem("Media_01_Set_Tech")
	Inventory.AddItem("Media_01_Set_Vest")

	Utilities.FinishProtocol(moduleName)
end

function ItemSets.AddSetNetrunner()
    local moduleName = "Add Netrunner Item Set"
    Utilities.StartProtocol(moduleName)

	-- Netrunner Set
    Inventory.AddItem("Netrunner_01_Set_Jumpsuit")
    Inventory.AddItem("Netrunner_01_Set_Pants")
    Inventory.AddItem("Netrunner_01_Set_Shoes")
    Inventory.AddItem("Netrunner_01_Set_Visor")

	Utilities.FinishProtocol(moduleName)
end

function ItemSets.AddSetNomad()
    local moduleName = "Add Nomad Item Set"
    Utilities.StartProtocol(moduleName)

	-- Nomad Set
    Inventory.AddItem("Nomad_01_Set_Boots")
    Inventory.AddItem("Nomad_01_Set_Jacket")
    Inventory.AddItem("Nomad_01_Set_Mask")
    Inventory.AddItem("Nomad_01_Set_Pants")
	Inventory.AddItem("Nomad_01_Set_TShirt")
	Inventory.AddItem("Q114_Aldecaldo_Jacket")

	Utilities.FinishProtocol(moduleName)
end

function ItemSets.AddSetPolice()
    local moduleName = "Add Police Item Set"
    Utilities.StartProtocol(moduleName)

	-- Police Set
    Inventory.AddItem("Cop_01_Set_Boots")
    Inventory.AddItem("Cop_01_Set_Glasses")
    Inventory.AddItem("Cop_01_Set_Jacket")
    Inventory.AddItem("Cop_01_Set_Pants")
	Inventory.AddItem("Helmet_02_basic_01")

	Utilities.FinishProtocol(moduleName)
end

function ItemSets.AddSetRocker()
    local moduleName = "Add Rocker Item Set"
    Utilities.StartProtocol(moduleName)

	-- Rocker Set
    Inventory.AddItem("Rockerboy_01_Set_Boots")
    Inventory.AddItem("Rockerboy_01_Set_Glasses")
    Inventory.AddItem("Rockerboy_01_Set_Jacket")
    Inventory.AddItem("Rockerboy_01_Set_Pants")
	Inventory.AddItem("Rockerboy_01_Set_TShirt")

	Utilities.FinishProtocol(moduleName)
end

function ItemSets.AddSetSolo()
    local moduleName = "Add Solo Item Set"
    Utilities.StartProtocol(moduleName)

	-- Solo Set
    Inventory.AddItem("Solo_01_Set_Boots")
    Inventory.AddItem("Solo_01_Set_Jacket")
    Inventory.AddItem("Solo_01_Set_Pants")
    Inventory.AddItem("Solo_01_Set_TShirt")
	Inventory.AddItem("Solo_01_Set_Visor")

	Utilities.FinishProtocol(moduleName)
end

function ItemSets.AddSetTechie()
    local moduleName = "Add Techie Item Set"
    Utilities.StartProtocol(moduleName)

	-- Techie Set
    Inventory.AddItem("Techie_01_Set_Cap")
    Inventory.AddItem("Techie_01_Set_Pants")
    Inventory.AddItem("Techie_01_Set_Shoes")
    Inventory.AddItem("Techie_01_Set_Tech")
	Inventory.AddItem("Techie_01_Set_TShirt")
	Inventory.AddItem("Techie_01_Set_Vest")

	Utilities.FinishProtocol(moduleName)
end

function ItemSets.AddSetVCorpo()
    local moduleName = "Add V's Corpo Set"
    Utilities.StartProtocol(moduleName)

	-- V's Corpo Set
    Inventory.AddItem("Q000_Corpo_FormalJacket")
    Inventory.AddItem("Q000_Corpo_FormalPants")
    Inventory.AddItem("Q000_Corpo_FormalShoes")
    Inventory.AddItem("Q000_half_Corpo")

	Utilities.FinishProtocol(moduleName)
end

function ItemSets.AddSetVNomad()
    local moduleName = "Add V's Nomad Set"
    Utilities.StartProtocol(moduleName)

	-- V's Nomad Set
    Inventory.AddItem("Q000_half_Nomad")
    Inventory.AddItem("Q000_Nomad_Boots")
    Inventory.AddItem("Q000_Nomad_noPatch_Vest")
    Inventory.AddItem("Q000_Nomad_Pants")
	Inventory.AddItem("Q000_Nomad_TShirt")
	Inventory.AddItem("Q000_Nomad_Vest")

	Utilities.FinishProtocol(moduleName)
end

function ItemSets.AddSetVStreetkid()
    local moduleName = "Add V's Streetkid Set"
    Utilities.StartProtocol(moduleName)

	-- V's Streetkid Set
    Inventory.AddItem("Q000_half_StreetKid")
    Inventory.AddItem("Q000_StreetKid_Pants")
    Inventory.AddItem("Q000_StreetKid_Shoes")
    Inventory.AddItem("Q000_StreetKid_TShirt")

	Utilities.FinishProtocol(moduleName)
end

function ItemSets.AddSetVEpilogue()
    local moduleName = "Add V's Epilogue Set"
    Utilities.StartProtocol(moduleName)

	-- Epilogue Gear
    Inventory.AddItem("Q203_Epilogue_Boots")
	Inventory.AddItem("Q203_Epilogue_Glasses")
	Inventory.AddItem("Q203_Epilogue_Pants")
	Inventory.AddItem("Q203_Epilogue_TShirt")

	Utilities.FinishProtocol(moduleName)
end

function ItemSets.AddSetVMisc()
    local moduleName = "Add V's Misc Set"
    Utilities.StartProtocol(moduleName)

	-- Rest of V's Gear
    Inventory.AddItem("Q001_Pants")
    Inventory.AddItem("Q001_Shoes")
    Inventory.AddItem("Q001_TShirt")

	Utilities.FinishProtocol(moduleName)
end

function ItemSets.AddAllSets()
    local moduleName = "Add All Item Sets"
    Utilities.StartProtocol(moduleName)

	ItemSets.AddSetCorpo()
	ItemSets.AddSetFixer()
	ItemSets.AddSetMaxTac()
	ItemSets.AddSetMedia()
	ItemSets.AddSetNetrunner()
	ItemSets.AddSetNomad()
	ItemSets.AddSetPolice()
	ItemSets.AddSetRocker()
	ItemSets.AddSetSolo()
	ItemSets.AddSetTechie()
	ItemSets.AddSetVCorpo()
	ItemSets.AddSetVNomad()
	ItemSets.AddSetVStreetkid()
	ItemSets.AddSetVEpilogue()
	ItemSets.AddSetVMisc()

    Utilities.FinishProtocol(moduleName)
end

return ItemSets
