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

local Z = constants.ZONE_NAMES

-----------------------------------------------------------------------
-- What we _really_ came here to see...
-----------------------------------------------------------------------
function module:InitializeTrainers()
	local function AddTrainer(trainerID, trainerName, zoneName, coordX, coordY, faction)
		return addon:AddTrainer(module, {
			coord_x = coordX,
			coord_y = coordY,
			faction = faction,
			identifier = trainerID,
			item_list = {},
			locationName = zoneName,
			name = trainerName,
		})
	end




    AddTrainer(1317, "Lucan Cordell", 				Z.STORMWIND_CITY, 		53.1, 74.3, "Alliance")
    AddTrainer(3011, "Teg Dawnstrider", 			Z.THUNDER_BLUFF, 		45.1, 38.1,	"Horde")
    AddTrainer(3345, "Godan", 						Z.ORGRIMMAR, 			53.7, 38.3, "Horde")
    AddTrainer(3606, "Alanna Raveneye", 			Z.TELDRASSIL, 			36.8, 34.2, "Alliance")
    AddTrainer(4213, "Taladan", 					Z.DARNASSUS, 			58.7, 13.0, "Alliance")
    AddTrainer(4616, "Lavinia Crowe", 				Z.UNDERCITY, 			62.2, 61.6, "Horde")
    AddTrainer(5157, "Gimble Thistlefuzz", 			Z.IRONFORGE, 			60.3, 45.3, "Alliance")
    AddTrainer(5695, "Vance Undergloom", 			Z.TIRISFAL_GLADES, 		61.7, 51.6, "Horde")
    AddTrainer(7949, "Xylinnia Starshine", 			Z.FERALAS, 				31.6, 44.2, "Alliance")
    AddTrainer(11065, "Thonys Pillarstone", 		Z.IRONFORGE, 			60.5, 44.8, "Alliance")
    AddTrainer(11066, "Jhag", 						Z.ORGRIMMAR, 			53.6, 38.3, "Horde")
    AddTrainer(11067, "Malcomb Wynn", 				Z.UNDERCITY, 			62.1, 60.6, "Horde")
    AddTrainer(11068, "Betty Quin", 				Z.STORMWIND_CITY, 		53.0, 73.8, "Alliance")
    AddTrainer(11070, "Lalina Summermoon", 			Z.DARNASSUS, 			59.0, 12.9, "Alliance")
    AddTrainer(11071, "Mot Dawnstrider", 			Z.THUNDER_BLUFF, 		45.2, 38.7, "Horde")
    AddTrainer(11072, "Kitta Firewind", 			Z.ELWYNN_FOREST, 		65.0, 70.7, "Alliance")
    AddTrainer(11073, "Annora", 					Z.ULDAMAN, 				0.0, 0.0, 	"Neutral")
    AddTrainer(11074, "Hgarth", 					Z.STONETALON_MOUNTAINS, 49.2, 57.1, "Horde")
    AddTrainer(251978, "Vanessa Sellers", 			Z.ALTERAC_MOUNTAINS, 	16.8, 62.2, "Alliance")
    AddTrainer(257004, "Eaysaa Brightgust", 		Z.ZEPHRAS_ISLE, 		59.2, 76.4, "Neutral")
    AddTrainer(257020, "Nasalanna Windsinger", 		Z.ZEPHRAS_ISLE, 		43.2, 43.2, "Neutral")
   	AddTrainer(259287, "Melanie Sable", 			Z.RIVERGLADES, 			66.2, 83.2, "Alliance")
    AddTrainer(266881, "Pa'zula", 					Z.DUROTAR, 				56.6, 73.6, "Horde")

    self.InitializeTrainers = nil
end
