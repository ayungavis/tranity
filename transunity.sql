-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 09, 2018 at 12:00 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `transunity`
--

-- --------------------------------------------------------

--
-- Table structure for table `ajails`
--

CREATE TABLE `ajails` (
  `id` int(11) NOT NULL,
  `player` varchar(255) DEFAULT NULL,
  `victim` varchar(255) DEFAULT NULL,
  `minutes` int(255) DEFAULT NULL,
  `reason` varchar(255) DEFAULT NULL,
  `data` varchar(255) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `playerIP` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `apaylog`
--

CREATE TABLE `apaylog` (
  `id` int(11) NOT NULL,
  `name` varchar(24) DEFAULT NULL,
  `target` varchar(24) DEFAULT NULL,
  `amount` int(255) DEFAULT NULL,
  `data` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `apbs`
--

CREATE TABLE `apbs` (
  `id` int(11) NOT NULL,
  `charge` varchar(128) DEFAULT NULL,
  `suspect` varchar(100) DEFAULT NULL,
  `officer` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ateles`
--

CREATE TABLE `ateles` (
  `id` int(11) NOT NULL,
  `mapname` varchar(255) DEFAULT NULL,
  `posx` float DEFAULT NULL,
  `posy` float DEFAULT NULL,
  `posz` float DEFAULT NULL,
  `interior` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ateles`
--

INSERT INTO `ateles` (`id`, `mapname`, `posx`, `posy`, `posz`, `interior`) VALUES
(1, '2 Room house', -79.9677, 1384.4, 1078.21, 10),
(2, '2 Room house', -48.9719, 1458.43, 1084.61, 10),
(3, '3 Room house', 43.0151, 1439.27, 1081.41, 10),
(4, '3 Room house & 2 story', 7.624, 1306.46, 1081.83, 10),
(5, '4 Room house & 2 story', 82.9526, 1272.7, 1078.89, 10),
(6, '4 Room house & 2 story', 156.159, 1410.9, 1085.43, 10),
(7, '3 Room house', 289.978, 1502.48, 1077.42, 10),
(8, '3 Room house', 329.34, 1513.91, 1084.82, 10),
(9, '2 Room house', 389.72, 1505.8, 1079.09, 10),
(10, '3 Room house', 374.889, 1378.46, 1078.8, 10),
(11, '3 Room house', 448.284, 1355.15, 1081.22, 10),
(12, '4 Room house & 2 story', 509.643, 1355.18, 1075.78, 10),
(13, '3 Room house & strip', 745.115, 1413.56, 1101.42, 10),
(14, '2 Room house', 295.12, 1285.96, 1077.45, 10),
(15, '2 Room house', 191.226, 1289.83, 1081.13, 10),
(16, '2 Room house', 290.792, 1243.24, 1081.68, 10),
(17, '2 Room house', 244.137, 1147.07, 1080.16, 10),
(18, '3 Room house', 326.23, 1076.27, 1081.25, 10),
(19, 'Richman house 5 rooms & 2 bathrooms', 199.012, 1112.33, 1082.21, 10),
(20, 'Richman house 5 rooms & 2 bathrooms', 278.107, 1059.51, 1082.45, 10),
(21, 'Richman house 5 rooms & 2 bathrooms', 263.095, 979.613, 1082.68, 10),
(22, 'Small 2 room house', 2262.59, -1121.4, 1047.87, 10),
(23, 'Small 1 room house', 2284.72, -1125.3, 1049.92, 10),
(24, '3 Room house', 2370.67, -1095.66, 1048.62, 10),
(25, 'Very small 1 house', 2313.37, -1229.86, 1046.41, 10),
(26, 'Small 2 room house', 2244.02, -1029.65, 1046.77, 10),
(27, '3 Room house', 2272.24, -1242.75, 1047.59, 10),
(28, '4 Room house', 2150.06, -1217.54, 1048.11, 10),
(29, '2 Room house', 2364.25, -1074.12, 1046.76, 10),
(30, 'Big richman house', 2373.28, -1182.33, 1052.2, 10),
(31, 'TINY room', 243.402, 323.15, 998.591, 10),
(32, 'TINY room', 266.711, 321.534, 996.14, 10),
(33, 'TINY room', 361.697, 304.114, 995.897, 10),
(34, 'TINY room', 2188.76, -1073.55, 1049.48, 10),
(35, 'TINY 2 room', 2254.75, -1112.09, 1048.12, 10),
(36, 'TINY 2 room', 2297.51, -1093.72, 1048.87, 10),
(38, 'Caravan', 1.64811, -3.23748, 999.428, 2),
(39, 'Betting shop', -2154.34, 618.792, 1055.45, 10),
(41, 'Impound lot', -1210.92, -1074.81, 128.266, 0),
(42, 'tet', 1459.36, -1763.07, 3285.29, 10),
(43, 'hospital', 1193.62, -1317.31, 13.3984, 0);

-- --------------------------------------------------------

--
-- Table structure for table `atms`
--

CREATE TABLE `atms` (
  `id` int(11) NOT NULL,
  `posx` float DEFAULT NULL,
  `posy` float DEFAULT NULL,
  `posz` float DEFAULT NULL,
  `interior` int(11) DEFAULT NULL,
  `info` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `atms`
--

INSERT INTO `atms` (`id`, `posx`, `posy`, `posz`, `interior`, `info`) VALUES
(21, 379.479, -2060.07, 7.83594, 0, 'Fishing Pier ATM'),
(24, 1462.43, -1011.22, 26.8438, 0, 'Mulholland ATM'),
(26, 1929.53, -1781.71, 13.5469, 0, 'IdleWood gas ATM'),
(28, 2232.33, -1157.01, 25.8906, 0, 'Jefferson Motel ATM'),
(31, 1317.82, -898.705, 39.5781, 0, 'VineWood 24/7 ATM'),
(33, 1000.71, -927.93, 42.3281, 0, 'VineWood GasStation ATM'),
(35, 660.393, -575.662, 16.3359, 0, 'Dillimore Gas Station ATM'),
(36, -1676.73, 430.634, 7.17969, 0, 'San Fierro GasStation ATM'),
(37, -2419.42, 965.881, 45.2969, 0, 'San Fierro GasStation ATM'),
(38, -1569.02, -2728.28, 48.7435, 0, 'Whetstone GasStation ATM'),
(39, 1378.2, 466.747, 20.2064, 0, 'Montogomery GasStation ATM'),
(40, -79.8514, -1171.16, 2.1544, 0, 'Flint County ATM'),
(41, 2120.17, 897.543, 11.1797, 0, 'LV GasStation No.1'),
(42, 2634.88, 1128.76, 11.1797, 0, 'LV GasStation No.2'),
(43, 2188.64, 2472.41, 11.2422, 0, 'LV GasStation No.3'),
(44, 639.877, 1685.1, 7.1875, 0, 'LV GasStation No.5'),
(45, -1470.79, 1872.19, 32.6328, 0, 'Tierra Robada ATM'),
(46, -1321.73, 2697.08, 50.2663, 0, 'El Quebrados ATM'),
(47, 1154.64, -1465.05, 15.7981, 0, 'Verona Mall ATM'),
(50, 1832.56, -1838.74, 13.5781, 0, 'Unity'),
(49, 1730.01, -1865.55, 13.5725, 0, 'Spawn');

-- --------------------------------------------------------

--
-- Table structure for table `banks`
--

CREATE TABLE `banks` (
  `id` int(11) NOT NULL,
  `posx` float DEFAULT NULL,
  `posy` float DEFAULT NULL,
  `posz` float DEFAULT NULL,
  `interior` int(11) DEFAULT NULL,
  `info` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `banks`
--

INSERT INTO `banks` (`id`, `posx`, `posy`, `posz`, `interior`, `info`) VALUES
(3, 530.031, 1429.76, 2001.18, 0, '/info');

-- --------------------------------------------------------

--
-- Table structure for table `bans`
--

CREATE TABLE `bans` (
  `id` int(11) NOT NULL,
  `name` varchar(24) DEFAULT NULL,
  `reason` varchar(100) DEFAULT NULL,
  `playerIP` varchar(100) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `business`
--

CREATE TABLE `business` (
  `id` int(11) NOT NULL,
  `posx` float DEFAULT NULL,
  `posy` float DEFAULT NULL,
  `posz` float DEFAULT NULL,
  `exitx` float DEFAULT NULL,
  `exity` float DEFAULT NULL,
  `exitz` float DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `info` varchar(255) DEFAULT NULL,
  `entermsg` varchar(255) DEFAULT NULL,
  `owner` varchar(255) DEFAULT NULL,
  `owned` int(11) DEFAULT NULL,
  `locked` int(11) DEFAULT NULL,
  `price` int(64) DEFAULT NULL,
  `levelbuy` int(64) DEFAULT NULL,
  `interior` int(64) DEFAULT NULL,
  `world` int(64) DEFAULT NULL,
  `cash` int(255) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `entrance` int(64) DEFAULT NULL,
  `radio` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `business`
--

INSERT INTO `business` (`id`, `posx`, `posy`, `posz`, `exitx`, `exity`, `exitz`, `name`, `info`, `entermsg`, `owner`, `owned`, `locked`, `price`, `levelbuy`, `interior`, `world`, `cash`, `type`, `entrance`, `radio`) VALUES
(2, 1928.86, -1776.31, 13.5469, -25.8404, -187.803, 1003.55, 'Business', '24-7 Store', 'HINT: /buy pentru a cumpara bunuri.', 'The State', 0, 0, 420000, 3, 17, 0, 42439, 3, 0, 0),
(3, 1833.35, -1842.59, 13.5781, -25.9029, -187.493, 1003.55, 'Business', '24-7 Store', 'HINT: /buy pentru a cumpara bunuri.', 'The State', 0, 0, 200000, 3, 17, 1, 131913, 3, 50, 0),
(4, 2105.49, -1806.51, 13.5547, 372.425, -133.064, 1001.49, 'PIZZA STACK', 'Restaurant', 'HINT: Type /eatfood pentru a cumpara mancare.', 'The State', 0, 0, 350000, 7, 5, 2, 35, 1, 0, 1),
(5, 1567.94, -1897.88, 13.5609, -2153.91, 619.234, 1055.74, 'Business', 'Betting Place', 'Welcome to the betting place, you can play blackjack.', 'The State', 0, 0, 400000, 3, 1, 3, 0, 12, 0, 0),
(6, 1837.04, -1682.34, 13.323, 493.476, -24.9603, 1000.67, 'Business', 'Disco', 'HINT: /buydrink pentru a cumpara o bautura.', 'The State', 0, 0, 700000, 3, 17, 4, 183, 11, 0, 0),
(8, 2397.82, -1899.18, 13.5469, 365.022, -11.347, 1001.85, 'Business', 'Restaurant', 'HINT: Type /eatfood pentru a cumpara mancare.', 'The State', 0, 0, 350000, 3, 9, 5, 0, 1, 0, 0),
(9, 2068.58, -1779.87, 13.5596, -204.192, -43.8591, 1002.27, 'Business', 'Tattoo', 'Welcome to the Tattoo shop.', 'The State', 0, 0, 280000, 3, 3, 6, 0, 10, 0, 0),
(10, 2139.14, -1742.78, 13.5524, -100.402, -24.4958, 1000.72, 'Business', 'Sex Shop', 'Bine ai venit in sex shop.', 'The State', 0, 0, 350000, 3, 3, 7, 0, 7, 0, 0),
(11, 2001.8, -1761.96, 13.5391, 6.09612, -31.2716, 1003.55, 'Business', '24-7 Store', 'HINT: /buy pentru a cumpara bunuri.', 'The State', 0, 0, 350000, 3, 10, 8, 1292, 3, 0, 0),
(12, 1978.74, -1761.96, 13.5469, -228.995, 1401.12, 27.7656, 'Business', 'Bar/Club', 'HINT: /buydrink pentru a cumpara o bautura', 'The State', 0, 0, 350000, 3, 18, 9, 140, 6, 0, 0),
(13, 1315.49, -897.927, 39.5781, -25.9461, -187.547, 1003.55, 'Business', '24-7 Store', 'HINT: /buy pentru a cumpara bunuri.', 'The State', 0, 0, 500000, 3, 17, 10, 1600, 3, 0, 0),
(14, 2101.21, -1359.51, 23.9844, -25.937, -187.745, 1003.55, 'Business', '24-7 Store', 'HINT: /buy pentru a cumpara bunuri.', 'The State', 0, 0, 350000, 3, 17, 11, 416, 3, 0, 0),
(15, 1199.29, -918.384, 43.1212, 363.212, -74.9064, 1001.51, 'Business', 'Restaurant', 'HINT: Type /eatfood pentru a cumpara mancare.', 'The State', 0, 0, 310000, 2, 10, 12, 0, 1, 0, 0),
(16, 1022.51, -1121.42, 23.8701, 2018.79, 1017.79, 996.875, 'Business', 'Casino', 'HINT: Do NOT use the GTA SA machines, type /casino for the commands.', 'The State', 0, 0, 800000, 6, 10, 13, 0, 2, 0, 0),
(17, 1631.89, -1172.91, 24.0843, -2153.95, 619.37, 1055.74, 'Business', 'Betting Place', 'Welcome to the betting place, you can play blackjack.', 'The State', 0, 0, 600000, 3, 1, 14, 0, 12, 0, 0),
(18, 1038.18, -1340.73, 13.7451, 377.145, -193.045, 1000.64, 'Business', 'Restaurant', 'HINT: Type /eatfood pentru a cumpara mancare.', 'The State', 0, 0, 450000, 3, 17, 15, 5, 1, 0, 0),
(19, 1163.18, -1585.24, 13.5469, -2153.88, 619.484, 1055.74, 'Business', 'Betting Place', 'Welcome to the betting place, you can play blackjack.', 'The State', 0, 0, 600000, 3, 1, 16, 0, 12, 0, 0),
(20, 2129.92, -1761.48, 13.5625, 501.981, -69.1502, 998.835, 'Business', 'Bar/Club', 'HINT: /buydrink pentru a cumpara o bautura.', 'The State', 0, 0, 320000, 4, 11, 17, 128, 6, 0, 0),
(22, 1990.76, -1283.42, 23.9661, 1212.06, -26.4965, 1000.95, 'Business', 'Bar/Club', 'HINT: /buydrink pentru a cumpara o bautura.', 'The State', 0, 0, 550000, 4, 3, 18, 74, 6, 0, 0),
(23, 2139.43, -1176.74, 23.9922, -25.8845, -185.869, 1003.55, 'Business', '24-7 Store', 'HINT: /buy pentru a cumpara bunuri.', 'The State', 0, 0, 420000, 3, 17, 19, 266, 3, 0, 0),
(24, 1952.4, -2041.37, 13.5469, 501.981, -69.1502, 998.835, 'ROUTE 66', 'Bar/Club', 'HINT: /buydrink pentru a cumpara o bautura.', 'The State', 0, 0, 400000, 5, 11, 20, 391, 6, 0, 0),
(25, 2071.01, -1793.81, 13.5533, 418.599, -83.8861, 1001.8, 'Business', 'Barber Shop', 'Welcome to the barber shop.', 'The State', 0, 0, 210000, 2, 3, 21, 0, 13, 0, 0),
(26, 649.023, -1353.92, 13.5472, -2636.7, 1402.97, 906.461, 'Business', 'Disco', 'HINT: /buydrink pentru a cumpara o bautura.', 'The State', 0, 0, 660000, 5, 3, 22, 0, 11, 0, 0),
(27, -1566.75, -2730.18, 48.7435, -25.8845, -185.869, 1003.55, 'Business', '24-7 Store', 'HINT: /buy pentru a cumpara bunuri.', 'The State', 0, 0, 200000, 3, 17, 23, 0, 3, 0, 0),
(28, 2309.67, -1643.81, 14.827, 501.941, -67.8223, 998.758, 'Business', 'Bar/Club', 'HINT: /buydrink pentru a cumpara o bautura.', 'The State', 0, 0, 660000, 4, 11, 24, 158, 6, 0, 0),
(29, 1368.68, -1279.87, 13.5469, 286.149, -40.6444, 1001.57, 'Ammu-Nation', 'Ammunation', 'HINT: /buygun pentru a cumpara arme.', 'The State', 0, 1, 9888888, 99, 1, 25, 5750, 4, 0, 0),
(30, 776.707, -1036.65, 24.2776, -2640.76, 1406.68, 906.461, '~g~ England Bar', 'Bar/Club', 'HINT: /buydrink pentru a cumpara o bautura.', 'The State', 0, 0, 500000, 2, 3, 26, 1000, 6, 200, 0),
(31, 2460.58, -1343.93, 24, -227.028, 1401.23, 27.7698, 'Business', 'Bar/Club', 'HINT: /buydrink pentru a cumpara o bautura.', 'The State', 0, 0, 100000, 3, 18, 27, 194, 6, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `cctvs`
--

CREATE TABLE `cctvs` (
  `id` int(11) NOT NULL,
  `faction` int(255) DEFAULT NULL,
  `posx` float DEFAULT NULL,
  `posy` float DEFAULT NULL,
  `posz` float DEFAULT NULL,
  `posrx` float DEFAULT NULL,
  `posry` float DEFAULT NULL,
  `posrz` float DEFAULT NULL,
  `interior` int(11) DEFAULT NULL,
  `virworld` int(64) DEFAULT NULL,
  `info` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cctvs`
--

INSERT INTO `cctvs` (`id`, `faction`, `posx`, `posy`, `posz`, `posrx`, `posry`, `posrz`, `interior`, `virworld`, `info`) VALUES
(2, 1, 2063.86, -1862.05, 43.5422, 0, 0, 109.2, 0, 0, 'Pizza Stack'),
(3, 1, 1101.66, -1419.79, 45.4649, 0, 0, 39.6, 0, 0, 'Mall'),
(4, 1, 579.106, -1211.2, 48.181, 0, 0, -178, 0, 0, 'Los Santos Bank'),
(5, 1, 2428.39, -2124.91, 28.35, 0, 0, 0, 0, 0, 'Impound Mechanics'),
(9, 1, 1971.72, -1762.11, 20.6013, 0, 0, 0, 0, 0, 'Idlewood Gas');

-- --------------------------------------------------------

--
-- Table structure for table `complexs`
--

CREATE TABLE `complexs` (
  `ID` int(11) NOT NULL,
  `EnterX` float NOT NULL,
  `EnterY` float NOT NULL,
  `EnterZ` float NOT NULL,
  `ExitX` float NOT NULL,
  `ExitY` float NOT NULL,
  `ExitZ` float NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Info` varchar(255) NOT NULL,
  `EntranceMSG` varchar(255) NOT NULL,
  `Interior` int(11) NOT NULL,
  `World` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `criminalrecords`
--

CREATE TABLE `criminalrecords` (
  `id` int(11) NOT NULL,
  `userid` int(64) NOT NULL DEFAULT '0',
  `charge` text NOT NULL,
  `date` text NOT NULL,
  `officer` int(64) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dealerships`
--

CREATE TABLE `dealerships` (
  `id` int(11) NOT NULL,
  `posx` float DEFAULT NULL,
  `posy` float DEFAULT NULL,
  `posz` float DEFAULT NULL,
  `info` varchar(128) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dealerships`
--

INSERT INTO `dealerships` (`id`, `posx`, `posy`, `posz`, `info`) VALUES
(0, 971.32, -1366.81, 13.4808, 'Market Station');

-- --------------------------------------------------------

--
-- Table structure for table `doors`
--

CREATE TABLE `doors` (
  `id` int(11) NOT NULL,
  `info` varchar(255) DEFAULT NULL,
  `posx` float DEFAULT NULL,
  `posy` float DEFAULT NULL,
  `posz` float DEFAULT NULL,
  `exitx` float DEFAULT NULL,
  `exity` float DEFAULT NULL,
  `exitz` float DEFAULT NULL,
  `enterinterior` int(11) DEFAULT NULL,
  `exitinterior` int(11) DEFAULT NULL,
  `virtualworld` int(64) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doors`
--

INSERT INTO `doors` (`id`, `info`, `posx`, `posy`, `posz`, `exitx`, `exity`, `exitz`, `enterinterior`, `exitinterior`, `virtualworld`) VALUES
(0, '~g~Los Santos Bank', 595.55, -1250.5, 18.0505, 541.096, 1414.18, 2001.18, 0, 0, 1),
(1, '~g~East beach bank', 2861.44, -1406.15, 11.7382, 541.297, 1414.38, 2001.18, 0, 0, 2),
(2, '~r~Airport lift', 1765.39, -2277.17, -2.58551, 1765.36, -2272.22, 26.796, 0, 0, 0),
(3, '~b~Binco', 2244.38, -1665.22, 15.4766, 207.712, -110.801, 1005.13, 0, 15, 0),
(4, '~b~Los Santos Police Department', 1554.82, -1675.65, 16.1953, 1556.45, -1675.69, 1101.09, 0, 0, 0),
(5, '~b~City Hall', 1481.05, -1772.12, 18.7958, 390.172, 173.842, 1008.38, 0, 3, 0),
(6, '~y~All Saints General Hospital', 1172.31, -1323.42, 15.4031, 1183.22, -1323.78, 1101.09, 0, 0, 0),
(7, '~w~Los Santos DMV', 1219.67, -1812.65, 16.5938, -2029.8, -106.676, 1035.17, 0, 3, 0),
(8, 'East Bureau', 2326.84, -1374.6, 24.0118, 1391.71, 3.14409, 1000.93, 0, 4, 0),
(9, 'West Bureau', 532.839, -1813.07, 6.57812, 1407.82, -1.3099, 1007.92, 0, 1, 1),
(10, 'Training Center', 1058.21, 1280.58, 10.8203, 1370.15, 17.0588, 1014.5, 0, 0, 0),
(11, 'Prison Department A', 136.796, 1924.16, 19.3563, 1779.86, -1576.62, 1734.94, 0, 1, 0),
(12, 'Prison Department B', 215.297, 1922.05, 18.1075, 1756.71, -1573.37, 1734.94, 0, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `factiondoors`
--

CREATE TABLE `factiondoors` (
  `id` int(11) NOT NULL,
  `faction` int(11) DEFAULT NULL,
  `info` varchar(255) DEFAULT NULL,
  `enterx` float DEFAULT NULL,
  `entery` float DEFAULT NULL,
  `enterz` float DEFAULT NULL,
  `exitx` float DEFAULT NULL,
  `exity` float DEFAULT NULL,
  `exitz` float DEFAULT NULL,
  `enterinterior` int(11) DEFAULT NULL,
  `exitinterior` int(11) DEFAULT NULL,
  `world` int(11) DEFAULT NULL,
  `withvehicle` int(11) DEFAULT NULL,
  `enterangle` float DEFAULT NULL,
  `exitangle` float DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `factiondoors`
--

INSERT INTO `factiondoors` (`id`, `faction`, `info`, `enterx`, `entery`, `enterz`, `exitx`, `exity`, `exitz`, `enterinterior`, `exitinterior`, `world`, `withvehicle`, `enterangle`, `exitangle`) VALUES
(0, 1, '~y~~h~LSPD-Armoury', 276.716, 122.134, 1004.62, 316.411, -169.753, 999.601, 10, 6, 0, 0, 0, 0),
(2, 1, '~p~to use: /enter', 299.378, -168.973, 999.594, 297.601, -168.971, 999.594, 6, 6, 0, 0, 0, 0),
(3, 1, '~b~Los Santos Police Department', 1524.48, -1677.89, 6.21875, 1580.39, -1665.35, 1090.59, 0, 0, 0, 0, 0, 0),
(4, 2, '~b~All Saints General Hospital', 1142.11, -1350.35, 1000.44, -2655.42, 1413.44, 945.536, 10, 0, 0, 0, 0, 0),
(5, 1, '~b~Prison', 1772.23, -1548.21, 9.90625, 1780.07, -1576.49, 1734.94, 0, 0, 0, 0, 0, 0),
(6, 1, '~g~Prison Garden', 1826.15, -1538.67, 13.5469, 1818.43, -1536.93, 13.0785, 0, 0, 0, 1, 86.8307, 253.839),
(7, 2, '~g~LSFD Garage', 1097.92, -1329.5, 13.1991, 1157.65, -1277.32, 1000.23, 0, 10, NULL, 1, 269.981, 1.44861),
(8, 6, '~w~San News Reporters', 598.465, -1490.48, 15.1309, 695.168, -564.883, -52.236, 0, 1, NULL, 0, 0, 0),
(9, 7, '~w~Transport Company', 1730.9, -2063.03, 13.5999, 1810.6, -1514.96, 5700.43, 0, 1, 0, 0, 0, 0),
(16, 1, 'BUREAU', 1330, 42.1849, 1019.21, 1368.95, 13.9489, 1011.89, 0, 0, NULL, 0, NULL, NULL),
(17, 1, 'LSPD', 1574.53, -1680.49, 1108.1, 1557.57, -1675.38, 28.3955, 0, 0, NULL, 0, NULL, NULL),
(18, 1, 'LSPD 2', 1376.97, 44.1925, 1014.49, 1418.97, -15.6918, 1000.94, 0, 0, NULL, 0, NULL, NULL),
(19, 1, 'LSPD 1', 1364.13, 43.8732, 1014.51, 1360.45, 14.6004, 1013.92, 0, 1, 1, 0, NULL, NULL),
(20, 1, 'BACKSIDE BUREAU', 2326.71, -1349.6, 24.0583, 1397.32, 2.1077, 1000.93, 0, 4, 0, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `factions`
--

CREATE TABLE `factions` (
  `id` int(11) NOT NULL,
  `factionid` int(24) DEFAULT NULL,
  `name` varchar(64) DEFAULT NULL,
  `spawnx` float DEFAULT NULL,
  `spawny` float DEFAULT NULL,
  `spawnz` float DEFAULT NULL,
  `spawnint` int(64) DEFAULT NULL,
  `rank1` varchar(100) DEFAULT NULL,
  `rank2` varchar(100) DEFAULT NULL,
  `rank3` varchar(100) DEFAULT NULL,
  `rank4` varchar(100) DEFAULT NULL,
  `rank5` varchar(100) DEFAULT NULL,
  `rank6` varchar(100) DEFAULT NULL,
  `rank7` varchar(100) DEFAULT NULL,
  `rank8` varchar(100) DEFAULT NULL,
  `rank9` varchar(100) DEFAULT NULL,
  `rank10` varchar(100) DEFAULT NULL,
  `rank11` varchar(100) DEFAULT NULL,
  `rank12` varchar(100) DEFAULT NULL,
  `rank13` varchar(100) DEFAULT NULL,
  `rank14` varchar(100) DEFAULT NULL,
  `rank15` varchar(100) DEFAULT NULL,
  `rank16` varchar(100) DEFAULT NULL,
  `rank17` varchar(100) DEFAULT NULL,
  `rank18` varchar(100) DEFAULT NULL,
  `rank19` varchar(100) DEFAULT NULL,
  `rank20` varchar(100) DEFAULT NULL,
  `joinrank` int(11) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `rankamount` int(11) DEFAULT NULL,
  `chaton` int(11) DEFAULT NULL,
  `color` int(64) DEFAULT NULL,
  `uniformx` float DEFAULT NULL,
  `uniformy` float DEFAULT NULL,
  `uniformz` float DEFAULT NULL,
  `leaderrank` int(64) DEFAULT NULL,
  `shortname` varchar(24) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `factions`
--

INSERT INTO `factions` (`id`, `factionid`, `name`, `spawnx`, `spawny`, `spawnz`, `spawnint`, `rank1`, `rank2`, `rank3`, `rank4`, `rank5`, `rank6`, `rank7`, `rank8`, `rank9`, `rank10`, `rank11`, `rank12`, `rank13`, `rank14`, `rank15`, `rank16`, `rank17`, `rank18`, `rank19`, `rank20`, `joinrank`, `type`, `rankamount`, `chaton`, `color`, `uniformx`, `uniformy`, `uniformz`, `leaderrank`, `shortname`) VALUES
(1, 2, 'Los Santos Fire Department', 1153.29, -1323.64, 1101.09, 0, 'Probationary Firefighter', 'Intern', 'Firefighter I', 'Resident', 'Firefighter II', 'Senior Resident', 'Engineer', 'Attending Physician', 'Lieutenant', 'Chief of Surgery', 'Captain', 'Battalion Chief', 'Bureau Chief', 'Comissioner', 'None', 'None', 'None', 'None', 'None', 'None', 1, 1, 20, 1, 0, 1150.7, -1323.26, 1101.09, 14, 'LSFD'),
(2, 1, 'Los Santos Police Department', 1170.5, -1492.48, 14.6536, 0, 'Chief Of Police', 'Police Officer I', 'Police Officer II', 'Police Officer III', 'Police Officer III+1', 'Police Detective I', 'Police Sergeant I', 'Police Detective II', 'Police Sergeant II', 'Police Detective III', 'Police Lieutenant I', 'Police Lieutenant II', 'Police Captain I', 'Police Captain II', 'Police Commander', 'Deptuy Chief of Police', 'Assistant Chief', 'Chief of Police', 'Civilian Employee', 'Suspended Officer', 7, 1, 20, 1, 0, 1564.66, -1697.92, 1101.09, 1, 'LSPD'),
(3, 3, 'None', 2564.9, -1741.73, 13.5469, 0, 'BULIBASA ', 'Killa', 'Hermano', 'Soldado', 'THUG', 'O.G 1', 'O.G 2', 'Just A Banger', 'coleader', '#5150', '', '', '', '', '', '', '', '', '', 'BULIBASA ', 20, 1, 10, 1, 2, 1212.78, -1485.63, 13.5469, 10, 'MS13'),
(4, 4, 'None', 2523.36, -2010.78, 13.171, 0, 'Shootcaller', 'Double OG', 'OG', 'Real Nigga', 'Nigga', 'Insider', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 10, 0, 10, 1, 0, 0, 0, 0, 0, NULL),
(5, 5, 'Los Santos Government', 366.936, 215.853, 1007.94, 1, 'Bodyguard', 'Supervizor', 'Secretary', 'Chief of Security', 'Administration', 'Guard Director', 'Chief of Justice', 'Mayor', '', '', '', '', '', '', '', '', '', '', '', '', 1, 1, 8, 1, 0, 366.936, 215.853, 1007.94, 8, 'GOV'),
(6, 6, 'San News Reporter', 597.992, -1488.78, 14.0903, 0, 'Editor', 'Jurnalist', 'Reporter', 'Promoter', 'Vice-Director', 'Director', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 1, 6, 1, 0, 0, 0, 0, 6, 'NEWS'),
(8, 8, 'Official Faction', 0, 0, 0, 0, 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0, 2, 10, 1, 7, 0, 0, 0, 0, NULL),
(9, 7, 'Ghetto Boyz 28 ', 0, 0, 0, 0, 'Cholo', 'Ghetto Lifer', 'Soldado', 'Veterano', 'Left Hand', 'Mano Derecha', 'Shotcaller', '', '', '', '', '', '', '', 'TEST', '', '', '', '', 'TEST', 1, 2, 7, 1, 0, 0, 0, 0, 7, 'GB28');

-- --------------------------------------------------------

--
-- Table structure for table `fines`
--

CREATE TABLE `fines` (
  `ID` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Agency` varchar(255) NOT NULL,
  `Cop` varchar(255) NOT NULL,
  `Price` int(100) NOT NULL,
  `Reason` varchar(255) NOT NULL,
  `On` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `foodstands`
--

CREATE TABLE `foodstands` (
  `id` int(11) NOT NULL,
  `info` varchar(255) DEFAULT NULL,
  `posx` float DEFAULT NULL,
  `posy` float DEFAULT NULL,
  `posz` float DEFAULT NULL,
  `posrx` float DEFAULT NULL,
  `posry` float DEFAULT NULL,
  `posrz` float DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `foodstands`
--

INSERT INTO `foodstands` (`id`, `info`, `posx`, `posy`, `posz`, `posrx`, `posry`, `posrz`) VALUES
(1, 'LV stalls.', 2123.14, 899.441, 11.3003, 0, 0, 90.3),
(2, 'Vinewood stalls.', 998.043, -925.072, 42.2997, 0, 0, -172.7),
(3, 'Idlewood Stalls.', 1931.19, -1785.24, 13.6828, 0, 0, 0),
(4, 'Idlewood Stalls.', 2106.6, -1787.92, 13.6747, 0, 0, 90.1),
(5, 'Dillimore Stalls.', 660.504, -579.073, 16.4659, 0, 0, 177.9),
(6, 'Verona Mall Foods', 1140.42, -1489.37, 15.7981, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `furnitures`
--

CREATE TABLE `furnitures` (
  `id` int(11) NOT NULL,
  `model` int(128) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `houseid` int(64) DEFAULT NULL,
  `interior` int(11) DEFAULT NULL,
  `virworld` int(11) DEFAULT NULL,
  `marketprice` int(64) DEFAULT NULL,
  `posx` float DEFAULT NULL,
  `posy` float DEFAULT NULL,
  `posz` float DEFAULT NULL,
  `posrx` float DEFAULT NULL,
  `posry` float DEFAULT NULL,
  `posrz` float DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `furnitures`
--

INSERT INTO `furnitures` (`id`, `model`, `name`, `houseid`, `interior`, `virworld`, `marketprice`, `posx`, `posy`, `posz`, `posrx`, `posry`, `posrz`) VALUES
(1, 1498, 'Door 6', 1, 10, 0, 3000, -52.5995, 1456.39, 1084.61, 0, 0, 0),
(2, 1700, 'Room bed', 640, 0, 1, 2500, -79.6693, 1395.71, 1077.96, 0, 0, 0),
(3, 1495, 'Door 3', 70, 10, 57, 3000, 328.604, 1519.58, 1084.8, 2, 0.299999, 88.4),
(4, 1495, 'Door 3', 453, 10, 416, 3000, 2291.49, -1090.57, 1047.88, 0, 0, 87.7),
(8, 2147, 'Normal gray refrigerator', 2, 10, 1, 4000, 330.831, 1518.17, 1085.82, NULL, NULL, NULL),
(9, 2127, 'Red refrigerator', 3, 10, 2, 5500, -51.6349, 1453.73, 1085.61, NULL, NULL, NULL),
(11, 1700, 'Room bed', 142, 10, 123, 2500, 508.202, 1368.16, 1080.94, NULL, NULL, NULL),
(12, 2557, 'Picture 4', 153, 10, 134, 1000, -74.5013, 1398.69, 1077.45, 2.59997, 0, 93.1),
(13, 2338, 'Large White Kitchen Cabinet', 286, 10, 259, 4300, 86.7796, 1276.7, 1078.88, 0, 0, -84.7),
(19, 1496, 'Door 4', 626, 10, 583, 3000, 291.945, 1503.98, 1077.42, 0, 0, -89.9),
(32, 2570, 'Dresser 4', 626, 10, 583, 4500, 297.127, 1505.8, 1077.43, 0, 0, 0),
(35, 1806, 'Office chair', 626, 10, 583, 850, 298.859, 1504.8, 1077.42, 0, 0, 21.9),
(37, 2204, 'Office cabinet', 626, 10, 583, 4000, 295.925, 1500.15, 1077.42, 0, 0, 177.3),
(38, 2197, 'Locker', 626, 10, 583, 1000, 297.872, 1500.6, 1078.17, 0, 0.4, 178.6),
(39, 2197, 'Locker', 626, 10, 583, 1000, 298.581, 1500.61, 1078.18, 0, 0, 179.3),
(42, 1741, 'Medium cabinet', 626, 10, 583, 1100, 293.801, 1504.8, 1077.42, 0, 0, 91.2),
(44, 2835, 'Living Grug 4', 626, 10, 583, 1500, 296.635, 1502.66, 1077.42, 0, 0, 0),
(47, 2559, 'Picture 6', 626, 10, 583, 1000, 296.978, 1503.26, 1078.42, NULL, NULL, NULL),
(48, 2254, 'Picture 1', 626, 10, 583, 1000, 295.499, 1506.32, 1079.53, 0, 0, 0),
(49, 2260, 'Picture 7', 626, 10, 583, 1000, 300.943, 1501.37, 1078.77, 0, 0, -93.5),
(50, 948, 'Plant pot 1', 626, 10, 583, 1300, 292.847, 1502.16, 1077.52, 0, 0, 0),
(52, 2156, 'Green Kitchen Cabinet 4', 92, 10, 79, 6000, 385.117, 1500.18, 1079.1, 0, 0, 0),
(53, 2298, 'Swank bed 6', 12, 10, 10, 3500, 298.649, 1288.34, 1077.46, 0.4, 0, -89.3),
(54, 2573, 'Dresser 5', 12, 10, 10, 6000, 299.285, 1290.11, 1077.45, 0, 0, 0),
(58, 1700, 'Room bed', 71, 10, 58, 2500, 372.192, 1372.9, 1078.78, 0.999998, 1.3, -180),
(61, 2131, 'White refrigerator', 46, 10, 40, 5500, -50.1609, 1466.31, 1084.61, 0, 0, -89.9999),
(62, 2133, 'White Kitchen Cabinet 1', 46, 10, 40, 4600, -50.0946, 1464.3, 1084.61, 0, 0, -89.7),
(63, 2294, 'Cooker 2', 46, 10, 40, 5500, -50.227, 1462.81, 1084.62, 0, 0, -89.7),
(64, 2150, 'Kitchen sink 6', 46, 10, 40, 3000, -49.9155, 1461.65, 1085.68, 0, 0, -89.5),
(65, 2156, 'Green Kitchen Cabinet 4', 46, 10, 40, 6000, -49.9361, 1461.74, 1084.61, 0, -0.199999, -89.9),
(66, 2341, 'Corner White Kitchen Cabinet', 46, 10, 40, 4550, -53.2771, 1466.3, 1084.61, 0, 0, 88.7),
(67, 1766, '[Medium] couch 3', 46, 10, 40, 3000, -49.4781, 1455.54, 1084.61, 0, 0, 0),
(68, 1827, 'Living room rable 2', 46, 10, 40, 2800, -54.9989, 1449.02, 1084.61, 0, 0, 0),
(69, 2296, 'T.V unit', 46, 10, 40, 8000, -53.947, 1448.61, 1084.61, 0, 0, 138.9),
(70, 2119, 'Rectangular table 5', 46, 10, 40, 2000, -49.0687, 1453.81, 1084.61, 0, 0, 0),
(71, 1495, 'Door 3', 46, 10, 40, 3000, -52.5625, 1456.33, 1084.61, 0, 0, 0.600018),
(83, 19358, 'Wall 6', 68, 10, 55, 10000, 29.7739, 1441.66, 1083.15, 0, 0, 0),
(84, 2815, 'Living Grug', 295, 10, 268, 1500, 2285.3, -1122.74, 1049.92, 0, 0, 0),
(85, 1663, 'Swivel chair 1', 295, 10, 268, 800, 2282.16, -1123.85, 1050.38, 0, 0, 0),
(94, 1705, 'Living room chair 2', 157, 10, 137, 1000, 500.094, 1361.58, 1075.78, 0, 0, 0),
(95, 2311, 'Living room rable 3', 157, 10, 137, 1500, 499.214, 1360.45, 1075.78, 0, 0, 0),
(97, 1705, 'Living room chair 2', 157, 10, 137, 1000, 498.881, 1361.57, 1075.78, 0, 0, 0),
(99, 2105, 'Table light', 157, 10, 137, 1200, 504.18, 1361.76, 1076.22, 0, 0, 0),
(101, 2346, 'Hifi table', 157, 10, 137, 1500, 500.537, 1354.42, 1075.78, 0, 0, -179.2),
(103, 1751, 'Normal T.V 6', 157, 10, 137, 2600, 499.804, 1354.1, 1076.28, 0, 0, -179.4),
(109, 2280, 'Picture 27', 157, 10, 137, 1000, 504.242, 1356.35, 1077.82, -0.6, 0, -89.3),
(168, 1735, 'Rest chair 3', 293, 10, 266, 800, 2257.15, -1107.83, 1048.13, 0, 0, 0),
(250, 2310, 'Dinning chair 8', 293, 10, 266, 500, 2256.53, -1104.6, 1048.68, 0, 0, 0),
(252, 2310, 'Dinning chair 8', 293, 10, 266, 500, 2250.53, -1104.58, 1048.64, 0, 0, 178.9),
(251, 2357, 'Rectangular table 6', 293, 10, 266, 1500, 2253.5, -1104.62, 1048.54, 0, 0, 0),
(315, 1495, 'Door 3', 58, 10, 47, 3000, 386.471, 1491.65, 1080.1, NULL, NULL, NULL),
(314, 1493, 'Door 1', 157, 10, 137, 3000, 504.81, 1360.78, 1079.96, 0, 0, 90.3),
(313, 2262, 'Picture 9', 157, 10, 137, 1000, 496.945, 1361.04, 1082.66, 0, 0, 90.3),
(312, 2120, 'Dinning chair 4', 157, 10, 137, 800, 499.506, 1363.98, 1080.55, 0, 0, 56.8),
(311, 2120, 'Dinning chair 4', 157, 10, 137, 800, 500.096, 1361.91, 1080.54, 0, 0, 0),
(258, 2310, 'Dinning chair 8', 293, 10, 266, 500, 2251.07, -1103.05, 1048.64, 0, 0, 126.3),
(254, 2310, 'Dinning chair 8', 293, 10, 266, 500, 2253.71, -1103.1, 1048.62, 0, 0, 85.1),
(256, 2310, 'Dinning chair 8', 293, 10, 266, 500, 2254.77, -1103.12, 1048.64, 0, 0, 83.7),
(257, 2310, 'Dinning chair 8', 293, 10, 266, 500, 2255.99, -1102.96, 1048.62, 0, 0, 49.5),
(253, 2310, 'Dinning chair 8', 293, 10, 266, 500, 2252.55, -1103.07, 1048.59, 0, 0, 88.6),
(310, 2120, 'Dinning chair 4', 157, 10, 137, 800, 500.101, 1362.64, 1080.55, 0, 0, 0.499999),
(301, 1704, 'Living room chair 1', 157, 10, 137, 1000, 497.362, 1361.88, 1079.93, 0, 0, 91.6),
(294, 2296, 'T.V unit', 37, 10, 33, 8000, 381.557, 1502.95, 1079.08, 0, 0, 13.7),
(292, 2032, 'Oval table 2', 157, 10, 137, 1650, 498.724, 1361.83, 1079.83, 0, 0, 91.4001),
(290, 1764, 'Low couch 2', 37, 10, 33, 3000, 384.633, 1499.9, 1079.09, 0, 0, -161.9),
(284, 1498, 'Door 6', 37, 10, 33, 3000, 381.411, 1495.43, 1079.1, 17.1, 0, 0),
(302, 1498, 'Door 6', 37, 10, 33, 3000, 384.138, 1504.09, 1079.09, 0, 0, 0),
(213, 1496, 'Door 4', 425, 10, 393, 3000, -52.6067, 1456.42, 1084.6, 0, 0, 0),
(278, 2670, 'Coffee and cigars', 37, 10, 33, 800, 384.563, 1496.17, 1079.19, 0, 0, 0),
(260, 19359, 'Wall 7', 37, 10, 33, 10000, 389.26, 1498.03, 1082.31, 0, 0, 0),
(261, 19359, 'Wall 7', 37, 10, 33, 10000, 385.699, 1493.9, 1080.79, 0, 0, 90),
(262, 19359, 'Wall 7', 37, 10, 33, 10000, 388.909, 1493.9, 1080.8, 0, 0, -90.1),
(322, 1501, 'Door 8', 49, 10, 43, 3000, 445.785, 1358.58, 1081.21, 0, 0, -86.7),
(320, 1501, 'Door 8', 49, 10, 43, 3000, 445.968, 1363.45, 1081.27, 0, 0, 87.6),
(326, 19360, 'Wall 8', 50, 10, 44, 10000, 2365.07, -1094.28, 1050.21, -89.5, 0, 91.5),
(422, 2289, 'Picture 36', 152, 10, 133, 1000, 442.081, 1361.94, 1084.09, 0, 0, 0),
(432, 2357, 'Rectangular table 6', 152, 10, 133, 1500, 454.792, 1359.56, 1081.63, 0, 0, 0),
(538, 2020, 'Medium cabinet 6', 568, 10, 526, 3500, 2177.67, -1068.99, 1049.49, 0, 0, 0),
(539, 2127, 'Red refrigerator', 568, 10, 526, 5500, 2174.16, -1067.57, 1049.48, 0, 0, 0),
(540, 2143, 'Kitchen Cabinet + Washer', 568, 10, 526, 7500, 2176.29, -1068.61, 1049.5, -0.1, 2, -91.7),
(410, 2836, 'Living Grug 5', 152, 10, 133, 1500, 447.782, 1353.62, 1081.22, 0, 0, 0),
(411, 949, 'Plant pot 2', 152, 10, 133, 1500, 446.757, 1354.06, 1081.22, 0, 0, 0),
(414, 2672, 'Burgershot mess', 152, 10, 133, 800, 443.761, 1359.47, 1081.52, 0, 0, 0),
(415, 2528, 'Toilet 4', 152, 10, 133, 2650, 448.892, 1370.92, 1081.22, 0, 0, 0),
(416, 2739, 'Bathroom sink 5', 152, 10, 133, 1500, 447.292, 1370.91, 1081.22, 0, 0, 0),
(417, 2517, 'Large shower', 152, 10, 133, 3500, 445.424, 1369.83, 1081.22, 0, 0, 0),
(418, 2526, 'Bath 4', 152, 10, 133, 2500, 445.351, 1368.42, 1081.32, -3.5, 1.7, -90.4),
(429, 2298, 'Swank bed 6', 152, 10, 133, 3500, 440.547, 1358.05, 1081.22, 0, 0, 0),
(547, 1792, 'Swank T.V 5', 568, 10, 526, 4000, 2181.32, -1076.27, 1050.49, 4.8, 1, 179.2),
(548, 2836, 'Living Grug 5', 568, 10, 526, 1500, 2190.02, -1074.06, 1049.53, 0, 0, 87.9),
(552, 2023, 'Stand lamp', 568, 10, 526, 2600, 2179.38, -1067.99, 1049.48, 0, 0, 0),
(536, 2298, 'Swank bed 6', 568, 10, 526, 3500, 2180.16, -1071.58, 1049.48, 0, 0, 0),
(532, 1493, 'Door 1', 661, 10, 20, 3000, 16.4897, 1308.8, 1081.83, 0, 0, 179.3),
(531, 2341, 'Corner White Kitchen Cabinet', 661, 10, 20, 4550, 2.20635, 1316.67, 1081.87, 0, 0, 89.4),
(529, 2132, 'Kitchen sink 3', 661, 10, 20, 6000, 4.18516, 1316.67, 1081.83, 0, 0, 0),
(530, 2141, 'White Kitchen Cabinet 3', 661, 10, 20, 5000, 3.18629, 1316.68, 1081.84, 0, 0, 0),
(520, 2134, 'White Kitchen Cabinet 2', 661, 10, 20, 4600, 6.18037, 1316.68, 1081.83, 0, 0, 0),
(519, 2133, 'White Kitchen Cabinet 1', 661, 10, 20, 4600, 7.16674, 1316.65, 1081.83, 0, 0, 0),
(489, 1497, 'Door 5', 139, 10, 120, 3000, -52.5968, 1460.64, 1084.61, 0, 0, 0),
(517, 2131, 'White refrigerator', 661, 10, 20, 5500, 8.16708, 1316.66, 1081.83, 0, 0, 0),
(501, 1802, 'Room bed 5', 571, 10, 529, 2450, 2253.14, -1104.34, 1049.13, NULL, NULL, NULL),
(534, 19358, 'Wall 6', 568, 10, 526, 2000, 2176.54, -1069.18, 1050.63, 0, 0, 0),
(488, 2298, 'Swank bed 6', 139, 10, 120, 3500, -53.0386, 1462.83, 1084.61, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `gates`
--

CREATE TABLE `gates` (
  `id` int(11) NOT NULL,
  `model` int(255) DEFAULT NULL,
  `faction` int(64) DEFAULT NULL,
  `posx` float DEFAULT NULL,
  `posy` float DEFAULT NULL,
  `posz` float DEFAULT NULL,
  `posrx` float DEFAULT NULL,
  `posry` float DEFAULT NULL,
  `posrz` float DEFAULT NULL,
  `openspeed` float DEFAULT NULL,
  `movex` float DEFAULT NULL,
  `movey` float DEFAULT NULL,
  `movez` float DEFAULT NULL,
  `moverx` float DEFAULT NULL,
  `movery` float DEFAULT NULL,
  `moverz` float DEFAULT NULL,
  `interior` int(11) DEFAULT NULL,
  `virworld` int(64) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `sound` int(64) DEFAULT NULL,
  `soundlength` int(64) DEFAULT NULL,
  `autoclose` int(64) DEFAULT NULL,
  `cloaselength` int(64) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gates`
--

INSERT INTO `gates` (`id`, `model`, `faction`, `posx`, `posy`, `posz`, `posrx`, `posry`, `posrz`, `openspeed`, `movex`, `movey`, `movez`, `moverx`, `movery`, `moverz`, `interior`, `virworld`, `name`, `sound`, `soundlength`, `autoclose`, `cloaselength`) VALUES
(1, 980, 1, 1590.14, -1637.99, 15.2151, 0, -1.1, 0.699999, 3, 0, 0, 5.6, 0, 0, 0, 0, 0, 'LSPD', 1153, 1700, NULL, NULL),
(2, 968, 1, 1544.75, -1630.96, 13.1771, 0, 269.759, 270, 0.1, 0.1, 0, 0, 0, -90, 0, 0, 0, 'LSPD', 1100, 1000, NULL, NULL),
(3, 980, 1, -1208.92, -1072.4, 130.036, 0, 0, -179.9, 3, 0, 0, 5.6, NULL, NULL, NULL, 0, 0, 'Impound Lot', 1153, 1700, NULL, NULL),
(8, 19912, 1, 141.711, 1953.53, 20.5188, 0.6, 1.40001, 0.099999, 3, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 'Prison1', NULL, NULL, NULL, NULL),
(6, 976, 1, 1813.62, -1541.36, 12.3282, 0, 0, 88.5999, 3, 0, 0, 3.3, NULL, NULL, NULL, 0, 0, 'Prison', 1153, 1000, NULL, NULL),
(7, 976, 1, 1781.12, -1531.48, 8.65022, 0, 0, -92.1, 3, 0, 0, 3.4, NULL, NULL, NULL, 0, 0, 'Prison', 1153, 1000, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `gstations`
--

CREATE TABLE `gstations` (
  `id` int(11) NOT NULL,
  `posx` float DEFAULT NULL,
  `posy` float DEFAULT NULL,
  `posz` float DEFAULT NULL,
  `price` int(255) DEFAULT NULL,
  `info` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gstations`
--

INSERT INTO `gstations` (`id`, `posx`, `posy`, `posz`, `price`, `info`) VALUES
(1, 1944.91, -1772.91, 13.3906, 500, 'Idlewood-GasStation'),
(2, 1004.35, -939.479, 42.1797, 700, 'VineWood GasStation'),
(3, 653.2, -564.946, 16.3359, 400, 'Dillimore Gas Station'),
(4, 1380.93, 457.327, 19.9286, 400, 'Montgomery GasStation'),
(5, -91.2721, -1169.82, 2.41991, 400, 'Flint County'),
(6, -1605.84, -2714.36, 48.5335, 400, 'Whetstone'),
(7, -2407.73, 976.518, 45.2969, 500, 'San Fierro GasStation No.1'),
(8, -1676.06, 413.205, 7.17969, 400, 'San Fierro GasStation No.2'),
(9, 2115.12, 920.337, 10.8203, 500, 'Las Venturas GasStation No.1'),
(10, 2639.78, 1106.59, 10.8203, 500, 'Las Venturas GasStation No.2'),
(11, 2202.16, 2475.04, 10.8203, 500, 'Las Venturas GasStation No.3'),
(12, 1596.01, 2199.42, 10.8203, 500, 'Las Venturas GasStation No.4'),
(13, 612.409, 1695.12, 6.99219, 500, 'Las Venturas GasStation No.5'),
(14, 70.69, 1219.15, 18.8125, 500, 'Fort Carson GasStation'),
(15, -1472.12, 1863.66, 32.6328, 500, 'Tierra Robada'),
(16, -1328.85, 2677.71, 50.0625, 400, 'El quebrados GasStation');

-- --------------------------------------------------------

--
-- Table structure for table `houses`
--

CREATE TABLE `houses` (
  `id` int(11) NOT NULL,
  `posx` float DEFAULT NULL,
  `posy` float DEFAULT NULL,
  `posz` float DEFAULT NULL,
  `exitx` float DEFAULT NULL,
  `exity` float DEFAULT NULL,
  `exitz` float DEFAULT NULL,
  `info` varchar(255) DEFAULT NULL,
  `owner` varchar(255) DEFAULT NULL,
  `owned` int(11) DEFAULT NULL,
  `locked` int(11) DEFAULT NULL,
  `price` int(64) DEFAULT NULL,
  `levelbuy` int(64) DEFAULT NULL,
  `rentprice` int(64) DEFAULT NULL,
  `rentable` int(64) DEFAULT NULL,
  `interior` int(64) DEFAULT NULL,
  `world` int(64) DEFAULT NULL,
  `cash` int(255) DEFAULT NULL,
  `furnitures` int(64) DEFAULT NULL,
  `weapons` text,
  `checkx` float DEFAULT NULL,
  `checky` float DEFAULT NULL,
  `checkz` float DEFAULT NULL,
  `radio` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `houses`
--

INSERT INTO `houses` (`id`, `posx`, `posy`, `posz`, `exitx`, `exity`, `exitz`, `info`, `owner`, `owned`, `locked`, `price`, `levelbuy`, `rentprice`, `rentable`, `interior`, `world`, `cash`, `furnitures`, `weapons`, `checkx`, `checky`, `checkz`, `radio`) VALUES
(1, 1804.14, -2124.9, 13.9424, -48.8713, 1458.55, 1085.61, 'El Corona street', 'The State', 0, 1, 125000, 4, 0, 0, 10, 0, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(2, 1782.17, -2126.51, 14.0679, 329.306, 1513.33, 1085.82, 'El Corona street', 'The State', 0, 1, 125000, 4, 0, 0, 10, 1, 0, 1, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(3, 1761.22, -2125.45, 14.0566, -48.7973, 1458.51, 1085.61, 'El Corona street', 'The State', 0, 1, 125000, 4, 0, 0, 10, 2, 0, 1, '', 0, 0, 0, 0),
(4, 1734.73, -2130.36, 14.021, 290.804, 1242.85, 1082.68, 'El Corona street', 'The State', 0, 1, 110000, 3, 0, 0, 10, 3, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(5, 1715.12, -2125.45, 14.0566, 326.194, 1075.42, 1082.25, 'El Corona street', 'The State', 0, 1, 135000, 4, 0, 0, 10, 4, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 326.472, 1082.9, 1082.25, 0),
(6, 1695.51, -2125.84, 13.8101, 191.309, 1289.4, 1082.14, 'El Corona street', 'The State', 0, 1, 155000, 5, 0, 0, 10, 5, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(7, 1673.66, -2122.45, 14.146, 244.093, 1146.22, 1081.17, 'El Corona street', 'The State', 0, 1, 155000, 5, 0, 0, 10, 6, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(8, 1667.46, -2106.94, 14.0723, 2313.39, -1230.19, 1047.41, 'El Corona street', 'The State', 0, 1, 155000, 5, 0, 0, 10, 7, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(10, 1684.8, -2098.5, 13.8343, 244.103, 1146, 1081.17, 'El Corona street', 'The State', 0, 1, 155000, 5, 0, 0, 10, 8, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(11, 1711.58, -2101.23, 14.021, 2364.15, -1074.37, 1047.77, 'El Corona street', 'The State', 0, 1, 145000, 5, 0, 0, 10, 9, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(12, 1734.06, -2097.98, 14.0366, 295.115, 1285.63, 1078.45, 'El Corona street', 'The State', 0, 1, 155000, 1, 0, 0, 10, 10, 0, 2, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(13, 1762.4, -2101.98, 13.857, 2261.43, -1121.05, 1048.88, 'El Corona street', 'The State', 0, 1, 155000, 5, 0, 0, 10, 11, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(14, 1781.46, -2101.27, 14.0566, -79.9714, 1383.67, 1078.96, 'El Corona street', 'The State', 0, 1, 155000, 5, 0, 0, 10, 12, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(15, 1801.96, -2098.94, 14.021, -49.0098, 1458.38, 1085.61, 'El Corona street', 'The State', 0, 1, 155000, 5, 0, 0, 10, 13, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(16, 1868.98, -2037.89, 13.5469, 2261.31, -1121.05, 1048.88, 'El Corona street', 'The State', 0, 1, 60000, 3, 0, 0, 10, 14, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(18, 1870.89, -2021.36, 13.5469, 290.85, 1242.94, 1082.68, 'El Corona street', 'The State', 0, 1, 60000, 3, 0, 0, 10, 16, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(19, 1870.97, -2019.62, 13.5469, 244.184, 1146.2, 1081.17, 'El Corona street', 'The State', 0, 1, 60000, 3, 0, 0, 10, 15, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(20, 1898.99, -2037.96, 13.5469, 329.329, 1513.16, 1085.82, 'El Corona street', 'The State', 0, 1, 60000, 3, 0, 0, 10, 17, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(21, 1895.43, -2021.39, 13.5469, -48.7016, 1458.46, 1085.61, 'El Corona street', 'The State', 0, 1, 65000, 3, 0, 0, 10, 18, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(22, 1895.44, -2019.67, 13.5469, 2364.29, -1074.42, 1047.77, 'El Corona street', 'The State', 0, 1, 65000, 3, 0, 0, 10, 19, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(24, 1873.63, -2070.76, 15.4971, -79.9651, 1384.47, 1078.96, 'El Corona Street', 'The State', 0, 1, 110000, 3, 0, 0, 10, 21, 0, 0, '', 0, 0, 0, 0),
(25, 1851.83, -2070.46, 15.4812, 2364.16, -1074.71, 1047.77, 'El Corona street', 'The State', 0, 1, 110000, 3, 0, 0, 10, 22, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(26, 1865.99, -2004.26, 13.5469, 390.115, 1505.76, 1080.1, 'El Corona street', 'The State', 0, 1, 65000, 3, 0, 0, 10, 23, 0, 0, '', 0, 0, 0, 0),
(27, 1867.73, -2004.15, 13.5469, -48.7946, 1458.49, 1085.61, 'El Corona street', 'The State', 0, 1, 65000, 3, 0, 0, 10, 24, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(29, 2729.47, -2451.4, 17.5937, -48.5627, 1458.39, 1085.61, 'Ocean Docks', 'Fredrick_Davis', 1, 0, 65000, 3, 0, 0, 10, 26, 0, 0, '', 0, 0, 0, 1),
(31, 1913.96, -2021.41, 13.5469, -48.9719, 1458.43, 1085.61, 'El Corona street', 'The State', 0, 1, 60000, 3, 0, 0, 10, 27, 0, 0, '', 0, 0, 0, 0),
(32, 1913.9, -2019.67, 13.5469, 2364.02, -1074.13, 1047.77, 'El Corona street', 'The State', 0, 0, 60000, 3, 0, 0, 10, 28, 0, 0, '', 0, 0, 0, 0),
(33, 1913.83, -1993.28, 13.5469, -79.9506, 1383.77, 1078.96, 'El Corona street', 'The State', 0, 1, 60000, 3, 0, 0, 10, 29, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(34, 1913.74, -1991.62, 13.5469, -79.9506, 1383.77, 1078.96, 'El Corona street', 'The State', 0, 1, 60000, 3, 0, 0, 10, 30, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(35, 1905.99, -2035.08, 13.5469, -49.0386, 1458.43, 1085.61, 'El Corona street', 'The State', 0, 1, 60000, 3, 0, 0, 10, 31, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(36, 1907.8, -2035.05, 13.5469, 79.9644, 1384.47, 1078.96, 'El Corona street', 'The State', 0, 1, 60000, 3, 0, 0, 10, 32, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(37, 1900.3, -1985.65, 13.5469, 390.038, 1505.79, 1080.1, 'El Corona street', 'Deshaun_Wilson', 1, 0, 60000, 3, 0, 0, 10, 33, 100000, 6, '', 384.985, 1503.67, 1080.1, 1),
(38, 1898.54, -1985.68, 13.5469, 390.038, 1505.79, 1080.1, 'El Corona street', 'The State', 0, 1, 60000, 3, 0, 0, 10, 34, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(39, 1852.35, -2019.61, 13.5469, 2261.17, -1121.06, 1048.88, 'El Corona street', 'The State', 0, 1, 60000, 3, 0, 0, 10, 35, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(40, 1852.49, -2021.33, 13.5469, 2261.17, -1121.06, 1048.88, 'El Corona street', 'The State', 0, 1, 60000, 3, 0, 0, 10, 36, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(43, 1857, -2034.96, 13.5469, 2261.17, -1121.06, 1048.88, 'El Corona street', 'The State', 0, 1, 60000, 3, 0, 0, 10, 37, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(44, 1858.74, -2034.96, 13.5469, 2261.17, -1121.06, 1048.88, 'El Corona street', 'The State', 0, 1, 60000, 3, 0, 0, 10, 38, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(45, 1853.99, -1914.26, 15.2568, -79.9699, 1384.58, 1078.96, 'El Corona street', 'The State', 0, 1, 95000, 3, 0, 0, 10, 39, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(46, 1872.26, -1911.79, 15.2568, -49.0387, 1458.43, 1085.61, 'El Corona street', 'The State', 0, 1, 95000, 3, 0, 0, 10, 40, 0, 11, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(47, 1891.91, -1914.4, 15.2568, 45.0835, 1439.32, 1082.41, 'El Corona street', 'The State', 0, 1, 95000, 3, 0, 0, 10, 41, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(48, 1913.5, -1911.91, 15.2568, 289.983, 1502.55, 1078.42, 'El Corona street', 'The State', 0, 1, 95000, 3, 0, 0, 10, 42, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(49, 1928.66, -1915.9, 15.2568, 448.284, 1355.15, 1082.22, 'El Corona street', 'The State', 0, 1, 95000, 3, 0, 0, 10, 43, 0, 2, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 1),
(50, 1938.54, -1911.33, 15.2568, 2370.66, -1095.73, 1049.62, 'El Corona street', 'The State', 0, 1, 95000, 3, 0, 0, 10, 44, 0, 1, '', 2368.28, -1094.79, 1049.63, 0),
(54, 1867.78, -1985.76, 13.5469, 45.489, 1439.43, 1082.41, 'El Corona street', 'The State', 0, 1, 60000, 3, 0, 0, 10, 45, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(55, 1866.03, -1985.83, 13.5469, 45.489, 1439.43, 1082.41, 'El Corona street', 'The State', 0, 1, 60000, 3, 0, 0, 10, 46, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(58, 1852.48, -1990.19, 13.5469, 390.092, 1505.91, 1080.09, 'El Corona street', 'The State', 0, 1, 60000, 3, 0, 0, 10, 47, 0, 1, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 388.428, 1503.46, 1080.09, 0),
(60, 1852.48, -1991.83, 13.5469, 390.092, 1505.91, 1080.09, 'El Corona street', 'The State', 0, 1, 60000, 3, 0, 0, 10, 48, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(61, 1838.97, -1994.13, 13.5469, 289.888, 1501.96, 1078.42, 'El Corona street', 'The State', 0, 1, 60000, 3, 0, 0, 10, 49, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 289.878, 1502.56, 1078.42, 0),
(63, 1839.08, -1995.84, 13.5469, 289.888, 1501.96, 1078.42, 'El Corona street', 'The State', 0, 1, 60000, 3, 0, 0, 10, 50, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(64, 1980.38, -1718.97, 17.0304, -79.9933, 1384.06, 1078.96, 'Idlewood street', 'The State', 0, 1, 120000, 3, 0, 0, 10, 51, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(65, 1820.42, -1994.17, 13.5544, 244.144, 1145.94, 1081.17, 'El Corona street', 'The State', 0, 1, 60000, 3, 0, 0, 10, 52, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(66, 1980.99, -1682.92, 17.0538, -49.0386, 1458.43, 1085.61, 'Idlewood street', 'The State', 0, 1, 120000, 3, 0, 0, 10, 53, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(67, 1820.52, -1995.93, 13.5544, 244.144, 1145.94, 1081.17, 'El Corona street', 'The State', 0, 1, 60000, 3, 0, 0, 10, 54, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(68, 2015.35, -1732.58, 14.2344, 45.2917, 1439.22, 1082.41, 'Idlewood street', 'The State', 0, 0, 120000, 3, 0, 0, 10, 55, 0, 1, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(69, 2016.2, -1716.96, 14.125, 290.171, 1502.3, 1078.42, 'Idlewood street', 'The State', 0, 0, 120000, 3, 0, 0, 10, 56, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(70, 2018.24, -1703.23, 14.2344, 329.349, 1513.98, 1085.82, 'Idlewood street', 'The State', 0, 1, 120000, 3, 0, 0, 10, 57, 0, 1, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 329.218, 1518.91, 1085.82, 0),
(71, 2013.56, -1656.4, 14.1363, 374.822, 1378.46, 1079.8, 'Idlewood street', 'The State', 0, 1, 120000, 3, 0, 0, 10, 58, 0, 1, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(72, 2016.54, -1641.71, 14.1129, 389.72, 1505.8, 1080.1, 'Idlewood street', 'The State', 0, 1, 120000, 3, 0, 0, 10, 59, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(73, 2018.05, -1629.87, 14.0426, 290.12, 1502.24, 1078.42, 'Idlewood street', 'The State', 0, 1, 120000, 3, 0, 0, 10, 60, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(74, 2011.43, -1594.31, 13.5836, 2149.96, -1216.9, 1049.12, 'Idlewood street', 'The State', 0, 1, 160000, 3, 0, 0, 10, 61, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(75, 2002.52, -1593.89, 13.5777, 2149.9, -1217.29, 1049.12, 'Idlewood street', 'The State', 0, 1, 160000, 3, 0, 0, 10, 62, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(77, 1901.62, -2019.65, 13.5469, 244.208, 1146.2, 1081.17, 'El Corona street', 'The State', 0, 1, 60000, 3, 0, 0, 10, 64, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(78, 1901.52, -2021.31, 13.5469, 244.208, 1146.2, 1081.17, 'El Corona street', 'The State', 0, 1, 60000, 3, 0, 0, 10, 65, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(79, 2437.88, -2020.77, 13.9025, 289.833, 1502.16, 1078.42, 'Willowfield street', 'The State', 0, 1, 130000, 5, 0, 0, 10, 66, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(80, 2465.26, -2020.58, 14.1242, 289.833, 1502.16, 1078.42, 'Willowfield street', 'The State', 0, 1, 130000, 5, 0, 0, 10, 67, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(81, 2486.41, -2021.55, 13.9988, 289.833, 1502.16, 1078.42, 'Willowfield street', 'The State', 0, 1, 130000, 5, 0, 0, 10, 68, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(82, 2507.82, -2020.98, 14.2101, 295.077, 1285.49, 1078.45, 'Willowfield street', 'The State', 0, 1, 130000, 5, 0, 0, 10, 69, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(83, 2522.61, -2018.92, 14.0744, 295.077, 1285.49, 1078.45, 'Willowfield street', 'The State', 0, 1, 130000, 5, 0, 0, 10, 70, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(84, 2524.35, -1998.34, 14.1131, 329.368, 1513.13, 1085.82, 'Willowfield street', 'The State', 0, 1, 130000, 5, 0, 0, 10, 71, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(85, 2508.3, -1998.37, 13.9025, 329.368, 1513.13, 1085.82, 'Willowfield street', 'The State', 0, 1, 130000, 5, 0, 0, 10, 72, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(86, 2483.47, -1995.77, 13.8343, 329.368, 1513.13, 1085.82, 'Willowfield street', 'The State', 0, 1, 130000, 5, 0, 0, 10, 73, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(87, 2465.19, -1995.89, 14.0193, 329.368, 1513.13, 1085.82, 'Willowfield street', 'The State', 0, 1, 130000, 5, 0, 0, 10, 74, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(88, 2067.05, -1731.68, 14.2066, -79.9491, 1383.87, 1078.96, 'Idlewood street', 'The State', 0, 1, 120000, 3, 0, 0, 10, 75, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(89, 2066.24, -1717.15, 14.1363, -49.0387, 1458.43, 1085.61, 'Idlewood street', 'The State', 0, 1, 120000, 3, 0, 0, 10, 76, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(90, 2065.1, -1703.55, 14.1484, 44.673, 1439.2, 1082.41, 'Idlewood street', 'The State', 0, 1, 120000, 3, 0, 0, 10, 77, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 44.6071, 1439.22, 1082.41, 0),
(91, 2066.74, -1656.57, 14.1328, -79.9491, 1383.87, 1078.96, 'Idlewood street', 'The State', 0, 1, 120000, 3, 0, 0, 10, 78, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(92, 2067.56, -1643.71, 14.1363, 389.914, 1505.8, 1080.1, 'Idlewood street', 'The State', 0, 1, 120000, 3, 0, 0, 10, 79, 0, 1, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(93, 2067.7, -1628.91, 14.2066, 2364.25, -1074.05, 1047.77, 'Idlewood street', 'The State', 0, 1, 120000, 3, 0, 0, 10, 80, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(94, 2143.09, -1604.71, 14.3516, 2313.18, -1229.99, 1047.41, 'Idlewood street', 'The State', 0, 1, 80000, 3, 0, 0, 10, 81, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(95, 2158.34, -1611.31, 14.3515, -79.9491, 1383.87, 1078.96, 'Idlewood street', 'The State', 0, 1, 80000, 3, 0, 0, 10, 82, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(96, 2172.59, -1615.29, 14.2813, 2262.01, -1121.38, 1048.88, 'Idlewood street', 'The State', 0, 1, 80000, 3, 0, 0, 10, 83, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(97, 2179.1, -1600.09, 14.346, -49.0387, 1458.43, 1085.61, 'Idlewood street', 'The State', 0, 1, 80000, 3, 0, 0, 10, 84, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(98, 2165.56, -1590.5, 14.3461, -79.7763, 1383.89, 1078.96, 'Idlewood street', 'The State', 0, 1, 80000, 3, 0, 0, 10, 85, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(99, 2151.15, -1598.47, 14.3457, -79.9491, 1383.87, 1078.96, 'Idlewood street', 'The State', 0, 1, 80000, 3, 0, 0, 10, 86, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(100, 2150.44, -1583.97, 14.336, -49.0387, 1458.43, 1085.61, 'Idlewood street', 'The State', 0, 1, 80000, 3, 0, 0, 10, 87, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(101, 2135.97, -1591.97, 14.3516, 43.0151, 1439.27, 1082.41, 'Idlewood street', 'The State', 0, 1, 80000, 3, 0, 0, 10, 88, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(102, 2178.36, -1660.18, 14.9784, 295.173, 1285.65, 1078.45, 'Idlewood street', 'The State', 0, 1, 80000, 3, 0, 0, 10, 89, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(103, 2165.94, -1671.18, 15.0732, -79.7763, 1383.89, 1078.96, 'Idlewood street', 'The State', 0, 1, 80000, 3, 0, 0, 10, 90, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(104, 2157.16, -1709.22, 15.0859, -80.1247, 1383.63, 1078.96, 'Idlewood street', 'The State', 0, 1, 80000, 3, 0, 0, 10, 91, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(105, 2155.62, -1698.51, 15.0859, 2262.01, -1121.38, 1048.88, 'Idlewood street', 'The State', 0, 1, 80000, 3, 0, 0, 10, 92, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(106, 2139.08, -1697.51, 15.0859, 2364.25, -1074.05, 1047.77, 'Idlewood street', 'The State', 0, 1, 80000, 3, 0, 0, 10, 93, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(107, 2140.55, -1708.31, 15.0859, 2313.18, -1229.99, 1047.41, 'Idlewood street', 'The State', 0, 1, 80000, 3, 0, 0, 10, 94, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(108, 2128.1, -1688, 15.0859, -80.1247, 1383.63, 1078.96, 'Idlewood street', 'The State', 0, 1, 80000, 3, 0, 0, 10, 95, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(109, 2144.68, -1688.91, 15.0859, -49.0387, 1458.43, 1085.61, 'Idlewood street', 'The State', 0, 1, 80000, 3, 0, 0, 10, 96, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(111, 2241.99, -1882.76, 14.2344, -48.5867, 1458.43, 1085.61, 'Willowfield street', 'The State', 0, 1, 130000, 5, 0, 0, 10, 97, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(112, 2143.76, -1662.75, 15.0859, 389.914, 1505.8, 1080.1, 'Idlewood street', 'The State', 0, 1, 80000, 3, 0, 0, 10, 98, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(113, 2269.24, -1882.53, 14.2344, -48.5867, 1458.43, 1085.61, 'Willowfield street', 'The State', 0, 1, 130000, 5, 0, 0, 10, 99, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(115, 2296.52, -1882.57, 14.2344, 289.961, 1502.29, 1078.42, 'Willowfield street', 'The State', 0, 1, 130000, 5, 0, 0, 10, 100, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(116, 2333.39, -1943.23, 14.9688, 2370.48, -1095.02, 1049.62, 'Willowfield street', 'The State', 0, 1, 190000, 6, 0, 0, 10, 101, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(117, 2284.67, -1906.6, 14.9297, 2149.97, -1216.93, 1049.12, 'Willowfield street', 'The State', 0, 1, 160000, 5, 0, 0, 10, 102, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(118, 2261.47, -1906.76, 14.9375, 2149.97, -1216.93, 1049.12, 'Willowfield street', 'The State', 0, 1, 160000, 5, 0, 0, 10, 103, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(121, 2238.23, -1906.84, 14.9375, 2149.97, -1216.93, 1049.12, 'Willowfield street', 'The State', 0, 1, 160000, 5, 0, 0, 10, 104, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(122, 2232.66, -1785.7, 13.5601, 2149.88, -1217.06, 1049.12, 'Ganton street', 'The State', 0, 1, 250000, 7, 0, 0, 10, 105, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(123, 2151.47, -1672.2, 15.0859, -79.9563, 1384.47, 1078.96, 'Idlewood street', 'The State', 0, 1, 80000, 3, 0, 0, 10, 106, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(125, 2163.71, -1661.25, 15.0859, -49.0374, 1458.42, 1085.61, 'Idlewood street', 'The State', 0, 1, 80000, 3, 0, 0, 10, 107, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(127, 2156.13, -1651.8, 15.0784, 42.9482, 1439.27, 1082.41, 'Idlewood street', 'The State', 0, 1, 80000, 3, 0, 0, 10, 108, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(128, 2247.33, -1795.98, 13.5469, -79.9628, 1384.47, 1078.96, 'Ganton street', 'The State', 0, 1, 250000, 7, 0, 0, 10, 109, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(129, 2185.29, -1608.23, 14.3594, 2313.37, -1229.86, 1047.41, 'Idlewood street', 'The State', 0, 1, 80000, 3, 0, 0, 10, 110, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(130, 2191.92, -1592.92, 14.3516, -80.1262, 1384.09, 1078.96, 'Idlewood street', 'The State', 0, 1, 80000, 3, 0, 0, 10, 111, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(131, 2275.59, -1785.66, 13.5469, 290.02, 1502.22, 1078.42, 'Ganton street', 'The State', 0, 1, 250000, 7, 0, 0, 10, 112, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(132, 2290.41, -1795.96, 13.5469, 326.266, 1075.49, 1082.25, 'Ganton street', 'The State', 0, 1, 250000, 7, 0, 0, 10, 113, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(133, 2307.53, -1785.73, 13.5569, 326.266, 1075.49, 1082.25, 'Ganton street', 'The State', 0, 1, 250000, 7, 0, 0, 10, 114, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(134, 2322.27, -1796.03, 13.5469, 329.379, 1513.37, 1085.82, 'Ganton street', 'The State', 0, 1, 250000, 7, 0, 0, 10, 115, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(135, 2345.58, -1785.72, 13.5469, 45.4904, 1439.39, 1082.41, 'Ganton street', 'The State', 0, 1, 250000, 7, 0, 0, 10, 116, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(136, 2360.09, -1795.99, 13.5469, 2370.5, -1095.16, 1049.62, 'Ganton street', 'The State', 0, 1, 250000, 7, 0, 0, 10, 117, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(137, 2380.63, -1785.72, 13.5469, 289.858, 1502.29, 1078.42, 'Ganton street', 'The State', 0, 1, 250000, 7, 0, 0, 10, 118, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(138, 2308.91, -1714.43, 14.9801, -48.6932, 1458.53, 1085.61, 'Ganton street', 'The State', 0, 1, 45000, 5, 0, 0, 10, 119, 0, 0, '', 0, 0, 0, 0),
(139, 2326.81, -1716.7, 14.2379, -48.6932, 1458.53, 1085.61, 'Ganton street', 'Victor_Noyola', 1, 0, 40000, 5, 0, 0, 10, 120, 0, 0, '', 0, 0, 0, 0),
(140, 2385.46, -1711.71, 14.2422, 375.536, 1378.52, 1079.8, 'Ganton street', 'The State', 0, 1, 175000, 5, 0, 0, 10, 121, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(141, 2495.42, -1691.14, 14.7656, 44.7808, 1439.16, 1082.41, 'Ganton street', 'The State', 0, 1, 250000, 3, 0, 0, 10, 122, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(142, 2514.37, -1691.55, 14.046, 509.633, 1355.54, 1076.79, 'Ganton street', 'The State', 0, 1, 170000, 3, 0, 0, 10, 123, 0, 1, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(143, 2523.27, -1679.37, 15.497, -48.7988, 1458.44, 1085.61, 'Ganton street', 'The State', 0, 1, 50000, 3, 0, 0, 10, 124, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(144, 2524.7, -1658.61, 15.824, -79.9832, 1384.2, 1078.96, 'Ganton street', 'The State', 0, 1, 170000, 3, 0, 0, 10, 125, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(145, 2513.74, -1650.27, 14.3557, 290.084, 1502.23, 1078.42, 'Ganton street', 'The State', 0, 1, 170000, 3, 0, 0, 10, 126, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(146, 2498.44, -1642.26, 14.1131, 389.653, 1505.8, 1080.1, 'Ganton street', 'The State', 0, 1, 170000, 3, 0, 0, 10, 127, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(147, 2402.52, -1715.24, 14.1328, 375.536, 1378.52, 1079.8, 'Ganton street', 'The State', 0, 1, 175000, 5, 0, 0, 10, 128, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(148, 2486.41, -1644.53, 14.0772, 82.9707, 1272.71, 1079.88, 'Ganton street', 'The State', 0, 1, 230000, 3, 0, 0, 10, 129, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(149, 2459.42, -1691.66, 13.5463, 2364.26, -1073.71, 1047.77, 'Ganton street', 'The State', 0, 1, 170000, 3, 0, 0, 10, 130, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(150, 2469.46, -1646.35, 13.7801, -80.1747, 1384.61, 1078.96, 'Ganton street', 'The State', 0, 1, 120000, 3, 0, 0, 10, 131, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(151, 2451.85, -1641.41, 14.0662, -49.0692, 1458.52, 1085.61, 'Ganton street', 'The State', 0, 1, 120000, 3, 0, 0, 10, 132, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(152, 2413.85, -1646.79, 14.0119, 448.079, 1355.36, 1082.22, 'Ganton street', 'Jessica_Twila', 1, 1, 120000, 3, 0, 0, 10, 133, 0, 10, '', 0, 0, 0, 0),
(153, 2409.02, -1674.94, 14.375, -79.9832, 1384.2, 1078.96, 'Ganton street', 'The State', 0, 1, 120000, 1, 0, 0, 10, 134, 0, 1, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(154, 1341.86, -1669.52, 17.7266, 389.653, 1505.8, 1080.1, 'Main Street House', 'The State', 0, 1, 120000, 3, 0, 0, 10, 135, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 389.653, 1505.8, 1080.1, 0),
(155, 1341.76, -1675.14, 17.7172, 191.201, 1289.49, 1082.14, 'Main Street House', 'The State', 0, 1, 120000, 1, 0, 0, 10, 135, 0, 0, '', 0, 0, 0, 0),
(156, 2362.81, -1643.14, 14.3516, 329.607, 1513.46, 1085.82, 'Ganton street', 'The State', 0, 1, 120000, 3, 0, 0, 10, 137, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(157, 1518.96, -1452.82, 14.2031, 509.6, 1354.56, 1076.78, 'Main Street House', 'The State', 0, 1, 120000, 3, 0, 0, 10, 137, 0, 14, '', 511.496, 1354.09, 1076.78, 0),
(158, 2148.74, -1484.83, 26.6241, 82.8588, 1272.38, 1079.89, 'Jefferson street', 'The State', 0, 1, 325000, 7, 0, 0, 10, 139, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(159, 2326.88, -1682.03, 14.9297, -79.9832, 1384.2, 1078.96, 'Ganton street', 'The State', 0, 1, 120000, 3, 0, 0, 10, 140, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(160, 2146.8, -1470.44, 26.0426, 390.281, 1505.84, 1080.1, 'Jefferson street', 'The State', 0, 1, 250000, 7, 0, 0, 10, 141, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 1),
(161, 2151.94, -1446.42, 25.7746, 390.281, 1505.84, 1080.1, 'Jefferson street', 'The State', 0, 1, 250000, 7, 0, 0, 10, 142, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(162, 2149.45, -1433.75, 25.9029, 390.281, 1505.84, 1080.1, 'Jefferson street', 'The State', 0, 1, 250000, 7, 0, 0, 10, 143, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(163, 2150.57, -1419.05, 25.9219, 329.282, 1513.3, 1085.82, 'Jefferson street', 'The State', 0, 1, 250000, 7, 0, 0, 10, 144, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(164, 2151.09, -1400.66, 26.1285, 329.282, 1513.3, 1085.82, 'Jefferson street', 'The State', 0, 1, 250000, 7, 0, 0, 10, 145, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(165, 2196.44, -1404.07, 25.6183, 244.315, 1146.12, 1081.17, 'Jefferson street', 'The State', 0, 1, 180000, 6, 0, 0, 10, 146, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(167, 2188.74, -1419.28, 26.1562, 244.315, 1146.12, 1081.17, 'Jefferson street', 'The State', 0, 1, 180000, 6, 0, 0, 10, 147, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(168, 2194.58, -1442.98, 25.7433, 244.315, 1146.12, 1081.17, 'Jefferson street', 'The State', 0, 1, 180000, 6, 0, 0, 10, 148, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(169, 2092.24, -1166.32, 26.5859, 509.649, 1354.79, 1076.79, 'Jefferson street', 'Andrew_Brown', 1, 0, 1500, 6, 0, 0, 10, 148, 0, 0, '', 0, 0, 0, 0),
(170, 2190.71, -1470.41, 25.9141, 390.122, 1505.89, 1080.09, 'Jefferson street', 'The State', 0, 1, 180000, 6, 0, 0, 10, 150, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(171, 2190.4, -1487.67, 26.1051, 390.122, 1505.89, 1080.09, 'Jefferson street', 'The State', 0, 1, 180000, 6, 0, 0, 10, 151, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(172, 2232.56, -1469.34, 24.5816, 289.987, 1502.17, 1078.42, 'Idlewood street', 'The State', 0, 1, 150000, 5, 0, 0, 10, 152, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(176, 2247.7, -1469.34, 24.4801, 289.987, 1502.17, 1078.42, 'Idlewood street', 'The State', 0, 1, 150000, 5, 0, 0, 10, 153, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(177, 2263.9, -1469.44, 24.3707, 289.987, 1502.17, 1078.42, 'Idlewood street', 'The State', 0, 1, 150000, 5, 0, 0, 10, 154, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(178, 2256.45, -1397.08, 24.2433, 45.5492, 1439.29, 1082.41, 'Idlewood street', 'The State', 0, 1, 150000, 5, 0, 0, 10, 155, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(179, 2243.53, -1397.24, 24.5738, 45.5492, 1439.29, 1082.41, 'Idlewood street', 'The State', 0, 1, 150000, 5, 0, 0, 10, 156, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(181, 2230.45, -1397.24, 24.5738, 45.5492, 1439.29, 1082.41, 'Idlewood street', 'The State', 0, 1, 150000, 5, 0, 0, 10, 157, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(182, 2383.53, -1366.28, 24.4914, -79.8681, 1383.95, 1078.96, 'Jeffreson street', 'The State', 0, 1, 125000, 3, 0, 0, 10, 158, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(183, 2389.73, -1346.09, 25.077, -48.8929, 1458.58, 1085.61, 'Jeffreson street', 'The State', 0, 1, 125000, 3, 0, 0, 10, 159, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(184, 2387.86, -1328.45, 25.1242, 329.307, 1513.75, 1085.82, 'Jeffreson street', 'The State', 0, 1, 125000, 3, 0, 0, 10, 160, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(185, 2388.42, -1279.66, 25.1291, -48.8929, 1458.58, 1085.61, 'Jeffreson street', 'The State', 0, 1, 125000, 3, 0, 0, 10, 161, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(186, 2433.61, -1275.04, 24.7567, 329.307, 1513.75, 1085.82, 'Jeffreson street', 'The State', 0, 1, 125000, 3, 0, 0, 10, 162, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(187, 1885.95, -1113.65, 26.2758, 329.229, 1513.08, 1085.82, 'Glenpark street', 'The State', 0, 1, 90000, 4, 0, 0, 10, 163, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(188, 2434.8, -1289.39, 25.3479, -79.8681, 1383.95, 1078.96, 'Jeffreson street', 'The State', 0, 1, 125000, 3, 0, 0, 10, 164, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(189, 1906.07, -1112.94, 26.6641, 329.229, 1513.08, 1085.82, 'Glenpark street', 'The State', 0, 1, 90000, 4, 0, 0, 10, 165, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(190, 1921.33, -1115.14, 27.0883, 329.229, 1513.08, 1085.82, 'Glenpark street', 'The State', 0, 1, 90000, 4, 0, 0, 10, 166, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(191, 2433.93, -1303.46, 25.3234, 2262.05, -1121.16, 1048.88, 'Jeffreson street', 'The State', 0, 1, 125000, 3, 0, 0, 10, 167, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(192, 2433.93, -1320.71, 25.3234, 329.307, 1513.75, 1085.82, 'Jeffreson street', 'The State', 0, 1, 125000, 3, 0, 0, 10, 168, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(193, 1939.07, -1114.48, 27.4523, -48.4137, 1458.5, 1085.61, 'Glenpark street', 'The State', 0, 1, 90000, 4, 0, 0, 10, 169, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(194, 2439.59, -1338.81, 24.1016, 2262.05, -1121.16, 1048.88, 'Jeffreson street', 'The State', 0, 1, 125000, 3, 0, 0, 10, 170, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(195, 1955.12, -1115.41, 27.8305, -48.4137, 1458.5, 1085.61, 'Glenpark street', 'The State', 0, 1, 90000, 4, 0, 0, 10, 171, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(196, 2439.59, -1357.13, 24.1005, -79.8681, 1383.95, 1078.96, 'Jeffreson street', 'The State', 0, 1, 125000, 3, 0, 0, 10, 172, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(197, 2000.05, -1114.05, 27.125, 375.303, 1378.61, 1079.8, 'Glenpark street', 'The State', 0, 1, 90000, 4, 0, 0, 10, 173, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(198, 2469.18, -1278.31, 30.3664, 2364.11, -1074.13, 1047.77, 'Jeffreson street', 'The State', 0, 1, 125000, 3, 0, 0, 10, 174, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(199, 2022.9, -1120.26, 26.421, -48.4137, 1458.5, 1085.61, 'Glenpark street', 'The State', 0, 1, 90000, 4, 0, 0, 10, 175, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(200, 2470.37, -1295.45, 30.2332, -48.8929, 1458.58, 1085.61, 'Jeffreson street', 'The State', 0, 1, 125000, 3, 0, 0, 10, 176, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(201, 2045.49, -1116.65, 26.3617, -48.4137, 1458.5, 1085.61, 'Glenpark street', 'The State', 0, 1, 90000, 4, 0, 0, 10, 177, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(202, 2472.92, -1238.12, 32.5695, -48.8929, 1458.58, 1085.61, 'East Los Santos street', 'The State', 0, 1, 125000, 3, 0, 0, 10, 178, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(203, 2492.11, -1239.02, 37.9054, 329.307, 1513.75, 1085.82, 'East Los Santos street', 'The State', 0, 1, 125000, 3, 0, 0, 10, 179, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(204, 2514.55, -1240.46, 39.3406, -79.8681, 1383.95, 1078.96, 'East Los Santos street', 'The State', 0, 1, 125000, 3, 0, 0, 10, 180, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(205, 2529.63, -1243.32, 43.9719, 2364.11, -1074.13, 1047.77, 'East Los Santos street', 'The State', 0, 1, 125000, 3, 0, 0, 10, 181, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(206, 2550.93, -1233.79, 49.3318, 329.307, 1513.75, 1085.82, 'East Los Santos street', 'The State', 0, 1, 125000, 3, 0, 0, 10, 182, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(207, 2023.01, -1052.96, 25.5961, 244.137, 1146.07, 1081.17, 'Glenpark street', 'The State', 0, 1, 125000, 5, 0, 0, 10, 183, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(208, 2035.86, -1059.24, 25.6508, 244.137, 1146.07, 1081.17, 'Glenpark street', 'The State', 0, 1, 125000, 5, 0, 0, 10, 184, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(209, 2550.15, -1197.52, 60.8423, 2262.05, -1121.16, 1048.88, 'East Los Santos street', 'The State', 0, 1, 125000, 3, 0, 0, 10, 185, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(210, 2050.75, -1065.71, 25.7836, 244.137, 1146.07, 1081.17, 'Glenpark street', 'The State', 0, 1, 125000, 5, 0, 0, 10, 186, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(211, 2520.67, -1198, 56.5989, -79.8681, 1383.95, 1078.96, 'East Los Santos street', 'The State', 0, 1, 125000, 3, 0, 0, 10, 187, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(212, 2061.04, -1075.34, 25.6862, 509.566, 1354.37, 1076.78, 'Glenpark street', 'The State', 0, 1, 125000, 5, 0, 0, 10, 188, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(213, 2075.32, -1081.91, 25.6819, 289.906, 1501.94, 1078.42, 'Glenpark street', 'The State', 0, 1, 125000, 5, 0, 0, 10, 189, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(214, 2467.72, -1200.41, 36.8117, -48.8929, 1458.58, 1085.61, 'East Los Santos street', 'The State', 0, 1, 125000, 3, 0, 0, 10, 190, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(215, 2082.45, -1085.15, 25.6878, 289.906, 1501.94, 1078.42, 'Glenpark street', 'The State', 0, 1, 125000, 5, 0, 0, 10, 191, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(216, 2145.28, -1084.68, 25.0374, 82.9381, 1272.3, 1079.89, 'Las Colinas street', 'The State', 0, 1, 125000, 5, 0, 0, 10, 192, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(217, 2140.58, -1082.5, 25.0357, 82.9381, 1272.3, 1079.89, 'Las Colinas street', 'The State', 0, 1, 210000, 5, 0, 0, 10, 193, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(218, 2105.5, -1056.04, 27.1545, 2313.47, -1230.3, 1047.41, 'Las Colinas street', 'The State', 0, 1, 110000, 5, 0, 0, 10, 194, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(219, 2099.8, -1051.72, 28.8158, 2313.47, -1230.3, 1047.41, 'Las Colinas street', 'The State', 0, 1, 110000, 5, 0, 0, 10, 195, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(220, 2093.84, -1047.37, 30.1083, 2284.87, -1126.24, 1050.92, 'Las Colinas street', 'The State', 0, 1, 110000, 5, 0, 0, 10, 196, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(221, 2083.09, -1039.69, 32.2091, 2284.87, -1126.24, 1050.92, 'Las Colinas street', 'The State', 0, 1, 110000, 5, 0, 0, 10, 197, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(222, 2077.31, -1056.99, 31.3465, 2284.87, -1126.24, 1050.92, 'Las Colinas street', 'The State', 0, 1, 110000, 5, 0, 0, 10, 198, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(223, 2091.53, -1068.16, 28.0854, 2284.87, -1126.24, 1050.92, 'Las Colinas street', 'The State', 0, 1, 110000, 5, 0, 0, 10, 199, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(224, 2101.64, -1075.89, 25.9306, 2284.87, -1126.24, 1050.92, 'Las Colinas street', 'The State', 0, 1, 110000, 5, 0, 0, 10, 200, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(225, 2108.75, -1082.29, 25.4915, 2284.87, -1126.24, 1050.92, 'Las Colinas street', 'The State', 0, 1, 110000, 5, 0, 0, 10, 201, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(226, 2157.19, -1072.34, 40.4963, 509.653, 1354.44, 1076.78, 'Las Colinas street', 'The State', 0, 1, 160000, 4, 0, 0, 10, 202, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(227, 2090.79, -1235.18, 26.0191, 290.904, 1242.92, 1082.68, 'Jefferson street', 'The State', 0, 1, 112000, 3, 0, 0, 10, 203, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(228, 2110.95, -1244.18, 25.8516, 290.904, 1242.92, 1082.68, 'Jefferson street', 'The State', 0, 1, 112000, 3, 0, 0, 10, 204, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(229, 2133.46, -1233, 24.4219, 448.365, 1354.23, 1082.22, 'Jefferson street', 'The State', 0, 1, 112000, 3, 0, 0, 10, 205, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(230, 2153.84, -1243.8, 25.3672, -79.9677, 1384.4, 1078.96, 'Jefferson street', 'The State', 0, 1, 112000, 3, 0, 0, 10, 206, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(231, 2191.84, -1239.23, 24.4879, 448.365, 1354.23, 1082.22, 'Jefferson street', 'The State', 0, 1, 112000, 3, 0, 0, 10, 207, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(232, 2209.69, -1240.25, 24.4801, 329.32, 1513.12, 1085.82, 'Jefferson street', 'The State', 0, 1, 112000, 3, 0, 0, 10, 208, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(233, 2229.69, -1241.61, 25.6562, 329.32, 1513.12, 1085.82, 'Jefferson street', 'The State', 0, 1, 112000, 3, 0, 0, 10, 209, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(235, 2249.88, -1238.88, 25.8984, 329.32, 1513.12, 1085.82, 'Jefferson street', 'The State', 0, 1, 112000, 3, 0, 0, 10, 210, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(236, 2090.98, -1277.84, 26.1797, 45.6335, 1439.33, 1082.41, 'Jefferson street', 'The State', 0, 1, 40000, 2, 0, 0, 10, 211, 0, 0, '', 0, 0, 0, 0),
(237, 2111.18, -1278.98, 25.8359, 45.6335, 1439.33, 1082.41, 'Jefferson street', 'The State', 0, 1, 112000, 3, 0, 0, 10, 212, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(238, 2132.23, -1280.05, 25.8906, 45.6335, 1439.33, 1082.41, 'Jefferson street', 'The State', 0, 1, 112000, 3, 0, 0, 10, 213, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(239, 2150.17, -1285.08, 24.5269, -79.893, 1383.59, 1078.96, 'Jefferson street', 'The State', 0, 1, 112000, 3, 0, 0, 10, 214, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(240, 2191.52, -1275.6, 25.1562, -79.893, 1383.59, 1078.96, 'Jefferson street', 'The State', 0, 1, 112000, 3, 0, 0, 10, 215, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(241, 2207.94, -1280.82, 25.1207, -79.893, 1383.59, 1078.96, 'Jefferson street', 'The State', 0, 1, 112000, 3, 0, 0, 10, 216, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(242, 2230.05, -1280.2, 25.6285, 289.907, 1502.15, 1078.42, 'Jefferson street', 'The State', 0, 1, 112000, 3, 0, 0, 10, 217, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(243, 2250.28, -1280.05, 25.4766, 289.907, 1502.15, 1078.42, 'Jefferson street', 'The State', 0, 1, 112000, 3, 0, 0, 10, 218, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 288.51, 1515.15, 1078.42, 0),
(244, 2129.58, -1361.79, 26.1363, 375.491, 1378.64, 1079.8, 'Jefferson street', 'The State', 0, 1, 112000, 3, 0, 0, 10, 219, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(245, 2147.65, -1366.29, 25.6418, 375.491, 1378.64, 1079.8, 'Jefferson street', 'The State', 0, 1, 112000, 3, 0, 0, 10, 220, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(246, 2185.16, -1363.71, 26.1598, 375.491, 1378.64, 1079.8, 'Jefferson street', 'The State', 0, 1, 112000, 3, 0, 0, 10, 221, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(247, 2202.74, -1363.68, 26.191, 375.491, 1378.64, 1079.8, 'Jefferson street', 'The State', 0, 1, 112000, 3, 0, 0, 10, 222, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(248, 2374.01, -1138.92, 29.0588, 244.113, 1145.96, 1081.17, 'East Los Santos street', 'The State', 0, 1, 210000, 8, 0, 0, 10, 223, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(249, 2394.82, -1133.54, 30.7188, 244.113, 1145.96, 1081.17, 'East Los Santos street', 'The State', 0, 1, 210000, 8, 0, 0, 10, 224, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(250, 2427.36, -1135.77, 34.7109, 2272.54, -1242.72, 1048.6, 'East Los Santos street', 'The State', 0, 1, 210000, 8, 0, 0, 10, 225, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(251, 2488.07, -1135.51, 39.5046, 2272.54, -1242.72, 1048.6, 'East Los Santos street', 'The State', 0, 1, 210000, 8, 0, 0, 10, 226, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(252, 2510.46, -1132.6, 41.6207, 2272.54, -1242.72, 1048.6, 'East Los Santos street', 'The State', 0, 1, 210000, 8, 0, 0, 10, 227, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(254, 2579.63, -1033.37, 69.5799, 2313.33, -1230.44, 1047.41, 'Las colinas street', 'The State', 0, 1, 110000, 3, 0, 0, 10, 229, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(255, 2572.39, -1091.77, 67.2257, 45.0461, 1439.55, 1082.41, 'Las Colinas street', 'The State', 0, 1, 110000, 3, 0, 0, 10, 230, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(256, 2561.89, -1034.34, 69.8692, 2313.33, -1230.44, 1047.41, 'Las colinas street', 'The State', 0, 1, 110000, 3, 0, 0, 10, 231, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(257, 2549.33, -1032.27, 69.5789, 2284.84, -1126.13, 1050.92, 'Las colinas street', 'The State', 0, 1, 110000, 3, 0, 0, 10, 232, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0);
INSERT INTO `houses` (`id`, `posx`, `posy`, `posz`, `exitx`, `exity`, `exitz`, `info`, `owner`, `owned`, `locked`, `price`, `levelbuy`, `rentprice`, `rentable`, `interior`, `world`, `cash`, `furnitures`, `weapons`, `checkx`, `checky`, `checkz`, `radio`) VALUES
(258, 2519.03, -1113.07, 56.5926, 2370.86, -1095.11, 1049.62, 'Las Colinas street', 'The State', 0, 1, 110000, 3, 0, 0, 10, 233, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(259, 2526.83, -1033.68, 69.5793, 2284.84, -1126.13, 1050.92, 'Las colinas street', 'The State', 0, 1, 110000, 3, 0, 0, 10, 234, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(260, 2512.73, -1027.23, 70.0859, 2284.84, -1126.13, 1050.92, 'Las colinas street', 'The State', 0, 1, 110000, 3, 0, 0, 10, 235, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(261, 2491.35, -1012.33, 65.3984, 2243.92, -1028.82, 1047.77, 'Las colinas street', 'The State', 0, 1, 110000, 3, 0, 0, 10, 236, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(262, 2462.32, -1011.39, 60.1137, 2243.92, -1028.82, 1047.77, 'Las colinas street', 'The State', 0, 1, 110000, 3, 0, 0, 10, 237, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(264, 2439.91, -1010.91, 54.3438, 2243.92, -1028.82, 1047.77, 'Las colinas street', 'The State', 0, 1, 110000, 3, 0, 0, 10, 239, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(265, 2576.68, -1070.75, 69.8322, 329.354, 1514.23, 1085.82, 'Las Colinas street', 'The State', 0, 1, 110000, 3, 0, 0, 10, 228, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(266, 2389.24, -1037.16, 53.5491, 2243.92, -1028.82, 1047.77, 'Las colinas street', 'The State', 0, 1, 110000, 3, 0, 0, 10, 238, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(267, 2470.69, -1105.32, 44.4879, 2364.25, -1074.05, 1047.77, 'Las Colinas street', 'The State', 0, 1, 110000, 3, 0, 0, 10, 240, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(268, 2457.06, -1102.5, 43.8672, 389.653, 1505.8, 1080.1, 'Las Colinas street', 'The State', 0, 1, 110000, 3, 0, 0, 10, 241, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(269, 2438.65, -1105.79, 43.0816, 329.354, 1514.23, 1085.82, 'Las Colinas street', 'The State', 0, 1, 110000, 3, 0, 0, 10, 242, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(270, 2407.92, -1106.97, 40.2957, 45.0461, 1439.55, 1082.41, 'Las Colinas street', 'The State', 0, 1, 110000, 3, 0, 0, 10, 243, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(271, 2334.66, -1204, 27.9766, 2254.59, -1112.23, 1049.13, 'East Los Santos street', 'The State', 0, 1, 80000, 3, 0, 0, 10, 244, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(272, 2324.38, -1218.84, 27.9766, 2188.69, -1073.54, 1050.48, 'East Los Santos street', 'The State', 0, 1, 80000, 3, 0, 0, 10, 245, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(273, 2440.7, -1057, 54.7387, 2284.76, -1126.23, 1050.92, 'Las Colinas street', 'The State', 0, 1, 80000, 3, 0, 0, 10, 246, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(274, 2457.76, -1054.65, 59.9592, 2284.76, -1126.23, 1050.92, 'Las Colinas street', 'The State', 0, 1, 80000, 3, 0, 0, 10, 247, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(275, 2479.61, -1063.99, 66.9982, 2284.76, -1126.23, 1050.92, 'Las Colinas street', 'The State', 0, 1, 80000, 3, 0, 0, 10, 248, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(276, 2334.71, -1234.66, 27.9766, 242.919, 323.364, 999.591, 'East Los Santos street', 'The State', 0, 1, 80000, 3, 0, 0, 10, 249, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(277, 2499.65, -1065.55, 70.2359, 2313.54, -1230.45, 1047.41, 'Las Colinas street', 'The State', 0, 1, 80000, 3, 0, 0, 10, 250, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(278, 2324.4, -1249.51, 27.9766, 242.919, 323.364, 999.591, 'East Los Santos street', 'The State', 0, 1, 80000, 3, 0, 0, 10, 251, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(279, 2334.64, -1266.12, 27.9693, 2254.59, -1112.23, 1049.13, 'East Los Santos street', 'The State', 0, 1, 80000, 3, 0, 0, 10, 252, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(280, 2526.12, -1060.67, 69.9708, 2313.54, -1230.45, 1047.41, 'Las Colinas street', 'The State', 0, 1, 80000, 3, 0, 0, 10, 253, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(281, 2534.48, -1063.38, 69.5655, 2313.54, -1230.45, 1047.41, 'Las Colinas street', 'The State', 0, 1, 80000, 3, 0, 0, 10, 254, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(282, 2324.41, -1280.97, 27.9821, 2188.69, -1073.54, 1050.48, 'East Los Santos street', 'The State', 0, 1, 80000, 3, 0, 0, 10, 255, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(283, 2625.95, -1112.59, 67.9953, 82.9849, 1272.08, 1079.89, 'East Los Santos street', 'The State', 0, 1, 90000, 4, 0, 0, 10, 256, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(284, 2625.93, -1098.76, 69.3561, 82.9849, 1272.08, 1079.89, 'East Los Santos street', 'The State', 0, 1, 90000, 4, 0, 0, 10, 257, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(285, 2627.65, -1085.15, 69.7156, 82.9849, 1272.08, 1079.89, 'East Los Santos street', 'The State', 0, 0, 90000, 4, 0, 0, 10, 258, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(286, 2628.1, -1067.91, 69.7156, 82.9849, 1272.08, 1079.89, 'East Los Santos street', 'The State', 0, 1, 90000, 4, 0, 0, 10, 259, 0, 1, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(287, 2481.78, -1340.93, 34.8516, 266.711, 321.534, 997.143, 'East Los Santos street', 'The State', 0, 1, 75000, 3, 0, 0, 10, 260, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(288, 2486.31, -1345.55, 38.6492, 2188.64, -1073.45, 1050.48, 'East Los Santos street', 'The State', 0, 1, 75000, 3, 0, 0, 10, 261, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(289, 2486.31, -1328.48, 38.6562, 2254.76, -1112.36, 1049.13, 'East Los Santos street', 'The State', 0, 1, 75000, 3, 0, 0, 10, 262, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(290, 2582.86, -952.936, 81.3879, 2284.81, -1126.2, 1050.92, 'Las Colinas street', 'The State', 0, 1, 55000, 4, 0, 0, 10, 263, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(291, 2481.77, -1345.01, 27.6578, 243.318, 323.361, 999.591, 'East Los Santos street', 'The State', 0, 1, 75000, 3, 0, 0, 10, 264, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(292, 2581.49, -969.194, 81.3646, 2284.81, -1126.2, 1050.92, 'Las Colinas street', 'The State', 0, 1, 55000, 4, 0, 0, 10, 265, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(293, 2481.77, -1331.96, 28.3037, 2254.75, -1112.02, 1049.13, 'East Los Santos street', 'Julian_Conrado', 1, 1, 75000, 3, 1, 0, 10, 266, 2, 9, '', 2254.63, -1109.67, 1049.13, 0),
(294, 2552.33, -958.342, 82.6287, 2284.81, -1126.2, 1050.92, 'Las Colinas street', 'The State', 0, 1, 55000, 4, 0, 0, 10, 267, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(295, 1284.49, -1067.14, 31.6719, 2284.81, -1126.2, 1050.92, 'Temple Street', 'Emmanuel_Kotov', 1, 0, 3, 4, 0, 0, 10, 268, 0, 2, '', 0, 0, 0, 0),
(297, 1242.57, -1076.77, 31.5547, 2189.17, -1073.56, 1050.48, 'Temple Street', 'Hleb_Woronoff', 1, 1, 100, 4, 0, 0, 10, 270, 0, 0, '', 0, 0, 0, 0),
(298, 2492.1, -965.721, 82.5489, 2189.17, -1073.56, 1050.48, 'Las Colinas street', 'The State', 0, 1, 55000, 4, 0, 0, 10, 271, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 2188.78, -1073.93, 1050.48, 0),
(299, 2472.36, -962.119, 80.5255, 2189.17, -1073.56, 1050.48, 'Las Colinas street', 'The State', 0, 1, 55000, 4, 0, 0, 10, 272, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(300, 2459.51, -947.707, 80.0831, 2254.9, -1112.62, 1049.13, 'Las Colinas street', 'The State', 0, 1, 55000, 4, 0, 0, 10, 273, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(301, 2454.18, -965.003, 80.0731, 2254.9, -1112.62, 1049.13, 'Las Colinas street', 'The State', 0, 1, 55000, 4, 0, 0, 10, 274, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(303, 2000.2, -991.655, 32.1314, 45.7828, 1439.35, 1082.41, 'Las Colinas', 'The State', 0, 1, 150000, 3, 0, 0, 10, 275, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(304, 2007.3, -984.635, 34.4609, 2150.07, -1217.25, 1049.12, 'Las Colinas', 'The State', 0, 1, 150000, 3, 0, 0, 10, 276, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(305, 2015.43, -977.647, 36.9531, 290.721, 1243.01, 1082.68, 'Las Colinas', 'The State', 0, 1, 150000, 3, 0, 0, 10, 277, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(306, 2045.17, -965.878, 44.5537, 448.284, 1355.15, 1082.22, 'Las Colinas', 'The State', 0, 1, 150000, 3, 0, 0, 10, 278, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(307, 2049.15, -987.279, 44.9799, 2150.07, -1217.25, 1049.12, 'Las Colinas', 'The State', 0, 1, 150000, 3, 0, 0, 10, 279, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(308, 2808.03, -1175.95, 25.3814, 7.70612, 1305.83, 1082.83, 'East Beach street', 'The State', 0, 1, 210000, 6, 0, 0, 10, 280, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(310, 2066.14, -993.191, 48.7996, 448.284, 1355.15, 1082.22, 'Las Colinas', 'The State', 0, 1, 150000, 3, 0, 0, 10, 281, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(311, 2808.03, -1190.54, 25.3432, 7.73688, 1305.81, 1082.83, 'East Beach street', 'The State', 0, 1, 210000, 6, 0, 0, 10, 282, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(312, 2073.44, -965.171, 49.3887, 289.968, 1502.01, 1078.42, 'Las Colinas', 'The State', 0, 1, 150000, 3, 0, 0, 10, 283, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(313, 2847.02, -1309.86, 14.6821, 7.73688, 1305.81, 1082.83, 'East Beach street', 'The State', 0, 1, 210000, 6, 0, 0, 10, 284, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(314, 2842.16, -1335.1, 14.7421, 7.73688, 1305.81, 1082.83, 'East Beach street', 'The State', 0, 1, 210000, 6, 0, 0, 10, 285, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(315, 2089.49, -996.237, 53.0622, 2150.07, -1217.25, 1049.12, 'Las Colinas', 'The State', 0, 1, 150000, 3, 0, 0, 10, 286, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(316, 2090.65, -972.343, 51.8616, 290.721, 1243.01, 1082.68, 'Las Colinas', 'The State', 0, 1, 150000, 3, 0, 0, 10, 287, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(317, 2109, -1000.8, 60.5078, 289.978, 1502.48, 1078.42, 'Las Colinas', 'The State', 0, 1, 150000, 3, 0, 0, 10, 288, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(318, 2139.84, -1008.45, 61.9859, 2370.67, -1095.73, 1049.62, 'Las Colinas', 'The State', 0, 1, 150000, 3, 0, 0, 10, 289, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(319, 2186.5, -997.329, 66.4688, 45.2578, 1439.38, 1082.41, 'Las Colinas', 'The State', 0, 1, 150000, 3, 0, 0, 10, 290, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(320, 2218.83, -1031.76, 60.2685, 329.51, 1513.24, 1085.82, 'Las Colinas street', 'The State', 0, 1, 150000, 3, 0, 0, 10, 291, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(321, 2208.14, -1026.62, 61.3511, 289.978, 1502.48, 1078.42, 'Las Colinas street', 'The State', 0, 1, 150000, 3, 0, 0, 10, 292, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(322, 2249.38, -1060.36, 55.9688, 448.284, 1355.15, 1082.22, 'Las Colinas street', 'The State', 0, 1, 150000, 3, 0, 0, 10, 293, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(323, 2259.45, -1019.08, 59.2974, 2150.07, -1217.25, 1049.12, 'Las Colinas street', 'The State', 0, 1, 150000, 3, 0, 0, 10, 294, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(324, 2278.81, -1077.44, 48.241, 290.721, 1243.01, 1082.68, 'Las Colinas street', 'The State', 0, 1, 150000, 3, 0, 0, 10, 295, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(325, 2287.47, -1081.03, 48.2451, 45.2578, 1439.38, 1082.41, 'Las Colinas street', 'The State', 0, 1, 150000, 3, 0, 0, 10, 296, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(326, 1187.38, -1260.95, 15.1797, 2284.8, -1126, 1050.92, 'Market street', 'The State', 0, 1, 95000, 4, 0, 0, 10, 297, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(327, 1179.89, -1261, 15.1797, 2284.8, -1126, 1050.92, 'Market street', 'The State', 0, 1, 95000, 4, 0, 0, 10, 298, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(328, 1187.26, -1254.68, 15.1797, 2284.8, -1126, 1050.92, 'Market street', 'The State', 0, 1, 95000, 4, 0, 0, 10, 299, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(329, 1180.05, -1254.8, 15.1797, 2284.8, -1126, 1050.92, 'Market street', 'The State', 0, 0, 95000, 4, 0, 0, 10, 300, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 2287.31, -1126.35, 1050.92, 0),
(330, 1187.34, -1260.97, 18.8984, 2260.99, -1121.14, 1048.88, 'Market street', 'The State', 0, 1, 95000, 4, 0, 0, 10, 301, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(331, 1180.13, -1261.12, 18.8984, 2260.99, -1121.14, 1048.88, 'Market street', 'The State', 0, 1, 95000, 4, 0, 0, 10, 302, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(332, 1180.28, -1254.68, 18.8908, 2243.95, -1028.92, 1047.77, 'Market street', 'The State', 0, 1, 95000, 4, 0, 0, 10, 303, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(333, 1187.01, -1254.65, 18.8908, 2243.95, -1028.92, 1047.77, 'Market street', 'The State', 0, 1, 95000, 4, 0, 0, 10, 304, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(334, 1118.11, -1021.54, 34.9922, 156.118, 1410.28, 1086.43, 'Temple street', 'The State', 0, 1, 250000, 6, 0, 0, 10, 305, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(336, 1128.04, -1021.62, 34.9922, 156.118, 1410.28, 1086.43, 'Temple street', 'The State', 0, 1, 250000, 6, 0, 0, 10, 307, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(337, 315.79, -1769.43, 4.62152, 82.9679, 1272.38, 1079.89, 'Maria Beach street', 'The State', 0, 1, 185000, 3, 0, 0, 10, 306, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(338, 1189.12, -1018.1, 32.5469, 2313.35, -1230.49, 1047.41, 'Temple street', 'The State', 0, 1, 150000, 4, 0, 0, 10, 308, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(339, 305.331, -1770.22, 4.53827, 448.312, 1354.36, 1082.22, 'Maria Beach street', 'The State', 0, 1, 185000, 3, 0, 0, 10, 309, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(340, 1196.18, -1017.23, 32.5469, 2313.35, -1230.49, 1047.41, 'Temple street', 'The State', 0, 1, 150000, 4, 0, 0, 10, 310, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(341, 1188.22, -1011.89, 36.2267, 2313.35, -1230.49, 1047.41, 'Temple street', 'The State', 0, 1, 150000, 4, 0, 0, 10, 311, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(342, 295.31, -1764.12, 4.86803, 290.01, 1502.16, 1078.42, 'Maria Beach street', 'The State', 0, 1, 185000, 3, 0, 0, 10, 312, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(343, 1188.51, -1011.88, 32.5469, 290.831, 1242.89, 1082.68, 'Temple street', 'The State', 0, 1, 150000, 4, 0, 0, 10, 313, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(344, 1195.47, -1010.86, 36.2267, 290.831, 1242.89, 1082.68, 'Temple street', 'The State', 0, 1, 150000, 4, 0, 0, 10, 314, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(345, 1195.55, -1010.87, 32.553, 290.831, 1242.89, 1082.68, 'Temple street', 'The State', 0, 1, 150000, 4, 0, 0, 10, 315, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(346, 1189.24, -1018.01, 36.2344, 2313.35, -1230.49, 1047.41, 'Temple street', 'The State', 0, 1, 150000, 4, 0, 0, 10, 316, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(347, 1196.2, -1017.1, 36.2344, 2313.35, -1230.49, 1047.41, 'Temple street', 'The State', 0, 1, 150000, 4, 0, 0, 10, 317, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(348, 280.966, -1767.08, 4.54688, 509.489, 1354.74, 1076.78, 'Maria Beach street', 'The State', 0, 1, 185000, 3, 0, 0, 10, 318, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(349, 206.884, -1768.88, 4.36903, 7.99419, 1305.75, 1082.83, 'Maria Beach street', 'The State', 0, 1, 185000, 3, 0, 0, 10, 319, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(350, 192.871, -1769.4, 4.32848, 389.72, 1505.8, 1080.1, 'Maria Beach street', 'The State', 0, 1, 185000, 3, 0, 0, 10, 320, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(351, 1234.41, -1016.23, 32.6067, 242.774, 323.158, 999.591, 'Temple street', 'The State', 0, 1, 150000, 4, 0, 0, 10, 321, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(352, 1227.47, -1017.17, 32.6016, 242.774, 323.158, 999.591, 'Temple street', 'The State', 0, 1, 150000, 4, 0, 0, 10, 322, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(354, 1226.64, -1011.06, 32.6016, 242.774, 323.158, 999.591, 'Temple street', 'The State', 0, 1, 150000, 4, 0, 0, 10, 324, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(355, 1233.65, -1010.07, 32.6016, 242.774, 323.158, 999.591, 'Temple street', 'The State', 0, 1, 150000, 4, 0, 0, 10, 325, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(356, 1233.63, -1009.95, 36.3283, 2272.11, -1242.74, 1048.6, 'Temple street', 'The State', 0, 1, 150000, 4, 0, 0, 10, 323, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(357, 1226.42, -1010.86, 36.3283, 242.774, 323.158, 999.591, 'Temple street', 'The State', 0, 1, 150000, 4, 0, 0, 10, 326, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(359, 1227.61, -1017.18, 36.3359, 242.774, 323.158, 999.591, 'Temple street', 'The State', 0, 1, 150000, 4, 0, 0, 10, 328, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(360, 1234.22, -1016.34, 36.3359, 242.774, 323.158, 999.591, 'Temple street', 'The State', 0, 1, 150000, 4, 0, 0, 10, 329, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(361, 168.144, -1769.39, 4.47181, 7.99419, 1305.75, 1082.83, 'Maria Beach street', 'The State', 0, 1, 185000, 3, 0, 0, 10, 327, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(362, 1421.79, -886.115, 50.6821, 290.053, 1502.25, 1078.42, 'Mulholland street', 'The State', 0, 1, 150000, 6, 0, 0, 10, 330, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(661, 1895.45, -2068.45, 15.6689, 7.624, 1306.46, 1082.83, 'El Corona Street', 'Eftimie_Cristian', 1, 0, 40000, 0, 0, 0, 10, 0, 0, 7, '', 0, 0, 0, 0),
(364, 1540.47, -851.323, 64.3361, 290.053, 1502.25, 1078.42, 'Mulholland street', 'The State', 0, 1, 150000, 6, 0, 0, 10, 332, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(365, 1535.03, -800.176, 72.8495, 290.053, 1502.25, 1078.42, 'Mulholland street', 'The State', 0, 1, 150000, 6, 0, 0, 10, 333, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(366, 1527.79, -772.55, 80.5781, 290.053, 1502.25, 1078.42, 'Mulholland street', 'The State', 0, 1, 150000, 6, 0, 0, 10, 334, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(367, 1497.01, -688.099, 95.5633, 278.025, 1058.12, 1083.45, 'Molholland street', 'The State', 0, 1, 550000, 11, 0, 0, 10, 335, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(368, 1112.64, -742.038, 100.133, 448.193, 1354.15, 1082.22, 'Mulholland street', 'The State', 0, 1, 220000, 6, 0, 0, 10, 336, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(369, 653.596, -1714.03, 14.7648, 509.602, 1354.3, 1076.78, 'Santa Maria street', 'The State', 0, 1, 210000, 4, 0, 0, 10, 337, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(370, 652.474, -1693.96, 14.5547, 509.602, 1354.3, 1076.78, 'Santa Maria street', 'The State', 0, 1, 210000, 4, 0, 0, 10, 338, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(371, 2750.22, -1205.59, 67.4844, 509.602, 1354.3, 1076.78, 'Santa Maria street', 'The State', 0, 1, 210000, 4, 0, 0, 10, 339, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(372, 656.14, -1635.87, 15.8617, 509.602, 1354.3, 1076.78, 'Santa Maria street', 'The State', 0, 1, 210000, 4, 0, 0, 10, 340, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(373, 653.244, -1619.83, 15, 83.0311, 1272.16, 1079.89, 'Santa Maria street', 'The State', 0, 1, 210000, 4, 0, 0, 10, 341, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(374, 692.929, -1602.78, 15.0469, 83.0311, 1272.16, 1079.89, 'Santa Maria street', 'The State', 0, 1, 210000, 4, 0, 0, 10, 342, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(375, 766.924, -1605.84, 13.8039, 156.009, 1409.98, 1086.43, 'Santa Maria street', 'The State', 0, 1, 210000, 4, 0, 0, 10, 343, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(376, 768.08, -1655.82, 5.60938, 263.303, 978.366, 1083.69, 'Santa Maria street', 'The State', 0, 1, 210000, 4, 0, 0, 10, 344, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(377, 769.229, -1696.5, 5.15542, 263.303, 978.366, 1083.69, 'Santa Maria street', 'The State', 0, 1, 210000, 4, 0, 0, 10, 345, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(378, 769.018, -1726.23, 13.4321, 263.303, 978.366, 1083.69, 'Santa Maria street', 'The State', 0, 1, 210000, 4, 0, 0, 10, 346, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(379, 769.227, -1745.79, 13.0773, 263.303, 978.366, 1083.69, 'Santa Maria street', 'The State', 0, 1, 210000, 4, 0, 0, 10, 347, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(380, 791.482, -1753.21, 13.4607, 199.095, 1111.01, 1083.21, 'Santa Maria street', 'The State', 0, 1, 210000, 4, 0, 0, 10, 348, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(381, 797.236, -1729.3, 13.5469, 199.095, 1111.01, 1083.21, 'Santa Maria street', 'The State', 0, 1, 210000, 4, 0, 0, 10, 349, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(382, 793.975, -1707.48, 14.0382, 199.095, 1111.01, 1083.21, 'Santa Maria street', 'The State', 0, 1, 210000, 4, 0, 0, 10, 350, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(383, 794.895, -1691.97, 14.4633, 199.095, 1111.01, 1083.21, 'Santa Maria street', 'The State', 0, 1, 210000, 4, 0, 0, 10, 351, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(384, 790.87, -1661.36, 13.4843, 156.025, 1410.32, 1086.43, 'Santa Maria street', 'The State', 0, 1, 210000, 4, 0, 0, 10, 352, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(385, 697.279, -1626.98, 3.74917, 156.025, 1410.32, 1086.43, 'Santa Maria street', 'The State', 0, 1, 210000, 4, 0, 0, 10, 353, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(386, 693.756, -1645.83, 4.09375, 156.025, 1410.32, 1086.43, 'Santa Maria street', 'The State', 0, 1, 210000, 4, 0, 0, 10, 354, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(387, 694.824, -1690.74, 4.34612, 156.025, 1410.32, 1086.43, 'Santa Maria street', 'The State', 0, 1, 210000, 4, 0, 0, 10, 355, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(388, 693.545, -1705.87, 3.81948, 156.025, 1410.32, 1086.43, 'Santa Maria street', 'The State', 0, 1, 210000, 4, 0, 0, 10, 356, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(389, 980.43, -677.299, 121.976, 156.214, 1410.03, 1086.43, 'Red County hill', 'The State', 0, 1, 450000, 8, 0, 0, 10, 357, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(390, 1093.93, -807.136, 107.419, 199.013, 1112.33, 1083.21, 'Mulholland street', 'The State', 0, 1, 210000, 6, 0, 0, 10, 358, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(391, 1034.88, -813.159, 101.852, 2149.86, -1217.37, 1049.12, 'Mulholland street', 'The State', 0, 1, 210000, 6, 0, 0, 10, 359, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(392, 989.873, -828.615, 95.4686, 745.306, 1412.62, 1102.42, 'Mulholland street', 'The State', 0, 1, 210000, 6, 0, 0, 10, 360, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(393, 937.916, -848.692, 93.5772, 198.983, 1112.56, 1083.21, 'Mulholland street', 'The State', 0, 1, 210000, 6, 0, 0, 10, 361, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(394, 923.905, -853.402, 93.4565, 745.306, 1412.62, 1102.42, 'Mulholland street', 'The State', 0, 1, 210000, 6, 0, 0, 10, 362, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(395, 910.433, -817.524, 103.126, 198.983, 1112.56, 1083.21, 'Mulholland street', 'The State', 0, 1, 210000, 6, 0, 0, 10, 363, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(396, 835.965, -894.862, 68.7689, 2370.9, -1095.45, 1049.62, 'Mulholland street', 'The State', 0, 1, 270000, 6, 0, 0, 10, 364, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(397, 827.757, -858.004, 70.3308, 448.324, 1354.07, 1082.22, 'Mulholland street', 'The State', 0, 1, 190000, 5, 0, 0, 10, 365, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(398, 1016.93, -763.359, 112.563, 745.306, 1412.62, 1102.42, 'Mulholland street', 'The State', 0, 1, 210000, 6, 0, 0, 10, 366, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(399, 977.404, -771.718, 112.203, 2149.86, -1217.37, 1049.12, 'Mulholland street', 'The State', 0, 1, 210000, 6, 0, 0, 10, 367, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(400, 785.928, -828.588, 70.2896, 198.983, 1112.56, 1083.21, 'Mulholland street', 'The State', 0, 1, 240000, 6, 0, 0, 10, 368, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(401, 848.01, -745.529, 94.9693, 199.013, 1112.33, 1083.21, 'Mulholland street', 'The State', 0, 1, 240000, 6, 0, 0, 10, 369, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(402, 891.26, -783.128, 101.314, 2370.59, -1095.64, 1049.62, 'Mulholland street', 'The State', 0, 1, 270000, 6, 0, 0, 10, 370, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(403, 897.92, -677.118, 116.89, 2370.9, -1095.45, 1049.62, 'Mulholland street', 'The State', 0, 1, 270000, 6, 0, 0, 10, 371, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(404, 946.366, -710.66, 122.62, 2149.86, -1217.37, 1049.12, 'Mulholland street', 'The State', 0, 1, 210000, 6, 0, 0, 10, 372, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(405, 1045.14, -642.944, 120.117, 198.983, 1112.56, 1083.21, 'Mulholland street', 'The State', 0, 1, 300000, 6, 0, 0, 10, 373, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(406, 1094.96, -647.914, 113.648, 745.306, 1412.62, 1102.42, 'Mulholland street', 'The State', 0, 1, 385000, 6, 0, 0, 10, 374, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(407, 1332.1, -633.505, 109.135, 2149.86, -1217.37, 1049.12, 'Mulholland street', 'The State', 0, 1, 385000, 6, 0, 0, 10, 375, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(408, 1442.65, -628.835, 95.7186, 198.983, 1112.56, 1083.21, 'Mulholland street', 'The State', 0, 1, 355000, 6, 0, 0, 10, 376, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(409, 2355.59, -1038.72, 54.3358, 1.55887, -3.15909, 999.428, 'Las Colinas street', 'The State', 0, 1, 23000, 3, 0, 0, 2, 377, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(410, 2351.03, -1039.9, 54.3358, 1.55887, -3.15909, 999.428, 'Las Colinas street', 'The State', 0, 1, 23000, 3, 0, 0, 2, 378, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(411, 2750.03, -1222.36, 64.6016, 1.55887, -3.15909, 999.428, 'El Corona Street', 'The State', 0, 1, 150000, 1, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0),
(412, 2373.16, -1051.72, 54.1315, 1.55887, -3.15909, 999.428, 'Las Colinas street', 'The State', 0, 1, 23000, 3, 0, 0, 2, 380, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(413, 2355.8, -1058.8, 54.078, 1.55887, -3.15909, 999.428, 'Las Colinas street', 'The State', 0, 1, 23000, 3, 0, 0, 2, 381, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(414, 2347.97, -1047.31, 53.8525, 1.55887, -3.15909, 999.428, 'Las Colinas street', 'The State', 0, 1, 23000, 3, 0, 0, 2, 382, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(415, 2370.21, -1034.89, 54.4106, 1.7119, -3.0225, 999.428, 'Las Colinas street', 'The State', 0, 1, 23000, 3, 0, 0, 2, 383, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(416, 2122.08, -970.307, 58.2074, 1.79633, -3.20144, 999.428, 'Las Colinas street', 'The State', 0, 1, 23000, 3, 0, 0, 2, 384, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(417, 2131.95, -974.007, 59.7856, 1.79633, -3.20144, 999.428, 'Las Colinas street', 'The State', 0, 1, 23000, 3, 0, 0, 2, 385, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(418, 2330.23, -1060.91, 52.4686, 1.55887, -3.15909, 999.428, 'Las Colinas street', 'The State', 0, 1, 23000, 3, 0, 0, 2, 386, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(419, 2325.44, -1060.76, 52.3516, 1.55887, -3.15909, 999.428, 'Las Colinas street', 'The State', 0, 1, 23000, 3, 0, 0, 2, 387, 0, 0, '', 0, 0, 0, 0),
(420, 2142.7, -978.118, 61.3793, 1.79633, -3.20144, 999.428, 'Las Colinas street', 'The State', 0, 1, 23000, 3, 0, 0, 2, 388, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(421, 2154.1, -979.947, 63.2934, 1.79633, -3.20144, 999.428, 'Las Colinas street', 'The State', 0, 1, 23000, 3, 0, 0, 2, 389, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(422, 2319.59, -1053.3, 52.3582, 1.55887, -3.15909, 999.428, 'Las Colinas street', 'The State', 0, 1, 23000, 3, 0, 0, 2, 390, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(423, 2335.09, -1045.9, 52.5529, 1.55887, -3.15909, 999.428, 'Las Colinas street', 'The State', 0, 1, 23000, 3, 0, 0, 2, 391, 0, 0, '', 0, 0, 0, 0),
(424, 2787.06, -1926.14, 13.5469, -79.9141, 1383.94, 1078.96, 'Playa Del Seville street', 'The State', 0, 1, 65000, 3, 0, 0, 10, 392, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(425, 2787.07, -1952.55, 13.5469, -49.0384, 1458.43, 1085.61, 'Playa Del Seville street', 'The State', 0, 1, 65000, 3, 0, 0, 10, 393, 110000, 1, '', -51.8722, 1461.49, 1085.61, 1),
(426, 2751.49, -1962.85, 13.5469, 329.058, 1513.33, 1085.82, 'Playa Del Seville street', 'The State', 0, 0, 65000, 3, 0, 0, 10, 394, 100000, 0, '', 329.472, 1516.26, 1085.82, 1),
(427, 2751.5, -1936.45, 13.5394, 329.29, 1513.1, 1085.82, 'Playa Del Seville street', 'The State', 0, 1, 65000, 3, 0, 0, 10, 395, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(428, 2695.38, -2020.55, 14.0223, 2364.24, -1074.07, 1047.77, 'Wilowfiled street', 'The State', 0, 1, 50000, 3, 0, 0, 10, 396, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(429, 2673.28, -2020.29, 14.1682, -79.9141, 1383.94, 1078.96, 'Wilowfiled street', 'The State', 0, 1, 50000, 3, 0, 0, 10, 397, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(430, 2650.7, -2021.78, 14.1766, -49.0384, 1458.43, 1085.61, 'Wilowfiled street', 'The State', 0, 1, 50000, 3, 0, 0, 10, 398, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(431, 2635.59, -2012.89, 14.1443, 191.226, 1289.83, 1082.14, 'Wilowfiled street', 'The State', 0, 1, 50000, 3, 0, 0, 10, 399, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(432, 2637.04, -1991.73, 14.324, -79.9752, 1383.63, 1078.96, 'Wilowfiled street', 'The State', 0, 1, 50000, 3, 0, 0, 10, 400, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(433, 2652.75, -1989.43, 13.9988, 329.058, 1513.33, 1085.82, 'Wilowfiled street', 'The State', 0, 1, 50000, 3, 0, 0, 10, 401, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(434, 2672.73, -1989.47, 14.324, -49.0384, 1458.43, 1085.61, 'Wilowfiled street', 'The State', 0, 1, 50000, 3, 0, 0, 10, 402, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(435, 2696.38, -1990.36, 14.2229, -79.9141, 1383.94, 1078.96, 'Wilowfiled street', 'The State', 0, 1, 50000, 3, 0, 0, 10, 403, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(436, 725.693, -1440.45, 13.5391, 2149.85, -1217.71, 1049.12, 'Marina street', 'The State', 0, 1, 175000, 3, 0, 0, 10, 404, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(442, 725.636, -1451.04, 17.6953, 2272.55, -1242.62, 1048.6, 'Marina street', 'The State', 0, 1, 175000, 3, 0, 0, 10, 405, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(443, 2707.31, -1238.07, 59.6749, 2297.93, -1093.84, 1048.87, 'Los Flores street', 'The State', 0, 1, 40000, 3, 0, 0, 10, 406, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(444, 2707.37, -1233.49, 61.0855, 2254.71, -1112.66, 1049.13, 'Los Flores street', 'The State', 0, 1, 40000, 3, 0, 0, 10, 407, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(445, 2707.31, -1229.27, 62.301, 2188.51, -1073.32, 1050.48, 'Los Flores street', 'The State', 0, 1, 40000, 3, 0, 0, 10, 408, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(446, 2707.31, -1224.68, 63.5868, 265.764, 321.782, 997.143, 'Los Flores street', 'The State', 0, 1, 40000, 3, 0, 0, 10, 409, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(447, 2707.31, -1220.48, 64.8803, 2297.93, -1093.84, 1048.87, 'Los Flores street', 'The State', 0, 1, 40000, 3, 0, 0, 10, 410, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(448, 2707.31, -1216.3, 66.2291, 2254.71, -1112.66, 1049.13, 'Los Flores street', 'The State', 0, 1, 40000, 3, 0, 0, 10, 411, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(449, 2707.31, -1211.73, 67.6187, 2188.51, -1073.32, 1050.48, 'Los Flores street', 'The State', 0, 1, 40000, 3, 0, 0, 10, 412, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(450, 2707.31, -1207.54, 68.752, 242.758, 323.021, 999.591, 'Los Flores street', 'The State', 0, 1, 40000, 3, 0, 0, 10, 413, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(451, 2707.31, -1203.1, 69.6862, 265.764, 321.782, 997.143, 'Los Flores street', 'The State', 0, 1, 40000, 3, 0, 0, 10, 414, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(452, 2707.31, -1200.11, 70.4606, 2254.71, -1112.66, 1049.13, 'Los Flores street', 'Adelmo_Razo', 1, 0, 40000, 3, 2, 1, 10, 415, 8, 0, '', 0, 0, 0, 0),
(453, 2700.21, -1200.19, 68.9706, 2297.93, -1093.84, 1048.87, 'Los Flores street', 'The State', 0, 0, 40000, 3, 0, 0, 10, 416, 0, 1, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(454, 2700.21, -1203.09, 68.1962, 2188.51, -1073.32, 1050.48, 'Los Flores street', 'The State', 0, 1, 40000, 3, 0, 0, 10, 417, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(455, 2700.2, -1207.61, 67.2616, 2254.71, -1112.66, 1049.13, 'Los Flores street', 'The State', 0, 1, 40000, 3, 0, 0, 10, 418, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(456, 2700.21, -1211.81, 66.1282, 2297.93, -1093.84, 1048.87, 'Los Flores street', 'The State', 0, 1, 40000, 3, 0, 0, 10, 419, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(457, 2700.21, -1216.36, 64.7388, 265.764, 321.782, 997.143, 'Los Flores street', 'The State', 0, 1, 40000, 3, 0, 0, 10, 420, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(458, 2700.2, -1220.51, 63.3885, 2188.51, -1073.32, 1050.48, 'Los Flores street', 'The State', 0, 1, 40000, 3, 0, 0, 10, 421, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(459, 2700.21, -1224.71, 62.0962, 2254.71, -1112.66, 1049.13, 'Los Flores street', 'The State', 0, 1, 40000, 3, 0, 0, 10, 422, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(460, 2700.21, -1229.25, 60.811, 242.881, 323.065, 999.591, 'Los Flores street', 'The State', 0, 1, 40000, 3, 0, 0, 10, 423, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(461, 2700.21, -1233.6, 59.5814, 2297.93, -1093.84, 1048.87, 'Los Flores street', 'The State', 0, 1, 40000, 3, 0, 0, 10, 424, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(462, 2700.21, -1238.1, 58.1842, 2254.71, -1112.66, 1049.13, 'Los Flores street', 'The State', 0, 1, 40000, 3, 0, 0, 10, 425, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(463, 2690.54, -1238, 57.5103, 2188.51, -1073.32, 1050.48, 'Los Flores street', 'The State', 0, 1, 40000, 3, 0, 0, 10, 426, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(464, 2690.54, -1233.48, 58.9079, 2297.93, -1093.84, 1048.87, 'Los Flores street', 'The State', 0, 1, 40000, 3, 0, 0, 10, 427, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(465, 2690.54, -1229.23, 60.1368, 265.764, 321.782, 997.143, 'Los Flores street', 'The State', 0, 1, 40000, 3, 0, 0, 10, 428, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(466, 2690.54, -1224.68, 61.4226, 266.327, 321.823, 997.143, 'Los Flores street', 'The State', 0, 1, 40000, 3, 0, 0, 10, 429, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(467, 2690.54, -1220.53, 62.7158, 2297.93, -1093.84, 1048.87, 'Los Flores street', 'The State', 0, 1, 40000, 3, 0, 0, 10, 430, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(468, 2690.54, -1216.3, 64.0651, 2188.51, -1073.32, 1050.48, 'Los Flores street', 'The State', 0, 1, 40000, 3, 0, 0, 10, 431, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(469, 2690.54, -1211.82, 65.4547, 2254.71, -1112.66, 1049.13, 'Los Flores street', 'The State', 0, 1, 40000, 3, 0, 0, 10, 432, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(470, 2690.54, -1207.56, 66.5882, 266.327, 321.823, 997.143, 'Los Flores street', 'The State', 0, 1, 40000, 3, 0, 0, 10, 433, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(471, 2690.55, -1203.09, 67.5232, 2188.51, -1073.32, 1050.48, 'Los Flores street', 'The State', 0, 1, 40000, 3, 0, 0, 10, 434, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(472, 2690.54, -1200, 68.2964, 2297.93, -1093.84, 1048.87, 'Los Flores street', 'The State', 0, 1, 40000, 3, 0, 0, 10, 435, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(473, 2683.44, -1200.11, 66.8062, 265.764, 321.782, 997.143, 'Los Flores street', 'The State', 0, 1, 40000, 3, 0, 0, 10, 436, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(474, 2683.44, -1203.05, 66.0321, 2254.71, -1112.66, 1049.13, 'Los Flores street', 'The State', 0, 1, 40000, 3, 0, 0, 10, 437, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(475, 2683.44, -1207.57, 65.0975, 2188.51, -1073.32, 1050.48, 'Los Flores street', 'The State', 0, 1, 40000, 3, 0, 0, 10, 438, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(477, 2683.44, -1216.25, 62.5746, 2297.93, -1093.84, 1048.87, 'Los Flores street', 'The State', 0, 1, 40000, 3, 0, 0, 10, 439, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(478, 2683.44, -1220.54, 61.2248, 265.764, 321.782, 997.143, 'Los Flores street', 'The State', 0, 1, 40000, 3, 0, 0, 10, 440, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(479, 2683.44, -1224.82, 59.9323, 2188.51, -1073.32, 1050.48, 'Los Flores street', 'The State', 0, 1, 40000, 3, 0, 0, 10, 441, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(482, 2683.33, -1238.09, 55.9975, 2254.71, -1112.66, 1049.13, 'Los Flores street', 'The State', 0, 1, 40000, 3, 0, 0, 10, 442, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(483, 2683.42, -1233.6, 57.4135, 2297.93, -1093.84, 1048.87, 'Los Flores street', 'The State', 0, 1, 40000, 3, 0, 0, 10, 443, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(486, 2670.28, -1207.6, 64.801, 265.764, 321.782, 997.143, 'Los Flores street', 'The State', 0, 1, 40000, 3, 0, 0, 10, 444, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(487, 2670.28, -1211.76, 63.667, 2188.51, -1073.32, 1050.48, 'Los Flores street', 'The State', 0, 1, 40000, 3, 0, 0, 10, 445, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(488, 2670.31, -1202.99, 65.7338, 2297.93, -1093.84, 1048.87, 'Los Flores street', 'The State', 0, 1, 40000, 3, 0, 0, 10, 446, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(489, 2670.28, -1216.34, 62.2645, 2254.71, -1112.66, 1049.13, 'Los Flores street', 'The State', 0, 1, 40000, 3, 0, 0, 10, 447, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(490, 2670.28, -1200.06, 66.4935, 265.764, 321.782, 997.143, 'Los Flores street', 'The State', 0, 1, 40000, 3, 0, 0, 10, 448, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(491, 2670.28, -1220.53, 60.9202, 242.758, 323.021, 999.591, 'Los Flores street', 'The State', 0, 1, 40000, 3, 0, 0, 10, 449, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(492, 2670.28, -1224.78, 59.6268, 2297.93, -1093.84, 1048.87, 'Los Flores street', 'The State', 0, 1, 40000, 3, 0, 0, 10, 450, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(493, 2683.44, -1211.8, 63.9642, 2188.51, -1073.32, 1050.48, 'Los Flores street', 'The State', 0, 1, 40000, 3, 0, 0, 10, 451, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(494, 2670.44, -1233.53, 57.1231, 2254.71, -1112.66, 1049.13, 'Los Flores street', 'The State', 0, 1, 40000, 3, 0, 0, 10, 452, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(495, 2670.28, -1238.04, 55.7299, 2297.93, -1093.84, 1048.87, 'Los Flores street', 'The State', 0, 1, 40000, 3, 0, 0, 10, 453, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(496, 2670.28, -1229.24, 58.3544, 242.758, 323.021, 999.591, 'Los Flores street', 'The State', 0, 1, 40000, 3, 0, 0, 10, 454, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(497, 2663.18, -1200.09, 66.4672, 242.758, 323.021, 999.591, 'Los Flores street', 'The State', 0, 1, 40000, 3, 0, 0, 10, 455, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(498, 2663.18, -1203.07, 65.6854, 2254.71, -1112.66, 1049.13, 'Los Flores street', 'The State', 0, 1, 40000, 3, 0, 0, 10, 456, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0);
INSERT INTO `houses` (`id`, `posx`, `posy`, `posz`, `exitx`, `exity`, `exitz`, `info`, `owner`, `owned`, `locked`, `price`, `levelbuy`, `rentprice`, `rentable`, `interior`, `world`, `cash`, `furnitures`, `weapons`, `checkx`, `checky`, `checkz`, `radio`) VALUES
(499, 2663.18, -1207.58, 64.7609, 242.758, 323.021, 999.591, 'Los Flores street', 'The State', 0, 1, 40000, 3, 0, 0, 10, 457, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(500, 2663.18, -1211.81, 63.6238, 2297.93, -1093.84, 1048.87, 'Los Flores street', 'The State', 0, 1, 40000, 3, 0, 0, 10, 458, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(501, 2663.18, -1216.27, 62.2237, 2188.51, -1073.32, 1050.48, 'Los Flores street', 'The State', 0, 1, 40000, 3, 0, 0, 10, 459, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(502, 2663.18, -1220.56, 60.8748, 265.764, 321.782, 997.143, 'Los Flores street', 'The State', 0, 1, 40000, 3, 0, 0, 10, 460, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(503, 2663.18, -1224.69, 59.5865, 2297.93, -1093.84, 1048.87, 'Los Flores street', 'The State', 0, 1, 40000, 3, 0, 0, 10, 461, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(504, 2663.18, -1229.24, 58.3, 2254.71, -1112.66, 1049.13, 'Los Flores street', 'The State', 0, 1, 40000, 3, 0, 0, 10, 462, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(505, 2663.18, -1233.52, 57.0715, 2188.51, -1073.32, 1050.48, 'Los Flores street', 'The State', 0, 1, 40000, 3, 0, 0, 10, 463, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(506, 2663.18, -1238, 55.6738, 2297.93, -1093.84, 1048.87, 'Los Flores street', 'The State', 0, 1, 40000, 3, 0, 0, 10, 464, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(507, 2622.21, -1238.08, 51.2682, 242.758, 323.021, 999.591, 'Los Flores street', 'The State', 0, 1, 40000, 3, 0, 0, 10, 465, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(508, 2622.21, -1233.54, 52.6654, 2188.51, -1073.32, 1050.48, 'Los Flores street', 'The State', 0, 1, 40000, 3, 0, 0, 10, 466, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(509, 2622.21, -1229.24, 53.8947, 242.881, 323.065, 999.591, 'Los Flores street', 'The State', 0, 1, 40000, 3, 0, 0, 10, 467, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(510, 2622.21, -1224.67, 55.1801, 2297.93, -1093.84, 1048.87, 'Los Flores street', 'The State', 0, 1, 40000, 3, 0, 0, 10, 468, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(511, 2622.22, -1220.64, 56.4753, 266.327, 321.823, 997.143, 'Los Flores street', 'The State', 0, 1, 40000, 3, 0, 0, 10, 469, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(512, 2622.21, -1216.39, 57.8229, 242.758, 323.021, 999.591, 'Los Flores street', 'The State', 0, 1, 40000, 3, 0, 0, 10, 470, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(513, 2622.21, -1211.8, 59.2119, 2297.93, -1093.84, 1048.87, 'Los Flores street', 'The State', 0, 1, 40000, 3, 0, 0, 10, 471, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(514, 2622.22, -1207.56, 60.3463, 2188.51, -1073.32, 1050.48, 'Los Flores street', 'The State', 0, 1, 40000, 3, 0, 0, 10, 472, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(515, 2622.21, -1203.06, 61.2799, 2254.71, -1112.66, 1049.13, 'Los Flores street', 'The State', 0, 1, 40000, 3, 0, 0, 10, 473, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(516, 2622.21, -1200.09, 62.0545, 2297.93, -1093.84, 1048.87, 'Los Flores street', 'The State', 0, 1, 40000, 3, 0, 0, 10, 474, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(517, 2615.11, -1200.07, 60.7812, 2188.51, -1073.32, 1050.48, 'Los Flores street', 'The State', 0, 1, 40000, 3, 0, 0, 10, 475, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(518, 2615.11, -1203.06, 60, 2254.71, -1112.66, 1049.13, 'Los Flores street', 'The State', 0, 1, 40000, 3, 0, 0, 10, 476, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(519, 2615.11, -1207.6, 59.0703, 242.881, 323.065, 999.591, 'Los Flores street', 'The State', 0, 1, 40000, 3, 0, 0, 10, 477, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(520, 2615.11, -1211.8, 57.9375, 2297.93, -1093.84, 1048.87, 'Los Flores street', 'The State', 0, 1, 40000, 3, 0, 0, 10, 478, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(521, 2615.11, -1216.25, 56.5391, 2254.79, -1112.6, 1049.13, 'Los Flores street', 'The State', 0, 1, 40000, 3, 0, 0, 10, 479, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(522, 2615.11, -1220.53, 55.1875, 2188.51, -1073.32, 1050.48, 'Los Flores street', 'The State', 0, 1, 40000, 3, 0, 0, 10, 480, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(523, 2615.11, -1224.67, 53.8984, 2297.93, -1093.84, 1048.87, 'Los Flores street', 'The State', 0, 1, 40000, 3, 0, 0, 10, 481, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(524, 2615.11, -1229.24, 52.6094, 2254.79, -1112.6, 1049.13, 'Los Flores street', 'The State', 0, 1, 40000, 3, 0, 0, 10, 482, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(525, 2615.11, -1233.71, 51.3828, 242.758, 323.021, 999.591, 'Los Flores street', 'The State', 0, 1, 40000, 3, 0, 0, 10, 483, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(526, 2615.11, -1238.02, 49.9844, 2297.93, -1093.84, 1048.87, 'Los Flores street', 'The State', 0, 1, 40000, 3, 0, 0, 10, 484, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(527, 2608.15, -1237.98, 50.2054, 2188.51, -1073.32, 1050.48, 'Los Flores street', 'The State', 0, 1, 40000, 3, 0, 0, 10, 485, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(528, 2608.15, -1233.52, 51.6026, 2254.79, -1112.6, 1049.13, 'Los Flores street', 'The State', 0, 1, 40000, 3, 0, 0, 10, 486, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(529, 2608.15, -1224.74, 54.1178, 2297.93, -1093.84, 1048.87, 'Los Flores street', 'The State', 0, 1, 40000, 3, 0, 0, 10, 487, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(530, 2608.15, -1229.24, 52.8321, 242.758, 323.021, 999.591, 'Los Flores street', 'The State', 0, 1, 40000, 3, 0, 0, 10, 488, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(531, 2608.15, -1220.55, 55.411, 2188.51, -1073.32, 1050.48, 'Los Flores street', 'The State', 0, 1, 40000, 3, 0, 0, 10, 489, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(532, 2608.15, -1216.32, 56.7607, 2297.93, -1093.84, 1048.87, 'Los Flores street', 'The State', 0, 1, 40000, 3, 0, 0, 10, 490, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(533, 2608.15, -1211.84, 58.1497, 242.758, 323.021, 999.591, 'Los Flores street', 'The State', 0, 1, 40000, 3, 0, 0, 10, 491, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(534, 2608.15, -1207.64, 59.2832, 2254.79, -1112.6, 1049.13, 'Los Flores street', 'The State', 0, 1, 40000, 3, 0, 0, 10, 492, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(535, 2608.15, -1203.1, 60.2181, 2297.93, -1093.84, 1048.87, 'Los Flores street', 'The State', 0, 1, 40000, 3, 0, 0, 10, 493, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(536, 2608.15, -1200.02, 60.9918, 2188.51, -1073.32, 1050.48, 'Los Flores street', 'The State', 0, 1, 40000, 3, 0, 0, 10, 494, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(537, -2173.79, -2481.55, 31.8163, 2254.79, -1112.6, 1049.13, 'Los Flores street', 'The State', 0, 1, 40000, 3, 0, 0, 10, 495, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(538, 2594.5, -1203.12, 58.576, 2297.93, -1093.84, 1048.87, 'Los Flores street', 'The State', 0, 1, 40000, 3, 0, 0, 10, 496, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(539, 2601.05, -1200.03, 59.5019, 242.758, 323.021, 999.591, 'Los Flores street', 'The State', 0, 1, 40000, 3, 0, 0, 10, 497, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(540, 2601.05, -1203.01, 58.7274, 2188.51, -1073.32, 1050.48, 'Los Flores street', 'The State', 0, 1, 40000, 3, 0, 0, 10, 498, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(541, 2594.5, -1207.57, 57.6515, 2297.93, -1093.84, 1048.87, 'Los Flores street', 'The State', 0, 1, 40000, 3, 0, 0, 10, 499, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(542, 739.094, -1417.45, 13.5234, 509.603, 1354.66, 1076.78, 'Main Street House', 'Lance_McKenzie', 1, 0, 40000, 3, 0, 0, 10, 498, 0, 0, '', 0, 0, 0, 0),
(543, 2594.5, -1211.77, 56.5144, 265.764, 321.782, 997.143, 'Los Flores street', 'The State', 0, 1, 40000, 3, 0, 0, 10, 501, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(544, 2601.05, -1207.59, 57.7933, 2297.93, -1093.84, 1048.87, 'Los Flores street', 'The State', 0, 1, 40000, 3, 0, 0, 10, 502, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(545, 2594.5, -1216.32, 55.1144, 242.758, 323.021, 999.591, 'Los Flores street', 'The State', 0, 1, 40000, 3, 0, 0, 10, 503, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(546, 2601.05, -1211.81, 56.6595, 2188.51, -1073.32, 1050.48, 'Los Flores street', 'The State', 0, 1, 40000, 3, 0, 0, 10, 504, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(547, 2594.5, -1220.59, 53.7654, 2297.93, -1093.84, 1048.87, 'Los Flores street', 'The State', 0, 1, 40000, 3, 0, 0, 10, 505, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(548, 2601.05, -1216.28, 55.2703, 2254.79, -1112.6, 1049.13, 'Los Flores street', 'The State', 0, 1, 40000, 3, 0, 0, 10, 506, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(549, 2601.05, -1220.62, 53.9205, 265.764, 321.782, 997.143, 'Los Flores street', 'The State', 0, 1, 40000, 3, 0, 0, 10, 507, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(550, 2594.5, -1224.76, 52.4771, 2297.93, -1093.84, 1048.87, 'Los Flores street', 'The State', 0, 1, 40000, 3, 0, 0, 10, 508, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(551, 2601.05, -1224.78, 52.6274, 242.758, 323.021, 999.591, 'Los Flores street', 'The State', 0, 1, 40000, 3, 0, 0, 10, 509, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(552, 2594.5, -1229.26, 51.1906, 2188.51, -1073.32, 1050.48, 'Los Flores street', 'The State', 0, 1, 40000, 3, 0, 0, 10, 510, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(553, 2601.05, -1229.21, 51.3421, 2254.79, -1112.6, 1049.13, 'Los Flores street', 'The State', 0, 1, 40000, 3, 0, 0, 10, 511, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(554, 2594.5, -1233.52, 49.9621, 2297.93, -1093.84, 1048.87, 'Los Flores street', 'The State', 0, 1, 40000, 3, 0, 0, 10, 512, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(555, 2601.05, -1233.55, 50.1127, 2188.51, -1073.32, 1050.48, 'Los Flores street', 'The State', 0, 1, 40000, 3, 0, 0, 10, 513, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(556, 2594.5, -1238.06, 48.5644, 2254.79, -1112.6, 1049.13, 'Los Flores street', 'The State', 0, 1, 40000, 3, 0, 0, 10, 514, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(557, 2601.05, -1238.03, 48.7149, 2297.93, -1093.84, 1048.87, 'Los Flores street', 'The State', 0, 1, 40000, 3, 0, 0, 10, 515, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(558, 2587.4, -1238.06, 48.5644, 2254.79, -1112.6, 1049.13, 'Los Flores street', 'The State', 0, 1, 40000, 3, 0, 0, 10, 516, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(559, 2587.4, -1233.53, 49.9621, 265.764, 321.782, 997.143, 'Los Flores street', 'The State', 0, 1, 40000, 3, 0, 0, 10, 517, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(560, 2587.4, -1229.25, 51.1906, 2297.93, -1093.84, 1048.87, 'Los Flores street', 'The State', 0, 1, 40000, 3, 0, 0, 10, 518, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(561, 2587.4, -1224.72, 52.4771, 242.653, 323.404, 999.591, 'Los Flores street', 'The State', 0, 1, 40000, 3, 0, 0, 10, 519, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(562, 2587.4, -1220.58, 53.7654, 2188.51, -1073.32, 1050.48, 'Los Flores street', 'The State', 0, 1, 40000, 3, 0, 0, 10, 520, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(563, 2587.4, -1216.34, 55.1144, 964.341, 2159.87, 1011.03, 'Los Flores street', 'The State', 0, 1, 40000, 3, 0, 0, 2, 521, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(564, 1937.84, -1791.17, 811.408, 242.596, 323.44, 999.591, 'Apartament Complex 3', 'Hidalgo_Quiroz', 1, 1, 40000, 3, 0, 0, 10, 522, 0, 0, '', 0, 0, 0, 0),
(565, 1931.84, -1791.24, 811.408, 2297.93, -1093.84, 1048.87, 'Apartament Complex 4', 'The State', 0, 1, 40000, 3, 0, 0, 10, 523, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(566, 1930.75, -1789.75, 811.408, 2254.79, -1112.6, 1049.13, 'Apartament Complex 5', 'The State', 0, 0, 40000, 3, 0, 0, 10, 524, 0, 0, '', 0, 0, 0, 0),
(567, 1937.66, -1790.68, 817.201, 2297.93, -1093.84, 1048.87, 'Apartament Complex 6', 'Hidalgo_Quiroz', 1, 0, 40000, 3, 0, 0, 10, 525, 0, 0, '', 0, 0, 0, 0),
(568, 1931.57, -1790.71, 817.201, 2188.51, -1073.32, 1050.48, 'Apartament Complex 7', 'Andrew_Demarquis', 1, 0, 40000, 3, 1, 1, 10, 526, 0, 8, '', 0, 0, 0, 0),
(569, 1930.99, -1789.82, 817.201, 265.764, 321.782, 997.143, 'East Los Santos street', 'The State', 0, 1, 40000, 3, 0, 0, 10, 527, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(570, 1938.43, -1790.6, 822.992, 2297.93, -1093.84, 1048.87, 'Apartament Complex 8', 'The State', 0, 1, 40000, 3, 0, 0, 10, 528, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(571, 1932.84, -1790.59, 822.992, 2254.75, -1112.02, 1049.13, 'Apartament Complex 9', 'Jeanine_Matthews', 1, 1, 40000, 3, 0, 0, 10, 529, 0, 0, '', 0, 0, 0, 0),
(572, 1931.47, -1789.94, 822.992, 2188.51, -1073.32, 1050.48, 'Apartament Complex 10', 'The State', 0, 1, 40000, 3, 0, 0, 10, 530, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(573, 2476.34, -1410.34, 29.3131, 2254.75, -1111.79, 1049.13, 'East Los Santos street', 'The State', 0, 1, 40000, 3, 0, 0, 10, 531, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(574, 2487.32, -1398.81, 29.3131, 2188.69, -1073.57, 1050.48, 'East Los Santos street', 'The State', 0, 1, 40000, 3, 0, 0, 10, 532, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(575, 2492.18, -1398.81, 29.3131, 2254.66, -1112.17, 1049.13, 'East Los Santos street', 'The State', 0, 1, 40000, 3, 0, 0, 10, 533, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(576, 2495.42, -1398.81, 29.3131, 2297.93, -1093.84, 1048.87, 'East Los Santos street', 'The State', 0, 1, 40000, 3, 0, 0, 10, 534, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(577, 2495.38, -1410.34, 29.3131, 2254.75, -1111.79, 1049.13, 'East Los Santos street', 'The State', 0, 1, 40000, 3, 0, 0, 10, 535, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(578, 2468.33, -1431.68, 29.3131, 242.788, 322.966, 999.591, 'East Los Santos street', 'The State', 0, 1, 40000, 3, 0, 0, 10, 536, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(579, 2473.15, -1431.68, 29.3131, 265.917, 321.537, 997.143, 'East Los Santos street', 'The State', 0, 1, 40000, 3, 0, 0, 10, 537, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(580, 2476.34, -1431.68, 29.3131, 2297.93, -1093.84, 1048.87, 'East Los Santos street', 'The State', 0, 1, 40000, 3, 0, 0, 10, 538, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(581, 2487.33, -1431.68, 29.0162, 2254.75, -1111.79, 1049.13, 'East Los Santos street', 'The State', 0, 1, 40000, 3, 0, 0, 10, 539, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(582, 2492.16, -1431.68, 29.0162, 2188.69, -1073.57, 1050.48, 'East Los Santos street', 'The State', 0, 1, 40000, 3, 0, 0, 10, 540, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(583, 2495.39, -1431.68, 29.0162, 265.917, 321.537, 997.143, 'East Los Santos street', 'The State', 0, 1, 40000, 3, 0, 0, 10, 541, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(584, 2495.38, -1424.58, 29.0162, 2297.93, -1093.84, 1048.87, 'East Los Santos street', 'The State', 0, 1, 40000, 3, 0, 0, 10, 542, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(585, 2492.2, -1424.58, 29.0162, 2188.69, -1073.57, 1050.48, 'East Los Santos street', 'The State', 0, 1, 40000, 3, 0, 0, 10, 543, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(586, 2487.28, -1424.58, 29.0162, 2297.93, -1093.84, 1048.87, 'East Los Santos street', 'The State', 0, 1, 40000, 3, 0, 0, 10, 544, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(587, 2476.36, -1424.58, 29.3131, 2297.93, -1093.84, 1048.87, 'East Los Santos street', 'The State', 0, 1, 40000, 3, 0, 0, 10, 545, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(588, 2473.14, -1424.58, 29.3131, 2188.69, -1073.57, 1050.48, 'East Los Santos street', 'The State', 0, 1, 40000, 3, 0, 0, 10, 546, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(589, 2468.31, -1424.58, 29.3131, 265.917, 321.537, 997.143, 'East Los Santos street', 'The State', 0, 1, 40000, 3, 0, 0, 10, 547, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(590, 2468.33, -1417.44, 29.3131, 2297.93, -1093.84, 1048.87, 'East Los Santos street', 'The State', 0, 1, 40000, 3, 0, 0, 10, 548, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(591, 2473.14, -1417.44, 29.3131, 2254.75, -1111.79, 1049.13, 'East Los Santos street', 'The State', 0, 1, 40000, 3, 0, 0, 10, 549, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(592, 2476.35, -1417.44, 29.3131, 2188.69, -1073.57, 1050.48, 'East Los Santos street', 'The State', 0, 1, 40000, 3, 0, 0, 10, 550, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(593, 2487.3, -1417.44, 29.3131, 265.917, 321.537, 997.143, 'East Los Santos street', 'The State', 0, 1, 40000, 3, 0, 0, 10, 551, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(594, 2492.19, -1417.44, 29.3131, 2297.93, -1093.84, 1048.87, 'East Los Santos street', 'The State', 0, 1, 40000, 3, 0, 0, 10, 552, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(596, 2495.39, -1417.44, 29.3131, 2254.75, -1111.79, 1049.13, 'East Los Santos street', 'The State', 0, 1, 40000, 3, 0, 0, 10, 553, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(597, 2487.33, -1410.34, 29.3131, 242.788, 322.966, 999.591, 'East Los Santos street', 'The State', 0, 1, 40000, 3, 0, 0, 10, 554, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(598, 2492.18, -1410.34, 29.3131, 2297.93, -1093.84, 1048.87, 'East Los Santos street', 'The State', 0, 1, 40000, 3, 0, 0, 10, 555, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(599, 2476.34, -1391.71, 29.3131, 2188.69, -1073.57, 1050.48, 'East Los Santos street', 'The State', 0, 1, 40000, 3, 0, 0, 10, 556, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(600, 2473.14, -1391.71, 29.3131, 2254.75, -1111.79, 1049.13, 'East Los Santos street', 'The State', 0, 1, 40000, 3, 0, 0, 10, 557, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(601, 2468.29, -1391.71, 29.3131, 2297.93, -1093.84, 1048.87, 'East Los Santos street', 'The State', 0, 1, 40000, 3, 0, 0, 10, 558, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(602, 2468.29, -1383.37, 29.3131, 265.917, 321.537, 997.143, 'East Los Santos street', 'The State', 0, 1, 40000, 3, 0, 0, 10, 559, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(603, 2473.16, -1383.37, 29.3131, 2188.69, -1073.57, 1050.48, 'East Los Santos street', 'The State', 0, 1, 40000, 3, 0, 0, 10, 560, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(604, 2476.37, -1383.37, 29.3131, 2254.75, -1111.79, 1049.13, 'East Los Santos street', 'The State', 0, 1, 40000, 3, 0, 0, 10, 561, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(605, 2487.33, -1391.71, 29.3131, 2189.07, -1073.55, 1050.48, 'East Los Santos street', 'The State', 0, 1, 40000, 3, 0, 0, 10, 562, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(606, 2492.17, -1391.71, 29.3131, 265.917, 321.537, 997.143, 'East Los Santos street', 'The State', 0, 1, 40000, 3, 0, 0, 10, 563, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(607, 2495.34, -1391.71, 29.3131, 2297.93, -1093.84, 1048.87, 'East Los Santos street', 'The State', 0, 1, 40000, 3, 0, 0, 10, 564, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(608, 2495.36, -1383.37, 29.3131, 2189.07, -1073.55, 1050.48, 'East Los Santos street', 'The State', 0, 1, 40000, 3, 0, 0, 10, 565, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(609, 2492.18, -1383.37, 29.3131, 242.788, 322.966, 999.591, 'East Los Santos street', 'The State', 0, 1, 40000, 3, 0, 0, 10, 566, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(610, 2487.36, -1383.37, 29.3131, 2297.93, -1093.84, 1048.87, 'East Los Santos street', 'The State', 0, 1, 40000, 3, 0, 0, 10, 567, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(611, 2487.33, -1376.27, 29.3131, 242.788, 322.966, 999.591, 'East Los Santos street', 'The State', 0, 1, 40000, 3, 0, 0, 10, 568, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(612, 2492.23, -1376.27, 29.3131, 2189.07, -1073.55, 1050.48, 'East Los Santos street', 'The State', 0, 1, 40000, 3, 0, 0, 10, 569, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(613, 2495.31, -1376.27, 29.3131, 2297.93, -1093.84, 1048.87, 'East Los Santos street', 'The State', 0, 1, 40000, 3, 0, 0, 10, 570, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(614, 2495.38, -1366.2, 29.3131, 242.788, 322.966, 999.591, 'East Los Santos street', 'The State', 0, 1, 40000, 3, 0, 0, 10, 571, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(615, 2492.17, -1366.2, 29.3131, 265.917, 321.537, 997.143, 'East Los Santos street', 'The State', 0, 1, 40000, 3, 0, 0, 10, 572, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(616, 2487.3, -1366.2, 29.3131, 243.257, 322.972, 999.591, 'East Los Santos street', 'The State', 0, 1, 40000, 3, 0, 0, 10, 573, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(617, 2476.34, -1376.27, 29.3131, 2189.07, -1073.55, 1050.48, 'East Los Santos street', 'The State', 0, 1, 40000, 3, 0, 0, 10, 574, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(618, 2473.19, -1376.27, 29.3131, 2297.93, -1093.84, 1048.87, 'East Los Santos street', 'The State', 0, 1, 40000, 3, 0, 0, 10, 575, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(619, 2468.28, -1376.27, 29.3131, 2254.75, -1111.79, 1049.13, 'East Los Santos street', 'The State', 0, 1, 40000, 3, 0, 0, 10, 576, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(620, 2468.31, -1366.21, 29.3131, 243.257, 322.972, 999.591, 'East Los Santos street', 'The State', 0, 1, 40000, 3, 0, 0, 10, 577, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 242.572, 318.977, 999.591, 0),
(621, 2473.15, -1366.2, 29.3131, 2297.93, -1093.84, 1048.87, 'East Los Santos street', 'The State', 0, 1, 40000, 3, 0, 0, 10, 578, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(622, 2476.35, -1366.2, 29.3131, 2254.75, -1111.79, 1049.13, 'East Los Santos street', 'The State', 0, 1, 40000, 3, 0, 0, 10, 579, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(623, 2476.33, -1359.1, 29.3131, 265.917, 321.537, 997.143, 'East Los Santos street', 'The State', 0, 1, 40000, 3, 0, 0, 10, 580, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(624, 2473.18, -1359.1, 29.3131, 242.788, 322.966, 999.591, 'East Los Santos street', 'The State', 0, 1, 40000, 3, 0, 0, 10, 581, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(625, 2468.29, -1359.1, 29.3131, 2297.93, -1093.84, 1048.87, 'East Los Santos street', 'The State', 0, 1, 40000, 3, 0, 0, 10, 582, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(626, 818.244, -509.318, 18.0129, 289.767, 1502.04, 1078.42, 'Dillimore', 'The State', 0, 0, 120000, 3, 0, 0, 10, 583, 0, 11, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 1),
(627, 795.237, -506.148, 18.0129, -48.9746, 1458.69, 1085.61, 'Dillimore', 'The State', 0, 1, 120000, 3, 0, 0, 10, 584, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(628, 776.717, -503.483, 18.0129, 374.889, 1378.46, 1079.8, 'Dillimore', 'The State', 0, 1, 120000, 3, 0, 0, 10, 585, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(629, 743.237, -509.319, 18.0129, 289.767, 1502.04, 1078.42, 'Dillimore', 'The State', 0, 1, 120000, 3, 0, 0, 10, 586, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(630, 745.133, -556.784, 18.0129, -48.9719, 1458.43, 1085.61, 'Dillimore', 'The State', 0, 1, 120000, 3, 0, 0, 10, 587, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(631, 766.612, -556.781, 18.0129, 45.6584, 1439.57, 1082.41, 'Dillimore', 'The State', 0, 1, 120000, 3, 0, 0, 10, 588, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(632, 745.672, -591.028, 18.0129, -48.9746, 1458.69, 1085.61, 'Dillimore', 'The State', 0, 1, 120000, 3, 0, 0, 10, 589, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(633, 768.238, -503.482, 18.0129, 289.767, 1502.04, 1078.42, 'Dillimore', 'The State', 0, 1, 120000, 3, 0, 0, 10, 590, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(634, 736.735, -556.784, 18.0129, 45.6584, 1439.57, 1082.41, 'Dillimore', 'The State', 0, 1, 120000, 3, 0, 0, 10, 591, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(635, 2282.3, -1641.21, 15.8898, -80.1617, 1384.59, 1078.96, 'Ganton street', 'The State', 0, 1, 120000, 3, 0, 0, 10, 592, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(636, 2257.16, -1643.95, 15.8082, -49.1778, 1458.64, 1085.61, 'Ganton street', 'The State', 0, 1, 120000, 3, 0, 0, 10, 593, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(637, 2244.44, -1637.61, 16.2379, -49.1778, 1458.64, 1085.61, 'Ganton street', 'The State', 0, 1, 120000, 3, 0, 0, 10, 594, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(638, 2307.02, -1679.2, 14.3316, -80.1617, 1384.59, 1078.96, 'Ganton street', 'The State', 0, 1, 120000, 3, 0, 0, 10, 595, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(639, 691.406, -1275.97, 13.5606, -80.1617, NULL, NULL, 'Mayors house', 'The State', 0, 1, 120000, 3, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0),
(640, 2264.97, -1670.59, 15.3594, -80.1617, 1384.59, 1078.96, 'Ganton street', 'The State', 0, 1, 120000, 10, 0, 0, 0, 1, 0, 1, '0=0|30=700|30=700|0=0|0=0|0=0|0=0|0=0|0=0|0=0', -78.9758, 1396.53, 1078.96, 0),
(641, 1528.32, -34.7315, 1004.51, NULL, NULL, NULL, 'Apartment #1', 'The State', 0, 1, 120000, 10, 0, 0, 0, 0, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(642, 1534.39, -34.745, 1004.51, NULL, NULL, NULL, 'Apartment #2', 'The State', 0, 1, 120000, 10, 0, 0, NULL, NULL, 0, NULL, NULL, 0, 0, 0, 0),
(644, 1534.08, -29.011, 1006.72, NULL, NULL, NULL, 'Apartment #3', 'The State', 0, 1, 120000, 10, 0, 0, NULL, NULL, 0, NULL, NULL, 0, 0, 0, 0),
(645, 1528.58, -29.1214, 1006.72, NULL, NULL, NULL, 'Apartment #4', 'The State', 0, 1, 120000, 10, 0, 0, NULL, NULL, 0, NULL, NULL, 0, 0, 0, 0),
(646, 1528.42, -34.4805, 1008.71, NULL, NULL, NULL, 'Apartment #5', 'The State', 0, 1, 120000, 10, 0, 0, NULL, NULL, 0, NULL, NULL, 0, 0, 0, 0),
(647, 1534.46, -34.7103, 1008.71, NULL, NULL, NULL, 'Apartment #6', 'The State', 0, 1, 120000, 10, 0, 0, NULL, NULL, 0, NULL, NULL, 0, 0, 0, 0),
(648, 1534.56, -29.2982, 1010.91, NULL, NULL, NULL, 'Apartment #7', 'The State', 0, 1, 120000, 10, 0, 0, NULL, NULL, 0, NULL, NULL, 0, 0, 0, 0),
(650, 1528.24, -34.6011, 1012.91, NULL, NULL, NULL, 'Apartment #9', 'The State', 0, 1, 120000, 10, 0, 0, NULL, NULL, 0, NULL, NULL, 0, 0, 0, 0),
(651, 1534.28, -34.6291, 1012.91, NULL, NULL, NULL, 'Apartment #10', 'The State', 0, 1, 120000, 10, 0, 0, NULL, NULL, 0, NULL, NULL, 0, 0, 0, 0),
(652, 1534.02, -28.9841, 1015.11, NULL, NULL, NULL, 'Apartment #11', 'The State', 0, 0, 120000, 10, 0, 0, 0, 0, 0, 0, '0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0|0=0', 0, 0, 0, 0),
(653, 1532.84, -27.8504, 1015.11, NULL, NULL, NULL, 'Apartment #12', 'The State', 0, 1, 120000, 10, 0, 0, NULL, NULL, 0, NULL, NULL, 0, 0, 0, 0),
(654, 1528.09, -29.3728, 1015.11, NULL, NULL, NULL, 'Apartment #13', 'The State', 0, 1, 120000, 10, 0, 0, NULL, NULL, 0, NULL, NULL, 0, 0, 0, 0),
(655, 1528.08, -29.156, 1010.91, NULL, NULL, NULL, 'Apartment #8', 'The State', 0, 1, 120000, 10, 0, 0, NULL, NULL, 0, NULL, NULL, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `infos`
--

CREATE TABLE `infos` (
  `id` int(11) NOT NULL,
  `posx` float DEFAULT NULL,
  `posy` float DEFAULT NULL,
  `posz` float DEFAULT NULL,
  `virworld` int(64) DEFAULT NULL,
  `labeltext` varchar(255) DEFAULT NULL,
  `labeltext2` varchar(255) DEFAULT NULL,
  `otherinfo` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `infos`
--

INSERT INTO `infos` (`id`, `posx`, `posy`, `posz`, `virworld`, `labeltext`, `labeltext2`, `otherinfo`) VALUES
(0, 530.977, 1429.1, 2001.18, 1, 'Bank', '/balance /withdraw /deposit', 'Aici iti poti administra contul bancar.');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` int(11) NOT NULL,
  `jobid` int(24) DEFAULT NULL,
  `name` varchar(24) DEFAULT NULL,
  `posx` float DEFAULT NULL,
  `posy` float DEFAULT NULL,
  `posz` float DEFAULT NULL,
  `ranks` int(24) DEFAULT NULL,
  `highrank` int(24) DEFAULT NULL,
  `rank1` varchar(100) DEFAULT NULL,
  `rank2` varchar(100) DEFAULT NULL,
  `rank3` varchar(100) DEFAULT NULL,
  `rank4` varchar(100) DEFAULT NULL,
  `rank5` varchar(100) DEFAULT NULL,
  `rank6` varchar(100) DEFAULT NULL,
  `rank7` varchar(100) DEFAULT NULL,
  `rank8` varchar(100) DEFAULT NULL,
  `rank9` varchar(100) DEFAULT NULL,
  `rank10` varchar(100) DEFAULT NULL,
  `sidejob` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `jobid`, `name`, `posx`, `posy`, `posz`, `ranks`, `highrank`, `rank1`, `rank2`, `rank3`, `rank4`, `rank5`, `rank6`, `rank7`, `rank8`, `rank9`, `rank10`, `sidejob`) VALUES
(0, 1, 'Trucker', -82.5087, -1178.96, 1.95216, 4, 4, 'Incepator', 'Mediu', 'Avansat', 'Expert', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(1, 2, 'Mechanic', 2182.49, -2252.94, 14.4256, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(2, 3, 'Fermier', 1753.41, -1894.27, 13.5572, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(3, 4, 'Sweeper', 2282.02, -2364.89, 13.5471, 0, 0, 'Rank1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `kicks`
--

CREATE TABLE `kicks` (
  `id` int(11) NOT NULL,
  `player` varchar(255) DEFAULT NULL,
  `victim` varchar(255) DEFAULT NULL,
  `reason` varchar(255) DEFAULT NULL,
  `data` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `ip` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `labels`
--

CREATE TABLE `labels` (
  `id` int(11) NOT NULL,
  `posx` float DEFAULT NULL,
  `posy` float DEFAULT NULL,
  `posz` float DEFAULT NULL,
  `color` int(11) DEFAULT NULL,
  `virworld` int(64) DEFAULT NULL,
  `labeltext` varchar(255) DEFAULT NULL,
  `gametext` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `labels`
--

INSERT INTO `labels` (`id`, `posx`, `posy`, `posz`, `color`, `virworld`, `labeltext`, `gametext`) VALUES
(1, 1129.01, -1489.68, 22.7614, -65281, 0, '/ad [$500] | /cad [$1000]', 0),
(2, 1096.21, -1440, 15.7981, -65281, 0, '/buy - Clothing.', 0),
(3, 1109.19, -1529.53, 15.7981, -65281, 0, '/buy - Sports Items.', 0),
(4, 1093.72, -1506.08, 15.7981, -65281, 0, '/buy - Guitars/BoomBox', 0),
(6, 207.576, -100.983, 1005.26, -65281, -1, 'Binco - /buyclothes', 0),
(9, 2073.16, -1831.33, 13.5469, -1, 0, 'Pay & Spray', 0),
(10, 1024.98, -1031.34, 31.9871, -1, 0, 'Pay & Spray', 0),
(11, 488.712, -1732.99, 11.1875, -1, 0, 'Pay & Spray', 0),
(12, 720.091, -464.646, 16.3359, -1, 0, 'Pay & Spray', 0),
(16, 1586.31, -1678.66, 1090.59, -65281, 0, '/arrest', 0),
(17, 262.026, 109.144, 1004.62, -1, 0, '~w~To use: ~y~/cctv', 1),
(18, 362.303, 173.57, 1008.38, -1, 0, '~w~CITYHALL~n~~y~COMENZI: /fine', 1),
(19, 2430.5, -2454.97, 13.625, -1, 0, '~y~~h~/buycomp ~n~~w~to buy components', 1),
(21, -392.188, -1439.18, 26.339, -1, 0, '~w~Drug Dealer~n~~y~/buyseeds', 1),
(22, 366.936, 215.853, 1007.94, -1, 0, '/armourygov', 0),
(24, -2032, -117.184, 1035.17, -1, 0, '~DMV~~n~~y~/takedrivingtest', 1),
(25, 1167.27, -1507.16, 15.7996, -65281, 0, '/rentchannel - Rent a Channel.', 0);

-- --------------------------------------------------------

--
-- Table structure for table `movedoors`
--

CREATE TABLE `movedoors` (
  `id` int(11) NOT NULL,
  `model` int(255) DEFAULT NULL,
  `faction` int(64) DEFAULT NULL,
  `posx` float DEFAULT NULL,
  `posy` float DEFAULT NULL,
  `posz` float DEFAULT NULL,
  `posrx` float DEFAULT NULL,
  `posry` float DEFAULT NULL,
  `posrz` float DEFAULT NULL,
  `interior` int(11) DEFAULT NULL,
  `virworld` int(64) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `openspeed` float DEFAULT NULL,
  `movex` float DEFAULT NULL,
  `movey` float DEFAULT NULL,
  `movez` float DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `movedoors`
--

INSERT INTO `movedoors` (`id`, `model`, `faction`, `posx`, `posy`, `posz`, `posrx`, `posry`, `posrz`, `interior`, `virworld`, `name`, `openspeed`, `movex`, `movey`, `movez`) VALUES
(50, 1569, 1, 1371.49, 39.6724, 1013.51, 0, 0, 0, 0, 0, 'TRA', 2, 2, NULL, NULL),
(49, 1569, 1, 1361.24, 29.7453, 1013.51, 0, 0.200001, 88.9001, 0, 0, 'TRA', 2, 0, 2, NULL),
(48, 1569, 1, 1372.3, 22.4713, 1013.5, 0, 0, 0, 0, 0, 'TRA', 2, 2, NULL, NULL),
(47, 1495, 1, 1582.61, -1637.9, 12.5304, 0, 0, 0, 0, 0, 'LSPDG', 3, 1.5, NULL, NULL),
(5, 1495, 2, -2657.75, 1405.54, 944.535, 0, 0, 89.9, 0, 0, 'LSFD', 1.8, NULL, 1.3, NULL),
(6, 1495, 2, -2652.9, 1396.43, 944.535, 0, 0, 90, 0, 0, 'LSFD', 1.8, NULL, 1.3, NULL),
(7, 1495, 2, -2652.09, 1400.01, 944.535, 0, 0, 0, 0, 0, 'LSFD', 1.8, 1.3, 0, 0),
(8, 1495, 2, -2660.03, 1407.65, 944.535, 0, 0, 0, 0, 0, 'LSFD', 1.8, 1.3, NULL, NULL),
(9, 1495, 2, -2652.93, 1380.74, 944.536, 0, 0, 89.8, 0, 0, 'LSFD', 1.8, 0, 1.3, NULL),
(28, 1569, 1, 1393.47, -1.9103, 999.934, 0, 0, 0, 4, 0, 'LSPDEAST', 2, 1, NULL, NULL),
(31, 1569, 1, 1408.85, -11.5179, 1006.9, 0, 0, 90, 1, 1, 'LSPD WEST', 2, NULL, 1.8, NULL),
(35, 1569, 1, 1336.67, 27.7248, 1018.06, 0, 0, 0, 0, 0, 'LSPDBIG', 2, 0, 0, 2.5),
(36, 1569, 1, 1560.11, -1683.46, 1100.13, 0, 0, 0, 0, 0, 'LSPDBIG', 2, 2, NULL, NULL),
(37, 1569, 1, 1560.12, -1667.63, 1100.09, 0, 0, 0, 0, 0, 'LSPDBIG', 2, 2, NULL, NULL),
(38, 1569, 1, 1575.43, -1676.29, 1100.07, 0, 0, 89.8, 0, 0, 'LSPDBIG', 2, 0, 2, NULL),
(39, 1569, 1, 1593.19, -1705.37, 1107.09, 0, 0, 89.5, 0, 0, 'DAVID', 2, 0, 2, 0),
(40, 1569, 1, 1580.12, -1683.66, 1107.08, 0, 0, 0, 0, 0, 'LSPDBIG', 2, 2, NULL, NULL),
(43, 1569, 1, 1579.08, -1669.86, 1100.07, 0, -0.299999, 89.8, 0, 0, 'LSPDBIG', 2, 0, 1, NULL),
(42, 1569, 1, 1563.32, -1686.85, 1100.11, 0, 0, 0, 0, 0, 'LSPDBIG', 2, 2, NULL, NULL),
(44, 1569, 1, 1579.35, -1682.7, 1100.05, 0, 0, 89.7, 0, 0, 'LSPDBIG', 2, 0, 2, NULL),
(45, 1569, 1, 1572.95, -1686.86, 1100.05, 0, 0, 0, 0, 0, 'LSPDBIG', 2, 2, NULL, NULL),
(46, 1569, 1, 1563.31, -1664.18, 1100.05, 0, 0, -1.79966, 0, 0, 'LSPDBIG', 2, 2, 0, NULL),
(51, 1569, 1, 1409.73, -19.22, 999.905, 0, 0, -178.6, 0, 0, 'TRA', 2, 0, 0, 2.5),
(52, 1569, 1, 1397.08, -17.2767, 999.942, 0, 0, 89.8, 0, 0, 'TRA', 2, 0, 2, NULL),
(53, 1569, 1, 1409.72, -12.6235, 999.905, 0, 0, -179.9, 0, 0, 'TRA', 2, 2, 0, 0),
(54, 1569, 1, 1380.48, 42.3565, 1013.49, 0, 0, 90.1, 0, 0, 'TRAA', 2, 0, 2, NULL),
(55, 1569, 2, 1165.53, -1314.71, 1100.08, 0, 0, 90.3, 0, 0, 'FD', 2, 0, 2, NULL),
(56, 1569, 2, 1165.51, -1333.93, 1100.12, 0, 0, 89.6, 0, 0, 'FD', 2, NULL, 2, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `objects`
--

CREATE TABLE `objects` (
  `id` int(11) NOT NULL,
  `model` int(255) DEFAULT NULL,
  `posx` float DEFAULT NULL,
  `posy` float DEFAULT NULL,
  `posz` float DEFAULT NULL,
  `posrx` float DEFAULT NULL,
  `posry` float DEFAULT NULL,
  `posrz` float DEFAULT NULL,
  `interior` int(11) DEFAULT NULL,
  `virworld` int(64) DEFAULT NULL,
  `objectname` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `objects`
--

INSERT INTO `objects` (`id`, `model`, `posx`, `posy`, `posz`, `posrx`, `posry`, `posrz`, `interior`, `virworld`, `objectname`) VALUES
(1, 2942, 378.549, -2060, 7.46594, 0, 0, 89.5001, 0, 0, 'ATM'),
(2, 2942, 1833.22, -1838.72, 13.1981, 0, 0, -89.7, 0, 0, 'ATM'),
(3, 2942, 1928.58, -1781.64, 13.1969, 0, 0, 89.5999, 0, 0, 'ATM'),
(4, 2942, 2233.26, -1156.97, 25.5614, 0, 0, -90.7, 0, 0, 'ATM'),
(5, 2942, 1317.73, -897.792, 39.2281, 0, 0, 0, 0, 0, 'ATM'),
(6, 2942, 1001.57, -927.777, 41.9497, 0, 0, -80.5, 0, 0, 'ATM'),
(7, 1244, 1004.99, -936.567, 42.1097, 0, 0, 96.7, 0, 0, 'GasPump'),
(8, 1244, 1007.42, -936.293, 42.1097, 0, 0, 96.9, 0, 0, 'GasPump'),
(9, 1244, 1002.85, -936.92, 42.1033, 0, 0, 97.4, 0, 0, 'GasPump'),
(10, 1244, 997.932, -937.574, 42.1097, 0, 0, 97.4, 0, 0, 'GasPump'),
(11, 1244, 1000.35, -937.311, 42.1197, 0, 0, 97.8, 0, 0, 'GasPump'),
(12, 1244, 1009.84, -936, 42.1097, 0, 0, 96.9, 0, 0, 'GasPump'),
(13, 2942, 661.331, -575.612, 15.9559, 0, 0, -88.1001, 0, 0, 'ATM'),
(14, 2942, -1677.26, 431.085, 6.82969, 0, 0, 45.2, 0, 0, 'ATM'),
(15, 2942, -2420.17, 965.892, 44.9369, 0, 0, 91, 0, 0, 'ATM'),
(16, 2942, -1568.62, -2727.67, 48.3746, 0, 0, -35, 0, 0, 'ATM'),
(17, 2942, -79.0386, -1171.49, 1.82125, 0, 0, -113.1, 0, 0, 'ATM'),
(18, 2942, 1378.49, 467.587, 19.8416, 0, 0, -24.3, 0, 0, 'ATM'),
(19, 1244, 73.6153, 1219.36, 18.8133, 0, 0, -15.4, 0, 0, 'GasPump'),
(20, 1244, 72.7515, 1216.32, 18.8128, 0, 0, -15.1, 0, 0, 'GasPump'),
(21, 1244, 67.3325, 1217.78, 18.8293, 0, 0, -15.7, 0, 0, 'GasPump'),
(22, 1244, 68.2309, 1221.02, 18.8384, 0, 0, -16.1, 0, 0, 'GasPump'),
(23, 2942, 2120.16, 896.793, 10.8003, 0, 0, -179.9, 0, 0, 'GasStation'),
(24, 2942, 2634.88, 1129.67, 10.8203, 0, 0, 0, 0, 0, 'GasStation'),
(25, 2942, 2187.73, 2472.41, 10.8203, 0, 0, 90.5, 0, 0, 'GasStation'),
(26, 2942, 640.338, 1684.49, 6.79219, 0, 0, -137.6, 0, 0, 'GasStation'),
(27, 2942, -1470.92, 1873.08, 32.2728, 0, 0, 5.7, 0, 0, 'GasStation'),
(28, 2942, -1322.06, 2697.76, 49.8825, 0, 0, 30.2, 0, 0, 'ATM'),
(30, 984, 1140.46, -1415.98, 13.2216, 0, 0, 90, 0, 0, 'Mall'),
(31, 1280, 1117.82, -1436.33, 15.1981, 0, 0, -179.5, 0, 0, 'Mall'),
(32, 1280, 1117.88, -1442.74, 15.1981, 0, 0, -179.5, 0, 0, 'Mall'),
(33, 1280, 1139.96, -1436.36, 15.2016, 0, 0, 0, 0, 0, 'Mall'),
(34, 1280, 1139.95, -1442.88, 15.1967, 0, 0, 0, 0, 0, 'Mall'),
(35, 1280, 1139.93, -1447.4, 15.1981, 0, 0, 0, 0, 0, 'Mall'),
(36, 1280, 1139.91, -1454.15, 15.1881, 0, 0, 0, 0, 0, 'Mall'),
(37, 1280, 1117.89, -1447.42, 15.1981, 0, 0, -179.2, 0, 0, 'Mall'),
(38, 1280, 1117.97, -1453.89, 15.1881, 0, 0, -179.5, 0, 0, 'Mall'),
(39, 2001, 1129.01, -1456.43, 14.7881, 0, 0, 0, 0, 0, 'Mall'),
(40, 2001, 1129, -1445.22, 14.7881, 0, 0, 0, 0, 0, 'Mall'),
(41, 2001, 1129.01, -1434.03, 14.7881, 0, 0, 0, 0, 0, 'Mall'),
(42, 640, 1128.95, -1450.73, 15.4881, 0, 0, 0, 0, 0, 'Mall'),
(43, 640, 1128.95, -1439.68, 15.4781, 0, 0, 0, 0, 0, 'Mall'),
(44, 640, 1128.96, -1461.8, 15.4881, 0, 0, 0, 0, 0, 'Mall'),
(46, 1280, 1139.9, -1458.78, 15.1881, 0, 0, 0, 0, 0, 'Mall'),
(47, 1280, 1139.89, -1465.14, 15.2081, 0, 0, 0, 0, 0, 'Mall'),
(48, 1280, 1117.99, -1458.74, 15.1782, 0, 0, -179.5, 0, 0, 'Mall'),
(49, 1280, 1118.05, -1465.12, 15.1591, 0, 0, -179.4, 0, 0, 'Mall'),
(50, 19121, 1133.57, -1470.34, 15.2822, 0, 0, 0, 0, 0, 'Mall'),
(51, 19121, 1124.68, -1470.34, 15.2859, 0, 0, 0, 0, 0, 'Mall'),
(52, 19121, 1123.13, -1415.97, 13.1307, 0, 0, 0, 0, 0, 'Mall'),
(53, 19121, 1133.89, -1415.98, 13.1605, 0, 0, 0, 0, 0, 'Mall'),
(54, 2368, 1101.08, -1442.19, 14.7881, 0, 0, -179.9, 0, 0, 'Mall'),
(55, 2368, 1099.15, -1443, 14.7881, 0, 0, -90.7, 0, 0, 'Mall'),
(56, 2941, 1099.03, -1442.93, 16.1681, 0, 0, -91.1, 0, 0, 'Mall'),
(57, 2375, 1094.37, -1448.37, 14.8081, 0, 0, 0, 0, 0, 'Mall'),
(58, 2387, 1095.35, -1445, 14.7881, 0, 0, 0, 0, 0, 'Mall'),
(59, 2380, 1092.41, -1440.29, 16.5581, 0, 0, 89.8, 0, 0, 'Mall'),
(60, 2622, 1101.21, -1448.41, 15.5781, 0, 0, 0, 0, 0, 'Mall'),
(61, 2700, 1092.76, -1448.5, 18.0584, -0.299999, 15, 39.8, 0, 0, 'Mall'),
(62, 2412, 1101.52, -1440.84, 14.7881, 0, 0, 90.3, 0, 0, 'Mall'),
(63, 2412, 1101.48, -1438.84, 14.7881, 0, 0, 91.0999, 0, 0, 'Mall'),
(64, 2376, 1098.64, -1433.22, 14.7781, 0, 0, 0, 0, 0, 'Mall'),
(65, 2386, 1100.28, -1432.44, 15.2316, 0, 0, 0, 0, 0, 'Mall'),
(66, 2386, 1099.29, -1432.43, 15.2116, 0, 0, 0, 0, 0, 'Mall'),
(67, 2386, 1100.28, -1433.37, 15.2116, 0, 0, 0, 0, 0, 'Mall'),
(68, 2386, 1099.29, -1433.38, 15.2316, 0, 0, 0, 0, 0, 'Mall'),
(69, 2385, 1093.33, -1431.45, 16.4281, 0, 0, 0, 0, 0, 'Mall'),
(70, 2708, 1092.61, -1445.56, 14.7681, 0, 0, 89.2, 0, 0, 'Mall'),
(71, 2385, 1099.63, -1431.45, 16.4281, 0, 0, 0, 0, 0, 'Mall'),
(72, 2689, 1092.8, -1445.51, 16.4981, 0, 0, 93.6, 0, 0, 'Mall'),
(73, 2704, 1092.76, -1444.17, 16.4981, 0, 0, -86.6, 0, 0, 'Mall'),
(74, 2371, 1094.72, -1436.26, 14.7881, 0, 0, 0, 0, 0, 'Mall'),
(75, 2381, 1095.13, -1435.69, 15.5581, 0, 0, 89.5, 0, 0, 'Mall'),
(76, 2381, 1094.45, -1435.68, 15.5481, 0, 0, 90.4, 0, 0, 'Mall'),
(77, 2706, 1094.58, -1431.73, 17.3482, 0, 0, 0, 0, 0, 'Mall'),
(78, 2705, 1093.28, -1431.75, 17.3481, 0, 0, 0, 0, 0, 'Mall'),
(79, 2697, 1097.09, -1431.45, 17.6418, 0, -89.8, 0, 0, 0, 'Mall'),
(80, 19121, 1125.23, -1415.98, 13.111, 0, 0, 0, 0, 0, 'Mall'),
(81, 19121, 1131.89, -1415.98, 13.1107, 0, 0, 0, 0, 0, 'Mall'),
(82, 2727, 1092.47, -1436.9, 17.1918, 90, 0.199989, 90.6, 0, 0, 'Mall'),
(83, 18947, 1100.55, -1441.98, 15.7063, -5.49999, -87.9, 89.3, 0, 0, 'Mall'),
(84, 18948, 1099.98, -1441.97, 15.7094, -6.4, -96.7, 89.7, 0, 0, 'Mall'),
(85, 18971, 1099.43, -1441.96, 15.7081, 0, 1.7, -176.4, 0, 0, 'Mall'),
(86, 2387, 1095.35, -1442.05, 14.7981, 0, 0, 0, 0, 0, 'Mall'),
(87, 2693, 1102.4, -1441.95, 15.5081, 0, 0, 129.6, 0, 0, 'Mall'),
(88, 2231, 1101.76, -1431.77, 17.9952, 20.2, -0.4, -33.5001, 0, 0, 'Mall'),
(89, 2231, 1101.39, -1448.9, 18.248, 28, 0, -140.4, 0, 0, 'Mall'),
(90, 2623, 1091.24, -1479.1, 16.3325, 0, 0, 162.6, 0, 0, 'Mall'),
(91, 2754, 1096.23, -1476.87, 15.4925, 0, 0, -16.3, 0, 0, 'Mall'),
(92, 2754, 1095.93, -1477.88, 15.4925, 0, 0, -16.3, 0, 0, 'Mall'),
(93, 2754, 1096.52, -1475.86, 15.4925, 0, 0, -16.3, 0, 0, 'Mall'),
(94, 2964, 1097.96, -1466.38, 14.7725, 0, 0, -107.8, 0, 0, 'Mall'),
(95, 2224, 1094.99, -1466.52, 14.7925, 0, 0, 115.9, 0, 0, 'Mall'),
(96, 1707, 1094.33, -1463.79, 14.7125, 0, 0, -17.5, 0, 0, 'Mall'),
(97, 2778, 1093.44, -1474.07, 14.7725, 0, 0, 71.2, 0, 0, 'Mall'),
(98, 2779, 1093.02, -1472.18, 14.7725, 0, 0, -108.4, 0, 0, 'Mall'),
(99, 2778, 1093.7, -1473.32, 14.7725, 0, 0, 71.2, 0, 0, 'Mall'),
(100, 2778, 1093.96, -1472.57, 14.7725, 0, 0, 71.2, 0, 0, 'Mall'),
(101, 2779, 1092.77, -1472.94, 14.7725, 0, 0, -108.4, 0, 0, 'Mall'),
(102, 2779, 1092.52, -1473.69, 14.7725, 0, 0, -108.4, 0, 0, 'Mall'),
(103, 2872, 1092.28, -1474.44, 14.7725, 0, 0, -108.4, 0, 0, 'Mall'),
(104, 2872, 1092.03, -1475.19, 14.7725, 0, 0, -108.4, 0, 0, 'Mall'),
(105, 2872, 1093.18, -1474.82, 14.7725, 0, 0, 71.2, 0, 0, 'Mall'),
(106, 2872, 1092.93, -1475.57, 14.7725, 0, 0, 71.2, 0, 0, 'Mall'),
(107, 19128, 1093, -1474.03, 19.052, 179.5, -0.1, -21.8, 0, 0, 'Mall'),
(108, 2592, 1087.58, -1476.15, 15.7825, 0, 0, 72.5, 0, 0, 'Mall'),
(109, 2592, 1088.81, -1472.25, 15.7825, 0, 0, 72.5, 0, 0, 'Mall'),
(110, 1834, 1087.16, -1477.25, 15.6825, 0, 0, 72.4, 0, 0, 'Mall'),
(111, 1834, 1087.4, -1476.49, 15.6825, 0, 0, 72.4, 0, 0, 'Mall'),
(112, 1834, 1087.63, -1475.75, 15.6825, 0, 0, 72.4, 0, 0, 'Mall'),
(113, 1834, 1087.86, -1475.03, 15.6825, 0, 0, 72.4, 0, 0, 'Mall'),
(114, 1834, 1088.38, -1473.39, 15.6825, 0, 0, 72.4, 0, 0, 'Mall'),
(115, 1834, 1088.62, -1472.65, 15.6825, 0, 0, 72.4, 0, 0, 'Mall'),
(116, 1834, 1088.85, -1471.92, 15.6825, 0, 0, 72.4, 0, 0, 'Mall'),
(117, 1834, 1089.09, -1471.18, 15.6825, 0, 0, 72.4, 0, 0, 'Mall'),
(118, 2350, 1088.07, -1477.55, 15.1525, 0, 0, 92.3, 0, 0, 'Mall'),
(119, 2350, 1088.72, -1475.36, 15.1525, 0, 0, 17, 0, 0, 'Mall'),
(120, 2350, 1089.27, -1473.49, 15.1525, 0, 0, 113.9, 0, 0, 'Mall'),
(121, 2350, 1089.88, -1471.43, 15.1525, 0, 0, 16.6, 0, 0, 'Mall'),
(123, 2693, 1098.35, -1475.34, 15.5081, 0, 0, 109.1, 0, 0, 'Mall'),
(124, 2229, 1092.08, -1462.22, 14.7925, 0, 0, 29.7, 0, 0, 'Mall'),
(125, 2229, 1094.99, -1481.56, 14.7925, 0, 0, -152.4, 0, 0, 'Mall'),
(126, 997, 1061.33, -1493.56, 12.6569, 0, 0, 74.9, 0, 0, 'Mall'),
(127, 997, 1058.69, -1503.43, 12.6569, 0, 0, 74.9, 0, 0, 'Mall'),
(128, 997, 1059.94, -1498.45, 12.6569, 0, 0, 74.9, 0, 0, 'Mall'),
(129, 997, 1131.98, -1562.22, 12.6489, 0, 0, 0, 0, 0, 'Mall'),
(130, 997, 1121.48, -1562.05, 12.6489, 0, 0, 0, 0, 0, 'Mall'),
(131, 997, 1126.71, -1562.22, 12.6489, 0, 0, 0, 0, 0, 'Mall'),
(132, 997, 1186.03, -1493.81, 12.6269, 0, 0, -90, 0, 0, 'Mall'),
(133, 997, 1186.03, -1482, 12.6269, 0, 0, -90, 0, 0, 'Mall'),
(134, 997, 1186.03, -1487.84, 12.6269, 0, 0, -90, 0, 0, 'Mall'),
(135, 1960, 1089.85, -1501.48, 17.7681, 0, 0, 21.3, 0, 0, 'Mall'),
(136, 1961, 1086.14, -1502.92, 17.7681, 0, 0, 21.3, 0, 0, 'Mall'),
(137, 1962, 1094.29, -1499.74, 17.7681, 0, 0, 21.3, 0, 0, 'Mall'),
(138, 2624, 1114.95, -1532.87, 16.4681, 0, 0, -110.1, 0, 0, 'Mall'),
(139, 2596, 1116.94, -1532.82, 17.9681, 0, 0, -111, 0, 0, 'Mall'),
(140, 2651, 1111.19, -1534.22, 16.3181, 0, 0, 159.8, 0, 0, 'Mall'),
(141, 2404, 1110.18, -1533.73, 16.0335, -8.79999, -0.399998, 159.7, 0, 0, 'Mall'),
(142, 2691, 1107.17, -1527.29, 17.4081, 0, 0, 69.7001, 0, 0, 'Mall'),
(143, 2229, 1118.04, -1530.69, 14.7981, 0, 0, -110.1, 0, 0, 'Mall'),
(144, 2625, 1118.54, -1528.08, 15.7981, 0, 0, -109.2, 0, 0, 'Mall'),
(145, 2695, 1119.7, -1525.96, 17.4081, 0, 0, -108.5, 0, 0, 'Mall'),
(146, 2652, 1116.32, -1531.63, 15.4281, 0, 0, 137.9, 0, 0, 'Mall'),
(147, 2622, 1116.32, -1525.92, 15.5781, 0, 0, -19.3, 0, 0, 'Mall'),
(148, 2621, 1115.62, -1527.92, 15.5781, 0, 0, -19.3, 0, 0, 'Mall'),
(149, 2620, 1114.21, -1525.98, 15.5781, 0, 0, -19.3, 0, 0, 'Mall'),
(150, 2656, 1118.03, -1530.67, 17.4081, 0, 0, -110.3, 0, 0, 'Mall'),
(151, 2655, 1113.54, -1535.2, 18.0723, 0, -89.7999, 160.3, 0, 0, 'Mall'),
(152, 2654, 1106.1, -1531.49, 15.0081, 0, 0, -20.4, 0, 0, 'Mall'),
(153, 2694, 1106.54, -1530.56, 14.9081, 0, 0, -16.4, 0, 0, 'Mall'),
(154, 2698, 1110.82, -1528.59, 15.7381, 0, 0, -85.9, 0, 0, 'Mall'),
(155, 2412, 1111.51, -1521.22, 14.7981, 0, 0, -20.8, 0, 0, 'Mall'),
(156, 2412, 1113.37, -1521.9, 14.7981, 0, 0, -22.8, 0, 0, 'Mall'),
(157, 2654, 1106.39, -1530.64, 15.2481, 0, 0, -21.8, 0, 0, 'Mall'),
(158, 2654, 1106.9, -1529.69, 15.0181, 0, 0, -23.8, 0, 0, 'Mall'),
(159, 2694, 1106.71, -1529.95, 15.3581, 0, 0, -21.8, 0, 0, 'Mall'),
(160, 2689, 1111.42, -1528.12, 15.4681, 0, 0, -22.8, 0, 0, 'Mall'),
(161, 2689, 1111.56, -1528.79, 15.4681, 0, 0, 90.2, 0, 0, 'Mall'),
(162, 2704, 1110.65, -1529.32, 15.4681, 0, 0, -163.5, 0, 0, 'Mall'),
(163, 2704, 1110.08, -1528.75, 15.4681, 0, 0, 170.9, 0, 0, 'Mall'),
(164, 2705, 1110.23, -1528.15, 15.4681, 0, 0, 135.9, 0, 0, 'Mall'),
(165, 2705, 1110.71, -1527.85, 15.4681, 0, 0, 99.8999, 0, 0, 'Mall'),
(166, 2649, 1106.48, -1531.53, 18.6313, 0, 179.2, 159.1, 0, 0, 'Mall'),
(167, 2404, 1107.95, -1525.45, 16.021, -8.4, 0, 69.7, 0, 0, 'Mall'),
(168, 2406, 1108.23, -1524.69, 16.021, -8.4, 0, 69.7, 0, 0, 'Mall'),
(169, 2626, 1108.72, -1530.93, 15.3181, 0, 0, 159.8, 0, 0, 'Mall'),
(170, 2694, 1108.09, -1530.77, 15.9481, 0, 0, 0, 0, 0, 'Mall'),
(171, 2692, 1114.94, -1533.98, 15.6591, 0, 0, -151.7, 0, 0, 'Mall'),
(172, 2693, 1114.32, -1534.68, 15.6591, 0, 0, -173, 0, 0, 'Mall'),
(173, 2581, 1095.56, -1511.2, 15.7981, 0, 0, -158.4, 0, 0, 'Mall'),
(174, 2229, 1088.35, -1513.99, 14.7981, 0, 0, 167.2, 0, 0, 'Mall'),
(175, 2229, 1084.73, -1503.41, 14.7981, 0, 0, 55.6, 0, 0, 'Mall'),
(176, 19172, 1086.64, -1508.9, 17.548, 0, 0, 111.3, 0, 0, 'Mall'),
(177, 2578, 1088.1, -1512.65, 15.654, -5.5, 0, 111.2, 0, 0, 'Mall'),
(178, 2578, 1087.52, -1511.04, 15.6578, -5.5, 0, 111.2, 0, 0, 'Mall'),
(179, 19319, 1092.14, -1500.62, 17.4533, 0, 25.9, 21.3, 0, 0, 'Mall'),
(180, 19318, 1088, -1502.18, 17.6903, 0, 26.7999, 21.3, 0, 0, 'Mall'),
(181, 19317, 1088.7, -1513.94, 16.9167, -16, -0.100084, 164.1, 0, 0, 'Mall'),
(182, 2231, 1112.4, -1534.34, 14.9181, 0, 0, 174.5, 0, 0, 'Mall'),
(183, 2728, 1092.24, -1436.95, 17.1802, 88.5, 91, 0, 0, 0, 'Mall'),
(184, 2583, 1086.8, -1502.9, 15.6481, 0, 0, 21.2, 0, 0, 'Mall'),
(185, 2582, 1089.05, -1502.03, 15.6481, 0, 0, 21.2, 0, 0, 'Mall'),
(186, 2414, 1090.46, -1501.63, 14.7881, 0, 0, 21.1, 0, 0, 'Mall'),
(187, 2414, 1092.33, -1500.91, 14.7881, 0, 0, 21.1, 0, 0, 'Mall'),
(188, 2414, 1094.2, -1500.19, 14.7881, 0, 0, 21.1, 0, 0, 'Mall'),
(189, 1954, 1094.08, -1500.36, 15.9381, 0, 0, 9.3, 0, 0, 'Mall'),
(190, 1958, 1092.7, -1500.87, 15.8681, 0, 0, 0, 0, 0, 'Mall'),
(191, 1952, 1092.49, -1501.21, 15.8581, 0, 0, -84.4, 0, 0, 'Mall'),
(192, 1809, 1090.38, -1501.84, 15.7981, 0, 0, 21.3, 0, 0, 'Mall'),
(193, 1787, 1091.02, -1501.57, 15.9081, 0, 0, 29, 0, 0, 'Mall'),
(194, 2368, 1087.58, -1505.24, 14.7881, 0, 0, -158.8, 0, 0, 'Mall'),
(195, 2368, 1088.98, -1506.78, 14.7881, 0, 0, 111.3, 0, 0, 'Mall'),
(196, 1514, 1089.11, -1506.63, 16.0781, 0, 0, 111.2, 0, 0, 'Mall'),
(197, 2225, 1089.56, -1513.82, 14.7989, 0, 0, -158.2, 0, 0, 'Mall'),
(198, 2581, 1093.5, -1512.02, 15.7981, 0, 0, -158.4, 0, 0, 'Mall'),
(199, 1960, 1088.62, -1505.62, 15.8516, 89.1, -14.9, 0, 0, 0, 'Mall'),
(200, 2100, 1091.55, -1512.58, 14.7881, 0, 0, -160.9, 0, 0, 'Mall'),
(201, 2700, 1093.8, -1512.01, 17.7781, 0, 0, 132.8, 0, 0, 'Mall'),
(202, 2388, 1093.4, -1504.58, 14.782, 0, 0.2, 20.5, 0, 0, 'Mall'),
(203, 19319, 1093.32, -1505.06, 15.4691, -11.7, -1.5, 20.3, 0, 0, 'Mall'),
(204, 19318, 1093.44, -1504.83, 15.5105, -11.7, -1.5, 103.9, 0, 0, 'Mall'),
(205, 19317, 1093.14, -1504.7, 15.5309, -11.7, -1.5, -154, 0, 0, 'Mall'),
(206, 19317, 1093.04, -1504.96, 15.5105, -11.7, -1.5, -79.2999, 0, 0, 'Mall'),
(207, 16151, 1139.49, -1530.8, 15.138, 0, 0, -159.6, 0, 0, 'Mall'),
(208, 18060, 1149.11, -1530.97, 16.5757, 0, 0, 109.5, 0, 0, 'Mall'),
(209, 18059, 1149.39, -1530.91, 15.1845, 0, 0, 109.9, 0, 0, 'Mall'),
(210, 19172, 1145.69, -1534.17, 17.2081, 0, 0, -159.9, 0, 0, 'Mall'),
(211, 19173, 1137.6, -1528.88, 17.2981, 0, 0, -69.9, 0, 0, 'Mall'),
(218, 1280, 1136.89, -1483.13, 22.1291, 0, 0, 90.4, 0, 0, 'Mall'),
(219, 1280, 1136.89, -1495.71, 22.1291, 0, 0, -89.7, 0, 0, 'Mal'),
(220, 1280, 1119.96, -1495.66, 22.1291, 0, 0, -89.7, 0, 0, 'Mall'),
(221, 1280, 1119.95, -1483.25, 22.1291, 0, 0, 90.4, 0, 0, 'Mall'),
(230, 2226, 1092.39, -1505.76, 14.7948, 0, 0.5, 43, 0, 0, 'Mall'),
(231, 2604, 1171.44, -1504.86, 15.5968, 0, 0, -111.8, 0, 0, 'Mall'),
(233, 2604, 1170.07, -1508.29, 15.5968, 0, 0, -111.8, 0, 0, 'Mall'),
(234, 1806, 1170.33, -1505.6, 14.7778, 0, 0, -82, 0, 0, 'Mall'),
(235, 1806, 1170.74, -1503.89, 14.7778, 0, 0, -119.7, 0, 0, 'Mall'),
(236, 1806, 1169.48, -1507.41, 14.7778, 0, 0, -98.5, 0, 0, 'Mall'),
(237, 2199, 1167.92, -1513.72, 14.7781, 0, 0, 158, 0, 0, 'Mall'),
(238, 1702, 1164.45, -1504.36, 14.8256, 0, 0, -21.1, 0, 0, 'Mall'),
(240, 1702, 1165.17, -1507.97, 14.8256, 0, 0, 158.4, 0, 0, 'Mall'),
(241, 2315, 1164.1, -1505.88, 14.7956, 0, 0, -21.1, 0, 0, 'Mall'),
(242, 2185, 1168.69, -1502.24, 14.7881, 0, 0, 158.5, 0, 0, 'Mall'),
(243, 2185, 1166.73, -1501.47, 14.7881, 0, 0, 158.5, 0, 0, 'Mall'),
(244, 2185, 1164.76, -1500.7, 14.7881, 0, 0, 158.5, 0, 0, 'Mall'),
(245, 2185, 1163.28, -1511.42, 14.7889, 0, 0, -21.4, 0, 0, 'Mall'),
(246, 2185, 1161.3, -1510.64, 14.7889, 0, 0, -21.4, 0, 0, 'Mall'),
(247, 2185, 1159.33, -1509.87, 14.7889, 0, 0, -21.4, 0, 0, 'Mall'),
(248, 1715, 1164.43, -1510.68, 14.7983, 0, 0, -8.79999, 0, 0, 'Mall'),
(249, 1715, 1162.39, -1510.13, 14.7983, 0, 0, -46.2, 0, 0, 'Mall'),
(250, 1715, 1160.46, -1509.31, 14.7983, 0, 0, -1.69999, 0, 0, 'Mall'),
(251, 1715, 1167.36, -1502.89, 14.7881, 0, 0, 156.3, 0, 0, 'Mall'),
(252, 1715, 1165.54, -1502.1, 14.7881, 0, 0, -166, 0, 0, 'Mall'),
(253, 1715, 1163.62, -1501.25, 14.7881, 0, 0, 134, 0, 0, 'Mall'),
(254, 2286, 1165.36, -1500.49, 17.4658, 0, 0, -21.2, 0, 0, 'Mall'),
(255, 2283, 1168.2, -1501.59, 17.4658, 0, 0, -21.2, 0, 0, 'Mall'),
(256, 2258, 1164.16, -1512.22, 17.2881, 0, 0, 158.7, 0, 0, 'Mall'),
(260, 1498, 2401.77, -1714.43, 13.1243, 0, 0, 0, 0, 0, 'Fixing door in ganton house'),
(271, 983, 1128.57, -1415.97, 13.111, 0, 0, -89.7, 0, 0, 'Mall'),
(276, 983, 2095.95, -1811.74, 13.0628, 0, 0, 89.5, 0, 0, 'Pizza'),
(278, 983, 2095.91, -1822.29, 13.0628, 0, 0, 90.1, 0, 0, 'pizza'),
(279, 983, 2095.93, -1802.27, 13.0628, 0, 0, 90.2, 0, 0, 'Pizza'),
(280, 983, 2095.97, -1791.1, 13.0528, 0, 0, 90.2, 0, 0, 'pizza'),
(288, 16151, -2153.32, 622.767, 1060.29, 0, 0, 89.1, 10, -1, 'Betting'),
(289, 1432, -2154.4, 616.557, 1060.06, 0, 0, 0, 10, -1, 'Betting'),
(290, 2010, -2152.89, 613.548, 1059.96, 0, 0, 0, 10, -1, 'Betting'),
(292, 2022, -2157.79, 613.8, 1059.95, 0, 0, 178.9, 10, -1, 'Betting'),
(293, 2018, -2157.77, 614.784, 1059.95, 0, 0, 88.9001, 10, -1, 'Betting'),
(294, 2015, -2157.75, 615.779, 1059.95, 0, 0, 88.7, 10, -1, 'Betting'),
(296, 2017, -2156.8, 613.781, 1059.95, 0, 0, 178.9, 10, -1, 'Betting'),
(297, 2013, -2154.8, 613.743, 1059.95, 0, 0, 178.9, 10, -1, 'Betting'),
(298, 2016, -2153.81, 613.735, 1059.95, 0, 0, -180, 10, -1, 'Betting'),
(304, 2188, -2161.31, 622.718, 1060.93, 0, 0, 0, 10, -1, 'Betting'),
(307, 2942, 1462.34, -1010.18, 26.4937, 0, 0, 0, 0, 0, 'ATM'),
(308, 989, 1843.25, -1856.28, 13.7228, 0, 0, 16.5, 0, 0, 'Spray'),
(309, 989, 2071.55, -1831.35, 14.1569, 0, 0, 17.1, 0, 0, 'Spray'),
(310, 989, 1024.86, -1029.37, 32.5834, 0, 0, 107.1, 0, 0, 'Spray'),
(311, 989, 488.431, -1734.76, 11.6431, 0, 0, -80.7999, 0, 0, 'Spray'),
(312, 989, 719.957, -462.442, 16.5759, 0, 0, -73, 0, 0, 'Spray'),
(316, 1502, 1473.45, -1758.34, 3284.28, 0, 0, 0, 0, 0, 'LSPD'),
(318, 1502, 1487.11, -1763.95, 3284.28, 0, 0, 89.8, 0, 0, 'LSPD'),
(319, 19302, 1491.86, -1764.85, 3285.52, 0, 0, 0, 10, 0, 'LSPD Jail'),
(320, 19302, 1495.07, -1764.85, 3285.52, 0, 0, 0, 10, 0, 'LSPD Jail'),
(321, 19302, 1498.26, -1764.85, 3285.52, 0, 0, 0, 10, 0, 'LSPD Jail'),
(322, 19302, 1501.47, -1764.85, 3285.52, 0, 0, 0, 10, 0, 'LSPD Jail'),
(323, 19302, 1501.46, -1761.53, 3285.52, 0, 0, 0, 10, 0, 'LSPD Jail'),
(324, 19302, 1498.26, -1761.53, 3285.52, 0, 0, 0, 10, 0, 'LSPD Jail'),
(325, 19302, 1495.06, -1761.53, 3285.52, 0, 0, 0, 10, 0, 'LSPD Jail'),
(326, 19302, 1491.85, -1761.53, 3285.52, 0, 0, 0, 10, 0, 'LSPD Jail'),
(333, 994, 1544.62, -1623.88, 12.4769, 0, 0, 74.2, 0, 0, 'LSPD'),
(334, 994, 1544.6, -1639.17, 12.6669, 0, 0, 92.8, 0, 0, 'LSPD'),
(336, 2648, 1474.51, -1789.42, 3288.87, 0, 0, 90.4, 10, 0, 'LSPD'),
(337, 985, -1218.65, -1072.42, 129.067, 0, 0, 0, 0, 0, 'Impound'),
(338, 985, -1199.24, -1071.91, 129.067, 0, 0, 7.2, 0, 0, 'Impound'),
(341, 984, -1224.96, -1072.35, 137.31, 62, -3, 88, 0, 0, 'Impound'),
(344, 1596, -1236.14, -1047.53, 154.852, 21.8, 4.90001, 76.6, 0, 0, 'Impound'),
(349, 19390, 215.589, 124.469, 1003.96, 0, 0, -90.1, 10, 0, 'LSPD1'),
(350, 19434, 213.179, 124.473, 1003.96, 0, 0, -90.1, 10, 0, 'LSPD1'),
(351, 19434, 217.989, 124.465, 1003.96, 0, 0, -90.1, 10, 0, 'LSPD1'),
(352, 1536, 214.85, 124.445, 1002.21, 0, 0, 0.000012, 10, 0, 'LSPD1'),
(355, 19325, 239.606, 111.102, 1005.74, 0, 0, 0, 10, 0, 'LSPD1'),
(356, 19325, 253.151, 115.688, 1005.79, 0, 0, 0, 10, 0, 'LSPD1'),
(357, 19325, 243.119, 119.247, 1006.2, 0, 0, -90, 10, 0, 'LSPD1'),
(359, 19325, 249.759, 119.247, 1006.2, 0, 0, -90, 10, 0, 'LSPD1'),
(360, 1491, 233.108, 119.207, 1002.21, 0, 0, 0, 10, 0, 'LSPD1'),
(361, 1491, 236.808, 119.207, 1002.21, 0, 0, 0, 10, 0, 'LSPD1'),
(362, 1491, 225.063, 115.892, 1002.2, 0, 0, 0, 10, 0, 'LSPD1'),
(363, 2607, 266.883, 107.631, 1004.02, 0, 0, 0, 10, 0, 'LSPD1'),
(364, 1671, 266.841, 108.337, 1004.08, 0, 0, 14.3, 10, 0, 'LSPD1'),
(366, 2604, 260.961, 108.927, 1004.43, 0, 0, 90.2999, 10, 0, 'LSPD1'),
(367, 2606, 260.771, 108.846, 1006.23, 0, 0, 90.2999, 10, 0, 'LSPD1'),
(368, 2615, 261.487, 112.364, 1005.79, 0, 0, 0, 10, 0, 'LSPD1'),
(369, 2616, 263.527, 112.364, 1005.61, 0, 0, 0, 10, 0, 'LSPD1'),
(370, 1721, 261.712, 109.971, 1003.61, 0, 0, 75.4, 10, 0, 'LSPD1'),
(371, 1721, 261.707, 108.235, 1003.61, 0, 0, 99.4, 10, 0, 'LSPD1'),
(372, 2737, 268.177, 108.214, 1005.64, 0, 0, -90, 10, 0, 'LSPD1'),
(373, 1808, 267.577, 112.212, 1003.6, 0, 0, 0, 10, 0, 'LSPD1'),
(382, 1502, -2657.71, 1399.13, 944.515, 0, 0, 90, 0, 0, 'LSFD'),
(386, 19435, 1100.39, -1334.58, 12.1197, 44.2001, -88.2, 178, 0, 0, 'LSFD'),
(387, 19435, 1096.89, -1334.54, 12.0409, 44.2001, -88.2, 178, 0, 0, 'LSFD'),
(388, 19435, 1093.54, -1334.57, 12.0139, 44.2001, -88.2, 178, 0, 0, 'LSFD'),
(390, 1502, -2656.35, 1385.93, 944.526, 0, 0, 0, 0, 0, 'LSFD'),
(394, 1502, -2657.71, 1382.02, 944.515, 0, 0, 90, 0, 0, 'LSFD'),
(402, 984, 1116.65, -1416.02, 13.2166, 0, 0, 90.6, 0, 0, 'Mall');

-- --------------------------------------------------------

--
-- Table structure for table `ownedvehicles`
--

CREATE TABLE `ownedvehicles` (
  `id` int(11) NOT NULL,
  `model` int(64) DEFAULT NULL,
  `color1` int(64) DEFAULT NULL,
  `color2` int(64) DEFAULT NULL,
  `parkx` float DEFAULT NULL,
  `parky` float DEFAULT NULL,
  `parkz` float DEFAULT NULL,
  `parka` float DEFAULT NULL,
  `plate` varchar(255) DEFAULT NULL,
  `owner` varchar(64) DEFAULT NULL,
  `owned` int(11) DEFAULT NULL,
  `slot` int(11) DEFAULT NULL,
  `alarm` int(11) DEFAULT NULL,
  `lock` int(11) DEFAULT NULL,
  `immob` int(11) DEFAULT NULL,
  `insurances` int(64) DEFAULT NULL,
  `destroys` int(11) DEFAULT NULL,
  `gps` int(11) DEFAULT NULL,
  `fuel` int(64) DEFAULT NULL,
  `registered` int(11) DEFAULT NULL,
  `broken` int(11) DEFAULT NULL,
  `weapons` text,
  `comp0` int(64) DEFAULT NULL,
  `comp1` int(64) DEFAULT NULL,
  `comp2` int(64) DEFAULT NULL,
  `comp3` int(64) DEFAULT NULL,
  `comp4` int(64) DEFAULT NULL,
  `comp5` int(64) DEFAULT NULL,
  `comp6` int(64) DEFAULT NULL,
  `comp7` int(64) DEFAULT NULL,
  `comp8` int(64) DEFAULT NULL,
  `comp9` int(64) DEFAULT NULL,
  `comp10` int(64) DEFAULT NULL,
  `comp11` int(64) DEFAULT NULL,
  `comp12` int(64) DEFAULT NULL,
  `comp13` int(64) DEFAULT NULL,
  `paintjob` int(64) DEFAULT NULL,
  `radio` int(11) DEFAULT NULL,
  `tickets` varchar(255) DEFAULT NULL,
  `dupkey` int(64) DEFAULT NULL,
  `comps` int(64) DEFAULT NULL,
  `drugs` text,
  `faction` int(64) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `parkmeters`
--

CREATE TABLE `parkmeters` (
  `id` int(11) NOT NULL,
  `posx` float DEFAULT NULL,
  `posy` float DEFAULT NULL,
  `posz` float DEFAULT NULL,
  `posrx` float DEFAULT NULL,
  `posry` float DEFAULT NULL,
  `posrz` float DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `minutes` int(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `parkmeters`
--

INSERT INTO `parkmeters` (`id`, `posx`, `posy`, `posz`, `posrx`, `posry`, `posrz`, `name`, `minutes`) VALUES
(0, 1834.83, -1873.85, 13.1997, 0, 0, 0, 'UnityStation', 0),
(1, 1838, -1873.85, 13.1997, 0, 0, 0, 'UnityStation', 0),
(2, 1841.14, -1873.85, 13.1997, 0, 0, 0, 'UnityStation', 0),
(3, 1844.31, -1873.85, 13.1997, 0, 0, 0, 'UnityStation', 0),
(4, 1836.74, -1850.8, 13.1797, 0, 0, 0, 'UnityStation', 0),
(5, 1839.85, -1850.8, 13.1797, 0, 0, 0, 'UnityStation', 0),
(6, 1845.92, -1862.9, 13.5781, 0, 0, 0, 'UnityStation', 0);

-- --------------------------------------------------------

--
-- Table structure for table `plants`
--

CREATE TABLE `plants` (
  `id` int(11) NOT NULL,
  `planter` varchar(24) DEFAULT NULL,
  `growtime` int(24) DEFAULT NULL,
  `posx` float DEFAULT NULL,
  `posy` float DEFAULT NULL,
  `posz` float DEFAULT NULL,
  `made` int(64) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `playertoys`
--

CREATE TABLE `playertoys` (
  `id` int(11) NOT NULL,
  `pid` int(255) DEFAULT NULL,
  `name` varchar(128) DEFAULT NULL,
  `model` int(11) DEFAULT NULL,
  `bone` int(11) DEFAULT NULL,
  `offestx` float DEFAULT NULL,
  `offesty` float DEFAULT NULL,
  `offestz` float DEFAULT NULL,
  `rotx` float DEFAULT NULL,
  `roty` float DEFAULT NULL,
  `rotz` float DEFAULT NULL,
  `scalex` float DEFAULT NULL,
  `scaley` float DEFAULT NULL,
  `scalez` float DEFAULT NULL,
  `owner` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `player_notes`
--

CREATE TABLE `player_notes` (
  `id` int(11) NOT NULL,
  `pid` int(64) DEFAULT NULL,
  `note` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `QuestionID` int(11) NOT NULL,
  `Question` varchar(255) NOT NULL,
  `Answer1` varchar(255) NOT NULL,
  `Answer2` varchar(255) NOT NULL,
  `Answer3` varchar(255) NOT NULL,
  `1Status` varchar(255) NOT NULL,
  `2Status` varchar(255) NOT NULL,
  `3Status` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `radios`
--

CREATE TABLE `radios` (
  `id` int(11) NOT NULL,
  `channelid` int(64) DEFAULT NULL,
  `owner` varchar(64) DEFAULT NULL,
  `pass` varchar(64) DEFAULT NULL,
  `protected` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `radios`
--

INSERT INTO `radios` (`id`, `channelid`, `owner`, `pass`, `protected`) VALUES
(2, 912, 'NONE', 'lsfdlsfd123123', NULL),
(1, 911, 'NONE', 'lspdlspd123123', NULL),
(3, 910, 'NONE', 'govgov123123', NULL),
(9, 111, 'Marshall_Scotland', 'muielaforce', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ucp_news`
--

CREATE TABLE `ucp_news` (
  `id` int(11) NOT NULL,
  `item_color` int(11) NOT NULL,
  `item` text NOT NULL,
  `shorttext` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `user_name` varchar(64) NOT NULL,
  `date` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

-- --------------------------------------------------------

--
-- Table structure for table `ucp_users`
--

CREATE TABLE `ucp_users` (
  `id` int(11) NOT NULL,
  `login` varchar(24) NOT NULL,
  `email` varchar(128) NOT NULL,
  `password` varchar(256) NOT NULL,
  `secret_code` varchar(16) NOT NULL,
  `email_hash` varchar(256) NOT NULL DEFAULT 'NoneUserHash',
  `next_email` varchar(128) NOT NULL DEFAULT 'NoneUserHash',
  `recovery_hash` varchar(32) NOT NULL DEFAULT 'NoneUserHash',
  `register_date` int(11) NOT NULL,
  `register_ip` varchar(64) NOT NULL,
  `last_date` int(11) NOT NULL,
  `last_ip` varchar(64) NOT NULL,
  `banned` int(11) NOT NULL DEFAULT '0',
  `user_hash` varchar(32) NOT NULL DEFAULT 'NoneUserHash',
  `character_id` int(11) NOT NULL DEFAULT '0',
  `characters` int(11) NOT NULL DEFAULT '0',
  `characters_activate` int(11) NOT NULL DEFAULT '0',
  `money` int(11) NOT NULL DEFAULT '0',
  `accountuse` int(11) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ucp_users_answers`
--

CREATE TABLE `ucp_users_answers` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `character_id` int(11) NOT NULL,
  `character_name` varchar(24) NOT NULL,
  `first_password` varchar(40) NOT NULL,
  `character_sex` int(11) NOT NULL,
  `question1` text NOT NULL,
  `question2` text NOT NULL,
  `question3` text NOT NULL,
  `question4` text NOT NULL,
  `answer1` varchar(1000) NOT NULL,
  `answer2` varchar(1000) NOT NULL,
  `answer3` varchar(1000) NOT NULL,
  `answer4` varchar(1000) NOT NULL,
  `create_time` int(11) NOT NULL,
  `characters_activate` int(11) NOT NULL,
  `activate` int(11) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

-- --------------------------------------------------------

--
-- Table structure for table `ucp_users_answers_archive`
--

CREATE TABLE `ucp_users_answers_archive` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `character_id` int(11) NOT NULL,
  `character_name` varchar(24) NOT NULL,
  `first_password` varchar(40) NOT NULL,
  `character_sex` int(11) NOT NULL,
  `question1` text NOT NULL,
  `question2` text NOT NULL,
  `question3` text NOT NULL,
  `question4` text NOT NULL,
  `answer1` text NOT NULL,
  `answer2` text NOT NULL,
  `answer3` text NOT NULL,
  `answer4` text NOT NULL,
  `create_time` int(11) NOT NULL,
  `characters_activate` int(11) NOT NULL,
  `activate` int(11) NOT NULL DEFAULT '1',
  `reason` text NOT NULL,
  `admin` varchar(24) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

-- --------------------------------------------------------

--
-- Table structure for table `ucp_users_mailbox`
--

CREATE TABLE `ucp_users_mailbox` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `from_name` varchar(24) NOT NULL,
  `item` text NOT NULL,
  `message` text NOT NULL,
  `date` int(11) NOT NULL,
  `activate` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(24) DEFAULT NULL,
  `password` varchar(40) DEFAULT NULL,
  `secret` varchar(255) DEFAULT NULL,
  `registered` int(11) DEFAULT NULL,
  `cash` int(255) DEFAULT '0',
  `bank` int(255) DEFAULT '0',
  `skin` int(11) DEFAULT NULL,
  `sex` int(11) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `origin` varchar(255) DEFAULT NULL,
  `level` int(20) DEFAULT NULL,
  `exp` int(20) DEFAULT NULL,
  `hours` int(20) DEFAULT '0',
  `admin` int(11) DEFAULT '0',
  `helper` int(11) DEFAULT '0',
  `int` int(11) DEFAULT NULL,
  `world` int(11) DEFAULT NULL,
  `jailed` int(11) DEFAULT NULL,
  `jailtime` int(255) DEFAULT NULL,
  `banned` int(11) NOT NULL DEFAULT '0',
  `warns` int(11) DEFAULT NULL,
  `donate` int(11) DEFAULT NULL,
  `carlic` int(11) DEFAULT NULL,
  `weplic` int(11) DEFAULT NULL,
  `flylic` int(11) DEFAULT NULL,
  `posx` float DEFAULT NULL,
  `posy` float DEFAULT NULL,
  `posz` float DEFAULT NULL,
  `posa` float DEFAULT NULL,
  `died` int(11) DEFAULT NULL,
  `fightstyle` int(11) DEFAULT NULL,
  `pen` int(11) DEFAULT NULL,
  `attributes` varchar(255) DEFAULT NULL,
  `paycheck` int(255) DEFAULT NULL,
  `paycheckmoney` int(255) DEFAULT '0',
  `upgrade` int(64) DEFAULT NULL,
  `paydaytime` int(64) DEFAULT NULL,
  `spawnhealth` float DEFAULT NULL,
  `cellphone` int(11) DEFAULT NULL,
  `number` int(255) DEFAULT NULL,
  `savings` int(255) DEFAULT '0',
  `housekey` int(64) DEFAULT '-1',
  `melee` int(64) DEFAULT '0',
  `wep1` int(64) DEFAULT '0',
  `wep2` int(64) DEFAULT '0',
  `ammo1` int(64) DEFAULT '0',
  `ammo2` int(64) DEFAULT '0',
  `radio` int(11) DEFAULT NULL,
  `crashed` tinyint(4) DEFAULT NULL,
  `mask` int(11) DEFAULT NULL,
  `accenton` int(11) NOT NULL DEFAULT '0',
  `accent` varchar(128) DEFAULT NULL,
  `bmx` int(11) DEFAULT NULL,
  `carkey` int(255) DEFAULT NULL,
  `acquisitiondonate` int(11) DEFAULT NULL,
  `vehslot` int(11) DEFAULT NULL,
  `hunger` float DEFAULT NULL,
  `sparekey` int(255) DEFAULT NULL,
  `lighter` int(11) DEFAULT NULL,
  `cigars` int(64) DEFAULT NULL,
  `bizkey` int(64) DEFAULT '-1',
  `workon` int(64) DEFAULT '-1',
  `walk` int(64) DEFAULT NULL,
  `armour` float DEFAULT NULL,
  `hasarmour` int(11) DEFAULT NULL,
  `faction` int(64) DEFAULT NULL,
  `rank` int(64) DEFAULT NULL,
  `badgenumber` int(255) DEFAULT NULL,
  `drivewarns` int(64) DEFAULT NULL,
  `jailtime2` int(11) DEFAULT NULL,
  `arrested` int(64) DEFAULT '0',
  `chat` int(64) DEFAULT NULL,
  `swat` int(11) DEFAULT NULL,
  `materials` int(11) NOT NULL DEFAULT '0',
  `job` int(24) DEFAULT NULL,
  `jobrank` int(24) DEFAULT NULL,
  `career` int(64) DEFAULT NULL,
  `sidejob` int(24) DEFAULT NULL,
  `spawntype` int(24) DEFAULT NULL,
  `prisoned` int(24) DEFAULT NULL,
  `drugs` text,
  `seeds` int(64) DEFAULT NULL,
  `hud` int(11) DEFAULT '0',
  `jobhours` int(11) DEFAULT '0',
  `sidejobhours` int(11) DEFAULT '0',
  `contacts` text,
  `channels` text,
  `authed` text,
  `slot` int(11) DEFAULT NULL,
  `last_ip` varchar(100) DEFAULT NULL,
  `user_id_ucp` int(11) NOT NULL,
  `online` int(11) NOT NULL,
  `taxilic` int(11) NOT NULL DEFAULT '0',
  `toolkit` int(11) NOT NULL DEFAULT '0',
  `medlic` int(11) NOT NULL DEFAULT '0',
  `traintickets` int(11) NOT NULL DEFAULT '0',
  `boombox` int(11) NOT NULL DEFAULT '0',
  `dice` int(11) NOT NULL DEFAULT '0',
  `signads` int(11) NOT NULL DEFAULT '0',
  `wanted` varchar(128) NOT NULL DEFAULT 'None',
  `meleeweaponbone` int(11) NOT NULL DEFAULT '1',
  `meleeweapon0` float NOT NULL DEFAULT '0.323999',
  `meleeweapon1` float NOT NULL DEFAULT '-0.144999',
  `meleeweapon2` float NOT NULL DEFAULT '-0.166',
  `meleeweapon3` float NOT NULL DEFAULT '0',
  `meleeweapon4` float NOT NULL DEFAULT '-72',
  `meleeweapon5` float NOT NULL DEFAULT '0',
  `primaryweaponbone` int(11) NOT NULL DEFAULT '8',
  `primaryweapon0` float NOT NULL DEFAULT '-0.239',
  `primaryweapon1` float NOT NULL DEFAULT '-0.062999',
  `primaryweapon2` float NOT NULL DEFAULT '0.079999',
  `primaryweapon3` float NOT NULL DEFAULT '-97.2',
  `primaryweapon4` float NOT NULL DEFAULT '-8.1',
  `primaryweapon5` float NOT NULL DEFAULT '-1.7',
  `secondaryweapon1bone` int(11) NOT NULL DEFAULT '1',
  `secondaryweapon10` float NOT NULL DEFAULT '0.106999',
  `secondaryweapon11` float NOT NULL DEFAULT '0.207',
  `secondaryweapon12` float NOT NULL DEFAULT '-0.079',
  `secondaryweapon13` float NOT NULL DEFAULT '179.1',
  `secondaryweapon14` float NOT NULL DEFAULT '143.1',
  `secondaryweapon15` float NOT NULL DEFAULT '-0.099999',
  `secondaryweapon2bone` int(11) NOT NULL DEFAULT '1',
  `secondaryweapon20` float NOT NULL DEFAULT '-0.109',
  `secondaryweapon21` float NOT NULL DEFAULT '-0.164999',
  `secondaryweapon22` float NOT NULL DEFAULT '0',
  `secondaryweapon23` float NOT NULL DEFAULT '-0.899999',
  `secondaryweapon24` float NOT NULL DEFAULT '39.2',
  `secondaryweapon25` float NOT NULL DEFAULT '8.3',
  `secondaryweapon3bone` int(11) NOT NULL DEFAULT '7',
  `secondaryweapon30` float NOT NULL DEFAULT '-0.056999',
  `secondaryweapon31` float NOT NULL DEFAULT '0',
  `secondaryweapon32` float NOT NULL DEFAULT '-0.057999',
  `secondaryweapon33` float NOT NULL DEFAULT '-77.8',
  `secondaryweapon34` float NOT NULL DEFAULT '0',
  `secondaryweapon35` float NOT NULL DEFAULT '0',
  `phonemodel` int(11) NOT NULL DEFAULT '0',
  `phoneringtone` int(11) NOT NULL DEFAULT '0',
  `phoneringtonesms` int(11) NOT NULL DEFAULT '0',
  `strength` int(11) NOT NULL DEFAULT '0',
  `HouseEntered` int(11) NOT NULL DEFAULT '-1',
  `BizEntered` int(11) NOT NULL DEFAULT '-1',
  `DoorEntered` int(11) NOT NULL DEFAULT '-1',
  `DoorEntered2` int(11) NOT NULL DEFAULT '-1',
  `TrainEntered` int(11) NOT NULL DEFAULT '0',
  `cards` int(11) NOT NULL DEFAULT '0',
  `activated` int(11) NOT NULL DEFAULT '0',
  `register_date` int(11) NOT NULL,
  `register_ip` varchar(16) NOT NULL,
  `last_date` varchar(64) NOT NULL DEFAULT '-',
  `last_date_ucp` int(11) NOT NULL,
  `last_ip_ucp` varchar(16) NOT NULL,
  `changenames` int(11) NOT NULL DEFAULT '0',
  `changenumber` int(11) NOT NULL DEFAULT '0',
  `private` int(11) NOT NULL DEFAULT '0',
  `guestbook` int(11) NOT NULL DEFAULT '0',
  `signature` text NOT NULL,
  `recovery_hash` varchar(32) NOT NULL,
  `tickets` varchar(255) NOT NULL,
  `channel` varchar(255) NOT NULL,
  `vehicles` varchar(255) NOT NULL,
  `ownedchannel` int(23) NOT NULL,
  `spawnlspd` int(11) NOT NULL,
  `veh1` varchar(255) NOT NULL DEFAULT 'NONE',
  `veh2` varchar(255) NOT NULL DEFAULT 'NONE',
  `veh3` varchar(255) NOT NULL DEFAULT 'NONE',
  `fines` int(11) NOT NULL,
  `LastX` float NOT NULL,
  `LastY` float NOT NULL,
  `LastZ` float NOT NULL,
  `LastA` float NOT NULL,
  `LastInt` int(11) NOT NULL,
  `LastVW` int(11) NOT NULL,
  `CanJob` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `password`, `secret`, `registered`, `cash`, `bank`, `skin`, `sex`, `age`, `origin`, `level`, `exp`, `hours`, `admin`, `helper`, `int`, `world`, `jailed`, `jailtime`, `banned`, `warns`, `donate`, `carlic`, `weplic`, `flylic`, `posx`, `posy`, `posz`, `posa`, `died`, `fightstyle`, `pen`, `attributes`, `paycheck`, `paycheckmoney`, `upgrade`, `paydaytime`, `spawnhealth`, `cellphone`, `number`, `savings`, `housekey`, `melee`, `wep1`, `wep2`, `ammo1`, `ammo2`, `radio`, `crashed`, `mask`, `accenton`, `accent`, `bmx`, `carkey`, `acquisitiondonate`, `vehslot`, `hunger`, `sparekey`, `lighter`, `cigars`, `bizkey`, `workon`, `walk`, `armour`, `hasarmour`, `faction`, `rank`, `badgenumber`, `drivewarns`, `jailtime2`, `arrested`, `chat`, `swat`, `materials`, `job`, `jobrank`, `career`, `sidejob`, `spawntype`, `prisoned`, `drugs`, `seeds`, `hud`, `jobhours`, `sidejobhours`, `contacts`, `channels`, `authed`, `slot`, `last_ip`, `user_id_ucp`, `online`, `taxilic`, `toolkit`, `medlic`, `traintickets`, `boombox`, `dice`, `signads`, `wanted`, `meleeweaponbone`, `meleeweapon0`, `meleeweapon1`, `meleeweapon2`, `meleeweapon3`, `meleeweapon4`, `meleeweapon5`, `primaryweaponbone`, `primaryweapon0`, `primaryweapon1`, `primaryweapon2`, `primaryweapon3`, `primaryweapon4`, `primaryweapon5`, `secondaryweapon1bone`, `secondaryweapon10`, `secondaryweapon11`, `secondaryweapon12`, `secondaryweapon13`, `secondaryweapon14`, `secondaryweapon15`, `secondaryweapon2bone`, `secondaryweapon20`, `secondaryweapon21`, `secondaryweapon22`, `secondaryweapon23`, `secondaryweapon24`, `secondaryweapon25`, `secondaryweapon3bone`, `secondaryweapon30`, `secondaryweapon31`, `secondaryweapon32`, `secondaryweapon33`, `secondaryweapon34`, `secondaryweapon35`, `phonemodel`, `phoneringtone`, `phoneringtonesms`, `strength`, `HouseEntered`, `BizEntered`, `DoorEntered`, `DoorEntered2`, `TrainEntered`, `cards`, `activated`, `register_date`, `register_ip`, `last_date`, `last_date_ucp`, `last_ip_ucp`, `changenames`, `changenumber`, `private`, `guestbook`, `signature`, `recovery_hash`, `tickets`, `channel`, `vehicles`, `ownedchannel`, `spawnlspd`, `veh1`, `veh2`, `veh3`, `fines`, `LastX`, `LastY`, `LastZ`, `LastA`, `LastInt`, `LastVW`, `CanJob`) VALUES
(1, 'Razvan_Test', '123456', '123456', 1, 11791, 8, 116, 1, 20, 'Asiatic', 3, 5, 25, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1714.96, -1873.74, 13.5666, 0.99995, 0, 0, 0, '', 0, 3940, 0, 5, 20, 1, 5335041, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, NULL, 0, NULL, 5706425, 0, 0, -1, -1, 0, 0, 0, 7, 5, 95774, 0, 0, 1, 0, 0, 0, 4, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, '', '', '0', 0, '92.81.82.30', 463, 0, 0, 0, 0, 0, 0, 0, 0, 'None', 1, 0.323999, -0.144999, -0.166, 0, -72, 0, 8, -0.239, -0.062999, 0.079999, -97.2, -8.1, -1.7, 1, 0.106999, 0.207, -0.079, 179.1, 143.1, -0.099999, 1, -0.109, -0.164999, 0, -0.899999, 39.2, 8.3, 7, -0.056999, 0, -0.057999, -77.8, 0, 0, 0, 0, 0, 0, -1, -1, -1, -1, 0, 0, 1, 1456077204, '92.81.82.30', '-', 1456943683, '92.81.82.30', 0, 0, 0, 0, '', '', '', '0', '1', 0, 0, 'Huntley', 'NONE', 'NONE', 0, 1715.01, -1876.72, 13.5666, 0, 0, 0, 0),
(2, 'Trevon_Deshawn', '7123456a', 'Revanesef', 1, 9402, -13, 106, 1, 21, 'Afro-American', 2, 0, 8, 0, 0, 0, 0, 1, 59999934, 0, 0, 0, 1, 0, 0, 2576.79, 2712.2, 22.9507, 0.99995, 1, 0, 0, '', 0, 0, 2, 8, 0, 1, 7248685, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, NULL, 0, NULL, 0, 39, 19, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, '', '', '0', 0, '188.25.218.173', 492, 0, 0, 0, 0, 0, 0, 0, 0, 'None', 1, 0.323999, -0.144999, -0.166, 0, -72, 0, 8, -0.239, -0.062999, 0.079999, -97.2, -8.1, -1.7, 1, 0.106999, 0.207, -0.079, 179.1, 143.1, -0.099999, 1, -0.109, -0.164999, 0, -0.899999, 39.2, 8.3, 7, -0.056999, 0, -0.057999, -77.8, 0, 0, 0, 0, 0, 0, -1, -1, -1, -1, 0, 0, 1, 1456326154, '188.25.218.173', '-', 0, '', 0, 0, 0, 0, '', '', '', '0', '0', 0, 0, 'NONE', 'NONE', 'NONE', 0, 1715.01, -1876.72, 13.5666, 0, 0, 0, 0),
(3, 'Yuuki_Asuna', 'varius34', '123123', 1, 549, 354, 91, 1, 26, 'Asiatic', 3, 14, 34, 2014, 0, 10, 524, 0, 0, 0, 0, 3, 1, 0, 1, 2254.78, -1112.24, 1049.13, 0.99995, 0, 0, 0, '', 0, 27699, 0, 0, 20, 1, 157685, 0, 520, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, 0, NULL, 0, NULL, 0, 0, 0, -1, -1, 0, 0, 0, 1, 1, 43295, 0, 0, 1, 0, 0, 0, 1, 1, 5, 0, 1, 0, '', 0, 0, 0, 0, '', '', '1', 1, '109.102.152.102', 464, 0, 0, 0, 0, 0, 0, 0, 0, 'None', 1, 0.323999, -0.144999, -0.166, 0, -72, 0, 8, -0.239, -0.062999, 0.079999, -97.2, -8.1, -1.7, 1, 0.106999, 0.207, -0.079, 179.1, 143.1, -0.099999, 1, -0.109, -0.164999, 0, -0.899999, 39.2, 8.3, 7, -0.056999, 0, -0.057999, -77.8, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 0, 0, 1, 1456077308, '127.0.0.1', '-', 1457013171, '109.102.152.102', 0, 0, 0, 0, '', '', '', '911', '1', 0, 0, 'Nebula', 'NONE', 'NONE', 1, 2254.78, -1112.24, 1049.13, 0.99995, 10, 524, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users_guestbooks`
--

CREATE TABLE `users_guestbooks` (
  `id` int(11) NOT NULL,
  `character_id` int(11) NOT NULL,
  `from_character_id` int(11) NOT NULL,
  `from_character_name` varchar(24) NOT NULL,
  `date` int(11) NOT NULL,
  `post` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

-- --------------------------------------------------------

--
-- Table structure for table `vehicles`
--

CREATE TABLE `vehicles` (
  `id` int(11) NOT NULL,
  `model` int(64) DEFAULT NULL,
  `color1` int(64) DEFAULT NULL,
  `color2` int(64) DEFAULT NULL,
  `posx` float DEFAULT NULL,
  `posy` float DEFAULT NULL,
  `posz` float DEFAULT NULL,
  `posa` float DEFAULT NULL,
  `type` int(64) DEFAULT NULL,
  `faction` int(64) DEFAULT NULL,
  `plate` varchar(255) DEFAULT NULL,
  `info` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicles`
--

INSERT INTO `vehicles` (`id`, `model`, `color1`, `color2`, `posx`, `posy`, `posz`, `posa`, `type`, `faction`, `plate`, `info`) VALUES
(1, 560, 1, 1, 1509.39, -1751.9, 13.1191, 0, 9, 5, 'GOV', 'LSGOV'),
(2, 560, 1, 1, 1505.57, -1752, 13.2191, 0, 9, 5, 'GOV', 'LSGOV'),
(3, 579, 1, 1, 1456.65, -1751.99, 13.2991, 0, 9, 5, 'GOV', 'LSGOV'),
(4, 409, 1, 1, 1452.72, -1751.94, 13.1991, 0, 9, 5, 'GOV', 'LSGOV'),
(6, 552, 3, 1, -1581.13, 691.204, -5.621, 39.18, 7, 2, 'LSEMS', 'LSFD'),
(7, 552, 3, 1, -1578.01, 693.979, -5.621, 39.18, 7, 2, 'LSEMS', 'LSFD'),
(8, 426, 3, 1, -1588.98, 710.68, -5.5202, -82.08, 7, 2, 'LSEMS', 'LSFD'),
(9, 560, 3, 1, -1589.01, 707.115, -5.5386, -82.08, 7, 2, 'LSEMS', 'LSFD'),
(10, 560, 3, 1, -1574.19, 706.043, -5.5386, 90, 7, 2, 'LSEMS', 'LSFD'),
(11, 489, 3, 1, -1574.26, 742.665, -5.3066, 90, 7, 2, 'LSEMS', 'LSFD'),
(12, 489, 3, 1, -1574.29, 738.488, -5.3066, 90, 7, 2, 'LSEMS', 'LSFD'),
(17, 547, 90, 90, 1198.36, -1835.53, 13.05, -90, 2, 0, 'DMV', 'DMV CAR'),
(18, 547, 90, 90, 1198.49, -1832.02, 13.05, -90, 2, 0, 'DMV', 'DMV CAR'),
(19, 547, 90, 90, 1198.53, -1828.28, 13.05, -90, 2, 0, 'DMV', 'DMV CAR'),
(20, 547, 90, 90, 1239.59, -1812.82, 13.05, -90, 2, 0, 'DMV', 'DMV CAR'),
(21, 547, 90, 90, 1239.48, -1817.29, 13.05, -90, 2, 0, 'DMV', 'DMV CAR'),
(22, 547, 90, 90, 1239.55, -1821.19, 13.05, -90, 2, 0, 'DMV', 'DMV CAR'),
(23, 596, 0, 1, 1578.54, -1709.78, 5.4603, 0, 5, 1, 'LSPD', 'LSPD CAR'),
(24, 596, 0, 1, 1574.32, -1709.79, 5.4603, 0, 5, 1, 'LSPD', 'LSPD CAR'),
(25, 596, 0, 1, 1583.12, -1709.7, 5.4603, 0, 5, 1, 'LSPD', 'LSPD CAR'),
(26, 596, 0, 1, 1587.21, -1709.88, 5.4603, 0, 5, 1, 'LSPD', 'LSPD CAR'),
(27, 596, 0, 1, 1591.44, -1709.91, 5.4603, 0, 5, 1, 'LSPD', 'LSPD CAR'),
(28, 596, 0, 1, 1595.47, -1709.95, 5.4603, 0, 5, 1, 'LSPD', 'LSPD CAR'),
(29, 525, 1, 1, 1570.15, -1710.53, 5.5422, 0, 6, 1, 'LSPD TOW', 'LSPD CAR'),
(30, 525, 1, 1, 1564.63, -1710.59, 5.5422, 0, 6, 1, 'LSPD TOW', 'LSPD CAR'),
(31, 528, 1, 1, 1530.16, -1688.3, 5.8031, 90, 5, 1, 'LSPD', 'LSPD CAR'),
(32, 528, 1, 1, 1529.79, -1684.4, 5.8031, 90, 5, 1, 'LSPD', 'LSPD CAR'),
(33, 599, 0, 1, 1600.57, -1704.24, 5.8412, 90, 5, 1, 'LSPD', 'LSPD CAR'),
(34, 599, 0, 1, 1600.84, -1700.25, 5.8824, 90, 5, 1, 'LSPD', 'LSPD CAR'),
(36, 601, 1, 1, 1543.93, -1684.03, 5.5831, 90, 5, 1, 'LSPD', 'LSPD CAR'),
(37, 541, 1, 0, 1544.64, -1680.34, 5.4023, 90, 5, 1, 'LSPD', 'LSPD CAR'),
(38, 415, 0, -1, 1544.1, -1676.02, 5.3823, 90, 5, 1, 'LSPD', 'LSPD CAR'),
(39, 402, 0, -1, 1544.42, -1671.86, 5.4823, 90, 5, 1, 'LSPD', 'LSPD CAR'),
(40, 523, 0, 0, 1542.7, -1666.82, 5.3223, 90, 5, 1, 'LSPD', 'LSPD CAR'),
(41, 523, 0, 0, 1543.12, -1668.97, 5.3223, 90, 5, 1, 'LSPD', 'LSPD CAR'),
(42, 523, 0, 0, 1542.45, -1661.69, 5.3223, 90, 5, 1, 'LSPD', 'LSPD CAR'),
(43, 523, 0, 0, 1542.57, -1663.89, 5.3223, 90, 5, 1, 'LSPD', 'LSPD CAR'),
(44, 403, -1, -1, -76.5881, -1106.88, 1.5143, 162, 8, 0, 'TRUCKER', 'TRUCKER CAR'),
(45, 403, -1, -1, -70.7257, -1109.02, 1.5143, 162, 8, 0, 'TRUCKER', 'TRUCKER CAR'),
(46, 403, -1, -1, -64.3845, -1111.02, 1.5143, 162, 8, 0, 'TRUCKER', 'TRUCKER CAR'),
(47, 403, -1, -1, -57.6206, -1112.97, 1.5143, 162, 8, 0, 'TRUCKER', 'TRUCKER CAR'),
(48, 403, -1, -1, -50.4194, -1115.93, 1.5143, 162, 8, 0, 'TRUCKER', 'TRUCKER CAR'),
(49, 524, -1, -1, -84.7836, -1134.8, 1.7328, -22, 8, 0, 'TRUCKER', 'TRUCKER CAR'),
(50, 524, -1, -1, -78.3137, -1137.38, 1.7328, -22, 8, 0, 'TRUCKER', 'TRUCKER CAR'),
(51, 524, -1, -1, -71.0118, -1140.14, 1.7328, -22, 8, 0, 'TRUCKER', 'TRUCKER CAR'),
(52, 524, -1, -1, -64.4955, -1143.06, 1.7328, -22, 8, 0, 'TRUCKER', 'TRUCKER CAR'),
(53, 524, -1, -1, -58.2354, -1146.06, 1.7328, -22, 8, 0, 'TRUCKER', 'TRUCKER CAR'),
(54, 422, 1, 1, -93.0789, -1144.48, 1.5389, 156, 8, 0, 'TRUCKER', 'TRUCKER CAR'),
(55, 422, 1, 1, -89.8452, -1146.02, 1.5389, 156, 8, 0, 'TRUCKER', 'TRUCKER CAR'),
(56, 456, -1, -1, -82.9967, -1151.99, 1.665, 156, 8, 0, 'TRUCKER', 'TRUCKER CAR'),
(57, 456, -1, -1, -78.4597, -1154.42, 1.665, 156, 8, 0, 'TRUCKER', 'TRUCKER CAR'),
(58, 456, -1, -1, -73.2395, -1156.81, 1.665, 156, 8, 0, 'TRUCKER', 'TRUCKER CAR'),
(59, 591, -1, -1, -30.2088, -1128.8, 1.4507, 68, 8, 0, 'TRUCKER', 'TRUCKER CAR'),
(60, 422, 1, 1, -86.417, -1147.76, 1.5389, 156, 8, 0, 'TRUCKER', 'TRUCKER CAR'),
(61, 591, -1, -1, -27.3167, -1122.6, 1.4507, 68, 8, 0, 'TRUCKER', 'TRUCKER CAR'),
(62, 591, -1, -1, -33.7634, -1135.99, 1.4507, 68, 8, 0, 'TRUCKER', 'TRUCKER CAR'),
(63, 591, -1, -1, -37.4799, -1142.98, 1.4507, 68, 8, 0, 'TRUCKER', 'TRUCKER CAR'),
(64, 591, -1, -1, -40.7418, -1150.67, 1.4507, 68, 8, 0, 'TRUCKER', 'TRUCKER CAR'),
(65, 574, 1, 1, 2299.11, -2335.05, 13.2233, -135, 10, 0, 'SWEEPER', 'SWEEP CAR'),
(66, 574, 1, 1, 2295.69, -2338.13, 13.2233, -135, 10, 0, 'SWEEPER', 'SWEEP CAR'),
(67, 574, 1, 1, 2291.75, -2342.19, 13.2233, -135, 10, 0, 'SWEEPER', 'SWEEP CAR'),
(68, 574, 1, 1, 2288.6, -2345.31, 13.2233, -135, 10, 0, 'SWEEPER', 'SWEEP CAR'),
(69, 574, 1, 1, 2284.27, -2349.73, 13.2233, -135, 10, 0, 'SWEEPER', 'SWEEP CAR'),
(70, 574, 1, 1, 2281.24, -2352.79, 13.2233, -135, 10, 0, 'SWEEPER', 'SWEEP CAR'),
(71, 582, 1, 1, 593.196, -1516.17, 15.2487, -90, 0, 6, 'SAN NEWS', 'NEWS CAR'),
(72, 400, 1, 1, 592.993, -1510.97, 15.2487, -90, 0, 6, 'SAN NEWS', 'NEWS CAR'),
(73, 507, 1, 1, 593.073, -1506.49, 15.2487, -90, 0, 6, 'SAN NEWS', 'NEWS CAR'),
(74, 554, 1, 1, 592.961, -1501.38, 15.2487, -90, 0, 6, 'SAN NEWS', 'NEWS CAR'),
(75, 487, 1, 1, 1753.76, -2294.42, 26.8517, 0, 4, 0, 'FLYING DMV', 'HELICOPTER DMV CAR'),
(76, 487, 1, 1, 1767.86, -2294.42, 26.8517, 0, 4, 0, 'FLYING DMV', 'HELICOPTER DMV CAR'),
(77, 497, 0, 1, 1549.36, -1644.59, 28.4707, 90, 5, 1, 'LSPD HELICOPTER', 'LSPD HELICOPTER'),
(78, 497, 0, 1, 1548.66, -1707.45, 28.4707, 90, 5, 1, 'LSPD HELICOPTER', 'LSPD HELICOPTER'),
(79, 596, 0, 1, 2324.43, -1357.98, 23.6848, 0, 5, 1, 'LSPD CAR', 'LSPD'),
(80, 596, 0, 1, 2320.35, -1357.98, 23.6848, 0, 5, 1, 'LSPD CAR', 'LSPD'),
(81, 596, 0, 1, 2316.31, -1357.98, 23.6848, 0, 5, 1, 'LSPD CAR', 'LSPD'),
(82, 541, 0, 1, 2319.66, -1339.1, 23.532, -180, 5, 1, 'LSPD CAR', 'LSPD'),
(83, 560, 0, 1, 2324.66, -1339.1, 23.532, -180, 5, 1, 'LSPD CAR', 'LSPD'),
(84, 596, 0, 1, 509.73, -1794.45, 5.6862, 0, 5, 1, 'LSPD CAR', 'LSPD'),
(85, 596, 0, 1, 514.731, -1794.45, 5.6862, 0, 5, 1, 'LSPD CAR', 'LSPD'),
(86, 596, 0, 1, 519.731, -1794.45, 5.6862, 0, 5, 1, 'LSPD CAR', 'LSPD'),
(87, 541, 0, 1, 512.128, -1767.62, 5.368, -180, 5, 1, 'LSPD CAR', 'LSPD'),
(88, 560, 0, 1, 516.128, -1767.62, 5.368, -180, 5, 1, 'LSPD CAR', 'LSPD'),
(89, 453, 0, 1, 521.561, -1913.38, 0.931, 180, 5, 1, 'LSPD BOAT', 'LSPD'),
(90, 430, 0, 1, 512.441, -1913.38, 0.031, 180, 5, 1, 'LSPD BOAT', 'LSPD'),
(91, 430, 0, 1, 503.441, -1913.38, 0.031, 180, 5, 1, 'LSPD BOAT', 'LSPD'),
(92, 430, 0, 1, 494.441, -1913.38, 0.031, 180, 5, 1, 'LSPD BOAT', 'LSPD'),
(93, 599, 3, 1, -1574.27, 726.609, -5.1459, 90, 7, 2, 'LSEMS', 'LSFD'),
(94, 599, 3, 1, -1574.27, 721.989, -5.1459, 90, 7, 2, 'LSEMS', 'LSFD'),
(95, 545, 3, 3, -1574.27, 718.309, -5.1459, 90, 7, 2, 'LSEMS', 'LSFD'),
(96, 470, 3, 3, -1574.43, 713.989, -5.1459, 90, 7, 2, 'LSEMS', 'LSFD'),
(97, 487, 3, 3, 1161.12, -1318.19, 31.623, 90, 7, 2, 'LSEMS', 'LSFD'),
(98, 563, 3, 3, 1161.12, -1302.95, 31.623, 90, 7, 2, 'LSEMS', 'LSFD'),
(99, 426, 0, 1, 2298.69, -1335.15, 23.6471, 0, 5, 1, 'LSPD CAR', 'LSPD'),
(100, 596, 0, 1, 2298.69, -1342.59, 23.6271, 0, 5, 1, 'LSPD CAR', 'LSPD'),
(101, 596, 0, 1, 2298.69, -1350.59, 23.6271, 0, 5, 1, 'LSPD CAR', 'LSPD');

-- --------------------------------------------------------

--
-- Table structure for table `weapondmg`
--

CREATE TABLE `weapondmg` (
  `weapon` int(64) NOT NULL,
  `damage` int(64) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `weapondmg`
--

INSERT INTO `weapondmg` (`weapon`, `damage`) VALUES
(1, 20),
(2, 20),
(3, 15),
(4, 20),
(5, 20),
(6, 20),
(7, 20),
(8, 15),
(9, 15),
(10, 5),
(11, 5),
(12, 5),
(13, 5),
(14, 5),
(15, 5),
(16, 20),
(17, 20),
(18, 0),
(19, 0),
(20, 0),
(21, 0),
(22, 20),
(23, 10),
(24, 15),
(25, 20),
(26, 20),
(27, 20),
(28, 10),
(29, 15),
(30, 20),
(31, 25),
(32, 25),
(33, 90),
(34, 100),
(35, 0),
(36, 0),
(37, 0),
(38, 100),
(39, 0),
(40, 0),
(41, 5),
(42, 0),
(43, 0),
(44, 0),
(45, 0),
(46, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ajails`
--
ALTER TABLE `ajails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `apaylog`
--
ALTER TABLE `apaylog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `apbs`
--
ALTER TABLE `apbs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ateles`
--
ALTER TABLE `ateles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `atms`
--
ALTER TABLE `atms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banks`
--
ALTER TABLE `banks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bans`
--
ALTER TABLE `bans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `business`
--
ALTER TABLE `business`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cctvs`
--
ALTER TABLE `cctvs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `complexs`
--
ALTER TABLE `complexs`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `criminalrecords`
--
ALTER TABLE `criminalrecords`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dealerships`
--
ALTER TABLE `dealerships`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doors`
--
ALTER TABLE `doors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `factiondoors`
--
ALTER TABLE `factiondoors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `factions`
--
ALTER TABLE `factions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fines`
--
ALTER TABLE `fines`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `foodstands`
--
ALTER TABLE `foodstands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `furnitures`
--
ALTER TABLE `furnitures`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gates`
--
ALTER TABLE `gates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gstations`
--
ALTER TABLE `gstations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `houses`
--
ALTER TABLE `houses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `infos`
--
ALTER TABLE `infos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kicks`
--
ALTER TABLE `kicks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `labels`
--
ALTER TABLE `labels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movedoors`
--
ALTER TABLE `movedoors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `objects`
--
ALTER TABLE `objects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ownedvehicles`
--
ALTER TABLE `ownedvehicles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `parkmeters`
--
ALTER TABLE `parkmeters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `plants`
--
ALTER TABLE `plants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `playertoys`
--
ALTER TABLE `playertoys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `player_notes`
--
ALTER TABLE `player_notes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`QuestionID`);

--
-- Indexes for table `radios`
--
ALTER TABLE `radios`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ucp_news`
--
ALTER TABLE `ucp_news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ucp_users`
--
ALTER TABLE `ucp_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ucp_users_answers`
--
ALTER TABLE `ucp_users_answers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ucp_users_answers_archive`
--
ALTER TABLE `ucp_users_answers_archive`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ucp_users_mailbox`
--
ALTER TABLE `ucp_users_mailbox`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_guestbooks`
--
ALTER TABLE `users_guestbooks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicles`
--
ALTER TABLE `vehicles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `weapondmg`
--
ALTER TABLE `weapondmg`
  ADD PRIMARY KEY (`weapon`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ajails`
--
ALTER TABLE `ajails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `apaylog`
--
ALTER TABLE `apaylog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=0;
--
-- AUTO_INCREMENT for table `apbs`
--
ALTER TABLE `apbs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=0;
--
-- AUTO_INCREMENT for table `ateles`
--
ALTER TABLE `ateles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT for table `atms`
--
ALTER TABLE `atms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT for table `banks`
--
ALTER TABLE `banks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `bans`
--
ALTER TABLE `bans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=0;
--
-- AUTO_INCREMENT for table `business`
--
ALTER TABLE `business`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `cctvs`
--
ALTER TABLE `cctvs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `complexs`
--
ALTER TABLE `complexs`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `criminalrecords`
--
ALTER TABLE `criminalrecords`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=0;
--
-- AUTO_INCREMENT for table `dealerships`
--
ALTER TABLE `dealerships`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `doors`
--
ALTER TABLE `doors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `factiondoors`
--
ALTER TABLE `factiondoors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `factions`
--
ALTER TABLE `factions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `fines`
--
ALTER TABLE `fines`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=0;
--
-- AUTO_INCREMENT for table `foodstands`
--
ALTER TABLE `foodstands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `furnitures`
--
ALTER TABLE `furnitures`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=554;
--
-- AUTO_INCREMENT for table `gates`
--
ALTER TABLE `gates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `gstations`
--
ALTER TABLE `gstations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `houses`
--
ALTER TABLE `houses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=663;
--
-- AUTO_INCREMENT for table `infos`
--
ALTER TABLE `infos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `kicks`
--
ALTER TABLE `kicks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=0;
--
-- AUTO_INCREMENT for table `labels`
--
ALTER TABLE `labels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `movedoors`
--
ALTER TABLE `movedoors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;
--
-- AUTO_INCREMENT for table `objects`
--
ALTER TABLE `objects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=403;
--
-- AUTO_INCREMENT for table `ownedvehicles`
--
ALTER TABLE `ownedvehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=0;
--
-- AUTO_INCREMENT for table `parkmeters`
--
ALTER TABLE `parkmeters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `plants`
--
ALTER TABLE `plants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=0;
--
-- AUTO_INCREMENT for table `playertoys`
--
ALTER TABLE `playertoys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=0;
--
-- AUTO_INCREMENT for table `player_notes`
--
ALTER TABLE `player_notes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `QuestionID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `radios`
--
ALTER TABLE `radios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `ucp_news`
--
ALTER TABLE `ucp_news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=0;
--
-- AUTO_INCREMENT for table `ucp_users`
--
ALTER TABLE `ucp_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=0;
--
-- AUTO_INCREMENT for table `ucp_users_answers`
--
ALTER TABLE `ucp_users_answers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=0;
--
-- AUTO_INCREMENT for table `ucp_users_answers_archive`
--
ALTER TABLE `ucp_users_answers_archive`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=0;
--
-- AUTO_INCREMENT for table `ucp_users_mailbox`
--
ALTER TABLE `ucp_users_mailbox`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=0;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `users_guestbooks`
--
ALTER TABLE `users_guestbooks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=0;
--
-- AUTO_INCREMENT for table `vehicles`
--
ALTER TABLE `vehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;
--
-- AUTO_INCREMENT for table `weapondmg`
--
ALTER TABLE `weapondmg`
  MODIFY `weapon` int(64) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
