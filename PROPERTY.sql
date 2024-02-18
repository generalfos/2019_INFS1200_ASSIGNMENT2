-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 23, 2019 at 12:18 PM
-- Server version: 5.7.20
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `PROPERTY`
--

-- --------------------------------------------------------

--
-- Table structure for table `AGENCY`
--

CREATE TABLE `AGENCY` (
  `agencylicense` int(10) NOT NULL,
  `agencyname` text NOT NULL,
  `website` varchar(30) NOT NULL,
  `phone` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `AGENCY`
--

INSERT INTO `AGENCY` (`agencylicense`, `agencyname`, `website`, `phone`) VALUES
(1, 'Magna Real Estate', 'MagnaRealEstate.com', 123456789),
(2, 'Pomegranate Real Estate', 'PomegranateRealEstate.com', 123456790),
(3, 'Cafe Real Estate', 'CafeRealEstate.com', 123456791),
(4, 'Prospect Real Estate', 'ProspectRealEstate.com', 123456792),
(5, 'Names Real Estate', 'NamesRealEstate.com', 123456793),
(6, 'SunValley Real Estate', 'SunValleyRealEstate.com', 123456794),
(7, 'Adaptive Real Estate', 'AdaptiveRealEstate.com', 123456795),
(8, 'Next Real Estate', 'NextRealEstate.com', 123456796),
(9, 'Vista Real Estate', 'VistaRealEstate.com', 123456797),
(10, 'Proximity Real Estate', 'ProximityRealEstate.com', 123456798),
(11, 'Cheap Real Estate', 'CheapRealEstate.com', 123456799),
(12, 'Trusted Real Estate', 'TrustedRealEstate.com', 123456800);

-- --------------------------------------------------------

--
-- Table structure for table `AGENT`
--

CREATE TABLE `AGENT` (
  `agentlicense` int(10) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(30) DEFAULT NULL,
  `mobile` int(10) DEFAULT NULL,
  `agency` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `AGENT`
--

INSERT INTO `AGENT` (`agentlicense`, `name`, `email`, `mobile`, `agency`) VALUES
(1, 'Mali Blaese', 'a@gmail.com', 123456801, 1),
(2, 'Amber Huynh', 'b@gmail.com', 123456802, 1),
(3, 'Mujtaba Swan', 'c@gmail.com', 123456803, 2),
(4, 'Bernadette Eaton', 'd@gmail.com', 123456804, 2),
(5, 'Johnny Chamberlain', 'e@gmail.com', 123456805, 3),
(6, 'Kieran Stacey', 'f@gmail.com', 123456806, 4),
(7, 'Marlene Adam', 'g@gmail.com', 123456807, 5),
(8, 'Tymon Nieves', 'h@gmail.com', 123456808, 8),
(9, 'Natan Firth', 'i@gmail.com', 123456809, 8),
(10, 'Omar Allen', 'j@gmail.com', 123456810, 10),
(11, 'Vladimir Reilly', 'k@gmail.com', 123456811, 11),
(12, 'Poh Ling', 'l@gmail.com', 123456812, 12);

-- --------------------------------------------------------

--
-- Stand-in structure for view `ALLLISTINGS`
-- (See below for the actual view)
--
CREATE TABLE `ALLLISTINGS` (
`unitno` int(11)
,`pid` int(11)
,`agent` int(11)
,`datelisted` date
,`dateclose` date
,`type` varchar(15)
,`price` int(15)
);

-- --------------------------------------------------------

--
-- Table structure for table `BRANCH`
--

CREATE TABLE `BRANCH` (
  `agency` int(10) NOT NULL,
  `brsuburb` varchar(30) NOT NULL,
  `email` varchar(30) DEFAULT NULL,
  `phone` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `BRANCH`
--

INSERT INTO `BRANCH` (`agency`, `brsuburb`, `email`, `phone`) VALUES
(1, 'Busselton', 'MagnaRealEstate.com', 123456789),
(2, 'West End', 'PomegranateRealEstate.com', 123456790),
(3, 'Kangaroo Point', 'CafeRealEstate.com', 123456791),
(4, 'Busselton', 'ProspectRealEstate.com', 123456792),
(5, 'Bondi', 'NamesRealEstate.com', 123456793),
(6, 'Red Hill', 'SunValleyRealEstate.com', 123456794),
(7, 'Paddington', 'AdaptiveRealEstate.com', 123456795),
(8, 'Newstead', 'NextRealEstate.com', 123456796),
(9, 'Bankstown', 'VistaRealEstate.com', 123456797),
(10, 'Bondi', 'ProximityRealEstate.com', 123456798),
(11, 'Bankstown', 'CheapRealEstate.com', 123456799),
(12, 'Bankstown', 'DetailRealEstate.com', 123456800);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Challenge Query 1`
-- (See below for the actual view)
--
CREATE TABLE `Challenge Query 1` (
`unitno` int(11)
,`pid` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Challenge Query 2`
-- (See below for the actual view)
--
CREATE TABLE `Challenge Query 2` (
`agentlicense` int(10)
,`name` text
,`email` varchar(30)
,`mobile` int(10)
,`agency` int(10)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Challenge Query 3`
-- (See below for the actual view)
--
CREATE TABLE `Challenge Query 3` (
`agencylicense` int(10)
,`agencyname` text
,`website` varchar(30)
,`phone` int(10)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Challenge Query 4`
-- (See below for the actual view)
--
CREATE TABLE `Challenge Query 4` (
`agencylicense` int(10)
,`agencyname` text
,`website` varchar(30)
,`phone` int(10)
);

-- --------------------------------------------------------

--
-- Table structure for table `LISTING`
--

CREATE TABLE `LISTING` (
  `pid` int(10) NOT NULL,
  `agent` int(10) NOT NULL,
  `datelisted` date NOT NULL,
  `dateclose` date DEFAULT NULL,
  `type` varchar(15) NOT NULL,
  `price` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `LISTING`
--

INSERT INTO `LISTING` (`pid`, `agent`, `datelisted`, `dateclose`, `type`, `price`) VALUES
(1, 1, '2018-04-23', NULL, 'rent', 10000),
(1, 5, '2016-04-02', '2016-05-06', 'rent', 8000),
(2, 1, '2011-05-10', '2011-05-19', 'sell', 12800000),
(3, 2, '2019-05-28', '2019-07-28', 'sell', 1283600),
(4, 2, '2014-06-19', '2014-12-19', 'rent', 1638),
(5, 2, '2017-12-24', '2017-12-30', 'sell', 128320),
(6, 3, '2019-01-01', NULL, 'rent', 1038),
(7, 7, '2016-11-24', '2016-12-19', 'rent', 106738),
(8, 9, '2017-09-03', '2018-01-01', 'sell', 128320),
(9, 8, '2019-12-28', '2020-02-28', 'sell', 128320),
(10, 12, '2014-05-12', '2015-07-28', 'sell', 128320),
(11, 10, '2018-03-12', NULL, 'rent', 320),
(12, 11, '2014-09-03', '2014-12-19', 'sell', 678910);

-- --------------------------------------------------------

--
-- Stand-in structure for view `LISTINGSALL`
-- (See below for the actual view)
--
CREATE TABLE `LISTINGSALL` (
`pid` int(11)
,`agent` int(11)
,`datelisted` date
,`dateclose` date
,`type` varchar(15)
,`price` int(15)
);

-- --------------------------------------------------------

--
-- Table structure for table `PROPERTY`
--

CREATE TABLE `PROPERTY` (
  `pid` int(10) NOT NULL,
  `stno` varchar(4) NOT NULL,
  `stname` text NOT NULL,
  `sttype` text NOT NULL,
  `suburb` varchar(20) NOT NULL,
  `state` text NOT NULL,
  `postcode` char(4) NOT NULL,
  `carspaces` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `PROPERTY`
--

INSERT INTO `PROPERTY` (`pid`, `stno`, `stname`, `sttype`, `suburb`, `state`, `postcode`, `carspaces`) VALUES
(1, '1', 'Abbey', 'Road', 'Busselton', 'QLD', '1234', 1),
(2, '2', 'Greenwood', 'Avenue', 'Bowen Hills', 'QLD', '1234', 3),
(3, '3', 'Brunswick', 'Court', 'Bowen Hills', 'QLD', '1234', 5),
(4, '4', 'Bull', 'Boularvard', 'Camperdown', 'NSW', '2345', 1),
(5, '5', 'Victoria', 'Avenue', 'Bankstown', 'NSW', '2345', 1),
(6, '6', 'Wellington', 'Court', 'Bondi', 'NSW', '2345', 1),
(7, '7', 'Hillside', 'Boularvard', 'Collaroy', 'NSW', '2345', 1),
(8, '8', 'Oak Tree', 'Avenue', 'Fortitude Valley', 'TAS', '5678', 2),
(9, '9', 'Byron', 'Avenue', 'Annandale', 'TAS', '5678', 3),
(10, '10', 'Cambridge', 'Court', 'Fortitude Valley', 'TAS', '5678', 4),
(11, '11', 'Pyrmont Bridge', 'Road', 'Herston', 'SA', '6789', 3),
(12, '12', 'Cadogan', 'Boularvard', 'Herston', 'SA', '6789', 2),
(13, '4', 'Parramatta', 'Road', 'Newsdale', 'NSW', '3084', 2),
(14, '2', 'Pyrmont Bridge', 'Road', 'Herston', 'NSW', '6789', 5);

-- --------------------------------------------------------

--
-- Stand-in structure for view `PROPERTYLISTINGS`
-- (See below for the actual view)
--
CREATE TABLE `PROPERTYLISTINGS` (
`pid` int(10)
,`stno` varchar(4)
,`stname` text
,`sttype` text
,`suburb` varchar(20)
,`state` text
,`postcode` char(4)
,`carspaces` int(2)
,`unitno` int(11)
,`lpid` int(11)
,`agent` int(11)
,`datelisted` date
,`dateclose` date
,`type` varchar(15)
,`price` int(15)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Query 1`
-- (See below for the actual view)
--
CREATE TABLE `Query 1` (
`pid` int(10)
,`unitno` int(10)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Query 2`
-- (See below for the actual view)
--
CREATE TABLE `Query 2` (
`suburb` varchar(20)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Query 3`
-- (See below for the actual view)
--
CREATE TABLE `Query 3` (
`COUNT(*)` bigint(21)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Query 4`
-- (See below for the actual view)
--
CREATE TABLE `Query 4` (
`stname` text
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Query 5`
-- (See below for the actual view)
--
CREATE TABLE `Query 5` (
`TOTAL_VALUE` decimal(36,0)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Query 6`
-- (See below for the actual view)
--
CREATE TABLE `Query 6` (
`suburb` varchar(20)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Query 7`
-- (See below for the actual view)
--
CREATE TABLE `Query 7` (
`AVG(carspaces)` decimal(14,4)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Query 8`
-- (See below for the actual view)
--
CREATE TABLE `Query 8` (
`suburb` varchar(20)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `RENTS`
-- (See below for the actual view)
--
CREATE TABLE `RENTS` (
`pid` int(11)
,`agent` int(11)
,`datelisted` date
,`dateclose` date
,`type` varchar(15)
,`price` int(15)
);

-- --------------------------------------------------------

--
-- Table structure for table `SHAREDLISTING`
--

CREATE TABLE `SHAREDLISTING` (
  `unitno` int(10) NOT NULL,
  `pid` int(10) NOT NULL,
  `agent` int(10) NOT NULL,
  `sdatelisted` date NOT NULL,
  `dateclose` date DEFAULT NULL,
  `type` varchar(15) NOT NULL,
  `price` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `SHAREDLISTING`
--

INSERT INTO `SHAREDLISTING` (`unitno`, `pid`, `agent`, `sdatelisted`, `dateclose`, `type`, `price`) VALUES
(1, 1, 1, '2018-04-23', NULL, 'rent', 10000),
(1, 2, 1, '2017-12-24', '2018-12-24', 'sell', 128320),
(1, 7, 7, '2019-12-28', '2020-02-28', 'sell', 128320),
(1, 9, 10, '2016-01-20', '2016-03-14', 'sell', 156200),
(1, 12, 11, '2013-05-12', '2013-07-28', 'sell', 128320),
(1, 13, 10, '2016-01-20', NULL, 'rent', 2400),
(2, 1, 1, '2011-05-10', '2011-05-19', 'sell', 12800000),
(2, 2, 1, '2019-01-01', NULL, 'rent', 1038),
(2, 4, 2, '2017-09-03', '2018-01-01', 'sell', 128320),
(3, 1, 1, '2019-05-28', '2019-07-28', 'sell', 1283600),
(3, 2, 1, '2016-11-24', '2016-12-19', 'rent', 106738),
(4, 1, 1, '2014-06-19', '2014-12-19', 'rent', 1638);

-- --------------------------------------------------------

--
-- Table structure for table `SHAREDPROPERTY`
--

CREATE TABLE `SHAREDPROPERTY` (
  `unitno` int(10) NOT NULL,
  `pid` int(10) NOT NULL,
  `proptype` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `SHAREDPROPERTY`
--

INSERT INTO `SHAREDPROPERTY` (`unitno`, `pid`, `proptype`) VALUES
(1, 1, 'Unit'),
(1, 2, 'Unit'),
(1, 4, 'Apartment'),
(1, 7, 'Unit'),
(1, 9, 'Townhouse'),
(1, 12, 'Apartment'),
(1, 13, 'Apartment'),
(2, 1, 'Unit'),
(2, 2, 'Apartment'),
(2, 4, 'Apartment'),
(3, 1, 'Unit'),
(3, 2, 'Apartment'),
(4, 1, 'Unit');

-- --------------------------------------------------------

--
-- Structure for view `ALLLISTINGS`
--
DROP TABLE IF EXISTS `ALLLISTINGS`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `ALLLISTINGS`  AS  select NULL AS `unitno`,`LISTING`.`pid` AS `pid`,`LISTING`.`agent` AS `agent`,`LISTING`.`datelisted` AS `datelisted`,`LISTING`.`dateclose` AS `dateclose`,`LISTING`.`type` AS `type`,`LISTING`.`price` AS `price` from `LISTING` union select `SHAREDLISTING`.`unitno` AS `unitno`,`SHAREDLISTING`.`pid` AS `pid`,`SHAREDLISTING`.`agent` AS `agent`,`SHAREDLISTING`.`sdatelisted` AS `sdatelisted`,`SHAREDLISTING`.`dateclose` AS `dateclose`,`SHAREDLISTING`.`type` AS `type`,`SHAREDLISTING`.`price` AS `price` from `SHAREDLISTING` ;

-- --------------------------------------------------------

--
-- Structure for view `Challenge Query 1`
--
DROP TABLE IF EXISTS `Challenge Query 1`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `Challenge Query 1`  AS  select `L`.`unitno` AS `unitno`,`L`.`pid` AS `pid` from (((`PROPERTY` `P` join `BRANCH` `B`) join `AGENT` `A`) join (select NULL AS `unitno`,`LISTING`.`pid` AS `pid`,`LISTING`.`agent` AS `agent`,`LISTING`.`datelisted` AS `datelisted`,`LISTING`.`dateclose` AS `dateclose`,`LISTING`.`type` AS `type`,`LISTING`.`price` AS `price` from `LISTING` where (`LISTING`.`type` = 'sell') union select `SHAREDLISTING`.`unitno` AS `unitno`,`SHAREDLISTING`.`pid` AS `pid`,`SHAREDLISTING`.`agent` AS `agent`,`SHAREDLISTING`.`sdatelisted` AS `sdatelisted`,`SHAREDLISTING`.`dateclose` AS `dateclose`,`SHAREDLISTING`.`type` AS `type`,`SHAREDLISTING`.`price` AS `price` from `SHAREDLISTING` where (`SHAREDLISTING`.`type` = 'sell')) `L`) where ((`P`.`pid` = `L`.`pid`) and (`B`.`agency` = `A`.`agency`) and (`A`.`agentlicense` = `L`.`agent`) and (`B`.`brsuburb` = `P`.`suburb`)) ;

-- --------------------------------------------------------

--
-- Structure for view `Challenge Query 2`
--
DROP TABLE IF EXISTS `Challenge Query 2`;
-- Error reading structure for table PROPERTY.Challenge Query 2: #1046 - No database selected

-- --------------------------------------------------------

--
-- Structure for view `Challenge Query 3`
--
DROP TABLE IF EXISTS `Challenge Query 3`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `Challenge Query 3`  AS  select `AGENCY`.`agencylicense` AS `agencylicense`,`AGENCY`.`agencyname` AS `agencyname`,`AGENCY`.`website` AS `website`,`AGENCY`.`phone` AS `phone` from `AGENCY` where `AGENCY`.`agencylicense` in (select `A`.`agency` from ((`PROPERTY` `P` join `AGENT` `A`) join (select `LISTING`.`pid` AS `pid`,`LISTING`.`agent` AS `agent`,`LISTING`.`datelisted` AS `datelisted`,`LISTING`.`dateclose` AS `dateclose`,`LISTING`.`type` AS `type`,`LISTING`.`price` AS `price` from `LISTING` union select `SHAREDLISTING`.`pid` AS `pid`,`SHAREDLISTING`.`agent` AS `agent`,`SHAREDLISTING`.`sdatelisted` AS `sdatelisted`,`SHAREDLISTING`.`dateclose` AS `dateclose`,`SHAREDLISTING`.`type` AS `type`,`SHAREDLISTING`.`price` AS `price` from `SHAREDLISTING`) `L`) where ((`P`.`pid` = `L`.`pid`) and (`A`.`agentlicense` = `L`.`agent`)) group by `A`.`agency` having (count(distinct `P`.`suburb`) = (select count(distinct `suburb`) from `PROPERTY`))) ;

-- --------------------------------------------------------

--
-- Structure for view `Challenge Query 4`
--
DROP TABLE IF EXISTS `Challenge Query 4`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `Challenge Query 4`  AS  select `AGENCY`.`agencylicense` AS `agencylicense`,`AGENCY`.`agencyname` AS `agencyname`,`AGENCY`.`website` AS `website`,`AGENCY`.`phone` AS `phone` from `AGENCY` where `AGENCY`.`agencylicense` in (select `AGENT`.`agency` from (`AGENT` join (select `LISTING`.`pid` AS `pid`,`LISTING`.`agent` AS `agent`,`LISTING`.`datelisted` AS `datelisted`,`LISTING`.`dateclose` AS `dateclose`,`LISTING`.`type` AS `type`,`LISTING`.`price` AS `price` from `LISTING` where (`LISTING`.`type` = 'rent') union select `SHAREDLISTING`.`pid` AS `pid`,`SHAREDLISTING`.`agent` AS `agent`,`SHAREDLISTING`.`sdatelisted` AS `sdatelisted`,`SHAREDLISTING`.`dateclose` AS `dateclose`,`SHAREDLISTING`.`type` AS `type`,`SHAREDLISTING`.`price` AS `price` from `SHAREDLISTING` where (`SHAREDLISTING`.`type` = 'rent')) `RENT`) where ((`AGENT`.`agentlicense` = `RENT`.`agent`) and (`RENT`.`datelisted` <= '2018-4-24') and ((`RENT`.`dateclose` > '2018-4-24') or isnull(`RENT`.`dateclose`))) group by `AGENT`.`agency` having count(0) >= all (select count(0) from (`AGENT` join (select `LISTING`.`pid` AS `pid`,`LISTING`.`agent` AS `agent`,`LISTING`.`datelisted` AS `datelisted`,`LISTING`.`dateclose` AS `dateclose`,`LISTING`.`type` AS `type`,`LISTING`.`price` AS `price` from `LISTING` where (`LISTING`.`type` = 'rent') union select `SHAREDLISTING`.`pid` AS `pid`,`SHAREDLISTING`.`agent` AS `agent`,`SHAREDLISTING`.`sdatelisted` AS `sdatelisted`,`SHAREDLISTING`.`dateclose` AS `dateclose`,`SHAREDLISTING`.`type` AS `type`,`SHAREDLISTING`.`price` AS `price` from `SHAREDLISTING` where (`SHAREDLISTING`.`type` = 'rent')) `RENT`) where ((`AGENT`.`agentlicense` = `RENT`.`agent`) and (`RENT`.`datelisted` <= '2018-4-24') and ((`RENT`.`dateclose` > '2018-4-24') or isnull(`RENT`.`dateclose`))) group by `AGENT`.`agency`)) ;

-- --------------------------------------------------------

--
-- Structure for view `LISTINGSALL`
--
DROP TABLE IF EXISTS `LISTINGSALL`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `LISTINGSALL`  AS  select `L`.`pid` AS `pid`,`L`.`agent` AS `agent`,`L`.`datelisted` AS `datelisted`,`L`.`dateclose` AS `dateclose`,`L`.`type` AS `type`,`L`.`price` AS `price` from `LISTING` `L` union select `SHAREDLISTING`.`pid` AS `pid`,`SHAREDLISTING`.`agent` AS `agent`,`SHAREDLISTING`.`sdatelisted` AS `sdatelisted`,`SHAREDLISTING`.`dateclose` AS `dateclose`,`SHAREDLISTING`.`type` AS `type`,`SHAREDLISTING`.`price` AS `price` from `SHAREDLISTING` ;

-- --------------------------------------------------------

--
-- Structure for view `PROPERTYLISTINGS`
--
DROP TABLE IF EXISTS `PROPERTYLISTINGS`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `PROPERTYLISTINGS`  AS  select `pid` AS `pid`,`stno` AS `stno`,`stname` AS `stname`,`sttype` AS `sttype`,`suburb` AS `suburb`,`state` AS `state`,`postcode` AS `postcode`,`carspaces` AS `carspaces`,`ALLLISTINGS`.`unitno` AS `unitno`,`ALLLISTINGS`.`pid` AS `lpid`,`ALLLISTINGS`.`agent` AS `agent`,`ALLLISTINGS`.`datelisted` AS `datelisted`,`ALLLISTINGS`.`dateclose` AS `dateclose`,`ALLLISTINGS`.`type` AS `type`,`ALLLISTINGS`.`price` AS `price` from (`PROPERTY` join `ALLLISTINGS`) where (`pid` = `ALLLISTINGS`.`pid`) ;

-- --------------------------------------------------------

--
-- Structure for view `Query 1`
--
DROP TABLE IF EXISTS `Query 1`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `Query 1`  AS  select `S`.`pid` AS `pid`,`S`.`unitno` AS `unitno` from ((`SHAREDPROPERTY` `S` join `PROPERTY` `P`) join `SHAREDLISTING` `L`) where ((`S`.`pid` = `P`.`pid`) and (`S`.`pid` = `L`.`pid`) and (`S`.`unitno` = `L`.`unitno`) and (`P`.`suburb` = 'Annandale') and (`S`.`proptype` = 'Townhouse') and (`L`.`type` = 'sell') and (`L`.`dateclose` between '2016/1/1' and '2016/12/31')) ;

-- --------------------------------------------------------

--
-- Structure for view `Query 2`
--
DROP TABLE IF EXISTS `Query 2`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `Query 2`  AS  select distinct `X`.`suburb` AS `suburb` from `PROPERTY` `X` where (not(exists(select 1 from (`PROPERTY` `P` join (select NULL AS `unitno`,`LISTING`.`pid` AS `pid`,`LISTING`.`agent` AS `agent`,`LISTING`.`datelisted` AS `datelisted`,`LISTING`.`dateclose` AS `dateclose`,`LISTING`.`type` AS `type`,`LISTING`.`price` AS `price` from `LISTING` union select `SHAREDLISTING`.`unitno` AS `unitno`,`SHAREDLISTING`.`pid` AS `pid`,`SHAREDLISTING`.`agent` AS `agent`,`SHAREDLISTING`.`sdatelisted` AS `sdatelisted`,`SHAREDLISTING`.`dateclose` AS `dateclose`,`SHAREDLISTING`.`type` AS `type`,`SHAREDLISTING`.`price` AS `price` from `SHAREDLISTING`) `L`) where ((`P`.`pid` = `L`.`pid`) and (`P`.`suburb` = `X`.`suburb`) and (`L`.`dateclose` > '2017/12/31'))))) ;

-- --------------------------------------------------------

--
-- Structure for view `Query 3`
--
DROP TABLE IF EXISTS `Query 3`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `Query 3`  AS  select count(0) AS `COUNT(*)` from ((`SHAREDPROPERTY` `S` join `SHAREDLISTING` `L`) join `PROPERTY` `P`) where ((`S`.`unitno` = `L`.`unitno`) and (`S`.`pid` = `L`.`pid`) and (`P`.`pid` = `S`.`pid`) and (`P`.`stname` = 'Parramatta') and (`P`.`sttype` = 'Road') and (`L`.`type` = 'rent') and (`S`.`proptype` = 'Apartment') and isnull(`L`.`dateclose`)) ;

-- --------------------------------------------------------

--
-- Structure for view `Query 4`
--
DROP TABLE IF EXISTS `Query 4`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `Query 4`  AS  select `P`.`stname` AS `stname` from (`PROPERTY` `P` join (select `LISTING`.`pid` AS `pid`,`LISTING`.`agent` AS `agent`,`LISTING`.`datelisted` AS `datelisted`,`LISTING`.`dateclose` AS `dateclose`,`LISTING`.`type` AS `type`,`LISTING`.`price` AS `price` from `LISTING` where (`LISTING`.`type` = 'rent') union select `SHAREDLISTING`.`pid` AS `pid`,`SHAREDLISTING`.`agent` AS `agent`,`SHAREDLISTING`.`sdatelisted` AS `sdatelisted`,`SHAREDLISTING`.`dateclose` AS `dateclose`,`SHAREDLISTING`.`type` AS `type`,`SHAREDLISTING`.`price` AS `price` from `SHAREDLISTING` where (`SHAREDLISTING`.`type` = 'rent')) `R`) where ((`P`.`suburb` = 'Camperdown') and (`P`.`pid` = `R`.`pid`)) group by `P`.`stname` having avg(`R`.`price`) >= all (select avg(`R`.`price`) from (`PROPERTY` `P` join (select `LISTING`.`pid` AS `pid`,`LISTING`.`agent` AS `agent`,`LISTING`.`datelisted` AS `datelisted`,`LISTING`.`dateclose` AS `dateclose`,`LISTING`.`type` AS `type`,`LISTING`.`price` AS `price` from `LISTING` where (`LISTING`.`type` = 'rent') union select `SHAREDLISTING`.`pid` AS `pid`,`SHAREDLISTING`.`agent` AS `agent`,`SHAREDLISTING`.`sdatelisted` AS `sdatelisted`,`SHAREDLISTING`.`dateclose` AS `dateclose`,`SHAREDLISTING`.`type` AS `type`,`SHAREDLISTING`.`price` AS `price` from `SHAREDLISTING` where (`SHAREDLISTING`.`type` = 'rent')) `R`) where ((`P`.`suburb` = 'Camperdown') and (`P`.`pid` = `R`.`pid`)) group by `P`.`stname`) ;

-- --------------------------------------------------------

--
-- Structure for view `Query 5`
--
DROP TABLE IF EXISTS `Query 5`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `Query 5`  AS  select sum(`ALL_LISTINGS`.`price`) AS `TOTAL_VALUE` from (select `LISTING`.`pid` AS `pid`,`LISTING`.`agent` AS `agent`,`LISTING`.`datelisted` AS `datelisted`,`LISTING`.`dateclose` AS `dateclose`,`LISTING`.`type` AS `type`,`LISTING`.`price` AS `price` from `LISTING` union select `SHAREDLISTING`.`pid` AS `pid`,`SHAREDLISTING`.`agent` AS `agent`,`SHAREDLISTING`.`sdatelisted` AS `sdatelisted`,`SHAREDLISTING`.`dateclose` AS `dateclose`,`SHAREDLISTING`.`type` AS `type`,`SHAREDLISTING`.`price` AS `price` from `SHAREDLISTING`) `ALL_LISTINGS` where ((`ALL_LISTINGS`.`type` = 'sell') and (`ALL_LISTINGS`.`dateclose` > '2013-12-31') and (`ALL_LISTINGS`.`agent` = (select `A`.`agentlicense` from `AGENT` `A` where (`A`.`name` = 'Poh Ling')))) ;

-- --------------------------------------------------------

--
-- Structure for view `Query 6`
--
DROP TABLE IF EXISTS `Query 6`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `Query 6`  AS  select `X`.`suburb` AS `suburb` from `PROPERTY` `X` where (not(exists(select 1 from (`PROPERTY` `P` join (select `LISTING`.`pid` AS `pid`,`LISTING`.`agent` AS `agent`,`LISTING`.`datelisted` AS `datelisted`,`LISTING`.`dateclose` AS `dateclose`,`LISTING`.`type` AS `type`,`LISTING`.`price` AS `price` from `LISTING` union select `SHAREDLISTING`.`pid` AS `pid`,`SHAREDLISTING`.`agent` AS `agent`,`SHAREDLISTING`.`sdatelisted` AS `sdatelisted`,`SHAREDLISTING`.`dateclose` AS `dateclose`,`SHAREDLISTING`.`type` AS `type`,`SHAREDLISTING`.`price` AS `price` from `SHAREDLISTING`) `L`) where ((`P`.`pid` = `L`.`pid`) and (`P`.`suburb` = `X`.`suburb`) and ((to_days(`L`.`dateclose`) - to_days(`L`.`datelisted`)) > 28))))) ;

-- --------------------------------------------------------

--
-- Structure for view `Query 7`
--
DROP TABLE IF EXISTS `Query 7`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `Query 7`  AS  select avg(`P`.`carspaces`) AS `AVG(carspaces)` from `PROPERTY` `P` where ((`P`.`stname` = 'Pyrmont Bridge') and (`P`.`sttype` = 'Road') and (not(`P`.`pid` in (select `S`.`pid` from `SHAREDPROPERTY` `S`)))) ;

-- --------------------------------------------------------

--
-- Structure for view `Query 8`
--
DROP TABLE IF EXISTS `Query 8`;
-- Error reading structure for table PROPERTY.Query 8: #1046 - No database selected

-- --------------------------------------------------------

--
-- Structure for view `RENTS`
--
DROP TABLE IF EXISTS `RENTS`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `RENTS`  AS  select `A`.`pid` AS `pid`,`A`.`agent` AS `agent`,`A`.`datelisted` AS `datelisted`,`A`.`dateclose` AS `dateclose`,`A`.`type` AS `type`,`A`.`price` AS `price` from `LISTINGSALL` `A` where (`A`.`type` = 'rent') ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `AGENCY`
--
ALTER TABLE `AGENCY`
  ADD PRIMARY KEY (`agencylicense`);

--
-- Indexes for table `AGENT`
--
ALTER TABLE `AGENT`
  ADD PRIMARY KEY (`agentlicense`),
  ADD KEY `agency` (`agency`);

--
-- Indexes for table `BRANCH`
--
ALTER TABLE `BRANCH`
  ADD PRIMARY KEY (`agency`,`brsuburb`),
  ADD KEY `agencylicenseno` (`agency`);

--
-- Indexes for table `LISTING`
--
ALTER TABLE `LISTING`
  ADD PRIMARY KEY (`pid`,`agent`,`datelisted`),
  ADD KEY `agent` (`agent`),
  ADD KEY `pid` (`pid`);

--
-- Indexes for table `PROPERTY`
--
ALTER TABLE `PROPERTY`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `SHAREDLISTING`
--
ALTER TABLE `SHAREDLISTING`
  ADD PRIMARY KEY (`unitno`,`pid`,`agent`,`sdatelisted`),
  ADD KEY `unit` (`unitno`,`pid`),
  ADD KEY `agent` (`agent`);

--
-- Indexes for table `SHAREDPROPERTY`
--
ALTER TABLE `SHAREDPROPERTY`
  ADD PRIMARY KEY (`unitno`,`pid`),
  ADD KEY `Propid` (`pid`) USING BTREE;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `AGENT`
--
ALTER TABLE `AGENT`
  ADD CONSTRAINT `agency` FOREIGN KEY (`agency`) REFERENCES `AGENCY` (`agencylicense`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `BRANCH`
--
ALTER TABLE `BRANCH`
  ADD CONSTRAINT `branch` FOREIGN KEY (`agency`) REFERENCES `AGENCY` (`agencylicense`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `LISTING`
--
ALTER TABLE `LISTING`
  ADD CONSTRAINT `l_agent` FOREIGN KEY (`agent`) REFERENCES `AGENT` (`agentlicense`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `lproperty_id` FOREIGN KEY (`pid`) REFERENCES `PROPERTY` (`pid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `SHAREDLISTING`
--
ALTER TABLE `SHAREDLISTING`
  ADD CONSTRAINT `sl_agent` FOREIGN KEY (`agent`) REFERENCES `AGENT` (`agentlicense`) ON UPDATE CASCADE,
  ADD CONSTRAINT `unit` FOREIGN KEY (`unitno`,`pid`) REFERENCES `SHAREDPROPERTY` (`unitno`, `pid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `SHAREDPROPERTY`
--
ALTER TABLE `SHAREDPROPERTY`
  ADD CONSTRAINT `property_id` FOREIGN KEY (`pid`) REFERENCES `PROPERTY` (`pid`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
