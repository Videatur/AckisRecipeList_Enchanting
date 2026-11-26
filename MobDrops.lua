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
function module:InitializeMobDrops()
    local function AddMob(npcID, npcName, zoneName, coordX, coordY)
        addon.AcquireTypes.MobDrop:AddEntity(module, {
            coord_x = coordX or 0,
            coord_y = coordY or 0,
            faction = nil,
            identifier = npcID,
            item_list = {},
            locationName = zoneName,
            name = npcName,
        })
    end

    AddMob(674,  L["Venture Co. Strip Miner"], 	Z.STRANGLETHORN_VALE, 	42.2, 41.4)
	-- Additional sources verified against Wowhead Forever.
	AddMob(1768, "Vile Fin Tidehunter", Z.SILVERPINE_FOREST, 59.4, 18.4)
	AddMob(2174, "Coastal Frenzy", Z.DARKSHORE, 31.4, 70.6)
    AddMob(2374,  L["Torn Fin Muckdweller"], 	Z.HILLSBRAD_FOOTHILLS, 	31.5, 72.1)
    AddMob(2375,  L["Torn Fin Coastrunner"], 	Z.HILLSBRAD_FOOTHILLS, 	25.1, 70.5)
    AddMob(2376,  L["Torn Fin Oracle"], 		Z.HILLSBRAD_FOOTHILLS, 	42.0, 68.0)
    AddMob(2377,  L["Torn Fin Tidehunter"], 	Z.HILLSBRAD_FOOTHILLS, 	39.0, 69.0)
    AddMob(2556,  L["Witherbark Headhunter"], 	Z.ARATHI_HIGHLANDS, 	70.5, 70.4)
    AddMob(2557,  L["Witherbark Shadow Hunter"], Z.ARATHI_HIGHLANDS, 	70.3, 78.9)
    AddMob(2558,  L["Witherbark Berserker"], 	Z.ARATHI_HIGHLANDS, 	24.2, 66.2)
    AddMob(2642,  L["Vilebranch Shadowcaster"], Z.THE_HINTERLANDS, 	    64.2, 72.0)
	AddMob(3715,  L["Wrathtail Sea Witch"], 	Z.ASHENVALE, 			10.9, 28.7)
	AddMob(3725, "Dark Strand Cultist", Z.ASHENVALE, 31, 30.2)
	AddMob(4421, "Charlga Razorflank", Z.RAZORFEN_KRAUL, 0, 0)
    AddMob(4494,  L["Scarlet Spellbinder"], 	Z.WESTERN_PLAGUELANDS, 	54.4, 23.8)
	AddMob(5259, "Atal'ai Witch Doctor", Z.THE_TEMPLE_OF_ATALHAKKAR, 0, 0)
    AddMob(6201,  L["Legashi Rogue"], 			Z.AZSHARA, 				52.2, 19.6)
    AddMob(7026, "Blackrock Sorcerer", Z.BURNING_STEPPES, 40.4, 35.8)
    AddMob(7372,  L["Deadwind Warlock"], 		Z.DEADWIND_PASS, 		59.8, 74.4)
    AddMob(7524,  L["Anguished Highborne"], 	Z.WINTERSPRING, 		52.4, 41.6)
    AddMob(9024,  L["Pyromancer Loregrain"], 	Z.BLACKROCK_DEPTHS, 0, 0)
    AddMob(9025,  L["Lord Roccor"], 			Z.BLACKROCK_DEPTHS, 0, 0)
    AddMob(9198,  L["Spirestone Mystic"], 		Z.BLACKROCK_SPIRE, 0, 0)
    AddMob(9216,  L["Spirestone Warlord"], 		Z.BLACKROCK_SPIRE, 0, 0)
    AddMob(9447,  L["Scarlet Warder"], 			Z.EASTERN_PLAGUELANDS, 81, 81.8)
    AddMob(9451,  L["Scarlet Archmage"], 		Z.EASTERN_PLAGUELANDS, 86.2, 84.8)
    AddMob(9452,  L["Scarlet Enchanter"], 		Z.EASTERN_PLAGUELANDS, 80.0, 80.6)
    AddMob(10317, L["Blackhand Elite"], 		Z.BLACKROCK_SPIRE, 0, 0)
    AddMob(10398, L["Thuzadin Shadowcaster"], 	Z.STRATHOLME, 0, 0)
    AddMob(10422, L["Crimson Sorcerer"], 		Z.STRATHOLME, 0, 0)
    AddMob(10469, L["Scholomance Adept"], 		Z.SCHOLOMANCE, 0, 0)
    AddMob(10499, L["Spectral Researcher"], 	Z.SCHOLOMANCE, 0, 0)
    AddMob(14276, L["Scargil"], 				Z.HILLSBRAD_FOOTHILLS, 26.6, 71.2)
    AddMob(15275, L["Emperor Vek'nilash"], 		Z.AHNQIRAJ, 0, 0)
    AddMob(15276, L["Emperor Vek'lor"], 		Z.AHNQIRAJ, 0, 0)
	AddMob(224263, "Atal'ai Witch Doctor", Z.THE_TEMPLE_OF_ATALHAKKAR, 0, 0)
    AddMob(236876, "Legashi Blackguard", Z.AZSHARA, 63.8, 16.9)
	AddMob(246020, "Shade of the Archmage", Z.CITY_OF_DALARAN, 0, 0)
	AddMob(250657, "Rath'mael", Z.RUINS_OF_LORDAERON, 0, 0)

    AddMob(2567, "Boulderfist Magus", Z.ARATHI_HIGHLANDS, 52.3, 75.5)
    AddMob(4681, "Mage Hunter", Z.DESOLACE, 55.6, 76.5)
    AddMob(4329, "Firemane Scout", Z.DUSTWALLOW_MARSH, 44.6, 67.4)
    AddMob(2720, "Dustbelcher Ogre Mage", Z.BADLANDS, 7.6, 89.4)
    AddMob(5336, "Hatecrest Sorceress", Z.FERALAS, 25.5, 64.4)
    AddMob(7154, "Deadwood Gardener", Z.FELWOOD, 48.7, 90.5)
    AddMob(6196, "Spitelash Myrmidon", Z.AZSHARA, 46.5, 51.0)
    AddMob(10596, "Mother Smolderweb", Z.BLACKROCK_SPIRE, 0.0, 0.0)
    AddMob(9816, "Pyroguard Emberseer", Z.BLACKROCK_SPIRE, 0.0, 0.0)
    AddMob(10498, "Spectral Tutor", Z.SCHOLOMANCE, 0.0, 0.0)
    AddMob(10399, "Thuzadin Acolyte", Z.STRATHOLME, 0.0, 0.0)
    AddMob(261809, "Nanaya", Z.THE_SHAPERS_TERRACE, 0.0, 0.0)
    AddMob(6556, "Muculent Ooze", Z.UNGORO_CRATER, 70.4, 36.7)
    AddMob(9778, "Flamekin Torcher", Z.BURNING_STEPPES, 65.8, 31.6)
    AddMob(16080, "Mor Grayhoof", Z.BLACKROCK_SPIRE, 0.0, 0.0)

    self.InitializeMobDrops = nil
end
