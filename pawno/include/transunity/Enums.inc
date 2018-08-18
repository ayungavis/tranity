#include <a_samp>

enum eInfo{

	eMsg[80],
	eExpire

}

// Player Temps
enum ptemps {
    Text:Status
};
new PlayerTemp[MAX_PLAYERS][ptemps];

new ErrorInfo[MAX_PLAYERS][3][eInfo];

//========================BoomBox URL's========================//
enum TOLL_INFO
{
	E_tLocked,  // 0 & 1 = Richhman, 2 & 3 = Flint, 4 & 5 = LV, 6 & 7 = BlueBerry right
	E_tOpenTime // 0 & 1 = Richhman, 2 & 3 = Flint, 4 & 5 = LV, 6 & 7 = BlueBerry right
}
new aTolls[MAX_TOLLS][TOLL_INFO];

enum TRUCKER_INFO
{
	tDestination[128],
	Float:tDesX,
	Float:tDesY,
	Float:tDesZ
}
enum GATHER_INFO
{
	tGather[128],
}

new TruckItems[][GATHER_INFO] = {
{"ELECTRONICE"},
{"MOBILIER"},
{"MATERIALE DE CONSTRUCTII"},
{"HRANA & SUPLIMENTE"},
{"TEXTILE"}
};

new TruckDropInfo[][TRUCKER_INFO] = {
{"MARKET STORAGE DROP OFF", 1097.9225,-1189.0782,18.3428},
{"WILLOWFIELD DROP OFF", 2080.3901,-2033.3337,13.5469},
{"OCEAN DOCKS DROP OFF", 2273.0703,-2350.4883,13.5469},
{"LAS COLINAS DROP OFF", 2266.3250,-1103.1696,37.9766},
{"VINEWOOD DROP OFF", 952.5364,-913.3711,45.7656},
{"VINEWOOD DROP OFF", 696.8450,-1186.6152,15.5669},
{"BLUEBERRY DROP OFF", 119.7707,-183.6332,1.5335},
{"BLUEBERRY DROP OFF", 211.3066,-32.6511,1.5781}
};

new TruckInfo[][TRUCKER_INFO] = {
{"EAST BEACH LOADING BAY", 2769.1587,-1615.4111,10.9219},
{"PLAYA DEL SEVILLE LOADING BAY", 2750.9058,-2001.4749,13.5547},
{"EAST BEACH LOADING BAY 2", 2668.6970,-1443.8296,30.5299},
{"VINEWOOD LOADING BAY 2", 914.3157,-1000.7145,38.0578},
{"SANTA MARIA BEACH LOADING BAY", 411.8087,-1726.6237,8.8560},
{"FLINT COUNTY LOADING BAY", -65.6933,-1120.3291,1.0781},
{"FALLEN TREE LOADING BAY", -576.3687,-545.1996,25.5234},
{"EASTER BAY CHEMICALS LOADING BAY", -1044.8248,-639.4695,32.0078},
{"RED COUNTY LOADING BAY", -159.7691,-289.2556,3.9053},
{"RED COUNTY LOADING BAY 2", -23.4623,-274.6633,5.4297},
{"BLUEBERRY LOADING BAY", 52.3418,-286.3346,1.6938},
{"BLUEBERRY ACRES LOADING BAY", -32.9033,63.6575,3.1172},
{"BLUEBERRY LOADING BAY 2", 253.3181,-215.8886,1.4255},
{"EL CORONA LOADING BAY", 1934.3129,-2012.8688,13.5469},
{"COMMERCE LOADING BAY", 1636.6791,-1524.1759,13.6027},
{"IDLEWOOD LOADING BAY", 1866.1418,-1794.7328,13.5469},
{"COMMERCE LOADING BAY 2", 1783.5977,-1700.1433,13.4958},
{"PERSHING SQUARE LOADING BAY", 1361.7292,-1651.1287,13.3828},
{"VINEWOOD LOADING BAY", 867.1447,-1207.7621,16.9766},
{"MARKET STORAGE", 958.8982,-1449.7124,13.4784},
{"WILLOWFIELD LOADING BAY", 2208.5217,-2048.3191,13.5469},
{"WEAPON WARE HOUSE LOADING BAY", 2167.0076,-2273.4688,13.3733},
{"OCEAN DOCKS LOADING BAY", 2430.9922,-2509.6985,13.6564}
};

enum BOOMBOX_INFO
{
	boomboxUrlName[128],
	boomboxURL[128]
}

new BoomBoxInfo[][BOOMBOX_INFO] = {
{"RADIOUP.COM - The HitList - #1 FOR ALL HIT MUSIC", "http://scfire-ntc-aa01.stream.aol.com:80/stream/1030/"},
{"PULS FM - Pure Dance Radio!", "http://87.230.82.41:80/"},
{"TrueHipHop.FM Int - Culture.FM", "http://truehiphop.dyndns.org:9020/"},
{"SOFA FM - Progressive House / Trance", "http://somafm.com/tags.pls/"},
{"The Rock (Hard Rock!)", "http://relay.181.fm:8064/"},
{"FG DJ Radio", "http://fg.impek.com:80/"},
{"DEFJAY.DE - 100% R&B!", "http://212.45.104.39:8042/"},
{"CLASSICAL 102 - The First Class In Music", "http://yp.shoutcast.com/sbin/tunein-station.pls?id=1676910/"},
{"ClubTime.FM - 24h Deep - Tech & Minimal House and Techno", "http://yp.shoutcast.com/sbin/tunein-station.pls?id=564830/"},
{"CoreTime.FM - 24h Deep - House and Techno", "http://yp.shoutcast.com/sbin/tunein-station.pls?id=9470737/"},
{"HardBase.FM - 24h Hardstyle, Jumpstyle, Hardcore & More", "http://yp.shoutcast.com/sbin/tunein-station.pls?id=537179/"},
{"Westcoast RAP - YAKATA RABOTA WEST COAST RADIO - 2 GANSTA 4 REGULAR RADIO", "http://yp.shoutcast.com/sbin/tunein-station.pls?id=1462312/"},
{"True R&B Radio", "http://yp.shoutcast.com/sbin/tunein-station.pls?id=366480/"},
{"BreakZ.us | Radio", "http://yp.shoutcast.com/sbin/tunein-station.pls?id=127014/"},
{"The OFFICE FM", "http://yp.shoutcast.com/sbin/tunein-station.pls?id=26002/"},
{"BlackBeats FM", "http://yp.shoutcast.com/sbin/tunein-station.pls?id=111772/"},
{"BigUpRadio Roots Reggae", "http://yp.shoutcast.com/sbin/tunein-station.pls?id=279923/"},
{"ChartHitz FM - Mega Hot Music", "http://yp.shoutcast.com/sbin/tunein-station.pls?id=43280/"}
};
//========================BoomBox URL's========================//

//========================Furnitures System========================//
enum FURNITURE_DETAILS
{
    furnitureModel,
    furnitureName[128],
    furniturePrice,
}

new ChairsInfo[][FURNITURE_DETAILS] = {
{1369, "Wheelchair",750},
{1663, "Swivel chair 1",800},
{1671, "Swivel chair 2",850},
{1714, "Swivel chair 3",1500},
{1715, "Swivel chair 4",1500},
{1704, "Living room chair 1",1000},
{1705, "Living room chair 2",1000},
{1708, "Living room chair 3",1000},
{1711, "Living room chair 4",600},
{1720, "Rest chair",500},
{1721, "Rest chair 2",500},
{1735, "Rest chair 3",800},
{1739, "Dinning chair",1000},
{1811, "Dinning chair 2",500},
{2079, "Dinning chair 3",800},
{2120, "Dinning chair 4",800},
{2121, "Dinning chair 5",500},
{2123, "Dinning chair 6",500},
{2124, "Dinning chair 6",600},
{2125, "Dinning chair 7",1000},
{2310, "Dinning chair 8",500},
{2636, "Dinning chair 9",500},
{1806, "Office chair",850},
{2309, "Office chair 2",850},
{1810, "Fold chair",500},
{1810, "Rocking chair",1000}
};
new TablesInfo[][FURNITURE_DETAILS] = {
{1824, "Craps table",3000},
{1896, "Casino table 2",2000},
{2964, "Pool table",3000},
{2964, "Poker table",2500},
{1826, "Living room rable",1500},
{1827, "Living room rable 2",1100},
{2311, "Living room rable 3",1100},
{2313, "Living room rable 4",1100},
{2314, "Living room rable 5",1100},
{2315, "Living room rable 6",1100},
{2319, "Living room rable 7",1100},
{2321, "Living room rable 8",1100},
{2024, "Living room rable 9",2500},
{2346, "Hifi table",1500},
{2370, "Hifi table 2",1500},
{2725, "Strip table",1000},
{14869, "Bobbie table",2000}
};
new DinnerTablesInfo[][FURNITURE_DETAILS] = {
{1433, "Dinning table",1000},
{1516, "Dinning table 2",1000},
{1737, "Dinning table 3",1000},
{1770, "Dinning table 4",1000},
{2029, "Swank dinning",2000},
{2030, "Roundtable",1500},
{2086, "Roundtable 2",1500},
{2109, "Roundtable 3",1000},
{2111, "Roundtable 4",1500},
{2031, "Oval table",1250},
{2032, "Oval table 2",1250},
{2080, "Oval table 3",1250},
{2085, "Oval table 4",1250},
{2118, "Oval table 5",1200},
{2112, "Square table",1200},
{2110, "Rectangular table",800},
{2115, "Rectangular table 2",1000},
{2116, "Rectangular table 3",1050},
{2117, "Rectangular table 4",2000},
{2119, "Rectangular table 5",2000},
{2357, "Rectangular table 6",1500}
};
new BedsInfo[][FURNITURE_DETAILS] = {
{1700, "Room bed",2500},
{1701, "Room bed 2",2500},
{1745, "Room bed 3",3000},
{1799, "Room bed 4",3000},
{1802, "Room bed 5",2450},
{1771, "Bunk bed",1500},
{1803, "Bunk bed 2",3000},
{2300, "Bunk bed 3",2800},
{1793, "Low bed",2000},
{1794, "Low bed 2",2000},
{1796, "Low bed 3",2000},
{1800, "Low bed 4",1500},
{1812, "Low bed 5",1000},
{2302, "Low bed 6",1200},
{1795, "Swank bed",1500},
{1797, "Swank bed 2",1800},
{1798, "Swank bed 3",2500},
{1801, "Swank bed 4",1950},
{2090, "Swank bed 5",3000},
{2298, "Swank bed 6",3500},
{2299, "Swank bed 7",3000},
{2301, "Swank bed 8",3000}
};
new DressersInfo[][FURNITURE_DETAILS] = {
{2562, "Dresser 1",2000},
{2568, "Dresser 2",2000},
{2569, "Dresser 3",1500},
{2570, "Dresser 4",2500},
{2573, "Dresser 5",3500},
{2574, "Dresser 6",3500},
{2576, "Dresser 7",3650}
};
new CabinetsInfo[][FURNITURE_DETAILS] = {
{911, "Bust cabinet",3000},
{912, "Bust cabinet 2",3200},
{913, "Bust cabinet 3",2300},
{1730, "Swank cabinet",1500},
{2078, "Swank cabinet 2",3000},
{2089, "Swank cabinet 3",3000},
{2094, "Swank cabinet 4",2400},
{1740, "Small cabinet",800},
{2088, "Small cabinet 2",1100},
{2095, "Small cabinet 3",800},
{2306, "Small cabinet 4",2100},
{2328, "Small cabinet 5",1500},
{2329, "Small cabinet 6",3000},
{2021, "Small cabinet 7",3100},
{1741, "Medium cabinet",1100},
{1743, "Medium cabinet 2",1200},
{2084, "Medium cabinet 3",1200},
{2087, "Medium cabinet 4",1600},
{2307, "Medium cabinet 5",2000},
{2020, "Medium cabinet 6",3500},
{2197, "Locker",1000},
{2204, "Office cabinet",4000}
};
new SofasInfo[][FURNITURE_DETAILS] = {
{1702, "Living room couch",3500},
{1703, "Living room couch 2",3500},
{1706, "Living room couch 3",3450},
{1707, "Living room couch 4",3000},
{1712, "Living room couch 5",2500},
{1713, "Living room couch 6",3125},
{1756, "Living room couch 7",3125},
{1757, "Living room couch 8",3125},
{1709, "[Very Long] couch",5000},
{1710, "[Medium] couch",4500},
{1760, "[Medium] couch 2",4500},
{1766, "[Medium] couch 3",3000},
{1768, "[Medium] couch 4",3300},
{1753, "Swank couch",5000},
{1761, "Swank couch 2",4550},
{1763, "Low couch",3000},
{1764, "Low couch 2",3000},
{1716, "Stool 1",1600},
{1805, "Stool 2",1750},
{2350, "Bar stool",2500},
{2723, "Strip stool",4500}
};
new GrugsInfo[][FURNITURE_DETAILS] = {
{2815, "Living Grug",1500},
{2833, "Living Grug 2",1500},
{2834, "Living Grug 3",1500},
{2835, "Living Grug 4",1500},
{2836, "Living Grug 5",1500}
};
new PicturesInfo[][FURNITURE_DETAILS] = {
{2254, "Picture 1",1000},
{2255, "Picture 2",1000},
{2556, "Picture 3",1000},
{2557, "Picture 4",1000},
{2558, "Picture 5",1000},
{2559, "Picture 6",1000},
{2260, "Picture 7",1000},
{2261, "Picture 8",1000},
{2262, "Picture 9",1000},
{2263, "Picture 10",1000},
{2264, "Picture 11",1000},
{2265, "Picture 12",1000},
{2266, "Picture 13",1000},
{2267, "Picture 14",1000},
{2268, "Picture 15",1000},
{2269, "Picture 16",1000},
{2270, "Picture 17",1000},
{2270, "Picture 18",1000},
{2272, "Picture 19",1000},
{2273, "Picture 20",1000},
{2274, "Picture 21",1000},
{2275, "Picture 22",1000},
{2276, "Picture 23",1000},
{2277, "Picture 24",1000},
{2278, "Picture 25",1000},
{2279, "Picture 26",1000},
{2280, "Picture 27",1000},
{2281, "Picture 28",1000},
{2282, "Picture 29",1000},
{2283, "Picture 30",1000},
{2284, "Picture 31",1000},
{2285, "Picture 32",1000},
{2286, "Picture 33",1000},
{2287, "Picture 34",1000},
{2288, "Picture 35",1000},
{2289, "Picture 36",1000}
};
new PlantsInfo[][FURNITURE_DETAILS] = {
{948, "Plant pot 1",1300},
{949, "Plant pot 2",1500},
{950, "Plant pot 3",1500},
{2194, "Plant pot 4",1350},
{2195, "Plant pot 5",1350},
{2203, "Plant pot 6",1350},
{2240, "Plant pot 7",1350},
{2241, "Plant pot 8",1350},
{2242, "Plant pot 9",1350},
{2243, "Plant pot 10",1350},
{2244, "Plant pot 11",1350},
{2245, "Plant pot 12",1350},
{2246, "Plant pot 13",1350},
{2247, "Plant pot 14",1350},
{2248, "Plant pot 15",1350},
{2249, "Plant pot 16",1350},
{2250, "Plant pot 17",1350},
{2251, "Plant pot 18",1350},
{2252, "Plant pot 19",1350},
{2253, "Plant pot 20",1350},
{3811, "Plant pot 21",2000},
{15038, "Plant pot 22",2000},
{14804, "Plant pot 23",2000}
};
new LampsInfo[][FURNITURE_DETAILS] = {
{2196, "Office lamp",1000},
{2238, "Lava lamp",2500},
{2726, "Strip lamp",2500},
{3534, "Pink lamp",1200},
{2023, "Stand lamp",2600},
{2026, "Ceiling lamp",2500},
{2105, "Table light",1200},
{2106, "Table light 2",1200},
{2108, "Table light 3",1200}
};
new RandomDecorations[][FURNITURE_DETAILS] = {
{2469, "Plane model 1",800},
{2470, "Plane model 2",800},
{2472, "Plane model 3",1000},
{2473, "Plane model 4",1000},
{2510, "[BIG] Plane model",3000}
};
new RandomMess[][FURNITURE_DETAILS] = {
{2670, "Coffee and cigars",800},
{2671, "Chopsticks and tissues",800},
{2672, "Burgershot mess",800},
{2673, "Random mess 1",800},
{2674, "Cigars and papers",800},
{2675, "Food mess",800},
{2676, "Food mess 2",800},
{2677, "Food mess 3",800},
{2342, "Coffee and food",800}
};
new TelevisionsInfo[][FURNITURE_DETAILS] = {
{1429, "Normal T.V",4500},
{1518, "Normal T.V 2",4250},
{1747, "Normal T.V 3",4100},
{1748, "Normal T.V 4",4000},
{1749, "Normal T.V 5",3850},
{1750, "Normal T.V 5",3000},
{1751, "Normal T.V 6",2600},
{2312, "Normal T.V 7",3100},
{1752, "Swank T.V",3600},
{1781, "Swank T.V 2",3500},
{1786, "Swank T.V 3",3600},
{1791, "Swank T.V 4",3500},
{1792, "Swank T.V 5",4000},
{2091, "T.V inside cabinet",7000},
{2093, "T.V inside cabinet",5600},
{2296, "T.V unit",8000},
{2297, "T.V unit 2",8500},
{14604, "T.V stand",5600}
};

new KitchenInfo[][FURNITURE_DETAILS] = {
{2127, "Red refrigerator",5500},
{2131, "White refrigerator",5500},
{2147, "Normal gray refrigerator",4000},
{2133, "White Kitchen Cabinet 1", 4600},
{2134, "White Kitchen Cabinet 2", 4600},
{2141, "White Kitchen Cabinet 3", 5000},
{2338, "Large White Kitchen Cabinet", 4300},
{2341, "Corner White Kitchen Cabinet", 4550},
{2334, "Green Kitchen Cabinet 1", 5000},
{2335, "Green Kitchen Cabinet 2", 5000},
{2142, "Green Kitchen Cabinet 3", 5500},
{2156, "Green Kitchen Cabinet 4", 6000},
{2157, "Green Kitchen Cabinet 5", 6000},
{2159, "Green Kitchen Cabinet 6", 4600},
{2143, "Kitchen Cabinet + Washer", 7500},
{2160, "Kitchen Cabinet + Sink", 7500},
{2158, "Large Green Kitchen Cabinet", 6000},
{2128, "Large Red Kitchen Cabinet", 6000},
{2129, "Red Kitchen Cabinet", 4500},
{2013, "Kitchen sink",6000},
{2130, "Kitchen sink 2",6000},
{2132, "Kitchen sink 3",6000},
{2136, "Kitchen sink 4",6000},
{2336, "Kitchen sink 5",4500},
{2150, "Kitchen sink 6",3000},
{2149, "Microwave 1",4500},
{2421, "Microwave 2",5000},
{2135, "Cooker",5000},
{2294, "Cooker 2",5500},
{2339, "Cooker 3",4500},
{2417, "Cooker 4",4000},
{2144, "Cooker 5",2550},
{2017, "Cooker 6",5500},
{2337, "Washer",2300},
{2340, "Washer 2",2600},
{2018, "Washer 3",5000}
};

new BathroomInfo[][FURNITURE_DETAILS] = {
{2515, "Bathroom sink",2600},
{2518, "Bathroom sink 2",2850},
{2523, "Bathroom sink 3",2850},
{2524, "Bathroom sink 4",2850},
{2739, "Bathroom sink 5",1500},
{2514, "Toilet 1",2000},
{2521, "Toilet 2",1800},
{2525, "Toilet 3",2400},
{2528, "Toilet 4",2650},
{2738, "Toilet 5",1200},
{2516, "Bath",2000},
{2519, "Bath 2",2100},
{2522, "Bath 3",3000},
{2526, "Bath 4",2500},
{2517, "Large shower",3500}
};

new DoorFurniture[][FURNITURE_DETAILS] = {
{1493, "Door 1", 3000},
{1494, "Door 2", 3000},
{1495, "Door 3", 3000},
{1496, "Door 4", 3000},
{1497, "Door 5", 3000},
{1498, "Door 6", 3000},
{1500, "Door 7", 3000},
{1501, "Door 8", 3000}
};

new WallsInfo[][FURNITURE_DETAILS] = {
{19353, "Wall 1",2000},
{19354, "Wall 2",2000},
{19355, "Wall 3",2000},
{19356, "Wall 4",2000},
{19357, "Wall 5",2000},
{19358, "Wall 6",2000},
{19359, "Wall 7",2000},
{19360, "Wall 8",2000},
{19361, "Wall 9",2000},
{19362, "Wall 10",2000},
{19363, "Wall 11",2000},
{19364, "Wall 12",2000},
{19365, "Wall 13",2000},
{19366, "Wall 14",2000},
{19367, "Wall 15",2000},
{19368, "Wall 16",2000},
{19369, "Wall 17",2000},
{19370, "Wall 18",2000},
{19371, "Wall 19",2000},
{19372, "Wall 20",2000},
{19373, "Wall 21",2000},
{19383, "Wall 31",2500},
{19384, "Wall 32",2500},
{19385, "Wall 33",2500},
{19386, "Wall 34",2500},
{19387, "Wall 35",2500},
{19388, "Wall 36",2500},
{19389, "Wall 37",2500},
{19390, "Wall 38",2500},
{19391, "Wall 39",2500},
{19392, "Wall 40",2500},
{19393, "Wall 41",2500},
{19394, "Wall 42",2500},
{19395, "Wall 43",2500},
{19396, "Wall 44",2500},
{19397, "Wall 45",2500},
{19398, "Wall 46",2500},
{19399, "Wall 47",3000},
{19400, "Wall 48",3000},
{19401, "Wall 49",3000},
{19402, "Wall 50",3000},
{19403, "Wall 51",3000},
{19404, "Wall 52",3000},
{19405, "Wall 53",3000},
{19406, "Wall 54",3000},
{19407, "Wall 55",3000},
{19408, "Wall 56",3000},
{19409, "Wall 57",3000},
{19410, "Wall 58",3000},
{19411, "Wall 59",3000},
{19412, "Wall 60",3000},
{19413, "Wall 61",3000},
{19414, "Wall 62",3000},
{19415, "Wall 63",3000},
{19416, "Wall 64",3000},
{19417, "Wall 65",3000},
{19426, "Wall 66",2500},
{19427, "Wall 67",2500},
{19428, "Wall 68",2500},
{19429, "Wall 69",2500},
{19430, "Wall 70",2500},
{19431, "Wall 71",2500},
{19432, "Wall 72",2500},
{19433, "Wall 73",2500},
{19434, "Wall 74",2500},
{19435, "Wall 75",2500},
{19436, "Wall 76",2500},
{19437, "Wall 77",2500},
{19438, "Wall 78",2500},
{19439, "Wall 79",2500},
{19440, "Wall 80",2500},
{19441, "Wall 81",2500},
{19442, "Wall 82",2500},
{19443, "Wall 83",2500},
{19444, "Wall 84",2500},
{19445, "Wall 85",3500},
{19446, "Wall 86",3500},
{19447, "Wall 87",3500},
{19448, "Wall 88",3500},
{19449, "Wall 89",3500},
{19450, "Wall 90",3500},
{19451, "Wall 91",3500},
{19452, "Wall 92",3500},
{19453, "Wall 93",3500}
};
//========================Furnitures System========================//

//========================Toy System========================//
#define MAX_PLAYER_TOYS 9
enum ToysEnum
{
	ptID,
	ptName[128],
	ptModelID,
	ptBoneID,
	Float:ptOffsetX,
	Float:ptOffsetY,
	Float:ptOffsetZ,
	Float:ptRotX,
	Float:ptRotY,
	Float:ptRotZ,
	Float:ptScaleX,
	Float:ptScaleY,
	Float:ptScaleZ,
	ptToyOn
}
new PlayerToys[MAX_PLAYERS][MAX_PLAYER_TOYS][ToysEnum];

enum PLAYER_TOYS_INFO
{
    toyModel,
    toyName[64],
	toyPrice,
	toyBone,
	Float:toyOffestX,
	Float:toyOffestY,
	Float:toyOffestZ,
	Float:toyRotX,
	Float:toyRotY,
	Float:toyRotZ,
	Float:toyScaleX,
	Float:toyScaleY,
	Float:toyScaleZ,
}
new HatsInfo[][PLAYER_TOYS_INFO] = {
{18926, "Army Hat", 700, 2, 0.152, 0.0, -0.01, 0.0, 0.0, 0.0, 1.0, 1.0, 1.0},
{18927, "Azure Hat", 700, 2, 0.152, 0.0, -0.01, 0.0, 0.0, 0.0, 1.0, 1.0, 1.0},
{18928, "Funky Hat", 700, 2, 0.152, 0.0, -0.01, 0.0, 0.0, 0.0, 1.0, 1.0, 1.0},
{18929, "Dark Gray Hat", 700, 2, 0.152, 0.0, -0.01, 0.0, 0.0, 0.0, 1.0, 1.0, 1.0},
{18930, "Fire Hat", 700, 2, 0.152, 0.0, -0.01, 0.0, 0.0, 0.0, 1.0, 1.0, 1.0},
{18931, "Dark Blue Hat", 700, 2, 0.152, 0.0, -0.01, 0.0, 0.0, 0.0, 1.0, 1.0, 1.0},
{18932, "Orange Hat", 700, 2, 0.152, 0.0, -0.01, 0.0, 0.0, 0.0, 1.0, 1.0, 1.0},
{18933, "Light Gray Hat", 700, 2, 0.152, 0.0, -0.01, 0.0, 0.0, 0.0, 1.0, 1.0, 1.0},
{18934, "Pink Hat", 700, 2, 0.152, 0.0, -0.01, 0.0, 0.0, 0.0, 1.0, 1.0, 1.0},
{18935, "Yellow Hat", 700, 2, 0.152, 0.0, -0.01, 0.0, 0.0, 0.0, 1.0, 1.0, 1.0},
{18944, "Fire Hat Boater", 1000, 2, 0.152, 0.0, -0.01, 0.0, 0.0, 0.0, 1.0, 1.0, 1.0},
{18945, "Gray Hat Boater", 1000, 2, 0.152, 0.0, -0.01, 0.0, 0.0, 0.0, 1.0, 1.0, 1.0},
{18946, "Gray Hat Boater 2", 1000, 2, 0.152, 0.0, -0.01, 0.0, 0.0, 0.0, 1.0, 1.0, 1.0},
{18947, "Black Hat Bowler", 1000, 2, 0.152, 0.0, -0.01, 0.0, 0.0, 0.0, 1.0, 1.0, 1.0},
{18948, "Azure Hat Bowler", 1000, 2, 0.152, 0.0, -0.01, 0.0, 0.0, 0.0, 1.0, 1.0, 1.0},
{18949, "Green Hat Bowler", 1000, 2, 0.152, 0.0, -0.01, 0.0, 0.0, 0.0, 1.0, 1.0, 1.0},
{18950, "Red Hat Bowler", 1000, 2, 0.152, 0.0, -0.01, 0.0, 0.0, 0.0, 1.0, 1.0, 1.0},
{18951, "Light Green Hat Bowler", 1000, 2, 0.152, 0.0, -0.01, 0.0, 0.0, 0.0, 1.0, 1.0, 1.0},
{19488, "White Hat Bowler", 1000, 2, 0.13, 0.0, -0.0, -89.4, 103.69, -4.19, 1.0, 1.0, 1.0},
{18967, "Simple Black Hat", 500, 2, 0.15, 0.01, -0.01, 0.0, 97.09, 87.59, 1.0, 1.0, 1.0},
{18968, "Simple Gray Hat", 500, 2, 0.15, 0.01, -0.01, 0.0, 97.09, 87.59, 1.0, 1.0, 1.0},
{18969, "Simple Orange Hat", 500, 2, 0.15, 0.01, -0.01, 0.0, 97.09, 87.59, 1.0, 1.0, 1.0},
{18970, "Tiger Hat", 1000, 2, 0.109999, 0.045999, -0.007, 0.0, 96.29, 89.5, 1.0, 1.0, 1.0},
{18971, "Black & White Cool Hat", 1000, 2, 0.109999, 0.045999, -0.007, 0.0, 96.29, 89.5, 1.0, 1.0, 1.0},
{18972, "Black & Orange Cool Hat", 1000, 2, 0.109999, 0.045999, -0.007, 0.0, 96.29, 89.5, 1.0, 1.0, 1.0},
{18973, "Black & Green Cool Hat", 1000, 2, 0.109999, 0.045999, -0.007, 0.0, 96.29, 89.5, 1.0, 1.0, 1.0},
{19066, "Santa Hat", 3000, 2, 0.126000, 0.008000, 0.0, 0.0, 87.0, 94.190002, 1.0, 1.0, 1.0},
{19067, "Red Hoody Hat", 500, 2, 0.133999, -0.006000, 0.0, -22.199998, 92.500030, 114.199836, 1.0, 1.0, 1.0},
{19068, "Tiger Hoody Hat", 500, 2, 0.133999, -0.006000, 0.0, -22.199998, 92.500030, 114.199836, 1.0, 1.0, 1.0},
{19069, "Black Hoody Hat", 500, 2, 0.133999, -0.006000, 0.0, -22.199998, 92.500030, 114.199836, 1.0, 1.0, 1.0},
{19093, "White Dude Hat", 1300, 2, 0.107999, 0.0, -0.008999, 0.0, 0.0, 0.0, 1.0, 1.0, 1.0},
{19095, "Brown Cowboy Hat", 1300, 2, 0.18, 0.006999, -0.009999, 0.0, 0.0, 0.0, 1.0, 1.0, 1.0},
{19096, "Black Cowboy Hat", 1300, 2, 0.18, 0.006999, -0.009999, 0.0, 0.0, 0.0, 1.0, 1.0, 1.0},
{19097, "Black Cowboy Hat 2", 1300, 2, 0.18, 0.006999, -0.009999, 0.0, 0.0, 0.0, 1.0, 1.0, 1.0},
{19098, "Brown Cowboy Hat 2", 1300, 2, 0.18, 0.006999, -0.009999, 0.0, 0.0, 0.0, 1.0, 1.0, 1.0},
{19352, "Black Top Hat", 2000, 2, 0.143999, 0.015000, 0.0, 0.0, 90.800003, 0.0, 1.0, 1.0, 1.0},
{19487, "White Top Hat", 2000, 2, 0.143999, 0.015000, 0.0, 0.0, 90.800003, 0.0, 1.0, 1.0, 1.0},
{18964, "Black Skully Cap", 700, 2, 0.136999, -0.003000, -0.004000, 35.900001, 88.200019, 44.699966, 1.0, 1.0, 1.0},
{18965, "Brown Skully Cap", 700, 2, 0.136999, -0.003000, -0.004000, 35.900001, 88.200019, 44.699966, 1.0, 1.0, 1.0},
{18966, "Funky Skully Cap", 700, 2, 0.136999, -0.003000, -0.004000, 35.900001, 88.200019, 44.699966, 1.0, 1.0, 1.0},
{18921, "Blue Beret", 500, 2, 0.179000, -0.000999, -0.012000, 0.0, 0.0, 0.0, 1.0, 1.0, 1.0},
{18922, "Red Beret", 500, 2, 0.179000, -0.000999, -0.012000, 0.0, 0.0, 0.0, 1.0, 1.0, 1.0},
{18923, "Dark Blue Beret", 500, 2, 0.179000, -0.000999, -0.012000, 0.0, 0.0, 0.0, 1.0, 1.0, 1.0},
{18924, "Army Beret", 500, 2, 0.179000, -0.000999, -0.012000, 0.0, 0.0, 0.0, 1.0, 1.0, 1.0},
{18925, "Red Army Beret", 500, 2, 0.179000, -0.000999, -0.012000, 0.0, 0.0, 0.0, 1.0, 1.0, 1.0},
{18939, "Dark Blue CapBack", 1000, 2, 0.171999, 0.008999, -0.009000, 0.0, 0.0, 0.0, 1.0, 1.0, 1.0},
{18940, "Azure CapBack", 1000, 2, 0.171999, 0.008999, -0.009000, 0.0, 0.0, 0.0, 1.0, 1.0, 1.0},
{18941, "Black CapBack", 1000, 2, 0.171999, 0.008999, -0.009000, 0.0, 0.0, 0.0, 1.0, 1.0, 1.0},
{18942, "Gray CapBack", 1000, 2, 0.171999, 0.008999, -0.009000, 0.0, 0.0, 0.0, 1.0, 1.0, 1.0},
{18943, "Green CapBack", 1000, 2, 0.171999, 0.008999, -0.009000, 0.0, 0.0, 0.0, 1.0, 1.0, 1.0}
};
new GlassesInfo[][PLAYER_TOYS_INFO] = {
{19006, "Red Glasses", 1000, 2, 0.080999, 0.043999, -0.005, 82.1, 75.1, 7.5, 1.0, 1.0, 1.0},
{19007, "Green Glasses", 1000, 2, 0.080999, 0.043999, -0.005, 82.1, 75.1, 7.5, 1.0, 1.0, 1.0},
{19008, "Yellow Glasses", 1000, 2, 0.080999, 0.043999, -0.005, 82.1, 75.1, 7.5, 1.0, 1.0, 1.0},
{19009, "Azure Glasses", 1000, 2, 0.080999, 0.043999, -0.005, 82.1, 75.1, 7.5, 1.0, 1.0, 1.0},
{19010, "Pink Glasses", 1000, 2, 0.080999, 0.043999, -0.005, 82.1, 75.1, 7.5, 1.0, 1.0, 1.0},
{19011, "Funky Glasses", 1000, 2, 0.080999, 0.043999, -0.005, 82.1, 75.1, 7.5, 1.0, 1.0, 1.0},
{19012, "Gray Glasses", 1000, 2, 0.080999, 0.043999, -0.005, 82.1, 75.1, 7.5, 1.0, 1.0, 1.0},
{19013, "Funky Glasses 2", 1000, 2, 0.080999, 0.043999, -0.005, 82.1, 75.1, 7.5, 1.0, 1.0, 1.0},
{19014, "Black & White Glasses", 1000, 2, 0.080999, 0.043999, -0.005, 82.1, 75.1, 7.5, 1.0, 1.0, 1.0},
{19015, "White Glasses", 1000, 2, 0.080999, 0.043999, -0.005, 82.1, 75.1, 7.5, 1.0, 1.0, 1.0},
{19016, "X-Ray Glasses", 3000, 2, 0.080999, 0.043999, -0.005, 82.1, 75.1, 7.5, 1.0, 1.0, 1.0},
{19017, "Covered Yellow Glasses", 1000, 2, 0.080999, 0.043999, -0.005, 82.1, 75.1, 7.5, 1.0, 1.0, 1.0},
{19018, "Covered Orange Glasses", 1000, 2, 0.080999, 0.043999, -0.005, 82.1, 75.1, 7.5, 1.0, 1.0, 1.0},
{19019, "Covered Red Glasses", 1000, 2, 0.080999, 0.043999, -0.005, 82.1, 75.1, 7.5, 1.0, 1.0, 1.0},
{19020, "Covered Blue Glasses", 1000, 2, 0.080999, 0.043999, -0.005, 82.1, 75.1, 7.5, 1.0, 1.0, 1.0},
{19021, "Covered Green Glasses", 1000, 2, 0.080999, 0.043999, -0.005, 82.1, 75.1, 7.5, 1.0, 1.0, 1.0},
{19022, "Cool Black Glasses", 1000, 2, 0.080999, 0.043999, -0.005, 82.1, 75.1, 7.5, 1.0, 1.0, 1.0},
{19023, "Cool Azure Glasses", 1000, 2, 0.080999, 0.043999, -0.005, 82.1, 75.1, 7.5, 1.0, 1.0, 1.0},
{19024, "Cool Blue Glasses", 1000, 2, 0.080999, 0.043999, -0.005, 82.1, 75.1, 7.5, 1.0, 1.0, 1.0},
{19025, "Cool Pink Glasses", 1000, 2, 0.080999, 0.043999, -0.005, 82.1, 75.1, 7.5, 1.0, 1.0, 1.0},
{19026, "Cool Red Glasses", 1000, 2, 0.080999, 0.043999, -0.005, 82.1, 75.1, 7.5, 1.0, 1.0, 1.0},
{19027, "Cool Orange Glasses", 1000, 2, 0.080999, 0.043999, -0.005, 82.1, 75.1, 7.5, 1.0, 1.0, 1.0},
{19028, "Cool Yellow Glasses", 1000, 2, 0.080999, 0.043999, -0.005, 82.1, 75.1, 7.5, 1.0, 1.0, 1.0},
{19029, "Cool Yellow Glasses", 1000, 2, 0.080999, 0.043999, -0.005, 82.1, 75.1, 7.5, 1.0, 1.0, 1.0},
{19030, "Pink Nerd Glasses", 1500, 2, 0.080999, 0.043999, -0.005, 82.1, 75.1, 7.5, 1.0, 1.0, 1.0},
{19031, "Green Nerd Glasses", 1500, 2, 0.080999, 0.043999, -0.005, 82.1, 75.1, 7.5, 1.0, 1.0, 1.0},
{19032, "Red Nerd Glasses", 1500, 2, 0.080999, 0.043999, -0.005, 82.1, 75.1, 7.5, 1.0, 1.0, 1.0},
{19033, "Black Nerd Glasses", 1500, 2, 0.080999, 0.043999, -0.005, 82.1, 75.1, 7.5, 1.0, 1.0, 1.0},
{19034, "Black & White Nerd Glasses", 1500, 2, 0.080999, 0.043999, -0.005, 82.1, 75.1, 7.5, 1.0, 1.0, 1.0},
{19035, "Ocean Nerd Glasses", 1500, 2, 0.080999, 0.043999, -0.005, 82.1, 75.1, 7.5, 1.0, 1.0, 1.0}
};
new BandanasInfo[][PLAYER_TOYS_INFO] = {
{18891, "Purple Bandana", 1200, 2, 0.156998, 0.004, -0.004, -83.3, -6.7, -89.4999, 1.0, 1.0, 1.0},
{18892, "Red Bandana", 1200, 2, 0.156998, 0.004, -0.004, -83.3, -6.7, -89.4999, 1.0, 1.0, 1.0},
{18893, "Red&White Bandana", 1200, 2, 0.156998, 0.004, -0.004, -83.3, -6.7, -89.4999, 1.0, 1.0, 1.0},
{18894, "Orange Bandana", 1200, 2, 0.156998, 0.004, -0.004, -83.3, -6.7, -89.4999, 1.0, 1.0, 1.0},
{18895, "Skull Bandana", 1200, 2, 0.156998, 0.004, -0.004, -83.3, -6.7, -89.4999, 1.0, 1.0, 1.0},
{18896, "Black Bandana", 1200, 2, 0.156998, 0.004, -0.004, -83.3, -6.7, -89.4999, 1.0, 1.0, 1.0},
{18897, "Blue Bandana", 1200, 2, 0.156998, 0.004, -0.004, -83.3, -6.7, -89.4999, 1.0, 1.0, 1.0},
{18898, "Green Bandana", 1200, 2, 0.156998, 0.004, -0.004, -83.3, -6.7, -89.4999, 1.0, 1.0, 1.0},
{18899, "Pink Bandana", 1200, 2, 0.156998, 0.004, -0.004, -83.3, -6.7, -89.4999, 1.0, 1.0, 1.0},
{18900, "Funky Bandana", 1200, 2, 0.156998, 0.004, -0.004, -83.3, -6.7, -89.4999, 1.0, 1.0, 1.0},
{18901, "Tiger Bandana", 1200, 2, 0.156998, 0.004, -0.004, -83.3, -6.7, -89.4999, 1.0, 1.0, 1.0},
{18902, "Yellow Bandana", 1200, 2, 0.156998, 0.004, -0.004, -83.3, -6.7, -89.4999, 1.0, 1.0, 1.0},
{18903, "Azure Bandana", 1200, 2, 0.156998, 0.004, -0.004, -83.3, -6.7, -89.4999, 1.0, 1.0, 1.0},
{18904, "Dark Blue Bandana", 1200, 2, 0.156998, 0.004, -0.004, -83.3, -6.7, -89.4999, 1.0, 1.0, 1.0},
{18905, "Olive Bandana", 1200, 2, 0.156998, 0.004, -0.004, -83.3, -6.7, -89.4999, 1.0, 1.0, 1.0},
{18906, "Orange&Yellow Bandana", 800, 2, 0.156998, 0.004, -0.004, -83.3, -6.7, -89.4999, 1.0, 1.0, 1.0},
{18907, "Funky Bandana 2", 800, 2, 0.156998, 0.004, -0.004, -83.3, -6.7, -89.4999, 1.0, 1.0, 1.0},
{18907, "Blue Bandana 2", 800, 2, 0.156998, 0.004, -0.004, -83.3, -6.7, -89.4999, 1.0, 1.0, 1.0},
{18907, "Azure Bandana 2", 800, 2, 0.156998, 0.004, -0.004, -83.3, -6.7, -89.4999, 1.0, 1.0, 1.0},
{18907, "Fire Bandana", 800, 2, 0.156998, 0.004, -0.004, -83.3, -6.7, -89.4999, 1.0, 1.0, 1.0},
{18911, "Skull Bandana Mask", 1200, 18, 0.03, 0.079999, 0.0, -20.7001, 87.2, 22.4, 1.0, 1.0, 1.0},
{18912, "Black Bandana Mask", 1200, 18, 0.03, 0.079999, 0.0, -20.7001, 87.2, 22.4, 1.0, 1.0, 1.0},
{18913, "Green Bandana Mask", 1200, 18, 0.03, 0.079999, 0.0, -20.7001, 87.2, 22.4, 1.0, 1.0, 1.0},
{18914, "Army Bandana Mask", 1200, 18, 0.03, 0.079999, 0.0, -20.7001, 87.2, 22.4, 1.0, 1.0, 1.0},
{18915, "Funky Bandana Mask", 1200, 18, 0.03, 0.079999, 0.0, -20.7001, 87.2, 22.4, 1.0, 1.0, 1.0},
{18916, "Light Bandana Mask", 1200, 18, 0.03, 0.079999, 0.0, -20.7001, 87.2, 22.4, 1.0, 1.0, 1.0},
{18917, "Dark Blue Bandana Mask", 1200, 18, 0.03, 0.079999, 0.0, -20.7001, 87.2, 22.4, 1.0, 1.0, 1.0},
{18918, "Gray Bandana Mask", 1200, 18, 0.03, 0.079999, 0.0, -20.7001, 87.2, 22.4, 1.0, 1.0, 1.0},
{18919, "White Bandana Mask", 1200, 18, 0.03, 0.079999, 0.0, -20.7001, 87.2, 22.4, 1.0, 1.0, 1.0},
{18920, "Colorful Bandana Mask", 1200, 18, 0.03, 0.079999, 0.0, -20.7001, 87.2, 22.4, 1.0, 1.0, 1.0}
};
new HeadphonesInfo[][PLAYER_TOYS_INFO] = {
{19421, "White Headphones", 2000, 2, 0.036999, -0.028, -0.006999, 86.6, 176.2, 88.4, 1.157, 1.0, 1.0},
{19422, "Black Headphones", 2000, 2, 0.036999, -0.028, -0.006999, 86.6, 176.2, 88.4, 1.157, 1.0, 1.0},
{19423, "Gray Headphones", 2000, 2, 0.036999, -0.028, -0.006999, 86.6, 176.2, 88.4, 1.157, 1.0, 1.0},
{19424, "Blue Headphones", 2000, 2, 0.036999, -0.028, -0.006999, 86.6, 176.2, 88.4, 1.157, 1.0, 1.0}
};
new IllegalInfo[][PLAYER_TOYS_INFO] = {
{348, "Fake Pistol", 5000, 6, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 1.00, 1.00, 1.00},
{11745, "Black Bag", 1500, 5, 0.214000, 0.045000, -0.002999, 0.000000, -96.599990, -57.399993, 1.00, 1.00, 1.00}
};
new SportsInfo[][PLAYER_TOYS_INFO] = {
{19036, "White Hockey Mask", 1200, 2, 0.096999, 0.043999, -0.006000, 87.499961, 94.899955, 0.0, 1.0, 1.0, 1.0},
{19037, "Red Hockey Mask", 1200, 2, 0.096999, 0.043999, -0.006000, 87.499961, 94.899955, 0.0, 1.0, 1.0, 1.0},
{19038, "Green Hockey Mask", 1200, 2, 0.096999, 0.043999, -0.006000, 87.499961, 94.899955, 0.0, 1.0, 1.0, 1.0},
{19472, "Gas Mask", 2000, 2, -0.005000, 0.142999, -0.008000, 87.499961, 94.899955, 0.0, 1.0, 1.116000, 1.0},
{2919, "Sports Bag", 1500, 5, 0.273000, 0.034999, 0.046999, -11.199997, -103.500007, 4.300001, 0.439000, 0.161000, 0.351000},
{3026, "Jansport Backpack", 1500, 1, -0.143000, -0.049999, 0.009999, 0.0, 0.0, 0.0, 1.0, 1.0, 1.0},
{18645, "Red&White Motorcycle Helmet", 4000, 2, 0.050999, 0.023000, -0.012999, 82.800025, 91.199928, 4.500027, 1.0, 1.0, 1.0},
{18976, "Blue Motorcycle Helmet", 4000, 2, 0.087998, 0.039000, -0.006998, 82.800025, 91.199928, 4.500027, 0.970000, 1.179000, 1.0},
{18977, "Red Motorcycle Helmet", 4000, 2, 0.050999, 0.023000, -0.012999, 82.800025, 91.199928, 4.500027, 1.0, 1.0, 1.0},
{18978, "White Motorcycle Helmet", 4000, 2, 0.050999, 0.023000, -0.012999, 82.800025, 91.199928, 4.500027, 1.0, 1.0, 1.0},
{18979, "Purple Motorcycle Helmet", 4000, 2, 0.050999, 0.023000, -0.012999, 82.800025, 91.199928, 4.500027, 1.0, 1.0, 1.0}
};
new GuitarsInfo[][PLAYER_TOYS_INFO] = {
{19317, "Bass Guitar", 14000},
{19318, "Flying Guitar", 15000},
{19319, "Warlock Guitar", 16000},
{19319, "BoomBox (One Time Use)", 5000}
};

new VehicleNames[212][] = {
   "Landstalker",  "Bravura",  "Buffalo", "Linerunner", "Perennial", "Sentinel",
   "Dumper",  "Firetruck" ,  "Trashmaster" ,  "Stretch",  "Manana",  "Infernus",
   "Voodoo", "Pony",  "Mule", "Cheetah", "Ambulance",  "Leviathan",  "Moonbeam",
   "Esperanto", "Taxi",  "Washington",  "Bobcat",  "Mr Whoopee", "BF Injection",
   "Hunter", "Premier",  "Enforcer",  "Securicar", "Banshee", "Predator", "Bus",
   "Rhino",  "Barracks",  "Hotknife",  "Trailer",  "Previon", "Coach", "Cabbie",
   "Stallion", "Rumpo", "RC Bandit",  "Romero", "Packer", "Monster",  "Admiral",
   "Squalo", "Seasparrow", "Pizzaboy", "Tram", "Trailer",  "Turismo", "Speeder",
   "Reefer", "Tropic", "Flatbed","Yankee", "Caddy", "Solair","Berkley's RC Van",
   "Skimmer", "PCJ-600", "Faggio", "Freeway", "RC Baron","RC Raider","Glendale",
   "Oceanic", "Sanchez", "Sparrow",  "Patriot", "Quad",  "Coastguard", "Dinghy",
   "Hermes", "Sabre", "Rustler", "ZR-350", "Walton",  "Regina",  "Comet", "BMX",
   "Burrito", "Camper", "Marquis", "Baggage", "Dozer","Maverick","News Chopper",
   "Rancher", "FBI Rancher", "Virgo", "Greenwood","Jetmax","Hotring","Sandking",
   "Blista Compact", "Police Maverick", "Boxville", "Benson","Mesa","RC Goblin",
   "Hotring Racer", "Hotring Racer", "Bloodring Banger", "Rancher",  "Super GT",
   "Elegant", "Journey", "Bike", "Mountain Bike", "Beagle", "Cropdust", "Stunt",
   "Tanker", "RoadTrain", "Nebula", "Majestic", "Buccaneer", "Shamal",  "Hydra",
   "FCR-900","NRG-500","HPV1000","Cement Truck","Tow Truck","Fortune","Cadrona",
   "FBI Truck", "Willard", "Forklift","Tractor","Combine","Feltzer","Remington",
   "Slamvan", "Blade", "Freight", "Streak","Vortex","Vincent","Bullet","Clover",
   "Sadler",  "Firetruck", "Hustler", "Intruder", "Primo", "Cargobob",  "Tampa",
   "Sunrise", "Merit",  "Utility Truck",  "Nevada", "Yosemite", "Windsor",  "Monster",
   "Monster","Uranus","Jester","Sultan","Stratum","Elegy","Raindance","RCTiger",
   "Flash","Tahoma","Savanna", "Bandito", "Freight", "Trailer", "Kart", "Mower",
   "Dune", "Sweeper", "Broadway", "Tornado", "AT-400",  "DFT-30", "Huntley",
   "Stafford", "BF-400", "Newsvan","Tug","Trailer","Emperor","Wayfarer","Euros",
   "Hotdog", "Club", "Trailer", "Trailer","Andromada","Dodo","RC Cam", "Launch",
   "Police Car (LSPD)", "Police Car (SFPD)","Police Car (LVPD)","Police Ranger",
   "Picador",   "S.W.A.T. Van",  "Alpha",   "Phoenix",   "Glendale",   "Sadler",
   "Luggage Trailer","Luggage Trailer","Stair Trailer", "Boxville", "Farm Plow",
   "Utility Trailer"
};

new OrTeleports[][] =
{
	{"24/7 1"},
	{"24/7 2"},
	{"24/7 3"},
	{"24/7 4"},
	{"24/7 5"},
	{"24/7 6"},
	{"Airport Ticket Desk"},
	{"Airport Baggage Reclaim"},
	{"Shamal"},
	{"Andromada"},
	{"Ammunation 1"},
	{"Ammunation 2"},
	{"Ammunation 3"},
	{"Ammunation 4"},
	{"Ammunation 5"},
	{"Ammunation Booths"},
	{"Ammunation Range"},
	{"Blastin Fools Hallway"},
	{"Budget Inn Motel Room"},
	{"Jefferson Motel"},
	{"Off Track Betting Shop"},
	{"Sex Shop"},
	{"Meat Factory"},
	{"Zero's RC Shop"},
	{"Dillmore Gas Station"},
	{"Caligula's Basement"},
	{"FDC Janitors Room"},
	{"Woozie's Office"},
	{"Binco"},
	{"Didier Sachs"},
	{"Prolaps"},
	{"Suburban"},
	{"Victim"},
	{"ZIP"},
	{"Alhambra"},
	{"Ten Bottles"},
 	{"Lil' Probe Inn"},
 	{"Jay's Dinner"},
 	{"Gant Bridge Dinner"},
	{"Secret Valley Dinner"},
	{"World of Coq"},
	{"Welcome Pump"},
	{"Burger Shot"},
	{"Cluckin' Bell"},
	{"Well Stacked Pizza"},
	{"Jimmy's Sticky Ring"},
	{"Denise Room"},
	{"Katie Room"},
	{"Helena Room"},
	{"Michelle Room"},
	{"Barbara Room"},
	{"Mille Room"},
	{"Sherman Dam"},
	{"Planning Dept."},
	{"Area 51"},
	{"LS Gym"},
	{"SF Gym"},
	{"LV Gym"},
	{"B Dup's House"},
	{"B Dup's Crack Pad"},
	{"CJ's House"},
	{"Madd Dogg's Mansion"},
	{"OG Loc's House"},
	{"Ryder's House"},
	{"Sweet's House"},
	{"Crack Factory"},
	{"Big Spread Ranch"},
	{"Fanny Batters"},
	{"Strip Club"},
	{"Strip Club Private Room"},
	{"Unnamed Brothel"},
	{"Tiger Skin Brothel"},
	{"Pleasure Domes"},
	{"Liberty City Outside"},
	{"Liverty City Inside"},
	{"Gang House"},
	{"Colonel Furhberger's House"},
	{"Crack Den"},
	{"Warehouse 1"},
	{"Warehouse 2"},
	{"Sweet's Garage"},
	{"Lil' Probe Inn Toilet"},
	{"Unused Safe House"},
	{"RC Battlefield"},
	{"Barber 1"},
	{"Barber 2"},
	{"Barber 3"},
	{"Tatoo parlour 1"},
	{"Tatoo parlour 2"},
	{"Tatoo parlour 3"},
	{"LS Police HQ"},
	{"SF Police HQ"},
	{"LV Police HQ"},
	{"Car School"},
	{"8-Track"},
	{"Bloodbowl"},
	{"Dirt Track"},
	{"Kickstart"},
	{"Vice Stadium"},
	{"SF Garage"},
	{"LS Garage"},
	{"SF Bomb Shop"},
	{"Blueberry Warehouse"},
	{"LV Warehouse 1"},
	{"LV Warehouse 2"},
	{"Catigula's Hidden Room"},
	{"Bank"},
	{"Bank - Behind Desk"},
	{"LS Atruim"},
	{"Bike School"}
};

new FishNamesAmount = 9;
new FishNames[9][20] = {
{"Shark"},
{"Stingray"},
{"Carp"},
{"Tuna"},
{"Trout"},
{"Catfish"},
{"Perch"},
{"Clean"},
{"Perch"}
};

enum MDCRECORS
{
	mID,
	mCharge[128],
	mDate
}
new CriminalRecord[MAX_PLAYERS][MAX_WANTEDS][MDCRECORS];

enum p_Info
{
	pDatabaseID,
	pRegistered,
	pCash,
	pBank,
	pSkin,
	pSex,
	pAge,
	pOrigin[256],
	pLevel,
	pExp,
	pHours,
	pAdmin,
	pHelper,
	pInt,
	pWorld,
	pJailed,
	pJailTime,
	pBanned,
	pWarns,
	pDonateRank,
	pCarLic,
	pTaxiLic,
	pWepLic,
	pFlyLic,
	Float:pPosX,
	Float:pPosY,
	Float:pPosZ,
	Float:pPosA,
	Float:pLastX,
	Float:pLastY,
	Float:pLastZ,
	Float:pLastA,
	pLastInt,
	pLastVW,
	pDied,
	pFightStyle,
	pPen,
	pNote1[256],
	pNote1s,
	pNote2[256],
	pNote2s,
	pNote3[256],
	pNote3s,
	pAttributes[256],
	pForumName[128],
	pPayCheckMade,
	pPayCheckMoney,
	pUpgrade,
	pPayDayTime,
	Float:pSHealth,
	pCellPhone,
	pNumber,
	pSavings,
	pHouseKey,
	pMeleeWep,
	pPerm1,
	pPerm2,
	pAmmo1,
	pAmmo2,
	pRadio,
	pChannel,
	pOwnedChannel,
	pAuthed,
	pCrashed,
	pMask,
	pAccentOn,
	pAccent[128],
	pBMX,
	pCarKey,
	pVehicles,
	pVehSlot,
	pSpareKey,
	Float:pHunger,
	pLighter,
	pCigars,
	pBizKey,
	pWorkOn,
	pWalk,
	Float:pArmour,
	pHasArmour,
	pFaction,
	pRank,
	pBadgeNumber,
	pDriveWarns,
	pJailTime2,
	pArrested,
	pTalk,
	pSwat,
	pSlot,
	pTickets[10],
	pFines,
	pCanJob,
	pJob,
	pJobRank,
	pCareer,
	pSideJob,
	pSpawnType,
	pSpawnLSPD,
	pPrisoned,
	pDrug[21],
	pDrugAmount[21],
	pSeeds,
	pChannels,
	pPocketPhone,
	pSpawnedCar,
	pTookGun,
	pSprayPermission,
	pCheques,
	pOwnGarage,
	pActive
}
new PlayerInfo[MAX_PLAYERS][p_Info];

enum PLANTS_INFO
{
	pID,
	pPlanter[MAX_PLAYER_NAME],
	pGrowTime,
	Float:pX,
	Float:pY,
	Float:pZ,
	pMade,
	pObject,
	Text3D:pLabel,
	pPlanted
}
new CropsInfo[MAX_PLANTS][PLANTS_INFO];

enum EMERGANCY_INFO
{
	callType[64],
	callCaller,
	callSituation[128],
	callLocation[64],
	callTrace[64],
	callDate[64],
	callID,
	callTaken
}
new CallInfo[10][EMERGANCY_INFO];
new ToLastCallSlot = 0;

enum ARREST_INFO
{
	arrestSuspect,
	arrestOfficer,
	arrestDate[64],
	arrestLocation[64],
	arrestTime,
	arrestTaken
}
new ArrestInfo[30][ARREST_INFO];
new ToLastArrestSlot = 0;

enum POLICE_CAR_WEAPON
{
	wepID,
	wepAmmo
}

new PoliceTrunk[][POLICE_CAR_WEAPON] =
{
{25,100},
{31,250},
{29,250}
};

enum JOBS_INFO
{
	jobID,
	jobPickUp,
	Text3D:jobLabel,
	jobName[64],
	Float:jobX,
	Float:jobY,
	Float:jobZ,
	jobRanks,
	jobHighRank,
	jobRank1[64],
	jobRank2[64],
	jobRank3[64],
	jobRank4[64],
	jobRank5[64],
	jobRank6[64],
	jobRank7[64],
	jobRank8[64],
	jobRank9[64],
	jobRank10[64],
	jobSideJob,
	jobOn
}
new JobsInfo[MAX_JOBS][JOBS_INFO];

enum LABEL_INFO
{
	tID,
	Text3D:tLabel,
	tInfo[128],
	tPickUp,
	Float:tLabelX,
	Float:tLabelY,
	Float:tLabelZ,
	tColor,
	tVirtualWorld,
	tGameText,
	tLabelOn
}
new LabelsInfo[MAX_LABELS][LABEL_INFO];

enum DOOR_INFO
{
	dID,
	Text3D:dEnterLabel,
	Text3D:dExitLabel,
	dPickUp,
	dInfo[128],
	Float:dEnterX,
	Float:dEnterY,
	Float:dEnterZ,
	Float:dExitX,
	Float:dExitY,
	Float:dExitZ,
	dEnterInterior,
	dExitInterior,
	dVirtualWorld,
	dEnterMSG[128],
	dDoorOn
}
new DoorInfo[MAX_DOORS][DOOR_INFO];

enum HOUSE_INTERIORS
{
	aID,
	Float:aPosX,
	Float:aPosY,
	Float:aPosZ,
	aInterior,
	aMapName[128],
	aTeleOn
};
new HouseInteriors[MAX_INTERIORS][HOUSE_INTERIORS];

enum OBJECTS_INFO
{
	oID,
	oModel,
	oObject,
	oName[256],
	oInterior,
	oVirtualWorld,
	Float:oPosX,
	Float:oPosY,
	Float:oPosZ,
	Float:oPosRX,
	Float:oPosRY,
	Float:oPosRZ,
	oObjectOn
}
new ObjectsInfo[MAX_OBJECTS][OBJECTS_INFO];

enum INFO_STUFF
{
	cID,
	cPickUp,
	cCheckPoint,
	cVirtualWorld,
	cLabelText1[256],
	cLabelText2[256],
	cOtherInfo[256],
	Text3D:cLabel,
	Float:cPosX,
	Float:cPosY,
	Float:cPosZ,
	cInfoOn
}
new CPTInfo[MAX_INFOS][INFO_STUFF];

enum BANK_INFO
{
	bID,
	bInterior,
	bInfo[126],
	Float:bPosX,
	Float:bPosY,
	Float:bPosZ,
	bBankOn
}
new BankInfo[MAX_BANKS][BANK_INFO];

enum ATM_INFO
{
	atmID,
	atmInterior,
	atmInfo[126],
	atmPickUp,
	Text3D:atmLabel,
	Float:atmPosX,
	Float:atmPosY,
	Float:atmPosZ,
	atmAtmOn,
}
new ATMInfo[MAX_ATMS][ATM_INFO];

enum VEHICLE_INFO
{
	vID,
	vModel,
	vColor1,
	vColor2,
	vType,
	Float:vPosX,
	Float:vPosY,
	Float:vPosZ,
	Float:vPosA,
	vPlate[64],
	vInfo[265],
	vVehicle,
	vFaction,
	vCarOn
}
new CityVehicles[MAX_VEHICLES][VEHICLE_INFO];

enum GAS_INFO
{
	gID,
	Text3D:gLabel,
	gPickUp,
	Float:gPosX,
	Float:gPosY,
	Float:gPosZ,
	gPrice,
	ggInfo[265],
	gStationOn
}
new GasStation[MAX_GAS_STATIONS][GAS_INFO];

enum FINE_INFO
{
	fineID,
	fineName,
	fineAgency[128],
	fineCop[MAX_PLAYER_NAME],
	finePrice,
	fineReason[128],
	fineOn
};
new FineInfo[MAX_FINES][FINE_INFO];


enum COMPLEX_INFO
{
	cxID,
	Text3D:cxLabel,
	cxPickup,
	Float:cxEnterX,
	Float:cxEnterY,
	Float:cxEnterZ,
	Float:cxExitX,
	Float:cxExitY,
	Float:cxExitZ,
	cxName[128],
	cxInfo[128],
	cxEntranceMSG[128],
	cxInterior,
	cxWorld,
	cxOn
};
new ComplexInfo[MAX_COMPLEX][COMPLEX_INFO];

enum BIZ_INFO
{
	bizID,
	Float:bizPosX,
	Float:bizPosY,
	Float:bizPosZ,
	Float:bizExitX,
	Float:bizExitY,
	Float:bizExitZ,
	bizPickUp,
	bizName[128],
	bizInfo[128],
	bizEnterMSG[128],
	bizOwner[MAX_PLAYER_NAME],
	bizOwned,
	bizLocked,
	bizPrice,
	bizLevelbuy,
	bizInterior,
	bizWorld,
	bizCash,
	bizType,
	bizEntrance,
	bizRadio,
	bizRadioOn,
	bizRadioURL[256],
	bizOn
};
new BizInfo[MAX_BIZ][BIZ_INFO];

enum HOUSE_INFO
{
	hID,
	Text3D:hLabel,
	hCheckPoint,
	Float:hEntranceX,
	Float:hEntranceY,
	Float:hEntranceZ,
	Float:hExitX,
	Float:hExitY,
	Float:hExitZ,
	hInfo[128],
	hOwner[MAX_PLAYER_NAME],
	hOwned,
	hLocked,
	hPrice,
	hLevelbuy,
	hRentprice,
	hRentable,
	hInterior,
	hWorld,
	hCash,
	hFurnitures,
	hWeapon[10],
	hAmmo[10],
	hHouseOn,
	Float:hCheckPosX,
	Float:hCheckPosY,
	Float:hCheckPosZ,
	hRadio,
	hRadioOn,
	hRadioURL[256]
};
new HouseInfo[MAX_HOUSES][HOUSE_INFO];

enum FURNITURE_INFO
{
	fID,
	fModel,
	fObject,
	fName[128],
	fHouseID,
	fInterior,
	fVirtualWorld,
	fMarketPrice,
	Float:fPosX,
	Float:fPosY,
	Float:fPosZ,
	Float:fPosRX,
	Float:fPosRY,
	Float:fPosRZ,
	fLocked,
	fOpened,
	fOn,
	fTextu,
	fIndex,
	fMode,
	fTxd,
	fTexture
}
new FurnitureInfo[MAX_HOUSES][MAX_FURNITURE][FURNITURE_INFO];

enum FOODSTANDS_INFO
{
	fID,
	Text3D:fLabel,
	fPickUp,
	fObject,
	fInfo[128],
	Float:fPosX,
	Float:fPosY,
	Float:fPosZ,
	Float:fPosRX,
	Float:fPosRY,
	Float:fPosRZ,
	fStandOn
}
new FoodStand[MAX_FOOD_STANDS][FOODSTANDS_INFO];

enum GUN_DROPS_INFO
{
	gunID,
	gunAmmo,
	gunObject,
	Float:gunPosX,
	Float:gunPosY,
	Float:gunPosZ,
	gunDropped
}
new WeaponDropInfo[MAX_WEP_DROPS][GUN_DROPS_INFO];


new StoreSkins[276] = {
1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,
50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,72,73,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,
97,98,99,100,101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,120,121,122,123,124,125,126,127,128,129,130,131,
132,133,134,135,136,137,138,139,140,141,142,143,144,145,146,147,148,150,151,152,153,154,155,156,157,158,159,160,161,162,163,164,165,166,
167,168,169,170,171,172,173,174,175,176,177,178,179,180,181,182,183,184,185,186,187,188,189,190,191,192,193,194,195,196,197,198,199,200,201,
202,203,204,205,206,207,208,209,210,211,212,213,214,215,216,217,218,219,220,221,222,223,224,225,226,227,228,229,230,231,232,233,234,235,236,
237,238,239,240,241,242,243,244,245,246,247,248,249,250,251,252,253,254,255,256,257,258,259,260,261,262,263,268,269,270,271,
272,273,289,290,291,292,293,294,295,296,297,298,299
};

new LSPDSkins[14] = {
281,265,266,267,280,284,300,301,303,304,305,306,307,309
};

new LSFDSkins[7] = {
274,275,276,277,278,279,308
};

new GovSkins[6] = {
24,147,163,164,165,166
};

new NewsSkins[7] = {
215,217,290,295,299,22,59
};

new GunObjects[47][0] = { // (c) gimini
	{0},// Emty
	{331},// Brass Knuckles
	{333},// Golf Club
	{334},// Nitestick
	{335},// Knife
	{336},// Baseball Bat
	{337},// Showel
	{338},// Pool Cue
	{339},// Katana
	{341},// Chainsaw
	{321},// Purple Dildo
	{322},// Small White Dildo
	{323},// Long White Dildo
	{324},// Vibrator
	{325},// Flowers
	{326},// Cane
	{342},// Grenade
	{343},// Tear Gas
	{344},// Molotov
	{0},
	{0},
	{0},
	{346},// Glock
	{347},// Silenced Colt
	{348},// Desert Eagle
	{349},// Shotgun
	{350},// Sawn Off
	{351},// Combat Shotgun
	{352},// Micro UZI
	{353},// MP5
	{355},// AK47
	{356},// M4
	{372},// Tec9
	{357},// Rifle
	{358},// Sniper Rifle
	{359},// Rocket Launcher
	{360},// HS Rocket Launcher
	{361},// Flamethrower
	{362},// Minigun
	{363},// Detonator
	{364},// Detonator Button
	{365},// Spraycan
	{366},// Fire Extinguisher
	{367},// Camera
	{368},// Nightvision
	{368},// Infrared Vision
	{371}// Parachute
};

enum FACTION_INFO
{
	fID,
	fPickUp,
	fName[50],
	Float:fX,
	Float:fY,
	Float:fZ,
	fSpawnInt,
	fRank1[35],
	fRank2[35],
	fRank3[35],
	fRank4[35],
	fRank5[35],
	fRank6[35],
	fRank7[35],
	fRank8[35],
	fRank9[35],
	fRank10[35],
	fRank11[35],
	fRank12[35],
	fRank13[35],
	fRank14[35],
	fRank15[35],
	fRank16[35],
	fRank17[35],
	fRank18[35],
	fRank19[35],
	fRank20[35],
	fJoinRank,
	fType,
	fRankAmount,
	fChatON,
	fColor,
	fLeaderRank,
	Float:fUniformX,
	Float:fUniformY,
	Float:fUniformZ,
	fON
};
new Factions[MAX_FACTIONS][FACTION_INFO];

enum FACTION_DOORS
{
	dID,
	dPickUp,
	dInfo[128],
	Float:dEnterX,
	Float:dEnterY,
	Float:dEnterZ,
	Float:dExitX,
	Float:dExitY,
	Float:dExitZ,
	dEnterInterior,
	dExitInterior,
	dVirtualWorld,
	dFaction,
	dLocked,
	dWithVehicle,
	Float:dEnterAngle,
	Float:dExitAngle,
	dDoorOn
}
new FactionDoors[MAX_FACTION_DOORS][FACTION_DOORS];

enum MOVEABLE_DOORS
{
	doorID,
	doorModel,
	doorObject,
	doorName[256],
	doorInterior,
	doorVirtualWorld,
	doorFaction,
	doorOpened,
	Float:doorPosX,
	Float:doorPosY,
	Float:doorPosZ,
	Float:doorPosRX,
	Float:doorPosRY,
	Float:doorPosRZ,
	Float:doorOpenSpeed,
	Float:doorMoveX,
	Float:doorMoveY,
	Float:doorMoveZ,
	doorObjectOn
}
new Doors[MAX_OBJECTS][MOVEABLE_DOORS];

enum MOVEABLE_GATES
{
	gateID,
	gateOpening,
	gateModel,
	gateObject,
	gateName[256],
	gateInterior,
	gateVirtualWorld,
	gateFaction,
	gateOpened,
	Float:gatePosX,
	Float:gatePosY,
	Float:gatePosZ,
	Float:gatePosRX,
	Float:gatePosRY,
	Float:gatePosRZ,
	Float:gateOpenSpeed,
	Float:gateMoveX,
	Float:gateMoveY,
	Float:gateMoveZ,
	Float:gateMoveRX,
	Float:gateMoveRY,
	Float:gateMoveRZ,
	gateSound,
	gateSoundLength,
	gateObjectOn
}
new Gates[MAX_OBJECTS][MOVEABLE_GATES];

enum CCTV_INFO
{
	tvID,
	tvFaction,
	tvObject,
	tvName[256],
	tvInterior,
	tvVirtualWorld,
	Float:tvPosX,
	Float:tvPosY,
	Float:tvPosZ,
	Float:tvPosRX,
	Float:tvPosRY,
	Float:tvPosRZ,
	tvObjectOn
}
new CCTVInfo[MAX_OBJECTS][CCTV_INFO];

enum DEALERSHIPS_INFO
{
	dealerID,
	Float:dealerPosX,
	Float:dealerPosY,
	Float:dealerPosZ,
	dealerInfo[128],
	dealerPickUp,
	dealerOn
}
new DealersInfo[MAX_DEALERSHIPS][DEALERSHIPS_INFO];

enum RENT_VEHICLES
{
	rCarModel,
	rCarPrice
};
new RentPrices[][RENT_VEHICLES] = {
{401, 350},
{404, 325},
{421, 375},
{467, 350},
{534, 450},
{462, 175}
};

enum DEALERSHIP_VEHICLES
{
	dCarModel,
	dCarPrice
}
new CarsPrices[][DEALERSHIP_VEHICLES] = {
{462, 2000},
{525, 20000},
{543, 12500},
{473, 14000},
{463, 17000},
{440, 17540},
{532, 38700},
{600, 17000},
{491, 19400},
{410, 20100},
{516, 21000},
{418, 14500},
{586, 9700},
{467, 28000},
{547, 39500},
{401, 41500},
{549, 41999},
{436, 21999},
{420, 25500},
{517, 25999},
{589, 25999},
{518, 25999},
{527, 25999},
{551, 25999},
{439, 25999},
{445, 26000},
{478, 26000},
{492, 28999},
{422, 31000},
{529, 31500},
{405, 32500},
{466, 32999},
{546, 33999},
{540, 35500},
{474, 35999},
{526, 35999},
{500, 36000},
{483, 36000},
{545, 36000},
{419, 36781},
{561, 36999},
{459, 41000},
{421, 41500},
{458, 41500},
{550, 41999},
{576, 42500},
{412, 44500},
{438, 45500},
{533, 45999},
{534, 45999},
{585, 45999},
{507, 45999},
{554, 46000},
{567, 46500},
{536, 46500},
{599, 46500},
{575, 46999},
{479, 51400},
{489, 51750},
{431, 56000},
{523, 56000},
{575, 56500},
{542, 56500},
{413, 60000},
{496, 60299},
{535, 60999},
{508, 61800},
{426, 66500},
{404, 66500},
{562, 92999},
{580, 75999},
{482, 76500},
{566, 74000},
{587, 97000},
{423, 52600},
{588, 45000},
{559, 95000},
{579, 57000},
{400, 58000},
{453, 65000},
{402, 67000},
{558, 50000},
{480, 43800},
{408, 43800},
{602, 65200},
{565, 65200},
{555, 74000},
{484, 120000},
{430, 98000},
{409, 100100},
{560, 220000},
{454, 78000},
{603, 74000},
{415, 104000},
{446, 400000},
{563, 400000},
{417, 400000},
{487, 400000},
{593, 400000},
{481, 1500},
{509, 1000},
{477, 42500},
{468, 34000},
{521, 47000},
{541, 120500},
{429, 76000}
};

new DonateCars[][DEALERSHIP_VEHICLES] = {
{481, 12000},
{509, 12000},
{477, 425000},
{468, 55000},
{521, 100000},
{541, 555999},
{429, 560000}
};

enum INSURANCE_INFO
{
	insuranceModel,
	insurancePrice
}
new InsurancesPrice[][INSURANCE_INFO] = {
{462, 350},
{525, 400},
{543, 410},
{473, 500},
{463, 510},
{440, 520},
{532, 530},
{600, 540},
{491, 560},
{410, 570},
{516, 580},
{418, 600},
{586, 605},
{467, 610},
{547, 620},
{401, 630},
{549, 630},
{436, 630},
{420, 630},
{517, 700},
{589, 710},
{518, 720},
{527, 720},
{551, 720},
{439, 720},
{445, 750},
{478, 750},
{492, 800},
{422, 800},
{529, 850},
{405, 850},
{466, 870},
{546, 870},
{540, 870},
{474, 900},
{526, 900},
{500, 900},
{483, 900},
{545, 900},
{419, 910},
{561, 910},
{459, 910},
{421, 920},
{458, 920},
{550, 950},
{576, 950},
{412, 950},
{438, 950},
{533, 1000},
{534, 1000},
{585, 1000},
{507, 1000},
{554, 1100},
{567, 1100},
{536, 1100},
{599, 1100},
{575, 1100},
{479, 1150},
{489, 1150},
{431, 1150},
{523, 1150},
{575, 1150},
{542, 1150},
{413, 1150},
{496, 1150},
{535, 1150},
{508, 1300},
{426, 1600},
{404, 1400},
{562, 1650},
{580, 1450},
{482, 1350},
{566, 1700},
{587, 1690},
{423, 2000},
{588, 2500},
{559, 2100},
{579, 1900},
{400, 1350},
{453, 3000},
{402, 1850},
{558, 1850},
{480, 1900},
{408, 2500},
{602, 1900},
{565, 2600},
{555, 2600},
{484, 3500},
{430, 3500},
{409, 3000},
{560, 4500},
{454, 5000},
{603, 5150},
{415, 7100},
{446, 6510},
{563, 11000},
{417, 12300},
{487, 13000},
{593, 21000},
{509, 100},
{481, 100},
{477, 3000},
{468, 1500},
{521, 3500},
{541, 9000},
{429, 8500}
};

enum OWNED_CARS_INFO
{
	carID,
	carModel,
	carColor1,
	carColor2,
	Float:carParkX,
	Float:carParkY,
	Float:carParkZ,
	Float:carParkA,
	carPlate[64],
	carOwner[128],
	carOwned,
	carSpawned,
	carAlarm,
	carLock,
	carImmob,
	carInsurances,
	carDestroyed,
	carGps,
	carOwnerSlot,
	carFuel,
	carRegistered,
	carBroken,
	carTrunkWep[10],
	carTrunkAmmo[10],
	carComponent[14],
	carPaintJob,
	carRadio,
	carRadioOn,
	carRadioURL[256],
	carTicket[10],
	carDupKey,
	carTrunkLock,
	carComps,
	carOn,
	carDrug[21],
	carDrugAmount[21],
	carEngineLife,
	carBatteryLife
}
new VehicleInfo[MAX_VEHICLES][OWNED_CARS_INFO];

enum OWNED_CARS_STATUS
{
	carID,
	carModel,
	carPlate[64],
	carAlarm,
	carLock,
	carImmob,
	carInsurances,
	carDestroyed,
	carGps,
	carOn
}
new VehicleStatus[MAX_PLAYERS][MAX_OWNED_VEHICLES][OWNED_CARS_STATUS];

enum SPIKE_INFO
{
	sCreated,
    Float:sX,
    Float:sY,
    Float:sZ,
    sObject,
};
new SpikeInfo[MAX_OBJECTS][SPIKE_INFO];

enum PLAYER_VEHICLES
{
	pVeh1[512],
	pVeh2[512],
	pVeh3[512]
}
new PlayerVehicle[MAX_PLAYERS][PLAYER_VEHICLES];

enum PARK_METERS
{
	parkID,
	Float:parkPosX,
	Float:parkPosY,
	Float:parkPosZ,
	Float:parkPosRX,
	Float:parkPosRY,
	Float:parkPosRZ,
	Text3D:parkLabel,
	parkObject,
	parkName[256],
	parkMinutes,
	parkArea,
	parkOn
}
new ParkMeters[MAX_PARK_METERS][PARK_METERS];

enum APB_INFO
{
	apbID,
	apbCharge[256],
	apbSuspect[MAX_PLAYER_NAME],
	apbOfficer[MAX_PLAYER_NAME],
	apbPage,
	apbOn
}
new ApbInfo[MAX_APBS][APB_INFO];

enum COMP_INFO
{
	compID,
	compPrice,
}

new Wheels[][COMP_INFO] = {
{1025, 10500},
{1073, 10510},
{1074, 10530},
{1075, 10560},
{1076, 10580},
{1078, 10630},
{1079, 10640},
{1080, 10680},
{1081, 10690},
{1082, 10710},
{1083, 10730},
{1084, 10750},
{1085, 10760},
{1096, 10780},
{1097, 10810},
{1098, 10840}
};
new Spoilers[][COMP_INFO] = {
{1000, 10000},
{1001, 10020},
{1002, 10050},
{1003, 10080},
{1014, 10090},
{1015, 10120},
{1016, 10130},
{1023, 10150},
{1049, 10180},
{1050, 10220},
{1058, 10250},
{1060, 10280},
{1138, 10310},
{1139, 10320},
{1146, 10340},
{1147, 10360},
{1158, 10370},
{1162, 10390},
{1163, 10420},
{1164, 10450}
};
new Scoops[][COMP_INFO] = {
{1004, 10000},
{1005, 10020},
{1011, 10050},
{1012, 10080}
};
new Roofs[][COMP_INFO] = {
{1006, 9000},
{1032, 9020},
{1033, 9040},
{1035, 9060},
{1038, 9090},
{1053, 9100},
{1054, 9130},
{1055, 9160},
{1061, 9190},
{1067, 9210},
{1068, 9230},
{1088, 9250},
{1091, 9270},
{1103, 9280},
{1128, 9300},
{1130, 9320},
{1131, 9330}
};
new Sideskirts[][COMP_INFO] = {
{1007, 11000},
{1017, 11010},
{1026, 11040},
{1027, 11060},
{1030, 11090},
{1031, 11110},
{1036, 11140},
{1039, 11160},
{1040, 11180},
{1041, 11210},
{1042, 11230},
{1047, 11250},
{1048, 11260},
{1051, 11290},
{1052, 11310},
{1056, 11320},
{1057, 11340},
{1062, 11350},
{1063, 11370},
{1069, 11390},
{1070, 11410},
{1071, 11430},
{1072, 11450},
{1090, 11470},
{1093, 11490},
{1094, 11510},
{1095, 11520},
{1099, 11530},
{1100, 11550},
{1101, 11590},
{1102, 11610},
{1106, 11630},
{1107, 11640},
{1108, 11650},
{1118, 11660},
{1119, 11690},
{1120, 11710},
{1121, 11730},
{1122, 11740},
{1124, 11790},
{1133, 11810},
{1134, 11830},
{1137, 11860}
};
new Exhausts[][COMP_INFO] = {
{1018, 5000},
{1019, 5000},
{1020, 5000},
{1021, 5000},
{1022, 5000},
{1028, 5000},
{1029, 5000},
{1034, 5000},
{1037, 5000},
{1043, 5000},
{1044, 5000},
{1045, 5000},
{1046, 5000},
{1059, 5000},
{1064, 5000},
{1065, 5000},
{1066, 5000},
{1089, 5000},
{1092, 5000},
{1104, 5000},
{1105, 5000},
{1113, 5000},
{1114, 5000},
{1126, 5000},
{1127, 5000},
{1129, 5000},
{1132, 5000},
{1135, 5000},
{1136, 5000},
{1018, 5000},
{1018, 5000},
{1018, 5000},
{1018, 5000},
{1018, 5000},
{1018, 5000}
};
