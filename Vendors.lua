-------------------------------------------------------------------------------
-- Module namespace.
-------------------------------------------------------------------------------
local FOLDER_NAME, private = ...

local addon = private.addon
if not addon then
	return
end

local constants = addon.constants
local module = addon:GetModule(private.module_name)
local L = _G.LibStub("AceLocale-3.0"):GetLocale(addon.constants.addon_name)

local Z = constants.ZONE_NAMES

-----------------------------------------------------------------------
-- What we _really_ came here to see...
-----------------------------------------------------------------------
function module:InitializeVendors()
	local function AddVendor(vendorID, vendorName, zoneName, coordX, coordY, faction)
		addon.AcquireTypes.Vendor:AddEntity(module, {
			coord_x = coordX,
			coord_y = coordY,
			faction = faction,
			identifier = vendorID,
			item_list = {},
			locationName = zoneName,
			name = vendorName,
		})
	end



	-- Check needed.
	AddVendor(989, 		L["Banalash"], 					Z.SWAMP_OF_SORROWS, 		44.4, 57.0, "Horde")
	AddVendor(1318, 	L["Jessara Cordell"], 			Z.STORMWIND_CITY, 			53.0, 74.2, "Alliance")
	AddVendor(2381, 	L["Micha Yance"], 				Z.HILLSBRAD_FOOTHILLS, 	    49.0, 55.0, "Alliance")
	AddVendor(2821, 	L["Keena"], 					Z.ARATHI_HIGHLANDS, 		74.0, 32.6, "Horde")
 	AddVendor(3012, 	L["Nata Dawnstrider"], 			Z.THUNDER_BLUFF, 			45.0, 39.5, "Horde")
    AddVendor(3180, 	L["Dark Iron Entrepreneur"], 	Z.WETLANDS, 				46.6, 18.2, "Neutral")
    AddVendor(3346, 	L["Kithas"], 					Z.ORGRIMMAR, 				53.6, 38.0, "Horde")
	AddVendor(3537, 	L["Zixil"], 					Z.HILLSBRAD_FOOTHILLS, 		55.6, 34.6, "Neutral")
    AddVendor(3954, 	L["Dalria"], 					Z.ASHENVALE, 				35.0, 52.0, "Alliance")
    AddVendor(4228, 	L["Vaean"], 					Z.DARNASSUS, 				58.6, 14.6, "Alliance")
    AddVendor(4229, 	L["Mythrin\'dir"], 				Z.DARNASSUS, 				61.0, 18.2, "Alliance")
	AddVendor(4561, 	L["Daniel Bartlett"], 			Z.UNDERCITY, 				64.2, 37.8, "Horde")
    AddVendor(4617, 	L["Thaddeus Webb"], 			Z.UNDERCITY, 				62.0, 60.9, "Horde")
    AddVendor(5158, 	L["Tilli Thistlefuzz"], 		Z.IRONFORGE, 				60.8, 44.2, "Alliance")
	AddVendor(5695, 	L["Vance Undergloom"], 			Z.TIRISFAL_GLADES, 			61.8, 51.6, "Horde")
    AddVendor(5757, 	L["Lilly"], 					Z.SILVERPINE_FOREST, 		43.0, 50.8, "Horde")
    AddVendor(5758, 	L["Leo Sarn"], 					Z.SILVERPINE_FOREST, 		54.0, 82.2, "Horde")
	AddVendor(10856, 	L["Argent Quartermaster Hasana"], Z.TIRISFAL_GLADES, 		83.2, 68.2, "Neutral")
	AddVendor(10857, 	L["Argent Quartermaster Lightspark"], Z.WESTERN_PLAGUELANDS, 42.8, 83.8, "Neutral")
    AddVendor(11189, 	L["Qia"], 						Z.WINTERSPRING, 			61.2, 37.2, "Neutral")
	AddVendor(11536, 	L["Quartermaster Miranda Breechlock"], Z.EASTERN_PLAGUELANDS, 81.6, 60, "Neutral")
	AddVendor(11557, 	L["Meilosh"], 					Z.FELWOOD, 					65.6, 2.8, 	"Neutral")
    AddVendor(12022, 	L["Lorelae Wintersong"], 		Z.MOONGLADE, 				48.6, 40.2, "Neutral")
    AddVendor(12043, 	L["Kulwia"], 					Z.STONETALON_MOUNTAINS, 	45.4, 59.4, "Horde")
	AddVendor(12944, 	L["Lokhtos Darkbargainer"], 	Z.BLACKROCK_DEPTHS, 		0, 		0, 	"Neutral")
	AddVendor(13278, 	L["Duke Hydraxis"], 			Z.AZSHARA, 					79.2, 73.4, "Neutral")
	AddVendor(14921, 	L["Rin'wosho the Trader"], 		Z.STRANGLETHORN_VALE, 		15.0, 16.0, "Neutral")
    AddVendor(15419, 	L["Kania"], 					Z.SILITHUS, 				52.0, 39.6, "Neutral")
	AddVendor(217689, "Ziri \"The Wrench\" Littlesprocket", Z.GNOMEREGAN, 			0, 		0, 	"Neutral")
    AddVendor(248199, 	L["Beneris"], 					Z.THE_BARRENS, 				49.6, 29.8, "Horde")
    AddVendor(256732, 	L["Alynsia"], 					Z.REDRIDGE_MOUNTAINS, 		11.2, 71.5, "Alliance")
    AddVendor(257004, 	L["Eaysaa Brightgust"], 		Z.ZEPHRAS_ISLE, 			59.2, 76.2, "Neutral")
    AddVendor(257020, 	L["Nasalanna Windsinger"], 		Z.ZEPHRAS_ISLE, 			43.2, 43.2, "Neutral")

    self.InitializeVendors = nil
end
