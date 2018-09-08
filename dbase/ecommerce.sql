-- phpMyAdmin SQL Dump
-- version 4.0.10.14
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Jul 13, 2016 at 10:44 AM
-- Server version: 5.6.30-log
-- PHP Version: 5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `greatold_ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE IF NOT EXISTS `admins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(150) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `first_name`, `last_name`, `email`, `password`) VALUES
(1, 'Petculescu', 'Stefan', 'petculescustefan@gmail.com', 'ab3cd170f2218740a7ad65533d20b4242ae24f9601b56a589c43c3fc00b51351c1ac8136a679d6368d3074858c4bcca209da6e95742df71049aa8dd467c6c53f ');

-- --------------------------------------------------------

--
-- Table structure for table `business`
--

CREATE TABLE IF NOT EXISTS `business` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  `address` text NOT NULL,
  `telephone` varchar(100) NOT NULL,
  `email` varchar(200) NOT NULL,
  `website` varchar(200) NOT NULL,
  `vat_rate` decimal(5,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `business`
--

INSERT INTO `business` (`id`, `name`, `address`, `telephone`, `email`, `website`, `vat_rate`) VALUES
(1, 'Best deals on games! ', 'CD PROJEKT S.A.\r\nul. Jagiellonska 74\r\n03-301 Warszawa\r\nPoland', '+40755844311', 'petculescustefan@gmail.com', 'en.cdprojektred.com', '19.00');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'Adventure'),
(2, 'Action'),
(3, 'Real-Time Strategy'),
(4, 'Racing'),
(5, 'Indie');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE IF NOT EXISTS `clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `address_1` varchar(255) NOT NULL,
  `address_2` varchar(255) NOT NULL,
  `town` varchar(255) NOT NULL,
  `county` varchar(255) NOT NULL,
  `post_code` varchar(10) NOT NULL,
  `country` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `date` datetime NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `hash` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `country` (`country`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `first_name`, `last_name`, `address_1`, `address_2`, `town`, `county`, `post_code`, `country`, `email`, `password`, `date`, `active`, `hash`) VALUES
(3, 'Petculescu', 'Stefan', 'Aleea Perisoru nr.5A, sc.2, et.5, ap.67, sector 3', '', 'Bucuresti', 'Bucuresti', '032551', 229, 'petculescustefan@gmail.com', 'b109f3bbbc244eb82441917ed06d618b9008dd09b3befd1b5e07394c706a8bb980b1d7785e5976ec049b46df5f1326af5a2ea6d103fd07c95385ffab0cacbc86', '2016-07-01 05:31:33', 1, '113615761720160701053133898731685'),
(4, 'Steve', 'Johnson', '34th Street', '', 'New York', 'New York', '3D43C', 230, 'steveyjohnsy@gmail.com', 'b109f3bbbc244eb82441917ed06d618b9008dd09b3befd1b5e07394c706a8bb980b1d7785e5976ec049b46df5f1326af5a2ea6d103fd07c95385ffab0cacbc86', '2016-07-02 09:48:43', 1, '826032381201607020948431405572079'),
(5, 'Stefan', 'Cristian', 'Bv. 1 Dec 1918', '', 'Bucuresti', 'Bucuresti', '032552', 180, 'stefan_enzo@yahoo.com', 'b109f3bbbc244eb82441917ed06d618b9008dd09b3befd1b5e07394c706a8bb980b1d7785e5976ec049b46df5f1326af5a2ea6d103fd07c95385ffab0cacbc86', '2016-07-02 09:50:04', 1, '152786380020160702095004876990659'),
(6, 'George', 'Mihailescu', 'Bulevardul Timisioara', '', 'Timisoara', 'Timisoara', '324123', 180, 'george_lamborghini@gmail.com', 'b109f3bbbc244eb82441917ed06d618b9008dd09b3befd1b5e07394c706a8bb980b1d7785e5976ec049b46df5f1326af5a2ea6d103fd07c95385ffab0cacbc86', '2016-07-02 09:51:12', 0, '207223853520160702095112181859331'),
(7, 'George', 'Mihailescu', 'Bulevardul Timisioara', '', 'Timisoara', 'Timisoara', '324123', 180, 'george_lamborghini@yahoo.com', 'b109f3bbbc244eb82441917ed06d618b9008dd09b3befd1b5e07394c706a8bb980b1d7785e5976ec049b46df5f1326af5a2ea6d103fd07c95385ffab0cacbc86', '2016-07-02 09:52:49', 1, '166027900020160702095249467543433'),
(8, 'Gogu', 'Gigel', 'Str. Bucifal nr 50', '', 'Flegmus', 'Bambi', '12345', 229, 'alexcristinita@yahoo.com', '0526cf90b4cbe273e796ed711a6b9a1b1c7e71812b0816bd08f45039e89a33c61d9e6e36e261c1b02620996e91b082305942aa869f67acf697df42fc46de6db7', '2016-07-12 14:35:27', 1, '1475596356201607121435271044447841');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE IF NOT EXISTS `countries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `code` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=244 ;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `code`) VALUES
(1, 'Afghanistan', 'AF'),
(2, 'Ãland Islands', 'AX'),
(3, 'Albania', 'AL'),
(4, 'Algeria', 'DZ'),
(5, 'American Samoa', 'AS'),
(6, 'Andorra', 'AD'),
(7, 'Angola', 'AO'),
(8, 'Anguilla', 'AI'),
(9, 'Antarctica', 'AQ'),
(10, 'Antigua And Barbuda', 'AG'),
(11, 'Argentina', 'AR'),
(12, 'Armenia', 'AM'),
(13, 'Aruba', 'AW'),
(14, 'Australia', 'AU'),
(15, 'Austria', 'AT'),
(16, 'Azerbaijan', 'AZ'),
(17, 'Bahamas', 'BS'),
(18, 'Bahrain', 'BH'),
(19, 'Bangladesh', 'BD'),
(20, 'Barbados', 'BB'),
(21, 'Belarus', 'BY'),
(22, 'Belgium', 'BE'),
(23, 'Belize', 'BZ'),
(24, 'Benin', 'BJ'),
(25, 'Bermuda', 'BM'),
(26, 'Bhutan', 'BT'),
(27, 'Bolivia', 'BO'),
(28, 'Bosnia And Herzegovina', 'BA'),
(29, 'Botswana', 'BW'),
(30, 'Bouvet Island', 'BV'),
(31, 'Brazil', 'BR'),
(32, 'British Indian Ocean Territory', 'IO'),
(33, 'Brunei Darussalam', 'BN'),
(34, 'Bulgaria', 'BG'),
(35, 'Burkina Faso', 'BF'),
(36, 'Burundi', 'BI'),
(37, 'Cambodia', 'KH'),
(38, 'Cameroon', 'CM'),
(39, 'Canada', 'CA'),
(40, 'Cape Verde', 'CV'),
(41, 'Cayman Islands', 'KY'),
(42, 'Central African Republic', 'CF'),
(43, 'Chad', 'TD'),
(44, 'Chile', 'CL'),
(45, 'China', 'CN'),
(46, 'Christmas Island', 'CX'),
(47, 'Cocos (keeling) Islands', 'CC'),
(48, 'Colombia', 'CO'),
(49, 'Comoros', 'KM'),
(50, 'Congo', 'CG'),
(51, 'Congo, The Democratic Republic Of', 'CD'),
(52, 'Cook Islands', 'CK'),
(53, 'Costa Rica', 'CR'),
(54, 'Cote D''ivoire', 'CI'),
(55, 'Croatia', 'HR'),
(56, 'Cuba', 'CU'),
(57, 'Cyprus', 'CY'),
(58, 'Czech Republic', 'CZ'),
(59, 'Denmark', 'DK'),
(60, 'Djibouti', 'DJ'),
(61, 'Dominica', 'DM'),
(62, 'Dominican Republic', 'DO'),
(63, 'Ecuador', 'EC'),
(64, 'Egypt', 'EG'),
(65, 'El Salvador', 'SV'),
(66, 'Equatorial Guinea', 'GQ'),
(67, 'Eritrea', 'ER'),
(68, 'Estonia', 'EE'),
(69, 'Ethiopia', 'ET'),
(70, 'Falkland Islands (malvinas)', 'FK'),
(71, 'Faroe Islands', 'FO'),
(72, 'Fiji', 'FJ'),
(73, 'Finland', 'FI'),
(74, 'France', 'FR'),
(75, 'French Guiana', 'GF'),
(76, 'French Polynesia', 'PF'),
(77, 'French Southern Territories', 'TF'),
(78, 'Gabon', 'GA'),
(79, 'Gambia', 'GM'),
(80, 'Georgia', 'GE'),
(81, 'Germany', 'DE'),
(82, 'Ghana', 'GH'),
(83, 'Gibraltar', 'GI'),
(84, 'Greece', 'GR'),
(85, 'Greenland', 'GL'),
(86, 'Grenada', 'GD'),
(87, 'Guadeloupe', 'GP'),
(88, 'Guam', 'GU'),
(89, 'Guatemala', 'GT'),
(90, 'Guernsey', 'GG'),
(91, 'Guinea', 'GN'),
(92, 'Guinea-bissau', 'GW'),
(93, 'Guyana', 'GY'),
(94, 'Haiti', 'HT'),
(95, 'Heard Island And Mcdonald Islands', 'HM'),
(96, 'Holy See (vatican City State)', 'VA'),
(97, 'Honduras', 'HN'),
(98, 'Hong Kong', 'HK'),
(99, 'Hungary', 'HU'),
(100, 'Iceland', 'IS'),
(101, 'India', 'IN'),
(102, 'Indonesia', 'ID'),
(103, 'Iran, Islamic Republic Of', 'IR'),
(104, 'Iraq', 'IQ'),
(105, 'Ireland', 'IE'),
(106, 'Isle Of Man', 'IM'),
(107, 'Israel', 'IL'),
(108, 'Italy', 'IT'),
(109, 'Jamaica', 'JM'),
(110, 'Japan', 'JP'),
(111, 'Jersey', 'JE'),
(112, 'Jordan', 'JO'),
(113, 'Kazakhstan', 'KZ'),
(114, 'Kenya', 'KE'),
(115, 'Kiribati', 'KI'),
(116, 'Korea, Democratic People''s Republic Of', 'KP'),
(117, 'Korea, Republic Of', 'KR'),
(118, 'Kuwait', 'KW'),
(119, 'Kyrgyzstan', 'KG'),
(120, 'Lao People''s Democratic Republic', 'LA'),
(121, 'Latvia', 'LV'),
(122, 'Lebanon', 'LB'),
(123, 'Lesotho', 'LS'),
(124, 'Liberia', 'LR'),
(125, 'Libyan Arab Jamahiriya', 'LY'),
(126, 'Liechtenstein', 'LI'),
(127, 'Lithuania', 'LT'),
(128, 'Luxembourg', 'LU'),
(129, 'Macao', 'MO'),
(130, 'Macedonia, The Former Yugoslav Republic Of', 'MK'),
(131, 'Madagascar', 'MG'),
(132, 'Malawi', 'MW'),
(133, 'Malaysia', 'MY'),
(134, 'Maldives', 'MV'),
(135, 'Mali', 'ML'),
(136, 'Malta', 'MT'),
(137, 'Marshall Islands', 'MH'),
(138, 'Martinique', 'MQ'),
(139, 'Mauritania', 'MR'),
(140, 'Mauritius', 'MU'),
(141, 'Mayotte', 'YT'),
(142, 'Mexico', 'MX'),
(143, 'Micronesia, Federated States Of', 'FM'),
(144, 'Moldova, Republic Of', 'MD'),
(145, 'Monaco', 'MC'),
(146, 'Mongolia', 'MN'),
(147, 'Montserrat', 'MS'),
(148, 'Morocco', 'MA'),
(149, 'Mozambique', 'MZ'),
(150, 'Myanmar', 'MM'),
(151, 'Namibia', 'NA'),
(152, 'Nauru', 'NR'),
(153, 'Nepal', 'NP'),
(154, 'Netherlands', 'NL'),
(155, 'Netherlands Antilles', 'AN'),
(156, 'New Caledonia', 'NC'),
(157, 'New Zealand', 'NZ'),
(158, 'Nicaragua', 'NI'),
(159, 'Niger', 'NE'),
(160, 'Nigeria', 'NG'),
(161, 'Niue', 'NU'),
(162, 'Norfolk Island', 'NF'),
(163, 'Northern Mariana Islands', 'MP'),
(164, 'Norway', 'NO'),
(165, 'Oman', 'OM'),
(166, 'Pakistan', 'PK'),
(167, 'Palau', 'PW'),
(168, 'Palestinian Territory, Occupied', 'PS'),
(169, 'Panama', 'PA'),
(170, 'Papua New Guinea', 'PG'),
(171, 'Paraguay', 'PY'),
(172, 'Peru', 'PE'),
(173, 'Philippines', 'PH'),
(174, 'Pitcairn', 'PN'),
(175, 'Poland', 'PL'),
(176, 'Portugal', 'PT'),
(177, 'Puerto Rico', 'PR'),
(178, 'Qatar', 'QA'),
(179, 'Reunion', 'RE'),
(180, 'Romania', 'RO'),
(181, 'Russian Federation', 'RU'),
(182, 'Rwanda', 'RW'),
(183, 'Saint Helena', 'SH'),
(184, 'Saint Kitts And Nevis', 'KN'),
(185, 'Saint Lucia', 'LC'),
(186, 'Saint Pierre And Miquelon', 'PM'),
(187, 'Saint Vincent And The Grenadines', 'VC'),
(188, 'Samoa', 'WS'),
(189, 'San Marino', 'SM'),
(190, 'Sao Tome And Principe', 'ST'),
(191, 'Saudi Arabia', 'SA'),
(192, 'Senegal', 'SN'),
(193, 'Serbia And Montenegro', 'CS'),
(194, 'Seychelles', 'SC'),
(195, 'Sierra Leone', 'SL'),
(196, 'Singapore', 'SG'),
(197, 'Slovakia', 'SK'),
(198, 'Slovenia', 'SI'),
(199, 'Solomon Islands', 'SB'),
(200, 'Somalia', 'SO'),
(201, 'South Africa', 'ZA'),
(202, 'South Georgia And The South Sandwich Islands', 'GS'),
(203, 'Spain', 'ES'),
(204, 'Sri Lanka', 'LK'),
(205, 'Sudan', 'SD'),
(206, 'Suriname', 'SR'),
(207, 'Svalbard And Jan Mayen', 'SJ'),
(208, 'Swaziland', 'SZ'),
(209, 'Sweden', 'SE'),
(210, 'Switzerland', 'CH'),
(211, 'Syrian Arab Republic', 'SY'),
(212, 'Taiwan, Province Of China', 'TW'),
(213, 'Tajikistan', 'TJ'),
(214, 'Tanzania, United Republic Of', 'TZ'),
(215, 'Thailand', 'TH'),
(216, 'Timor-leste', 'TL'),
(217, 'Togo', 'TG'),
(218, 'Tokelau', 'TK'),
(219, 'Tonga', 'TO'),
(220, 'Trinidad And Tobago', 'TT'),
(221, 'Tunisia', 'TN'),
(222, 'Turkey', 'TR'),
(223, 'Turkmenistan', 'TM'),
(224, 'Turks And Caicos Islands', 'TC'),
(225, 'Tuvalu', 'TV'),
(226, 'Uganda', 'UG'),
(227, 'Ukraine', 'UA'),
(228, 'United Arab Emirates', 'AE'),
(229, 'United Kingdom', 'GB'),
(230, 'United States', 'US'),
(231, 'United States Minor Outlying Islands', 'UM'),
(232, 'Uruguay', 'UY'),
(233, 'Uzbekistan', 'UZ'),
(234, 'Vanuatu', 'VU'),
(235, 'Venezuela', 'VE'),
(236, 'Viet Nam', 'VN'),
(237, 'Virgin Islands, British', 'VG'),
(238, 'Virgin Islands, U.S.', 'VI'),
(239, 'Wallis And Futuna', 'WF'),
(240, 'Western Sahara', 'EH'),
(241, 'Yemen', 'YE'),
(242, 'Zambia', 'ZM'),
(243, 'Zimbabwe', 'ZW');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `client` int(11) NOT NULL,
  `vat_rate` decimal(5,2) NOT NULL,
  `vat` decimal(8,2) NOT NULL,
  `subtotal` decimal(8,2) NOT NULL,
  `total` decimal(8,2) NOT NULL,
  `date` datetime NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `pp_status` tinyint(1) NOT NULL DEFAULT '0',
  `txn_id` varchar(100) DEFAULT NULL,
  `payment_status` varchar(100) DEFAULT NULL,
  `ipn` text,
  `response` varchar(100) DEFAULT NULL,
  `notes` text,
  PRIMARY KEY (`id`),
  KEY `client` (`client`),
  KEY `fk_stage` (`status`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `client`, `vat_rate`, `vat`, `subtotal`, `total`, `date`, `status`, `pp_status`, `txn_id`, `payment_status`, `ipn`, `response`, `notes`) VALUES
(1, 3, '19.00', '16.14', '84.97', '101.11', '2016-07-02 04:18:33', 1, 1, '72R07180J6016691N', 'Completed', 'mc_gross : 101.11\nprotection_eligibility : Eligible\naddress_status : confirmed\nitem_number1 : 14\ntax : 16.14\nitem_number2 : 22\npayer_id : LETLKR82VN48Y\nitem_number3 : 20\naddress_street : Aleea Perisoru nr.5A, sc.2, et.5, ap.67, sector 3\npayment_date : 02:19:34 Jul 02, 2016 PDT\npayment_status : Completed\ncharset : windows-1252\naddress_zip : 032551\nmc_shipping : 0.00\nmc_handling : 0.00\nfirst_name : Petculescu\nmc_fee : 3.64\naddress_country_code : GB\naddress_name : Petculescu Stefan\nnotify_version : 3.8\ncustom : 1\npayer_status : verified\nbusiness : seller.test.paypal@gmail.com\naddress_country : United Kingdom\nnum_cart_items : 3\nmc_handling1 : 0.00\nmc_handling2 : 0.00\nmc_handling3 : 0.00\naddress_city : Bucuresti\nverify_sign : AX8ieAkKpYYejWHnkQpJQhiSXfgJA57yXXUJRZLh6LCXVc.5lohIxSIE\npayer_email : buyer.test.paypal@gmail.com\nmc_shipping1 : 0.00\nmc_shipping2 : 0.00\nmc_shipping3 : 0.00\ntxn_id : 72R07180J6016691N\npayment_type : instant\nlast_name : Stefan\naddress_state : Bucuresti\nitem_name1 : DOOM\nreceiver_email : seller.test.paypal@gmail.com\nitem_name2 : Borderlands 2\npayment_fee : \nitem_name3 : XCOM® 2\nquantity1 : 1\nquantity2 : 1\nreceiver_id : ALHAZPZCEJK64\nquantity3 : 1\ntxn_type : cart\nmc_gross_1 : 49.99\nmc_currency : GBP\nmc_gross_2 : 4.99\nmc_gross_3 : 29.99\nresidence_country : GB\ntest_ipn : 1\ntransaction_subject : \npayment_gross : \nipn_track_id : 178b33e1d01c6', 'VERIFIED', NULL),
(2, 3, '19.00', '47.20', '248.41', '295.61', '2016-07-02 04:23:07', 1, 1, '8FM7526874499554J', 'Completed', 'first_name : Petculescu\nmc_shipping : 0.00\nmc_currency : GBP\npayer_status : verified\npayment_fee : \naddress_status : confirmed\npayment_gross : \naddress_zip : 032551\naddress_country_code : GB\ntxn_type : cart\nnum_cart_items : 6\nmc_handling : 0.00\nverify_sign : A87C3QuWwPHMq65UUS2amNQl-QgDAg-KDzUs6dBGejrwNNR9vG.VtgVp\npayer_id : LETLKR82VN48Y\ncharset : windows-1252\nreceiver_id : ALHAZPZCEJK64\nmc_handling1 : 0.00\nmc_handling2 : 0.00\nmc_handling3 : 0.00\nmc_handling4 : 0.00\nmc_handling5 : 0.00\nitem_name1 : Grand Theft Auto 5\nmc_handling6 : 0.00\ntax : 47.20\nitem_name2 : Rise of the Tomb Raider™\nitem_name3 : Cities: Skylines\nitem_name4 : Total War: WARHAMMER\npayment_type : instant\nitem_name5 : SPINTIRES™\nitem_name6 : Project CARS\naddress_street : Aleea Perisoru nr.5A, sc.2, et.5, ap.67, sector 3\nmc_shipping1 : 0.00\nmc_shipping2 : 0.00\nmc_shipping3 : 0.00\ntxn_id : 8FM7526874499554J\nmc_shipping4 : 0.00\nmc_shipping5 : 0.00\nmc_shipping6 : 0.00\nmc_gross_1 : 35.99\nquantity1 : 1\nmc_gross_2 : 39.99\nquantity2 : 1\nitem_number1 : 7\nprotection_eligibility : Eligible\nmc_gross_3 : 24.99\nquantity3 : 1\nitem_number2 : 11\nmc_gross_4 : 79.98\nquantity4 : 2\nitem_number3 : 26\nmc_gross_5 : 22.49\nquantity5 : 1\ncustom : 2\nitem_number4 : 24\nmc_gross_6 : 44.97\nquantity6 : 3\nitem_number5 : 39\nitem_number6 : 35\nbusiness : seller.test.paypal@gmail.com\nresidence_country : GB\nlast_name : Stefan\naddress_state : Bucuresti\npayer_email : buyer.test.paypal@gmail.com\naddress_city : Bucuresti\npayment_status : Completed\npayment_date : 02:23:33 Jul 02, 2016 PDT\ntransaction_subject : \nreceiver_email : seller.test.paypal@gmail.com\nmc_fee : 10.25\nnotify_version : 3.8\naddress_country : United Kingdom\nmc_gross : 295.61\ntest_ipn : 1\naddress_name : Petculescu Stefan\nipn_track_id : f78e9475ac0d4', 'VERIFIED', NULL),
(3, 3, '19.00', '9.50', '49.99', '59.49', '2016-07-02 09:26:39', 1, 1, '3Y387197C24849233', 'Completed', 'mc_gross : 59.49\nprotection_eligibility : Eligible\naddress_status : confirmed\nitem_number1 : 14\npayer_id : LETLKR82VN48Y\ntax : 9.50\naddress_street : Aleea Perisoru nr.5A, sc.2, et.5, ap.67, sector 3\npayment_date : 07:27:28 Jul 02, 2016 PDT\npayment_status : Completed\ncharset : windows-1252\naddress_zip : 032551\nmc_shipping : 0.00\nmc_handling : 0.00\nfirst_name : Petculescu\nmc_fee : 2.22\naddress_country_code : GB\naddress_name : Petculescu Stefan\nnotify_version : 3.8\ncustom : 3\npayer_status : verified\nbusiness : seller.test.paypal@gmail.com\naddress_country : United Kingdom\nnum_cart_items : 1\nmc_handling1 : 0.00\naddress_city : Bucuresti\nverify_sign : AzMGjhrvZ1AyFbDI2buga2G-JvBKAXcLFRHBNuE.gUkrgThz.qYa20mq\npayer_email : buyer.test.paypal@gmail.com\nmc_shipping1 : 0.00\ntxn_id : 3Y387197C24849233\npayment_type : instant\nlast_name : Stefan\naddress_state : Bucuresti\nitem_name1 : DOOM\nreceiver_email : seller.test.paypal@gmail.com\npayment_fee : \nquantity1 : 1\nreceiver_id : ALHAZPZCEJK64\ntxn_type : cart\nmc_gross_1 : 49.99\nmc_currency : GBP\nresidence_country : GB\ntest_ipn : 1\ntransaction_subject : \npayment_gross : \nipn_track_id : f75eca15e6288', 'VERIFIED', NULL),
(4, 3, '19.00', '9.97', '52.47', '62.44', '2016-07-02 09:27:52', 1, 1, '1LD91507VN2150158', 'Completed', 'mc_gross : 62.44\nprotection_eligibility : Eligible\naddress_status : confirmed\nitem_number1 : 35\ntax : 9.97\nitem_number2 : 39\npayer_id : LETLKR82VN48Y\nitem_number3 : 41\naddress_street : Aleea Perisoru nr.5A, sc.2, et.5, ap.67, sector 3\npayment_date : 07:28:22 Jul 02, 2016 PDT\npayment_status : Completed\ncharset : windows-1252\naddress_zip : 032551\nmc_shipping : 0.00\nmc_handling : 0.00\nfirst_name : Petculescu\nmc_fee : 2.32\naddress_country_code : GB\naddress_name : Petculescu Stefan\nnotify_version : 3.8\ncustom : 4\npayer_status : verified\nbusiness : seller.test.paypal@gmail.com\naddress_country : United Kingdom\nnum_cart_items : 3\nmc_handling1 : 0.00\nmc_handling2 : 0.00\nmc_handling3 : 0.00\naddress_city : Bucuresti\nverify_sign : A1UmmO4yfAUsyHS1vGp6fo8zJNS-AzWo.2agvzQU5yhVyjvHz.o9oA0C\npayer_email : buyer.test.paypal@gmail.com\nmc_shipping1 : 0.00\nmc_shipping2 : 0.00\nmc_shipping3 : 0.00\ntxn_id : 1LD91507VN2150158\npayment_type : instant\nlast_name : Stefan\naddress_state : Bucuresti\nitem_name1 : Project CARS\nreceiver_email : seller.test.paypal@gmail.com\nitem_name2 : SPINTIRES™\npayment_fee : \nitem_name3 : The Crew™\nquantity1 : 1\nquantity2 : 1\nreceiver_id : ALHAZPZCEJK64\nquantity3 : 1\ntxn_type : cart\nmc_gross_1 : 14.99\nmc_currency : GBP\nmc_gross_2 : 22.49\nmc_gross_3 : 14.99\nresidence_country : GB\ntest_ipn : 1\ntransaction_subject : \npayment_gross : \nipn_track_id : c58f356c4595', 'VERIFIED', NULL),
(5, 3, '19.00', '17.85', '93.97', '111.82', '2016-07-02 09:28:41', 1, 1, '4713900313892743P', 'Completed', 'mc_gross : 111.82\nprotection_eligibility : Eligible\naddress_status : confirmed\nitem_number1 : 24\ntax : 17.85\nitem_number2 : 25\npayer_id : LETLKR82VN48Y\nitem_number3 : 30\naddress_street : Aleea Perisoru nr.5A, sc.2, et.5, ap.67, sector 3\npayment_date : 07:28:58 Jul 02, 2016 PDT\npayment_status : Completed\ncharset : windows-1252\naddress_zip : 032551\nmc_shipping : 0.00\nmc_handling : 0.00\nfirst_name : Petculescu\nmc_fee : 4.00\naddress_country_code : GB\naddress_name : Petculescu Stefan\nnotify_version : 3.8\ncustom : 5\npayer_status : verified\nbusiness : seller.test.paypal@gmail.com\naddress_country : United Kingdom\nnum_cart_items : 3\nmc_handling1 : 0.00\nmc_handling2 : 0.00\nmc_handling3 : 0.00\naddress_city : Bucuresti\nverify_sign : AtdNnj6kKbg.N0lPDas27XovYRFPACua31MnocOJQviu8JJ74iQC-5kx\npayer_email : buyer.test.paypal@gmail.com\nmc_shipping1 : 0.00\nmc_shipping2 : 0.00\nmc_shipping3 : 0.00\ntxn_id : 4713900313892743P\npayment_type : instant\nlast_name : Stefan\naddress_state : Bucuresti\nitem_name1 : Total War: WARHAMMER\nreceiver_email : seller.test.paypal@gmail.com\nitem_name2 : Stellaris\npayment_fee : \nitem_name3 : Age of Empires® III: Complete Collection\nquantity1 : 1\nquantity2 : 1\nreceiver_id : ALHAZPZCEJK64\nquantity3 : 1\ntxn_type : cart\nmc_gross_1 : 39.99\nmc_currency : GBP\nmc_gross_2 : 49.99\nmc_gross_3 : 3.99\nresidence_country : GB\ntest_ipn : 1\ntransaction_subject : \npayment_gross : \nipn_track_id : 16406da34bb82', 'VERIFIED', NULL),
(6, 3, '19.00', '3.80', '19.98', '23.78', '2016-07-06 04:05:36', 1, 1, '59H74905833851514', 'Completed', 'mc_gross : 23.78\nprotection_eligibility : Eligible\naddress_status : confirmed\nitem_number1 : 41\ntax : 3.80\nitem_number2 : 42\npayer_id : LETLKR82VN48Y\naddress_street : Aleea Perisoru nr.5A, sc.2, et.5, ap.67, sector 3\npayment_date : 02:05:59 Jul 06, 2016 PDT\npayment_status : Completed\ncharset : windows-1252\naddress_zip : 032551\nmc_shipping : 0.00\nmc_handling : 0.00\nfirst_name : Petculescu\nmc_fee : 1.01\naddress_country_code : GB\naddress_name : Petculescu Stefan\nnotify_version : 3.8\ncustom : 6\npayer_status : verified\nbusiness : seller.test.paypal@gmail.com\naddress_country : United Kingdom\nnum_cart_items : 2\nmc_handling1 : 0.00\nmc_handling2 : 0.00\naddress_city : Bucuresti\nverify_sign : A4KPq29A4K4IoZv3wpx70XLsdxf4AtvMW7o4vg.e1pskvczOen8Mmq.r\npayer_email : buyer.test.paypal@gmail.com\nmc_shipping1 : 0.00\nmc_shipping2 : 0.00\ntxn_id : 59H74905833851514\npayment_type : instant\nlast_name : Stefan\naddress_state : Bucuresti\nitem_name1 : The Crew™\nreceiver_email : seller.test.paypal@gmail.com\nitem_name2 : TrackMania² Stadium\npayment_fee : \nquantity1 : 1\nquantity2 : 1\nreceiver_id : ALHAZPZCEJK64\ntxn_type : cart\nmc_gross_1 : 14.99\nmc_currency : GBP\nmc_gross_2 : 4.99\nresidence_country : GB\ntest_ipn : 1\ntransaction_subject : \npayment_gross : \nipn_track_id : ff02378930789', 'VERIFIED', ''),
(10, 3, '19.00', '9.50', '49.99', '59.49', '2016-07-12 14:40:33', 1, 1, '3UH25911U7993915M', 'Completed', 'mc_gross : 59.49\nprotection_eligibility : Eligible\naddress_status : confirmed\nitem_number1 : 14\npayer_id : LETLKR82VN48Y\ntax : 9.50\naddress_street : Aleea Perisoru nr.5A, sc.2, et.5, ap.67, sector 3\npayment_date : 12:41:11 Jul 12, 2016 PDT\npayment_status : Completed\ncharset : windows-1252\naddress_zip : 032551\nmc_shipping : 0.00\nmc_handling : 0.00\nfirst_name : Petculescu\nmc_fee : 2.22\naddress_country_code : GB\naddress_name : Petculescu Stefan\nnotify_version : 3.8\ncustom : 10\npayer_status : verified\nbusiness : seller.test.paypal@gmail.com\naddress_country : United Kingdom\nnum_cart_items : 1\nmc_handling1 : 0.00\naddress_city : Bucuresti\nverify_sign : AFcWxV21C7fd0v3bYYYRCpSSRl31AAkLYPqElaMM6i8vC0QZQE7VNClZ\npayer_email : buyer.test.paypal@gmail.com\nmc_shipping1 : 0.00\ntxn_id : 3UH25911U7993915M\npayment_type : instant\nlast_name : Stefan\naddress_state : Bucuresti\nitem_name1 : DOOM\nreceiver_email : seller.test.paypal@gmail.com\npayment_fee : \nquantity1 : 1\nreceiver_id : ALHAZPZCEJK64\ntxn_type : cart\nmc_gross_1 : 49.99\nmc_currency : GBP\nresidence_country : GB\ntest_ipn : 1\ntransaction_subject : \npayment_gross : \nipn_track_id : 3cf5e9a89f45f', 'VERIFIED', NULL),
(11, 3, '19.00', '4.18', '21.99', '26.17', '2016-07-12 14:43:58', 1, 1, '1G3517645A887870D', 'Completed', 'mc_gross : 26.17\nprotection_eligibility : Eligible\naddress_status : confirmed\nitem_number1 : 23\npayer_id : LETLKR82VN48Y\ntax : 4.18\naddress_street : Aleea Perisoru nr.5A, sc.2, et.5, ap.67, sector 3\npayment_date : 12:45:13 Jul 12, 2016 PDT\npayment_status : Completed\ncharset : windows-1252\naddress_zip : 032551\nmc_shipping : 0.00\nmc_handling : 0.00\nfirst_name : Petculescu\nmc_fee : 1.09\naddress_country_code : GB\naddress_name : Petculescu Stefan\nnotify_version : 3.8\ncustom : 11\npayer_status : verified\nbusiness : seller.test.paypal@gmail.com\naddress_country : United Kingdom\nnum_cart_items : 1\nmc_handling1 : 0.00\naddress_city : Bucuresti\nverify_sign : ARLVDP2L.4MqfOFJIuBr1CdO9YBnAPotXRWSmhiuRU9tr2uot.cN5ml5\npayer_email : buyer.test.paypal@gmail.com\nmc_shipping1 : 0.00\ntxn_id : 1G3517645A887870D\npayment_type : instant\nlast_name : Stefan\naddress_state : Bucuresti\nitem_name1 : Just Cause™ 3\nreceiver_email : seller.test.paypal@gmail.com\npayment_fee : \nquantity1 : 1\nreceiver_id : ALHAZPZCEJK64\ntxn_type : cart\nmc_gross_1 : 21.99\nmc_currency : GBP\nresidence_country : GB\ntest_ipn : 1\ntransaction_subject : \npayment_gross : \nipn_track_id : a6a95c87e57cc', 'VERIFIED', NULL),
(12, 3, '19.00', '6.84', '35.99', '42.83', '2016-07-13 02:36:47', 1, 1, '5F288220KN344604G', 'Completed', 'mc_gross : 42.83\nprotection_eligibility : Eligible\naddress_status : confirmed\nitem_number1 : 7\npayer_id : LETLKR82VN48Y\ntax : 6.84\naddress_street : Aleea Perisoru nr.5A, sc.2, et.5, ap.67, sector 3\npayment_date : 00:37:47 Jul 13, 2016 PDT\npayment_status : Completed\ncharset : windows-1252\naddress_zip : 032551\nmc_shipping : 0.00\nmc_handling : 0.00\nfirst_name : Petculescu\nmc_fee : 1.66\naddress_country_code : GB\naddress_name : Petculescu Stefan\nnotify_version : 3.8\ncustom : 12\npayer_status : verified\nbusiness : seller.test.paypal@gmail.com\naddress_country : United Kingdom\nnum_cart_items : 1\nmc_handling1 : 0.00\naddress_city : Bucuresti\nverify_sign : A.CSYz4u5IILQm5wM0J0JbJiIcEuAcS17Wrc1HhVm2F5Wak8CSn38bPm\npayer_email : buyer.test.paypal@gmail.com\nmc_shipping1 : 0.00\ntxn_id : 5F288220KN344604G\npayment_type : instant\nlast_name : Stefan\naddress_state : Bucuresti\nitem_name1 : Grand Theft Auto 5\nreceiver_email : seller.test.paypal@gmail.com\npayment_fee : \nquantity1 : 1\nreceiver_id : ALHAZPZCEJK64\ntxn_type : cart\nmc_gross_1 : 35.99\nmc_currency : GBP\nresidence_country : GB\ntest_ipn : 1\ntransaction_subject : \npayment_gross : \nipn_track_id : 6271c97e6cae1', 'VERIFIED', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders_items`
--

CREATE TABLE IF NOT EXISTS `orders_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order` int(11) NOT NULL,
  `product` int(11) NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `qty` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `order` (`order`,`product`),
  KEY `FK_PRODUCT` (`product`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=27 ;

--
-- Dumping data for table `orders_items`
--

INSERT INTO `orders_items` (`id`, `order`, `product`, `price`, `qty`) VALUES
(1, 1, 14, '49.99', 1),
(2, 1, 22, '4.99', 1),
(3, 1, 20, '29.99', 1),
(4, 2, 7, '35.99', 1),
(5, 2, 11, '39.99', 1),
(6, 2, 26, '24.99', 1),
(7, 2, 24, '39.99', 2),
(8, 2, 39, '22.49', 1),
(9, 2, 35, '14.99', 3),
(10, 3, 14, '49.99', 1),
(11, 4, 41, '14.99', 1),
(12, 4, 35, '14.99', 1),
(13, 4, 39, '22.49', 1),
(14, 5, 25, '49.99', 1),
(15, 5, 24, '39.99', 1),
(16, 5, 30, '3.99', 1),
(17, 6, 42, '4.99', 1),
(18, 6, 41, '14.99', 1),
(24, 10, 14, '49.99', 1),
(25, 11, 23, '21.99', 1),
(26, 12, 7, '35.99', 1);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `date` datetime NOT NULL,
  `category` int(11) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `category` (`category`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=58 ;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `date`, `category`, `image`) VALUES
(4, 'The Witcher 3: Wild Hunt', 'The Witcher: Wild Hunt is a story-driven, next-generation open world role-playing game set in a visually stunning fantasy universe full of meaningful choices and impactful consequences. In The Witcher you play as the professional monster hunter, Geralt of Rivia, tasked with finding a child of prophecy in a vast open world rich with merchant cities, viking pirate islands, dangerous mountain passes, and forgotten caverns to explore.\r\n\r\n', '29.99', '2015-05-19 00:00:00', 1, 'witcher3.jpg'),
(5, 'The Witcher 2: Assassins of Kings', 'The player is Geralt of Rivia, a professional monster slayer, a witcher. Entangled in the political turmoil that engulfed Temeria, Geralt helped quell the rebellion of the Order of the Flaming Rose. Soon after, he saved King Foltest’s life when the monarch was attacked by a witcher-like assassin. He continues to protect the king, serving as his bodyguard as Foltest strives to bring peace to his kingdom. The Order’s last bastions have yielded to the royal army, yet one more task remains - the Baroness La Valette announced her secession from the realm, and her fortress must be taken. A month after the attempted assassination, Foltest’s armies stand at the gates of La Valette Castle, preparing for a final assault. Still at Foltest’s side, Geralt is among them, unable to begin his personal quest to discover the mysterious assassin’s origin and identity… ', '14.99', '2011-05-17 00:00:00', 1, 'witcher2.png'),
(6, 'The Witcher', 'Become The Witcher, Geralt of Rivia, a legendary monster slayer caught in a web of intrigue woven by forces vying for control of the world. Make difficult decisions and live with the consequences in an game that will immerse you in an extraordinary tale like no other. Representing the pinnacle of storytelling in role-playing games, The Witcher shatters the line between good and evil in a world where moral ambiguity reigns. The Witcher emphasizes story and character development in a vibrant world while incorporating tactically-deep real-time combat like no game before it.', '4.99', '2008-09-16 00:00:00', 1, 'witcher.jpg'),
(7, 'Grand Theft Auto 5', 'When a young street hustler, a retired bank robber and a terrifying psychopath find themselves entangled with some of the most frightening and deranged elements of the criminal underworld, the U.S. government and the entertainment industry, they must pull off a series of dangerous heists to survive in a ruthless city in which they can trust nobody, least of all each other.\r\n\r\nGrand Theft Auto V for PC offers players the option to explore the award-winning world of Los Santos and Blaine County in resolutions of up to 4k and beyond, as well as the chance to experience the game running at 60 frames per second. \r\n\r\nThe game offers players a huge range of PC-specific customization options, including over 25 separate configurable settings for texture quality, shaders, tessellation, anti-aliasing and more, as well as support and extensive customization for mouse and keyboard controls. Additional options include a population density slider to control car and pedestrian traffic, as well as dual and triple monitor support, 3D compatibility, and plug-and-play controller support. ', '35.99', '2016-04-01 00:00:00', 1, 'gta5.jpg'),
(8, 'Fallout 4', 'Bethesda Game Studios, the award-winning creators of Fallout 3 and The Elder Scrolls V: Skyrim, welcome you to the world of Fallout 4 – their most ambitious game ever, and the next generation of open-world gaming. \r\n\r\nAs the sole survivor of Vault 111, you enter a world destroyed by nuclear war. Every second is a fight for survival, and every choice is yours. Only you can rebuild and determine the fate of the Wasteland. Welcome home.', '29.99', '2015-11-18 00:00:00', 1, 'fallout4.jpg'),
(9, 'DARK SOULS™ III', 'DARK SOULS™ III continues to push the boundaries with the latest, ambitious chapter in the critically-acclaimed and genre-defining series. \r\n\r\nAs fires fade and the world falls into ruin, journey into a universe filled with more colossal enemies and environments. Players will be immersed into a world of epic atmosphere and darkness through faster gameplay and amplified combat intensity. Fans and newcomers alike will get lost in the game hallmark rewarding gameplay and immersive graphics. \r\nNow only embers remain… Prepare yourself once more and Embrace The Darkness!', '19.99', '2016-04-12 00:00:00', 1, 'darksouls3.jpg'),
(10, 'Ryse: Son of Rome', 'Fight as a soldier. Lead as a general. Rise as a legend. \r\n\r\n“Ryse: Son of Rome” tells the story of Marius Titus, a young Roman soldier who witnesses the murder of his family at the hands of barbarian bandits, then travels with the Roman army to Britannia to seek revenge. Quickly rising through the ranks, Marius must become a leader of men and defender of the Empire on his quest to exact vengeance – a destiny he soon discovers can only be fulfilled much closer to home... ', '4.99', '2014-10-10 00:00:00', 1, 'ryse.jpg'),
(11, 'Rise of the Tomb Raider™', 'After uncovering an ancient mystery, Lara must explore the most treacherous and remote regions of Siberia to find the secret of immortality before a ruthless organization known as Trinity. Lara must use her wits and survival skills, form new alliances, and ultimately embrace her destiny as the Tomb Raider. Experience high-octane action moments, conquer beautifully hostile environments, engage in brutal guerilla combat, and explore awe-inspiring deadly tombs in the evolution of survival action. In “Rise of the Tomb Raider,” Lara becomes more than a survivor as she embarks on her first Tomb Raiding expedition. ', '39.99', '2016-01-28 00:00:00', 1, 'tombraider.jpg'),
(12, 'Batman™: Arkham Knight', 'Batman™: Arkham Knight brings the award-winning Arkham trilogy from Rocksteady Studios to its epic conclusion. Developed exclusively for New-Gen platforms, Batman: Arkham Knight introduces Rocksteady''s uniquely designed version of the Batmobile. The highly anticipated addition of this legendary vehicle, combined with the acclaimed gameplay of the Arkham series, offers gamers the ultimate and complete Batman experience as they tear through the streets and soar across the skyline of the entirety of Gotham City. In this explosive finale, Batman faces the ultimate threat against the city that he is sworn to protect, as Scarecrow returns to unite the super criminals of Gotham and destroy the Batman forever.', '14.99', '2015-06-23 00:00:00', 1, 'batman.jpg'),
(13, 'Far Cry® 4', 'Hidden in the towering Himalayas lies Kyrat, a country steeped in tradition and violence. You are Ajay Ghale. Traveling to Kyrat to fulfill your mother’s dying wish, you find yourself caught up in a civil war to overthrow the oppressive regime of dictator Pagan Min. Explore and navigate this vast open world, where danger and unpredictability lurk around every corner. Here, every decision counts, and every second is a story. Welcome to Kyrat.', '14.99', '2014-11-18 00:00:00', 1, 'farcry4.jpg'),
(14, 'DOOM', 'Developed by id software, the studio that pioneered the first-person shooter genre and created multiplayer Deathmatch, DOOM returns as a brutally fun and challenging modern-day shooter experience. Relentless demons, impossibly destructive guns, and fast, fluid movement provide the foundation for intense, first-person combat – whether you’re obliterating demon hordes through the depths of Hell in the single-player campaign, or competing against your friends in numerous multiplayer modes. Expand your gameplay experience using DOOM SnapMap game editor to easily create, play, and share your content with the world. ', '49.99', '2016-05-13 00:00:00', 2, 'doom.jpg'),
(15, 'Counter-Strike: Global Offensive', 'Counter-Strike: Global Offensive (CS: GO) will expand upon the team-based action gameplay that it pioneered when it was launched 14 years ago.\r\n\r\nCS: GO features new maps, characters, and weapons and delivers updated versions of the classic CS content (de_dust, etc.). In addition, CS: GO will introduce new gameplay modes, matchmaking, leader boards, and more.\r\n\r\n"Counter-Strike took the gaming industry by surprise when the unlikely MOD became the most played online PC action game in the world almost immediately after its release in August 1999," said Doug Lombardi at Valve. "For the past 12 years, it has continued to be one of the most-played games in the world, headline competitive gaming tournaments and selling over 25 million units worldwide across the franchise. CS: GO promises to expand on CS'' award-winning gameplay and deliver it to gamers on the PC as well as the next gen consoles and the Mac."', '1.99', '2012-08-18 00:00:00', 2, 'csgo.jpeg'),
(16, 'Rocket League®', 'Soccer meets driving once again in the long-awaited, physics-based sequel to the beloved arena classic, Supersonic Acrobatic Rocket-Powered Battle-Cars! \r\n\r\nA futuristic Sports-Action game, Rocket League®, equips players with booster-rigged vehicles that can be crashed into balls for incredible goals or epic saves across multiple, highly-detailed arenas. Using an advanced physics system to simulate realistic interactions, Rocket League® relies on mass and momentum to give players a complete sense of intuitive control in this unbelievable, high-octane re-imagining of association football. ', '11.99', '2015-07-07 00:00:00', 2, 'rocketleague.jpg'),
(17, 'ARK: Survival Evolved', 'As a man or woman stranded naked, freezing and starving on the shores of a mysterious island called ARK, you must hunt, harvest resources, craft items, grow crops, research technologies, and build shelters to withstand the elements. Use your cunning and resources to kill or tame & breed the leviathan dinosaurs and other primeval creatures roaming the land, and team up with or prey on hundreds of other players to survive, dominate... and escape! ', '15.99', '2015-06-03 00:00:00', 2, 'ark.jpg'),
(18, 'Rust', 'The only aim in Rust is to survive.\r\n\r\nTo do this you will need to overcome struggles such as hunger, thirst and cold. Build a fire. Build a shelter. Kill animals for meat. Protect yourself from other players, and kill them for meat. Create alliances with other players and form a town. \r\n\r\nWhatever it takes to survive.', '9.99', '2015-08-18 00:00:00', 2, 'rust.jpg'),
(19, 'Tom Clancy''s Rainbow Six® Siege', 'Tom Clancy''s Rainbow Six Siege is the upcoming installment of the acclaimed first-person shooter franchise developed by the renowned Ubisoft Montreal studio. \r\n\r\nTom Clancy''s Rainbow Six Siege invites players to master the art of destruction. Intense close quarters confrontations, high lethality, tactics, team play, and explosive action are at the center of the experience. The gameplay sets a new bar for intense firefights and expert strategy in the rich legacy of past Tom Clancy''s Rainbow Six games.', '23.99', '2015-12-01 00:00:00', 2, 'rainbow.jpg'),
(20, 'XCOM® 2', 'XCOM 2 is the sequel to XCOM: Enemy Unknown, the 2012 award-winning strategy game of the year. \r\n\r\nEarth has changed. Twenty years have passed since world leaders offered an unconditional surrender to alien forces. XCOM, the planet’s last line of defense, was left decimated and scattered. Now, in XCOM 2, the aliens rule Earth, building shining cities that promise a brilliant future for humanity on the surface, while concealing a sinister agenda and eliminating all who dissent from their new order. \r\n\r\nOnly those who live at the edges of the world have a margin of freedom. Here, a force gathers once again to stand up for humanity. Always on the run, and facing impossible odds, the remnant XCOM forces must find a way to ignite a global resistance, and eliminate the alien threat once and for all. ', '29.99', '2016-02-05 00:00:00', 2, 'xcom.jpg'),
(21, 'Portal 2', 'Portal 2 draws from the award-winning formula of innovative gameplay, story, and music that earned the original Portal over 70 industry accolades and created a cult following. \r\n\r\nThe single-player portion of Portal 2 introduces a cast of dynamic new characters, a host of fresh puzzle elements, and a much larger set of devious test chambers. Players will explore never-before-seen areas of the Aperture Science Labs and be reunited with GLaDOS, the occasionally murderous computer companion who guided them through the original game. \r\n\r\nThe game’s two-player cooperative mode features its own entirely separate campaign with a unique story, test chambers, and two new player characters. This new mode forces players to reconsider everything they thought they knew about portals. Success will require them to not just act cooperatively, but to think cooperatively. ', '7.49', '2014-08-11 00:00:00', 2, 'portal.jpg'),
(22, 'Borderlands 2', 'A new era of shoot and loot is about to begin. Play as one of four new vault hunters facing off against a massive new world of creatures, psychos and the evil mastermind, Handsome Jack. Make new friends, arm them with a bazillion weapons and fight alongside them in 4 player co-op on a relentless quest for revenge and redemption across the undiscovered and unpredictable living planet.', '4.99', '2016-04-11 00:00:00', 2, 'borderlands.jpg'),
(23, 'Just Cause™ 3', 'The Mediterranean republic of Medici is suffering under the brutal control of General Di Ravello, a dictator with an insatiable appetite for power. Enter Rico Rodriguez, a man on a mission to destroy the General’s hold on power by any means necessary. With over 400 square miles of complete freedom from sky to seabed and a huge arsenal of weaponry, gadgets and vehicles, prepare to unleash chaos in the most creative and explosive ways you can imagine.', '21.99', '2016-01-12 00:00:00', 2, 'justcause.jpg'),
(24, 'Total War: WARHAMMER', 'The Old World echoes to the clamour of ceaseless battle. The only constant is WAR! \r\n\r\nA fantasy strategy game of legendary proportions, Total War: WARHAMMER combines an addictive turn-based campaign of epic empire-building with explosive, colossal, real-time battles, all set in the vivid and incredible world of Warhammer Fantasy Battles. \r\n\r\nCommand four wholly different races: the Empire, the Dwarfs, the Vampire Counts and the Greenskins, each with their own unique characters, battlefield units and play style. \r\n\r\nLead your forces to war as one of eight Legendary Lords from the Warhammer Fantasy Battles World, arming them with fabled weapons, armour and deadly battle magic; hard-won in individual quest chains. \r\n\r\nFor the first time in a Total War game, harness storms of magical power to aid you in battle and take to the skies with flying creatures, from ferocious dragons and wyverns to gigantic griffons. \r\n\r\nHundreds of hours of gameplay await you at the dawn of a new era. Total War: WARHAMMER brings to life a world of legendary heroes, towering monsters, flying creatures, storms of magical power and regiments of nightmarish warriors.\r\nLead Extraordinary Races\r\nThe valiant men of the Empire, the vengeful Dwarfs, the murderous Vampire Counts and the brutal Orcs and Goblins of the Greenskin tribes. Each Race is wholly different with their own unique characters, campaign mechanics, battlefield units and play style.\r\nCommand Legendary Characters\r\nMarch your forces to war as one of eight Legendary Lords from the Warhammer Fantasy Battles World, arming them with fabled weapons, armour, mounts and deadly battle magic as you uncover their tales through a series of unique narrative quest chains.\r\nConquer this world\r\nThe very first Total War game to feature a fantasy setting. Experience incredible depth and the freedom to conquer as you see fit across a gigantic sand-box Grand Campaign map. Crafted from a twisted magical landscape and populated with an incredible array of awesome and deadly creatures, this is your chance to experience fantasy strategy on a scale as yet unimagined.\r\nUnleash the monsters\r\nThe battlefields of Total War: WARHAMMER echo to the swoop and roar of dragons, the bellowing of giants and the thundering hooves of monstrous cavalry. Towering beasts of both earthly and supernatural origin wade into the melee of battle, bringing death to hundreds of lesser creatures at a time.\r\nHarness the Winds of Magic\r\nSmite your enemies with magical storms, melt their armour, sap their fighting spirit or bolster your own forces with devastating spells that split the sky and consume the battlefield. Rally wizards, shamans and necromancers to your armies and bend titanic and unpredictable energies to your whim.\r\nWatch the skies\r\nHarass your enemies with Dwarfen Gyrocopters, plunge into their front-lines with terrifying Wyverns and achieve air superiority with a stunning array of flying units for the first time in a Total War game. Entirely new tactical possibilities present themselves as you deploy your winged minions in open battles and jaw-dropping sieges. \r\nWhat is more, this title will go on to combine with two future standalone instalments and additional content packs to create the largest Total War experience ever. An epic trilogy of titles that will redefine fantasy strategy gaming.\r\n', '39.99', '2016-05-10 00:00:00', 3, 'warhammer.jpg'),
(25, 'Stellaris', 'Explore a vast galaxy full of wonder! Paradox Development Studio, makers of the Crusader Kings and Europa Universalis series presents Stellaris, an evolution of the grand strategy genre with space exploration at its core. \r\n\r\nFeaturing deep strategic gameplay, a rich and enormously diverse selection of alien races and emergent storytelling, Stellaris has engaging challenging gameplay that rewards interstellar exploration as you traverse, discover, interact and learn more about the multitude of species you will encounter during your travels. \r\n\r\nEtch your name across the cosmos by forging a galactic empire; colonizing remote planets and integrating alien civilizations. Will you expand through war alone or walk the path of diplomacy to achieve your goals?', '49.99', '2016-06-14 00:00:00', 3, 'stellaris.jpg'),
(26, 'Cities: Skylines', 'Cities: Skylines is a modern take on the classic city simulation. The game introduces new game play elements to realize the thrill and hardships of creating and maintaining a real city whilst expanding on some well-established tropes of the city building experience. \r\n  \r\nFrom the makers of the Cities in Motion franchise, the game boasts a fully realized transport system. It also includes the ability to mod the game to suit your play style as a fine counter balance to the layered and challenging simulation. You’re only limited by your imagination, so take control and reach for the sky! \r\n', '24.99', '2016-05-16 00:00:00', 3, 'skylines.jpg'),
(27, 'Hearts of Iron IV', 'Victory is at your fingertips! Your ability to lead your nation is your supreme weapon, the strategy game Hearts of Iron IV lets you take command of any nation in World War II; the most engaging conflict in world history. \r\n\r\nFrom the heart of the battlefield to the command center, you will guide your nation to glory and wage war, negotiate or invade. You hold the power to tip the very balance of WWII. \r\n\r\nIt is time to show your ability as the greatest military leader in the world. Will you relive or change history? Will you change the fate of the world by achieving victory at all costs? \r\n', '49.99', '2016-05-17 00:00:00', 3, 'hos4.png'),
(28, 'Sid Meier''s Civilization® V', 'The Flagship Turn-Based Strategy Game Returns \r\n\r\nBecome Ruler of the World by establishing and leading a civilization from the dawn of man into the space age: Wage war, conduct diplomacy, discover new technologies, go head-to-head with some of history’s greatest leaders and build the most powerful empire the world has ever known. ', '5.99', '2015-05-11 00:00:00', 3, 'civ5.jpg'),
(29, 'Age of Empires II HD', 'In Age of Empires II: HD Edition, fans of the original game and new players alike will fall in love with the classic Age of Empires II experience. Explore all the original single player campaigns from both Age of Kings and The Conquerors expansion, choose from 18 civilizations spanning over a thousand years of history, and head online to challenge other Steam players in your quest for world domination throughout the ages. Originally developed by Ensemble Studios and re-imagined in high definition by Hidden Path Entertainment, and Skybox Labs, Microsoft Studios is proud to bring Age of Empires II: HD Edition to GOG!', '2.99', '2016-01-11 00:00:00', 3, 'aoe2.jpg'),
(30, 'Age of Empires® III: Complete Collection', 'Immerse yourself in the award-winning strategy experience. Microsoft Studios brings you three epic Age of Empires III games in one monumental collection for the first time. Command mighty European powers looking to explore new lands in the New World; or jump eastward to Asia and determine the outcome of its struggles for power.', '3.99', '2016-04-04 00:00:00', 3, 'aoe3.jpg'),
(31, 'Total War™: ROME II', 'Emperor Edition is the definitive edition of ROME II, featuring an improved politics system, overhauled building chains, rebalanced battles and improved visuals in both campaign and battle. \r\n\r\nIn addition, Emperor Edition includes all content and feature updates made available for ROME II since its launch in September 2013. These include Twitch.TV integration, touchscreen controls, new playable factions and units, and Mac compatibility. \r\nThe Imperator Augustus Campaign Pack and all Emperor Edition content and features are free, via automatic update, to all existing ROME II owners. ', '13.49', '2016-03-07 00:00:00', 3, 'rome2.jpg'),
(32, 'Crusader Kings II', 'The Dark Ages might be drawing to a close, but Europe is still in turmoil. Petty lords vie against beleaguered kings who struggle to assert control over their fragmented realms. The Pope calls for a Crusade to protect the Christians in the Holy Land even as he refuses to relinquish control over the investiture of bishops - and their riches. Now is the time for greatness. Expand your demesne and secure the future of your dynasty. Fill your coffers, appoint vassals, root out traitors and heretics, introduce laws and interact with hundreds of nobles, each with their own agenda. \r\nA good lord will always need friends to support him. But beware, as loyal vassals can quickly turn to bitter rivals, and some might not be as reliable as they seem... Stand ready, and increase your prestige until the world whispers your name in awe. Do you have what it takes to become a Crusader King? \r\nCrusader Kings II explores one of the defining periods in world history in an experience crafted by the masters of Grand Strategy. Medieval Europe is brought to life in this epic game of knights, schemes, and thrones... ', '4.99', '2015-11-17 00:00:00', 3, 'ck2.jpg'),
(33, 'Europa Universalis IV', 'Paradox Development Studio is back with the fourth installment of the award-winning Europa Universalis series. The empire building game Europa Universalis IV gives you control of a nation to guide through the years in order to create a dominant global empire. Rule your nation through the centuries, with unparalleled freedom, depth and historical accuracy. True exploration, trade, warfare and diplomacy will be brought to life in this epic title rife with rich strategic and tactical depth.', '9.99', '2014-09-16 00:00:00', 3, 'eu4.jpg'),
(34, 'Mad Max', 'Become Mad Max, the lone warrior in a savage post-apocalyptic world where cars are the key to survival. In this action-packed, open world, third person action game, you must fight to stay alive in The Wasteland, using brutal on-ground and vehicular against vicious gangs of bandits. A reluctant hero with an instinct for survival, Max wants nothing more than to leave the madness behind and find solace in the storied “Plains of Silence.” Players are challenged with treacherous missions as they scavenge the dangerous landscape for supplies to build the ultimate combat vehicle.', '16.99', '2016-04-04 00:00:00', 4, 'madmax.jpg'),
(35, 'Project CARS', 'Guided, tested, and approved by a passionate community of racing fans and real-life drivers, Project CARS represents the next-generation of racing simulation as the ultimate combination of fan desire and developer expertise. \r\n\r\nDiscover an unrivaled immersion fuelled by world-class graphics and handling that allows you to truly feel the road. Create a driver, pick from a huge variety of motorsports in a dynamic career mode and write your own tale in an intense online multiplayer. \r\n\r\nFeaturing the largest track roster of any recent racing game with a ground-breaking dynamic time of day & weather system, deep tuning & pit stop functionality, and support for Oculus Rift and 12K ultra HD resolution, Project CARS leaves the competition behind in the dust. \r\n', '14.99', '2016-04-19 00:00:00', 4, 'cars.png'),
(36, 'DiRT Rally', 'DiRT Rally is the most authentic and thrilling rally game ever made, road-tested over 80 million miles by the DiRT community. It perfectly captures that white knuckle feeling of racing on the edge as you hurtle along dangerous roads at breakneck speed, knowing that one crash could irreparably harm your stage time. \r\nDiRT Rally also includes officially licensed World Rallycross content, allowing you to experience the breathless, high-speed thrills of some of the world’s fastest off-road cars as you trade paint with other drivers at some of the series’ best-loved circuits, in both singleplayer and high-intensity multiplayer races. ', '29.99', '2016-03-14 00:00:00', 4, 'dirt.jpg'),
(37, 'Assetto Corsa', 'Assetto Corsa features an advanced DirectX 11 graphics engine that recreates an immersive environment, dynamic lighthing and realistic materials and surfaces. The advanced physics engine is being designed to provide a very realistic driving experience, including features and aspects of real cars, never seen on any other racing simulator such as tyre flat spots, heat cycles including graining and blistering, very advanced aerodynamic simulation with active movable aerodynamics parts controlled in real time by telemetry input channels, hybrid systems with kers and energy recovery simulation. Extremely detailed with single player and multiplayer options, exclusive licensed cars reproduced with the best accuracy possible, thanks to the official cooperation of Car Manufacturers. \r\nASSETTO CORSA has been developed at the KUNOS Simulazioni R&D office, located just inside the international racing circuit of Vallelunga, allowing the team to develop the game with the cooperation of real world racing drivers and racing teams. ', '19.99', '2016-03-21 00:00:00', 4, 'corsa.png'),
(38, 'DiRT 3 Complete Edition', 'Get DiRT 3 Complete Edition, the definitive edition of off-road racer DiRT 3 now expanded with extra content and enhanced with Steamworks integration, including Achievements, Leaderboards and Steam Cloud Saves.\r\n\r\nIn DiRT 3 Complete Edition, you’ll race iconic cars representing 50 years of off-road motorsport across three continents – from the forests of Michigan to the infamous roads of Finland and the national parks of Kenya. You’ll also express yourself in the stunning Gymkhana mode, inspired by Ken Block’s incredible freestyle driving event, and take on other modes including Rallycross, Trailblazer and Landrush. Powered by Codemasters’ award-winning EGO Engine, DiRT 3 Complete Edition features Flashback to rewind time, genre-leading damage and you can take on all game modes in split-screen and competitive online multiplayer.', '6.89', '2016-03-22 00:00:00', 4, 'dirt3.jpg'),
(39, 'SPINTIRES™', 'Spintires™ is an Intel® award winning off-road driving experience designed to challenge the player''s driving skill and endurance. \r\n\r\nTake responsibility of operating large all-terrain Soviet vehicles and venture across the rugged landscapes with only a map and compass to guide you. Explore the levels and unlock portions of the map whilst discovering new trucks, fuelling stations, garages and lumber mills. \r\n\r\nCollect lumber with the crane attachments and try to deliver them to the objectives. Try not to damage your vehicle or consume all of the fuel, prior to completing the objectives. Use the surroundings to your advantage, you may need to winch yourself free! \r\n\r\nThe real-time deformable terrain will challenge even the most seasoned offroader. Do you accept the challenge?', '22.49', '2016-04-19 00:00:00', 4, 'spintires.jpg'),
(40, 'Need For Speed: Hot Pursuit', 'Need for Speed Hot Pursuit launches you into a new open-world landscape behind the wheel of the world''s fastest and most beautiful cars. From Criterion, the award-winning studio behind the Burnout series, Hot Pursuit will redefine racing games for a whole new generation. \r\n\r\nYou''ll experience stunning speeds, takedowns, and getaways as you battle your friends in the most connected Need for Speed game ever. Through Need for Speed Autolog and its innovative approach to connected social competition, your Hot Pursuit experience will extend beyond the console onto the web, constantly moving your gameplay in new and unique directions. \r\n\r\nLoaded with action, this game will challenge you to become Seacrest County''s top cop or most wanted racer. For the first time ever in a Need for Speed game, you''ll be able to play a full career on either side of the law. Whether you''re a lead-foot speeder or a cop with a mean streak, make sure your aviators are spotless and your driving record is anything but. ', '3.74', '2016-03-07 00:00:00', 4, 'nfs.jpg'),
(41, 'The Crew™', 'Your car is your avatar - fine tune your ride as you level up and progress through 5 unique and richly detailed regions of a massive open-world US. Maneuver through the bustling streets of New York City and Los Angeles, cruise down sunny Miami Beach or trek through the breathtaking plateaus of Monument Valley. Each locale comes with its own set of surprises and driving challenges to master. On your journey you will encounter other players on the road – all potentially worthy companions to crew up with, or future rivals to compete against. This is driving at its most exciting, varied and open. ', '14.99', '2016-04-20 00:00:00', 4, 'crew.jpg'),
(42, 'TrackMania² Stadium', 'TrackMania² Stadium is the return of the popular Stadium environment enjoyed by millions of players with TrackMania Nations Forever. Now part of the ManiaPlanet environment, Stadium allows for improved services around the game, better graphics and a powerful track editor.\r\nTrackMania² Stadium is a whacky, crazy and fast paced take on the racer genre. Stadium’s pure gameplay ensures it is easy to pick up and learn, yet the depth has made it an eSports favourite for years, bringing both creative and competitive gamers together in the mix.\r\n', '4.99', '2016-04-26 00:00:00', 4, 'trackmania.jpg'),
(43, 'F1 2015', 'Race like a champion in F1 2015 - get closer than ever before to the experience of racing in the world’s most glamorous, exciting and prestigious motorsport. F1 2015 puts you in the heart of the action with a stunning new game engine that recreates the blisteringly fast and highly responsive racing cars of FORMULA ONE™ and features all-new ‘broadcast presentation’ that immerses you in the unique race day atmosphere. F1 2015 is the official videogame of the 2015 FIA FORMULA ONE WORLD CHAMPIONSHIP™ and also features fully playable 2014 FIA FORMULA ONE WORLD CHAMPIONSHIP™ bonus content. Compete as your favourite FORMULA ONE star in the new Championship Season and push yourself to the limit in the challenging Pro Season mode. Hone your skills in the new Online Practice Session, and then challenge your friends and racing rivals from across the world in Online Multiplayer. ', '19.99', '2016-05-23 00:00:00', 4, 'f1.jpg'),
(46, 'Kerbal Space Program', 'In KSP you must build a space-worthy craft, capable of flying its crew out into space without killing them. At your disposal is a collection of parts, which must be assembled to create a functional ship. Each part has its own function and will affect the way a ship flies (or doesn''t). So strap yourself in, and get ready to try some Rocket Science! \r\n\r\nThe game offers three gameplay modes: Sandbox, in which you are free to build anything you can think of; Science Mode, which lets you perform Scientific experiments to advance the knowledge of Kerbalkind and further the available technology; and Career Mode, in which you must manage every aspect of your Space Program, including administration strategies, Crew Management, Reputation, as well as taking up Contracts to earn Funds and upgrade your Space Center Facilities (or repair them). \r\n\r\nAdd to this the ability to capture asteroids (a feature done in collaboration with NASA), Mining for resources out across the furthest reaches of the Solar System, Constructing Bases and Space Stations in and around other worlds; plus literally thousands of mods from a huge active modding community, all add up into the award-winning game that has taken the space sim genre by storm.\r\nKey Features\r\nThe Vehicle Assembly Building and the Space Plane Hangar allows players to build spacecraft out of any imaginable combination of parts. \r\nFully-fledged, Physics-based Space Flight Simulation ensures everything will fly (and crash) as it should. \r\nTake your Kerbal crew out of the ship and do Extra Vehicular Activities. \r\nFly out to Moons and other Planets. \r\nProcedural Terrain delivers detailed terrain at a vast scale. The Kerbal Planet is 600km in radius! \r\nMod-enabled, allows players to create new content and modify the game. \r\nShip systems. Keep an eye out for engine temperatures and fuel levels, and try not to explode. \r\nBuild ships with multiple stages, and jettison parts away as they burn out. \r\nFull control over the ship’s setup allows for complex ships and advanced functionality. \r\nDock spacecraft together to build Space Stations, Massive Starships, or even surface bases on other worlds. \r\nManage your crewmembers, hire them, and send them out into space and make them into heroes. \r\nResearch and Develop new technologies to advance your Space Program. \r\nTake on Missions to attract interest in your Space Program. \r\nDiscover new worlds and expand the scientific knowledge of Kerbalkind. \r\nExtract valuable resources from all over the solar system. \r\nAnd a whole lot more!\r\n', '23.99', '2016-05-17 00:00:00', 5, 'ksp.jpg'),
(47, 'Stardew Valley', 'You''ve inherited your grandfather''s old farm plot in Stardew Valley. Armed with hand-me-down tools and a few coins, you set out to begin your new life. Can you learn to live off the land and turn these overgrown fields into a thriving home? It won''t be easy. Ever since Joja Corporation came to town, the old ways of life have all but disappeared. The community center, once the town''s most vibrant hub of activity, now lies in shambles. But the valley seems full of opportunity. With a little dedication, you might just be the one to restore Stardew Valley to greatness! ', '14.99', '2016-05-16 00:00:00', 5, 'star.png'),
(48, 'Subnautica', 'After crash landing on an alien ocean world, the only way to go is down. Subnautica''s oceans range from sun drenched shallow coral reefs to treacherous deep-sea trenches. Manage your oxygen supply as you explore Kelp Forests, plateaus, reefs, and winding cave systems. The water teems with life: Some of it helpful, much of it harmful.', '11.99', '2016-02-15 00:00:00', 5, 'sub.jpg'),
(49, 'Garry''s Mod', 'Garry''s Mod is a physics sandbox. There aren''t any predefined aims or goals. We give you the tools and leave you to play. \r\n\r\nYou spawn objects and weld them together to create your own contraptions - whether that''s a car, a rocket, a catapult or something that doesn''t have a name yet - that''s up to you. You can do it offline, or join the thousands of players who play online each day. \r\n\r\nIf you''re not too great at construction - don''t worry! You can place a variety of characters in silly positions. But if you want to do more, we have the means.', '2.49', '2015-10-06 00:00:00', 5, 'gmod.png'),
(50, 'Verdun', 'Verdun is the first multiplayer FPS set in a realistic First World War setting. The merciless trench warfare offers a unique battlefield experience, immersing you and your squad into intense battles of attack and defense. \r\nThe game takes place on the western front between 1914 and 1918, in one of the bloodiest conflicts in world history. The developers were inspired by the infamous Battle of Verdun in 1916. The game offers 4 distinct game-modes: Frontlines, Attrition, Rifle Deathmatch, and Squad Defense. There are also many historically accurate features such as realistic WW1 weaponry, authentic uniforms, horrendous gore, and maps based on the real battlefields of France and Belgium. ', '10.99', '2016-05-16 00:00:00', 5, 'verdun.png'),
(51, 'Undertale', 'Welcome to UNDERTALE. In this RPG, you control a human who falls underground into the world of monsters. Now you must find your way out... or stay trapped forever. \r\n\r\n((Healthy Dog''s Warning: Game contains imagery that may be harmful to players with photosensitive epilepsy or similar condition.))', '4.99', '2016-05-17 00:00:00', 5, 'undertale.jpg'),
(52, 'DayZ', 'WARNING: THIS GAME IS EARLY ACCESS ALPHA. PLEASE DO NOT PURCHASE IT UNLESS YOU WANT TO ACTIVELY SUPPORT DEVELOPMENT OF THE GAME AND ARE PREPARED TO HANDLE WITH SERIOUS ISSUES AND POSSIBLE INTERRUPTIONS OF GAME FUNCTIONING. \r\n\r\nWelcome to the world of DayZ, hit by a new and presently unknown infection which has wiped out most of the world''s population. You are one of the few that have survived and now you must search this new wasteland in order to fight for your life against what is left of the indigenous population now infected with the disease. Go solo, team up with friends or take on the world, as you choose your path in this brutal and chilling landscape using whatever means you stumble upon to survive.', '14.99', '2016-03-22 00:00:00', 5, 'dayz.png'),
(53, 'The Forest', 'As the lone survivor of a passenger jet crash, you find yourself in a mysterious forest battling to stay alive against a society of cannibalistic mutants. \r\n\r\nBuild, explore, survive in this terrifying first person survival horror simulator.', '11.99', '2016-05-11 00:00:00', 5, 'forest.png'),
(54, 'Firewatch', 'Firewatch is a single-player first-person mystery set in the Wyoming wilderness. \r\n\r\nThe year is 1989. You are a man named Henry who has retreated from his messy life to work as a fire lookout in the Wyoming wilderness. Perched high atop a mountain, it’s your job to look for smoke and keep the wilderness safe. An especially hot, dry summer has everyone on edge. Your supervisor Delilah is available to you at all times over a small, handheld radio—your only contact with the world you''ve left behind. But when something strange draws you out of your lookout tower and into the forest, you’ll explore a wild and unknown environment, facing questions and making choices that can build or destroy the only meaningful relationship you have. \r\n\r\nA Note: Firewatch is a video game about adults having adult conversations about adult things. If you plan on playing with a younger gamer, that might be good to know going in.', '4.99', '2016-05-09 00:00:00', 5, 'watch.jpg'),
(55, 'Terraria', 'Dig, Fight, Explore, Build: The very world is at your fingertips as you fight for survival, fortune, and glory. Will you delve deep into cavernous expanses in search of treasure and raw materials with which to craft ever-evolving gear, machinery, and aesthetics? Perhaps you will choose instead to seek out ever-greater foes to test your mettle in combat? Maybe you will decide to construct your own city to house the host of mysterious allies you may encounter along your travels? \r\n\r\nIn the World of Terraria, the choice is yours! \r\n\r\nBlending elements of classic action games with the freedom of sandbox-style creativity, Terraria is a unique gaming experience where both the journey and the destination are completely in the player’s control. The Terraria adventure is truly as unique as the players themselves! \r\n\r\nAre you up for the monumental task of exploring, creating, and defending a world of your own? ', '2.99', '2015-12-14 00:00:00', 5, 'terraria.png');

-- --------------------------------------------------------

--
-- Table structure for table `statuses`
--

CREATE TABLE IF NOT EXISTS `statuses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `statuses`
--

INSERT INTO `statuses` (`id`, `name`) VALUES
(1, 'Pending'),
(2, 'Processing'),
(3, 'Dispatched');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`client`) REFERENCES `clients` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`status`) REFERENCES `statuses` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `orders_items`
--
ALTER TABLE `orders_items`
  ADD CONSTRAINT `orders_items_ibfk_1` FOREIGN KEY (`order`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_items_ibfk_2` FOREIGN KEY (`product`) REFERENCES `products` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
