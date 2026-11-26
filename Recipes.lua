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

-------------------------------------------------------------------------------
-- Filter flags. Acquire types, and Reputation levels.
-------------------------------------------------------------------------------
local A = constants.ACQUIRE_TYPE_IDS
local F = constants.FILTER_IDS
local Q = constants.ITEM_QUALITIES
local Z = constants.ZONE_NAMES

local FAC = constants.FACTION_IDS
local REP = constants.REP_LEVELS

-- LoadOnAddOn gives profession modules their own namespace, so the core's
-- private helpers are not available here.  Use the current spell API locally.
local function GetSpellName(spellID)
    return _G.C_Spell.GetSpellName(spellID)
end

module.Recipes = {}

--------------------------------------------------------------------------------------------------------------------
-- Initialize!
--------------------------------------------------------------------------------------------------------------------
function module:InitializeRecipes()
    local function AddRecipe(spellID, quality)
        return addon:AddRecipe(module, {
            _acquireTypeData = {},
            _bitflags = {},
            _localizedName = GetSpellName(spellID),
            _qualityID = quality,
            _spellID = spellID,
        })
    end

    local recipe

    -------------------------------------------------------------------------------
    -- Forever
    -------------------------------------------------------------------------------

    -- Enchant Bracer - Lesser Agility -- 1248460
    recipe = AddRecipe(1248460, Q.UNCOMMON)
    recipe:SetSkillLevels(140, 140, 165, 185, 205)
    recipe:SetRecipeItem(249486, "BIND_ON_PICKUP")
    recipe:SetItemFilterType("ENCHANTING_BRACER")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddRepVendor(FAC.MAGRAM_CLAN_CENTAUR, REP.EXALTED, 253139)
    recipe:AddRepVendor(FAC.GELKIS_CLAN_CENTAUR, REP.HONORED, 253140)
    recipe:AddQuest(92755)

    -- Enchant Bracer - Lesser Healing Power -- 1248498
    recipe = AddRecipe(1248498, Q.UNCOMMON)
    recipe:SetSkillLevels(205, 205, 225, 245, 265)
    recipe:SetRecipeItem(249489, "BIND_ON_PICKUP")
    recipe:SetItemFilterType("ENCHANTING_BRACER")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddRepVendor(FAC.MAGRAM_CLAN_CENTAUR, REP.EXALTED, 253139)
    recipe:AddRepVendor(FAC.GELKIS_CLAN_CENTAUR, REP.HONORED, 253140)
    recipe:AddQuest(92755)


    -- Twisted Nether Wand -- 1248461
    recipe = AddRecipe(1248461, Q.UNCOMMON)
    recipe:SetSkillLevels(185, 185, 205, 225, 245)
    recipe:SetRecipeItem(249487, "BIND_ON_PICKUP")
    recipe:SetCraftedItem(249144, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ENCHANTING_WAND")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddMobDrop(2567)

    -- Enchant Bracer - Agility -- 1248497
    recipe = AddRecipe(1248497, Q.UNCOMMON)
    recipe:SetSkillLevels(190, 190, 225, 245, 265)
    recipe:SetRecipeItem(249488, "BIND_ON_PICKUP")
    recipe:SetItemFilterType("ENCHANTING_BRACER")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddMobDrop(4681)

    -- Enchant 2H Weapon - Lesser Agility -- 1248510
    recipe = AddRecipe(1248510, Q.UNCOMMON)
    recipe:SetSkillLevels(210, 210, 230, 250, 270)
    recipe:SetRecipeItem(249511, "BIND_ON_PICKUP")
    recipe:SetItemFilterType("ENCHANTING_2H_WEAPON")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddMobDrop(4329)

    -- Dreambough Wand -- 1248509
    recipe = AddRecipe(1248509, Q.UNCOMMON)
    recipe:SetSkillLevels(215, 215, 235, 255, 275)
    recipe:SetRecipeItem(249512, "BIND_ON_PICKUP")
    recipe:SetCraftedItem(249234, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ENCHANTING_WAND")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddMobDrop(2720)

    -- Enchant 2H Weapon - Lesser Strength -- 1248511
    recipe = AddRecipe(1248511, Q.UNCOMMON)
    recipe:SetSkillLevels(220, 220, 240, 260, 280)
    recipe:SetRecipeItem(249513, "BIND_ON_PICKUP")
    recipe:SetItemFilterType("ENCHANTING_2H_WEAPON")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddMobDrop(5336)

    -- Enchant Bracer - Greater Agility -- 1248500
    recipe = AddRecipe(1248500, Q.UNCOMMON)
    recipe:SetSkillLevels(240, 240, 260, 280, 300)
    recipe:SetRecipeItem(249514, "BIND_ON_PICKUP")
    recipe:SetItemFilterType("ENCHANTING_BRACER")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddMobDrop(7154)

    -- Enchant Gloves - Advanced Skinning -- 1248528
    recipe = AddRecipe(1248528, Q.UNCOMMON)
    recipe:SetSkillLevels(250, 250, 270, 290, 310)
    recipe:SetRecipeItem(249516, "BIND_ON_PICKUP")
    recipe:SetItemFilterType("ENCHANTING_GLOVES")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddMobDrop(6196)

    -- Dormant Heart of the Mountain -- 1249114
    recipe = AddRecipe(1249114, Q.RARE)
    recipe:SetSkillLevels(265, 265, 285, 305, 325)
    recipe:SetRecipeItem(249521, "BIND_ON_PICKUP")
    recipe:SetCraftedItem(249473, "BIND_ON_PICKUP")
    recipe:SetItemFilterType("ENCHANTING_MISC")
    recipe:AddFilters(F.ALLIANCE, F.HORDE, F.INSTANCE)
    recipe:AddMobDrop(10596)

    -- Molten Heart of the Mountain -- 1249112
    recipe = AddRecipe(1249112, Q.RARE)
    recipe:SetSkillLevels(265, 265, 285, 305, 325)
    recipe:SetRecipeItem(249520, "BIND_ON_PICKUP")
    recipe:SetCraftedItem(249470, "BIND_ON_PICKUP")
    recipe:SetItemFilterType("ENCHANTING_MISC")
    recipe:AddFilters(F.ALLIANCE, F.HORDE, F.INSTANCE)
    recipe:AddMobDrop(9816)

    -- Enchant 2H Weapon - Strength -- 1248668
    recipe = AddRecipe(1248668, Q.UNCOMMON)
    recipe:SetSkillLevels(290, 290, 295, 297, 300)
    recipe:SetRecipeItem(249523, "BIND_ON_PICKUP")
    recipe:SetItemFilterType("ENCHANTING_2H_WEAPON")
    recipe:AddFilters(F.ALLIANCE, F.HORDE, F.INSTANCE)
    recipe:AddMobDrop(10498)

    -- Enchant Bracer - Superior Agility -- 1248599
    recipe = AddRecipe(1248599, Q.UNCOMMON)
    recipe:SetSkillLevels(295, 295, 315, 335, 355)
    recipe:SetRecipeItem(249524, "BIND_ON_PICKUP")
    recipe:SetItemFilterType("ENCHANTING_BRACER")
    recipe:AddFilters(F.ALLIANCE, F.HORDE, F.INSTANCE)
    recipe:AddMobDrop(10399)

    -- Arcane Forge -- 1263082
    recipe = AddRecipe(1263082, Q.UNCOMMON)
    recipe:SetSkillLevels(300, 300, 300, 300, 300)
    recipe:SetRecipeItem(273116, "BIND_ON_EQUIP")
    recipe:SetCraftedItem(279987, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ENCHANTING_MISC")
    recipe:AddFilters(F.ALLIANCE, F.HORDE, F.INSTANCE)
    recipe:AddMobDrop(261809)

    -- Enchant Boots - Speed -- 1328948
    recipe = AddRecipe(1328948, Q.UNCOMMON)
    recipe:SetSkillLevels(280, 280, 280, 290, 300)
    recipe:SetRecipeItem(289560, "BIND_ON_PICKUP")
    recipe:SetItemFilterType("ENCHANTING_BOOTS")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddRepVendor(FAC.DUROTAR_SUPPLY_AND_LOGISTICS, REP.HONORED, 248199)
    recipe:AddRepVendor(FAC.AZEROTH_COMMERCE_AUTHORITY, REP.HONORED, 256732)
    recipe:AddMerchantFavor(180)

    -- Enchant Cloak - Lesser Shadow Resistance -- 13522
    recipe = AddRecipe(13522, Q.UNCOMMON)
    recipe:SetSkillLevels(135, 135, 160, 180, 200)
    recipe:SetRecipeItem(11098, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ENCHANTING_CLOAK")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddWorldDrop(Z.BLACKFATHOM_DEEPS, Z.EXCAVATION_SITE_WETLANDS, Z.GNOMEREGAN, Z.RAGEFIRE_CHASM, Z.RAZORFEN_DOWNS, Z.RAZORFEN_KRAUL, Z.RUINS_OF_LORDAERON, Z.SCARLET_MONASTERY, Z.SHADOWFANG_KEEP, Z.THE_DEADMINES, Z.THE_STOCKADE, Z.WAILING_CAVERNS, Z.EASTERN_KINGDOMS, Z.KALIMDOR)

    -- Enchant Shield - Frost Resistance -- 13933
    recipe = AddRecipe(13933, Q.UNCOMMON)
    recipe:SetSkillLevels(235, 235, 255, 275, 295)
    recipe:SetRecipeItem(11224, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ENCHANTING_SHIELD")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddWorldDrop(Z.BLACKROCK_DEPTHS, Z.BLACKWING_LAIR, Z.DIRE_MAUL, Z.KARAZHAN_CRYPTS, Z.MARAUDON, Z.SCARLET_MONASTERY, Z.STORM_CLIFFS, Z.STRATHOLME, Z.THE_TAINTED_SCAR, Z.THE_TEMPLE_OF_ATALHAKKAR, Z.ULDAMAN, Z.ZULFARRAK, Z.EASTERN_KINGDOMS, Z.KALIMDOR)

    -- Enchant Cloak - Greater Resistance -- 20014
    recipe = AddRecipe(20014, Q.UNCOMMON)
    recipe:SetSkillLevels(265, 265, 285, 305, 325)
    recipe:SetRecipeItem(16216, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ENCHANTING_CLOAK")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddMobDrop(5259, 224263)

    -- Enchant Cloak - Subtlety -- 25084
    recipe = AddRecipe(25084, Q.RARE)
    recipe:AddWorldDrop(Z.AHNQIRAJ, Z.EASTERN_KINGDOMS, Z.KALIMDOR)
    recipe:SetSkillLevels(300, 300, 320, 340, 360)
    recipe:SetRecipeItem(20735, "BIND_ON_PICKUP")
    recipe:SetItemFilterType("ENCHANTING_CLOAK")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddMobDrop(15276)

    -- Enchant Bracer - Minor Intellect -- 1248458
    recipe = AddRecipe(1248458, Q.UNCOMMON)
    recipe:SetSkillLevels(70, 70, 110, 130, 150)
    recipe:SetRecipeItem(249474, "BIND_ON_PICKUP")
    recipe:SetItemFilterType("ENCHANTING_BRACER")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddMobDrop(1768, 2174)

    -- Enchant Bracer - Minor Healing Power -- 1248459
    recipe = AddRecipe(1248459, Q.UNCOMMON)
    recipe:SetSkillLevels(90, 90, 120, 140, 160)
    recipe:SetRecipeItem(249475, "BIND_ON_PICKUP")
    recipe:SetItemFilterType("ENCHANTING_BRACER")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddMobDrop(3725)

    -- Sigil of Innovation -- 439156
    recipe = AddRecipe(439156, Q.EPIC)
    recipe:SetSkillLevels(225, 225, 225, 227, 230)
    recipe:SetRecipeItem(215141, "BIND_ON_PICKUP")
    recipe:SetCraftedItem(217308, "BIND_ON_PICKUP")
    recipe:SetItemFilterType("ENCHANTING_MISC")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddVendor(217689)

    -- Scroll of Spatial Mending -- 448624
    recipe = AddRecipe(448624, Q.UNCOMMON)
    recipe:SetSkillLevels(120, 120, 120, 140, 160)
    recipe:SetRecipeItem(223163, "BIND_ON_EQUIP")
    recipe:SetCraftedItem(220792, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ENCHANTING_MISC")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddWorldDrop(Z.EASTERN_KINGDOMS, Z.KALIMDOR)

    -- Sigil of Flowing Waters -- 463866
    recipe = AddRecipe(463866, Q.EPIC)
    recipe:SetSkillLevels(290, 290, 305, 312, 320)
    recipe:SetRecipeItem(228979, "BIND_ON_PICKUP")
    recipe:SetCraftedItem(228978, "BIND_ON_PICKUP")
    recipe:SetItemFilterType("ENCHANTING_MISC")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddRepVendor(FAC.HYDRAXIAN_WATERLORDS, REP.REVERED, 13278)

    -- Arcane Salvager -- 1263056
    recipe = AddRecipe(1263056, Q.UNCOMMON)
    recipe:SetSkillLevels(140, 140, 140, 140, 140)
    recipe:SetRecipeItem(273103, "BIND_ON_EQUIP")
    recipe:SetCraftedItem(279985, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ENCHANTING_MISC")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddMobDrop(4421, 246020, 250657)




    -- Runed Silver Rod -- 7795
    recipe = AddRecipe(7795, Q.COMMON)
    recipe:SetSkillLevels(100, 100, 130, 150, 170)
    recipe:SetCraftedItem(6339, "BIND_ON_PICKUP")
    recipe:SetItemFilterType("ENCHANTING_ROD")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddTrainer(1317, 3011, 3345, 4213, 4616, 5157, 7949, 11072, 11073, 11074, 251978, 259287)

    -- Enchant Cloak - Lesser Fire Resistance -- 7861
    recipe = AddRecipe(7861, Q.COMMON)
    recipe:SetSkillLevels(125, 125, 150, 170, 190)
    recipe:SetItemFilterType("ENCHANTING_CLOAK")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddTrainer(1317, 3011, 3345, 4213, 4616, 5157, 7949, 11072, 11073, 11074, 251978, 259287)

    -- Runed Golden Rod -- 13628
    recipe = AddRecipe(13628, Q.COMMON)
    recipe:SetSkillLevels(150, 150, 175, 195, 215)
    recipe:SetCraftedItem(11130, "BIND_ON_PICKUP")
    recipe:SetItemFilterType("ENCHANTING_ROD")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddTrainer(1317, 3011, 3345, 4213, 4616, 5157, 7949, 11072, 11073, 11074, 251978, 259287)

    -- Enchant Cloak - Fire Resistance -- 13657
    recipe = AddRecipe(13657, Q.COMMON)
    recipe:SetSkillLevels(175, 175, 195, 215, 235)
    recipe:SetItemFilterType("ENCHANTING_CLOAK")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddTrainer(11072, 11073, 11074, 251978, 259287)

    -- Runed Truesilver Rod -- 13702
    recipe = AddRecipe(13702, Q.COMMON)
    recipe:SetSkillLevels(200, 200, 220, 240, 260)
    recipe:SetCraftedItem(11145, "BIND_ON_PICKUP")
    recipe:SetItemFilterType("ENCHANTING_ROD")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddTrainer(11072, 11073, 11074, 251978, 259287)

    -- Enchant Cloak - Resistance -- 13794
    recipe = AddRecipe(13794, Q.COMMON)
    recipe:SetSkillLevels(205, 205, 225, 245, 265)
    recipe:SetItemFilterType("ENCHANTING_CLOAK")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddTrainer(11072, 11073, 11074, 251978, 259287)

    -- Runed Arcanite Rod -- 20051
    recipe = AddRecipe(20051, Q.COMMON)
    recipe:SetSkillLevels(290, 290, 310, 330, 350)
    recipe:SetRecipeItem(16243, "BIND_ON_PICKUP")
    recipe:SetCraftedItem(16207, "BIND_ON_PICKUP")
    recipe:SetItemFilterType("ENCHANTING_ROD")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddLimitedVendor(12022, 1)

    -- Enchant Cloak - Greater Nature Resistance -- 25082
    recipe = AddRecipe(25082, Q.COMMON)
    recipe:SetSkillLevels(300, 300, 320, 340, 360)
    recipe:SetRecipeItem(20733, "BIND_ON_PICKUP")
    recipe:SetItemFilterType("ENCHANTING_CLOAK")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddRepVendor(FAC.CENARION_CIRCLE, REP.HONORED, 15419)
    recipe:AddRepVendor(FAC.THORIUM_BROTHERHOOD, REP.HONORED, 12944)

    -- Greater Mystic Wand -- 439134
    recipe = AddRecipe(439134, Q.UNCOMMON)
    recipe:SetSkillLevels(175, 175, 195, 215, 235)
    recipe:SetCraftedItem(217287, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ENCHANTING_WAND")
    recipe:AddFilters(F.ALLIANCE)
    recipe:AddTrainer(11072)

    -- Conductive Shield Coating -- 463869
    recipe = AddRecipe(463869, Q.COMMON)
    recipe:SetSkillLevels(275, 275, 285, 295, 305)
    recipe:SetRecipeItem(228981, "BIND_ON_PICKUP")
    recipe:SetCraftedItem(228980, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ENCHANTING_MISC")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddVendor(12944)

    -- Enchant Shield - Law of Nature -- 463871
    recipe = AddRecipe(463871, Q.RARE)
    recipe:SetSkillLevels(300, 300, 320, 340, 360)
    recipe:SetRecipeItem(228982, "BIND_ON_PICKUP")
    recipe:SetItemFilterType("ENCHANTING_SHIELD")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddRepVendor(FAC.TIMBERMAW_HOLD, REP.REVERED, 11557)

    -- Magnificent Trollshine -- 471400
    recipe = AddRecipe(471400, Q.COMMON)
    recipe:SetSkillLevels(300, 300, 310, 320, 330)
    recipe:SetRecipeItem(232610, "BIND_ON_PICKUP")
    recipe:SetCraftedItem(232611, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ENCHANTING_MISC")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddRepVendor(FAC.ZANDALAR_TRIBE, REP.HONORED, 14921)

    -- Enchanted Repellent -- 1213610
    recipe = AddRecipe(1213610, Q.UNCOMMON)
    recipe:SetSkillLevels(300, 300, 320, 340, 360)
    recipe:SetRecipeItem(234272, "BIND_ON_PICKUP")
    recipe:SetItemFilterType("ENCHANTING_MISC")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddRepVendor(FAC.CENARION_CIRCLE, REP.FRIENDLY, 15419)


    -- Dust to Motes -- 1245320
    recipe = AddRecipe(1245320, Q.COMMON)
    recipe:SetCraftedItem(247786, "BIND_ON_EQUIP")
    recipe:SetSkillLevels(1, 1, 10, 12, 15)
    recipe:SetItemFilterType("ENCHANTING_MATERIALS")
    recipe:AddFilters(F.ALLIANCE, F.HORDE, F.MISC1)
    recipe:AddCustom("DEFAULT_RECIPE")

    -- Novice's Practice Wand -- 1245321
    recipe = AddRecipe(1245321, Q.COMMON)
    recipe:SetSkillLevels(1, 1, 10, 12, 15)
    recipe:SetCraftedItem(247789, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ENCHANTING_WAND")
    recipe:AddFilters(F.ALLIANCE, F.HORDE, F.MISC1)
    recipe:AddCustom("DEFAULT_RECIPE")

    -- Enchanted Lute -- 1230643
    recipe = AddRecipe(1230643, Q.COMMON)
    recipe:SetSkillLevels(20, 20, 20, 20, 20)
    recipe:SetCraftedItem(279976, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ENCHANTING_MISC")
    recipe:AddFilters(F.ALLIANCE, F.HORDE, F.MISC1)
    recipe:AddTrainer(1317, 3011, 3345, 3606, 4213, 4616, 5157, 5695, 7949, 11065, 11066, 11067, 11068, 11070, 11071, 11072, 11074, 251978, 257004, 257020, 259287, 266881)
    recipe:AddQuest(96059, 97901, 97917, 97929, 97940, 97953, 98284, 98286)


    -- Mystic Mushroom -- 1248752
    recipe = AddRecipe(1248752, Q.RARE)
    recipe:SetSkillLevels(130, 130, 140, 160, 180)
    recipe:SetRecipeItem(249476, "BIND_ON_PICKUP")
    recipe:SetCraftedItem(249396, "BIND_ON_PICKUP")
    recipe:SetItemFilterType("ENCHANTING_RELIC")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddVendor(248199, 256732)
    recipe:AddMerchantFavor(45)

    -- Tenets of the Silver Hand -- 1248754
    recipe = AddRecipe(1248754, Q.RARE)
    recipe:SetSkillLevels(130, 130, 140, 160, 180)
    recipe:SetRecipeItem(249477, "BIND_ON_PICKUP")
    recipe:SetCraftedItem(249397, "BIND_ON_PICKUP")
    recipe:SetItemFilterType("ENCHANTING_RELIC")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddVendor(248199, 256732)
    recipe:AddMerchantFavor(45)

    -- Polished Driftwood Icon -- 1248755
    recipe = AddRecipe(1248755, Q.RARE)
    recipe:SetSkillLevels(130, 130, 140, 160, 180)
    recipe:SetRecipeItem(249478, "BIND_ON_PICKUP")
    recipe:SetCraftedItem(249398, "BIND_ON_PICKUP")
    recipe:SetItemFilterType("ENCHANTING_RELIC")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddVendor(248199, 256732)
    recipe:AddMerchantFavor(45)

    -- Enchant Weapon - Insight -- 1248757
    recipe = AddRecipe(1248757, Q.UNCOMMON)
    recipe:SetSkillLevels(140, 140, 140, 160, 180)
    recipe:SetRecipeItem(249479, "BIND_ON_PICKUP")
    recipe:SetItemFilterType("ENCHANTING_WEAPON")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddVendor(248199, 256732)
    recipe:AddMerchantFavor(45)

    -- Enchant Weapon - Recovery -- 1248760
    recipe = AddRecipe(1248760, Q.UNCOMMON)
    recipe:SetSkillLevels(140, 140, 140, 160, 180)
    recipe:SetRecipeItem(249480, "BIND_ON_PICKUP")
    recipe:SetItemFilterType("ENCHANTING_WEAPON")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddVendor(248199, 256732)
    recipe:AddMerchantFavor(45)

    -- Enchant Weapon - Revelation -- 1248805
    recipe = AddRecipe(1248805, Q.UNCOMMON)
    recipe:SetSkillLevels(140, 140, 140, 160, 180)
    recipe:SetRecipeItem(249481, "BIND_ON_PICKUP")
    recipe:SetItemFilterType("ENCHANTING_WEAPON")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddVendor(248199, 256732)
    recipe:AddMerchantFavor(45)

    -- Glimmering Staff -- 1248703
    recipe = AddRecipe(1248703, Q.RARE)
    recipe:SetSkillLevels(140, 140, 140, 160, 180)
    recipe:SetRecipeItem(249482, "BIND_ON_PICKUP")
    recipe:SetCraftedItem(249392, "BIND_ON_PICKUP")
    recipe:SetItemFilterType("ENCHANTING_STAFF")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddVendor(248199, 256732)
    recipe:AddMerchantFavor(45)

    -- Soulstaff -- 1248739
    recipe = AddRecipe(1248739, Q.RARE)
    recipe:SetSkillLevels(140, 140, 140, 160, 180)
    recipe:SetRecipeItem(249483, "BIND_ON_PICKUP")
    recipe:SetCraftedItem(249393, "BIND_ON_PICKUP")
    recipe:SetItemFilterType("ENCHANTING_STAFF")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddVendor(248199, 256732)
    recipe:AddMerchantFavor(45)

    -- Orb of Mystic Insight -- 1248745
    recipe = AddRecipe(1248745, Q.RARE)
    recipe:SetSkillLevels(140, 140, 140, 160, 180)
    recipe:SetRecipeItem(249484, "BIND_ON_PICKUP")
    recipe:SetCraftedItem(249394, "BIND_ON_PICKUP")
    recipe:SetItemFilterType("ENCHANTING_MISC")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddVendor(248199, 256732)
    recipe:AddMerchantFavor(45)

    -- Orb of Souls -- 1248748
    recipe = AddRecipe(1248748, Q.RARE)
    recipe:SetSkillLevels(140, 140, 140, 160, 180)
    recipe:SetRecipeItem(249485, "BIND_ON_PICKUP")
    recipe:SetCraftedItem(249395, "BIND_ON_PICKUP")
    recipe:SetItemFilterType("ENCHANTING_MISC")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddVendor(248199, 256732)
    recipe:AddMerchantFavor(45)

    -- Talons of Wrath -- 1248974
    recipe = AddRecipe(1248974, Q.RARE)
    recipe:SetSkillLevels(210, 210, 225, 245, 265)
    recipe:SetRecipeItem(249493, "BIND_ON_PICKUP")
    recipe:SetCraftedItem(249441, "BIND_ON_PICKUP")
    recipe:SetItemFilterType("ENCHANTING_RELIC")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddRepVendor(FAC.DUROTAR_SUPPLY_AND_LOGISTICS, REP.FRIENDLY, 248199)
    recipe:AddRepVendor(FAC.AZEROTH_COMMERCE_AUTHORITY, REP.FRIENDLY, 256732)
    recipe:AddMerchantFavor(120)

    -- Libram of Invocation -- 1249006
    recipe = AddRecipe(1249006, Q.RARE)
    recipe:SetSkillLevels(210, 210, 225, 245, 265)
    recipe:SetRecipeItem(249494, "BIND_ON_PICKUP")
    recipe:SetCraftedItem(249442, "BIND_ON_PICKUP")
    recipe:SetItemFilterType("ENCHANTING_RELIC")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddRepVendor(FAC.DUROTAR_SUPPLY_AND_LOGISTICS, REP.FRIENDLY, 248199)
    recipe:AddRepVendor(FAC.AZEROTH_COMMERCE_AUTHORITY, REP.FRIENDLY, 256732)
    recipe:AddMerchantFavor(120)

    -- Totem of Ancestral Protection -- 1249015
    recipe = AddRecipe(1249015, Q.RARE)
    recipe:SetSkillLevels(210, 210, 225, 245, 265)
    recipe:SetRecipeItem(249495, "BIND_ON_PICKUP")
    recipe:SetCraftedItem(249443, "BIND_ON_PICKUP")
    recipe:SetItemFilterType("ENCHANTING_RELIC")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddRepVendor(FAC.DUROTAR_SUPPLY_AND_LOGISTICS, REP.FRIENDLY, 248199)
    recipe:AddRepVendor(FAC.AZEROTH_COMMERCE_AUTHORITY, REP.FRIENDLY, 256732)
    recipe:AddMerchantFavor(120)

    -- Enchant Necklace - Strength -- 1249019
    recipe = AddRecipe(1249019, Q.UNCOMMON)
    recipe:SetSkillLevels(210, 210, 225, 245, 265)
    recipe:SetRecipeItem(249496, "BIND_ON_PICKUP")
    recipe:SetItemFilterType("ENCHANTING_NECK")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddRepVendor(FAC.DUROTAR_SUPPLY_AND_LOGISTICS, REP.FRIENDLY, 248199)
    recipe:AddRepVendor(FAC.AZEROTH_COMMERCE_AUTHORITY, REP.FRIENDLY, 256732)
    recipe:AddMerchantFavor(120)

    -- Enchant Necklace - Spell Power -- 1249057
    recipe = AddRecipe(1249057, Q.UNCOMMON)
    recipe:SetSkillLevels(210, 210, 225, 245, 265)
    recipe:SetRecipeItem(249502, "BIND_ON_PICKUP")
    recipe:SetItemFilterType("ENCHANTING_NECK")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddRepVendor(FAC.DUROTAR_SUPPLY_AND_LOGISTICS, REP.FRIENDLY, 248199)
    recipe:AddRepVendor(FAC.AZEROTH_COMMERCE_AUTHORITY, REP.FRIENDLY, 256732)
    recipe:AddMerchantFavor(120)

    -- Enchant Necklace - Healing Power -- 1249058
    recipe = AddRecipe(1249058, Q.UNCOMMON)
    recipe:SetSkillLevels(210, 210, 225, 245, 265)
    recipe:SetRecipeItem(249503, "BIND_ON_PICKUP")
    recipe:SetItemFilterType("ENCHANTING_NECK")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddRepVendor(FAC.DUROTAR_SUPPLY_AND_LOGISTICS, REP.FRIENDLY, 248199)
    recipe:AddRepVendor(FAC.AZEROTH_COMMERCE_AUTHORITY, REP.FRIENDLY, 256732)
    recipe:AddMerchantFavor(120)

    -- Enchant Necklace - Agility -- 1249059
    recipe = AddRecipe(1249059, Q.UNCOMMON)
    recipe:SetSkillLevels(210, 210, 225, 245, 265)
    recipe:SetRecipeItem(249504, "BIND_ON_PICKUP")
    recipe:SetItemFilterType("ENCHANTING_NECK")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddRepVendor(FAC.DUROTAR_SUPPLY_AND_LOGISTICS, REP.FRIENDLY, 248199)
    recipe:AddRepVendor(FAC.AZEROTH_COMMERCE_AUTHORITY, REP.FRIENDLY, 256732)
    recipe:AddMerchantFavor(120)

    -- Enchant Necklace - Deflection -- 1249060
    recipe = AddRecipe(1249060, Q.UNCOMMON)
    recipe:SetSkillLevels(210, 210, 225, 245, 265)
    recipe:SetRecipeItem(249505, "BIND_ON_PICKUP")
    recipe:SetItemFilterType("ENCHANTING_NECK")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddRepVendor(FAC.DUROTAR_SUPPLY_AND_LOGISTICS, REP.FRIENDLY, 248199)
    recipe:AddRepVendor(FAC.AZEROTH_COMMERCE_AUTHORITY, REP.FRIENDLY, 256732)
    recipe:AddMerchantFavor(120)

    -- Radiant Staff -- 1249061
    recipe = AddRecipe(1249061, Q.RARE)
    recipe:SetSkillLevels(220, 220, 225, 245, 265)
    recipe:SetRecipeItem(249506, "BIND_ON_PICKUP")
    recipe:SetCraftedItem(249453, "BIND_ON_PICKUP")
    recipe:SetItemFilterType("ENCHANTING_STAFF")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddRepVendor(FAC.DUROTAR_SUPPLY_AND_LOGISTICS, REP.FRIENDLY, 248199)
    recipe:AddRepVendor(FAC.AZEROTH_COMMERCE_AUTHORITY, REP.FRIENDLY, 256732)
    recipe:AddMerchantFavor(120)

    -- Dreamstaff -- 1249064
    recipe = AddRecipe(1249064, Q.RARE)
    recipe:SetSkillLevels(220, 220, 225, 245, 265)
    recipe:SetRecipeItem(249507, "BIND_ON_PICKUP")
    recipe:SetCraftedItem(249454, "BIND_ON_PICKUP")
    recipe:SetItemFilterType("ENCHANTING_STAFF")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddRepVendor(FAC.DUROTAR_SUPPLY_AND_LOGISTICS, REP.FRIENDLY, 248199)
    recipe:AddRepVendor(FAC.AZEROTH_COMMERCE_AUTHORITY, REP.FRIENDLY, 256732)
    recipe:AddMerchantFavor(120)

    -- Truesilver Conduit -- 1249069
    recipe = AddRecipe(1249069, Q.RARE)
    recipe:SetSkillLevels(220, 220, 225, 245, 265)
    recipe:SetRecipeItem(249508, "BIND_ON_PICKUP")
    recipe:SetCraftedItem(249455, "BIND_ON_PICKUP")
    recipe:SetItemFilterType("ENCHANTING_MISC")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddRepVendor(FAC.DUROTAR_SUPPLY_AND_LOGISTICS, REP.FRIENDLY, 248199)
    recipe:AddRepVendor(FAC.AZEROTH_COMMERCE_AUTHORITY, REP.FRIENDLY, 256732)
    recipe:AddMerchantFavor(120)

    -- Twisting Essence Jar -- 1249070
    recipe = AddRecipe(1249070, Q.RARE)
    recipe:SetSkillLevels(220, 220, 225, 245, 265)
    recipe:SetRecipeItem(249509, "BIND_ON_PICKUP")
    recipe:SetCraftedItem(249456, "BIND_ON_PICKUP")
    recipe:SetItemFilterType("ENCHANTING_MISC")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddRepVendor(FAC.DUROTAR_SUPPLY_AND_LOGISTICS, REP.FRIENDLY, 248199)
    recipe:AddRepVendor(FAC.AZEROTH_COMMERCE_AUTHORITY, REP.FRIENDLY, 256732)
    recipe:AddMerchantFavor(120)

    -- Enchant Chest - Absorption -- 1249071
    recipe = AddRecipe(1249071, Q.UNCOMMON)
    recipe:SetSkillLevels(220, 220, 225, 245, 265)
    recipe:SetRecipeItem(249510, "BIND_ON_PICKUP")
    recipe:SetItemFilterType("ENCHANTING_CHEST")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddRepVendor(FAC.DUROTAR_SUPPLY_AND_LOGISTICS, REP.FRIENDLY, 248199)
    recipe:AddRepVendor(FAC.AZEROTH_COMMERCE_AUTHORITY, REP.FRIENDLY, 256732)
    recipe:AddMerchantFavor(120)

    -- Enchant 2H Weapon - Mighty Spell Power -- 1248607
    recipe = AddRecipe(1248607, Q.UNCOMMON)
    recipe:SetSkillLevels(300, 300, 320, 340, 360)
    recipe:SetRecipeItem(249525, "BIND_ON_PICKUP")
    recipe:SetItemFilterType("ENCHANTING_2H_WEAPON")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddRepVendor(FAC.DUROTAR_SUPPLY_AND_LOGISTICS, REP.HONORED, 248199)
    recipe:AddRepVendor(FAC.AZEROTH_COMMERCE_AUTHORITY, REP.HONORED, 256732)
    recipe:AddMerchantFavor(240)

    -- Enchant 2H Weapon - Mighty Healing Power -- 1248636
    recipe = AddRecipe(1248636, Q.UNCOMMON)
    recipe:SetSkillLevels(300, 300, 320, 340, 360)
    recipe:SetRecipeItem(249526, "BIND_ON_PICKUP")
    recipe:SetItemFilterType("ENCHANTING_2H_WEAPON")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddRepVendor(FAC.DUROTAR_SUPPLY_AND_LOGISTICS, REP.HONORED, 248199)
    recipe:AddRepVendor(FAC.AZEROTH_COMMERCE_AUTHORITY, REP.HONORED, 256732)
    recipe:AddMerchantFavor(240)

    -- Idol of the Dream -- 1249128
    recipe = AddRecipe(1249128, Q.RARE)
    recipe:SetSkillLevels(300, 300, 320, 340, 360)
    recipe:SetRecipeItem(249529, "BIND_ON_PICKUP")
    recipe:SetCraftedItem(220606, "BIND_ON_PICKUP")
    recipe:SetItemFilterType("ENCHANTING_RELIC")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddRepVendor(FAC.DUROTAR_SUPPLY_AND_LOGISTICS, REP.HONORED, 248199)
    recipe:AddRepVendor(FAC.AZEROTH_COMMERCE_AUTHORITY, REP.HONORED, 256732)
    recipe:AddMerchantFavor(240)

    -- Libram of Holy Alacrity -- 1249152
    recipe = AddRecipe(1249152, Q.RARE)
    recipe:SetSkillLevels(300, 300, 320, 340, 360)
    recipe:SetRecipeItem(249530, "BIND_ON_PICKUP")
    recipe:SetCraftedItem(228175, "BIND_ON_PICKUP")
    recipe:SetItemFilterType("ENCHANTING_RELIC")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddRepVendor(FAC.DUROTAR_SUPPLY_AND_LOGISTICS, REP.HONORED, 248199)
    recipe:AddRepVendor(FAC.AZEROTH_COMMERCE_AUTHORITY, REP.HONORED, 256732)
    recipe:AddMerchantFavor(240)

    -- Totem of Thunder -- 1249154
    recipe = AddRecipe(1249154, Q.RARE)
    recipe:SetSkillLevels(300, 300, 320, 340, 360)
    recipe:SetRecipeItem(249532, "BIND_ON_PICKUP")
    recipe:SetCraftedItem(228176, "BIND_ON_PICKUP")
    recipe:SetItemFilterType("ENCHANTING_RELIC")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddRepVendor(FAC.DUROTAR_SUPPLY_AND_LOGISTICS, REP.HONORED, 248199)
    recipe:AddRepVendor(FAC.AZEROTH_COMMERCE_AUTHORITY, REP.HONORED, 256732)
    recipe:AddMerchantFavor(240)

    -- Enchant Gloves - Arcane Power -- 1213626
    recipe = AddRecipe(1213626, Q.UNCOMMON)
    recipe:SetSkillLevels(300, 300, 320, 340, 360)
    recipe:SetRecipeItem(249534, "BIND_ON_PICKUP")
    recipe:SetItemFilterType("ENCHANTING_GLOVES")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddRepVendor(FAC.DUROTAR_SUPPLY_AND_LOGISTICS, REP.HONORED, 248199)
    recipe:AddRepVendor(FAC.AZEROTH_COMMERCE_AUTHORITY, REP.HONORED, 256732)
    recipe:AddMerchantFavor(240)

    -- Enchant Gloves - Natural Power -- 1248645
    recipe = AddRecipe(1248645, Q.UNCOMMON)
    recipe:SetSkillLevels(300, 300, 320, 340, 360)
    recipe:SetRecipeItem(249535, "BIND_ON_PICKUP")
    recipe:SetItemFilterType("ENCHANTING_GLOVES")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddRepVendor(FAC.DUROTAR_SUPPLY_AND_LOGISTICS, REP.HONORED, 248199)
    recipe:AddRepVendor(FAC.AZEROTH_COMMERCE_AUTHORITY, REP.HONORED, 256732)
    recipe:AddMerchantFavor(240)

    -- Enchant Gloves - Holy Power -- 1213622
    recipe = AddRecipe(1213622, Q.UNCOMMON)
    recipe:SetSkillLevels(300, 300, 320, 340, 360)
    recipe:SetRecipeItem(249536, "BIND_ON_PICKUP")
    recipe:SetItemFilterType("ENCHANTING_GLOVES")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddRepVendor(FAC.DUROTAR_SUPPLY_AND_LOGISTICS, REP.HONORED, 248199)
    recipe:AddRepVendor(FAC.AZEROTH_COMMERCE_AUTHORITY, REP.HONORED, 256732)
    recipe:AddMerchantFavor(240)

    -- Brilliant Wand -- 1248650
    recipe = AddRecipe(1248650, Q.RARE)
    recipe:SetSkillLevels(275, 275, 320, 340, 360)
    recipe:SetRecipeItem(249537, "BIND_ON_PICKUP")
    recipe:SetCraftedItem(249385, "BIND_ON_PICKUP")
    recipe:SetItemFilterType("ENCHANTING_WAND")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddRepVendor(FAC.DUROTAR_SUPPLY_AND_LOGISTICS, REP.HONORED, 248199)
    recipe:AddRepVendor(FAC.AZEROTH_COMMERCE_AUTHORITY, REP.HONORED, 256732)
    recipe:AddMerchantFavor(180)

    -- Enchant Bracer - Superior Intellect -- 1248661
    recipe = AddRecipe(1248661, Q.UNCOMMON)
    recipe:SetSkillLevels(300, 300, 320, 340, 360)
    recipe:SetRecipeItem(249538, "BIND_ON_PICKUP")
    recipe:SetItemFilterType("ENCHANTING_BRACER")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddRepVendor(FAC.DUROTAR_SUPPLY_AND_LOGISTICS, REP.HONORED, 248199)
    recipe:AddRepVendor(FAC.AZEROTH_COMMERCE_AUTHORITY, REP.HONORED, 256732)
    recipe:AddMerchantFavor(240)

    -- Enchant Bracer - Superior Deflection -- 1248665
    recipe = AddRecipe(1248665, Q.UNCOMMON)
    recipe:SetSkillLevels(300, 300, 320, 340, 360)
    recipe:SetRecipeItem(249539, "BIND_ON_PICKUP")
    recipe:SetItemFilterType("ENCHANTING_BRACER")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddRepVendor(FAC.DUROTAR_SUPPLY_AND_LOGISTICS, REP.HONORED, 248199)
    recipe:AddRepVendor(FAC.AZEROTH_COMMERCE_AUTHORITY, REP.HONORED, 256732)
    recipe:AddMerchantFavor(240)

    -- Enchant Off-Hand - Wisdom -- 1219579
    recipe = AddRecipe(1219579, Q.RARE)
    recipe:SetSkillLevels(300, 300, 320, 340, 360)
    recipe:SetRecipeItem(274393, "BIND_ON_PICKUP")
    recipe:SetItemFilterType("ENCHANTING_MISC")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddRepVendor(FAC.DUROTAR_SUPPLY_AND_LOGISTICS, REP.HONORED, 248199)
    recipe:AddRepVendor(FAC.AZEROTH_COMMERCE_AUTHORITY, REP.HONORED, 256732)
    recipe:AddMerchantFavor(240)

    -- Enchant 2H Weapon - Spellblasting -- 1219580
    recipe = AddRecipe(1219580, Q.RARE)
    recipe:SetSkillLevels(300, 300, 320, 340, 360)
    recipe:SetRecipeItem(274394, "BIND_ON_PICKUP")
    recipe:SetItemFilterType("ENCHANTING_2H_WEAPON")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddRepVendor(FAC.DUROTAR_SUPPLY_AND_LOGISTICS, REP.HONORED, 248199)
    recipe:AddRepVendor(FAC.AZEROTH_COMMERCE_AUTHORITY, REP.HONORED, 256732)
    recipe:AddMerchantFavor(240)

    -- Enchant Gloves - Superior Strength -- 1248640
    recipe = AddRecipe(1248640, Q.RARE)
    recipe:SetSkillLevels(300, 300, 320, 340, 360)
    recipe:SetRecipeItem(274398, "BIND_ON_PICKUP")
    recipe:SetItemFilterType("ENCHANTING_GLOVES")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddRepVendor(FAC.DUROTAR_SUPPLY_AND_LOGISTICS, REP.HONORED, 248199)
    recipe:AddRepVendor(FAC.AZEROTH_COMMERCE_AUTHORITY, REP.HONORED, 256732)
    recipe:AddMerchantFavor(240)

    -- Enchant Cloak - Agility -- 1219587
    recipe = AddRecipe(1219587, Q.RARE)
    recipe:SetSkillLevels(300, 300, 320, 340, 360)
    recipe:SetRecipeItem(274399, "BIND_ON_PICKUP")
    recipe:SetItemFilterType("ENCHANTING_CLOAK")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddRepVendor(FAC.DUROTAR_SUPPLY_AND_LOGISTICS, REP.HONORED, 248199)
    recipe:AddRepVendor(FAC.AZEROTH_COMMERCE_AUTHORITY, REP.HONORED, 256732)
    recipe:AddMerchantFavor(240)

    -- Enchant Bracer - Greater Spellpower -- 1220624
    recipe = AddRecipe(1220624, Q.RARE)
    recipe:SetSkillLevels(300, 300, 320, 340, 360)
    recipe:SetRecipeItem(274401, "BIND_ON_PICKUP")
    recipe:SetItemFilterType("ENCHANTING_BRACER")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddRepVendor(FAC.DUROTAR_SUPPLY_AND_LOGISTICS, REP.HONORED, 248199)
    recipe:AddRepVendor(FAC.AZEROTH_COMMERCE_AUTHORITY, REP.HONORED, 256732)
    recipe:AddMerchantFavor(240)

    -- Frozen Heart of the Mountain -- 1249107
    recipe = AddRecipe(1249107, Q.RARE)
    recipe:SetSkillLevels(265, 265, 285, 305, 325)
    recipe:SetRecipeItem(249519, "BIND_ON_PICKUP")
    recipe:SetCraftedItem(249469, "BIND_ON_PICKUP")
    recipe:SetItemFilterType("ENCHANTING_MISC")
    recipe:AddFilters(F.ALLIANCE, F.HORDE, F.INSTANCE)
    recipe:AddMobDrop(16080)

    -- Lesser Eternal Wand -- 1248505
    recipe = AddRecipe(1248505, Q.UNCOMMON)
    recipe:SetSkillLevels(245, 245, 265, 285, 305)
    recipe:SetRecipeItem(249515, "BIND_ON_PICKUP")
    recipe:SetCraftedItem(249232, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ENCHANTING_WAND")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddMobDrop(6556)

    -- Greater Eternal Wand -- 1248515
    recipe = AddRecipe(1248515, Q.UNCOMMON)
    recipe:SetSkillLevels(275, 275, 285, 295, 305)
    recipe:SetRecipeItem(249522, "BIND_ON_PICKUP")
    recipe:SetCraftedItem(249237, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ENCHANTING_WAND")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddMobDrop(9778)

    -- Enchant Gloves - Lotus Claw -- 1294054
    recipe = AddRecipe(1294054, Q.UNCOMMON)
    recipe:SetSkillLevels(295, 295, 295, 297, 300)
    recipe:SetRecipeItem(274424, "BIND_ON_PICKUP")
    recipe:SetItemFilterType("ENCHANTING_GLOVES")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddVendor(256629)


    -------------------------------------------------------------------------------
    -- Classic.
    -------------------------------------------------------------------------------
    -- Enchant Bracer - Inferior Stamina -- 7418
    recipe = AddRecipe(7418, Q.COMMON)
    recipe:SetSkillLevels(1, 1, 20, 22, 25)
    recipe:SetItemFilterType("ENCHANTING_BRACER")
    recipe:AddFilters(F.ALLIANCE, F.HORDE, F.MISC1)
    recipe:AddCustom("DEFAULT_RECIPE")

    -- Enchant Chest - Inferior Stamina -- 7420
    recipe = AddRecipe(7420, Q.COMMON)
    recipe:SetSkillLevels(15, 15, 70, 90, 110)
    recipe:SetItemFilterType("ENCHANTING_CHEST")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddTrainer(1317, 3011, 3345, 3606, 4213, 4616, 5157, 5695, 7949, 11065, 11066, 11067, 11068, 11070, 11071, 11072, 11073, 11074, 251978, 257004, 257020, 259287, 266881)

    -- Runed Copper Rod -- 7421
    recipe = AddRecipe(7421, Q.COMMON)
    recipe:SetSkillLevels(1, 1, 5, 7, 10)
    recipe:SetCraftedItem(6218, "BIND_ON_PICKUP")
    recipe:SetItemFilterType("ENCHANTING_ROD")
    recipe:AddFilters(F.ALLIANCE, F.HORDE, F.MISC1)
    recipe:AddCustom("DEFAULT_RECIPE")

    -- Enchant Chest - Minor Absorption -- 7426
    recipe = AddRecipe(7426, Q.COMMON)
    recipe:SetSkillLevels(40, 40, 90, 110, 130)
    recipe:SetItemFilterType("ENCHANTING_CHEST")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddTrainer(1317, 3011, 3345, 3606, 4213, 4616, 5157, 5695, 7949, 11065, 11066, 11067, 11068, 11070, 11071, 11072, 11073, 11074, 251978, 257004, 257020, 259287, 266881)

    -- Enchant Bracer - Minor Deflect -- 7428
    recipe = AddRecipe(7428, Q.COMMON)
    recipe:SetSkillLevels(1, 1, 80, 100, 120)
    recipe:SetItemFilterType("ENCHANTING_BRACER")
    recipe:AddFilters(F.ALLIANCE, F.HORDE, F.MISC1, F.TANK)
    recipe:AddCustom("DEFAULT_RECIPE")

    -- Enchant Chest - Minor Intellect -- 7443
    recipe = AddRecipe(7443, Q.UNCOMMON)
    recipe:SetSkillLevels(20, 20, 80, 100, 120)
    recipe:SetRecipeItem(6342, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ENCHANTING_CHEST")
    recipe:AddFilters(F.ALLIANCE, F.HORDE, F.HEALER, F.CASTER)
    recipe:AddLimitedVendor(1318, 1, 3012, 1, 3346, 1, 4228, 1, 4617, 1, 5158, 1, 5757, 1, 5758, 1)
    recipe:AddVendor(5695, 15419, 257004, 257020)
    recipe:AddWorldDrop(Z.RAGEFIRE_CHASM, Z.SHADOWFANG_KEEP, Z.THE_DEADMINES, Z.WAILING_CAVERNS, Z.EASTERN_KINGDOMS, Z.KALIMDOR)

    -- Enchant Bracer - Minor Stamina -- 7457
    recipe = AddRecipe(7457, Q.COMMON)
    recipe:SetSkillLevels(50, 50, 100, 120, 140)
    recipe:SetItemFilterType("ENCHANTING_BRACER")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddTrainer(1317, 3011, 3345, 3606, 4213, 4616, 5157, 5695, 7949, 11065, 11066, 11067, 11068, 11070, 11071, 11072, 11073, 11074, 251978, 257004, 257020, 259287, 266881)

    -- Enchant 2H Weapon - Minor Impact -- 7745
    recipe = AddRecipe(7745, Q.COMMON)
    recipe:SetSkillLevels(100, 100, 130, 150, 170)
    recipe:SetItemFilterType("ENCHANTING_2H_WEAPON")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddTrainer(1317, 3011, 3345, 4213, 4616, 5157, 7949, 11072, 11073, 11074, 251978, 259287)

    -- Enchant Chest - Lesser Stamina -- 7748
    recipe = AddRecipe(7748, Q.COMMON)
    recipe:SetSkillLevels(60, 60, 105, 125, 145)
    recipe:SetItemFilterType("ENCHANTING_CHEST")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddTrainer(1317, 3011, 3345, 3606, 4213, 4616, 5157, 5695, 7949, 11065, 11066, 11067, 11068, 11070, 11071, 11072, 11073, 11074, 251978, 257004, 257020, 259287, 266881)

    -- Enchant Bracer - Minor Spirit -- 7766
    recipe = AddRecipe(7766, Q.UNCOMMON)
    recipe:SetSkillLevels(60, 60, 105, 125, 145)
    recipe:SetRecipeItem(6344, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ENCHANTING_BRACER")
    recipe:AddFilters(F.ALLIANCE, F.HORDE, F.HEALER, F.CASTER)
    recipe:AddWorldDrop(Z.BLACKFATHOM_DEEPS, Z.GNOMEREGAN, Z.RAGEFIRE_CHASM, Z.RAZORFEN_KRAUL, Z.RUINS_OF_LORDAERON, Z.SHADOWFANG_KEEP, Z.THE_DEADMINES, Z.THE_HALL_OF_THANES, Z.THE_STOCKADE, Z.WAILING_CAVERNS, Z.EASTERN_KINGDOMS, Z.KALIMDOR)

    -- Enchant Cloak - Minor Resistance -- 7454
    recipe = AddRecipe(7454, Q.COMMON)
    recipe:SetSkillLevels(45, 45, 95, 115, 135)
    recipe:SetItemFilterType("ENCHANTING_CLOAK")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddTrainer(1317, 3011, 3345, 3606, 4213, 4616, 5157, 5695, 7949, 11065, 11066, 11067, 11068, 11070, 11071, 11072, 11073, 11074, 251978, 257004, 257020, 259287, 266881)

    -- Enchant Cloak - Minor Protection -- 7771
    recipe = AddRecipe(7771, Q.COMMON)
    recipe:SetRecipeItem(6345, "BIND_ON_EQUIP")
    recipe:SetSkillLevels(90, 90, 110, 130, 150)
    recipe:SetItemFilterType("ENCHANTING_CLOAK")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddTrainer(1317, 3011, 3345, 3606, 4213, 4616, 5157, 5695, 7949, 11065, 11066, 11067, 11068, 11070, 11071, 11072, 11073, 11074, 251978, 257004, 257020, 259287, 266881)

    -- Enchant Chest - Lesser Intellect -- 7776
    recipe = AddRecipe(7776, Q.UNCOMMON)
    recipe:SetSkillLevels(80, 80, 115, 135, 155)
    recipe:SetRecipeItem(6346, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ENCHANTING_CHEST")
    recipe:AddFilters(F.ALLIANCE, F.HORDE, F.HEALER, F.CASTER)
    recipe:AddMobDrop(3715)

    -- Enchant Bracer - Minor Agility -- 7779
    recipe = AddRecipe(7779, Q.COMMON)
    recipe:SetSkillLevels(80, 80, 115, 135, 155)
    recipe:SetItemFilterType("ENCHANTING_BRACER")
    recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS)
    recipe:AddTrainer(1317, 3011, 3345, 4213, 4616, 5157, 7949, 11072, 11073, 11074, 251978, 259287)

    -- Enchant Bracer - Minor Strength -- 7782
    recipe = AddRecipe(7782, Q.UNCOMMON)
    recipe:SetSkillLevels(80, 80, 115, 135, 155)
    recipe:SetRecipeItem(6347, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ENCHANTING_BRACER")
    recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS)
    recipe:AddWorldDrop(Z.BLACKFATHOM_DEEPS, Z.RAGEFIRE_CHASM, Z.RAZORFEN_KRAUL, Z.RUINS_OF_LORDAERON, Z.SHADOWFANG_KEEP, Z.THE_DEADMINES, Z.THE_HALL_OF_THANES, Z.THE_STOCKADE, Z.WAILING_CAVERNS, Z.EASTERN_KINGDOMS, Z.KALIMDOR)

    -- Enchant Weapon - Minor Beastslayer -- 7786
    recipe = AddRecipe(7786, Q.UNCOMMON)
    recipe:SetSkillLevels(90, 90, 120, 140, 160)
    recipe:SetRecipeItem(6348, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ENCHANTING_WEAPON")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddWorldDrop(Z.BLACKFATHOM_DEEPS, Z.GNOMEREGAN, Z.RAGEFIRE_CHASM, Z.RAZORFEN_KRAUL, Z.RUINS_OF_LORDAERON, Z.SHADOWFANG_KEEP, Z.THE_DEADMINES, Z.THE_HALL_OF_THANES, Z.THE_STOCKADE, Z.WAILING_CAVERNS, Z.EASTERN_KINGDOMS, Z.KALIMDOR)

    -- Enchant Weapon - Minor Striking -- 7788
    recipe = AddRecipe(7788, Q.COMMON)
    recipe:SetSkillLevels(90, 90, 120, 140, 160)
    recipe:SetItemFilterType("ENCHANTING_WEAPON")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddTrainer(1317, 3011, 3345, 4213, 4616, 5157, 7949, 11072, 11073, 11074, 251978, 259287)

    -- Enchant 2H Weapon - Lesser Intellect -- 7793
    recipe = AddRecipe(7793, Q.COMMON)
    recipe:SetSkillLevels(100, 100, 130, 150, 170)
    recipe:SetRecipeItem(6349, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ENCHANTING_2H_WEAPON")
    recipe:AddFilters(F.ALLIANCE, F.HORDE, F.HEALER, F.CASTER)
    recipe:AddLimitedVendor(3012, 1, 3346, 1, 5158, 1, 5758, 1)

    -- Enchant Chest - Stamina -- 7857
    recipe = AddRecipe(7857, Q.COMMON)
    recipe:SetSkillLevels(120, 120, 145, 165, 185)
    recipe:SetItemFilterType("ENCHANTING_CHEST")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddTrainer(1317, 3011, 3345, 4213, 4616, 5157, 7949, 11072, 11073, 11074, 251978, 259287)

    -- Enchant Bracer - Lesser Spirit -- 7859
    recipe = AddRecipe(7859, Q.UNCOMMON)
    recipe:SetSkillLevels(120, 120, 145, 165, 185)
    recipe:SetRecipeItem(6375, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ENCHANTING_BRACER")
    recipe:AddFilters(F.ALLIANCE, F.HORDE, F.HEALER, F.CASTER)
    recipe:AddWorldDrop(Z.BLACKFATHOM_DEEPS, Z.GNOMEREGAN, Z.RAGEFIRE_CHASM, Z.RAZORFEN_KRAUL, Z.RUINS_OF_LORDAERON, Z.SCARLET_MONASTERY, Z.SHADOWFANG_KEEP, Z.THE_DEADMINES, Z.THE_HALL_OF_THANES, Z.THE_STOCKADE, Z.WAILING_CAVERNS, Z.EASTERN_KINGDOMS, Z.KALIMDOR)

    -- Enchant Boots - Minor Stamina -- 7863
    recipe = AddRecipe(7863, Q.COMMON)
    recipe:SetRecipeItem(6376, "BIND_ON_EQUIP")
    recipe:SetSkillLevels(125, 125, 150, 170, 190)
    recipe:SetItemFilterType("ENCHANTING_BOOTS")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddTrainer(1317, 3011, 3345, 4213, 4616, 5157, 7949, 11072, 11073, 11074, 251978, 259287)

    -- Enchant Boots - Minor Agility -- 7867
    recipe = AddRecipe(7867, Q.UNCOMMON)
    recipe:SetSkillLevels(125, 125, 150, 170, 190)
    recipe:SetRecipeItem(6377, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ENCHANTING_BOOTS")
    recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS)
    recipe:AddLimitedVendor(3012, 1, 3537, 1)

    -- Enchant Shield - Minor Stamina -- 13378
    recipe = AddRecipe(13378, Q.COMMON)
    recipe:SetSkillLevels(105, 105, 130, 150, 170)
    recipe:SetItemFilterType("ENCHANTING_SHIELD")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddTrainer(1317, 3011, 3345, 4213, 4616, 5157, 7949, 11072, 11073, 11074, 251978, 259287)

    -- Enchant 2H Weapon - Lesser Spirit -- 13380
    recipe = AddRecipe(13380, Q.UNCOMMON)
    recipe:SetSkillLevels(110, 110, 135, 155, 175)
    recipe:SetRecipeItem(11038, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ENCHANTING_2H_WEAPON")
    recipe:AddFilters(F.ALLIANCE, F.HORDE, F.HEALER, F.CASTER)
    recipe:AddWorldDrop(Z.BLACKFATHOM_DEEPS, Z.GNOMEREGAN, Z.RAGEFIRE_CHASM, Z.RAZORFEN_KRAUL, Z.RUINS_OF_LORDAERON, Z.SCARLET_MONASTERY, Z.SHADOWFANG_KEEP, Z.THE_DEADMINES, Z.THE_HALL_OF_THANES, Z.THE_STOCKADE, Z.WAILING_CAVERNS, Z.EASTERN_KINGDOMS, Z.KALIMDOR)

    -- Enchant Cloak - Minor Agility -- 13419
    recipe = AddRecipe(13419, Q.UNCOMMON)
    recipe:SetSkillLevels(110, 110, 135, 155, 175)
    recipe:SetRecipeItem(11039, "BIND_ON_PICKUP")
    recipe:SetItemFilterType("ENCHANTING_CLOAK")
    recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS)
    recipe:AddLimitedVendor(3954, 1, 12043, 1)
    recipe:AddWorldDrop(Z.BLACKFATHOM_DEEPS, Z.GNOMEREGAN, Z.RAGEFIRE_CHASM, Z.RAZORFEN_KRAUL, Z.RUINS_OF_LORDAERON, Z.SCARLET_MONASTERY, Z.SHADOWFANG_KEEP, Z.THE_DEADMINES, Z.THE_HALL_OF_THANES, Z.THE_STOCKADE, Z.WAILING_CAVERNS, Z.EASTERN_KINGDOMS, Z.KALIMDOR)

    -- Enchant Cloak - Lesser Protection -- 13421
    recipe = AddRecipe(13421, Q.COMMON)
    recipe:SetSkillLevels(115, 115, 140, 160, 180)
    recipe:SetItemFilterType("ENCHANTING_CLOAK")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddTrainer(1317, 3011, 3345, 4213, 4616, 5157, 7949, 11072, 11073, 11074, 251978, 259287)

    -- Enchant Shield - Lesser Protection -- 13464
    recipe = AddRecipe(13464, Q.UNCOMMON)
    recipe:SetSkillLevels(115, 115, 140, 160, 180)
    recipe:SetRecipeItem(11081, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ENCHANTING_SHIELD")
    recipe:AddFilters(F.ALLIANCE, F.HORDE, F.TANK)
    recipe:AddWorldDrop(Z.BLACKFATHOM_DEEPS, Z.GNOMEREGAN, Z.RAGEFIRE_CHASM, Z.RAZORFEN_KRAUL, Z.RUINS_OF_LORDAERON, Z.SCARLET_MONASTERY, Z.SHADOWFANG_KEEP, Z.THE_DEADMINES, Z.THE_HALL_OF_THANES, Z.THE_STOCKADE, Z.WAILING_CAVERNS, Z.EASTERN_KINGDOMS, Z.KALIMDOR)

    -- Enchant Shield - Lesser Spirit -- 13485
    recipe = AddRecipe(13485, Q.COMMON)
    recipe:SetSkillLevels(130, 130, 155, 175, 195)
    recipe:SetItemFilterType("ENCHANTING_SHIELD")
    recipe:AddFilters(F.ALLIANCE, F.HORDE, F.HEALER, F.CASTER)
    recipe:AddTrainer(1317, 3011, 3345, 4213, 4616, 5157, 7949, 11072, 11073, 11074, 251978, 259287)

    -- Enchant Bracer - Lesser Stamina -- 13501
    recipe = AddRecipe(13501, Q.COMMON)
    recipe:SetSkillLevels(130, 130, 155, 175, 195)
    recipe:SetItemFilterType("ENCHANTING_BRACER")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddTrainer(1317, 3011, 3345, 4213, 4616, 5157, 7949, 11072, 11073, 11074, 251978, 259287)

    -- Enchant Weapon - Lesser Striking -- 13503
    recipe = AddRecipe(13503, Q.COMMON)
    recipe:SetSkillLevels(140, 140, 165, 185, 205)
    recipe:SetItemFilterType("ENCHANTING_WEAPON")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddTrainer(1317, 3011, 3345, 4213, 4616, 5157, 7949, 11072, 11073, 11074, 251978, 259287)

    -- Enchant 2H Weapon - Lesser Impact -- 13529
    recipe = AddRecipe(13529, Q.COMMON)
    recipe:SetSkillLevels(145, 145, 170, 190, 210)
    recipe:SetItemFilterType("ENCHANTING_2H_WEAPON")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddTrainer(1317, 3011, 3345, 4213, 4616, 5157, 7949, 11072, 11073, 11074, 251978, 259287)

    -- Enchant Bracer - Lesser Strength -- 13536
    recipe = AddRecipe(13536, Q.UNCOMMON)
    recipe:SetSkillLevels(140, 140, 165, 185, 205)
    recipe:SetRecipeItem(11101, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ENCHANTING_BRACER")
    recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS)
    recipe:AddLimitedVendor(3954, 1, 12043, 1)

    -- Enchant Chest - Lesser Absorption -- 13538
    recipe = AddRecipe(13538, Q.COMMON)
    recipe:SetSkillLevels(140, 140, 165, 185, 205)
    recipe:SetItemFilterType("ENCHANTING_CHEST")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddTrainer(1317, 3011, 3345, 4213, 4616, 5157, 7949, 11072, 11073, 11074, 251978, 259287)

    -- Enchant Chest - Mana -- 13607
    recipe = AddRecipe(13607, Q.COMMON)
    recipe:SetSkillLevels(145, 145, 170, 190, 210)
    recipe:SetItemFilterType("ENCHANTING_CHEST")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddTrainer(1317, 3011, 3345, 4213, 4616, 5157, 7949, 11072, 11073, 11074, 251978, 259287)

    -- Enchant Gloves - Mining -- 13612
    recipe = AddRecipe(13612, Q.UNCOMMON)
    recipe:SetSkillLevels(145, 145, 170, 190, 210)
    recipe:SetRecipeItem(11150, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ENCHANTING_GLOVES")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddWorldDrop(Z.EXCAVATION_SITE_WETLANDS, Z.ARATHI_HIGHLANDS, Z.WETLANDS)

    -- Enchant Gloves - Herbalism -- 13617
    recipe = AddRecipe(13617, Q.UNCOMMON)
    recipe:SetSkillLevels(145, 145, 170, 190, 210)
    recipe:SetRecipeItem(11151, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ENCHANTING_GLOVES")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddWorldDrop(Z.ASHENVALE, Z.STONETALON_MOUNTAINS)

    -- Enchant Gloves - Fishing -- 13620
    recipe = AddRecipe(13620, Q.UNCOMMON)
    recipe:SetSkillLevels(145, 145, 170, 190, 210)
    recipe:SetRecipeItem(11152, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ENCHANTING_GLOVES")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddWorldDrop(Z.HILLSBRAD_FOOTHILLS)

    -- Enchant Bracer - Lesser Intellect -- 13622
    recipe = AddRecipe(13622, Q.COMMON)
    recipe:SetSkillLevels(150, 150, 175, 195, 215)
    recipe:SetItemFilterType("ENCHANTING_BRACER")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddTrainer(1317, 3011, 3345, 4213, 4616, 5157, 7949, 11072, 11073, 11074, 251978, 259287)

    -- Enchant Chest - Minor Stats -- 13626
    recipe = AddRecipe(13626, Q.COMMON)
    recipe:SetSkillLevels(150, 150, 175, 195, 215)
    recipe:SetItemFilterType("ENCHANTING_CHEST")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddTrainer(1317, 3011, 3345, 4213, 4616, 5157, 7949, 11072, 11073, 11074, 251978, 259287)

    -- Enchant Shield - Lesser Stamina -- 13631
    recipe = AddRecipe(13631, Q.COMMON)
    recipe:SetSkillLevels(155, 155, 175, 195, 215)
    recipe:SetItemFilterType("ENCHANTING_SHIELD")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddTrainer(11072, 11073, 11074, 251978, 259287)

    -- Enchant Cloak - Defense -- 13635
    recipe = AddRecipe(13635, Q.COMMON)
    recipe:SetSkillLevels(155, 155, 175, 195, 215)
    recipe:SetItemFilterType("ENCHANTING_CLOAK")
    recipe:AddFilters(F.ALLIANCE, F.HORDE, F.TANK)
    recipe:AddTrainer(11072, 11073, 11074, 251978, 259287)

    -- Enchant Boots - Lesser Agility -- 13637
    recipe = AddRecipe(13637, Q.COMMON)
    recipe:SetSkillLevels(160, 160, 180, 200, 220)
    recipe:SetItemFilterType("ENCHANTING_BOOTS")
    recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS)
    recipe:AddTrainer(11072, 11073, 11074, 251978, 259287)

    -- Enchant Chest - Greater Health -- 13640
    recipe = AddRecipe(13640, Q.COMMON)
    recipe:SetSkillLevels(160, 160, 180, 200, 220)
    recipe:SetItemFilterType("ENCHANTING_CHEST")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddTrainer(11072, 11073, 11074, 251978, 259287)

    -- Enchant Bracer - Spirit -- 13642
    recipe = AddRecipe(13642, Q.COMMON)
    recipe:SetSkillLevels(165, 165, 185, 205, 225)
    recipe:SetItemFilterType("ENCHANTING_BRACER")
    recipe:AddFilters(F.ALLIANCE, F.HORDE, F.HEALER, F.CASTER)
    recipe:AddTrainer(11072, 11073, 11074, 251978, 259287)

    -- Enchant Boots - Lesser Stamina -- 13644
    recipe = AddRecipe(13644, Q.COMMON)
    recipe:SetSkillLevels(170, 170, 190, 210, 230)
    recipe:SetItemFilterType("ENCHANTING_BOOTS")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddTrainer(11072, 11073, 11074, 251978, 259287)

    -- Enchant Bracer - Lesser Dodge -- 13646
    recipe = AddRecipe(13646, Q.UNCOMMON)
    recipe:SetRecipeItem(11163, "BIND_ON_PICKUP")
    recipe:SetSkillLevels(170, 170, 190, 210, 230)
    recipe:SetItemFilterType("ENCHANTING_BRACER")
    recipe:AddFilters(F.ALLIANCE, F.HORDE, F.TANK)
    recipe:AddLimitedVendor(2381, 1, 2821, 1)

    -- Enchant Bracer - Stamina -- 13648
    recipe = AddRecipe(13648, Q.COMMON)
    recipe:SetSkillLevels(170, 170, 190, 210, 230)
    recipe:SetItemFilterType("ENCHANTING_BRACER")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddTrainer(11072, 11073, 11074, 251978, 259287)

    -- Enchant Weapon - Lesser Beastslayer -- 13653
    recipe = AddRecipe(13653, Q.UNCOMMON)
    recipe:SetSkillLevels(175, 175, 195, 215, 235)
    recipe:SetRecipeItem(11164, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ENCHANTING_WEAPON")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddWorldDrop(Z.BLACKFATHOM_DEEPS, Z.EXCAVATION_SITE_WETLANDS, Z.GNOMEREGAN, Z.RAZORFEN_DOWNS, Z.RAZORFEN_KRAUL, Z.SCARLET_MONASTERY, Z.SHADOWFANG_KEEP, Z.THE_STOCKADE, Z.ULDAMAN, Z.WAILING_CAVERNS, Z.EASTERN_KINGDOMS, Z.KALIMDOR)

    -- Enchant Weapon - Lesser Elemental Slayer -- 13655
    recipe = AddRecipe(13655, Q.UNCOMMON)
    recipe:SetSkillLevels(175, 175, 195, 215, 235)
    recipe:SetRecipeItem(11165, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ENCHANTING_WEAPON")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddWorldDrop(Z.BLACKFATHOM_DEEPS, Z.EXCAVATION_SITE_WETLANDS, Z.GNOMEREGAN, Z.RAZORFEN_DOWNS, Z.RAZORFEN_KRAUL, Z.SCARLET_MONASTERY, Z.SHADOWFANG_KEEP, Z.THE_STOCKADE, Z.ULDAMAN, Z.WAILING_CAVERNS, Z.EASTERN_KINGDOMS, Z.KALIMDOR)

    -- Enchant Shield - Spirit -- 13659
    recipe = AddRecipe(13659, Q.COMMON)
    recipe:SetSkillLevels(180, 180, 200, 220, 240)
    recipe:SetItemFilterType("ENCHANTING_SHIELD")
    recipe:AddFilters(F.ALLIANCE, F.HORDE, F.HEALER, F.CASTER)
    recipe:AddTrainer(11072, 11073, 11074, 251978, 259287)

    -- Enchant Bracer - Strength -- 13661
    recipe = AddRecipe(13661, Q.COMMON)
    recipe:SetSkillLevels(180, 180, 200, 220, 240)
    recipe:SetItemFilterType("ENCHANTING_BRACER")
    recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS)
    recipe:AddTrainer(11072, 11073, 11074, 251978, 259287)

    -- Enchant Chest - Greater Mana -- 13663
    recipe = AddRecipe(13663, Q.COMMON)
    recipe:SetSkillLevels(185, 185, 205, 225, 245)
    recipe:SetItemFilterType("ENCHANTING_CHEST")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddTrainer(11072, 11073, 11074, 251978, 259287)

    -- Enchant Boots - Lesser Spirit -- 13687
    recipe = AddRecipe(13687, Q.UNCOMMON)
    recipe:SetSkillLevels(190, 190, 210, 230, 250)
    recipe:SetRecipeItem(11167, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ENCHANTING_BOOTS")
    recipe:AddFilters(F.ALLIANCE, F.HORDE, F.HEALER, F.CASTER)
    recipe:AddWorldDrop(Z.BLACKFATHOM_DEEPS, Z.EXCAVATION_SITE_WETLANDS, Z.GNOMEREGAN, Z.MARAUDON, Z.RAZORFEN_DOWNS, Z.RAZORFEN_KRAUL, Z.SCARLET_MONASTERY, Z.THE_STOCKADE, Z.ULDAMAN, Z.ZULFARRAK, Z.EASTERN_KINGDOMS, Z.KALIMDOR)

    -- Enchant Shield - Lesser Parry -- 13689
    recipe = AddRecipe(13689, Q.UNCOMMON)
    recipe:SetSkillLevels(195, 195, 215, 235, 255)
    recipe:SetRecipeItem(11168, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ENCHANTING_SHIELD")
    recipe:AddFilters(F.ALLIANCE, F.HORDE, F.TANK)
    recipe:AddWorldDrop(Z.ALTERAC_MOUNTAINS, Z.BLACKFATHOM_DEEPS, Z.DESOLACE, Z.RAZORFEN_DOWNS, Z.SCARLET_MONASTERY, Z.ULDAMAN, Z.ZULFARRAK, Z.EASTERN_KINGDOMS, Z.KALIMDOR)

    -- Enchant Weapon - Striking -- 13693
    recipe = AddRecipe(13693, Q.COMMON)
    recipe:SetSkillLevels(195, 195, 215, 235, 255)
    recipe:SetItemFilterType("ENCHANTING_WEAPON")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddTrainer(11072, 11073, 11074, 251978, 259287)

    -- Enchant 2H Weapon - Impact -- 13695
    recipe = AddRecipe(13695, Q.COMMON)
    recipe:SetSkillLevels(200, 200, 220, 240, 260)
    recipe:SetItemFilterType("ENCHANTING_2H_WEAPON")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddTrainer(11072, 11073, 11074, 251978, 259287)

    -- Enchant Gloves - Skinning -- 13698
    recipe = AddRecipe(13698, Q.UNCOMMON)
    recipe:SetSkillLevels(200, 200, 220, 240, 260)
    recipe:SetRecipeItem(11166, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ENCHANTING_GLOVES")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddWorldDrop(Z.ARATHI_HIGHLANDS)

    -- Enchant Chest - Lesser Stats -- 13700
    recipe = AddRecipe(13700, Q.COMMON)
    recipe:SetSkillLevels(200, 200, 220, 240, 260)
    recipe:SetItemFilterType("ENCHANTING_CHEST")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddTrainer(11072, 11073, 11074, 251978, 259287)

    -- Enchant Cloak - Greater Defense -- 13746
    recipe = AddRecipe(13746, Q.COMMON)
    recipe:SetSkillLevels(205, 205, 225, 245, 265)
    recipe:SetItemFilterType("ENCHANTING_CLOAK")
    recipe:AddFilters(F.ALLIANCE, F.HORDE, F.TANK)
    recipe:AddTrainer(11072, 11073, 11074, 251978, 259287)

    -- Enchant Gloves - Agility -- 13815
    recipe = AddRecipe(13815, Q.COMMON)
    recipe:SetSkillLevels(210, 210, 230, 250, 270)
    recipe:SetItemFilterType("ENCHANTING_GLOVES")
    recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS)
    recipe:AddTrainer(11072, 11073, 11074, 251978, 259287)

    -- Enchant Shield - Stamina -- 13817
    recipe = AddRecipe(13817, Q.UNCOMMON)
    recipe:SetSkillLevels(210, 210, 230, 250, 270)
    recipe:SetRecipeItem(11202, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ENCHANTING_SHIELD")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddWorldDrop(Z.BLACKROCK_DEPTHS, Z.GNOMEREGAN, Z.MARAUDON, Z.RAZORFEN_DOWNS, Z.RAZORFEN_KRAUL, Z.SCARLET_MONASTERY, Z.THE_TEMPLE_OF_ATALHAKKAR, Z.ULDAMAN, Z.ZULFARRAK, Z.EASTERN_KINGDOMS, Z.KALIMDOR)

    -- Enchant Bracer - Intellect -- 13822
    recipe = AddRecipe(13822, Q.COMMON)
    recipe:SetSkillLevels(210, 210, 230, 250, 270)
    recipe:SetItemFilterType("ENCHANTING_BRACER")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddTrainer(11072, 11073, 11074, 251978, 259287)

    -- Enchant Boots - Stamina -- 13836
    recipe = AddRecipe(13836, Q.COMMON)
    recipe:SetSkillLevels(215, 215, 235, 255, 275)
    recipe:SetItemFilterType("ENCHANTING_BOOTS")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddTrainer(11072, 11073, 11074, 251978, 259287)

    -- Enchant Gloves - Advanced Mining -- 13841
    recipe = AddRecipe(13841, Q.UNCOMMON)
    recipe:SetSkillLevels(215, 215, 235, 255, 275)
    recipe:SetRecipeItem(11203, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ENCHANTING_GLOVES")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddMobDrop(674)

    -- Enchant Bracer - Greater Spirit -- 13846
    recipe = AddRecipe(13846, Q.UNCOMMON)
    recipe:SetSkillLevels(220, 220, 240, 260, 280)
    recipe:SetRecipeItem(11204, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ENCHANTING_BRACER")
    recipe:AddFilters(F.ALLIANCE, F.HORDE, F.HEALER, F.CASTER)
    recipe:AddWorldDrop(Z.BLACKROCK_DEPTHS, Z.GNOMEREGAN, Z.MARAUDON, Z.RAZORFEN_DOWNS, Z.SCARLET_MONASTERY, Z.THE_TEMPLE_OF_ATALHAKKAR, Z.ULDAMAN, Z.ZULFARRAK, Z.EASTERN_KINGDOMS, Z.KALIMDOR)

    -- Enchant Chest - Superior Health -- 13858
    recipe = AddRecipe(13858, Q.COMMON)
    recipe:SetSkillLevels(220, 220, 240, 260, 280)
    recipe:SetItemFilterType("ENCHANTING_CHEST")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddTrainer(11072, 11073, 11074, 251978, 259287)

    -- Enchant Gloves - Advanced Herbalism -- 13868
    recipe = AddRecipe(13868, Q.UNCOMMON)
    recipe:SetSkillLevels(225, 225, 245, 265, 285)
    recipe:SetRecipeItem(11205, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ENCHANTING_GLOVES")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddWorldDrop(Z.SWAMP_OF_SORROWS)

    -- Enchant Cloak - Lesser Agility -- 13882
    recipe = AddRecipe(13882, Q.UNCOMMON)
    recipe:SetSkillLevels(225, 225, 245, 265, 285)
    recipe:SetRecipeItem(11206, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ENCHANTING_CLOAK")
    recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS)
    recipe:AddWorldDrop(Z.ALTERAC_MOUNTAINS, Z.TANARIS)

    -- Enchant Gloves - Strength -- 13887
    recipe = AddRecipe(13887, Q.COMMON)
    recipe:SetSkillLevels(225, 225, 245, 265, 285)
    recipe:SetItemFilterType("ENCHANTING_GLOVES")
    recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS)
    recipe:AddTrainer(11072, 11073, 11074, 251978, 259287)

    -- Enchant Boots - Minor Speed -- 13890
    recipe = AddRecipe(13890, Q.COMMON)
    recipe:SetSkillLevels(225, 225, 245, 265, 285)
    recipe:SetItemFilterType("ENCHANTING_BOOTS")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddTrainer(11072, 11073, 11074, 251978, 259287)

    -- Enchant Weapon - Fiery Weapon -- 13898
    recipe = AddRecipe(13898, Q.UNCOMMON)
    recipe:SetSkillLevels(265, 265, 285, 305, 325)
    recipe:SetRecipeItem(11207, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ENCHANTING_WEAPON")
    recipe:AddFilters(F.ALLIANCE, F.HORDE, F.INSTANCE)
    recipe:AddMobDrop(9024)

    -- Enchant Shield - Greater Spirit -- 13905
    recipe = AddRecipe(13905, Q.COMMON)
    recipe:SetSkillLevels(230, 230, 250, 270, 290)
    recipe:SetItemFilterType("ENCHANTING_SHIELD")
    recipe:AddFilters(F.ALLIANCE, F.HORDE, F.HEALER, F.CASTER)
    recipe:AddTrainer(11073)

    -- Enchant Weapon - Demonslaying -- 13915
    recipe = AddRecipe(13915, Q.UNCOMMON)
    recipe:SetSkillLevels(230, 230, 250, 270, 290)
    recipe:SetRecipeItem(11208, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ENCHANTING_WEAPON")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddWorldDrop(Z.BLACKROCK_DEPTHS, Z.BLACKROCK_SPIRE, Z.DIRE_MAUL, Z.GNOMEREGAN, Z.MARAUDON, Z.RAZORFEN_DOWNS, Z.RUINS_OF_AHNQIRAJ, Z.SCARLET_MONASTERY, Z.STRATHOLME, Z.THE_TEMPLE_OF_ATALHAKKAR, Z.ULDAMAN, Z.ZULFARRAK, Z.EASTERN_KINGDOMS, Z.KALIMDOR)

    -- Enchant Chest - Superior Mana -- 13917
    recipe = AddRecipe(13917, Q.COMMON)
    recipe:SetSkillLevels(230, 230, 250, 270, 290)
    recipe:SetItemFilterType("ENCHANTING_CHEST")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddTrainer(11073)

    -- Enchant Bracer - Dodge -- 13931
    recipe = AddRecipe(13931, Q.UNCOMMON)
    recipe:SetSkillLevels(235, 235, 255, 275, 295)
    recipe:SetRecipeItem(11223, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ENCHANTING_BRACER")
    recipe:AddFilters(F.ALLIANCE, F.HORDE, F.TANK)
    recipe:AddLimitedVendor(989, 1, 4229, 1)

    -- Enchant Boots - Agility -- 13935
    recipe = AddRecipe(13935, Q.COMMON)
    recipe:SetSkillLevels(235, 235, 255, 275, 295)
    recipe:SetItemFilterType("ENCHANTING_BOOTS")
    recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS)
    recipe:AddTrainer(11073)

    -- Enchant 2H Weapon - Greater Impact -- 13937
    recipe = AddRecipe(13937, Q.COMMON)
    recipe:SetSkillLevels(240, 240, 260, 280, 300)
    recipe:SetItemFilterType("ENCHANTING_2H_WEAPON")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddTrainer(11073)

    -- Enchant Bracer - Greater Strength -- 13939
    recipe = AddRecipe(13939, Q.COMMON)
    recipe:SetSkillLevels(240, 240, 260, 280, 300)
    recipe:SetItemFilterType("ENCHANTING_BRACER")
    recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS)
    recipe:AddTrainer(11073)

    -- Enchant Chest - Stats -- 13941
    recipe = AddRecipe(13941, Q.COMMON)
    recipe:SetSkillLevels(245, 245, 265, 285, 305)
    recipe:SetItemFilterType("ENCHANTING_CHEST")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddTrainer(11073)

    -- Enchant Weapon - Greater Striking -- 13943
    recipe = AddRecipe(13943, Q.COMMON)
    recipe:SetSkillLevels(245, 245, 265, 285, 305)
    recipe:SetItemFilterType("ENCHANTING_WEAPON")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddTrainer(11073)

    -- Enchant Bracer - Greater Stamina -- 13945
    recipe = AddRecipe(13945, Q.UNCOMMON)
    recipe:SetSkillLevels(245, 245, 265, 285, 305)
    recipe:SetRecipeItem(11225, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ENCHANTING_BRACER")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddWorldDrop(Z.BLACKROCK_DEPTHS, Z.BLACKROCK_SPIRE, Z.DIRE_MAUL, Z.GNOMEREGAN, Z.MARAUDON, Z.RAZORFEN_DOWNS, Z.RUINS_OF_AHNQIRAJ, Z.SCARLET_MONASTERY, Z.STRATHOLME, Z.THE_TEMPLE_OF_ATALHAKKAR, Z.ULDAMAN, Z.ZULFARRAK, Z.EASTERN_KINGDOMS, Z.KALIMDOR)

    -- Enchant Gloves - Riding Skill -- 13947
    recipe = AddRecipe(13947, Q.UNCOMMON)
    recipe:SetSkillLevels(250, 250, 270, 290, 310)
    recipe:SetRecipeItem(11226, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ENCHANTING_GLOVES")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddWorldDrop(Z.BLACKROCK_DEPTHS, Z.BLACKROCK_SPIRE, Z.BLACKWING_LAIR, Z.DIRE_MAUL, Z.KARAZHAN_CRYPTS, Z.MARAUDON, Z.STORM_CLIFFS, Z.THE_TAINTED_SCAR, Z.THE_TEMPLE_OF_ATALHAKKAR, Z.ULDAMAN, Z.ZULFARRAK, Z.EASTERN_KINGDOMS, Z.KALIMDOR)

    -- Enchant Gloves - Minor Haste -- 13948
    recipe = AddRecipe(13948, Q.COMMON)
    recipe:SetSkillLevels(250, 250, 270, 290, 310)
    recipe:SetItemFilterType("ENCHANTING_GLOVES")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddTrainer(11073)

    -- Lesser Magic Wand -- 14293
    recipe = AddRecipe(14293, Q.COMMON)
    recipe:SetSkillLevels(10, 10, 75, 95, 115)
    recipe:SetCraftedItem(11287, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ENCHANTING_WAND")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddTrainer(1317, 3011, 3345, 3606, 4213, 4616, 5157, 5695, 7949, 11065, 11066, 11067, 11068, 11070, 11071, 11072, 11073, 11074, 251978, 257004, 257020, 259287, 266881)

    -- Greater Magic Wand -- 14807
    recipe = AddRecipe(14807, Q.COMMON)
    recipe:SetSkillLevels(70, 70, 110, 130, 150)
    recipe:SetCraftedItem(11288, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ENCHANTING_WAND")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddTrainer(1317, 3011, 3345, 3606, 4213, 4616, 5157, 5695, 7949, 11065, 11066, 11067, 11068, 11070, 11071, 11072, 11073, 11074, 251978, 257004, 257020, 259287, 266881)

    -- Lesser Mystic Wand -- 14809
    recipe = AddRecipe(14809, Q.COMMON)
    recipe:SetSkillLevels(155, 155, 175, 195, 215)
    recipe:SetCraftedItem(11289, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ENCHANTING_WAND")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddTrainer(11072, 11073, 11074, 251978, 259287)

    -- Greater Mystic Wand -- 14810
    recipe = AddRecipe(14810, Q.COMMON)
    recipe:SetSkillLevels(175, 175, 195, 215, 235)
    recipe:SetCraftedItem(217287, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ENCHANTING_WAND")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddTrainer(11072, 11073, 11074, 251978, 259287)

    -- Smoking Heart of the Mountain -- 15596
    recipe = AddRecipe(15596, Q.UNCOMMON)
    recipe:SetSkillLevels(265, 265, 285, 305, 325)
    recipe:SetRecipeItem(11813, "BIND_ON_PICKUP")
    recipe:SetCraftedItem(11811, "BIND_ON_PICKUP")
    recipe:SetItemFilterType("ENCHANTING_MISC")
    recipe:AddFilters(F.ALLIANCE, F.HORDE, F.INSTANCE, F.DPS, F.HEALER, F.CASTER)
    recipe:AddMobDrop(9025)

    -- Enchanted Thorium Bar -- 17180
    recipe = AddRecipe(17180, Q.COMMON)
    recipe:SetSkillLevels(250, 250, 250, 255, 260)
    recipe:SetCraftedItem(12655, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ENCHANTING_MATERIALS")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddTrainer(11073)

    -- Enchanted Leather -- 17181
    recipe = AddRecipe(17181, Q.COMMON)
    recipe:SetSkillLevels(250, 250, 250, 255, 260)
    recipe:SetCraftedItem(12810, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ENCHANTING_MATERIALS")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddTrainer(11073)

    -- Enchant Bracer - Greater Intellect -- 20008
    recipe = AddRecipe(20008, Q.COMMON)
    recipe:SetRecipeItem(16214, "BIND_ON_EQUIP")
    recipe:SetSkillLevels(255, 255, 275, 295, 315)
    recipe:SetItemFilterType("ENCHANTING_BRACER")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddMobDrop(2642)

    -- Enchant Bracer - Superior Spirit -- 20009
    recipe = AddRecipe(20009, Q.UNCOMMON)
    recipe:SetSkillLevels(270, 270, 290, 310, 330)
    recipe:SetRecipeItem(16218, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ENCHANTING_BRACER")
    recipe:AddFilters(F.ALLIANCE, F.HORDE, F.HEALER, F.CASTER)
    recipe:AddWorldDrop(Z.AHNQIRAJ, Z.BLACKROCK_DEPTHS, Z.BLACKROCK_SPIRE, Z.BLACKWING_LAIR, Z.DIRE_MAUL, Z.KARAZHAN_CRYPTS, Z.MARAUDON, Z.RAZORFEN_DOWNS, Z.RUINS_OF_AHNQIRAJ, Z.SCHOLOMANCE, Z.STORM_CLIFFS, Z.STRATHOLME, Z.THE_TAINTED_SCAR, Z.THE_TEMPLE_OF_ATALHAKKAR, Z.ULDAMAN, Z.ZULFARRAK, Z.ZULGURUB, Z.EASTERN_KINGDOMS, Z.KALIMDOR)

    -- Enchant Bracer - Superior Strength -- 20010
    recipe = AddRecipe(20010, Q.UNCOMMON)
    recipe:SetSkillLevels(295, 295, 315, 335, 355)
    recipe:SetRecipeItem(16246, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ENCHANTING_BRACER")
    recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS)
    recipe:AddMobDrop(7372)

    -- Enchant Bracer - Superior Stamina -- 20011
    recipe = AddRecipe(20011, Q.UNCOMMON)
    recipe:SetSkillLevels(300, 300, 320, 340, 360)
    recipe:SetRecipeItem(16251, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ENCHANTING_BRACER")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddWorldDrop(Z.AHNQIRAJ, Z.BLACKROCK_DEPTHS, Z.BLACKROCK_SPIRE, Z.BLACKWING_LAIR, Z.DEMON_FALL_CANYON, Z.DIRE_MAUL, Z.KARAZHAN_CRYPTS, Z.MOLTEN_CORE, Z.NAXXRAMAS, Z.RUINS_OF_AHNQIRAJ, Z.SCARLET_ENCLAVE, Z.SCHOLOMANCE, Z.STORM_CLIFFS, Z.STRATHOLME, Z.THE_CRYSTAL_VALE, Z.THE_TAINTED_SCAR, Z.ZULGURUB, Z.EASTERN_KINGDOMS, Z.KALIMDOR)

    -- Enchant Gloves - Greater Agility -- 20012
    recipe = AddRecipe(20012, Q.COMMON)
    recipe:SetRecipeItem(16219, "BIND_ON_EQUIP")
    recipe:SetSkillLevels(270, 270, 290, 310, 330)
    recipe:SetItemFilterType("ENCHANTING_GLOVES")
    recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS)
    recipe:AddMobDrop(6201, 236876)

    -- Enchant Gloves - Greater Strength -- 20013
    recipe = AddRecipe(20013, Q.COMMON)
    recipe:SetRecipeItem(16244, "BIND_ON_EQUIP")
    recipe:SetSkillLevels(295, 295, 315, 335, 355)
    recipe:SetItemFilterType("ENCHANTING_GLOVES")
    recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS)
    recipe:AddMobDrop(9198)

    -- Enchant Cloak - Superior Defense -- 20015
    recipe = AddRecipe(20015, Q.COMMON)
    recipe:SetSkillLevels(285, 285, 305, 325, 345)
    recipe:SetRecipeItem(16224, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ENCHANTING_CLOAK")
    recipe:AddFilters(F.ALLIANCE, F.HORDE, F.TANK)
    recipe:AddLimitedVendor(12022, 1)

    -- Enchant Shield - Vitality -- 20016
    recipe = AddRecipe(20016, Q.COMMON)
    recipe:SetRecipeItem(16222, "BIND_ON_EQUIP")
    recipe:SetSkillLevels(280, 280, 300, 320, 340)
    recipe:SetItemFilterType("ENCHANTING_SHIELD")
    recipe:AddFilters(F.ALLIANCE, F.HORDE, F.HEALER, F.CASTER)
    recipe:AddMobDrop(9447)

    -- Enchant Shield - Greater Stamina -- 20017
    recipe = AddRecipe(20017, Q.COMMON)
    recipe:SetSkillLevels(265, 265, 285, 305, 325)
    recipe:SetRecipeItem(16217, "BIND_ON_PICKUP")
    recipe:SetItemFilterType("ENCHANTING_SHIELD")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddLimitedVendor(4229, 1, 4561, 1)

    -- Enchant Boots - Greater Stamina -- 20020
    recipe = AddRecipe(20020, Q.UNCOMMON)
    recipe:SetSkillLevels(260, 260, 280, 300, 320)
    recipe:SetRecipeItem(16215, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ENCHANTING_BOOTS")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddWorldDrop(Z.AHNQIRAJ, Z.BLACKROCK_DEPTHS, Z.BLACKROCK_SPIRE, Z.BLACKWING_LAIR, Z.DIRE_MAUL, Z.KARAZHAN_CRYPTS, Z.MARAUDON, Z.MOLTEN_CORE, Z.RUINS_OF_AHNQIRAJ, Z.SCHOLOMANCE, Z.STORM_CLIFFS, Z.STRATHOLME, Z.THE_TAINTED_SCAR, Z.THE_TEMPLE_OF_ATALHAKKAR, Z.ULDAMAN, Z.ZULFARRAK, Z.ZULGURUB, Z.EASTERN_KINGDOMS, Z.KALIMDOR)

    -- Enchant Boots - Greater Agility -- 20023
    recipe = AddRecipe(20023, Q.COMMON)
    recipe:SetRecipeItem(16245, "BIND_ON_EQUIP")
    recipe:SetSkillLevels(295, 295, 315, 335, 355)
    recipe:SetItemFilterType("ENCHANTING_BOOTS")
    recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS)
    recipe:AddWorldDrop(Z.AHNQIRAJ, Z.BLACKROCK_DEPTHS, Z.BLACKROCK_SPIRE, Z.BLACKWING_LAIR, Z.DEMON_FALL_CANYON, Z.DIRE_MAUL, Z.KARAZHAN_CRYPTS, Z.MARAUDON, Z.MOLTEN_CORE, Z.NAXXRAMAS, Z.RUINS_OF_AHNQIRAJ, Z.SCARLET_ENCLAVE, Z.SCHOLOMANCE, Z.STORM_CLIFFS, Z.STRATHOLME, Z.THE_CRYSTAL_VALE, Z.THE_TAINTED_SCAR, Z.THE_TEMPLE_OF_ATALHAKKAR, Z.ZULFARRAK, Z.ZULGURUB, Z.EASTERN_KINGDOMS, Z.KALIMDOR)

    -- Enchant Boots - Spirit -- 20024
    recipe = AddRecipe(20024, Q.UNCOMMON)
    recipe:SetSkillLevels(275, 275, 295, 315, 335)
    recipe:SetRecipeItem(16220, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ENCHANTING_BOOTS")
    recipe:AddFilters(F.ALLIANCE, F.HORDE, F.HEALER, F.CASTER)
    recipe:AddWorldDrop(Z.AHNQIRAJ, Z.BLACKROCK_DEPTHS, Z.BLACKROCK_SPIRE, Z.BLACKWING_LAIR, Z.DIRE_MAUL, Z.KARAZHAN_CRYPTS, Z.MARAUDON, Z.MOLTEN_CORE, Z.RUINS_OF_AHNQIRAJ, Z.SCHOLOMANCE, Z.STORM_CLIFFS, Z.STRATHOLME, Z.THE_TAINTED_SCAR, Z.THE_TEMPLE_OF_ATALHAKKAR, Z.ULDAMAN, Z.ZULFARRAK, Z.ZULGURUB, Z.EASTERN_KINGDOMS, Z.KALIMDOR)

    -- Enchant Chest - Greater Stats -- 20025
    recipe = AddRecipe(20025, Q.UNCOMMON)
    recipe:SetSkillLevels(300, 300, 320, 340, 360)
    recipe:SetRecipeItem(16253, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ENCHANTING_CHEST")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddWorldDrop(Z.AHNQIRAJ, Z.BLACKWING_LAIR, Z.DIRE_MAUL, Z.KARAZHAN_CRYPTS, Z.MOLTEN_CORE, Z.NAXXRAMAS, Z.RUINS_OF_AHNQIRAJ, Z.SCHOLOMANCE, Z.STORM_CLIFFS, Z.STRATHOLME, Z.THE_TAINTED_SCAR, Z.ZULGURUB, Z.EASTERN_KINGDOMS, Z.KALIMDOR)

    -- Enchant Chest - Major Stamina -- 20026
    recipe = AddRecipe(20026, Q.COMMON)
    recipe:SetSkillLevels(275, 275, 295, 315, 335)
    recipe:SetRecipeItem(16221, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ENCHANTING_CHEST")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddLimitedVendor(11189, 1)
    recipe:AddMobDrop(7026)

    -- Enchant Chest - Major Mana -- 20028
    recipe = AddRecipe(20028, Q.COMMON)
    recipe:SetRecipeItem(16242, "BIND_ON_EQUIP")
    recipe:SetSkillLevels(290, 290, 310, 330, 350)
    recipe:SetItemFilterType("ENCHANTING_CHEST")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddMobDrop(9452)

    -- Enchant Weapon - Icy Chill -- 20029
    recipe = AddRecipe(20029, Q.UNCOMMON)
    recipe:SetSkillLevels(285, 285, 305, 325, 345)
    recipe:SetRecipeItem(16223, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ENCHANTING_WEAPON")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddMobDrop(7524)

    -- Enchant 2H Weapon - Superior Impact -- 20030
    recipe = AddRecipe(20030, Q.UNCOMMON)
    recipe:SetSkillLevels(295, 295, 315, 335, 355)
    recipe:SetRecipeItem(16247, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ENCHANTING_2H_WEAPON")
    recipe:AddFilters(F.ALLIANCE, F.HORDE, F.INSTANCE)
    recipe:AddMobDrop(10317)

    -- Enchant Weapon - Superior Striking -- 20031
    recipe = AddRecipe(20031, Q.UNCOMMON)
    recipe:SetSkillLevels(300, 300, 320, 340, 360)
    recipe:SetRecipeItem(16250, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ENCHANTING_WEAPON")
    recipe:AddFilters(F.ALLIANCE, F.HORDE, F.INSTANCE)
    recipe:AddMobDrop(9216)

    -- Enchant Weapon - Lifestealing -- 20032
    recipe = AddRecipe(20032, Q.RARE)
    recipe:AddWorldDrop(Z.KARAZHAN_CRYPTS, Z.SCHOLOMANCE)
    recipe:SetSkillLevels(300, 300, 320, 340, 360)
    recipe:SetRecipeItem(16254, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ENCHANTING_WEAPON")
    recipe:AddFilters(F.ALLIANCE, F.HORDE, F.INSTANCE)
    recipe:AddMobDrop(10499)

    -- Enchant Weapon - Unholy Weapon -- 20033
    recipe = AddRecipe(20033, Q.UNCOMMON)
    recipe:AddWorldDrop(Z.KARAZHAN_CRYPTS, Z.STRATHOLME)
    recipe:SetSkillLevels(295, 295, 315, 335, 355)
    recipe:SetRecipeItem(16248, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ENCHANTING_WEAPON")
    recipe:AddFilters(F.ALLIANCE, F.HORDE, F.INSTANCE)
    recipe:AddMobDrop(10398)

    -- Enchant Weapon - Crusader -- 20034
    recipe = AddRecipe(20034, Q.UNCOMMON)
    recipe:SetSkillLevels(300, 300, 320, 340, 360)
    recipe:SetRecipeItem(16252, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ENCHANTING_WEAPON")
    recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS)
    recipe:AddMobDrop(4494)

    -- Enchant 2H Weapon - Major Spirit -- 20035
    recipe = AddRecipe(20035, Q.UNCOMMON)
    recipe:SetSkillLevels(300, 300, 320, 340, 360)
    recipe:SetRecipeItem(16255, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ENCHANTING_2H_WEAPON")
    recipe:AddFilters(F.ALLIANCE, F.HORDE, F.INSTANCE, F.HEALER, F.CASTER)
    recipe:AddMobDrop(10469)

    -- Enchant 2H Weapon - Major Intellect -- 20036
    recipe = AddRecipe(20036, Q.UNCOMMON)
    recipe:SetSkillLevels(300, 300, 320, 340, 360)
    recipe:SetRecipeItem(16249, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ENCHANTING_2H_WEAPON")
    recipe:AddFilters(F.ALLIANCE, F.HORDE, F.INSTANCE, F.HEALER, F.CASTER)
    recipe:AddMobDrop(10422)

    -- Enchant Weapon - Winter's Might -- 21931
    recipe = AddRecipe(21931, Q.UNCOMMON)
    recipe:SetSkillLevels(190, 190, 210, 230, 250)
    recipe:SetRecipeItem(17725, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ENCHANTING_WEAPON")
    recipe:AddFilters(F.ALLIANCE, F.HORDE, F.HEALER, F.CASTER)
    recipe:AddWorldEvent("WINTER_VEIL")

    -- Enchant Weapon - Spellpower -- 22749
    recipe = AddRecipe(22749, Q.RARE)
    recipe:SetSkillLevels(300, 300, 320, 340, 360)
    recipe:SetRecipeItem(18259, "BIND_ON_PICKUP")
    recipe:SetItemFilterType("ENCHANTING_WEAPON")
    recipe:AddFilters(F.ALLIANCE, F.HORDE, F.RAID, F.HEALER, F.CASTER)
    recipe:AddWorldDrop(Z.MOLTEN_CORE, Z.EASTERN_KINGDOMS, Z.KALIMDOR)

    -- Enchant Weapon - Healing Power -- 22750
    recipe = AddRecipe(22750, Q.RARE)
    recipe:SetSkillLevels(300, 300, 320, 340, 360)
    recipe:SetRecipeItem(18260, "BIND_ON_PICKUP")
    recipe:SetItemFilterType("ENCHANTING_WEAPON")
    recipe:AddFilters(F.ALLIANCE, F.HORDE, F.RAID, F.HEALER, F.CASTER)
    recipe:AddWorldDrop(Z.MOLTEN_CORE, Z.EASTERN_KINGDOMS, Z.KALIMDOR)

    -- Enchant Weapon - Strength -- 23799
    recipe = AddRecipe(23799, Q.COMMON)
    recipe:SetSkillLevels(290, 290, 310, 330, 350)
    recipe:SetRecipeItem(19444, "BIND_ON_PICKUP")
    recipe:SetItemFilterType("ENCHANTING_WEAPON")
    recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS, F.THORIUM_BROTHERHOOD)
    recipe:AddRepVendor(FAC.THORIUM_BROTHERHOOD, REP.FRIENDLY, 12944)

    -- Enchant Weapon - Agility -- 23800
    recipe = AddRecipe(23800, Q.COMMON)
    recipe:SetSkillLevels(290, 290, 310, 330, 350)
    recipe:SetRecipeItem(19445, "BIND_ON_PICKUP")
    recipe:SetRequiredFaction("Horde")
    recipe:SetItemFilterType("ENCHANTING_WEAPON")
    recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS, F.TIMBERMAW_HOLD)
    recipe:AddRepVendor(FAC.TIMBERMAW_HOLD, REP.HONORED, 11557)

    -- Enchant Bracer - Mana Regeneration -- 23801
    recipe = AddRecipe(23801, Q.COMMON)
    recipe:SetSkillLevels(290, 290, 310, 330, 350)
    recipe:SetRecipeItem(19446, "BIND_ON_PICKUP")
    recipe:SetItemFilterType("ENCHANTING_BRACER")
    recipe:AddFilters(F.ALLIANCE, F.HORDE, F.HEALER, F.CASTER, F.ARGENTDAWN)
    recipe:AddRepVendor(FAC.ARGENT_DAWN, REP.HONORED, 10856, 10857, 11536)

    -- Enchant Bracer - Healing Power -- 23802
    recipe = AddRecipe(23802, Q.COMMON)
    recipe:SetSkillLevels(300, 300, 320, 340, 360)
    recipe:SetRecipeItem(19447, "BIND_ON_PICKUP")
    recipe:SetItemFilterType("ENCHANTING_BRACER")
    recipe:AddFilters(F.ALLIANCE, F.HORDE, F.HEALER, F.CASTER, F.ARGENTDAWN)
    recipe:AddRepVendor(FAC.ARGENT_DAWN, REP.REVERED, 10856, 10857, 11536)

    -- Enchant Weapon - Mighty Spirit -- 23803
    recipe = AddRecipe(23803, Q.COMMON)
    recipe:SetSkillLevels(300, 300, 320, 340, 360)
    recipe:SetRecipeItem(19448, "BIND_ON_PICKUP")
    recipe:SetItemFilterType("ENCHANTING_WEAPON")
    recipe:AddFilters(F.ALLIANCE, F.HORDE, F.HEALER, F.CASTER, F.THORIUM_BROTHERHOOD)
    recipe:AddRepVendor(FAC.THORIUM_BROTHERHOOD, REP.HONORED, 12944)

    -- Enchant Weapon - Mighty Intellect -- 23804
    recipe = AddRecipe(23804, Q.COMMON)
    recipe:SetSkillLevels(300, 300, 320, 340, 360)
    recipe:SetRecipeItem(19449, "BIND_ON_PICKUP")
    recipe:SetItemFilterType("ENCHANTING_WEAPON")
    recipe:AddFilters(F.ALLIANCE, F.HORDE, F.HEALER, F.CASTER, F.THORIUM_BROTHERHOOD)
    recipe:AddRepVendor(FAC.THORIUM_BROTHERHOOD, REP.REVERED, 12944)

    -- Enchant Gloves - Threat -- 25072
    recipe = AddRecipe(25072, Q.RARE)
    recipe:AddWorldDrop(Z.AHNQIRAJ, Z.EASTERN_KINGDOMS, Z.KALIMDOR)
    recipe:SetSkillLevels(300, 300, 320, 340, 360)
    recipe:SetRecipeItem(20726, "BIND_ON_PICKUP")
    recipe:SetItemFilterType("ENCHANTING_GLOVES")
    recipe:AddFilters(F.ALLIANCE, F.HORDE, F.RAID, F.TANK)
    recipe:AddMobDrop(15275)

    -- Enchant Gloves - Shadow Power -- 25073
    recipe = AddRecipe(25073, Q.RARE)
    recipe:SetSkillLevels(300, 300, 320, 340, 360)
    recipe:SetRecipeItem(20727, "BIND_ON_PICKUP")
    recipe:SetItemFilterType("ENCHANTING_GLOVES")
    recipe:AddFilters(F.ALLIANCE, F.HORDE, F.RAID, F.HEALER, F.CASTER)
    recipe:AddWorldDrop(Z.AHNQIRAJ, Z.RUINS_OF_AHNQIRAJ, Z.EASTERN_KINGDOMS, Z.KALIMDOR)

    -- Enchant Gloves - Frost Power -- 25074
    recipe = AddRecipe(25074, Q.RARE)
    recipe:SetSkillLevels(300, 300, 320, 340, 360)
    recipe:SetRecipeItem(20728, "BIND_ON_PICKUP")
    recipe:SetItemFilterType("ENCHANTING_GLOVES")
    recipe:AddFilters(F.ALLIANCE, F.HORDE, F.RAID, F.HEALER, F.CASTER)
    recipe:AddWorldDrop(Z.AHNQIRAJ, Z.RUINS_OF_AHNQIRAJ, Z.EASTERN_KINGDOMS, Z.KALIMDOR)

    -- Enchant Gloves - Fire Power -- 25078
    recipe = AddRecipe(25078, Q.RARE)
    recipe:SetSkillLevels(300, 300, 320, 340, 360)
    recipe:SetRecipeItem(20729, "BIND_ON_PICKUP")
    recipe:SetItemFilterType("ENCHANTING_GLOVES")
    recipe:AddFilters(F.ALLIANCE, F.HORDE, F.RAID, F.HEALER, F.CASTER)
    recipe:AddWorldDrop(Z.AHNQIRAJ, Z.RUINS_OF_AHNQIRAJ, Z.EASTERN_KINGDOMS, Z.KALIMDOR)

    -- Enchant Gloves - Healing Power -- 25079
    recipe = AddRecipe(25079, Q.RARE)
    recipe:SetSkillLevels(300, 300, 320, 340, 360)
    recipe:SetRecipeItem(20730, "BIND_ON_PICKUP")
    recipe:SetItemFilterType("ENCHANTING_GLOVES")
    recipe:AddFilters(F.ALLIANCE, F.HORDE, F.RAID, F.HEALER, F.CASTER)
    recipe:AddWorldDrop(Z.AHNQIRAJ, Z.RUINS_OF_AHNQIRAJ, Z.EASTERN_KINGDOMS, Z.KALIMDOR)

    -- Enchant Gloves - Superior Agility -- 25080
    recipe = AddRecipe(25080, Q.RARE)
    recipe:SetSkillLevels(300, 300, 320, 340, 360)
    recipe:SetRecipeItem(20731, "BIND_ON_PICKUP")
    recipe:SetItemFilterType("ENCHANTING_GLOVES")
    recipe:AddFilters(F.ALLIANCE, F.HORDE, F.RAID, F.DPS)
    recipe:AddWorldDrop(Z.AHNQIRAJ, Z.RUINS_OF_AHNQIRAJ, Z.EASTERN_KINGDOMS, Z.KALIMDOR)
    --recipe:AddRepVendor(FAC.KEEPERS_OF_TIME, REP.EXALTED, 21643)

    -- Enchant Cloak - Stealth -- 25083
    recipe = AddRecipe(25083, Q.RARE)
    recipe:SetSkillLevels(300, 300, 320, 340, 360)
    recipe:SetRecipeItem(20734, "BIND_ON_PICKUP")
    recipe:SetItemFilterType("ENCHANTING_CLOAK")
    recipe:AddFilters(F.ALLIANCE, F.HORDE, F.RAID, F.TANK)
    recipe:AddWorldDrop(Z.AHNQIRAJ, Z.RUINS_OF_AHNQIRAJ, Z.EASTERN_KINGDOMS, Z.KALIMDOR)
    --recipe:AddRepVendor(FAC.CENARION_EXPEDITION, REP.EXALTED, 17904)

    -- Enchant Cloak - Greater Fire Resistance -- 25081
    recipe = AddRecipe(25081, Q.COMMON)
    recipe:SetSkillLevels(300, 300, 320, 340, 360)
    recipe:SetRecipeItem(20732, "BIND_ON_PICKUP")
    recipe:SetItemFilterType("ENCHANTING_CLOAK")
    recipe:AddFilters(F.ALLIANCE, F.HORDE, F.RAID, F.TANK)
    recipe:AddRepVendor(FAC.CENARION_CIRCLE, REP.FRIENDLY, 15419)
    recipe:AddRepVendor(FAC.THORIUM_BROTHERHOOD, REP.HONORED, 12944)
    --recipe:AddRepVendor(FAC.CENARION_EXPEDITION, REP.FRIENDLY, 17904)


    -- Enchant Cloak - Dodge -- 25086
    recipe = AddRecipe(25086, Q.RARE)
    recipe:SetSkillLevels(300, 300, 320, 340, 360)
    recipe:SetRecipeItem(20736, "BIND_ON_PICKUP")
    recipe:SetItemFilterType("ENCHANTING_CLOAK")
    recipe:AddFilters(F.ALLIANCE, F.HORDE, F.RAID, F.TANK)
    recipe:AddWorldDrop(Z.AHNQIRAJ, Z.RUINS_OF_AHNQIRAJ, Z.EASTERN_KINGDOMS, Z.KALIMDOR)

    -- Minor Wizard Oil -- 25124
    recipe = AddRecipe(25124, Q.COMMON)
    recipe:SetSkillLevels(5, 5, 30, 47, 65)
    recipe:SetRecipeItem(20758, "BIND_ON_EQUIP")
    recipe:SetCraftedItem(20744, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ENCHANTING_OIL")
    recipe:AddFilters(F.ALLIANCE, F.HORDE, F.HEALER, F.CASTER)
    recipe:AddVendor(1318, 3012, 3346, 4228, 4617, 5158, 5757, 5758, 15419, 257020)

    -- Minor Mana Oil -- 25125
    recipe = AddRecipe(25125, Q.COMMON)
    recipe:SetSkillLevels(150, 150, 160, 170, 180)
    recipe:SetRecipeItem(20752, "BIND_ON_EQUIP")
    recipe:SetCraftedItem(20745, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ENCHANTING_OIL")
    recipe:AddFilters(F.ALLIANCE, F.HORDE, F.HEALER, F.CASTER)
    recipe:AddVendor(1318, 3012, 3346, 4228, 4617, 5158, 5757, 5758, 15419, 257020)

    -- Lesser Wizard Oil -- 25126
    recipe = AddRecipe(25126, Q.COMMON)
    recipe:SetSkillLevels(200, 200, 210, 220, 230)
    recipe:SetRecipeItem(20753, "BIND_ON_EQUIP")
    recipe:SetCraftedItem(20746, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ENCHANTING_OIL")
    recipe:AddFilters(F.ALLIANCE, F.HORDE, F.HEALER, F.CASTER)
    recipe:AddVendor(1318, 3012, 3346, 4228, 4617, 5158, 5757, 5758, 15419, 257020)

    -- Lesser Mana Oil -- 25127
    recipe = AddRecipe(25127, Q.COMMON)
    recipe:SetSkillLevels(250, 250, 260, 270, 280)
    recipe:SetRecipeItem(20754, "BIND_ON_EQUIP")
    recipe:SetCraftedItem(20747, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ENCHANTING_OIL")
    recipe:AddFilters(F.ALLIANCE, F.HORDE, F.HEALER, F.CASTER)
    recipe:AddVendor(12944, 15419)

    -- Wizard Oil -- 25128
    recipe = AddRecipe(25128, Q.COMMON)
    recipe:SetSkillLevels(275, 275, 285, 295, 305)
    recipe:SetRecipeItem(20755, "BIND_ON_EQUIP")
    recipe:SetCraftedItem(20750, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ENCHANTING_OIL")
    recipe:AddFilters(F.ALLIANCE, F.HORDE, F.HEALER, F.CASTER)
    recipe:AddVendor(12944, 15419)

    -- Brilliant Wizard Oil -- 25129
    recipe = AddRecipe(25129, Q.COMMON)
    recipe:SetSkillLevels(300, 300, 310, 320, 330)
    recipe:SetRecipeItem(20756, "BIND_ON_PICKUP")
    recipe:SetCraftedItem(20749, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ENCHANTING_OIL")
    recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS, F.HEALER, F.CASTER)
    recipe:AddRepVendor(FAC.ZANDALAR_TRIBE, REP.HONORED, 14921)

    -- Brilliant Mana Oil -- 25130
    recipe = AddRecipe(25130, Q.COMMON)
    recipe:SetSkillLevels(300, 300, 310, 320, 330)
    recipe:SetRecipeItem(20757, "BIND_ON_PICKUP")
    recipe:SetCraftedItem(20748, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("ENCHANTING_OIL")
    recipe:AddFilters(F.ALLIANCE, F.HORDE, F.HEALER, F.CASTER)
    recipe:AddRepVendor(FAC.ZANDALAR_TRIBE, REP.FRIENDLY, 14921)

    -- Enchant 2H Weapon - Agility -- 27837
    recipe = AddRecipe(27837, Q.COMMON)
    recipe:SetSkillLevels(290, 290, 310, 330, 350)
    recipe:SetRecipeItem(22392, "BIND_ON_PICKUP")
    recipe:SetItemFilterType("ENCHANTING_2H_WEAPON")
    recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS, F.TIMBERMAW_HOLD)
    recipe:AddRepVendor(FAC.TIMBERMAW_HOLD, REP.FRIENDLY, 11557)

    self.InitializeRecipes = nil
end
