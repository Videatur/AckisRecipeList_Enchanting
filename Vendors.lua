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
local V = constants.GAME_VERSIONS

-----------------------------------------------------------------------
-- What we _really_ came here to see...
-----------------------------------------------------------------------
function module:InitializeVendors()
	local function AddVendor(vendorID, vendorName, zoneName, coordX, coordY, faction, expansionID)
		addon.AcquireTypes.Vendor:AddEntity(module, {
			coord_x = coordX,
			coord_y = coordY,
			expansionID = expansionID,
			faction = faction,
			identifier = vendorID,
			item_list = {},
			locationName = zoneName,
			name = vendorName,
		})
	end

	-----------------------------------------------------------------------
	-- Vanilla
	-----------------------------------------------------------------------
    AddVendor(3180, 	L["Dark Iron Entrepreneur"], 	Z.WETLANDS, 				46.6, 18.2, "Neutral",	V.ORIG)
    AddVendor(4229, 	L["Mythrin\'dir"], 				Z.DARNASSUS, 				61.4, 18.8, "Alliance",	V.ORIG)
    AddVendor(12043, 	L["Kulwia"], 					Z.STONETALON_MOUNTAINS, 	45.4, 59.4, "Horde",	V.ORIG)

    -----------------------------------------------------------------------
	-- TBC
	-----------------------------------------------------------------------
    AddVendor(18664, 	L["Aged Dalaran Wizard"], 		Z.OLD_HILLSBRAD_FOOTHILLS, 	0, 0, 		"Neutral",	V.TBC)
    AddVendor(19536, 	L["Dealer Jadyan"], 			Z.NETHERSTORM, 				44.0, 36.6, "Neutral",	V.TBC)

    -----------------------------------------------------------------------
	-- Wrath of The Lich King
	-----------------------------------------------------------------------
    AddVendor(32514, 	L["Vanessa Sellers"], 			Z.DALARAN_NORTHREND, 		38.7, 40.8, "Neutral",	V.WOTLK)

    -----------------------------------------------------------------------
	-- Cataclysm
	-----------------------------------------------------------------------
	AddVendor(3180, 	L["Dark Iron Entrepreneur"], 	Z.ARATHI_HIGHLANDS, 		42.6, 90.6, "Neutral",	V.CATA)
	AddVendor(4229, 	L["Mythrin\'dir"], 				Z.DARNASSUS, 				58.2, 34.6, "Alliance",	V.CATA)
	AddVendor(12043, 	L["Kulwia"], 					Z.STONETALON_MOUNTAINS, 	48.6, 61.6, "Horde",	V.CATA)
    AddVendor(44030, 	L["Draelan"], 					Z.TELDRASSIL, 				39.0, 30.0, "Alliance",	V.CATA)
    AddVendor(50134, 	L["Senthii"], 					Z.TWILIGHT_HIGHLANDS, 		78.7, 77.0, "Alliance",	V.CATA)
    AddVendor(50146, 	L["Agatian Fallanos"], 			Z.TWILIGHT_HIGHLANDS, 		76.7, 49.5, "Horde",	V.CATA)

    -----------------------------------------------------------------------
	-- Mists of Pandaria
	-----------------------------------------------------------------------
    AddVendor(64595, 	L["Rushi the Fox"], 			Z.TOWNLONG_STEPPES, 		48.8, 70.6, "Neutral",	V.MOP)

    -----------------------------------------------------------------------
	-- Warlords of Dreanor
	-----------------------------------------------------------------------
    AddVendor(77354, 	L["Ayada the White"], 			Z.LUNARFALL, 				0.0, 0.0, 	"Alliance",	V.WOD) -- Alliance Garrison
    AddVendor(79821, 	L["Yukla Greenshadow"], 		Z.FROSTWALL, 				0.0, 0.0, 	"Horde",	V.WOD) -- Horde Garrison
    AddVendor(86045, 	L["Ged'kah"], 					Z.WARSPEAR, 				78.6, 52.6, "Horde",	V.WOD) -- Horde Ashran
    AddVendor(87022, 	L["Bob"], 						Z.STORMSHIELD, 				56.7, 64.6, "Alliance",	V.WOD) -- Alliance Ashran
    AddVendor(91020, 	L["Enchantress Ismae"], 		Z.LUNARFALL, 				0.0, 0.0, 	"Alliance",	V.WOD)
    AddVendor(91029, 	L["Rath'thul Moonvale"], 		Z.FROSTWALL, 				0.0, 0.0, 	"Horde",	V.WOD)

    -----------------------------------------------------------------------
	-- Legion
	-----------------------------------------------------------------------
    AddVendor(98367, 	L["Tigrid the Charmer"], 		Z.STORMHEIM, 				39.4, 42.5, "Neutral",	V.LEGION)
    AddVendor(99420, 	L["Kharmeera"], 				Z.AZSUNA, 					47.2, 26.4, "Neutral",	V.LEGION)
    AddVendor(107139, 	L["Enchantress Ilanya"], 		Z.AZSUNA, 					46.8, 40.8, "Neutral",	V.LEGION)

    -----------------------------------------------------------------------
	-- Shadowlands
	-----------------------------------------------------------------------
    AddVendor(156769, 	L["Keeper Ta'hult"], 			Z.ORIBOS, 					64.8, 67.6, "Neutral",	V.SHA)

    self.InitializeVendors = nil
end
