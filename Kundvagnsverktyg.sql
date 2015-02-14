/*
Kvar att göra
10 moderkort (KLAR)
10 nätaggregat
10 kylare (KLAR)
10 hårddiskar (KLAR)
10 ramminnen (KLAR)
10 chassin (KLAR)
10 processorer (KLAR)
10 grafikkort (KLAR)
*/





CREATE TABLE IF NOT EXISTS `computercases` (
`id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `formfactor` varchar(100) DEFAULT NULL,
  `width cm` int(11) DEFAULT NULL,
  `height cm` int(11) DEFAULT NULL,
  `depth cm` int(11) DEFAULT NULL,
  `maxcpu cm` int(11) DEFAULT NULL,
  `maxgpu cm` int(11) DEFAULT NULL,
  `maxpsu cm` int(11) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=901 DEFAULT CHARSET=utf8;

INSERT INTO `computercases` (`id`, `name`, `formfactor`, `width cm`, `height cm`, `depth cm`, `maxcpu cm`, `maxgpu cm`, `maxpsu cm`) VALUES
(1, 'Fractal Design define r4 Black', 'ATX/mATX/mITX', 23, 46, 52, NULL, NULL, NULL),
(2, 'NZXT H440 Silent ultra white', 'ATX/mATX/mITX', 22, 48, 51, 18, 29, NULL),
(3, 'Be quiet! Silent Base 800 black', 'ATX/mATX/mITX', 27, 56, 50, 17, 29, NULL),
(4, 'Bitfenix Neos White', 'ATX/mATX/mITX', 19, 43, 47, 155, 0, NULL),
(5, 'Corsair obsidian 750D', 'ATX/mATX/mITX/E-ATX/XL-ATX/HPTX', 55, 56, 24, 17, 45, NULL),
(6, 'Phanteks Enthoo Luxe white', 'ATX/mATX/E-ATX/SSI-EEB', 24, 56, 55, 19, 35, NULL),
(7, 'Zalman Z12 black', 'ATX/mATX', 22, 47, 48, NULL, 29, NULL),
(8, 'Silverstone Temjin TJ08B-E black', 'mATX/mITX/Mini-DTX', 21, 37, 39, 17, 34, NULL),
(9, 'Cooler Master Storm trooper', 'ATX/mATX/XL-ATX', 25, 58, 61, 19, 32, NULL),
(10, 'Antec GX500', 'ATX/mATX/mITX', 21, 48, 46, 16, 38, NULL);



CREATE TABLE IF NOT EXISTS `cooler` (
`id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `type` enum('air','liquid') DEFAULT NULL,
  `width cm` int(11) DEFAULT NULL,
  `heigh cm` int(11) DEFAULT NULL,
  `depth cm` int(11) DEFAULT NULL,
  `sockel` varchar(100) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=901 DEFAULT CHARSET=utf8;

INSERT INTO `cooler` (`id`, `name`, `type`, `width cm`, `heigh cm`, `depth cm`, `sockel`) VALUES
(1, 'Cooler Master V8 GTS', 'air', 15, 17, 15, 'LGA775,LGA1156,AM2,LGA1366,AM3,LGA1155,AM3+,LGA2011,FM1,FM2,LGA1150,FM2+'),
(2, 'Cooler Master Hyper 212 Evo', 'air', 8, 16, 12, 'LGA775,LGA1156,AM2,AM2+,LGA1366,AM3,LGA1155,AM3+,FM1,LGA1150'),
(3, 'Noctua NH-D15', 'air', 15, 17, 16, 'LGA1156,AM2,AM2+,AM3,LGA1155,AM3+,LGA2011,FM1,FM2,LGA1150,FM2+'),
(4, 'Noctua NH-U9B SE2', 'air', 10, 13, 12, 'LGA775,LGA1156,AM2,AM2+,LGA1366,AM3,LGA1155,AM3+,FM1,FM2,LGA1150'),
(5, 'Intel Air Cooling TS13A', 'air', NULL, NULL, NULL, 'LGA2011'),
(6, 'Corsair H80i Hydro Series', 'liquid', 15, 12, 4, 'LGA1156,AM2,LGA1366,AM3,LGA1155,LGA2011,FM1,FM2'),
(7, 'Cooler Master Nepton 240M', 'liquid', NULL, NULL, NULL, 'LGA775,LGA1156,AM2,AM2+,LGA1366,AM3,LGA1155,AM3+,LGA2011t,FM1,FM2, LGA1150,FM2+,LGA2011-v3'),
(8, 'Intel TS13X Liquid Cooling Solution', 'liquid', NULL, NULL, NULL, 'LGA1156,LGA1366,LGA1155,LGA2011,LGA1150'),
(9, 'NZXT Kraken X41', 'liquid', 17, 14, 4, 'LGA1156,AM2,AM2+,LGA1366,AM3,LGA1155,AM3+,LGA2011,FM1,FM2,LGA1150'),
(10, 'Cooler Master Nepton 280L', 'liquid', 8, 5, 7, 'LGA775,LGA1156,AM2,LGA1366,AM3,LGA1155,AM3+,LGA2011,FM1,FM2,LGA1150');



CREATE TABLE IF NOT EXISTS `gpu` (
`id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `width cm` int(11) DEFAULT NULL,
  `height cm` int(11) DEFAULT NULL,
  `depth cm` int(11) DEFAULT NULL,
  `power` varchar(100) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=901 DEFAULT CHARSET=utf8;

INSERT INTO `gpu` (`id`, `name`, `width cm`, `height cm`, `depth cm`, `power`) VALUES
(1, 'Gigabyte Geforce GTX 970 G1', 4, 13, 31, '550W'),
(2, 'ASUS Radeon r9 280 3GB DirectCUII TOP', NULL, NULL, NULL, '600W'),
(3, 'ASUS GeForce GTX 750Ti 2GB PhysX CUDA', 4, 12, 18, NULL),
(4, 'ASUS Geforce ROG MATRIX 980', NULL, NULL, NULL, NULL),
(5, 'ZOTAC GeForce GTX 960 AMP! 2GB', NULL, NULL, NULL, '500W'),
(6, 'Sapphire Radeon R9 285 2GB GDDR5', 3, 11, 26, '500W'),
(7, 'MSI Geforce GTX TITAN black', NULL, NULL, NULL, '700W'),
(8, 'Gigabyte GeForce GTX 750 Ti 2GB OC', NULL, NULL, NULL, '400W'),
(9, 'EVGA Geforce GTX 750 1GB SC', NULL, NULL, NULL, '500W'),
(10, 'MSI Radeon r7 250 2GB OC (Oland X)', NULL, NULL, NULL, NULL);



CREATE TABLE IF NOT EXISTS `harddrive` (
`id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `unit` enum('SSD','HDD','HDD+SSD') DEFAULT NULL,
  `form factor` enum('2.5"','3.5"') DEFAULT NULL,
  `width mm` int(11) DEFAULT NULL,
  `depth mm` int(11) DEFAULT NULL,
  `height mm` int(11) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=901 DEFAULT CHARSET=utf8;

INSERT INTO `harddrive` (`id`, `name`, `unit`, `form factor`, `width mm`, `depth mm`, `height mm`) VALUES
(1, 'Kingston SSDNow V300', 'SSD', '2.5"', 70, 100, 7),
(2, 'Intel® SSD 530 Series', 'SSD', '2.5"', 70, 100, 7),
(3, 'Crucial MX100 SSD', 'SSD', '2.5"', NULL, NULL, 7),
(4, 'Samsung 850 EVO', 'SSD', '2.5"', 70, 100, 7),
(5, 'Samsung SSD 840 EVO', 'SSD', '2.5"', 70, 100, 7),
(6, 'Seagate Barracuda®', 'HDD', '3.5"', NULL, NULL, NULL),
(7, 'Seagate Barracuda®', 'HDD', '3.5"', NULL, NULL, NULL),
(8, 'WD Red NAS', 'HDD', '3.5"', 102, 147, 26),
(9, 'Seagate® Desktop SSHD', 'HDD+SSD', '3.5"', 102, 147, 20),
(10, 'WD AV-GP', 'HDD', '3.5"', 102, 147, 26);



CREATE TABLE IF NOT EXISTS `motherboard` (
`id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `formfactor` enum('ATX','mATX','mITX','XL-ATX','E-ATX') DEFAULT NULL,
  `sockel` enum('AM1','AM1+','AM2','AM2+','AM3','AM3+','FM2','FM2+','LGA775','LGA1150','LGA1366','LGA1155','LGA2011','LGA2011-v3') DEFAULT NULL,
  `ram` varchar(100) DEFAULT NULL,
  `width cm` int(11) DEFAULT NULL,
  `depth cm` int(11) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=901 DEFAULT CHARSET=utf8;

INSERT INTO `motherboard` (`id`, `name`, `formfactor`, `sockel`, `ram`, `width cm`, `depth cm`) VALUES
(1, 'Asus Rampage V Extreme', 'E-ATX', 'LGA2011-v3', 'DDR4', 31, 27),
(2, 'MSI Z97 GAMING 5', 'ATX', 'LGA1150', 'DDR3', 31, 24),
(3, 'ASUS X99-DELUXE', 'ATX', 'LGA2011-v3', 'DDR4', 31, 24),
(4, 'MSI X99S GAMING 7', 'ATX', 'LGA2011-v3', 'DDR4', 31, 24),
(5, 'ASUS Z97-E (White box)', 'ATX', 'LGA1150', 'DDR3', 31, 22),
(6, 'Gigabyte GA-F2A78M-D3H', 'mATX', 'FM2+', 'DDR3', 24, 24),
(7, 'ASUS Sabertooth 990FX R2.0', 'ATX', 'AM3+', 'DDR3', 31, 24),
(8, 'ASUS Crosshair V Formula-Z', 'ATX', 'AM3+', 'DDR3', 31, 24),
(9, 'ASUS AM1I-A', 'mITX', 'AM1', 'DDR3', 17, 17),
(10, 'MSI 970 GAMING', 'ATX', 'AM3+', 'DDR3', 31, 24);



CREATE TABLE IF NOT EXISTS `processor` (
`id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `cores` int(11) DEFAULT NULL,
  `threads` int(11) DEFAULT NULL,
  `sockel` enum('AM1','AM1+','AM2','AM2+','AM3','AM3+','FM2','FM2+','LGA775','LGA1150','LGA1366','LGA1155','LGA2011','LGA2011-v3') DEFAULT NULL,
  `power` varchar(100) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=901 DEFAULT CHARSET=utf8;

INSERT INTO `processor` (`id`, `name`, `cores`, `threads`, `sockel`, `power`) VALUES
(1, 'Intel Core i3-4370', 2, 4, 'LGA1150', '54W'),
(2, 'Intel Core i5-4460', 4, 5, 'LGA1150', '84W'),
(3, 'Intel Core i5-4690K', 4, 4, 'LGA1150', '88W'),
(4, 'Intel Core i7-4790K', 4, 8, 'LGA1150', '88W'),
(5, 'Intel Core i7-4930K', 6, 12, 'LGA2011', '130W'),
(6, 'Intel Core i7-5820K', 6, 12, 'LGA2011-v3', '140W'),
(7, 'AMD FX-6300 Black Edition', 6, 6, 'AM3+', '95W'),
(8, 'AMD FX-8350 Black Edition', 8, 8, 'AM3+', '125W'),
(9, 'AMD Athlon X4 860k Black Edition', 4, 4, 'FM2+', '95W'),
(10, 'AMD A8-6600K Black Edition', 4, 4, 'FM2', '100W');



CREATE TABLE IF NOT EXISTS `ram` (
`id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL DEFAULT '',
  `total size` varchar(100) DEFAULT NULL,
  `size` varchar(100) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `technology` enum('DDR3','DDR4') DEFAULT NULL,
  `height inch` int(11) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=901 DEFAULT CHARSET=utf8;

INSERT INTO `ram` (`id`, `name`, `total size`, `size`, `amount`, `technology`, `height inch`) VALUES
(1, 'Corsair Vengeance Pro', '16GB', '8GB', 2, 'DDR3', NULL),
(2, 'Corsair Vengeance Pro', '8GB', '4GB', 2, 'DDR3', NULL),
(3, 'Crucial BallistiX Sport', '16GB', '8GB', 2, 'DDR3', NULL),
(4, 'Crucial BallistiX Elite', '8GB', '4GB', 2, 'DDR3', NULL),
(5, 'Crucial BallistiX', '16GB', '4GB', 4, 'DDR3', 1),
(6, 'HyperX Fury', '8GB', '4GB', 2, 'DDR3', 1),
(7, 'Crucial DDR4', '32GB', '8GB', 4, 'DDR4', NULL),
(8, 'HyperX Predator', '16GB', '4GB', 4, 'DDR4', 2),
(9, 'Corsair Vengeance', '16GB', '4GB', 4, 'DDR4', NULL),
(10, 'Corsair Vengeance', '8GB', '4GB', 2, 'DDR3', NULL);
