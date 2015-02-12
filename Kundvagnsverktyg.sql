/*
Kvar att göra

10 chassin
10 grafikkort
10 moderkort
10 nätaggregat
10 kylare

*/



DROP TABLE IF EXISTS `hard drive`;
CREATE TABLE `hard drive` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` int(11) NOT NULL DEFAULT '',
  `unit` enum('saknas','SSD','HDD','HDD+SSD') NOT NULL DEFAULT 'saknas',
  `form factor` enum('saknas','2.5"','3.5"') NOT NULL DEFAULT 'saknas',
  `width mm` int(11) NOT NULL,
  `depth mm` int(11) NOT NULL,
  `heigh mm` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=901 DEFAULT utf8;

INSERT INTO `hard drive` VALUES ('1','Kingston SSDNow V300','SSD','2.5"','69.8','100.1','7');
INSERT INTO `hard drive` VALUES ('2','Intel® SSD 530 Series','SSD','2.5"','69.85','100.45','7');
INSERT INTO `hard drive` VALUES ('3','Crucial MX100 SSD','SSD','2.5"','missing','missing','7');
INSERT INTO `hard drive` VALUES ('4','Samsung 850 EVO','SSD','2.5"','69.85','100','6.8');
INSERT INTO `hard drive` VALUES ('5','Samsung SSD 840 EVO','SSD','2.5"','69.85','100','6.8');
INSERT INTO `hard drive` VALUES ('6','Seagate Barracuda®','HDD','3.5"','missing','missing','missing');
INSERT INTO `hard drive` VALUES ('7','Seagate Barracuda®','HDD','3.5"','missing','missing','missing');
INSERT INTO `hard drive` VALUES ('8','WD Red NAS','HDD','3.5"','101.6','147','26.1');
INSERT INTO `hard drive` VALUES ('9','Seagate® Desktop SSHD','HDD+SSD','3.5"','101.6','146.99','20.17');
INSERT INTO `hard drive` VALUES ('10','WD AV-GP','HDD','3.5"','101.6','147','26.1');




DROP TABLE IF EXISTS `ram`;
CREATE TABLE `ram` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` int(11) NOT NULL DEFAULT '',
  `total size` varchar(100) NOT NULL,
  `size` int(11) NOT NULL DEFAULT '1',
  `amount` int(11) NOT NULL DEFAULT '1',
  `technology` enum('saknas','DDR3','DDR4') NOT NULL DEFAULT 'saknas',
  `heigh inch` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=901 DEFAULT utf8;

INSERT INTO `ram` VALUES ('1','Corsair Vengeance Pro','16GB','8GB','2','DDR3','missing');
INSERT INTO `ram` VALUES ('2','Corsair Vengeance Pro','8GB','4GB','2','DDR3','missing');
INSERT INTO `ram` VALUES ('3','Crucial BallistiX Sport','16GB','8GB','2','DDR3','missing');
INSERT INTO `ram` VALUES ('4','Crucial BallistiX Elite','8GB','4GB','2','DDR3','missing');
INSERT INTO `ram` VALUES ('5','Crucial BallistiX','16GB','4GB','4','DDR3','1.18');
INSERT INTO `ram` VALUES ('6','HyperX Fury','8GB','4GB','2','DDR3','1.29');
INSERT INTO `ram` VALUES ('7','Crucial DDR4','32GB','8GB','4','DDR4','missing');
INSERT INTO `ram` VALUES ('8','HyperX Predator','16GB','4GB','4','DDR4','2.17');
INSERT INTO `ram` VALUES ('9','Corsair Vengeance','16GB','4GB','4','DDR4','missing');
INSERT INTO `ram` VALUES ('10','Corsair Vengeance','8GB','4GB','2','DDR3','missing');





DROP TABLE IF EXISTS `processor`;
CREATE TABLE `processor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` int(11) NOT NULL DEFAULT '',
  `cores` varchar(100) NOT NULL,
  `theards` int(11) NOT NULL DEFAULT '',
  `power` int(11) NOT NULL DEFAULT '',
  `sockel` enum('missing','AM1','AM1+','AM2','AM2+','AM3','AM3+','FM2','FM2+','LGA775','LGA1150','LGA1155','LGA2011','LGA2011-v3') NOT NULL DEFAULT 'saknas',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=901 DEFAULT CHARSET=utf8;

INSERT INTO `processor` VALUES ('1','Intel Core i3-4370','2','4','LGA1150','54W');
INSERT INTO `processor` VALUES ('2','Intel Core i5-4460','4','5','LGA1150','84W');
INSERT INTO `processor` VALUES ('3','Intel Core i5-4690K','4','4','LGA1150','88W');
INSERT INTO `processor` VALUES ('4','Intel Core i7-4790K','4','8','LGA1150','88W');
INSERT INTO `processor` VALUES ('5','Intel Core i7-4930K','6','12','LGA2011','130W');
INSERT INTO `processor` VALUES ('6','Intel Core i7-5820K','6','12','LGA2011-v3','140W');
INSERT INTO `processor` VALUES ('7','AMD FX-6300 Black Edition','6','6','AM3+','95W');
INSERT INTO `processor` VALUES ('8','AMD FX-8350 Black Edition','8','8','AM3+','125W');
INSERT INTO `processor` VALUES ('9','AMD Athlon X4 860k Black Edition','4','4','FM2+','95W');
INSERT INTO `processor` VALUES ('10','AMD A8-6600K Black Edition','4','4','FM2','100W');