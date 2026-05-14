-- ModernMapMarkers - MarkerData.lua
-- Marker data organized by continent ID.
-- Entry format: { zoneID, x, y, name, type, info, atlasID, dest }
--
-- Continent IDs:  1 = Kalimdor  |  2 = Eastern Kingdoms
-- Types: "dungeon", "raid", "worldboss", "zepp", "boat", "tram", "portal"
-- info: level range (e.g. "24-32"), "60", faction ("Alliance"/"Horde"), or nil
-- atlasID: Atlas zone string key (e.g. "BlackrockDepths"), or nil if not applicable
-- dest: destination for transport markers. One of:
--   { continent, zone }                    -- single destination (left-click navigates there)
--   { {continent, zone}, {continent, zone} } -- two destinations (left/right-click)
--   nil                                    -- non-transport markers

MMM_MarkerData = {

    -- -------------------------------------------------------------------------
    [1] = { -- Kalimdor
    -- -------------------------------------------------------------------------

        -- Kalimdor Dungeons
        {1, 0.123, 0.128, "Blackfathom Deeps", "dungeon", "24-32", "BlackfathomDeeps"},
        {9, 0.648, 0.303, "Dire Maul - East", "dungeon", "55-58", "DireMaulEast"},
        {9, 0.771, 0.369, "Dire Maul - East\n|cFF808080(The Hidden Reach)|r", "dungeon", "55-58", "DireMaulEast"},
        {9, 0.671, 0.34, "Dire Maul - East\n|cFF808080(Side Entrance)|r", "dungeon", "55-58", "DireMaulEast"},
        {9, 0.624, 0.249, "Dire Maul - North", "dungeon", "57-60", "DireMaulNorth"},
        {9, 0.604, 0.311, "Dire Maul - West", "dungeon", "57-60", "DireMaulWest"},
        {5, 0.29, 0.629, "Maraudon", "dungeon", "46-55", "Maraudon"},
        {12, 0.53, 0.486, "Ragefire Chasm", "dungeon", "13-18", "RagefireChasm"},
        {17, 0.508, 0.94, "Razorfen Downs", "dungeon", "37-46", "RazorfenDowns"},
        {17, 0.423, 0.9, "Razorfen Kraul", "dungeon", "29-38", "RazorfenKraul"},
        {17, 0.462, 0.357, "Wailing Caverns", "dungeon", "17-24", "WailingCaverns"},
        {15, 0.387, 0.2, "Zul'Farrak", "dungeon", "44-54", "ZulFarrak"},
        -- Kalimdor Raids
        {7, 0.529, 0.777, "Onyxia's Lair", "raid", "60", "OnyxiasLair"},
        {13, 0.305, 0.987, "Ruins of Ahn'Qiraj", "raid", "60", "TheRuinsofAhnQiraj"},
        {13, 0.269, 0.987, "Temple of Ahn'Qiraj", "raid", "60", "TheTempleofAhnQiraj"},
        -- Kalimdor World Bosses
        {2, 0.535, 0.816, "Azuregos", "worldboss", "60", nil},
        {1, 0.937, 0.355, "Emerald Dragon\n|cFF808080(Bough Shadow)|r", "worldboss", "60", nil},
        {9, 0.512, 0.108, "Emerald Dragon\n|cFF808080(Dream Bough)|r", "worldboss", "60", nil},
        {21, 0.65, 0.80, "Lady Hederine", "worldboss", "60", nil},
        -- Kalimdor Transport
        -- Orgrimmar zeppelin tower: Left = Tirisfal Glades, Right = Kargath
        {6, 0.512, 0.135, "Zeppelins to Tirisfal Glades & Kargath", "zepp", "Horde", nil, {{2, 21}, {2, 3}}},
        -- Ratchet boats: Booty Bay & Steamwheedle Port (Tanaris)
        {17, 0.636, 0.389, "Boats to Booty Bay & Steamwheedle Port", "boat", "Neutral", nil, {{2, 18}, {1, 15}}},
        -- Auberdine boats
        {3, 0.333, 0.399, "Boat to Rut'Theran Village", "boat", "Alliance", nil, {1, 16}},
        {3, 0.325, 0.436, "Boat to Menethil Harbor", "boat", "Alliance", nil, {2, 25}},
        {3, 0.31, 0.41, "Boat to Feralas", "boat", "Alliance", nil, {1, 9}},
        -- Theramore boats
        {7, 0.718, 0.566, "Boat to Menethil Harbor", "boat", "Alliance", nil, {2, 25}},
        -- Feathermoon Stronghold boats (Feralas)
        {9, 0.311, 0.395, "Boat to Forgotten Coast", "boat", "Alliance", nil, {1, 9}},
        {9, 0.431, 0.428, "Boat to Sardor Isle", "boat", "Alliance", nil, {1, 9}},
        {9, 0.31, 0.40, "Boat to Auberdine", "boat", "Alliance", nil, {1, 3}},
        -- Steamwheedle Port boats (Tanaris)
        {15, 0.68, 0.23, "Boats to Ratchet & Booty Bay", "boat", "Neutral", nil, {{1, 17}, {2, 18}}},
        -- Thousand Needles zeppelin to Grom'Gol
        {18, 0.435, 0.409, "Zeppelin to Grom'Gol", "zepp", "Horde", nil, {2, 18}},
        -- Rut'Theran Village boat to Auberdine
        {16, 0.552, 0.949, "Boat to Auberdine", "boat", "Alliance", nil, {1, 3}},
    },

    -- -------------------------------------------------------------------------
    [2] = { -- Eastern Kingdoms
    -- -------------------------------------------------------------------------

        -- Eastern Kingdoms Dungeons
        {15, 0.387, 0.833, "Blackrock Depths\n|cFF808080(Searing Gorge)|r", "dungeon", "52-60", "BlackrockDepths", "dropdown"},
        {5, 0.328, 0.365, "Blackrock Depths\n|cFF808080(Burning Steppes)|r", "dungeon", "52-60", "BlackrockDepths", "dropdown"},
        {24, 0.423, 0.726, "The Deadmines", "dungeon", "17-26", "TheDeadmines"},
        {7, 0.178, 0.392, "Gnomeregan", "dungeon", "29-38", "Gnomeregan"},
        {7, 0.216, 0.3, "Gnomeregan\n|cFF808080(Workshop Entrance)|r", "dungeon", "29-38", "Gnomeregan"},
        {5, 0.32, 0.39, "Lower Blackrock Spire\n|cFF808080(Burning Steppes)|r", "dungeon", "55-60", "BlackrockSpireLower", "dropdown"},
        {15, 0.379, 0.858, "Lower Blackrock Spire\n|cFF808080(Searing Gorge)|r", "dungeon", "55-60", "BlackrockSpireLower", "dropdown"},
        {21, 0.87, 0.325, "Scarlet Monastery - Armory", "dungeon", "32-42", "SMArmory"},
        {21, 0.862, 0.295, "Scarlet Monastery - Cathedral", "dungeon", "35-45", "SMCathedral"},
        {21, 0.839, 0.283, "Scarlet Monastery - Graveyard", "dungeon", "26-36", "SMGraveyard"},
        {21, 0.85, 0.335, "Scarlet Monastery - Library", "dungeon", "29-39", "SMLibrary"},
        {23, 0.69, 0.729, "Scholomance", "dungeon", "58-60", "Scholomance"},
        {16, 0.448, 0.678, "Shadowfang Keep", "dungeon", "22-30", "ShadowfangKeep"},
        {17, 0.399, 0.544, "The Stockade", "dungeon", "24-32", "TheStockade"},
        {9, 0.31, 0.14, "Stratholme", "dungeon", "58-60", "Stratholme"},
        {9, 0.482, 0.219, "Stratholme\n|cFF808080(Back Gate)|r", "dungeon", "58-60", "Stratholme"},
        {19, 0.703, 0.55, "The Temple of Atal'Hakkar", "dungeon", "50-60", "TheSunkenTemple"},
        {3, 0.429, 0.13, "Uldaman", "dungeon", "41-51", "Uldaman"},
        {3, 0.657, 0.438, "Uldaman\n|cFF808080(Back Entrance)|r", "dungeon", "41-51", "Uldaman"},
        {5, 0.312, 0.365, "Upper Blackrock Spire\n|cFF808080(Burning Steppes)|r", "dungeon", "55-60", "BlackrockSpireUpper", "dropdown"},
        {15, 0.371, 0.833, "Upper Blackrock Spire\n|cFF808080(Searing Gorge)|r", "dungeon", "55-60", "BlackrockSpireUpper", "dropdown"},
        -- Eastern Kingdoms Raids
        {15, 0.332, 0.833, "Blackwing Lair\n|cFF808080(Searing Gorge)|r", "raid", "60", "BlackwingLair", "dropdown"},
        {5, 0.273, 0.363, "Blackwing Lair\n|cFF808080(Burning Steppes)|r", "raid", "60", "BlackwingLair", "dropdown"},
        {15, 0.332, 0.86, "Molten Core\n|cFF808080(Searing Gorge)|r", "raid", "60", "MoltenCore", "dropdown"},
        {5, 0.273, 0.39, "Molten Core\n|cFF808080(Burning Steppes)|r", "raid", "60", "MoltenCore", "dropdown"},
        {9, 0.399, 0.259, "Naxxramas", "raid", "60", "Naxxramas"},
        {18, 0.53, 0.172, "Zul'Gurub", "raid", "60", "ZulGurub"},
        -- Eastern Kingdoms World Bosses
        {8, 0.465, 0.357, "Emerald Dragon\n|cFF808080(The Twilight Grove)|r", "worldboss", "60", nil},
        {20, 0.632, 0.217, "Emerald Dragon\n|cFF808080(Seradane)|r", "worldboss", "60", nil},
        {4, 0.36, 0.753, "Lord Kazzak", "worldboss", "60", nil},
        -- Eastern Kingdoms Transport
        -- Deeprun Tram (Stormwind/Gnomeregan districts)
        {17, 0.627, 0.097, "Tram to Ironforge", "tram", "Alliance", nil, {2, 12}},
        {12, 0.762, 0.511, "Tram to Stormwind", "tram", "Alliance", nil, {2, 17}},
        -- Menethil Harbor boats
        {25, 0.051, 0.634, "Boat to Theramore Isle", "boat", "Alliance", nil, {1, 7}},
        {25, 0.046, 0.572, "Boat to Auberdine", "boat", "Alliance", nil, {1, 3}},
        -- Booty Bay boats: Ratchet & Steamwheedle Port (Tanaris)
        {18, 0.257, 0.73, "Boats to Ratchet & Steamwheedle Port", "boat", "Neutral", nil, {{1, 17}, {1, 15}}},
        -- Undercity zeppelin tower: Left = Durotar, Right = Grom'Gol Base Camp
        {21, 0.616, 0.571, "Zeppelins to Durotar & Grom'Gol", "zepp", "Horde", nil, {{1, 6}, {2, 18}}},
        -- Grom'Gol zeppelin tower: Left = Tirisfal Glades, Right = Thousand Needles
        {18, 0.312, 0.298, "Zeppelins to Tirisfal Glades & Thousand Needles", "zepp", "Horde", nil, {{2, 21}, {1, 18}}},
        -- Kargath zeppelin to Orgrimmar (Badlands)
        {3, 0.050, 0.470, "Zeppelin to Orgrimmar", "zepp", "Horde", nil, {1, 6}},
    },
}
