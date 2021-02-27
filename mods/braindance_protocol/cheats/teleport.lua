local Teleport = {}

local Utilities = require("utility")

-- Player Homes
function Teleport.VsApartment()
    local moduleName = "Teleporting to V's Apartment"
    Game.TeleportPlayerToPosition("-1392.637329","1271.536865","123.082397")
    Utilities.FinishProtocol(moduleName)
end

function Teleport.VsMansion()
    local moduleName = "Teleporting to V's Mansion"
    Game.TeleportPlayerToPosition("-1340.884766","1190.658203","115.007172")
    Utilities.FinishProtocol(moduleName)
end

-- Generic Locations
function Teleport.GenericAfterlife()
    local moduleName = "Teleporting to The Afterlife"
    Game.TeleportPlayerToPosition("-1456.893433","1038.277222","16.825035")
    Utilities.FinishProtocol(moduleName)
end

function Teleport.GenericClouds()
    local moduleName = "Teleporting to Clouds"
    Game.TeleportPlayerToPosition("-665.472961","810.591492","128.273163")
    Utilities.FinishProtocol(moduleName)
end

function Teleport.GenericLizziesBar()
    local moduleName = "Teleporting to Lizzie's Bar"
    Game.TeleportPlayerToPosition("-1207.988525","1563.142090","22.920128")
    Utilities.FinishProtocol(moduleName)
end

function Teleport.GenericTotentanzClub()
    local moduleName = "Teleporting to Totentanz Club"
    Game.TeleportPlayerToPosition("-1738.612061","2213.224121","90.204559")
    Utilities.FinishProtocol(moduleName)
end

function Teleport.GenericDMCInside()
    local moduleName = "Teleporting to Dark Matter Club (inside)"
    Game.TeleportPlayerToPosition("-346.081238","221.274918","191.086502")
    Utilities.FinishProtocol(moduleName)
end

function Teleport.GenericDMCOutside()
    local moduleName = "Teleporting to Dark Matter Club (outside)"
    Game.TeleportPlayerToPosition("-346.648010","222.090622","27.594040")
    Utilities.FinishProtocol(moduleName)
end

function Teleport.GenericElCoyoteCojo()
    local moduleName = "Teleporting to El Coyote Cojo"
    Game.TeleportPlayerToPosition("-1260.774536","-981.771790","11.589195")
    Utilities.FinishProtocol(moduleName)
end

function Teleport.GenericNoTellMotel()
    local moduleName = "Teleporting to No-Tell Motel"
    Game.TeleportPlayerToPosition("-1158.889404","1342.452271","19.943626")
    Utilities.FinishProtocol(moduleName)
end

function Teleport.GenericSunsetMotel()
    local moduleName = "Teleporting to Sunset Motel"
    Game.TeleportPlayerToPosition("1628.261475","-775.431030","49.980309")
    Utilities.FinishProtocol(moduleName)
end

function Teleport.GenericSunshineMotel()
    local moduleName = "Teleporting to Sunshine Motel"
    Game.TeleportPlayerToPosition("3602.863037","-879.516479","119.546600")
    Utilities.FinishProtocol(moduleName)
end

function Teleport.GenericMobileCamp()
    local moduleName = "Teleporting to Mobile Camp"
    Game.TeleportPlayerToPosition("3444.628174","-365.633270","133.852707")
    Utilities.FinishProtocol(moduleName)
end

function Teleport.GenericNomadCamp()
    local moduleName = "Teleporting to Nomad Camp"
    Game.TeleportPlayerToPosition("1816.382324","2256.925781","180.260223")
    Utilities.FinishProtocol(moduleName)
end

function Teleport.GenericJigJigStreet()
    local moduleName = "Teleporting to Jig Jig Street"
    Game.TeleportPlayerToPosition("-640.769165","886.267151","19.888809")
    Utilities.FinishProtocol(moduleName)
end

function Teleport.GenericPacificaDistrict()
    local moduleName = "Teleporting to Pacifica District"
    Game.TeleportPlayerToPosition("-1751.548462","-1933.493042","61.524582")
    Utilities.FinishProtocol(moduleName)
end

function Teleport.GenericGrandImperialMall()
    local moduleName = "Teleporting to Grand Imperial Mall"
    Game.TeleportPlayerToPosition("-2265.841309","-2112.402588","13.296661")
    Utilities.FinishProtocol(moduleName)
end

function Teleport.GenericDelamainHQ()
    local moduleName = "Teleporting to Delamain HQ"
    Game.TeleportPlayerToPosition("-940.837341","-77.526871","7.509773")
    Utilities.FinishProtocol(moduleName)
end

function Teleport.GenericReconciliationPark()
    local moduleName = "Teleporting to Reconciliation Park"
    Game.TeleportPlayerToPosition("-1782.537598","-390.172638","-4.015121")
    Utilities.FinishProtocol(moduleName)
end

function Teleport.GenericRockyRidge()
    local moduleName = "Teleporting to Rocky Ridge"
    Game.TeleportPlayerToPosition("2599.074707","-33.218079","80.714417")
    Utilities.FinishProtocol(moduleName)
end

function Teleport.GenericTheAtlantis()
    local moduleName = "Teleporting to The Atlantis (inside)"
	Game.TeleportPlayerToPosition("-756.44885253906","1074.7010498047","62.005004882812")
    Utilities.FinishProtocol(moduleName)
end


-- NPC Locations
function Teleport.NPCJudyHouse()
    local moduleName = "Teleporting to Judy's Apartment"
    Game.TeleportPlayerToPosition("-906.306396","1868.635620","42.360016")
    Utilities.FinishProtocol(moduleName)
end

function Teleport.NPCRiverHouse()
    local moduleName = "Teleporting to River's House"
    Game.TeleportPlayerToPosition("1235.896606","-504.580139","36.427094")
    Utilities.FinishProtocol(moduleName)
end

function Teleport.NPCMisty()
    local moduleName = "Teleporting to Misty's Esoterica"
    Game.TeleportPlayerToPosition("-1546.295776","1194.164063","16.260002")
    Utilities.FinishProtocol(moduleName)
end

function Teleport.NPCClaireGarage()
    local moduleName = "Teleporting to Claire's Garage"
    Game.TeleportPlayerToPosition("-645.418945","-1260.975586","9.376778")
    Utilities.FinishProtocol(moduleName)
end

function Teleport.NPCDakotaSmith()
    local moduleName = "Teleporting to Dakota Smith"
    Game.TeleportPlayerToPosition("2419.131836","-795.221985","66.996750")
    Utilities.FinishProtocol(moduleName)
end

function Teleport.NPCDinoDinovic()
    local moduleName = "Teleporting to Dino Dinovic"
    Game.TeleportPlayerToPosition("-1967.008423","369.847382","8.040825")
    Utilities.FinishProtocol(moduleName)
end

function Teleport.NPCReyes()
    local moduleName = "Teleporting to Mumar 'El Caliptan' Reyes"
    Game.TeleportPlayerToPosition("405.594482","-2352.642578","182.027740")
    Utilities.FinishProtocol(moduleName)
end

function Teleport.NPCReginaJones()
    local moduleName = "Teleporting to Regina Jones"
    Game.TeleportPlayerToPosition("-1149.433105","1581.234619","71.712402")
    Utilities.FinishProtocol(moduleName)
end

function Teleport.NPCRogueAmendiares()
    local moduleName = "Teleporting to Rogue Amendiares"
    Game.TeleportPlayerToPosition("-1427.401245","1014.764099","16.901749")
    Utilities.FinishProtocol(moduleName)
end

function Teleport.NPCWakakoOkada()
    local moduleName = "Teleporting to Wakako Okada"
    Game.TeleportPlayerToPosition("-668.265747","823.310669","19.566063")
    Utilities.FinishProtocol(moduleName)
end

function Teleport.NPCPadre()
    local moduleName = "Teleporting to Sebastian 'Padre' Ibarra"
    Game.TeleportPlayerToPosition("-1803.299805","-1279.714111","21.837990")
    Utilities.FinishProtocol(moduleName)
end

function Teleport.NPCDeadDexter()
    local moduleName = "Teleporting to the corpse of Dexter DeShawn"
    Game.TeleportPlayerToPosition("1544.395996","-1971.859009","73.342407")
    Utilities.FinishProtocol(moduleName)
end

function Teleport.NPCSandraDorsettApartment()
    local moduleName = "Teleporting to Sandra Dorsett's Apartment"
    Game.TeleportPlayerToPosition(" -1282.4926757812","1518.7532958984","45.0")
    Utilities.FinishProtocol(moduleName)
end


-- Store Locations
-- Clothing Shops
function Teleport.ShopClothing1()
    local moduleName = "Teleporting to Pershing ST Store"
    Game.TeleportPlayerToPosition("-1895.527832","2504.133301","18.263504")
    Utilities.FinishProtocol(moduleName)
end

function Teleport.ShopClothing2()
    local moduleName = "Teleporting to Little China North Store"
    Game.TeleportPlayerToPosition("-1522.441040","1701.879639","18.317543")
    Utilities.FinishProtocol(moduleName)
end

function Teleport.ShopClothing3()
    local moduleName = "Teleporting to Kabuki Store"
    Game.TeleportPlayerToPosition("-1119.808105","1752.149658","33.722076")
    Utilities.FinishProtocol(moduleName)
end

function Teleport.ShopClothing4()
    local moduleName = "Teleporting to Blossoming Sakura Clothier"
    Game.TeleportPlayerToPosition("-682.614563","1239.223755","37.966957")
    Utilities.FinishProtocol(moduleName)
end

function Teleport.ShopClothing5()
    local moduleName = "Teleporting to Lele Park Store"
    Game.TeleportPlayerToPosition("-230.233231","-36.969742","0.883064")
    Utilities.FinishProtocol(moduleName)
end

function Teleport.ShopClothing6()
    local moduleName = "Teleporting to Red Peaks Vendor"
    Game.TeleportPlayerToPosition("1202.813965","-570.510498","32.692131")
    Utilities.FinishProtocol(moduleName)
end

function Teleport.ShopClothing7()
    local moduleName = "Teleporting to Mallagra&Manzanita Store"
    Game.TeleportPlayerToPosition("253.300400","-1475.245850","9.500000")
    Utilities.FinishProtocol(moduleName)
end

function Teleport.ShopClothing8()
    local moduleName = "Teleporting to Manufactory Market Vendor"
    Game.TeleportPlayerToPosition("-1017.764709","-1557.709351","25.700897")
    Utilities.FinishProtocol(moduleName)
end

function Teleport.ShopClothing9()
    local moduleName = "Teleporting to West Wind Estate Store"
    Game.TeleportPlayerToPosition("-2477.911377","-2536.459229","16.969376")
    Utilities.FinishProtocol(moduleName)
end

function Teleport.ShopClothing10()
    local moduleName = "Teleporting to Wellsprings Store"
    Game.TeleportPlayerToPosition("-2437.346680","-666.163452","6.922104")
    Utilities.FinishProtocol(moduleName)
end

function Teleport.ShopClothing11()
    local moduleName = "Teleporting to Appel De Paris"
    Game.TeleportPlayerToPosition("-1575.944580","-282.437988","-4.425003")
    Utilities.FinishProtocol(moduleName)
end

function Teleport.ShopClothing12()
    local moduleName = "Teleporting to Jinguji"
    Game.TeleportPlayerToPosition("-1884.361938","82.698013","7.519997")
    Utilities.FinishProtocol(moduleName)
end

-- Melee Shops
function Teleport.ShopMelee1()
    local moduleName = "Teleporting to Coach Fred"
    Game.TeleportPlayerToPosition("-1430.860107","1335.109497","119.206131")
    Utilities.FinishProtocol(moduleName)
end

function Teleport.ShopMelee2()
    local moduleName = "Teleporting to Crescent&Broad Vendor"
    Game.TeleportPlayerToPosition("-337.444519","563.404053","38.349251")
    Utilities.FinishProtocol(moduleName)
end

function Teleport.ShopMelee3()
    local moduleName = "Teleporting to West Wind Vendor"
    Game.TeleportPlayerToPosition("-2529.142578","-2468.510010","17.196762")
    Utilities.FinishProtocol(moduleName)
end

function Teleport.ShopMelee4()
    local moduleName = "Teleporting to Rancho Coronado Vendor"
    Game.TeleportPlayerToPosition("-476.260040","-1942.191772","7.003807")
    Utilities.FinishProtocol(moduleName)
end

function Teleport.ShopMelee5()
    local moduleName = "Teleporting to Tango Tors Vendor"
    Game.TeleportPlayerToPosition("133.805145","-4670.488281","54.607399")
    Utilities.FinishProtocol(moduleName)
end


-- Netrunner Shops
function Teleport.ShopNetrunner1()
    local moduleName = "Teleporting to Yoko Tsuru"
    Game.TeleportPlayerToPosition("-1180.311279","2041.457520","20.087074")
    Utilities.FinishProtocol(moduleName)
end

function Teleport.ShopNetrunner2()
    local moduleName = "Teleporting to Japantown Netrunner"
    Game.TeleportPlayerToPosition("-351.593842","1368.778564","42.124115")
    Utilities.FinishProtocol(moduleName)
end

function Teleport.ShopNetrunner3()
    local moduleName = "Teleporting to Chang Hoon Nam"
    Game.TeleportPlayerToPosition("-492.061035","583.292725","26.802223")
    Utilities.FinishProtocol(moduleName)
end

function Teleport.ShopNetrunner4()
    local moduleName = "Teleporting to Costa View Netrunner"
    Game.TeleportPlayerToPosition("-1906.515015","-1925.094238","48.903023")
    Utilities.FinishProtocol(moduleName)
end

-- You might need to complete a quest / event for this to unlock
function Teleport.ShopNetrunner5()
    local moduleName = "Teleporting to Vista del Rey Netrunner"
    Game.TeleportPlayerToPosition("-845.921082","-394.881470","8.163307")
    Utilities.FinishProtocol(moduleName)
end


-- Weapon Shops
function Teleport.ShopWeapons1()
    local moduleName = "Teleporting to Wilson Shop"
    Game.TeleportPlayerToPosition("-1450.176147","1311.742676","119.082397")
    Utilities.FinishProtocol(moduleName)
end

function Teleport.ShopWeapons2()
    local moduleName = "Teleporting to Straight Shooter"
    Game.TeleportPlayerToPosition("-1207.415771","2043.946289","7.844711")
    Utilities.FinishProtocol(moduleName)
end

function Teleport.ShopWeapons3()
    local moduleName = "Teleporting to Iron & Lead"
    Game.TeleportPlayerToPosition("-1895.143433","2729.943359","7.449997")
    Utilities.FinishProtocol(moduleName)
end

function Teleport.ShopWeapons4()
    local moduleName = "Teleporting to Maelstrom Heat"
    Game.TeleportPlayerToPosition("-783.261963","2183.184570","52.801941")
    Utilities.FinishProtocol(moduleName)
end

function Teleport.ShopWeapons5()
    local moduleName = "Teleporting to Skyline&Salinas Vendor"
    Game.TeleportPlayerToPosition("-453.489319","1450.199219","37.388107")
    Utilities.FinishProtocol(moduleName)
end

function Teleport.ShopWeapons6()
    local moduleName = "Teleporting to Halsey&MLK Vendor"
    Game.TeleportPlayerToPosition("-1770.706543","222.652618","43.727768")
    Utilities.FinishProtocol(moduleName)
end

function Teleport.ShopWeapons7()
    local moduleName = "Teleporting to Cannery Plaza Vendor"
    Game.TeleportPlayerToPosition("-2402.214355","-630.521790","6.906044")
    Utilities.FinishProtocol(moduleName)
end

function Teleport.ShopWeapons8()
    local moduleName = "Teleporting to Ventura&Skyline Vendor"
    Game.TeleportPlayerToPosition("-1899.170654","-1019.690430","7.676468")
    Utilities.FinishProtocol(moduleName)
end

function Teleport.ShopWeapons9()
    local moduleName = "Teleporting to College ST Vendor"
    Game.TeleportPlayerToPosition("-906.048767","-703.476807","8.237724")
    Utilities.FinishProtocol(moduleName)
end

function Teleport.ShopWeapons10()
    local moduleName = "Teleporting to Sunset Motel Vendor"
    Game.TeleportPlayerToPosition("1678.147217","-771.591980","49.839981")
    Utilities.FinishProtocol(moduleName)
end

function Teleport.ShopWeapons11()
    local moduleName = "Teleporting to Mobile Camp Vendor"
    Game.TeleportPlayerToPosition("3429.046387","-375.550720","133.535477")
    Utilities.FinishProtocol(moduleName)
end

function Teleport.ShopWeapons12()
    local moduleName = "Teleporting to Nomad Camp Vendor"
    Game.TeleportPlayerToPosition("1796.789307","2253.482178","180.262894")
    Utilities.FinishProtocol(moduleName)
end

function Teleport.ShopWeapons13()
    local moduleName = "Teleporting to Rancho Coronado East Vendor"
    Game.TeleportPlayerToPosition("569.700745","-2201.206787","35.345894")
    Utilities.FinishProtocol(moduleName)
end

function Teleport.ShopWeapons14()
    local moduleName = "Teleporting to Manufactory Market Vendor"
    Game.TeleportPlayerToPosition("-992.885986","-1589.419189","25.700897")
    Utilities.FinishProtocol(moduleName)
end

function Teleport.ShopWeapons15()
    local moduleName = "Teleporting to Pacifica Vendor"
    Game.TeleportPlayerToPosition("-2438.164063","-2405.232422","16.722504")
    Utilities.FinishProtocol(moduleName)
end

function Teleport.ShopWeapons16()
    local moduleName = "Teleporting to Fuel Station Vendor"
    Game.TeleportPlayerToPosition("-1844.916138","-4255.368652","74.019012")
    Utilities.FinishProtocol(moduleName)
end


-- Ripperdoc Locations
function Teleport.Ripperdoc1()
    local moduleName = "Teleporting to Viktor's Clinic"
    Game.TeleportPlayerToPosition("-1546.726196","1227.393066","11.520233")
    Utilities.FinishProtocol(moduleName)
end

function Teleport.Ripperdoc2()
    local moduleName = "Teleporting to Cassius Ryder's Clinic"
    Game.TeleportPlayerToPosition("-1686.586182","2386.400879","18.344055")
    Utilities.FinishProtocol(moduleName)
end

function Teleport.Ripperdoc3()
    local moduleName = "Teleporting to Buck's Clinic"
    Game.TeleportPlayerToPosition("-1090.759155","2147.218262","13.330742")
    Utilities.FinishProtocol(moduleName)
end

function Teleport.Ripperdoc4()
    local moduleName = "Teleporting to Dr. Chrome"
    Game.TeleportPlayerToPosition("-1245.325439","1945.930908","8.030479")
    Utilities.FinishProtocol(moduleName)
end

function Teleport.Ripperdoc5()
    local moduleName = "Teleporting to Instant Implants"
    Game.TeleportPlayerToPosition("-1040.245972","1440.913696","0.500221")
    Utilities.FinishProtocol(moduleName)
end

function Teleport.Ripperdoc6()
    local moduleName = "Teleporting to Cherry Blossom Market Ripperdoc"
    Game.TeleportPlayerToPosition("-712.370605","871.832458","11.982414")
    Utilities.FinishProtocol(moduleName)
end

function Teleport.Ripperdoc7()
    local moduleName = "Teleporting to Fingers M.D."
    Game.TeleportPlayerToPosition("-573.507813","795.048279","24.906097")
    Utilities.FinishProtocol(moduleName)
end

function Teleport.Ripperdoc8()
    local moduleName = "Teleporting to Skyline & Republic Ripperdoc"
    Game.TeleportPlayerToPosition("-2411.207764","393.523010","11.837067")
    Utilities.FinishProtocol(moduleName)
end

function Teleport.Ripperdoc9()
    local moduleName = "Teleporting to Palms View Plaza Ripperdoc"
    Game.TeleportPlayerToPosition("-2361.011475","-929.024597","12.266129")
    Utilities.FinishProtocol(moduleName)
end

function Teleport.Ripperdoc10()
    local moduleName = "Teleporting to Kraviz's Clinic"
    Game.TeleportPlayerToPosition("-40.347633","-52.439484","7.179688")
    Utilities.FinishProtocol(moduleName)
end

function Teleport.Ripperdoc11()
    local moduleName = "Teleporting to Wolleson ST Ripperdoc"
    Game.TeleportPlayerToPosition("-1072.172729","-1274.062866","11.456871")
    Utilities.FinishProtocol(moduleName)
end

function Teleport.Ripperdoc12()
    local moduleName = "Teleporting to West Wind Ripperdoc"
    Game.TeleportPlayerToPosition("-2607.956787","-2498.076660","17.334549")
    Utilities.FinishProtocol(moduleName)
end

function Teleport.Ripperdoc13()
    local moduleName = "Teleporting to Octavio's Clinic"
    Game.TeleportPlayerToPosition("588.132568","-2179.594482","42.437347")
    Utilities.FinishProtocol(moduleName)
end

function Teleport.Ripperdoc14()
    local moduleName = "Teleporting to Mobile Camp Ripperdoc"
    Game.TeleportPlayerToPosition("3438.949463","-380.475800","133.569855")
    Utilities.FinishProtocol(moduleName)
end

function Teleport.Ripperdoc15()
    local moduleName = "Teleporting to Nomad Camp Ripperdoc"
    Game.TeleportPlayerToPosition("1814.132202","2274.446289","182.176987")
    Utilities.FinishProtocol(moduleName)
end

-- Tarot Card Locations / Graffiti Locations
function Teleport.TarotLoc1()
    local moduleName = "Teleporting to Tarot Card: Death"
    Game.TeleportPlayerToPosition("-1808.519287","-542.195801","10.144997")
    Utilities.FinishProtocol(moduleName)
end

function Teleport.TarotLoc2()
    local moduleName = "Teleporting to Tarot Card: Justice"
    Game.TeleportPlayerToPosition("51.435013","-498.468506","15.313713")
    Utilities.FinishProtocol(moduleName)
end

function Teleport.TarotLoc3()
    local moduleName = "Teleporting to Tarot Card: Strength"
    Game.TeleportPlayerToPosition("684.020813","-616.751282","9.846458")
    Utilities.FinishProtocol(moduleName)
end

function Teleport.TarotLoc4()
    local moduleName = "Teleporting to Tarot Card: Temperance"
    Game.TeleportPlayerToPosition("195.212189","574.286682","120.330841")
    Utilities.FinishProtocol(moduleName)
end

function Teleport.TarotLoc5()
    local moduleName = "Teleporting to Tarot Card: The Chariot"
    Game.TeleportPlayerToPosition("-1503.578857","1137.667480","18.070541")
    Utilities.FinishProtocol(moduleName)
end

function Teleport.TarotLoc6()
    local moduleName = "Teleporting to Tarot Card: The Emperor"
    Game.TeleportPlayerToPosition("-2103.592773","1772.950562","18.331223")
    Utilities.FinishProtocol(moduleName)
end

function Teleport.TarotLoc7()
    local moduleName = "Teleporting to Tarot Card: The Empress"
    Game.TeleportPlayerToPosition("-1460.803711","1047.891846","18.762367")
    Utilities.FinishProtocol(moduleName)
end

function Teleport.TarotLoc8()
    local moduleName = "Teleporting to Tarot Card: The Fool"
    Game.TeleportPlayerToPosition("-1391.457397","1268.110229","123.082397")
    Utilities.FinishProtocol(moduleName)
end

function Teleport.TarotLoc9()
    local moduleName = "Teleporting to Tarot Card: The Hanged Man"
    Game.TeleportPlayerToPosition("-1834.668945","3877.000000","17.890144")
    Utilities.FinishProtocol(moduleName)
end

function Teleport.TarotLoc10()
    local moduleName = "Teleporting to Tarot Card: The Heremit"
    Game.TeleportPlayerToPosition("-1736.029663","-1934.164917","61.592911")
    Utilities.FinishProtocol(moduleName)
end

function Teleport.TarotLoc11()
    local moduleName = "Teleporting to Tarot Card: The Hierophant"
    Game.TeleportPlayerToPosition("-880.238464","1320.123047","5.821556")
    Utilities.FinishProtocol(moduleName)
end

function Teleport.TarotLoc12()
    local moduleName = "Teleporting to Tarot Card: The High Priestess"
    Game.TeleportPlayerToPosition("-630.949707","-212.408829","20.170006")
    Utilities.FinishProtocol(moduleName)
end

function Teleport.TarotLoc13()
    local moduleName = "Teleporting to Tarot Card: The Lovers"
    Game.TeleportPlayerToPosition("-113.085938","1935.875000","100.617203")
    Utilities.FinishProtocol(moduleName)
end

function Teleport.TarotLoc14()
    local moduleName = "Teleporting to Tarot Card: The Magician"
    Game.TeleportPlayerToPosition("-1231.555420","1559.181641","22.671944")
    Utilities.FinishProtocol(moduleName)
end

function Teleport.TarotLoc15()
    local moduleName = "Teleporting to Tarot Card: The Moon"
    Game.TeleportPlayerToPosition("397.054016","1151.880493","220.754074")
    Utilities.FinishProtocol(moduleName)
end

function Teleport.TarotLoc16()
    local moduleName = "Teleporting to Tarot Card: The Star"
    Game.TeleportPlayerToPosition("-611.084839","-3845.938721","72.121140")
    Utilities.FinishProtocol(moduleName)
end

function Teleport.TarotLoc17()
    local moduleName = "Teleporting to Tarot Card: The Sun"
    Game.TeleportPlayerToPosition("-1330.365479","1202.760132","19.432549")
    Utilities.FinishProtocol(moduleName)
end

function Teleport.TarotLoc18()
    local moduleName = "Teleporting to Tarot Card: The Tower"
    Game.TeleportPlayerToPosition("-1574.320435","148.965622","2.385063")
    Utilities.FinishProtocol(moduleName)
end

function Teleport.TarotLoc19()
    local moduleName = "Teleporting to Tarot Card: The Wheel Of Fortune"
    Game.TeleportPlayerToPosition("1650.025879","-793.365784","49.820427")
    Utilities.FinishProtocol(moduleName)
end

function Teleport.TarotLoc20()
    local moduleName = "Teleporting to Tarot Card: The World"
    Game.TeleportPlayerToPosition("-1549.944092","1208.757080","57.000008")
    Utilities.FinishProtocol(moduleName)
end

function Teleport.TarotLoc21()
    local moduleName = "Teleporting to Tarot Card: Judgement [Ending Quest]"
    Game.TeleportPlayerToPosition("-1361.474121","155.524597","-26.648010")
    Utilities.FinishProtocol(moduleName)
end


-- Extra Locations (Bonus / Out-of-reach stuff)
function Teleport.BonusAkulovPenthouse()
    local moduleName = "Teleporting to Akulov Penthouse"
    Game.TeleportPlayerToPosition("-1218.135986","1409.635010","113.524445")
    Utilities.FinishProtocol(moduleName)
end

function Teleport.BonusArasakaOrbitalStation()
    local moduleName = "Teleporting to Arasaka Orbital Station"
    Game.TeleportPlayerToPosition("4743.650879","-1091.755127","1310.439575")
    Utilities.FinishProtocol(moduleName)
end

function Teleport.BonusArasakaTowerJungle()
    local moduleName = "Teleporting to Arasaka Tower Jungle"
    Game.TeleportPlayerToPosition("-1449.256470","118.300171","321.639038")
    Utilities.FinishProtocol(moduleName)
end

function Teleport.BonusArasakaTowerTemple()
    local moduleName = "Teleporting to Arasaka Tower Temple"
    Game.TeleportPlayerToPosition("-1383.655518","118.832474","542.696289")
    Utilities.FinishProtocol(moduleName)
end

function Teleport.BonusBadlandsMovieSite()
    local moduleName = "Teleporting to Badlands Movie Site"
    Game.TeleportPlayerToPosition("3492.3449707031","1171.1573486328","138.11395263672")
    Utilities.FinishProtocol(moduleName)
end

function Teleport.BonusBadlandsTunnelEntrance()
    local moduleName = "Teleporting to Badlands Tunnel (Entrance)"
    Game.TeleportPlayerToPosition("185.345749","2365.449707","67.081177")
    Utilities.FinishProtocol(moduleName)
end

function Teleport.BonusCloudsInside()
    local moduleName = "Teleporting to Clouds (inside)"
    Game.TeleportPlayerToPosition("-652.481812","790.145996","128.252228")
    Utilities.FinishProtocol(moduleName)
end

function Teleport.BonusJohnnyInterrogationRoom()
    local moduleName = "Teleporting to Johnny Interrogation Room"
    Game.TeleportPlayerToPosition("-1389.446533","141.266556","-139.361572")
    Utilities.FinishProtocol(moduleName)
end

function Teleport.BonusJoanneKochHotelSuite()
    local moduleName = "Teleporting to Joanne Koch Hotel Suite"
    Game.TeleportPlayerToPosition("-2154.8049316406","461.67517089844","89.467163085938")
    Utilities.FinishProtocol(moduleName)
end

function Teleport.BonusKonpekiPlazaHotelSuite()
    local moduleName = "Teleporting to Konpeki Plaza (Hotel Suite)"
    Game.TeleportPlayerToPosition("-2202.186035","1783.184204","163.000000")
    Utilities.FinishProtocol(moduleName)
end

function Teleport.BonusKonpekiPlazaYorinobuRoom()
    local moduleName = "Teleporting to Konpeki Plaza (Yorinobu's Room)"
    Game.TeleportPlayerToPosition("-2226.746582","1767.182129","308.000000")
    Utilities.FinishProtocol(moduleName)
end

function Teleport.BonusKonpekiPlazaPool()
    local moduleName = "Teleporting to the Konpeki Plaza Pool"
    Game.TeleportPlayerToPosition("-2176.3708496094","1784.4736328125","275.0")
    Utilities.FinishProtocol(moduleName)
end

function Teleport.BonusBlackwallTunnel()
    local moduleName = "Teleporting to Blackwall Tunnel"
    Game.TeleportPlayerToPosition("-1663.618774","-1867.443726","54.990150")
    Utilities.FinishProtocol(moduleName)
end

function Teleport.BonusNCPDRoom()
    local moduleName = "Teleporting to NCPD Room"
    Game.TeleportPlayerToPosition("-1761.547729","-1010.821655","94.300003")
    Utilities.FinishProtocol(moduleName)
end

function Teleport.BonusMegaH8Top()
    local moduleName = "Teleporting to Megabuilding H8 Top"
    Game.TeleportPlayerToPosition("-701.484680","849.270264","322.252228")
    Utilities.FinishProtocol(moduleName)
end

function Teleport.BonusMegaH10Top()
    local moduleName = "Teleporting to Megabuilding H10 Top"
    Game.TeleportPlayerToPosition("-1371.780029","1340.888550","311.471313")
    Utilities.FinishProtocol(moduleName)
end

function Teleport.BonusPeralezApartment()
    local moduleName = "Teleporting to the Peralez's apartment (inside)"
	Game.TeleportPlayerToPosition("-81.354858398438","-121.20021057129","119.15728759766")
    Utilities.FinishProtocol(moduleName)
end

function Teleport.BonusVoodooTempleBasement()
    local moduleName = "Teleporting to the VooDoo Temple (basement)"
	Game.TeleportPlayerToPosition("-1712.8552246094","-1876.8553466797","56.717567443848")
    Utilities.FinishProtocol(moduleName)
end

function Teleport.BonusNomadStartLocationAWACS()
    local moduleName = "Teleporting to Nomad Starting Location - AWACS Zone"
	Game.TeleportPlayerToPosition("-3972.6013183594","-6495.1479492188","75.73356628418")
    Utilities.FinishProtocol(moduleName)
end

function Teleport.BonusDennysEstate()
    local moduleName = "Teleporting to Denny's Estate (inside)"
	Game.TeleportPlayerToPosition("486.977325","1291.791016","234.458664")
    Utilities.FinishProtocol(moduleName)
end

function Teleport.BonusArasakaDrillingMachine()
    local moduleName = "Teleporting to Arasaka Drilling Machine (Underground)"
	Game.TeleportPlayerToPosition("-1447.010010","40.182648","-36.814171")
    Utilities.FinishProtocol(moduleName)
end

function Teleport.BonusArasakaTowerAbandonedArea1()
    local moduleName = "Teleporting to Arasaka Tower: Abandoned Area #1"
	Game.TeleportPlayerToPosition("-1475.830200","161.548401","208.637604")
    Utilities.FinishProtocol(moduleName)
end

function Teleport.BonusArasakaTowerAbandonedArea2()
    local moduleName = "Teleporting to Arasaka Tower: Abandoned Area #2"
	Game.TeleportPlayerToPosition("-1442.981689","139.817459","141.996506")
    Utilities.FinishProtocol(moduleName)
end

function Teleport.BonusArasakaTowerCEOLevel()
    local moduleName = "Teleporting to Arasaka Tower: CEO Level"
	Game.TeleportPlayerToPosition("-1437.788208","157.247620","565.346008")
    Utilities.FinishProtocol(moduleName)
end

function Teleport.BonusArasakaTowerCEOOffice()
    local moduleName = "Teleporting to Arasaka Tower: CEO Office"
	Game.TeleportPlayerToPosition("-1447.286621","73.579651","568.946045")
    Utilities.FinishProtocol(moduleName)
end

function Teleport.BonusArasakaTowerMikoshiMainframe()
    local moduleName = "Teleporting to Arasaka Tower: Mikoshi Mainframe"
	Game.TeleportPlayerToPosition("-1448.108398","149.156219","-27.652016")
    Utilities.FinishProtocol(moduleName)
end

function Teleport.BonusArasakaTowerJohnnyTemple()
    local moduleName = "Teleporting to Arasaka Tower: Johnny's Temple"
	Game.TeleportPlayerToPosition("-1383.655518","118.832474","542.696289")
    Utilities.FinishProtocol(moduleName)
end

function Teleport.BonusArasakaTowerUnlistedLevel()
    local moduleName = "Teleporting to Arasaka Tower: Unlisted Level"
	Game.TeleportPlayerToPosition("-1428.207520","95.437912","543.348022")
    Utilities.FinishProtocol(moduleName)
end

function Teleport.BonusArasakaTowerUpperAtrium()
    local moduleName = "Teleporting to Arasaka Tower: Upper Atrium"
	Game.TeleportPlayerToPosition("-1390.497559","162.406921","388.347961")
    Utilities.FinishProtocol(moduleName)
end

function Teleport.BonusArasakaTowerUnderground()
    local moduleName = "Teleporting to Arasaka Tower: Underground"
	Game.TeleportPlayerToPosition("-1376.191528","143.706009","-26.648010")
    Utilities.FinishProtocol(moduleName)
end

function Teleport.BonusBadlandsTunnelInside()
    local moduleName = "Teleporting to Badlands Tunnel (Inside)"
	Game.TeleportPlayerToPosition("-1255.622437","126.991272","-43.753677")
    Utilities.FinishProtocol(moduleName)
end

function Teleport.BonusDMCSexRoom()
    local moduleName = "Teleporting to Dark Matter Club: Sex Room"
	Game.TeleportPlayerToPosition("-372.268982","271.240143","215.515579")
    Utilities.FinishProtocol(moduleName)
end

function Teleport.BonusEmbersRestaurant()
    local moduleName = "Teleporting to Embers (Restaurant)"
	Game.TeleportPlayerToPosition("-1795.816162","-526.988647","74.241196")
    Utilities.FinishProtocol(moduleName)
end

function Teleport.BonusGutierrezApartment()
    local moduleName = "Teleporting to Gutierrez's Apartment"
	Game.TeleportPlayerToPosition("20.760391","5.750076","138.900955")
    Utilities.FinishProtocol(moduleName)
end

function Teleport.BonusHanakoEstate()
    local moduleName = "Teleporting to Hanako's Estate"
	Game.TeleportPlayerToPosition("290.197662","1022.468079","229.920425")
    Utilities.FinishProtocol(moduleName)
end

function Teleport.BonusJigJigSexRoom()
    local moduleName = "Teleporting to "
	Game.TeleportPlayerToPosition("-664.977112","847.753113","28.499626")
    Utilities.FinishProtocol(moduleName)
end

function Teleport.BonusInsidePetrochem()
    local moduleName = "Teleporting to Petrochem (Behind The Fences)"
	Game.TeleportPlayerToPosition("-118.046112","-486.535583","7.296860")
    Utilities.FinishProtocol(moduleName)
end

function Teleport.BonusRiverBraindanceRandyKutcher()
    local moduleName = "Teleporting to the Braindance Location Of River's Nephew"
	Game.TeleportPlayerToPosition("-6491.909180","-3167.271240","57.558006")
    Utilities.FinishProtocol(moduleName)
end

function Teleport.BonusSlaytonApartment()
    local moduleName = "Teleporting to Slayton Apartment"
	Game.TeleportPlayerToPosition("-1450.692139","-1038.510742","77.555298")
    Utilities.FinishProtocol(moduleName)
end

function Teleport.BonusTimeMachineGuitarRoom()
    local moduleName = "Teleporting to Time Machine (Guitar Room)"
	Game.TeleportPlayerToPosition("-1843.676392","-575.336243","7.754036")
    Utilities.FinishProtocol(moduleName)
end

function Teleport.BonusUnfinishedCasino()
    local moduleName = "Teleporting to the Unfinished Casino"
	Game.TeleportPlayerToPosition("934.451233","1458.630981","242.120010")
    Utilities.FinishProtocol(moduleName)
end

return Teleport
