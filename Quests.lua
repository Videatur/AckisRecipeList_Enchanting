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
function module:InitializeQuests()
	local function AddQuest(questID, zoneName, coordX, coordY, faction)
		addon.AcquireTypes.Quest:AddEntity(module, {
			coord_x = coordX,
			coord_y = coordY,
			faction = faction,
			identifier = questID,
			item_list = {},
			locationName = zoneName,
			name = nil, -- Handled by memoizing table in the core.
		})
	end

	--AddQuest(39905,	Z.AZSUNA,			43.2,	43.6,	"Neutral")

	-- Camping 101 Check needed.
	-- Additional sources verified against Wowhead Forever.
	AddQuest(92755, Z.DESOLACE, 35.4, 92, "Alliance")
	AddQuest(96059, 		Z.IRONFORGE, 		60.4, 45, "Alliance")
	AddQuest(97901, 		Z.DUROTAR, 			52, 47.2, "Horde")
	AddQuest(97917, 		Z.ELWYNN_FOREST, 	44.8, 63.2, "Alliance")
	AddQuest(97929, 		Z.MULGORE, 			46.2, 67.2, "Horde")
	AddQuest(97940, 		Z.TELDRASSIL, 		57.6, 56.6, "Alliance")
	AddQuest(97953, 		Z.TIRISFAL_GLADES, 	57.2, 55.6, "Horde")
	AddQuest(98284, 		Z.ZEPHRAS_ISLE, 	41.6, 44.8, "Horde")
	AddQuest(98286, 		Z.ZEPHRAS_ISLE, 	41.6, 44.8, "Alliance")

	self.InitializeQuests = nil
end
