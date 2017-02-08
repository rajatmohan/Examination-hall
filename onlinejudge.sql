-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 04, 2017 at 05:02 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `onlinejudge`
--

-- --------------------------------------------------------

--
-- Table structure for table `coding_questions`
--

CREATE TABLE IF NOT EXISTS `coding_questions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question` varchar(500) NOT NULL,
  `points` int(11) NOT NULL,
  `contest_id` int(11) NOT NULL,
  `time_limit` int(11) NOT NULL,
  `input_path` varchar(50) NOT NULL,
  `output_path` varchar(50) NOT NULL,
  `uploaded_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `negative_points` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `coding_questions`
--

INSERT INTO `coding_questions` (`id`, `question`, `points`, `contest_id`, `time_limit`, `input_path`, `output_path`, `uploaded_time`, `negative_points`) VALUES
(6, 'fefef', 32, 8, 1, 'inputs/57d41627cb103', 'outputs/57d41627cb10b', '2016-09-24 09:04:19', 0),
(7, 'fefef', 32, 8, 1, 'inputs/57d416c02325a', 'outputs/57d416c023264', '2016-09-24 09:04:19', 0),
(8, 'dddsfdf', 2323, 1, 4, 'inputs/57eb6cc45f21a', 'outputs/57eb6cc45f221', '2016-09-28 12:38:13', 0);

-- --------------------------------------------------------

--
-- Table structure for table `contests`
--

CREATE TABLE IF NOT EXISTS `contests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `starting_time` datetime NOT NULL,
  `ending_time` datetime NOT NULL,
  `description` varchar(1000) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `contest_name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `contests`
--

INSERT INTO `contests` (`id`, `name`, `starting_time`, `ending_time`, `description`, `user_id`, `created_time`) VALUES
(1, 'lunch time', '2016-09-29 10:17:19', '2016-09-30 20:54:00', 'djjhfgwfjhdfhj', 1, '2016-09-10 15:24:35'),
(2, 'mohan', '2016-11-16 01:00:00', '2016-11-23 01:00:00', 'jkjcdkjkjbvfjb\r\nrvtrbtyhtyh\r\ntythvjfvfv\r\ndnfjbrhfghrfh\r\n', 1, '2016-09-10 16:48:52'),
(5, 'sddwd', '2016-09-06 01:00:00', '2016-01-01 01:01:00', 'fefewfewfw', 1, '2016-09-10 17:05:01'),
(6, 'sub', '2016-01-01 01:00:00', '2016-01-01 13:59:00', 'jkhjkhuh', 1, '2016-09-10 17:28:21'),
(7, 'ffefef', '2016-09-18 01:00:00', '2016-01-01 01:00:00', 'dsfdfdsf', 1, '2016-09-10 18:11:00'),
(8, 'frfrfr', '2016-09-19 22:59:00', '2016-09-30 03:01:00', 'rgtgtgtgt\r\ngtgth55hyh', 1, '2016-09-24 08:50:58'),
(9, 'gtrgt', '2016-09-28 00:00:00', '2016-09-27 01:00:00', 'gtgthth', 1, '2016-09-24 08:58:09'),
(10, 'dhdhfvhgd', '2016-09-27 01:00:00', '2016-09-30 01:00:00', 'scvsghcvdhcvhgc\r\ncdcdcbd cbd c\r\ncdscdjcbshcb', 1, '2016-09-24 13:51:01'),
(11, 'rajat', '2016-09-30 01:00:00', '2016-09-30 16:01:00', 'fcgfcgfcg', 1, '2016-09-28 12:57:09'),
(13, 'lunchtime', '2016-12-23 21:56:00', '2016-12-31 18:56:00', 'kr gkjrgkjtg \r\ntg btklbtkbtbtt\r\ntgb ltbmklbkln tbktb\r\nemfvnjkfvnjkvnkjngjkbgbkjgbgbbgnvk mv dmfvdfmnv f vbgrbnjkc cd nfvnfvv', 1, '2016-12-02 13:45:25');

-- --------------------------------------------------------

--
-- Table structure for table `contest_register`
--

CREATE TABLE IF NOT EXISTS `contest_register` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `contest_id` int(11) NOT NULL,
  `participated` varchar(1) NOT NULL DEFAULT 'n',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `contest_register`
--

INSERT INTO `contest_register` (`id`, `user_id`, `contest_id`, `participated`) VALUES
(1, 1, 1, 'n'),
(2, 1, 2, 'n'),
(3, 1, 3, 'y'),
(4, 2, 1, 'n'),
(5, 1, 10, 'y'),
(6, 1, 8, 'y'),
(7, 1, 11, 'n');

-- --------------------------------------------------------

--
-- Table structure for table `contest_type`
--

CREATE TABLE IF NOT EXISTS `contest_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `type` (`type`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT AUTO_INCREMENT=4 ;

--
-- Dumping data for table `contest_type`
--

INSERT INTO `contest_type` (`id`, `type`) VALUES
(3, 'coding'),
(2, 'objective'),
(1, 'subjective');

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE IF NOT EXISTS `country` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `iso_code_2` varchar(2) NOT NULL,
  `iso_code_3` varchar(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=258 ;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`id`, `name`, `iso_code_2`, `iso_code_3`) VALUES
(1, 'Afghanistan', 'AF', 'AFG'),
(2, 'Albania', 'AL', 'ALB'),
(3, 'Algeria', 'DZ', 'DZA'),
(4, 'American Samoa', 'AS', 'ASM'),
(5, 'Andorra', 'AD', 'AND'),
(6, 'Angola', 'AO', 'AGO'),
(7, 'Anguilla', 'AI', 'AIA'),
(8, 'Antarctica', 'AQ', 'ATA'),
(9, 'Antigua and Barbuda', 'AG', 'ATG'),
(10, 'Argentina', 'AR', 'ARG'),
(11, 'Armenia', 'AM', 'ARM'),
(12, 'Aruba', 'AW', 'ABW'),
(13, 'Australia', 'AU', 'AUS'),
(14, 'Austria', 'AT', 'AUT'),
(15, 'Azerbaijan', 'AZ', 'AZE'),
(16, 'Bahamas', 'BS', 'BHS'),
(17, 'Bahrain', 'BH', 'BHR'),
(18, 'Bangladesh', 'BD', 'BGD'),
(19, 'Barbados', 'BB', 'BRB'),
(20, 'Belarus', 'BY', 'BLR'),
(21, 'Belgium', 'BE', 'BEL'),
(22, 'Belize', 'BZ', 'BLZ'),
(23, 'Benin', 'BJ', 'BEN'),
(24, 'Bermuda', 'BM', 'BMU'),
(25, 'Bhutan', 'BT', 'BTN'),
(26, 'Bolivia', 'BO', 'BOL'),
(27, 'Bosnia and Herzegovina', 'BA', 'BIH'),
(28, 'Botswana', 'BW', 'BWA'),
(29, 'Bouvet Island', 'BV', 'BVT'),
(30, 'Brazil', 'BR', 'BRA'),
(31, 'British Indian Ocean Territory', 'IO', 'IOT'),
(32, 'Brunei Darussalam', 'BN', 'BRN'),
(33, 'Bulgaria', 'BG', 'BGR'),
(34, 'Burkina Faso', 'BF', 'BFA'),
(35, 'Burundi', 'BI', 'BDI'),
(36, 'Cambodia', 'KH', 'KHM'),
(37, 'Cameroon', 'CM', 'CMR'),
(38, 'Canada', 'CA', 'CAN'),
(39, 'Cape Verde', 'CV', 'CPV'),
(40, 'Cayman Islands', 'KY', 'CYM'),
(41, 'Central African Republic', 'CF', 'CAF'),
(42, 'Chad', 'TD', 'TCD'),
(43, 'Chile', 'CL', 'CHL'),
(44, 'China', 'CN', 'CHN'),
(45, 'Christmas Island', 'CX', 'CXR'),
(46, 'Cocos (Keeling) Islands', 'CC', 'CCK'),
(47, 'Colombia', 'CO', 'COL'),
(48, 'Comoros', 'KM', 'COM'),
(49, 'Congo', 'CG', 'COG'),
(50, 'Cook Islands', 'CK', 'COK'),
(51, 'Costa Rica', 'CR', 'CRI'),
(52, 'Cote D''Ivoire', 'CI', 'CIV'),
(53, 'Croatia', 'HR', 'HRV'),
(54, 'Cuba', 'CU', 'CUB'),
(55, 'Cyprus', 'CY', 'CYP'),
(56, 'Czech Republic', 'CZ', 'CZE'),
(57, 'Denmark', 'DK', 'DNK'),
(58, 'Djibouti', 'DJ', 'DJI'),
(59, 'Dominica', 'DM', 'DMA'),
(60, 'Dominican Republic', 'DO', 'DOM'),
(61, 'East Timor', 'TL', 'TLS'),
(62, 'Ecuador', 'EC', 'ECU'),
(63, 'Egypt', 'EG', 'EGY'),
(64, 'El Salvador', 'SV', 'SLV'),
(65, 'Equatorial Guinea', 'GQ', 'GNQ'),
(66, 'Eritrea', 'ER', 'ERI'),
(67, 'Estonia', 'EE', 'EST'),
(68, 'Ethiopia', 'ET', 'ETH'),
(69, 'Falkland Islands (Malvinas)', 'FK', 'FLK'),
(70, 'Faroe Islands', 'FO', 'FRO'),
(71, 'Fiji', 'FJ', 'FJI'),
(72, 'Finland', 'FI', 'FIN'),
(74, 'France, Metropolitan', 'FR', 'FRA'),
(75, 'French Guiana', 'GF', 'GUF'),
(76, 'French Polynesia', 'PF', 'PYF'),
(77, 'French Southern Territories', 'TF', 'ATF'),
(78, 'Gabon', 'GA', 'GAB'),
(79, 'Gambia', 'GM', 'GMB'),
(80, 'Georgia', 'GE', 'GEO'),
(81, 'Germany', 'DE', 'DEU'),
(82, 'Ghana', 'GH', 'GHA'),
(83, 'Gibraltar', 'GI', 'GIB'),
(84, 'Greece', 'GR', 'GRC'),
(85, 'Greenland', 'GL', 'GRL'),
(86, 'Grenada', 'GD', 'GRD'),
(87, 'Guadeloupe', 'GP', 'GLP'),
(88, 'Guam', 'GU', 'GUM'),
(89, 'Guatemala', 'GT', 'GTM'),
(90, 'Guinea', 'GN', 'GIN'),
(91, 'Guinea-Bissau', 'GW', 'GNB'),
(92, 'Guyana', 'GY', 'GUY'),
(93, 'Haiti', 'HT', 'HTI'),
(94, 'Heard and Mc Donald Islands', 'HM', 'HMD'),
(95, 'Honduras', 'HN', 'HND'),
(96, 'Hong Kong', 'HK', 'HKG'),
(97, 'Hungary', 'HU', 'HUN'),
(98, 'Iceland', 'IS', 'ISL'),
(99, 'India', 'IN', 'IND'),
(100, 'Indonesia', 'ID', 'IDN'),
(101, 'Iran (Islamic Republic of)', 'IR', 'IRN'),
(102, 'Iraq', 'IQ', 'IRQ'),
(103, 'Ireland', 'IE', 'IRL'),
(104, 'Israel', 'IL', 'ISR'),
(105, 'Italy', 'IT', 'ITA'),
(106, 'Jamaica', 'JM', 'JAM'),
(107, 'Japan', 'JP', 'JPN'),
(108, 'Jordan', 'JO', 'JOR'),
(109, 'Kazakhstan', 'KZ', 'KAZ'),
(110, 'Kenya', 'KE', 'KEN'),
(111, 'Kiribati', 'KI', 'KIR'),
(112, 'North Korea', 'KP', 'PRK'),
(113, 'South Korea', 'KR', 'KOR'),
(114, 'Kuwait', 'KW', 'KWT'),
(115, 'Kyrgyzstan', 'KG', 'KGZ'),
(116, 'Lao People''s Democratic Republic', 'LA', 'LAO'),
(117, 'Latvia', 'LV', 'LVA'),
(118, 'Lebanon', 'LB', 'LBN'),
(119, 'Lesotho', 'LS', 'LSO'),
(120, 'Liberia', 'LR', 'LBR'),
(121, 'Libyan Arab Jamahiriya', 'LY', 'LBY'),
(122, 'Liechtenstein', 'LI', 'LIE'),
(123, 'Lithuania', 'LT', 'LTU'),
(124, 'Luxembourg', 'LU', 'LUX'),
(125, 'Macau', 'MO', 'MAC'),
(126, 'FYROM', 'MK', 'MKD'),
(127, 'Madagascar', 'MG', 'MDG'),
(128, 'Malawi', 'MW', 'MWI'),
(129, 'Malaysia', 'MY', 'MYS'),
(130, 'Maldives', 'MV', 'MDV'),
(131, 'Mali', 'ML', 'MLI'),
(132, 'Malta', 'MT', 'MLT'),
(133, 'Marshall Islands', 'MH', 'MHL'),
(134, 'Martinique', 'MQ', 'MTQ'),
(135, 'Mauritania', 'MR', 'MRT'),
(136, 'Mauritius', 'MU', 'MUS'),
(137, 'Mayotte', 'YT', 'MYT'),
(138, 'Mexico', 'MX', 'MEX'),
(139, 'Micronesia, Federated States of', 'FM', 'FSM'),
(140, 'Moldova, Republic of', 'MD', 'MDA'),
(141, 'Monaco', 'MC', 'MCO'),
(142, 'Mongolia', 'MN', 'MNG'),
(143, 'Montserrat', 'MS', 'MSR'),
(144, 'Morocco', 'MA', 'MAR'),
(145, 'Mozambique', 'MZ', 'MOZ'),
(146, 'Myanmar', 'MM', 'MMR'),
(147, 'Namibia', 'NA', 'NAM'),
(148, 'Nauru', 'NR', 'NRU'),
(149, 'Nepal', 'NP', 'NPL'),
(150, 'Netherlands', 'NL', 'NLD'),
(151, 'Netherlands Antilles', 'AN', 'ANT'),
(152, 'New Caledonia', 'NC', 'NCL'),
(153, 'New Zealand', 'NZ', 'NZL'),
(154, 'Nicaragua', 'NI', 'NIC'),
(155, 'Niger', 'NE', 'NER'),
(156, 'Nigeria', 'NG', 'NGA'),
(157, 'Niue', 'NU', 'NIU'),
(158, 'Norfolk Island', 'NF', 'NFK'),
(159, 'Northern Mariana Islands', 'MP', 'MNP'),
(160, 'Norway', 'NO', 'NOR'),
(161, 'Oman', 'OM', 'OMN'),
(162, 'Pakistan', 'PK', 'PAK'),
(163, 'Palau', 'PW', 'PLW'),
(164, 'Panama', 'PA', 'PAN'),
(165, 'Papua New Guinea', 'PG', 'PNG'),
(166, 'Paraguay', 'PY', 'PRY'),
(167, 'Peru', 'PE', 'PER'),
(168, 'Philippines', 'PH', 'PHL'),
(169, 'Pitcairn', 'PN', 'PCN'),
(170, 'Poland', 'PL', 'POL'),
(171, 'Portugal', 'PT', 'PRT'),
(172, 'Puerto Rico', 'PR', 'PRI'),
(173, 'Qatar', 'QA', 'QAT'),
(174, 'Reunion', 'RE', 'REU'),
(175, 'Romania', 'RO', 'ROM'),
(176, 'Russian Federation', 'RU', 'RUS'),
(177, 'Rwanda', 'RW', 'RWA'),
(178, 'Saint Kitts and Nevis', 'KN', 'KNA'),
(179, 'Saint Lucia', 'LC', 'LCA'),
(180, 'Saint Vincent and the Grenadines', 'VC', 'VCT'),
(181, 'Samoa', 'WS', 'WSM'),
(182, 'San Marino', 'SM', 'SMR'),
(183, 'Sao Tome and Principe', 'ST', 'STP'),
(184, 'Saudi Arabia', 'SA', 'SAU'),
(185, 'Senegal', 'SN', 'SEN'),
(186, 'Seychelles', 'SC', 'SYC'),
(187, 'Sierra Leone', 'SL', 'SLE'),
(188, 'Singapore', 'SG', 'SGP'),
(189, 'Slovak Republic', 'SK', 'SVK'),
(190, 'Slovenia', 'SI', 'SVN'),
(191, 'Solomon Islands', 'SB', 'SLB'),
(192, 'Somalia', 'SO', 'SOM'),
(193, 'South Africa', 'ZA', 'ZAF'),
(194, 'South Georgia &amp; South Sandwich Islands', 'GS', 'SGS'),
(195, 'Spain', 'ES', 'ESP'),
(196, 'Sri Lanka', 'LK', 'LKA'),
(197, 'St. Helena', 'SH', 'SHN'),
(198, 'St. Pierre and Miquelon', 'PM', 'SPM'),
(199, 'Sudan', 'SD', 'SDN'),
(200, 'Suriname', 'SR', 'SUR'),
(201, 'Svalbard and Jan Mayen Islands', 'SJ', 'SJM'),
(202, 'Swaziland', 'SZ', 'SWZ'),
(203, 'Sweden', 'SE', 'SWE'),
(204, 'Switzerland', 'CH', 'CHE'),
(205, 'Syrian Arab Republic', 'SY', 'SYR'),
(206, 'Taiwan', 'TW', 'TWN'),
(207, 'Tajikistan', 'TJ', 'TJK'),
(208, 'Tanzania, United Republic of', 'TZ', 'TZA'),
(209, 'Thailand', 'TH', 'THA'),
(210, 'Togo', 'TG', 'TGO'),
(211, 'Tokelau', 'TK', 'TKL'),
(212, 'Tonga', 'TO', 'TON'),
(213, 'Trinidad and Tobago', 'TT', 'TTO'),
(214, 'Tunisia', 'TN', 'TUN'),
(215, 'Turkey', 'TR', 'TUR'),
(216, 'Turkmenistan', 'TM', 'TKM'),
(217, 'Turks and Caicos Islands', 'TC', 'TCA'),
(218, 'Tuvalu', 'TV', 'TUV'),
(219, 'Uganda', 'UG', 'UGA'),
(220, 'Ukraine', 'UA', 'UKR'),
(221, 'United Arab Emirates', 'AE', 'ARE'),
(222, 'United Kingdom', 'GB', 'GBR'),
(223, 'United States', 'US', 'USA'),
(224, 'United States Minor Outlying Islands', 'UM', 'UMI'),
(225, 'Uruguay', 'UY', 'URY'),
(226, 'Uzbekistan', 'UZ', 'UZB'),
(227, 'Vanuatu', 'VU', 'VUT'),
(228, 'Vatican City State (Holy See)', 'VA', 'VAT'),
(229, 'Venezuela', 'VE', 'VEN'),
(230, 'Viet Nam', 'VN', 'VNM'),
(231, 'Virgin Islands (British)', 'VG', 'VGB'),
(232, 'Virgin Islands (U.S.)', 'VI', 'VIR'),
(233, 'Wallis and Futuna Islands', 'WF', 'WLF'),
(234, 'Western Sahara', 'EH', 'ESH'),
(235, 'Yemen', 'YE', 'YEM'),
(237, 'Democratic Republic of Congo', 'CD', 'COD'),
(238, 'Zambia', 'ZM', 'ZMB'),
(239, 'Zimbabwe', 'ZW', 'ZWE'),
(242, 'Montenegro', 'ME', 'MNE'),
(243, 'Serbia', 'RS', 'SRB'),
(244, 'Aaland Islands', 'AX', 'ALA'),
(245, 'Bonaire, Sint Eustatius and Saba', 'BQ', 'BES'),
(246, 'Curacao', 'CW', 'CUW'),
(247, 'Palestinian Territory, Occupied', 'PS', 'PSE'),
(248, 'South Sudan', 'SS', 'SSD'),
(249, 'St. Barthelemy', 'BL', 'BLM'),
(250, 'St. Martin (French part)', 'MF', 'MAF'),
(251, 'Canary Islands', 'IC', 'ICA'),
(252, 'Ascension Island (British)', 'AC', 'ASC'),
(253, 'Kosovo, Republic of', 'XK', 'UNK'),
(254, 'Isle of Man', 'IM', 'IMN'),
(255, 'Tristan da Cunha', 'TA', 'SHN'),
(256, 'Guernsey', 'GG', 'GGY'),
(257, 'Jersey', 'JE', 'JEY');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE IF NOT EXISTS `feedback` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `contest_id` int(11) NOT NULL,
  `feedback` varchar(150) NOT NULL,
  `feedback_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `user_id`, `contest_id`, `feedback`, `feedback_time`) VALUES
(1, 1, 1, 'feedback', '2016-09-29 11:27:25'),
(7, 1, 8, 'feedbaccxxfxfck', '2016-09-29 11:27:25'),
(8, 1, 1, 'dwqdwdsd\r\ndwfewfewf', '2016-09-29 11:27:25'),
(9, 1, 8, 'hvhnvhvhgv\nbbcbcg', '2016-09-29 15:01:46'),
(10, 1, 3, 'ugh', '2016-09-30 08:55:25'),
(11, 1, 3, 'ugh', '2016-09-30 08:55:26');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE IF NOT EXISTS `groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `permissions` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `permissions`) VALUES
(1, 'Standard user', ''),
(2, 'Administrator', '{\r\n"admin": 1,\r\n"creator": 1\r\n}'),
(3, 'Administrator', '{\r\n"admin":1,\r\n"creator":0\r\n}');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE IF NOT EXISTS `languages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) NOT NULL,
  `hck_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `name`, `hck_id`) VALUES
(1, 'C', 1),
(2, 'Python', 5),
(3, 'C++', 2);

-- --------------------------------------------------------

--
-- Table structure for table `mcq_questions`
--

CREATE TABLE IF NOT EXISTS `mcq_questions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question` varchar(500) NOT NULL,
  `noptions` int(11) NOT NULL DEFAULT '2',
  `option1` varchar(250) DEFAULT NULL,
  `option2` varchar(250) DEFAULT NULL,
  `option3` varchar(250) DEFAULT NULL,
  `option4` varchar(250) DEFAULT NULL,
  `option5` varchar(250) DEFAULT NULL,
  `contest_id` int(11) NOT NULL,
  `answer` int(11) NOT NULL,
  `points` int(11) NOT NULL,
  `image` varchar(50) NOT NULL,
  `uploaded_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `negative_points` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `mcq_questions`
--

INSERT INTO `mcq_questions` (`id`, `question`, `noptions`, `option1`, `option2`, `option3`, `option4`, `option5`, `contest_id`, `answer`, `points`, `image`, `uploaded_time`, `negative_points`) VALUES
(1, 'cdcbdnvdn', 3, 'dfd', 'dfds', 'dsf', NULL, NULL, 2, 1, 6767, '', '2016-09-24 09:03:21', 0),
(2, 'dbjebfjebfj', 2, 'bbjhbj', 'bb', NULL, NULL, NULL, 2, 1, 3434, '', '2016-09-24 09:03:21', 0),
(3, 'ddbdjejk', 2, 'jbj', 'jjbjbj', NULL, NULL, NULL, 3, 1, 111, '', '2016-09-24 09:03:21', 0),
(4, 'eb3bjh3hjr4', 2, 'b3mfbj', 'ebbjbfj', NULL, NULL, NULL, 3, 1, 4545, '', '2016-09-24 09:03:21', 0),
(5, 'What is your name', 2, 'eferf', 'feferf', NULL, NULL, NULL, 1, 1, 234, '', '2016-09-24 09:29:45', 0),
(6, 'bghbghnhgn', 3, 'grrg', 'gtg', 'rtgtg', NULL, NULL, 1, 2, 44545, '', '2016-09-24 09:31:10', 0),
(7, 'bgfbgbg', 2, 'frfgrtg', 'grgrtg', NULL, NULL, NULL, 1, 2, 343, '', '2016-09-24 09:32:28', 0),
(9, 'frfrrgt', 2, 'frefr', 'fefr', NULL, NULL, NULL, 1, 1, 332, '', '2016-09-24 09:35:06', 0),
(10, 'feefgrg', 2, 'refre', 'frfe3323', NULL, NULL, NULL, 1, 1, 324, '', '2016-09-24 09:36:17', 0),
(11, 'fgrtg', 2, 'gtr', 'reg', NULL, NULL, NULL, 1, 1, 343, '', '2016-09-24 09:37:38', 0),
(12, 'fefef', 2, 'edfref', 'efef33', NULL, NULL, NULL, 1, 1, 343, '', '2016-09-24 09:38:18', 0),
(13, 'ffef', 2, 'ferf', 'fef34', NULL, NULL, NULL, 1, 1, 434, 'image/57e5fc666c62f.jpg', '2016-09-24 09:39:10', 0),
(15, 'cgcfg', 3, 'trt', 'rttt', 'trtyrty', NULL, NULL, 1, 1, 3, 'image/57e605a2af0ac.jpg', '2016-09-24 09:42:18', 0),
(16, 'dfewdfsrajat', 2, 'fdfdf', 'ddfsdf', NULL, NULL, NULL, 6, 1, 2109, '', '2016-09-24 11:21:50', 0),
(18, 'gfdgd', 3, 'gfdg', 'fdg', 'gdfgd', NULL, NULL, 5, 2, 4543, '', '2016-09-24 14:23:33', 0),
(19, 'dwddwf', 2, '12131', '32132', NULL, NULL, NULL, 0, 1, 12, '', '2016-09-28 12:05:16', 0);

-- --------------------------------------------------------

--
-- Table structure for table `participants_answers`
--

CREATE TABLE IF NOT EXISTS `participants_answers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `answer` varchar(1000) NOT NULL,
  `type_id` int(11) NOT NULL,
  `contest_id` int(11) NOT NULL,
  `num_submissions` int(11) NOT NULL DEFAULT '1',
  `setter_points` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `participants_answers`
--

INSERT INTO `participants_answers` (`id`, `user_id`, `question_id`, `answer`, `type_id`, `contest_id`, `num_submissions`, `setter_points`) VALUES
(1, 1, 20, 'shdsavhdsad', 1, 1, 3, 113),
(2, 1, 5, '2', 2, 1, 2, 0),
(3, 1, 25, 'tvhv', 1, 10, 1, 0),
(4, 1, 8, 'tle', 3, 1, 2, 0),
(5, 1, 10, '2', 2, 1, 2, 0),
(6, 1, 15, '2', 2, 1, 1, 0),
(7, 1, 9, '2', 2, 1, 1, 0),
(8, 1, 3, '1', 2, 3, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `subjective_questions`
--

CREATE TABLE IF NOT EXISTS `subjective_questions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question` varchar(500) NOT NULL,
  `image` varchar(50) NOT NULL,
  `points` int(11) NOT NULL,
  `contest_id` int(11) NOT NULL,
  `uploaded_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `negative_points` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=27 ;

--
-- Dumping data for table `subjective_questions`
--

INSERT INTO `subjective_questions` (`id`, `question`, `image`, `points`, `contest_id`, `uploaded_time`, `negative_points`) VALUES
(3, 'fdfdf', '0', 54, 7, '2016-09-24 09:03:55', 0),
(4, 'ddfgfdg', '0', 343, 7, '2016-09-24 09:03:55', 0),
(6, 'gtrgtrgrg', '0', 4545, 6, '2016-09-24 10:26:46', 0),
(7, 'grtgtrg', '0', 545, 6, '2016-09-24 10:26:57', 0),
(11, 'hgchg', 'image/57e60b0bdb7d9.jpg', 8778, 6, '2016-09-24 10:41:39', 0),
(12, 'hgchg', 'image/57e60b654ebde.jpg', 8778, 6, '2016-09-24 10:43:09', 0),
(13, 'rgthtff', '', 433, 6, '2016-09-24 10:44:07', 0),
(14, 'gtgtgfefergr', 'image/57e60d6b3f983.jpg', 43, 6, '2016-09-24 10:51:22', 0),
(15, 'efrrgt', '', 3434, 6, '2016-09-24 13:35:24', 0),
(19, 'grcgrg', '', 45534, 5, '2016-09-24 14:23:01', 0),
(20, 'mohan', 'image/57ead03548416.jpg', 232, 1, '2016-09-28 01:31:57', 0),
(21, 'cwdwdwdf', '', 333, 0, '2016-09-28 12:05:04', 0),
(22, 'wdfdf', '', 32, 0, '2016-09-28 12:05:07', 0),
(23, 'dcdsfdfdsf', '', 223, 0, '2016-09-28 12:08:27', 0),
(24, 'rajat', '', 21323, 0, '2016-09-28 12:09:10', 0),
(25, 'rajat', '', 7878, 10, '2016-09-28 12:12:57', 0),
(26, 'fgyfgh', '', 67, 10, '2016-09-28 12:13:04', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `name` varchar(35) NOT NULL,
  `password` varchar(64) NOT NULL,
  `salt` varchar(32) NOT NULL,
  `joined` datetime DEFAULT CURRENT_TIMESTAMP,
  `email` varchar(50) NOT NULL,
  `last_logout` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `change_password` varchar(64) DEFAULT NULL,
  `group_id` int(11) NOT NULL DEFAULT '1',
  `country_id` int(11) NOT NULL DEFAULT '99',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `name`, `password`, `salt`, `joined`, `email`, `last_logout`, `change_password`, `group_id`, `country_id`) VALUES
(1, 'rajat', 'rajat mohan yadav', 'd2da81a21b446758403071a4d0a44eabf98df247264d0d25c0ff05e1f861fe14', '{­•G!öZÐ•€?Ø‘Èþ[Ñ÷ýSù¿†OàNë', '1996-09-21 05:04:02', 'rajat@example.local', '2017-01-09 22:57:05', 'fe957bd346b389f492507067f782bfc7a541014627bd065d6894d75435a6017e', 2, 99),
(2, 'mohan', 'mohan', '1fb9fcb7ea447ceee70b816c5ea1f33be7c7eef18b4e96a8092ae037bf4ac483', '*aD/}üÐˆ‘ˆ×WfÆ%•Ð(˜ÚËjŽoMÖÍ³óE', '2016-06-04 11:59:38', 'mohan@gmail.com', '2016-09-29 16:19:36', 'cb87e654d151aacc3cc76ab2626bdbdd3685f22af13f22821e614c43f10d38fd', 1, 99),
(3, 'yadav', 'yadav', 'da4c9ac9fd4f4531a4f6a0296f7cabdc6974d80fcbd68989a5dc5f43b74beba0', 'ðïÖZ†QÞH@€ÁT®0ó–µ	.«1`‹Û\\y1', '2016-06-18 19:32:52', '', '2016-07-10 18:22:31', NULL, 1, 99),
(5, 'pushkar', 'pushkar', '6c4d5d8759eaa7a90ebda44def10a270adcab3f8fc14017abf3267026d3c2b3f', '20ûG[×Qñ&ÚJC—}œÍ²£Ñt¾Þ3m¯¼¢wM', '2016-06-18 21:43:53', 'dhsgdhdh', '2016-07-10 18:22:31', NULL, 1, 99),
(6, 'mahim', 'mahim', 'b530875b9651fa94a75bd1afe8440ae71dc493ece5e23b968f86a87d759a8bcc', 'ß=©F¯°ÉÓ´×Ä¿–}9Teýªç$ \nñ´hù¯éË', '2016-06-27 17:54:54', 'hvhvghv', '2016-07-10 18:22:31', NULL, 1, 99),
(10, 'sanu', 'sanu', 'bf8c9e2a462592a22590ae66f919b04c2bdb61153682ab3e1d81c8bc54582829', 'Õ]‹ÄƒØþIÅ™•„_fçœß šê{p4^à‡#Çò', '2016-06-30 13:20:57', 'kjkhjhjhjk', '2016-07-10 18:22:31', NULL, 1, 99),
(11, 'deepak', 'deepak', '663d25f1d72c2b05e4bd7dab900d65e98f09602098c9ebb40efb5e4b79e8fbda', 'ÛÆë<þNƒŸË—\rè¡È˜	5OteÑ{MÓËmÐ•Ÿ', '2016-08-01 18:13:07', 'deepakbharti823@gmail.com', '2016-08-01 18:14:36', NULL, 1, 99),
(12, 'pulkit', 'pulkit', 'fa8b10f46db01655d1489e650ee2ae447061a4f59d434e90f96b8585f378f6bf', '9ñDÕRÛ0â1ý7gÿÍrtoxœÞM8Îý', '2016-09-07 18:47:45', 'gfghghg', '2016-09-07 18:47:45', NULL, 1, 99),
(13, 'dwefwef', 'ewfewfw', 'b86bc1977fcb5a1928045a891411fb5cc3e0d680cb7e90f8be2586b5466a9487', 'ì©¢Åt-!³B©	oj_ü7l´ÕvÅÓ²~Ùào–`', '2016-09-10 22:02:32', 'wefewfewfw', '2016-09-10 22:02:32', NULL, 1, 20),
(14, 'dsadsabdh', 'jabsjbsjdbshj', '109a308adc396b7f5cee9a90027ecf4200d4d546f4ff6ed85fd9161a7e79a781', 'a¥ŒeA°®²ù…òVûÊAC$Íÿ¿¡M‚bÍöùÔ', '2016-09-29 13:51:03', 'jbjhjjh@hsadh.com`', '2016-09-29 13:51:03', NULL, 1, 1),
(15, 'gegdywfdy', 'jahjdvhasvh', '00c2c6ea0068895acf37f9b5e0b458bc1e49e6727d9c36d2ab4291dea6ddfd0e', '=£O]aYü0~ÝpPúsq—(òK n™€ú¨n', '2016-09-29 16:34:14', 'vsdvsd@gmail.com', '2016-09-29 16:34:14', NULL, 1, 1),
(16, 'shruti', 'shruti', '0cc9acee378f7c9b8ed07243aa3d216b4616b7edd55c9282d2486f2d4e0c6258', '<ðø›^ê×]Gÿ\ZÈ{ÿìÝ(ü…`jÿŠîZ®*~Ù*¿', '2016-10-31 12:16:44', 'shrutiyadav999@gmail.com', '2016-10-31 12:16:44', NULL, 1, 27);

-- --------------------------------------------------------

--
-- Table structure for table `users_session`
--

CREATE TABLE IF NOT EXISTS `users_session` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `hash` varchar(64) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
