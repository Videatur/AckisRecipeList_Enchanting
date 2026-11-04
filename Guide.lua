local _, private = ...
local addon = private.addon
if not addon then return end
local module = addon:GetModule(private.module_name)
local Z = addon.constants.ZONE_NAMES
module.Guides = {
["dust"] = {
["chapters"] = {
{
["from"] = 1,
["id"] = "apprentice",
["steps"] = {
{
["from"] = 1,
["id"] = "1-2",
["note"] = "Buy Copper Rod and Mote of Magic from supplies vendors.",
["to"] = 2,
["variants"] = {
{
["count"] = 1,
["materials"] = {
{
6217,
1
},
{
247786,
1
}
},
["outputCount"] = 1,
["outputItemID"] = 6218,
["requiredTools"] = {
{
["itemID"] = 6218,
["quantity"] = 1
}
},
["spellID"] = 7421,
["title"] = "Runed Copper Rod"
}
}
},
{
["from"] = 2,
["id"] = "2-20",
["to"] = 20,
["variants"] = {
{
["count"] = 18,
["materials"] = {
{
247786,
18
}
},
["requiredTools"] = {
{
["itemID"] = 6218,
["quantity"] = 1
}
},
["spellID"] = 7418,
["title"] = "Enchant Bracer - Inferior Stamina"
}
}
},
{
["from"] = 20,
["id"] = "20-70",
["note"] = "Compare Strange Dust and Lesser Magic Essence prices. Greater Magic Essence can be split into three Lesser Magic Essences.",
["to"] = 70,
["variants"] = {
{
["count"] = 50,
["materials"] = {
{
10940,
50
}
},
["requiredTools"] = {
{
["itemID"] = 6218,
["quantity"] = 1
}
},
["spellID"] = 7420,
["title"] = "Enchant Chest - Inferior Stamina"
},
{
["count"] = 50,
["materials"] = {
{
10938,
50
}
},
["requiredTools"] = {
{
["itemID"] = 6218,
["quantity"] = 1
}
},
["spellID"] = 7428,
["title"] = "Enchant Bracer - Minor Deflect"
}
}
}
},
["title"] = "Apprentice",
["to"] = 70,
["training"] = {
["level"] = 1,
["rank"] = "Apprentice Enchanting",
["skill"] = 0,
["trainers"] = {
11066,
11067,
11071,
11068,
11065,
11070,
266881,
5695,
3606,
257004,
257020
}
}
},
{
["from"] = 70,
["id"] = "journeyman",
["steps"] = {
{
["from"] = 70,
["id"] = "70-100",
["note"] = "Craft until skill 100.",
["to"] = 100,
["variants"] = {
{
["count"] = 30,
["materials"] = {
{
10940,
60
}
},
["requiredTools"] = {
{
["itemID"] = 6218,
["quantity"] = 1
}
},
["spellID"] = 7457,
["title"] = "Enchant Bracer - Minor Stamina"
}
}
},
{
["from"] = 100,
["id"] = "100-109",
["note"] = "Craft until skill 109.",
["to"] = 109,
["variants"] = {
{
["count"] = 9,
["materials"] = {
{
10940,
18
}
},
["requiredTools"] = {
{
["itemID"] = 6218,
["quantity"] = 1
}
},
["spellID"] = 7771,
["title"] = "Enchant Cloak - Minor Protection"
}
}
},
{
["from"] = 109,
["id"] = "109-110",
["note"] = "Craft and retain Runed Silver Rod. Buy the unenchanted Silver Rod from a Blacksmith or the Auction House.",
["to"] = 110,
["variants"] = {
{
["count"] = 1,
["materials"] = {
{
1210,
1
},
{
6338,
1
},
{
10938,
4
},
{
10940,
3
}
},
["note"] = "This source recipe is absent from the Ackis recipe catalogue. Check your beta trainer before buying materials.",
["outputCount"] = 1,
["outputItemID"] = 6339,
["requiredTools"] = {
{
["itemID"] = 6218,
["quantity"] = 1
}
},
["spellID"] = 7795,
["title"] = "Runed Silver Rod",
["trainers"] = {
3345,
4616,
3011,
1317,
5157,
4213
}
}
}
},
{
["from"] = 110,
["id"] = "110-130",
["note"] = "Craft until skill 130.",
["to"] = 130,
["variants"] = {
{
["count"] = 32,
["materials"] = {
{
10940,
64
}
},
["requiredTools"] = {
{
["itemID"] = 6218,
["quantity"] = 1
}
},
["spellID"] = 7771,
["title"] = "Enchant Cloak - Minor Protection"
}
}
},
{
["from"] = 130,
["id"] = "130-150",
["note"] = "Craft until skill 150.",
["to"] = 150,
["variants"] = {
{
["count"] = 20,
["materials"] = {
{
10940,
80
}
},
["requiredTools"] = {
{
["itemID"] = 6218,
["quantity"] = 1
}
},
["spellID"] = 7863,
["title"] = "Enchant Boots - Minor Stamina"
},
{
["count"] = 20,
["materials"] = {
{
11083,
20
}
},
["requiredTools"] = {
{
["itemID"] = 6218,
["quantity"] = 1
}
},
["spellID"] = 13501,
["title"] = "Enchant Bracer - Lesser Stamina"
}
}
}
},
["title"] = "Journeyman",
["to"] = 150,
["training"] = {
["level"] = 10,
["rank"] = "Journeyman Enchanting",
["skill"] = 50,
["trainers"] = {
3345,
4616,
3011,
1317,
5157,
4213
}
}
},
{
["from"] = 150,
["id"] = "expert",
["steps"] = {
{
["from"] = 150,
["id"] = "150-151",
["to"] = 151,
["variants"] = {
{
["count"] = 1,
["materials"] = {
{
5500,
1
},
{
11082,
1
},
{
11083,
1
},
{
11128,
1
}
},
["note"] = "This source recipe is absent from the Ackis recipe catalogue. Check your beta trainer before buying materials.",
["outputCount"] = 1,
["outputItemID"] = 11130,
["requiredTools"] = {
{
["itemID"] = 6218,
["quantity"] = 1
}
},
["spellID"] = 13628,
["title"] = "Runed Golden Rod",
["trainers"] = {
11074,
11072
}
}
}
},
{
["from"] = 151,
["id"] = "151-165",
["note"] = "Craft Minor Mana Oil; reserve enough seeds and vials before starting.",
["to"] = 165,
["variants"] = {
{
["count"] = 16,
["materials"] = {
{
3372,
16
},
{
11083,
16
},
{
17034,
32
}
},
["note"] = "Buy and learn the formula from an Enchanting Supplies vendor. Buy Leaded Vials from Alchemy Supplies and seeds from a Reagent vendor, or use the Auction House.",
["recipeItemID"] = 20752,
["requiredTools"] = {
{
["itemID"] = 6218,
["quantity"] = 1
}
},
["shoppingRequirements"] = {
{
20752,
1
}
},
["spellID"] = 25125,
["title"] = "Minor Mana Oil"
}
}
},
{
["from"] = 165,
["id"] = "165-185",
["note"] = "Skill gains become less reliable after 180.",
["to"] = 185,
["variants"] = {
{
["count"] = 22,
["materials"] = {
{
11083,
22
}
},
["requiredTools"] = {
{
["itemID"] = 6218,
["quantity"] = 1
}
},
["spellID"] = 13637,
["title"] = "Enchant Boots - Lesser Agility"
}
}
},
{
["from"] = 185,
["id"] = "185-200",
["note"] = "Optional: continue Lesser Agility to 200 if its reagents are more accessible. Extra crafts for this manual alternative are not included in the shopping list.",
["to"] = 200,
["variants"] = {
{
["count"] = 15,
["materials"] = {
{
11137,
15
}
},
["requiredTools"] = {
{
["itemID"] = 6218,
["quantity"] = 1
}
},
["spellID"] = 13661,
["title"] = "Enchant Bracer - Strength"
}
}
},
{
["from"] = 200,
["id"] = "200-201",
["to"] = 201,
["variants"] = {
{
["count"] = 1,
["materials"] = {
{
7971,
1
},
{
11135,
1
},
{
11137,
1
},
{
11144,
1
}
},
["note"] = "This source recipe is absent from the Ackis recipe catalogue. Check your beta trainer before buying materials.",
["outputCount"] = 1,
["outputItemID"] = 11145,
["requiredTools"] = {
{
["itemID"] = 6218,
["quantity"] = 1
}
},
["spellID"] = 13702,
["title"] = "Runed Truesilver Rod",
["trainers"] = {
11074,
11072
}
}
}
},
{
["from"] = 201,
["id"] = "201-220",
["note"] = "Craft Lesser Wizard Oil; counts are estimates.",
["to"] = 220,
["variants"] = {
{
["count"] = 25,
["materials"] = {
{
3372,
25
},
{
11137,
25
},
{
17035,
50
}
},
["note"] = "Buy and learn the formula from an Enchanting Supplies vendor. Buy Leaded Vials from Alchemy Supplies and seeds from a Reagent vendor, or use the Auction House.",
["recipeItemID"] = 20753,
["requiredTools"] = {
{
["itemID"] = 6218,
["quantity"] = 1
}
},
["shoppingRequirements"] = {
{
20753,
1
}
},
["spellID"] = 25126,
["title"] = "Lesser Wizard Oil"
}
}
},
{
["from"] = 220,
["id"] = "220-225",
["to"] = 225,
["variants"] = {
{
["count"] = 5,
["materials"] = {
{
11137,
5
}
},
["requiredTools"] = {
{
["itemID"] = 6218,
["quantity"] = 1
}
},
["spellID"] = 13746,
["title"] = "Enchant Cloak - Greater Defense"
}
}
}
},
["title"] = "Expert",
["to"] = 225,
["training"] = {
["cost"] = "50s",
["level"] = 20,
["rank"] = "Expert Enchanting",
["skill"] = 125,
["trainers"] = {
11074,
11072
}
}
},
{
["from"] = 225,
["id"] = "artisan",
["steps"] = {
{
["from"] = 225,
["id"] = "225-230",
["note"] = "Learn Artisan Enchanting and the later trainer recipes from Annora before leaving Uldaman. Enchant a suitable pair of gloves until 230.",
["to"] = 230,
["variants"] = {
{
["count"] = 5,
["materials"] = {
{
11137,
5
}
},
["requiredTools"] = {
{
["itemID"] = 11145,
["quantity"] = 1
}
},
["spellID"] = 13815,
["title"] = "Enchant Gloves - Agility"
}
}
},
{
["from"] = 230,
["id"] = "230-235",
["note"] = "Apply Stamina to suitable boots until 235. Re-enchanting the same item is sufficient.",
["to"] = 235,
["variants"] = {
{
["count"] = 5,
["materials"] = {
{
11137,
10
}
},
["requiredTools"] = {
{
["itemID"] = 11145,
["quantity"] = 1
}
},
["spellID"] = 13836,
["title"] = "Enchant Boots - Stamina"
}
}
},
{
["from"] = 235,
["id"] = "235-250",
["note"] = "Apply Superior Stamina to a suitable chest item until 250. Stop at the target; gains may require extra materials.",
["to"] = 250,
["variants"] = {
{
["count"] = 20,
["materials"] = {
{
11137,
60
}
},
["requiredTools"] = {
{
["itemID"] = 11145,
["quantity"] = 1
}
},
["spellID"] = 13858,
["title"] = "Enchant Chest - Superior Stamina"
}
}
},
{
["from"] = 250,
["id"] = "250-265",
["note"] = "Buy and learn Lesser Mana Oil from Kania in the upper floor of the Silithus inn. Buy Crystal Vials from Mishta or an Alchemy Supplies vendor. Manual alternative: Annora teaches Enchant Bracer - Greater Strength; each use takes 1 Dream Dust and 2 Lesser Nether Essence. Its extra crafts and reagents are not included in the shopping list.",
["to"] = 265,
["variants"] = {
{
["count"] = 20,
["materials"] = {
{
8831,
20
},
{
8925,
20
},
{
11176,
20
}
},
["recipeItemID"] = 20754,
["requiredTools"] = {
{
["itemID"] = 11145,
["quantity"] = 1
}
},
["shoppingRequirements"] = {
{
20754,
1
}
},
["spellID"] = 25127,
["title"] = "Lesser Mana Oil"
}
}
},
{
["from"] = 265,
["id"] = "265-294",
["note"] = "Buy the formula from Daniel Bartlett in Undercity (Horde) or Mythrin'dir in Darnassus (Alliance). It binds on pickup: purchase it on this character. Enchant a suitable shield until 294.",
["to"] = 294,
["variants"] = {
{
["count"] = 32,
["materials"] = {
{
11176,
192
}
},
["recipeItemID"] = 16217,
["requiredTools"] = {
{
["itemID"] = 11145,
["quantity"] = 1
}
},
["shoppingRequirements"] = {
{
16217,
1
}
},
["spellID"] = 20017,
["title"] = "Enchant Shield - Greater Stamina"
}
}
},
{
["from"] = 294,
["id"] = "294-295",
["note"] = "Lorelae Wintersong in Nighthaven, Moonglade, sells the Runed Arcanite Rod formula. Buy the Superior Defense formula at the same time. Obtain the unenchanted Arcanite Rod from Blacksmithing or the Auction House.",
["to"] = 295,
["variants"] = {
{
["count"] = 1,
["materials"] = {
{
13926,
1
},
{
14343,
4
},
{
14344,
2
},
{
16203,
4
},
{
16204,
10
},
{
16206,
1
}
},
["note"] = "Craft one rod and keep it. These source reagents do not consume your earlier runed rods.",
["outputCount"] = 1,
["outputItemID"] = 16207,
["recipeItemID"] = 16243,
["requiredTools"] = {

},
["shoppingRequirements"] = {
{
16243,
1
}
},
["spellID"] = 20051,
["title"] = "Runed Arcanite Rod"
}
}
},
{
["from"] = 295,
["id"] = "295-300",
["note"] = "Buy Superior Defense from Lorelae Wintersong and enchant a suitable cloak until 300. Manual alternative: continue Greater Stamina on a shield if Dream Dust is cheaper. Extra crafts for that alternative are not included in shopping.",
["to"] = 300,
["variants"] = {
{
["count"] = 5,
["materials"] = {
{
16204,
40
}
},
["recipeItemID"] = 16224,
["requiredTools"] = {
{
["itemID"] = 11145,
["quantity"] = 1
}
},
["shoppingRequirements"] = {
{
16224,
1
}
},
["spellID"] = 20015,
["title"] = "Enchant Cloak - Superior Defense"
}
}
}
},
["title"] = "Artisan",
["to"] = 300,
["training"] = {
["level"] = 35,
["note"] = "Visit Annora inside Uldaman before passing 225. Bring a party or a higher-level helper, enough gold, and roughly 100 Vision Dust. Clear all enemies in her room to make her appear. Learn the later recipes before leaving; the back entrance in Badlands is the shorter approach.",
["rank"] = "Artisan Enchanting",
["skill"] = 200,
["trainers"] = {
11073
}
}
}
},
["id"] = "forever-enchanting-1-225",
["introduction"] = "Choose a route based on reagent availability and prices. Craft counts are estimates; stop at the target skill and keep your runed rods. Re-enchanting the same suitable item is sufficient.",
["label"] = "Strange Dust",
["locations"] = {
[11065] = {
["faction"] = "Alliance",
["mapID"] = 1455,
["name"] = "Thonys Pillarstone",
["x"] = 60.4,
["y"] = 44.9,
["zone"] = Z["IRONFORGE"]
},
[11066] = {
["faction"] = "Horde",
["mapID"] = 1454,
["name"] = "Jhag",
["x"] = 53.5,
["y"] = 38.4,
["zone"] = Z["ORGRIMMAR"]
},
[11067] = {
["faction"] = "Horde",
["mapID"] = 1458,
["name"] = "Malcomb Wynn",
["x"] = 62.4,
["y"] = 60.8,
["zone"] = Z["UNDERCITY"]
},
[11068] = {
["faction"] = "Alliance",
["mapID"] = 1453,
["name"] = "Betty Quin",
["x"] = 53.1,
["y"] = 73.8,
["zone"] = Z["STORMWIND_CITY"]
},
[11070] = {
["faction"] = "Alliance",
["mapID"] = 1457,
["name"] = "Lalina Summermoon",
["x"] = 58.9,
["y"] = 12.8,
["zone"] = Z["DARNASSUS"]
},
[11071] = {
["faction"] = "Horde",
["mapID"] = 1456,
["name"] = "Mot Dawnstrider",
["x"] = 44.9,
["y"] = 39.0,
["zone"] = Z["THUNDER_BLUFF"]
},
[11072] = {
["faction"] = "Alliance",
["mapID"] = 1429,
["name"] = "Kitta Firewind",
["x"] = 64.9,
["y"] = 70.6,
["zone"] = Z["ELWYNN_FOREST"]
},
[11074] = {
["faction"] = "Horde",
["mapID"] = 1442,
["name"] = "Hgarth",
["x"] = 49.2,
["y"] = 57.1,
["zone"] = Z["STONETALON_MOUNTAINS"]
},
[1317] = {
["faction"] = "Alliance",
["mapID"] = 1453,
["name"] = "Lucan Cordell",
["x"] = 53.1,
["y"] = 74.3,
["zone"] = Z["STORMWIND_CITY"]
},
[257004] = {
["faction"] = "Neutral",
["mapID"] = 2521,
["name"] = "Eaysaa Brightgust",
["x"] = 59.2,
["y"] = 76.3,
["zone"] = Z["ZEPHRAS_ISLE"]
},
[257020] = {
["faction"] = "Neutral",
["mapID"] = 2521,
["name"] = "Nasalanna Windsinger",
["x"] = 43.2,
["y"] = 43.2,
["zone"] = Z["ZEPHRAS_ISLE"]
},
[266881] = {
["faction"] = "Horde",
["mapID"] = 1411,
["name"] = "Pa'zula",
["x"] = 56.7,
["y"] = 73.7,
["zone"] = Z["DUROTAR"]
},
[3011] = {
["faction"] = "Horde",
["mapID"] = 1456,
["name"] = "Teg Dawnstrider",
["x"] = 44.9,
["y"] = 37.7,
["zone"] = Z["THUNDER_BLUFF"]
},
[3345] = {
["faction"] = "Horde",
["mapID"] = 1454,
["name"] = "Godan",
["x"] = 53.8,
["y"] = 38.5,
["zone"] = Z["ORGRIMMAR"]
},
[3606] = {
["faction"] = "Alliance",
["mapID"] = 1438,
["name"] = "Alanna Raveneye",
["x"] = 36.8,
["y"] = 34.2,
["zone"] = Z["TELDRASSIL"]
},
[4213] = {
["faction"] = "Alliance",
["mapID"] = 1457,
["name"] = "Taladan",
["x"] = 58.6,
["y"] = 13.2,
["zone"] = Z["DARNASSUS"]
},
[4616] = {
["faction"] = "Horde",
["mapID"] = 1458,
["name"] = "Lavinia Crowe",
["x"] = 62.4,
["y"] = 61.6,
["zone"] = Z["UNDERCITY"]
},
[5157] = {
["faction"] = "Alliance",
["mapID"] = 1455,
["name"] = "Gimble Thistlefuzz",
["x"] = 59.8,
["y"] = 45.5,
["zone"] = Z["IRONFORGE"]
},
[5695] = {
["faction"] = "Horde",
["mapID"] = 1420,
["name"] = "Vance Undergloom",
["x"] = 61.8,
["y"] = 51.6,
["zone"] = Z["TIRISFAL_GLADES"]
}
},
["materialNames"] = {
[10938] = "Lesser Magic Essence",
[10940] = "Strange Dust",
[11082] = "Greater Astral Essence",
[11083] = "Soul Dust",
[11128] = "Golden Rod",
[11130] = "Runed Golden Rod",
[11135] = "Greater Mystic Essence",
[11137] = "Vision Dust",
[11144] = "Truesilver Rod",
[11145] = "Runed Truesilver Rod",
[11176] = "Dream Dust",
[1210] = "Shadowgem",
[13926] = "Golden Pearl",
[14343] = "Small Brilliant Shard",
[14344] = "Large Brilliant Shard",
[16203] = "Greater Eternal Essence",
[16204] = "Illusion Dust",
[16206] = "Arcanite Rod",
[16207] = "Runed Arcanite Rod",
[16217] = "Formula: Enchant Shield - Greater Stamina",
[16224] = "Formula: Enchant Cloak - Superior Defense",
[16243] = "Formula: Runed Arcanite Rod",
[17034] = "Maple Seed",
[17035] = "Stranglethorn Seed",
[20752] = "Formula: Minor Mana Oil",
[20753] = "Formula: Lesser Wizard Oil",
[20754] = "Formula: Lesser Mana Oil",
[247786] = "Mote of Magic",
[3372] = "Leaded Vial",
[5500] = "Iridescent Pearl",
[6217] = "Copper Rod",
[6218] = "Runed Copper Rod",
[6338] = "Silver Rod",
[6339] = "Runed Silver Rod",
[6349] = "Formula: Enchant 2H Weapon - Lesser Intellect",
[7971] = "Black Pearl",
[8831] = "Purple Lotus",
[8925] = "Crystal Vial"
},
["materialSources"] = {
[10938] = {
["kind"] = "disenchant",
["note"] = "Disenchant eligible equipment or buy this reagent at the Auction House. Outcomes depend on item level and quality; no single zone guarantees this material."
},
[10940] = {
["kind"] = "disenchant",
["note"] = "Disenchant eligible equipment or buy this reagent at the Auction House. Outcomes depend on item level and quality; no single zone guarantees this material."
},
[11082] = {
["kind"] = "disenchant",
["note"] = "Disenchant eligible equipment or buy this reagent at the Auction House. Outcomes depend on item level and quality; no single zone guarantees this material."
},
[11083] = {
["kind"] = "disenchant",
["note"] = "Disenchant eligible equipment or buy this reagent at the Auction House. Outcomes depend on item level and quality; no single zone guarantees this material."
},
[11128] = {
["kind"] = "auction",
["note"] = "Buy this unenchanted rod from a Blacksmith or the Auction House. Enchanting supplies vendors do not sell it."
},
[11130] = {
["kind"] = "craft",
["note"] = "Keep this reusable rod in your bags; confirm tool requirements in your profession window.",
["spellID"] = 13628,
["stepID"] = "150-151"
},
[11135] = {
["kind"] = "disenchant",
["note"] = "Disenchant eligible equipment or buy this reagent at the Auction House. Outcomes depend on item level and quality; no single zone guarantees this material."
},
[11137] = {
["kind"] = "disenchant",
["note"] = "Disenchant eligible equipment or buy this reagent at the Auction House. Outcomes depend on item level and quality; no single zone guarantees this material."
},
[11144] = {
["kind"] = "auction",
["note"] = "Buy this unenchanted rod from a Blacksmith or the Auction House. Enchanting supplies vendors do not sell it."
},
[11145] = {
["kind"] = "craft",
["note"] = "Keep this reusable rod in your bags; confirm tool requirements in your profession window.",
["spellID"] = 13702,
["stepID"] = "200-201"
},
[11176] = {
["kind"] = "disenchant",
["note"] = "Disenchant eligible equipment or buy this reagent at the Auction House. Outcomes depend on item level and quality; no single zone guarantees this material."
},
[1210] = {
["kind"] = "mining",
["note"] = "Shadowgem can be found while mining. The Auction House is an alternative.",
["zones"] = {
Z["THE_BARRENS"],
Z["ASHENVALE"],
Z["HILLSBRAD_FOOTHILLS"]
}
},
[13926] = {
["kind"] = "auction",
["note"] = "Obtain Golden Pearls from eligible clams or buy one at the Auction House."
},
[14343] = {
["kind"] = "disenchant",
["note"] = "Disenchant eligible equipment or buy this reagent at the Auction House. Outcomes depend on item level and quality; no single zone guarantees this material."
},
[14344] = {
["kind"] = "disenchant",
["note"] = "Disenchant eligible equipment or buy this reagent at the Auction House. Outcomes depend on item level and quality; no single zone guarantees this material."
},
[16203] = {
["kind"] = "disenchant",
["note"] = "Disenchant eligible equipment or buy this reagent at the Auction House. Outcomes depend on item level and quality; no single zone guarantees this material."
},
[16204] = {
["kind"] = "disenchant",
["note"] = "Disenchant eligible equipment or buy this reagent at the Auction House. Outcomes depend on item level and quality; no single zone guarantees this material."
},
[16206] = {
["kind"] = "auction",
["note"] = "Ask a Blacksmith to make an Arcanite Rod or buy one at the Auction House."
},
[16207] = {
["kind"] = "craft",
["note"] = "Craft and retain Runed Arcanite Rod. Keep the earlier rods too; the listed enchants still require Runed Truesilver Rod.",
["spellID"] = 20051,
["stepID"] = "294-295"
},
[16217] = {
["kind"] = "supply"
},
[16224] = {
["kind"] = "supply"
},
[16243] = {
["kind"] = "supply"
},
[17034] = {
["kind"] = "auction",
["note"] = "Buy Maple Seed from Reagent vendors or the Auction House."
},
[17035] = {
["kind"] = "auction",
["note"] = "Buy Stranglethorn Seed from Reagent vendors or the Auction House."
},
[20752] = {
["kind"] = "supply"
},
[20753] = {
["kind"] = "supply"
},
[20754] = {
["kind"] = "supply"
},
[247786] = {
["kind"] = "supply"
},
[3372] = {
["kind"] = "auction",
["note"] = "Buy Leaded Vials from Alchemy Supplies vendors or the Auction House."
},
[5500] = {
["kind"] = "auction",
["note"] = "Obtain pearls from looted clams or buy the pearl at the Auction House."
},
[6217] = {
["kind"] = "supply"
},
[6218] = {
["kind"] = "craft",
["note"] = "Keep this reusable rod in your bags; confirm tool requirements in your profession window.",
["spellID"] = 7421,
["stepID"] = "1-2"
},
[6338] = {
["kind"] = "auction",
["note"] = "Buy this unenchanted rod from a Blacksmith or the Auction House. Enchanting supplies vendors do not sell it."
},
[6339] = {
["kind"] = "craft",
["note"] = "Keep this reusable rod in your bags; confirm tool requirements in your profession window.",
["spellID"] = 7795,
["stepID"] = "109-110"
},
[6349] = {
["kind"] = "supply"
},
[7971] = {
["kind"] = "auction",
["note"] = "Obtain pearls from looted clams or buy the pearl at the Auction House."
},
[8831] = {
["kind"] = "herb",
["note"] = "Gather Purple Lotus near ruins with Herbalism 210, or buy it at the Auction House.",
["skill"] = 210,
["zones"] = {
Z["THE_HINTERLANDS"],
Z["TANARIS"],
Z["STRANGLETHORN_VALE"]
}
},
[8925] = {
["kind"] = "supply"
}
},
["maxSkill"] = 300,
["menuTitle"] = "Strange Dust",
["minSkill"] = 1,
["setupItems"] = {

},
["shoppingRequirements"] = {

},
["source"] = "https://www.wow-professions.com/forever/enchanting-leveling-guide",
["sourceDate"] = "2026-10-25",
["sourceHash"] = "c237b8b3182875e3f238d298ac0061dfd11de3a6fb146beed23d2cc044430af6",
["supplies"] = {
{
["faction"] = "Horde",
["id"] = "daniel-bartlett",
["items"] = {
[16217] = true,
[3372] = true,
[6217] = true
},
["mapID"] = 1458,
["name"] = "Daniel Bartlett",
["x"] = 64.2,
["y"] = 37.6,
["zone"] = Z["UNDERCITY"]
},
{
["faction"] = "Neutral",
["id"] = "eaysaa-brightgust",
["items"] = {
[10938] = true,
[10940] = true,
[247786] = true,
[6217] = true
},
["mapID"] = 2521,
["name"] = "Eaysaa Brightgust",
["x"] = 59.2,
["y"] = 76.3,
["zone"] = Z["ZEPHRAS_ISLE"]
},
{
["faction"] = "Alliance",
["id"] = "jessara-cordell",
["items"] = {
[20752] = true,
[20753] = true,
[247786] = true,
[6217] = true
},
["mapID"] = 1453,
["name"] = "Jessara Cordell",
["x"] = 53.0,
["y"] = 74.1,
["zone"] = Z["STORMWIND_CITY"]
},
{
["faction"] = "Neutral",
["id"] = "kania",
["items"] = {
[10938] = true,
[10940] = true,
[20752] = true,
[20753] = true,
[20754] = true,
[247786] = true,
[6217] = true
},
["mapID"] = 1451,
["name"] = "Kania",
["x"] = 52.0,
["y"] = 39.6,
["zone"] = Z["SILITHUS"]
},
{
["faction"] = "Horde",
["id"] = "kithas",
["items"] = {
[10938] = true,
[10940] = true,
[20752] = true,
[20753] = true,
[247786] = true,
[6217] = true,
[6349] = true
},
["mapID"] = 1454,
["name"] = "Kithas",
["x"] = 53.7,
["y"] = 38.1,
["zone"] = Z["ORGRIMMAR"]
},
{
["faction"] = "Neutral",
["id"] = "lorelae-wintersong",
["items"] = {
[16224] = true,
[16243] = true,
[3372] = true,
[6217] = true
},
["mapID"] = 1450,
["name"] = "Lorelae Wintersong",
["x"] = 48.3,
["y"] = 40.1,
["zone"] = Z["MOONGLADE"]
},
{
["faction"] = "Neutral",
["id"] = "mishta",
["items"] = {
[3372] = true,
[6217] = true,
[8925] = true
},
["mapID"] = 1451,
["name"] = "Mishta",
["x"] = 49.9,
["y"] = 36.5,
["zone"] = Z["SILITHUS"]
},
{
["faction"] = "Alliance",
["id"] = "mythrindir",
["items"] = {
[16217] = true,
[3372] = true,
[6217] = true
},
["mapID"] = 1457,
["name"] = "Mythrin'dir",
["x"] = 61.0,
["y"] = 18.2,
["zone"] = Z["DARNASSUS"]
},
{
["faction"] = "Neutral",
["id"] = "nasalanna-windsinger",
["items"] = {
[10938] = true,
[10940] = true,
[20752] = true,
[20753] = true,
[247786] = true,
[6217] = true
},
["mapID"] = 2521,
["name"] = "Nasalanna Windsinger",
["x"] = 43.2,
["y"] = 43.2,
["zone"] = Z["ZEPHRAS_ISLE"]
},
{
["faction"] = "Horde",
["id"] = "nata-dawnstrider",
["items"] = {
[10938] = true,
[10940] = true,
[20752] = true,
[20753] = true,
[247786] = true,
[6217] = true,
[6349] = true
},
["mapID"] = 1456,
["name"] = "Nata Dawnstrider",
["x"] = 44.5,
["y"] = 39.0,
["zone"] = Z["THUNDER_BLUFF"]
},
{
["faction"] = "Horde",
["id"] = "thaddeus-webb",
["items"] = {
[10940] = true,
[20752] = true,
[20753] = true,
[247786] = true,
[6217] = true
},
["mapID"] = 1458,
["name"] = "Thaddeus Webb",
["x"] = 62.0,
["y"] = 60.9,
["zone"] = Z["UNDERCITY"]
},
{
["faction"] = "Alliance",
["id"] = "tilli-thistlefuzz",
["items"] = {
[10940] = true,
[20752] = true,
[20753] = true,
[247786] = true,
[6217] = true,
[6349] = true
},
["mapID"] = 1455,
["name"] = "Tilli Thistlefuzz",
["x"] = 60.8,
["y"] = 44.1,
["zone"] = Z["IRONFORGE"]
},
{
["faction"] = "Alliance",
["id"] = "vaean",
["items"] = {
[10938] = true,
[10940] = true,
[20752] = true,
[20753] = true,
[247786] = true,
[6217] = true
},
["mapID"] = 1457,
["name"] = "Vaean",
["x"] = 58.5,
["y"] = 14.2,
["zone"] = Z["DARNASSUS"]
},
{
["faction"] = "Horde",
["id"] = "leo-sarn",
["items"] = {
[10938] = true,
[10940] = true,
[20752] = true,
[20753] = true,
[247786] = true,
[6217] = true,
[6349] = true
},
["mapID"] = 1421,
["name"] = "Leo Sarn",
["x"] = 54.0,
["y"] = 82.1,
["zone"] = Z["SILVERPINE_FOREST"]
}
},
["title"] = "Strange Dust",
["tools"] = {

}
},
["essence"] = {
["chapters"] = {
{
["from"] = 1,
["id"] = "apprentice",
["steps"] = {
{
["from"] = 1,
["id"] = "1-2",
["note"] = "Buy Copper Rod and Mote of Magic from supplies vendors.",
["to"] = 2,
["variants"] = {
{
["count"] = 1,
["materials"] = {
{
6217,
1
},
{
247786,
1
}
},
["outputCount"] = 1,
["outputItemID"] = 6218,
["requiredTools"] = {
{
["itemID"] = 6218,
["quantity"] = 1
}
},
["spellID"] = 7421,
["title"] = "Runed Copper Rod"
}
}
},
{
["from"] = 2,
["id"] = "2-20",
["to"] = 20,
["variants"] = {
{
["count"] = 18,
["materials"] = {
{
247786,
18
}
},
["requiredTools"] = {
{
["itemID"] = 6218,
["quantity"] = 1
}
},
["spellID"] = 7418,
["title"] = "Enchant Bracer - Inferior Stamina"
}
}
},
{
["from"] = 20,
["id"] = "20-70",
["note"] = "Compare Strange Dust and Lesser Magic Essence prices. Greater Magic Essence can be split into three Lesser Magic Essences.",
["to"] = 70,
["variants"] = {
{
["count"] = 50,
["materials"] = {
{
10938,
50
}
},
["requiredTools"] = {
{
["itemID"] = 6218,
["quantity"] = 1
}
},
["spellID"] = 7428,
["title"] = "Enchant Bracer - Minor Deflect"
},
{
["count"] = 50,
["materials"] = {
{
10940,
50
}
},
["requiredTools"] = {
{
["itemID"] = 6218,
["quantity"] = 1
}
},
["spellID"] = 7420,
["title"] = "Enchant Chest - Inferior Stamina"
}
}
}
},
["title"] = "Apprentice",
["to"] = 70,
["training"] = {
["level"] = 1,
["rank"] = "Apprentice Enchanting",
["skill"] = 0,
["trainers"] = {
11066,
11067,
11071,
11068,
11065,
11070,
266881,
5695,
3606,
257004,
257020
}
}
},
{
["from"] = 70,
["id"] = "journeyman",
["steps"] = {
{
["from"] = 70,
["id"] = "70-100",
["note"] = "Craft until skill 100.",
["to"] = 100,
["variants"] = {
{
["count"] = 33,
["materials"] = {
{
10938,
33
}
},
["requiredTools"] = {
{
["itemID"] = 6218,
["quantity"] = 1
}
},
["spellID"] = 7426,
["title"] = "Enchant Chest - Minor Absorption"
}
}
},
{
["from"] = 100,
["id"] = "100-109",
["note"] = "Craft until skill 109.",
["to"] = 109,
["variants"] = {
{
["count"] = 18,
["materials"] = {
{
10938,
18
}
},
["requiredTools"] = {
{
["itemID"] = 6218,
["quantity"] = 1
}
},
["spellID"] = 7426,
["title"] = "Enchant Chest - Minor Absorption"
}
}
},
{
["from"] = 109,
["id"] = "109-110",
["note"] = "Craft and retain Runed Silver Rod. Buy the unenchanted Silver Rod from a Blacksmith or the Auction House.",
["to"] = 110,
["variants"] = {
{
["count"] = 1,
["materials"] = {
{
1210,
1
},
{
6338,
1
},
{
10938,
4
},
{
10940,
3
}
},
["note"] = "This source recipe is absent from the Ackis recipe catalogue. Check your beta trainer before buying materials.",
["outputCount"] = 1,
["outputItemID"] = 6339,
["requiredTools"] = {
{
["itemID"] = 6218,
["quantity"] = 1
}
},
["spellID"] = 7795,
["title"] = "Runed Silver Rod",
["trainers"] = {
3345,
4616,
3011,
1317,
5157,
4213
}
}
}
},
{
["from"] = 110,
["id"] = "110-130",
["note"] = "Craft until skill 130.",
["to"] = 130,
["variants"] = {
{
["count"] = 20,
["materials"] = {
{
10938,
80
}
},
["note"] = "Learn the vendor formula before starting. Kithas, Nata Dawnstrider and Leo Sarn serve Horde; Tilli Thistlefuzz serves Alliance. The alternate recipe avoids this formula.",
["recipeItemID"] = 6349,
["requiredTools"] = {
{
["itemID"] = 6218,
["quantity"] = 1
}
},
["shoppingRequirements"] = {
{
6349,
1
}
},
["spellID"] = 7793,
["title"] = "Enchant 2H Weapon - Lesser Intellect"
},
{
["count"] = 32,
["materials"] = {
{
10940,
64
}
},
["requiredTools"] = {
{
["itemID"] = 6218,
["quantity"] = 1
}
},
["spellID"] = 7771,
["title"] = "Enchant Cloak - Minor Protection"
}
}
},
{
["from"] = 130,
["id"] = "130-150",
["note"] = "Craft until skill 150.",
["to"] = 150,
["variants"] = {
{
["count"] = 32,
["materials"] = {
{
10938,
128
}
},
["note"] = "Learn the vendor formula before starting. Kithas, Nata Dawnstrider and Leo Sarn serve Horde; Tilli Thistlefuzz serves Alliance. The alternate recipe avoids this formula.",
["recipeItemID"] = 6349,
["requiredTools"] = {
{
["itemID"] = 6218,
["quantity"] = 1
}
},
["shoppingRequirements"] = {
{
6349,
1
}
},
["spellID"] = 7793,
["title"] = "Enchant 2H Weapon - Lesser Intellect"
},
{
["count"] = 20,
["materials"] = {
{
10940,
80
}
},
["requiredTools"] = {
{
["itemID"] = 6218,
["quantity"] = 1
}
},
["spellID"] = 7863,
["title"] = "Enchant Boots - Minor Stamina"
}
}
}
},
["title"] = "Journeyman",
["to"] = 150,
["training"] = {
["level"] = 10,
["rank"] = "Journeyman Enchanting",
["skill"] = 50,
["trainers"] = {
3345,
4616,
3011,
1317,
5157,
4213
}
}
},
{
["from"] = 150,
["id"] = "expert",
["steps"] = {
{
["from"] = 150,
["id"] = "150-151",
["to"] = 151,
["variants"] = {
{
["count"] = 1,
["materials"] = {
{
5500,
1
},
{
11082,
1
},
{
11083,
1
},
{
11128,
1
}
},
["note"] = "This source recipe is absent from the Ackis recipe catalogue. Check your beta trainer before buying materials.",
["outputCount"] = 1,
["outputItemID"] = 11130,
["requiredTools"] = {
{
["itemID"] = 6218,
["quantity"] = 1
}
},
["spellID"] = 13628,
["title"] = "Runed Golden Rod",
["trainers"] = {
11074,
11072
}
}
}
},
{
["from"] = 151,
["id"] = "151-165",
["note"] = "Craft Minor Mana Oil; reserve enough seeds and vials before starting.",
["to"] = 165,
["variants"] = {
{
["count"] = 16,
["materials"] = {
{
3372,
16
},
{
11083,
16
},
{
17034,
32
}
},
["note"] = "Buy and learn the formula from an Enchanting Supplies vendor. Buy Leaded Vials from Alchemy Supplies and seeds from a Reagent vendor, or use the Auction House.",
["recipeItemID"] = 20752,
["requiredTools"] = {
{
["itemID"] = 6218,
["quantity"] = 1
}
},
["shoppingRequirements"] = {
{
20752,
1
}
},
["spellID"] = 25125,
["title"] = "Minor Mana Oil"
}
}
},
{
["from"] = 165,
["id"] = "165-185",
["note"] = "Skill gains become less reliable after 180.",
["to"] = 185,
["variants"] = {
{
["count"] = 22,
["materials"] = {
{
11083,
22
}
},
["requiredTools"] = {
{
["itemID"] = 6218,
["quantity"] = 1
}
},
["spellID"] = 13637,
["title"] = "Enchant Boots - Lesser Agility"
}
}
},
{
["from"] = 185,
["id"] = "185-200",
["note"] = "Optional: continue Lesser Agility to 200 if its reagents are more accessible. Extra crafts for this manual alternative are not included in the shopping list.",
["to"] = 200,
["variants"] = {
{
["count"] = 15,
["materials"] = {
{
11137,
15
}
},
["requiredTools"] = {
{
["itemID"] = 6218,
["quantity"] = 1
}
},
["spellID"] = 13661,
["title"] = "Enchant Bracer - Strength"
}
}
},
{
["from"] = 200,
["id"] = "200-201",
["to"] = 201,
["variants"] = {
{
["count"] = 1,
["materials"] = {
{
7971,
1
},
{
11135,
1
},
{
11137,
1
},
{
11144,
1
}
},
["note"] = "This source recipe is absent from the Ackis recipe catalogue. Check your beta trainer before buying materials.",
["outputCount"] = 1,
["outputItemID"] = 11145,
["requiredTools"] = {
{
["itemID"] = 6218,
["quantity"] = 1
}
},
["spellID"] = 13702,
["title"] = "Runed Truesilver Rod",
["trainers"] = {
11074,
11072
}
}
}
},
{
["from"] = 201,
["id"] = "201-220",
["note"] = "Craft Lesser Wizard Oil; counts are estimates.",
["to"] = 220,
["variants"] = {
{
["count"] = 25,
["materials"] = {
{
3372,
25
},
{
11137,
25
},
{
17035,
50
}
},
["note"] = "Buy and learn the formula from an Enchanting Supplies vendor. Buy Leaded Vials from Alchemy Supplies and seeds from a Reagent vendor, or use the Auction House.",
["recipeItemID"] = 20753,
["requiredTools"] = {
{
["itemID"] = 6218,
["quantity"] = 1
}
},
["shoppingRequirements"] = {
{
20753,
1
}
},
["spellID"] = 25126,
["title"] = "Lesser Wizard Oil"
}
}
},
{
["from"] = 220,
["id"] = "220-225",
["to"] = 225,
["variants"] = {
{
["count"] = 5,
["materials"] = {
{
11137,
5
}
},
["requiredTools"] = {
{
["itemID"] = 6218,
["quantity"] = 1
}
},
["spellID"] = 13746,
["title"] = "Enchant Cloak - Greater Defense"
}
}
}
},
["title"] = "Expert",
["to"] = 225,
["training"] = {
["cost"] = "50s",
["level"] = 20,
["rank"] = "Expert Enchanting",
["skill"] = 125,
["trainers"] = {
11074,
11072
}
}
},
{
["from"] = 225,
["id"] = "artisan",
["steps"] = {
{
["from"] = 225,
["id"] = "225-230",
["note"] = "Learn Artisan Enchanting and the later trainer recipes from Annora before leaving Uldaman. Enchant a suitable pair of gloves until 230.",
["to"] = 230,
["variants"] = {
{
["count"] = 5,
["materials"] = {
{
11137,
5
}
},
["requiredTools"] = {
{
["itemID"] = 11145,
["quantity"] = 1
}
},
["spellID"] = 13815,
["title"] = "Enchant Gloves - Agility"
}
}
},
{
["from"] = 230,
["id"] = "230-235",
["note"] = "Apply Stamina to suitable boots until 235. Re-enchanting the same item is sufficient.",
["to"] = 235,
["variants"] = {
{
["count"] = 5,
["materials"] = {
{
11137,
10
}
},
["requiredTools"] = {
{
["itemID"] = 11145,
["quantity"] = 1
}
},
["spellID"] = 13836,
["title"] = "Enchant Boots - Stamina"
}
}
},
{
["from"] = 235,
["id"] = "235-250",
["note"] = "Apply Superior Stamina to a suitable chest item until 250. Stop at the target; gains may require extra materials.",
["to"] = 250,
["variants"] = {
{
["count"] = 20,
["materials"] = {
{
11137,
60
}
},
["requiredTools"] = {
{
["itemID"] = 11145,
["quantity"] = 1
}
},
["spellID"] = 13858,
["title"] = "Enchant Chest - Superior Stamina"
}
}
},
{
["from"] = 250,
["id"] = "250-265",
["note"] = "Buy and learn Lesser Mana Oil from Kania in the upper floor of the Silithus inn. Buy Crystal Vials from Mishta or an Alchemy Supplies vendor. Manual alternative: Annora teaches Enchant Bracer - Greater Strength; each use takes 1 Dream Dust and 2 Lesser Nether Essence. Its extra crafts and reagents are not included in the shopping list.",
["to"] = 265,
["variants"] = {
{
["count"] = 20,
["materials"] = {
{
8831,
20
},
{
8925,
20
},
{
11176,
20
}
},
["recipeItemID"] = 20754,
["requiredTools"] = {
{
["itemID"] = 11145,
["quantity"] = 1
}
},
["shoppingRequirements"] = {
{
20754,
1
}
},
["spellID"] = 25127,
["title"] = "Lesser Mana Oil"
}
}
},
{
["from"] = 265,
["id"] = "265-294",
["note"] = "Buy the formula from Daniel Bartlett in Undercity (Horde) or Mythrin'dir in Darnassus (Alliance). It binds on pickup: purchase it on this character. Enchant a suitable shield until 294.",
["to"] = 294,
["variants"] = {
{
["count"] = 32,
["materials"] = {
{
11176,
192
}
},
["recipeItemID"] = 16217,
["requiredTools"] = {
{
["itemID"] = 11145,
["quantity"] = 1
}
},
["shoppingRequirements"] = {
{
16217,
1
}
},
["spellID"] = 20017,
["title"] = "Enchant Shield - Greater Stamina"
}
}
},
{
["from"] = 294,
["id"] = "294-295",
["note"] = "Lorelae Wintersong in Nighthaven, Moonglade, sells the Runed Arcanite Rod formula. Buy the Superior Defense formula at the same time. Obtain the unenchanted Arcanite Rod from Blacksmithing or the Auction House.",
["to"] = 295,
["variants"] = {
{
["count"] = 1,
["materials"] = {
{
13926,
1
},
{
14343,
4
},
{
14344,
2
},
{
16203,
4
},
{
16204,
10
},
{
16206,
1
}
},
["note"] = "Craft one rod and keep it. These source reagents do not consume your earlier runed rods.",
["outputCount"] = 1,
["outputItemID"] = 16207,
["recipeItemID"] = 16243,
["requiredTools"] = {

},
["shoppingRequirements"] = {
{
16243,
1
}
},
["spellID"] = 20051,
["title"] = "Runed Arcanite Rod"
}
}
},
{
["from"] = 295,
["id"] = "295-300",
["note"] = "Buy Superior Defense from Lorelae Wintersong and enchant a suitable cloak until 300. Manual alternative: continue Greater Stamina on a shield if Dream Dust is cheaper. Extra crafts for that alternative are not included in shopping.",
["to"] = 300,
["variants"] = {
{
["count"] = 5,
["materials"] = {
{
16204,
40
}
},
["recipeItemID"] = 16224,
["requiredTools"] = {
{
["itemID"] = 11145,
["quantity"] = 1
}
},
["shoppingRequirements"] = {
{
16224,
1
}
},
["spellID"] = 20015,
["title"] = "Enchant Cloak - Superior Defense"
}
}
}
},
["title"] = "Artisan",
["to"] = 300,
["training"] = {
["level"] = 35,
["note"] = "Visit Annora inside Uldaman before passing 225. Bring a party or a higher-level helper, enough gold, and roughly 100 Vision Dust. Clear all enemies in her room to make her appear. Learn the later recipes before leaving; the back entrance in Badlands is the shorter approach.",
["rank"] = "Artisan Enchanting",
["skill"] = 200,
["trainers"] = {
11073
}
}
}
},
["id"] = "forever-enchanting-1-225-essence",
["introduction"] = "Choose a route based on reagent availability and prices. Craft counts are estimates; stop at the target skill and keep your runed rods. Re-enchanting the same suitable item is sufficient.",
["label"] = "Lesser Magic Essence",
["locations"] = {
[11065] = {
["faction"] = "Alliance",
["mapID"] = 1455,
["name"] = "Thonys Pillarstone",
["x"] = 60.4,
["y"] = 44.9,
["zone"] = Z["IRONFORGE"]
},
[11066] = {
["faction"] = "Horde",
["mapID"] = 1454,
["name"] = "Jhag",
["x"] = 53.5,
["y"] = 38.4,
["zone"] = Z["ORGRIMMAR"]
},
[11067] = {
["faction"] = "Horde",
["mapID"] = 1458,
["name"] = "Malcomb Wynn",
["x"] = 62.4,
["y"] = 60.8,
["zone"] = Z["UNDERCITY"]
},
[11068] = {
["faction"] = "Alliance",
["mapID"] = 1453,
["name"] = "Betty Quin",
["x"] = 53.1,
["y"] = 73.8,
["zone"] = Z["STORMWIND_CITY"]
},
[11070] = {
["faction"] = "Alliance",
["mapID"] = 1457,
["name"] = "Lalina Summermoon",
["x"] = 58.9,
["y"] = 12.8,
["zone"] = Z["DARNASSUS"]
},
[11071] = {
["faction"] = "Horde",
["mapID"] = 1456,
["name"] = "Mot Dawnstrider",
["x"] = 44.9,
["y"] = 39.0,
["zone"] = Z["THUNDER_BLUFF"]
},
[11072] = {
["faction"] = "Alliance",
["mapID"] = 1429,
["name"] = "Kitta Firewind",
["x"] = 64.9,
["y"] = 70.6,
["zone"] = Z["ELWYNN_FOREST"]
},
[11074] = {
["faction"] = "Horde",
["mapID"] = 1442,
["name"] = "Hgarth",
["x"] = 49.2,
["y"] = 57.1,
["zone"] = Z["STONETALON_MOUNTAINS"]
},
[1317] = {
["faction"] = "Alliance",
["mapID"] = 1453,
["name"] = "Lucan Cordell",
["x"] = 53.1,
["y"] = 74.3,
["zone"] = Z["STORMWIND_CITY"]
},
[257004] = {
["faction"] = "Neutral",
["mapID"] = 2521,
["name"] = "Eaysaa Brightgust",
["x"] = 59.2,
["y"] = 76.3,
["zone"] = Z["ZEPHRAS_ISLE"]
},
[257020] = {
["faction"] = "Neutral",
["mapID"] = 2521,
["name"] = "Nasalanna Windsinger",
["x"] = 43.2,
["y"] = 43.2,
["zone"] = Z["ZEPHRAS_ISLE"]
},
[266881] = {
["faction"] = "Horde",
["mapID"] = 1411,
["name"] = "Pa'zula",
["x"] = 56.7,
["y"] = 73.7,
["zone"] = Z["DUROTAR"]
},
[3011] = {
["faction"] = "Horde",
["mapID"] = 1456,
["name"] = "Teg Dawnstrider",
["x"] = 44.9,
["y"] = 37.7,
["zone"] = Z["THUNDER_BLUFF"]
},
[3345] = {
["faction"] = "Horde",
["mapID"] = 1454,
["name"] = "Godan",
["x"] = 53.8,
["y"] = 38.5,
["zone"] = Z["ORGRIMMAR"]
},
[3606] = {
["faction"] = "Alliance",
["mapID"] = 1438,
["name"] = "Alanna Raveneye",
["x"] = 36.8,
["y"] = 34.2,
["zone"] = Z["TELDRASSIL"]
},
[4213] = {
["faction"] = "Alliance",
["mapID"] = 1457,
["name"] = "Taladan",
["x"] = 58.6,
["y"] = 13.2,
["zone"] = Z["DARNASSUS"]
},
[4616] = {
["faction"] = "Horde",
["mapID"] = 1458,
["name"] = "Lavinia Crowe",
["x"] = 62.4,
["y"] = 61.6,
["zone"] = Z["UNDERCITY"]
},
[5157] = {
["faction"] = "Alliance",
["mapID"] = 1455,
["name"] = "Gimble Thistlefuzz",
["x"] = 59.8,
["y"] = 45.5,
["zone"] = Z["IRONFORGE"]
},
[5695] = {
["faction"] = "Horde",
["mapID"] = 1420,
["name"] = "Vance Undergloom",
["x"] = 61.8,
["y"] = 51.6,
["zone"] = Z["TIRISFAL_GLADES"]
}
},
["materialNames"] = {
[10938] = "Lesser Magic Essence",
[10940] = "Strange Dust",
[11082] = "Greater Astral Essence",
[11083] = "Soul Dust",
[11128] = "Golden Rod",
[11130] = "Runed Golden Rod",
[11135] = "Greater Mystic Essence",
[11137] = "Vision Dust",
[11144] = "Truesilver Rod",
[11145] = "Runed Truesilver Rod",
[11176] = "Dream Dust",
[1210] = "Shadowgem",
[13926] = "Golden Pearl",
[14343] = "Small Brilliant Shard",
[14344] = "Large Brilliant Shard",
[16203] = "Greater Eternal Essence",
[16204] = "Illusion Dust",
[16206] = "Arcanite Rod",
[16207] = "Runed Arcanite Rod",
[16217] = "Formula: Enchant Shield - Greater Stamina",
[16224] = "Formula: Enchant Cloak - Superior Defense",
[16243] = "Formula: Runed Arcanite Rod",
[17034] = "Maple Seed",
[17035] = "Stranglethorn Seed",
[20752] = "Formula: Minor Mana Oil",
[20753] = "Formula: Lesser Wizard Oil",
[20754] = "Formula: Lesser Mana Oil",
[247786] = "Mote of Magic",
[3372] = "Leaded Vial",
[5500] = "Iridescent Pearl",
[6217] = "Copper Rod",
[6218] = "Runed Copper Rod",
[6338] = "Silver Rod",
[6339] = "Runed Silver Rod",
[6349] = "Formula: Enchant 2H Weapon - Lesser Intellect",
[7971] = "Black Pearl",
[8831] = "Purple Lotus",
[8925] = "Crystal Vial"
},
["materialSources"] = {
[10938] = {
["kind"] = "disenchant",
["note"] = "Disenchant eligible equipment or buy this reagent at the Auction House. Outcomes depend on item level and quality; no single zone guarantees this material."
},
[10940] = {
["kind"] = "disenchant",
["note"] = "Disenchant eligible equipment or buy this reagent at the Auction House. Outcomes depend on item level and quality; no single zone guarantees this material."
},
[11082] = {
["kind"] = "disenchant",
["note"] = "Disenchant eligible equipment or buy this reagent at the Auction House. Outcomes depend on item level and quality; no single zone guarantees this material."
},
[11083] = {
["kind"] = "disenchant",
["note"] = "Disenchant eligible equipment or buy this reagent at the Auction House. Outcomes depend on item level and quality; no single zone guarantees this material."
},
[11128] = {
["kind"] = "auction",
["note"] = "Buy this unenchanted rod from a Blacksmith or the Auction House. Enchanting supplies vendors do not sell it."
},
[11130] = {
["kind"] = "craft",
["note"] = "Keep this reusable rod in your bags; confirm tool requirements in your profession window.",
["spellID"] = 13628,
["stepID"] = "150-151"
},
[11135] = {
["kind"] = "disenchant",
["note"] = "Disenchant eligible equipment or buy this reagent at the Auction House. Outcomes depend on item level and quality; no single zone guarantees this material."
},
[11137] = {
["kind"] = "disenchant",
["note"] = "Disenchant eligible equipment or buy this reagent at the Auction House. Outcomes depend on item level and quality; no single zone guarantees this material."
},
[11144] = {
["kind"] = "auction",
["note"] = "Buy this unenchanted rod from a Blacksmith or the Auction House. Enchanting supplies vendors do not sell it."
},
[11145] = {
["kind"] = "craft",
["note"] = "Keep this reusable rod in your bags; confirm tool requirements in your profession window.",
["spellID"] = 13702,
["stepID"] = "200-201"
},
[11176] = {
["kind"] = "disenchant",
["note"] = "Disenchant eligible equipment or buy this reagent at the Auction House. Outcomes depend on item level and quality; no single zone guarantees this material."
},
[1210] = {
["kind"] = "mining",
["note"] = "Shadowgem can be found while mining. The Auction House is an alternative.",
["zones"] = {
Z["THE_BARRENS"],
Z["ASHENVALE"],
Z["HILLSBRAD_FOOTHILLS"]
}
},
[13926] = {
["kind"] = "auction",
["note"] = "Obtain Golden Pearls from eligible clams or buy one at the Auction House."
},
[14343] = {
["kind"] = "disenchant",
["note"] = "Disenchant eligible equipment or buy this reagent at the Auction House. Outcomes depend on item level and quality; no single zone guarantees this material."
},
[14344] = {
["kind"] = "disenchant",
["note"] = "Disenchant eligible equipment or buy this reagent at the Auction House. Outcomes depend on item level and quality; no single zone guarantees this material."
},
[16203] = {
["kind"] = "disenchant",
["note"] = "Disenchant eligible equipment or buy this reagent at the Auction House. Outcomes depend on item level and quality; no single zone guarantees this material."
},
[16204] = {
["kind"] = "disenchant",
["note"] = "Disenchant eligible equipment or buy this reagent at the Auction House. Outcomes depend on item level and quality; no single zone guarantees this material."
},
[16206] = {
["kind"] = "auction",
["note"] = "Ask a Blacksmith to make an Arcanite Rod or buy one at the Auction House."
},
[16207] = {
["kind"] = "craft",
["note"] = "Craft and retain Runed Arcanite Rod. Keep the earlier rods too; the listed enchants still require Runed Truesilver Rod.",
["spellID"] = 20051,
["stepID"] = "294-295"
},
[16217] = {
["kind"] = "supply"
},
[16224] = {
["kind"] = "supply"
},
[16243] = {
["kind"] = "supply"
},
[17034] = {
["kind"] = "auction",
["note"] = "Buy Maple Seed from Reagent vendors or the Auction House."
},
[17035] = {
["kind"] = "auction",
["note"] = "Buy Stranglethorn Seed from Reagent vendors or the Auction House."
},
[20752] = {
["kind"] = "supply"
},
[20753] = {
["kind"] = "supply"
},
[20754] = {
["kind"] = "supply"
},
[247786] = {
["kind"] = "supply"
},
[3372] = {
["kind"] = "auction",
["note"] = "Buy Leaded Vials from Alchemy Supplies vendors or the Auction House."
},
[5500] = {
["kind"] = "auction",
["note"] = "Obtain pearls from looted clams or buy the pearl at the Auction House."
},
[6217] = {
["kind"] = "supply"
},
[6218] = {
["kind"] = "craft",
["note"] = "Keep this reusable rod in your bags; confirm tool requirements in your profession window.",
["spellID"] = 7421,
["stepID"] = "1-2"
},
[6338] = {
["kind"] = "auction",
["note"] = "Buy this unenchanted rod from a Blacksmith or the Auction House. Enchanting supplies vendors do not sell it."
},
[6339] = {
["kind"] = "craft",
["note"] = "Keep this reusable rod in your bags; confirm tool requirements in your profession window.",
["spellID"] = 7795,
["stepID"] = "109-110"
},
[6349] = {
["kind"] = "supply"
},
[7971] = {
["kind"] = "auction",
["note"] = "Obtain pearls from looted clams or buy the pearl at the Auction House."
},
[8831] = {
["kind"] = "herb",
["note"] = "Gather Purple Lotus near ruins with Herbalism 210, or buy it at the Auction House.",
["skill"] = 210,
["zones"] = {
Z["THE_HINTERLANDS"],
Z["TANARIS"],
Z["STRANGLETHORN_VALE"]
}
},
[8925] = {
["kind"] = "supply"
}
},
["maxSkill"] = 300,
["menuTitle"] = "Lesser Magic Essence",
["minSkill"] = 1,
["setupItems"] = {

},
["shoppingRequirements"] = {

},
["source"] = "https://www.wow-professions.com/forever/enchanting-leveling-guide",
["sourceDate"] = "2026-10-25",
["sourceHash"] = "c237b8b3182875e3f238d298ac0061dfd11de3a6fb146beed23d2cc044430af6",
["supplies"] = {
{
["faction"] = "Horde",
["id"] = "daniel-bartlett",
["items"] = {
[16217] = true,
[3372] = true,
[6217] = true
},
["mapID"] = 1458,
["name"] = "Daniel Bartlett",
["x"] = 64.2,
["y"] = 37.6,
["zone"] = Z["UNDERCITY"]
},
{
["faction"] = "Neutral",
["id"] = "eaysaa-brightgust",
["items"] = {
[10938] = true,
[10940] = true,
[247786] = true,
[6217] = true
},
["mapID"] = 2521,
["name"] = "Eaysaa Brightgust",
["x"] = 59.2,
["y"] = 76.3,
["zone"] = Z["ZEPHRAS_ISLE"]
},
{
["faction"] = "Alliance",
["id"] = "jessara-cordell",
["items"] = {
[20752] = true,
[20753] = true,
[247786] = true,
[6217] = true
},
["mapID"] = 1453,
["name"] = "Jessara Cordell",
["x"] = 53.0,
["y"] = 74.1,
["zone"] = Z["STORMWIND_CITY"]
},
{
["faction"] = "Neutral",
["id"] = "kania",
["items"] = {
[10938] = true,
[10940] = true,
[20752] = true,
[20753] = true,
[20754] = true,
[247786] = true,
[6217] = true
},
["mapID"] = 1451,
["name"] = "Kania",
["x"] = 52.0,
["y"] = 39.6,
["zone"] = Z["SILITHUS"]
},
{
["faction"] = "Horde",
["id"] = "kithas",
["items"] = {
[10938] = true,
[10940] = true,
[20752] = true,
[20753] = true,
[247786] = true,
[6217] = true,
[6349] = true
},
["mapID"] = 1454,
["name"] = "Kithas",
["x"] = 53.7,
["y"] = 38.1,
["zone"] = Z["ORGRIMMAR"]
},
{
["faction"] = "Neutral",
["id"] = "lorelae-wintersong",
["items"] = {
[16224] = true,
[16243] = true,
[3372] = true,
[6217] = true
},
["mapID"] = 1450,
["name"] = "Lorelae Wintersong",
["x"] = 48.3,
["y"] = 40.1,
["zone"] = Z["MOONGLADE"]
},
{
["faction"] = "Neutral",
["id"] = "mishta",
["items"] = {
[3372] = true,
[6217] = true,
[8925] = true
},
["mapID"] = 1451,
["name"] = "Mishta",
["x"] = 49.9,
["y"] = 36.5,
["zone"] = Z["SILITHUS"]
},
{
["faction"] = "Alliance",
["id"] = "mythrindir",
["items"] = {
[16217] = true,
[3372] = true,
[6217] = true
},
["mapID"] = 1457,
["name"] = "Mythrin'dir",
["x"] = 61.0,
["y"] = 18.2,
["zone"] = Z["DARNASSUS"]
},
{
["faction"] = "Neutral",
["id"] = "nasalanna-windsinger",
["items"] = {
[10938] = true,
[10940] = true,
[20752] = true,
[20753] = true,
[247786] = true,
[6217] = true
},
["mapID"] = 2521,
["name"] = "Nasalanna Windsinger",
["x"] = 43.2,
["y"] = 43.2,
["zone"] = Z["ZEPHRAS_ISLE"]
},
{
["faction"] = "Horde",
["id"] = "nata-dawnstrider",
["items"] = {
[10938] = true,
[10940] = true,
[20752] = true,
[20753] = true,
[247786] = true,
[6217] = true,
[6349] = true
},
["mapID"] = 1456,
["name"] = "Nata Dawnstrider",
["x"] = 44.5,
["y"] = 39.0,
["zone"] = Z["THUNDER_BLUFF"]
},
{
["faction"] = "Horde",
["id"] = "thaddeus-webb",
["items"] = {
[10940] = true,
[20752] = true,
[20753] = true,
[247786] = true,
[6217] = true
},
["mapID"] = 1458,
["name"] = "Thaddeus Webb",
["x"] = 62.0,
["y"] = 60.9,
["zone"] = Z["UNDERCITY"]
},
{
["faction"] = "Alliance",
["id"] = "tilli-thistlefuzz",
["items"] = {
[10940] = true,
[20752] = true,
[20753] = true,
[247786] = true,
[6217] = true,
[6349] = true
},
["mapID"] = 1455,
["name"] = "Tilli Thistlefuzz",
["x"] = 60.8,
["y"] = 44.1,
["zone"] = Z["IRONFORGE"]
},
{
["faction"] = "Alliance",
["id"] = "vaean",
["items"] = {
[10938] = true,
[10940] = true,
[20752] = true,
[20753] = true,
[247786] = true,
[6217] = true
},
["mapID"] = 1457,
["name"] = "Vaean",
["x"] = 58.5,
["y"] = 14.2,
["zone"] = Z["DARNASSUS"]
},
{
["faction"] = "Horde",
["id"] = "leo-sarn",
["items"] = {
[10938] = true,
[10940] = true,
[20752] = true,
[20753] = true,
[247786] = true,
[6217] = true,
[6349] = true
},
["mapID"] = 1421,
["name"] = "Leo Sarn",
["x"] = 54.0,
["y"] = 82.1,
["zone"] = Z["SILVERPINE_FOREST"]
}
},
["title"] = "Lesser Magic Essence",
["tools"] = {

}
}
}
module.GuideOrder = {
"dust",
"essence"
}
module.Guide = module.Guides[module.GuideOrder[1]]
