-- Generated candidate; review before replacing the installed module guide.
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
["id"] = "70-85",
["variants"] = {
{
["requiredTools"] = {
{
["itemID"] = 6218,
["quantity"] = 1
}
},
["count"] = 21,
["title"] = "Enchant Chest - Inferior Stamina",
["materials"] = {
{
10940,
21
}
},
["spellID"] = 7420
}
},
["to"] = 85,
["from"] = 70
},
{
["from"] = 85,
["id"] = "85-100",
["to"] = 100,
["variants"] = {
{
["count"] = 15,
["materials"] = {
{
10940,
30
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
["outputCount"] = 1,
["outputItemID"] = 6339,
["requiredTools"] = {

},
["spellID"] = 7795,
["title"] = "Runed Silver Rod"
}
}
},
{
["note"] = "Craft until skill 130.",
["to"] = 130,
["from"] = 110,
["id"] = "110-130",
["variants"] = {
{
["requiredTools"] = {
{
["itemID"] = 6218,
["quantity"] = 1
}
},
["count"] = 29,
["title"] = "Enchant Cloak - Minor Protection",
["materials"] = {
{
10940,
58
}
},
["spellID"] = 7771
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
["itemID"] = 6339,
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
["itemID"] = 6339,
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
["outputCount"] = 1,
["outputItemID"] = 11130,
["requiredTools"] = {

},
["spellID"] = 13628,
["title"] = "Runed Golden Rod"
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
["itemID"] = 6339,
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
["itemID"] = 11130,
["quantity"] = 1
}
},
["spellID"] = 13637,
["title"] = "Enchant Boots - Lesser Agility"
}
}
},
{
["note"] = "Continue with Lesser Agility or switch to Bracer - Strength. Compare the cost of about 22 Soul Dust and 15 Vision Dust.",
["to"] = 200,
["from"] = 185,
["id"] = "185-200",
["variants"] = {
{
["requiredTools"] = {
{
["itemID"] = 11130,
["quantity"] = 1
}
},
["count"] = 22,
["title"] = "Enchant Boots - Lesser Agility",
["materials"] = {
{
11083,
22
}
},
["spellID"] = 13637
},
{
["requiredTools"] = {
{
["itemID"] = 11130,
["quantity"] = 1
}
},
["count"] = 15,
["title"] = "Enchant Bracer - Strength",
["materials"] = {
{
11137,
15
}
},
["spellID"] = 13661
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
["outputCount"] = 1,
["outputItemID"] = 11145,
["requiredTools"] = {

},
["spellID"] = 13702,
["title"] = "Runed Truesilver Rod"
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
["itemID"] = 11130,
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
["itemID"] = 11145,
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
["note"] = "Learn Artisan Enchanting and the later trainer recipes from Annora before leaving Uldaman. Re-enchant a suitable pair of gloves until 250.",
["to"] = 250,
["from"] = 225,
["id"] = "225-250",
["variants"] = {
{
["requiredTools"] = {
{
["itemID"] = 11145,
["quantity"] = 1
}
},
["count"] = 34,
["title"] = "Enchant Gloves - Agility",
["materials"] = {
{
11137,
34
}
},
["spellID"] = 13815
}
}
},
{
["note"] = "Buy the Lesser Mana Oil and Wizard Oil formulas from Kania in Silithus. Buy Crystal Vials from Mishta or an Alchemy Supplies vendor. If Purple Lotus is scarce, Annora teaches Greater Strength on bracers. Each enchant uses 1 Dream Dust and 2 Lesser Nether Essence, so budget its materials separately.",
["to"] = 270,
["from"] = 250,
["id"] = "250-270",
["variants"] = {
{
["recipeItemID"] = 20754,
["requiredTools"] = {
{
["itemID"] = 11145,
["quantity"] = 1
}
},
["count"] = 26,
["title"] = "Lesser Mana Oil",
["materials"] = {
{
8831,
26
},
{
8925,
26
},
{
11176,
26
}
},
["shoppingRequirements"] = {
{
20754,
1
}
},
["spellID"] = 25127
}
}
},
{
["note"] = "Buy the shield formula on the enchanter who will learn it. It binds on pickup. Daniel Bartlett in Undercity and Mythrin'dir in Darnassus sell it.",
["to"] = 275,
["from"] = 270,
["id"] = "270-275",
["variants"] = {
{
["recipeItemID"] = 16217,
["requiredTools"] = {
{
["itemID"] = 11145,
["quantity"] = 1
}
},
["count"] = 5,
["title"] = "Enchant Shield - Greater Stamina",
["materials"] = {
{
11176,
30
}
},
["shoppingRequirements"] = {
{
16217,
1
}
},
["spellID"] = 20017
}
}
},
{
["id"] = "275-295",
["from"] = 275,
["to"] = 295,
["note"] = "Make Wizard Oil with the formula from Kania, or use the shield enchant if Dream Dust is cheaper. Craft counts are estimates.",
["variants"] = {
{
["spellID"] = 25128,
["title"] = "Wizard Oil",
["recipeItemID"] = 20755,
["requiredTools"] = {
{
["itemID"] = 11145,
["quantity"] = 1
}
},
["shoppingRequirements"] = {
{
20755,
1
}
},
["count"] = 26,
["materials"] = {
{
4625,
52
},
{
8925,
26
},
{
16204,
78
}
}
},
{
["recipeItemID"] = 16217,
["requiredTools"] = {
{
["itemID"] = 11145,
["quantity"] = 1
}
},
["count"] = 23,
["title"] = "Enchant Shield - Greater Stamina",
["materials"] = {
{
11176,
138
}
},
["shoppingRequirements"] = {
{
16217,
1
}
},
["spellID"] = 20017
}
}
},
{
["id"] = "295-299",
["from"] = 295,
["to"] = 299,
["note"] = "Use the shield formula learned earlier. Allow extra dust if skill gains slow down.",
["variants"] = {
{
["recipeItemID"] = 16217,
["requiredTools"] = {
{
["itemID"] = 11145,
["quantity"] = 1
}
},
["count"] = 8,
["title"] = "Enchant Shield - Greater Stamina",
["materials"] = {
{
11176,
48
}
},
["shoppingRequirements"] = {
{
16217,
1
}
},
["spellID"] = 20017
}
}
},
{
["from"] = 299,
["id"] = "299-300",
["note"] = "Buy the Runed Arcanite Rod formula from Lorelae Wintersong in Nighthaven, Moonglade. Obtain the Arcanite Rod from a Blacksmith or the Auction House. You can learn the recipe at 290; save this craft for the final skill point if following this route.",
["to"] = 300,
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
}
},
["title"] = "Artisan",
["to"] = 300,
["training"] = {
["level"] = 35,
["note"] = "Visit Annora inside Uldaman before passing 225. Use the back entrance in Badlands and clear the scorpids in her room so she appears. Bring gold for training and around 50 Vision Dust, including spare dust for skill gains if you plan to level in the dungeon. Learn the later trainer recipes before leaving.",
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
["y"] = 38.5,
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
[4625] = "Firebloom",
[20755] = "Formula: Wizard Oil",
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
[4625] = {
["kind"] = "auction",
["note"] = "Gather Firebloom with Herbalism or buy it from another player."
},
[20755] = {
["kind"] = "supply",
["note"] = "Buy the formula from Kania in Silithus."
},
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
["sourceDate"] = "2026-11-20",
["sourceHash"] = "0d69a5b1a6f25364ffaf2bbca1a28d5e39816379ea353eee31b55cc1f3c4f5e3",
["stepProgressMigrations"] = {
["265-299"] = {
"270-275",
"275-295",
"295-299"
},
["70-100"] = {
"70-85",
"85-100"
}
},
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
["y"] = 37.7,
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
["x"] = 52.9,
["y"] = 74.1,
["zone"] = Z["STORMWIND_CITY"]
},
{
["faction"] = "Neutral",
["id"] = "kania",
["items"] = {
[20755] = true,
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
["y"] = 38.0,
["zone"] = Z["ORGRIMMAR"]
},
{
["faction"] = "Neutral",
["id"] = "lorelae-wintersong",
["items"] = {
[16243] = true,
[3372] = true,
[6217] = true
},
["mapID"] = 1450,
["name"] = "Lorelae Wintersong",
["x"] = 48.3,
["y"] = 40.2,
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
["x"] = 44.9,
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
["id"] = "70-109",
["to"] = 109,
["variants"] = {
{
["count"] = 49,
["materials"] = {
{
10938,
49
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
["outputCount"] = 1,
["outputItemID"] = 6339,
["requiredTools"] = {

},
["spellID"] = 7795,
["title"] = "Runed Silver Rod"
}
}
},
{
["from"] = 110,
["id"] = "110-125",
["note"] = "Use Simple Wood from an Enchanting Supplies vendor. Make wands until skill 125.",
["to"] = 125,
["variants"] = {
{
["count"] = 23,
["materials"] = {
{
4470,
23
},
{
10938,
46
}
},
["requiredTools"] = {
{
["itemID"] = 6218,
["quantity"] = 1
}
},
["spellID"] = 14807,
["title"] = "Greater Magic Wand"
}
}
},
{
["from"] = 125,
["id"] = "125-150",
["note"] = "If you prefer to skip the Lesser Intellect formula, use Enchant Boots - Minor Stamina and budget Strange Dust instead.",
["to"] = 150,
["variants"] = {
{
["count"] = 37,
["materials"] = {
{
10938,
148
}
},
["note"] = "Learn the vendor formula before crafting. Kithas, Nata Dawnstrider and Leo Sarn serve Horde. Tilli Thistlefuzz serves Alliance.",
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
["count"] = 25,
["materials"] = {
{
10940,
100
}
},
["requiredTools"] = {
{
["itemID"] = 6339,
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
["outputCount"] = 1,
["outputItemID"] = 11130,
["requiredTools"] = {

},
["spellID"] = 13628,
["title"] = "Runed Golden Rod"
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
["itemID"] = 6339,
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
["itemID"] = 11130,
["quantity"] = 1
}
},
["spellID"] = 13637,
["title"] = "Enchant Boots - Lesser Agility"
}
}
},
{
["note"] = "Continue with Lesser Agility or switch to Bracer - Strength. Compare the cost of about 22 Soul Dust and 15 Vision Dust.",
["to"] = 200,
["from"] = 185,
["id"] = "185-200",
["variants"] = {
{
["requiredTools"] = {
{
["itemID"] = 11130,
["quantity"] = 1
}
},
["count"] = 22,
["title"] = "Enchant Boots - Lesser Agility",
["materials"] = {
{
11083,
22
}
},
["spellID"] = 13637
},
{
["requiredTools"] = {
{
["itemID"] = 11130,
["quantity"] = 1
}
},
["count"] = 15,
["title"] = "Enchant Bracer - Strength",
["materials"] = {
{
11137,
15
}
},
["spellID"] = 13661
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
["outputCount"] = 1,
["outputItemID"] = 11145,
["requiredTools"] = {

},
["spellID"] = 13702,
["title"] = "Runed Truesilver Rod"
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
["itemID"] = 11130,
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
["itemID"] = 11145,
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
["note"] = "Learn Artisan Enchanting and the later trainer recipes from Annora before leaving Uldaman. Re-enchant a suitable pair of gloves until 250.",
["to"] = 250,
["from"] = 225,
["id"] = "225-250",
["variants"] = {
{
["requiredTools"] = {
{
["itemID"] = 11145,
["quantity"] = 1
}
},
["count"] = 34,
["title"] = "Enchant Gloves - Agility",
["materials"] = {
{
11137,
34
}
},
["spellID"] = 13815
}
}
},
{
["note"] = "Buy the Lesser Mana Oil and Wizard Oil formulas from Kania in Silithus. Buy Crystal Vials from Mishta or an Alchemy Supplies vendor. If Purple Lotus is scarce, Annora teaches Greater Strength on bracers. Each enchant uses 1 Dream Dust and 2 Lesser Nether Essence, so budget its materials separately.",
["to"] = 270,
["from"] = 250,
["id"] = "250-270",
["variants"] = {
{
["recipeItemID"] = 20754,
["requiredTools"] = {
{
["itemID"] = 11145,
["quantity"] = 1
}
},
["count"] = 26,
["title"] = "Lesser Mana Oil",
["materials"] = {
{
8831,
26
},
{
8925,
26
},
{
11176,
26
}
},
["shoppingRequirements"] = {
{
20754,
1
}
},
["spellID"] = 25127
}
}
},
{
["note"] = "Buy the shield formula on the enchanter who will learn it. It binds on pickup. Daniel Bartlett in Undercity and Mythrin'dir in Darnassus sell it.",
["to"] = 275,
["from"] = 270,
["id"] = "270-275",
["variants"] = {
{
["recipeItemID"] = 16217,
["requiredTools"] = {
{
["itemID"] = 11145,
["quantity"] = 1
}
},
["count"] = 5,
["title"] = "Enchant Shield - Greater Stamina",
["materials"] = {
{
11176,
30
}
},
["shoppingRequirements"] = {
{
16217,
1
}
},
["spellID"] = 20017
}
}
},
{
["id"] = "275-295",
["from"] = 275,
["to"] = 295,
["note"] = "Make Wizard Oil with the formula from Kania, or use the shield enchant if Dream Dust is cheaper. Craft counts are estimates.",
["variants"] = {
{
["spellID"] = 25128,
["title"] = "Wizard Oil",
["recipeItemID"] = 20755,
["requiredTools"] = {
{
["itemID"] = 11145,
["quantity"] = 1
}
},
["shoppingRequirements"] = {
{
20755,
1
}
},
["count"] = 26,
["materials"] = {
{
4625,
52
},
{
8925,
26
},
{
16204,
78
}
}
},
{
["recipeItemID"] = 16217,
["requiredTools"] = {
{
["itemID"] = 11145,
["quantity"] = 1
}
},
["count"] = 23,
["title"] = "Enchant Shield - Greater Stamina",
["materials"] = {
{
11176,
138
}
},
["shoppingRequirements"] = {
{
16217,
1
}
},
["spellID"] = 20017
}
}
},
{
["id"] = "295-299",
["from"] = 295,
["to"] = 299,
["note"] = "Use the shield formula learned earlier. Allow extra dust if skill gains slow down.",
["variants"] = {
{
["recipeItemID"] = 16217,
["requiredTools"] = {
{
["itemID"] = 11145,
["quantity"] = 1
}
},
["count"] = 8,
["title"] = "Enchant Shield - Greater Stamina",
["materials"] = {
{
11176,
48
}
},
["shoppingRequirements"] = {
{
16217,
1
}
},
["spellID"] = 20017
}
}
},
{
["from"] = 299,
["id"] = "299-300",
["note"] = "Buy the Runed Arcanite Rod formula from Lorelae Wintersong in Nighthaven, Moonglade. Obtain the Arcanite Rod from a Blacksmith or the Auction House. You can learn the recipe at 290; save this craft for the final skill point if following this route.",
["to"] = 300,
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
}
},
["title"] = "Artisan",
["to"] = 300,
["training"] = {
["level"] = 35,
["note"] = "Visit Annora inside Uldaman before passing 225. Use the back entrance in Badlands and clear the scorpids in her room so she appears. Bring gold for training and around 50 Vision Dust, including spare dust for skill gains if you plan to level in the dungeon. Learn the later trainer recipes before leaving.",
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
["y"] = 38.5,
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
[4625] = "Firebloom",
[20755] = "Formula: Wizard Oil",
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
[16243] = "Formula: Runed Arcanite Rod",
[17034] = "Maple Seed",
[17035] = "Stranglethorn Seed",
[20752] = "Formula: Minor Mana Oil",
[20753] = "Formula: Lesser Wizard Oil",
[20754] = "Formula: Lesser Mana Oil",
[247786] = "Mote of Magic",
[3372] = "Leaded Vial",
[4470] = "Simple Wood",
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
[4625] = {
["kind"] = "auction",
["note"] = "Gather Firebloom with Herbalism or buy it from another player."
},
[20755] = {
["kind"] = "supply",
["note"] = "Buy the formula from Kania in Silithus."
},
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
[4470] = {
["kind"] = "supply"
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
["sourceDate"] = "2026-11-20",
["sourceHash"] = "0d69a5b1a6f25364ffaf2bbca1a28d5e39816379ea353eee31b55cc1f3c4f5e3",
["stepProgressMigrations"] = {
["265-299"] = {
"270-275",
"275-295",
"295-299"
},
["110-150"] = {
"110-125",
"125-150"
}
},
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
["y"] = 37.7,
["zone"] = Z["UNDERCITY"]
},
{
["faction"] = "Neutral",
["id"] = "eaysaa-brightgust",
["items"] = {
[10938] = true,
[10940] = true,
[247786] = true,
[4470] = true,
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
[4470] = true,
[6217] = true
},
["mapID"] = 1453,
["name"] = "Jessara Cordell",
["x"] = 52.9,
["y"] = 74.1,
["zone"] = Z["STORMWIND_CITY"]
},
{
["faction"] = "Neutral",
["id"] = "kania",
["items"] = {
[20755] = true,
[10938] = true,
[10940] = true,
[20752] = true,
[20753] = true,
[20754] = true,
[247786] = true,
[4470] = true,
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
[4470] = true,
[6217] = true,
[6349] = true
},
["mapID"] = 1454,
["name"] = "Kithas",
["x"] = 53.7,
["y"] = 38.0,
["zone"] = Z["ORGRIMMAR"]
},
{
["faction"] = "Neutral",
["id"] = "lorelae-wintersong",
["items"] = {
[16243] = true,
[3372] = true,
[6217] = true
},
["mapID"] = 1450,
["name"] = "Lorelae Wintersong",
["x"] = 48.3,
["y"] = 40.2,
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
[4470] = true,
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
[4470] = true,
[6217] = true,
[6349] = true
},
["mapID"] = 1456,
["name"] = "Nata Dawnstrider",
["x"] = 44.9,
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
[4470] = true,
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
[4470] = true,
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
[4470] = true,
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
[4470] = true,
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
