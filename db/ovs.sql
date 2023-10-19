-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 26, 2021 at 03:34 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ovs`
--

-- --------------------------------------------------------

--
-- Table structure for table `candidate`
--

CREATE TABLE `candidate` (
  `CandidateID` int(11) NOT NULL,
  `abc` varchar(1) NOT NULL,
  `Position` varchar(200) NOT NULL,
  `Party` varchar(100) NOT NULL,
  `FirstName` varchar(200) NOT NULL,
  `LastName` varchar(200) NOT NULL,
  `MiddleName` varchar(100) NOT NULL,
  `Gender` varchar(6) NOT NULL,
  `Year` varchar(100) NOT NULL,
  `Photo` varchar(200) NOT NULL,
  `Photo1` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `candidate`
--

INSERT INTO `candidate` (`CandidateID`, `abc`, `Position`, `Party`, `FirstName`, `LastName`, `MiddleName`, `Gender`, `Year`, `Photo`, `Photo1`) VALUES
(2, 'a', 'President', 'Nil', 'AKINFEMI', 'AKINYOOYE', 'Emmanuel', 'Male', '2021', 'upload/20210016.jpg', 'admin/upload/20210016.jpg'),
(3, 'b', 'Vice President', 'Nil', 'ADEYINKA', 'TEMILOLUWA', 'ADERINSOLA', 'Female', '2021', 'upload/20210012.jpg', 'admin/upload/20210012.jpg'),
(4, 'c', 'General Secretary', 'Nil', 'OBALOLUWA', 'IFEOLUWA', '', 'Male', '2021', 'upload/20210096.jpg', 'admin/upload/20210096.jpg'),
(5, 'd', 'Treasurer', 'Nil', 'AWOLOLA', 'PAUL', '', 'Male', '2021', 'upload/20210098.jpg', 'admin/upload/20210098.jpg'),
(6, 'e', 'Financial Secretary', 'Nil', 'MIRACLE', 'PETERS', '', 'Female', '2021', 'upload/20210013.jpg', 'admin/upload/20210013.jpg'),
(7, 'f', 'P.R.O', 'Nil', 'ADEYI', 'EMMANUEL', '', 'Male', '2021', 'upload/20210182.jpg', 'admin/upload/20210182.jpg'),
(8, 'a', 'President', 'Nil', 'ALABI', 'OPEYEMI', '', 'Female', '2021', 'upload/20210015.jpg', 'admin/upload/20210015.jpg'),
(9, 'b', 'Vice President', 'Nil', 'OLOWU', 'TOBI', '', 'Male', '2021', 'upload/20210668.jpg', 'admin/upload/20210668.jpg'),
(10, 'c', 'General Secretary', 'Nil', 'OYEYIGA', 'STEPHEN', '', 'Male', '2021', 'upload/20210530.jpg', 'admin/upload/20210530.jpg'),
(11, 'd', 'Treasurer', 'Nil', 'ALABA', 'OPAKUNLE', '', 'Female', '2021', 'upload/20210171.jpg', 'admin/upload/20210171.jpg'),
(12, 'e', 'Financial Secretary', 'Nil', 'DOROTHY', 'OKPEGBULAM', '', 'Female', '2021', 'upload/20210236.jpg', 'admin/upload/20210236.jpg'),
(13, 'f', 'P.R.O', 'Nil', 'LEKAN', 'ARAOYE', '', 'Male', '2021', 'upload/20210748.jpg', 'admin/upload/20210748.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `history_id` int(11) NOT NULL,
  `data` varchar(30) NOT NULL,
  `action` varchar(50) NOT NULL,
  `date` varchar(20) NOT NULL,
  `user` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`history_id`, `data`, `action`, `date`, `user`) VALUES
(1, 'Akinyooye Akinfemi', 'Login', '2021-08-25 16:12:02', 'admin'),
(2, 'AKINFEMI AKINYOOYE', 'Added Voter', '8/25/2021 16:15:13', 'admin'),
(3, 'AKINFEMI AKINYOOYE', 'Added Voter', '8/25/2021 16:23:30', 'admin'),
(4, 'AKINFEMI AKINYOOYE', 'Deleted Voter', '8/25/2021 16:23:42', 'admin'),
(5, 'Akinyooye Akinfemi', 'Login', '2021-08-25 16:26:32', 'admin'),
(6, 'AKINFEMI AKINYOOYE', 'Added Candidate', '2021-08-25 16:33:11', 'admin'),
(7, 'IBRAHIM A V M  ADEKUNLE', 'Edit Candidate', '2021-08-25 17:32:20', 'admin'),
(8, 'IBRAHIM A V M  ADEKUNLE', 'Edit Candidate', '2021-08-25 17:33:29', 'admin'),
(9, ' A V M  ADEKUNLE', 'Edit Candidate', '2021-08-25 17:33:39', 'admin'),
(10, 'IBRAHIM A V M  ADEKUNLE', 'Edit Candidate', '2021-08-25 17:36:36', 'admin'),
(11, ' A V M  ADEKUNLE', 'Edit Candidate', '2021-08-25 17:37:20', 'admin'),
(12, 'AKINFEMI AKINYOOYE', 'Edit Candidate', '2021-08-25 17:55:32', 'admin'),
(13, 'Akinyooye Akinfemi', 'Logout', '2021-08-25 18:13:50', 'admin'),
(14, 'Akinyooye Akinfemi', 'Login', '2021-08-25 18:39:23', 'admin'),
(15, 'AKINFEMI AKINYOOYE', 'Edit Candidate', '2021-08-25 18:39:58', 'admin'),
(16, 'AKINFEMI AKINYOOYE', 'Edit Candidate', '2021-08-25 18:42:55', 'admin'),
(17, 'AKINFEMI AKINYOOYE', 'Edit Candidate', '2021-08-25 18:43:32', 'admin'),
(18, 'AKINFEMI AKINYOOYE', 'Edit Candidate', '2021-08-25 18:45:02', 'admin'),
(19, 'Akinyooye Akinfemi', 'Logout', '2021-08-25 18:46:25', 'admin'),
(20, 'Akinyooye Akinfemi', 'Login', '2021-08-25 18:54:03', 'admin'),
(21, 'AKINFEMI AKINYOOYE', 'Edit Candidate', '2021-08-25 18:54:14', 'admin'),
(22, 'AKINFEMI AKINYOOYE', 'Edit Candidate', '2021-08-25 18:55:39', 'admin'),
(23, 'AKINFEMI AKINYOOYE', 'Deleted Candidate', '8/25/2021 18:55:40', 'Admin'),
(24, 'AKINFEMI AKINYOOYE', 'Added Candidate', '2021-08-25 18:58:04', 'admin'),
(25, 'AKINFEMI AKINYOOYE', 'Added Candidate', '2021-08-25 19:01:03', 'admin'),
(26, 'AKINFEMI AKINYOOYE', 'Added Candidate', '2021-08-25 19:02:29', 'admin'),
(27, 'Akinyooye Akinfemi', 'Logout', '2021-08-25 19:04:28', 'admin'),
(28, 'Akinyooye Akinfemi', 'Login', '2021-08-25 19:12:32', 'admin'),
(29, 'AKINFEMI AKINYOOYE', 'Deleted Candidate', '8/25/2021 19:12:35', 'Admin'),
(30, 'AKINFEMI AKINYOOYE', 'Added Candidate', '2021-08-25 19:14:12', 'admin'),
(31, 'ADEYINKA TEMILOLUWA', 'Added Candidate', '2021-08-25 19:15:29', 'admin'),
(32, 'OBALOLUWA IFEOLUWA', 'Added Candidate', '2021-08-25 19:15:47', 'admin'),
(33, 'OBALOLUWA IFEOLUWA', 'Edit Candidate', '2021-08-25 19:16:11', 'admin'),
(34, 'OBALOLUWA IFEOLUWA', 'Edit Candidate', '2021-08-25 19:17:56', 'admin'),
(35, 'AWOLOLA PAUL', 'Added Candidate', '2021-08-25 19:18:40', 'admin'),
(36, 'MIRACLE PETERS', 'Added Candidate', '2021-08-25 19:19:20', 'admin'),
(37, 'ADEYI EMMANUEL', 'Added Candidate', '2021-08-25 19:19:38', 'admin'),
(38, 'ADEYI EMMANUEL', 'Edit Candidate', '2021-08-25 19:19:54', 'admin'),
(39, 'Akinyooye Akinfemi', 'Logout', '2021-08-25 19:20:02', 'admin'),
(40, 'Akinyooye Akinfemi', 'Login', '2021-08-26 00:10:26', 'admin'),
(41, 'Akinyooye Akinfemi', 'Logout', '2021-08-26 00:20:08', 'admin'),
(42, 'Akinyooye Akinfemi', 'Login', '2021-08-26 00:50:00', 'admin'),
(43, 'ALABI OPEYEMI', 'Added Candidate', '2021-08-26 00:51:05', 'admin'),
(44, 'OLOWU TOBI', 'Added Candidate', '2021-08-26 00:51:42', 'admin'),
(45, 'OYEYIGA STEPHEN', 'Added Candidate', '2021-08-26 00:52:32', 'admin'),
(46, 'ALABA OPAKUNLE', 'Added Candidate', '2021-08-26 00:54:56', 'admin'),
(47, 'DOROTHY OKPEGBULAM', 'Added Candidate', '2021-08-26 00:55:50', 'admin'),
(48, 'LEKAN ARAOYE', 'Added Candidate', '2021-08-26 00:56:23', 'admin'),
(49, 'ALABA OPAKUNLE', 'Edit Candidate', '2021-08-26 00:59:13', 'admin'),
(50, 'MIRACLE PETERS', 'Edit Candidate', '2021-08-26 00:59:35', 'admin'),
(51, 'ALABI OPEYEMI', 'Edit Candidate', '2021-08-26 00:59:48', 'admin'),
(52, 'ADEYINKA TEMILOLUWA', 'Edit Candidate', '2021-08-26 01:00:02', 'admin'),
(53, 'Akinyooye Akinfemi', 'Logout', '2021-08-26 01:01:16', 'admin'),
(54, 'Akinyooye Akinfemi', 'Login', '2021-08-26 01:05:25', 'admin'),
(55, 'Akinyooye Akinfemi', 'Login', '2021-08-26 01:49:38', 'admin'),
(56, 'Akinyooye Akinfemi', 'Logout', '2021-08-26 02:33:58', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `User_id` int(11) NOT NULL,
  `FirstName` varchar(100) NOT NULL,
  `LastName` varchar(100) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `User_Type` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`User_id`, `FirstName`, `LastName`, `UserName`, `Password`, `User_Type`) VALUES
(2, 'Akinyooye', 'Akinfemi', 'admin', 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `voters`
--

CREATE TABLE `voters` (
  `VoterID` int(11) NOT NULL,
  `vid` varchar(6) NOT NULL,
  `FirstName` varchar(150) NOT NULL,
  `LastName` varchar(150) NOT NULL,
  `MiddleName` varchar(100) NOT NULL,
  `mobileno` varchar(20) NOT NULL,
  `Username` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `Year` varchar(100) NOT NULL,
  `Status` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `voters`
--

INSERT INTO `voters` (`VoterID`, `vid`, `FirstName`, `LastName`, `MiddleName`, `mobileno`, `Username`, `Password`, `Year`, `Status`) VALUES
(1, '8C8L7B', '', 'DOKUN ADENIRAN', '', '8037271621', '8C8L7B', '8037271621', '1980', 'Unvoted'),
(2, 'q3rEOJ', '', 'SIS TIWALADE FAPOUNDA', '', '8033209253', 'q3rEOJ', '8033209253', '1977', 'Unvoted'),
(3, 'SVFV5S', '', 'VIVIAN WILLIAMS', '', '8035785956', 'SVFV5S', '8035785956', '1980', 'Unvoted'),
(4, 'JI5Lgf', '', 'A V M  ADEKUNLE', '', '7087301986', 'JI5Lgf', '7087301986', '1975', 'Voted'),
(5, 'FzJ89h', '', 'BROS HANDREX BOTE', '', '8066330196', 'FzJ89h', '8066330196', '1975', 'Voted'),
(6, 'uaxlEd', '', 'BROS ONANEYE BIMBOLA', '', '8033287451', 'uaxlEd', '8033287451', '1975', 'Voted'),
(7, '8sAlMa', '', 'BROS WOLE OLANIRAN', '', '8033139887', '8sAlMa', '8033139887', '1977', 'Unvoted'),
(8, '79KswG', '', 'STAN FUNKE AKINYELE', '', '8169497448', '79KswG', '8169497448', '1974', 'Voted'),
(9, 'EECyB8', '', 'BROS OSHINJIRIN SEGUN', '', '8023209011', 'EECyB8', '8023209011', '1975', 'Voted'),
(10, 'OzZUYq', '', 'BROS ADESOJI ADESIDA', '', '7035017600', 'OzZUYq', '7035017600', '1975', 'Unvoted'),
(11, 'DaMQ3m', '', 'ADEKUNLE MUTAIRU', '', '7019861881', 'DaMQ3m', '7019861881', '1975', 'Unvoted'),
(12, 'U5UE1I', '', 'REMI OLOFIN', '', '8023601110', 'U5UE1I', '8023601110', '1978', 'Voted'),
(13, 'M3scnb', '', 'CHF. R. O. ADEBOLA', '', '7057558522', 'M3scnb', '7057558522', '1971', 'Unvoted'),
(14, '0IBBlM', '', 'LAMIDI AJIBOLA', '', '8102229981', '0IBBlM', '8102229981', '2004', 'Unvoted'),
(15, 'DFarP6', '', 'AGBOLA ABOLADE', '', '8033069562', 'DFarP6', '8033069562', '1975', 'Unvoted'),
(16, 'kvI9ic', '', 'OYERONKE ADEWOLE', '', '8025311418', 'kvI9ic', '8025311418', '1986', 'Unvoted'),
(17, 'GbSXmN', '', 'PAUL ODEBUNMI', '', '8142994986', 'GbSXmN', '8142994986', '1975', 'Unvoted'),
(18, 'VUUuPM', '', 'ITUNU FRED-CARRENA', '', '8098197061', 'VUUuPM', '8098197061', '1987', 'Unvoted'),
(19, 'Kea6gX', '', 'BOLA BAMGBOSE', '', '8033206365', 'Kea6gX', '8033206365', '1978', 'Unvoted'),
(20, 'Z0aLHp', '', 'ALH. SHERIFFAH BADMUS', '', '8091545001', 'Z0aLHp', '8091545001', '1979', 'Unvoted'),
(21, 'qmirsZ', '', 'KOMOLAFE CLEMENT ', '', '8032308357', 'qmirsZ', '8032308357', '1984', 'Unvoted'),
(22, 'QAtUgh', '', 'OLADEPO ADEBOLA', '', '', 'QAtUgh', '', '', 'Unvoted'),
(23, 'XBmsh6', '', 'BOLA ADELEKE OKESINA', '', '7065379537', 'XBmsh6', '7065379537', '1984', 'Voted'),
(24, 'wSJEDu', '', 'SANUSI LUKMAN', '', '', 'wSJEDu', '', '1975', 'Unvoted'),
(25, 'jAlCob', '', 'IBIKUNLE YISAU', '', '', 'jAlCob', '', '1984', 'Unvoted'),
(26, 'Ioj0HP', '', 'EMELDA UWAGA', '', '8062182695', 'Ioj0HP', '8062182695', '1980', 'Unvoted'),
(27, 'vnhiQg', '', 'DR ADENIYI AMUSAT ', '', '8023469575', 'vnhiQg', '8023469575', '1983', 'Unvoted'),
(28, '0EPgnJ', '', 'ABIDEEN OLADIMEJI', '', '8032235468', '0EPgnJ', '8032235468', '1979', 'Voted'),
(29, 'pCfhSL', '', 'BUKOLA AJILA', '', '8055211388', 'pCfhSL', '8055211388', '1980', 'Unvoted'),
(30, 'h9CoAR', '', 'SEYI MAKINDE', '', '8051537577', 'h9CoAR', '8051537577', '1985', 'Unvoted'),
(31, 'zZjRnW', '', 'ISIAKA GBADAMOSI', '', '8185581346', 'zZjRnW', '8185581346', '1974', 'Unvoted'),
(32, 'KNqMbW', '', 'BISI ODERINDE', '', '8062808701', 'KNqMbW', '8062808701', '1983', 'Unvoted'),
(33, 'X8DFUV', '', 'TAYO ASOLO', '', '61400364005', 'X8DFUV', '61400364005', '1980', 'Unvoted'),
(34, 'OJzIB1', '', 'YUSUF ISIAKA', '', '8058244462', 'OJzIB1', '8058244462', '1982', 'Unvoted'),
(35, 'eOhKXW', '', 'KUNLE OGUNSOLA', '', '8023278658', 'eOhKXW', '8023278658', '1979', 'Unvoted'),
(36, '3AFzSD', '', 'DUPE POPOOLA', '', '8023567545', '3AFzSD', '8023567545', '1976', 'Unvoted'),
(37, 'Ori9Um', '', 'FUNMILAYO KILA', '', '16475348386', 'Ori9Um', '16475348386', '1980', 'Unvoted'),
(38, 'ydmrwp', '', 'AMOS AROGUNDADE', '', '8033588541', 'ydmrwp', '8033588541', '1980', 'Unvoted'),
(39, 'r8VtjL', '', 'OLADEJI NURUDEEN', '', '8153110948', 'r8VtjL', '8153110948', '1989', 'Unvoted'),
(40, '0UDmvj', '', 'OLAWUSI SAHEED', '', '7039669149', '0UDmvj', '7039669149', '2000', 'Unvoted'),
(41, 'NVkKRg', '', 'FOURTHMAN KENNY', '', '8033587504', 'NVkKRg', '8033587504', '1995', 'Voted'),
(42, 'OW6IKI', '', 'GIGI GEORGE-TAYLOR ', '', '', 'OW6IKI', '', '1969', 'Unvoted'),
(43, 'MohBGv', '', 'CHRISTIE AKINSETE', '', '', 'MohBGv', '', '1972', 'Unvoted'),
(44, 'tOOVJ9', '', 'DAYO ABODERIN', '', '', 'tOOVJ9', '', '1974', 'Unvoted'),
(45, 'EkX5Ll', '', 'FOLAKE ADEBOLA', '', '', 'EkX5Ll', '', '1974', 'Unvoted'),
(46, 'FnoeN2', '', 'ROBERT ADEYEMO', '', '', 'FnoeN2', '', '1971', 'Unvoted'),
(47, 'LMjgtZ', '', 'EMMAN AKPOJOSEBE', '', '', 'LMjgtZ', '', '1971', 'Unvoted'),
(48, 'NFXx8C', '', 'SABITU', '', '', 'NFXx8C', '', '1971', 'Unvoted'),
(49, 'Q8H5c6', '', 'PHILLIPIAN FOLARIN YINKA ALALADE', '', '8130853220', 'Q8H5c6', '8130853220', '1980', 'Unvoted'),
(50, 'qiaBhF', '', 'THOMAS ONYEMENAM', '', '8033852980', 'qiaBhF', '8033852980', '1980', 'Unvoted'),
(51, 'iAF7Sg', '', 'MACULAY AUGUSTINE', '', '8062438233', 'iAF7Sg', '8062438233', '1978', 'Unvoted'),
(52, '5qQgXD', '', 'ABIODUN ALADETOYINBO', '', '8032909126', '5qQgXD', '8032909126', '1974', 'Unvoted'),
(53, 'l7Hwen', '', 'AKINTUNDE OLUYEMI ADEJUMO', '', '7030357390', 'l7Hwen', '7030357390', '1984', 'Unvoted'),
(54, 'tinYZE', '', 'OLADELE ADENIYI ', '', '', 'tinYZE', '', '1995', 'Unvoted'),
(55, '7y7MAH', '', 'OLAIDE OLADEBO', '', '8055665255', '7y7MAH', '8055665255', '1987', 'Unvoted'),
(56, 'wV5SYM', '', 'MONIKOLA BELLO', '', '8132686976', 'wV5SYM', '8132686976', '1980', 'Unvoted'),
(57, 'TL0WdS', '', 'MOJIRADE AINA AJALA', '', '8036764971', 'TL0WdS', '8036764971', '1980', 'Unvoted'),
(58, 'zUFrQX', '', 'ADEKUNLE A FUNLAYO ADIGUN ', '', '7062385599', 'zUFrQX', '7062385599', '1975', 'Unvoted'),
(59, 'gZF2TO', '', 'TINA DELE OLUWOLE ', '', '16137109006', 'gZF2TO', '16137109006', '1980', 'Unvoted'),
(60, 'TO0LlR', '', 'Arch DAYO AKANGBE', '', '8033697032', 'TO0LlR', '8033697032', '1983', 'Unvoted'),
(61, '2e9P4j', '', 'OLADIPUPO OLUBUNMI ', '', '8083438400', '2e9P4j', '8083438400', '1992', 'Unvoted'),
(62, 'nBptsh', '', 'JOKE MARTINS-OJO', '', '4.48E+11', 'nBptsh', '4.48E+11', '1972', 'Unvoted'),
(63, 'fv3p4r', '', 'KEHINDE OLUBAYO ', '', '8057980267', 'fv3p4r', '8057980267', '1992', 'Unvoted'),
(64, 'lnOPD6', '', 'DR TAJUDEEN OLADOSU', '', '8034712139', 'lnOPD6', '8034712139', '1974', 'Unvoted'),
(65, 'IM2mHD', '', 'PAST.  LATI SALAWU ', '', '22505644042', 'IM2mHD', '22505644042', '1980', 'Unvoted'),
(66, 'maN3zM', '', 'AJIBADE GBADEBO TAO', '', '8023242291', 'maN3zM', '8023242291', '1982', 'Unvoted'),
(67, 'qiQvHM', '', 'ADEKEMI FOLASHADE ADESHINA', '', '8062400620', 'qiQvHM', '8062400620', '2002', 'Unvoted'),
(68, 'fRjvF4', '', 'YEMISI AKINSOLA OBADIMEJI', '', '17734191956', 'fRjvF4', '17734191956', '1974', 'Unvoted'),
(69, 'ymCtPp', '', 'BISI AKINSOLA COSTA', '', '', 'ymCtPp', '', '1974', 'Unvoted'),
(70, 'UM6eG7', '', 'MAYOWA OJO', '', '8035551834', 'UM6eG7', '8035551834', '1996', 'Unvoted'),
(71, 'Ndtimy', '', 'OLUFEMI BABALOLA ', '', '', 'Ndtimy', '', '1991', 'Unvoted'),
(72, 'm4Y6Yz', '', 'OLAPADE TOSIN CHRIS', '', '', 'm4Y6Yz', '', '2000', 'Unvoted'),
(73, 'FXMdps', '', 'OLANREWAJU SEMIU ABIMBOLA', '', '', 'FXMdps', '', '2000', 'Unvoted'),
(74, 'fnsQWG', '', 'Prof OGUNTOLA SALIU ADETUNJI', '', '8033815807', 'fnsQWG', '8033815807', '1982', 'Unvoted'),
(75, 'OnzMGo', '', 'OTUNBA NIKE ONABANJO', '', '4.48E+11', 'OnzMGo', '4.48E+11', '1983', 'Unvoted'),
(76, 'KUTbyv', '', 'GBENGA ADEMISORO', '', '', 'KUTbyv', '', '1983', 'Unvoted'),
(77, 'Z3IPv0', '', 'KAYODE FOLORUNSO', '', '', 'Z3IPv0', '', '1983', 'Unvoted'),
(78, 'sG4adN', '', 'FESTUS ATOBATELE KAYODE', '', '', 'sG4adN', '', '1983', 'Unvoted'),
(79, 'B6EJJt', '', 'BANKE OPATOLA', '', '', 'B6EJJt', '', '1983', 'Unvoted'),
(80, 'SKnr3Y', '', 'MOWUMI LAWAL ', '', '', 'SKnr3Y', '', '1983', 'Unvoted'),
(81, 'lvuAHK', '', 'SHERIFAT BAOKU (TITI AKANDE) ', '', '8034080405', 'lvuAHK', '8034080405', '1983', 'Unvoted'),
(82, 'sH5ZIN', '', 'PROF. SOLA ADERINOLA', '', '', 'sH5ZIN', '', '1983', 'Unvoted'),
(83, 'zNu1Sd', '', 'REV. TONI A IKEJI', '', '', 'zNu1Sd', '', '1983', 'Unvoted'),
(84, 'Xz2CaK', '', 'BRO. TOYIN ALATISHE', '', '18604160916', 'Xz2CaK', '18604160916', '1975', 'Unvoted'),
(85, 'BQ2wLd', '', 'OLATUNJI ROTIMI ANNE', '', '8034295350', 'BQ2wLd', '8034295350', '1987', 'Unvoted'),
(86, 'xAwNw6', '', 'BRIG. GEN. CLEMENT APERE', '', '', 'xAwNw6', '', '1983', 'Unvoted'),
(87, '6EkzOf', '', 'PRINCE AKEEM O OLAGUNJU', '', '8085015800', '6EkzOf', '8085015800', '1980', 'Unvoted'),
(88, 'I9Oc17', '', 'BABALOLA OLANREWAJU ', '', '8037383401', 'I9Oc17', '8037383401', '1998', 'Unvoted'),
(89, 'FYgHpD', '', 'OLUSOGA BASOLA', '', '8088882081', 'FYgHpD', '8088882081', '1976', 'Unvoted'),
(90, 'gC4Hrh', '', 'OLANIPEKUN FUNKE BIMPE', '', '7069357308', 'gC4Hrh', '7069357308', '1992', 'Unvoted'),
(91, 'WrVIss', '', 'YINKA KOSILE', '', '', 'WrVIss', '', '1971', 'Unvoted'),
(92, 'SjSxLQ', '', 'ADEYANJU TAIBAT ABI', '', '', 'SjSxLQ', '', '1972', 'Unvoted'),
(93, 'Lasis1', '', 'ADELEYE SULAIMAN', '', '7089327892', 'Lasis1', '7089327892', '2001', 'Unvoted'),
(94, 'G5aY9m', '', 'ALH. KADIJAT BUSARI NEE SANNI', '', '', 'G5aY9m', '', '1983', 'Unvoted'),
(95, 'OinEF3', '', 'KOLAPO ISIAKA OLADEJI', '', '', 'OinEF3', '', '1983', 'Unvoted'),
(96, 'KFHkTB', '', 'LATIFAT TITILAYO OLADEJI NEE RAJI', '', '', 'KFHkTB', '', '1983', 'Unvoted'),
(97, 'ZEFjTN', '', 'AYODELE ADEOYE', '', '', 'ZEFjTN', '', '1983', 'Unvoted'),
(98, 'vC9s01', '', 'OLUWATOYIN RACHAEL OJO', '', '8023001218', 'vC9s01', '8023001218', '1993', 'Unvoted'),
(99, 'sULRvs', '', 'SEYI OYEWALE-AJAYI', '', '12812104066', 'sULRvs', '12812104066', '1993', 'Unvoted'),
(100, 'ZTrj13', '', 'BUKOLA OMOLOLA', '', '8130303004', 'ZTrj13', '8130303004', '1987', 'Unvoted'),
(101, 'qIxWkZ', '', 'REV. EMMANUEL OLADEJO ', '', '8069489850', 'qIxWkZ', '8069489850', '1980', 'Unvoted'),
(102, 'iJhcnC', '', 'BISHOP SAMUEL 1 OLUMAKINDE ALAWODE ', '', '8063038350', 'iJhcnC', '8063038350', '1984', 'Unvoted'),
(103, 'K3PiPr', '', 'REV. CHRISTIANAH OLUSEUN ALAWODE ', '', '7065066679', 'K3PiPr', '7065066679', '1986', 'Unvoted'),
(104, 'X9dgiA', '', 'KEHINDE ADELEKE OGUNLADE', '', '8145462751', 'X9dgiA', '8145462751', '1986', 'Unvoted'),
(105, 'O6AgUs', '', 'ENIOLA OLUWATOYIN NEE LADIPO ', '', '3.54E+11', 'O6AgUs', '3.54E+11', '1980', 'Unvoted'),
(106, 'NoVs61', '', 'ASABI FUNMILAYO KOLAWOLE ', '', '8072329350', 'NoVs61', '8072329350', '1980', 'Unvoted'),
(107, 'KQ2a6d', '', 'BOLADE DEBORAH FALOPE', '', '7060520087', 'KQ2a6d', '7060520087', '1987', 'Unvoted'),
(108, '5zhdYW', '', 'KAYODE FADIPE ', '', '8067945134', '5zhdYW', '8067945134', '1985', 'Unvoted'),
(109, 'QVIR5k', '', 'ADENIKE ADEBANJI NEE AKANBI ', '', '8053074418', 'QVIR5k', '8053074418', '1980', 'Unvoted'),
(110, 'AAQYwT', '', 'DR DANIEL OLUFEMI DURODOLA', '', '8036105028', 'AAQYwT', '8036105028', '1975', 'Unvoted'),
(111, 'bnDhFw', '', 'SAHEED ABANIKANDA', '', '8110068529', 'bnDhFw', '8110068529', '1995', 'Unvoted'),
(112, 'TXfpzc', '', 'MRS ABAYOMI SALAKO ', '', '', 'TXfpzc', '', '1972', 'Unvoted'),
(113, 'tdwQM4', '', 'ABIMBOLA MUIBAT ', '', '8057346628', 'tdwQM4', '8057346628', '1987', 'Unvoted'),
(114, 'EHxDwF', '', 'IBRAHIM ADESINA BELLO', '', '9072169248', 'EHxDwF', '9072169248', '1986', 'Unvoted'),
(115, 'u7dGRP', '', 'OWOLABI HAMMED ADEBAYO', '', '8036784400', 'u7dGRP', '8036784400', '1985', 'Unvoted'),
(116, 'uywXGS', '', 'SEFIU HASSAN ', '', '', 'uywXGS', '', '2007', 'Unvoted'),
(117, 'OgAjqs', '', 'NAFIU YAKUBU OYEMUYI', '', '8036229883', 'OgAjqs', '8036229883', '1998', 'Unvoted'),
(118, '9RdSYT', '', 'OMILANI JOSHUA ', '', '8033509995', '9RdSYT', '8033509995', '1970', 'Unvoted'),
(119, 'BwsEgC', '', 'OLAOSEBIKAN ZACHAEUS ', '', '8030778883', 'BwsEgC', '8030778883', '1970', 'Unvoted'),
(120, 'bJEQKS', '', 'MRS TOYIN POPOOLA NEE AWOJODU', '', '8132336680', 'bJEQKS', '8132336680', '1983', 'Unvoted'),
(121, 'fgq5Ex', '', 'OMOLAJA OLUWASEGUN', '', '8069096102', 'fgq5Ex', '8069096102', '2004', 'Unvoted'),
(122, 'QUz1IY', '', 'ADEJOKE VICTORIA FABAYO NEE AKANBI', '', '8181890195', 'QUz1IY', '8181890195', '1989', 'Unvoted'),
(123, 'PlGDUn', '', 'AJAYI OLAJUMOKE ONIZE NEE ALABI', '', '8052022838', 'PlGDUn', '8052022838', '1991', 'Unvoted'),
(124, 'q66Qrx', '', 'OLUNIKE ESTHER OLAMOYEGUN BADMUS', '', '8053777395', 'q66Qrx', '8053777395', '1988', 'Unvoted'),
(125, 'bi3yot', '', 'FADARE SAMSON', '', '8037996040', 'bi3yot', '8037996040', '1997', 'Unvoted'),
(126, 'mQW5B8', '', 'SHONEYE OLAJUMOKE ', '', '8060305659', 'mQW5B8', '8060305659', '1998', 'Unvoted'),
(127, '1j2UMZ', '', 'SALAM RIDWAN AYODEJI', '', '8052133500', '1j2UMZ', '8052133500', '1995', 'Unvoted'),
(128, 'sTGOmC', '', 'BABATUNDE OLALEKAN', '', '', 'sTGOmC', '', '', 'Unvoted'),
(129, '7Zl5zw', '', 'EVANG AKINLOLU OLANIRAN', '', '', '7Zl5zw', '', '1983', 'Unvoted'),
(130, '4EHFKZ', '', 'PAST FEMI AKINWARE', '', '', '4EHFKZ', '', '1983', 'Unvoted'),
(131, 'k9y38z', '', 'NIYI OBEMBE', '', '', 'k9y38z', '', '1983', 'Unvoted'),
(132, 'CCDSoI', '', 'KAFILAT F OMOBOADE NEE OLADIPO', '', '', 'CCDSoI', '', '1983', 'Unvoted'),
(133, 'p5hMZy', '', 'SADIA A SERIKI NEE ADISA', '', '', 'p5hMZy', '', '1983', 'Unvoted'),
(134, 'Hcn0Vp', '', 'ALALADE OLUROPO EMMANUEL', '', '8155644380', 'Hcn0Vp', '8155644380', '1992', 'Unvoted'),
(135, 'GEVsNt', '', 'SEGUN OKUYELU', '', '8055309840', 'GEVsNt', '8055309840', '1974', 'Unvoted'),
(136, 'E03Pdf', '', 'HADJ. AHMED ADESINA LAWAL', '', '', 'E03Pdf', '', '1983', 'Unvoted'),
(137, '6OET1j', '', 'HADJ. BILI TOYIN MUSTAPHA NEE LAMIDI', '', '', '6OET1j', '', '1983', 'Unvoted'),
(138, 'BXN9I9', '', 'RASAQ OLATUNJI GBADAMOSI', '', '8038273358', 'BXN9I9', '8038273358', '1978', 'Unvoted'),
(139, 'wZ34v5', '', 'OLADINI ELIZABETH AYODELE', '', '8023247260', 'wZ34v5', '8023247260', '1986', 'Unvoted'),
(140, 'zQHPr6', '', 'ALABI, BUKOLA TEMITAYO', '', '', 'zQHPr6', '', '1994', 'Unvoted'),
(141, 'KGsOjp', '', 'PHILLIPIAN BIODUN KUNMI ELLIOTT', '', '+1 346 270 1521', 'KGsOjp', '+1 346 270 1521', '1975', 'Unvoted'),
(142, 'CzGjDb', '', 'PHILLIPIAN TUNDE ADENOLA', '', '1 336 9082556', 'CzGjDb', '1 336 9082556', '1979', 'Unvoted'),
(143, 'kysw5E', '', 'PHILLIPIAN EZEKIEL ONI', '', '', 'kysw5E', '', '1979', 'Unvoted'),
(144, 'mB0PcW', '', 'OLAYIWOLA SEGUN JACOB', '', '4.48E+11', 'mB0PcW', '4.48E+11', '1992', 'Unvoted'),
(145, 'Wr0q1x', '', 'LAWAL JIMOH OLADEJI', '', '2.35E+12', 'Wr0q1x', '2.35E+12', '1992', 'Unvoted'),
(146, 'cEg4Ay', '', 'ADEWUSI MUTIU', '', '', 'cEg4Ay', '', '1984', 'Unvoted'),
(147, 'cuED0h', '', 'ADEKUNLE ADEDEJI MICHAEL', '', '8056202170', 'cuED0h', '8056202170', '1992', 'Unvoted'),
(148, 'OM5p7Q', '', 'AKINWALE TEMITOPE AYONI', '', '8035233563', 'OM5p7Q', '8035233563', '1992', 'Unvoted'),
(149, 'igLL6B', '', 'OYENEYE BUNMI', '', '8060372662', 'igLL6B', '8060372662', '1992', 'Unvoted'),
(150, 'U6syK5', '', 'ADEKUNLE GBEMISOLA ELIZABETH', '', '9.67E+11', 'U6syK5', '9.67E+11', '1992', 'Unvoted'),
(151, 't7aofL', '', 'TITI OMOTARA', '', '', 't7aofL', '', '1978', 'Unvoted'),
(152, '5dmQRC', '', 'BELLO KAYODE LANRE', '', '817474563', '5dmQRC', '817474563', '1994', 'Unvoted'),
(153, 'JypxGn', '', 'GOKE ODUJOLE', '', '16513993796', 'JypxGn', '16513993796', '1982', 'Unvoted'),
(154, 'QElzyj', '', 'OLAKUNLE FAMEWO', '', '', 'QElzyj', '', '1994', 'Unvoted'),
(155, 'azff5o', '', 'ADERIBIGBE HAKEEM NIYI', '', '7018074396', 'azff5o', '7018074396', '1992', 'Unvoted'),
(156, 'rQ89M5', '', 'OGUNWALE BABAFEMI KEHINDE', '', '8028351292', 'rQ89M5', '8028351292', '1992', 'Unvoted'),
(157, 'fs5SDY', '', 'IDOWU SUMBO', '', '8023788826', 'fs5SDY', '8023788826', '1992', 'Unvoted'),
(158, 'ZTJVSE', '', 'EGBELANA SEGUN', '', '8050798730', 'ZTJVSE', '8050798730', '1992', 'Unvoted'),
(159, 'iWg1Vf', '', 'PHILLIPIAN DEBORAH OLUYEMISI COLLINS', '', '8037166168', 'iWg1Vf', '8037166168', '1988', 'Unvoted'),
(160, '3XtGWS', '', 'PHILLIPIAN KEHINDE ADENIYI AKINYEMI', '', '8070679494', '3XtGWS', '8070679494', '1981', 'Unvoted'),
(161, 'uyBrOK', '', 'PHILLIPIAN DUPE OLADEINDE', '', '7033960380', 'uyBrOK', '7033960380', '1980', 'Unvoted'),
(162, 'Muby9S', '', 'PHILLIPIAN EMIOLA MOTIRADE', '', '8057431389', 'Muby9S', '8057431389', '1986', 'Unvoted'),
(163, '0sqcCK', '', 'ZAINAB OLAYINKA OLAYIWOLA', '', '9067384589', '0sqcCK', '9067384589', '2003', 'Unvoted'),
(164, 'F4DJ9t', '', 'TUNDE OGUNDAIRO (ARCHIVER)', '', '9032889592', 'F4DJ9t', '9032889592', '1994', 'Unvoted'),
(165, 'bQqBwk', '', 'FUNMILAYO OGEBULE', '', '', 'bQqBwk', '', '1994', 'Unvoted'),
(166, '6Zz0eg', '', 'IDAYAT KOLAWOLE', '', '', '6Zz0eg', '', '1994', 'Unvoted'),
(167, 'DRfT4h', '', 'PHILLIPIAN NIKE AJAYI', '', '7084525099', 'DRfT4h', '7084525099', '1976', 'Unvoted'),
(168, 'mdRIXV', '', 'KEHINDE OLUBISI', '', '', 'mdRIXV', '', '1994', 'Unvoted'),
(169, 'D1gSp8', '', 'ADEKUNLE ABIODUN BUKOLA', '', '', 'D1gSp8', '', '1994', 'Unvoted'),
(170, 'LC7Y3u', '', 'PHILLIPIAN ADEJOKE SOTONWA', '', '8033213058', 'LC7Y3u', '8033213058', '1976', 'Unvoted'),
(171, 'aYWM3L', '', 'PHILLIPIAN ADESHINA OLAJIRE', '', '8057895444', 'aYWM3L', '8057895444', '1994', 'Unvoted'),
(172, 'VxbSgv', '', 'PHILLIPIAN JIMOH FASANSI', '', '', 'VxbSgv', '', '1979', 'Unvoted'),
(173, 'L9vnRD', '', 'SAHEEDAT AMOKE ADELEKE', '', '', 'L9vnRD', '', '1998', 'Unvoted'),
(174, 'Dn7rD6', '', 'PHILLIPIAN VERONICA OKEKE', '', '8062158396', 'Dn7rD6', '8062158396', '1975', 'Unvoted'),
(175, 'MWT4Nw', '', 'PHILLIPIAN ADEBAYO ADEKUNLE', '', '8133455250', 'MWT4Nw', '8133455250', '1991', 'Unvoted'),
(176, 'zkq8RK', '', 'SADARE WASIU OLAWALE', '', '8037626447', 'zkq8RK', '8037626447', '1994', 'Unvoted'),
(177, 'GLtlqE', '', 'OYETUNJI BAMIDELE', '', '', 'GLtlqE', '', '1994', 'Unvoted'),
(178, 'K3KkRK', '', 'BOLATITO AKINYEMI', '', '', 'K3KkRK', '', '1994', 'Unvoted'),
(179, 'rUxurq', '', 'OMIDIJI OLUWADAMILARE', '', '7033870031', 'rUxurq', '7033870031', '2004', 'Unvoted'),
(180, '1gGUDR', '', 'ROTIMI ONI', '', '', '1gGUDR', '', '1973', 'Unvoted'),
(181, 'rJJnog', '', 'PHILLIPIAN ENIOLA AIBUKI', '', '8072949084', 'rJJnog', '8072949084', '1976', 'Unvoted'),
(182, 'XCooTK', '', 'PHILLIPIAN ANTHONY ADURA SOTONWA', '', '+44 7734 778151', 'XCooTK', '+44 7734 778151', '1976', 'Unvoted'),
(183, '14SbUD', '', 'ISMAIL OLUSEGUN AKINWANDE', '', '8182639714', '14SbUD', '8182639714', '1984', 'Unvoted'),
(184, '5ye51x', '', 'FLORENCE ALABI', '', '4.48E+11', '5ye51x', '4.48E+11', '1984', 'Unvoted'),
(185, 'NAOTlb', '', 'PHILLIPIAN GBENGA ADEOGUN', '', '', 'NAOTlb', '', '1979', 'Unvoted'),
(186, 'nYpA9I', '', 'PHILLIPIAN BINIYAMINU HAMEED', '', '8036246777', 'nYpA9I', '8036246777', '1992', 'Unvoted'),
(187, 'D5cKMn', '', 'PHILLIPIAN SAHEED ADEREMI ADEGBENRO', '', '8064648303', 'D5cKMn', '8064648303', '1995', 'Unvoted'),
(188, 'ui9q9z', '', 'PHILLIPIAN ADENIYI ROTIMI OLUSEGUN', '', '8033796326', 'ui9q9z', '8033796326', '1976', 'Unvoted'),
(189, 'rU1XWv', '', 'PHILLIPIAN OLUBUKOLA OLADIPO', '', '8034066692', 'rU1XWv', '8034066692', '1985', 'Unvoted'),
(190, 'oxwThf', '', 'PHILLIPIAN IYABO AKINBO', '', '8037157761', 'oxwThf', '8037157761', '1985', 'Unvoted'),
(191, 'PVPOep', '', 'PHILLIPIAN KEMI SALAWU', '', '8161631899', 'PVPOep', '8161631899', '1985', 'Unvoted'),
(192, 'Njbp0x', '', 'PHILLIPIAN FOLASAYO SEGUN TITUS', '', '', 'Njbp0x', '', '1985', 'Unvoted'),
(193, 'w240Vp', '', 'PHILLIPIAN ISIAKA ISOLA ADEKUNLE', '', '', 'w240Vp', '', '1985', 'Unvoted'),
(194, '4O8b7L', '', 'PHILLIPIAN ISOLA BOLANLE TOKUNBO', '', '', '4O8b7L', '', '1985', 'Unvoted'),
(195, 'c4DYY9', '', 'ADEPOJU ADEKOLA', '', '', 'c4DYY9', '', '2012', 'Unvoted'),
(196, '9kzocR', '', 'OKUNOLA QUADRI', '', '', '9kzocR', '', '2012', 'Unvoted'),
(197, 'iJ5gdr', '', 'OLUDARE MAYOWA', '', '', 'iJ5gdr', '', '2012', 'Unvoted'),
(198, 'xz59tX', '', 'ADENIJI SAMUEL', '', '', 'xz59tX', '', '2012', 'Unvoted'),
(199, 'iJMlKO', '', 'ALLIU JOSHUA', '', '', 'iJMlKO', '', '2012', 'Unvoted'),
(200, 'Xlpje4', '', 'OYETUNDE JUBRIL', '', '', 'Xlpje4', '', '2012', 'Unvoted'),
(201, 'mI0ZEH', '', 'OLARINRE SEGUN', '', '', 'mI0ZEH', '', '2012', 'Unvoted'),
(202, 'bpux6S', '', 'MATTHEW OLUWASEUN', '', '', 'bpux6S', '', '2012', 'Unvoted'),
(203, '5xqpSP', '', 'PHILLIPIAN ADEKUNLE TOLULOPE IDOWU', '', '8030648655', '5xqpSP', '8030648655', '2000', 'Unvoted'),
(204, '72ZwHN', '', 'PHILLIPIAN FOLUKE IYANDA', '', '8033953407', '72ZwHN', '8033953407', '1985', 'Unvoted'),
(205, 'IUwt6c', '', 'PHILLIPIAN SEYE POPOOLA', '', '7033311941', 'IUwt6c', '7033311941', '1985', 'Unvoted'),
(206, 'At6oP0', '', 'PHILLIPIAN OLALEKAN ODUNIYI', '', '', 'At6oP0', '', '1987', 'Unvoted'),
(207, '6KIiyi', '', 'PHILLIPIAN MOJISOLA ALENKHE', '', '8023443392', '6KIiyi', '8023443392', '1985', 'Unvoted'),
(208, 'nukwvL', '', 'AYINDE ADEBOLA BIDEMI NEE ADEGBAYIBI', '', '8062312127', 'nukwvL', '8062312127', '2000', 'Unvoted'),
(209, 'jUhzYF', '', 'ADESIYAN ABDULKABIR ADEKUNLE', '', '8149736643', 'jUhzYF', '8149736643', '1992', 'Unvoted'),
(210, 'xqxpMm', '', 'PHILLIPIAN SINA SALAMI', '', '', 'xqxpMm', '', '1979', 'Unvoted'),
(211, 'P1KRDD', '', 'PHILLIPIAN TOYIN TAIWO', '', '', 'P1KRDD', '', '1979', 'Unvoted'),
(212, 'ZIahYD', '', 'PHILLIPIAN TAJU RABIU', '', '', 'ZIahYD', '', '1979', 'Unvoted'),
(213, 'KqhvF9', '', 'PHILLIPIAN TESILIM ALIMI', '', '', 'KqhvF9', '', '1979', 'Unvoted'),
(214, 'YR6EJN', '', 'PHILLIPIAN OYELERE ABIOSUN', '', '', 'YR6EJN', '', '1979', 'Unvoted'),
(215, 'vI2g82', '', 'PHILLIPIAN JELILI AJANI', '', '8050574746', 'vI2g82', '8050574746', '1985', 'Unvoted'),
(216, 'TcFkCJ', '', 'LAWAL IBRAHIM ADEMOLA', '', '8039204837', 'TcFkCJ', '8039204837', '2002', 'Unvoted'),
(217, '2OS4WM', '', 'PHILLIPIAN OYEDAPO SEUN', '', '8038121953', '2OS4WM', '8038121953', '2000', 'Unvoted'),
(218, 't2ZwVu', '', 'PHILLIPIAN SUNDAY OYADIRIN', '', '', 't2ZwVu', '', '1996', 'Unvoted'),
(219, '37OARE', '', 'PHILLIPIAN SADARE ISMAIL', '', '', '37OARE', '', '2000', 'Unvoted'),
(220, 'RWE1Fs', '', 'PHILLIPIAN SANU OGUNTADE', '', '', 'RWE1Fs', '', '1994', 'Unvoted'),
(221, 'iPN7QT', '', 'PHILLIPIAN TAIWO OGUNDIRAN', '', '', 'iPN7QT', '', '1994', 'Unvoted'),
(222, 'utcMGk', '', 'PHILLIPIAN TITILAYO IBIKUNLE', '', '8055818620', 'utcMGk', '8055818620', '1994', 'Unvoted'),
(223, 'a8441M', '', 'PHILLIPIAN DEMOLA ADERIBIGBE', '', '', 'a8441M', '', '1994', 'Unvoted'),
(224, 'EA1Cxq', '', 'PHILLIPIAN TOMI IYANDA', '', '', 'EA1Cxq', '', '1994', 'Unvoted'),
(225, '8sJf0k', '', 'PHILLIPIAN NURUDEEN RAHEEM', '', '', '8sJf0k', '', '2000', 'Unvoted'),
(226, 'RBzCVm', '', 'PHILLIPIAN ABIODUN ADEDIJI', '', '', 'RBzCVm', '', '2000', 'Unvoted'),
(227, 'mHb4Wi', '', 'PHILLIPIAN ALASE BIMBO BADMUS', '', '9098140767', 'mHb4Wi', '9098140767', '1992', 'Unvoted'),
(228, '8zGJGd', '', 'PHILLIPIAN AKIOYE BUKOLA L', '', '8058049865', '8zGJGd', '8058049865', '1987', 'Unvoted'),
(229, 'zVC4SH', '', 'PHILLIPIAN BAMIDELE BUSAYO OMIYALE', '', '7031022285', 'zVC4SH', '7031022285', '1993', 'Unvoted'),
(230, 'Rgv1ac', '', 'PHILLIPIAN MAKINDE WASIU ADEGBEMIGA', '', '8033871058', 'Rgv1ac', '8033871058', '1991', 'Unvoted'),
(231, 'Zu8NGH', '', 'PHILLIPIAN OTEGBADE OLABIMPE', '', '', 'Zu8NGH', '', '1987', 'Unvoted'),
(232, 'wLlqgr', '', 'PASTOR MRS KEHINDE OYENIRAN NEE ISHOLA', '', '', 'wLlqgr', '', '1983', 'Unvoted'),
(233, '7WsT3X', '', 'PHILLIPIAN TAYO OLAWORE', '', '', '7WsT3X', '', '1983', 'Unvoted'),
(234, 'kjsIUY', '', 'PROPHETESS SOLA CAMPBELL', '', '', 'kjsIUY', '', '1985', 'Unvoted'),
(235, 'vNZbyd', '', 'PHILLIPIAN FEMI FABUNMI', '', '8143840905', 'vNZbyd', '8143840905', '1996', 'Unvoted'),
(236, 'kgiC0L', '', 'PHILLIPIAN KUNLE BELLO', '', '8039154810', 'kgiC0L', '8039154810', '1994', 'Unvoted'),
(237, 'aVO5ZK', '', 'PHILLIPIAN FUNMILAYO SAMUEL-GOLD', '', '8036789063', 'aVO5ZK', '8036789063', '1993', 'Unvoted'),
(238, 'Gx4wBV', '', 'PHILLIPIAN LOLA AKINOSUN', '', '8036956069', 'Gx4wBV', '8036956069', '1993', 'Unvoted'),
(239, 'TiwaZX', '', 'PHILLIPIAN FASOLA YEMI', '', '8124821689', 'TiwaZX', '8124821689', '1994', 'Unvoted'),
(240, 'xDFa1Z', '', 'PHILLIPIAN ADESHINA KILADESE', '', '8039216273', 'xDFa1Z', '8039216273', '1997', 'Unvoted'),
(241, 'TeKkyW', '', 'PHILLIPIAN OLUNIKE ESTHER BADMUS', '', '7032703378', 'TeKkyW', '7032703378', '1993', 'Unvoted'),
(242, 'qrLc3P', '', 'PHILLIPIAN OLANIRAN MOYO', '', '7033981603', 'qrLc3P', '7033981603', '1993', 'Unvoted'),
(243, '7ufr3n', '', 'PHILLIPIAN LAIDE ADELAKUN', '', '9086509494', '7ufr3n', '9086509494', '1997', 'Unvoted'),
(244, '0BG1Bh', '', 'PHILLIPIAN DAOLAPO KEHINDE', '', '8033694578', '0BG1Bh', '8033694578', '1999', 'Unvoted'),
(245, 'VC7egc', '', 'PHILLIPIAN YINKA JUNAID', '', '8037267870', 'VC7egc', '8037267870', '1994', 'Unvoted'),
(246, 'vDLrZw', '', 'PHILLIPIAN FATANMI YINKA', '', '7084528097', 'vDLrZw', '7084528097', '1994', 'Unvoted'),
(247, 'XRRzwL', '', 'PHILLIPIAN ADEBOLA MAKINDE', '', '8033656085', 'XRRzwL', '8033656085', '1993', 'Unvoted'),
(248, 'FGlWAN', '', 'PHILLIPIAN GBENGA FASORO', '', '', 'FGlWAN', '', '1987', 'Unvoted'),
(249, 'eWvWAN', '', 'PHILLIPIAN ABIODUN MODUPE EGBEDELE', '', '8099721505', 'eWvWAN', '8099721505', '1986', 'Unvoted'),
(250, 'MFBF7P', '', 'PHILLIPIAN JIDE FADELE', '', '7054860208', 'MFBF7P', '7054860208', '1994', 'Unvoted'),
(251, '8DlRSd', '', 'PHILLIPIAN OGUNDELE OLUDARE OLUREMI', '', '', '8DlRSd', '', '1998', 'Unvoted'),
(252, 'HKSpi9', '', 'PHILLIPIAN ADENIKE LANIYAN', '', '', 'HKSpi9', '', '', 'Unvoted'),
(253, 'VLSVLu', '', 'PHILLIPIAN ONIYINDE SAMUEL KOLADE', '', '8030587869', 'VLSVLu', '8030587869', '1987', 'Unvoted'),
(254, 'R0Hj25', '', 'PHILLIPIAN OLADOSU K LOLLY', '', '', 'R0Hj25', '', '1970', 'Unvoted'),
(255, 'oZB1Tz', '', 'PHILLIPIAN MUYIWA MAKINDE', '', '', 'oZB1Tz', '', '1982', 'Unvoted'),
(256, 'bXpdaa', '', 'PHILLIPIAN KOLAWOLE ONIPEDE', '', '9025303644', 'bXpdaa', '9025303644', '1986', 'Unvoted'),
(257, 'vmDqO8', '', 'PHILLIPIAN KEHINDE SANUSI', '', '8025481379', 'vmDqO8', '8025481379', '1992', 'Unvoted'),
(258, 'CWypKE', '', 'PHILLIPIAN WALE OYERINDE', '', '8033857136', 'CWypKE', '8033857136', '1992', 'Unvoted'),
(259, 'i5tURV', '', 'PHILLIPIAN TAIWO OGUNKOLA', '', '8033949242', 'i5tURV', '8033949242', '1992', 'Unvoted'),
(260, 'bClikL', '', 'PHILLIPIAN AWODELE ABIODUN OLOYEDE', '', '8176976987', 'bClikL', '8176976987', '1996', 'Unvoted'),
(261, 'c6GlEP', '', 'PHILLIPIAN OLUFUNMI VAUGHAN', '', '8066299650', 'c6GlEP', '8066299650', '1986', 'Unvoted'),
(262, 'Vf04U3', '', 'PHILLIPIAN FLORENCE AWOSIKA', '', '8158323939', 'Vf04U3', '8158323939', '1986', 'Unvoted'),
(263, '9RAinK', '', 'PHILLIPIAN AMBALI JELILI OPEYEMI', '', '', '9RAinK', '', '1996', 'Unvoted'),
(264, '2ZCpBH', '', 'PHILLIPIAN BUNMI FALADE', '', '9061359186', '2ZCpBH', '9061359186', '2000', 'Unvoted'),
(265, 'JUfge6', '', 'PHILLIPIAN TOSIN OYEJIDE', '', '8065042050', 'JUfge6', '8065042050', '2000', 'Unvoted'),
(266, 'v5Hvsw', '', 'PHILLIPIAN BAYO OKEOWO', '', '7069212936', 'v5Hvsw', '7069212936', '2000', 'Unvoted'),
(267, 'PaIt4F', '', 'PHILLIPIAN JOAH OKOH', '', '', 'PaIt4F', '', '1978', 'Unvoted'),
(268, 'NFhkwF', '', 'PHILLIPIAN ASIMIYU ABIMBOLA', '', '', 'NFhkwF', '', '1978', 'Unvoted'),
(269, 'De9uyU', '', 'PHILLIPIAN OLAOLU MAKINDE', '', '', 'De9uyU', '', '1978', 'Unvoted'),
(270, 'v8c7Gf', '', 'PHILLIPIAN KOLA DAIRO', '', '', 'v8c7Gf', '', '1979', 'Unvoted'),
(271, 'vQwYT6', '', 'PHILLIPIAN SULE RABIU', '', '7054784210', 'vQwYT6', '7054784210', '1986', 'Unvoted'),
(272, 'vdmFo4', '', 'IBITOPE OLUWABUNMI AWOGBINDIN', '', '', 'vdmFo4', '', '1991', 'Unvoted'),
(273, '2vPXmJ', '', 'PHILLIPIAN BABAJIDE A SALAKO', '', '', '2vPXmJ', '', '1972', 'Unvoted'),
(274, '3TFUni', '', 'PHILLIPIAN AYOTUNDE ODUYE', '', '', '3TFUni', '', '1977', 'Unvoted'),
(275, 'MMiphH', '', 'PHILLIPIAN DARE AYANWALE', '', '', 'MMiphH', '', '1978', 'Unvoted'),
(276, 'j84pVa', '', 'PHILLIPIAN KEMI IFARAJIMI', '', '', 'j84pVa', '', '1996', 'Unvoted'),
(277, 'Anu1nE', '', 'PHILLIPIAN (PASTOR) AKINWALE OYERANMI', '', '', 'Anu1nE', '', '1980', 'Unvoted'),
(278, '2kBXCx', '', 'PHILLIPIAN BOLARINWA HAKEEM', '', '', '2kBXCx', '', '1996', 'Unvoted'),
(279, 'H6U60b', '', 'PHILLIPIAN ADERONKE OLUYOOLA (VAUGHAN)', '', '', 'H6U60b', '', '1986', 'Unvoted'),
(280, 'B3e302', '', 'PHILLIPIAN JEREMIAH ALIU', '', '', 'B3e302', '', '1996', 'Unvoted'),
(281, '8KE9tj', '', 'PHILLIPIAN KAFAYAT RASAQ', '', '', '8KE9tj', '', '2000', 'Unvoted'),
(282, 'Vsp38n', '', 'PHILLIPIAN MATHEW POGAH', '', '9061373001', 'Vsp38n', '9061373001', '1986', 'Unvoted'),
(283, 'ilGIU9', '', 'PHILLIPIAN BOLA ESTHER IDOWU', '', '', 'ilGIU9', '', '1991', 'Unvoted'),
(284, 'p1DTi1', '', 'PHILLIPIAN AKINADE TAJUDEE POPOOLA', '', '', 'p1DTi1', '', '1985', 'Unvoted'),
(285, '3VIsAE', '', 'PHILLIPIAN ABIOYE OLUBOLA', '', '8119932281', '3VIsAE', '8119932281', '1985', 'Unvoted'),
(286, '7PkDZO', '', 'PHILLIPIAN OLALEKAN KOLA', '', '', '7PkDZO', '', '1985', 'Unvoted'),
(287, 'DmDjn4', '', 'PHILLIPIAN RISIKAT ADEYEYE ADERONKE', '', '8135211666', 'DmDjn4', '8135211666', '1985', 'Unvoted'),
(288, '1GrEV1', '', 'PHILLIPIAN OYEWALE OYEGOKE', '', '8021111455', '1GrEV1', '8021111455', '1997', 'Unvoted'),
(289, 'OapiVx', '', 'PHILLIPIAN ADEYEMI OLUMIDE', '', '8033752508', 'OapiVx', '8033752508', '1994', 'Unvoted'),
(290, '5yqJoM', '', 'PHILLIPIAN ADARAMOLA TAIWO', '', '8051144219', '5yqJoM', '8051144219', '1987', 'Unvoted'),
(291, 'rOXoEp', '', 'PHILLIPIAN DAMILOLA OGUNDUYILE', '', '', 'rOXoEp', '', '1987', 'Unvoted'),
(292, '7W9Idc', '', 'PHILLIPIAN GODWIN IGNITIUS ONYEKACHI', '', '', '7W9Idc', '', '1986', 'Unvoted'),
(293, '67U6Rc', '', 'PHILLIPIAN SIYANBOLA ABIDEEN', '', '8059297223', '67U6Rc', '8059297223', '1987', 'Unvoted'),
(294, '69Sn7I', '', 'PHILLIPIAN SABURI ONI', '', '8062207708', '69Sn7I', '8062207708', '1985', 'Unvoted'),
(295, 'KmhAiT', '', 'FUNMILOLA ABIGAEL OLADELE NEE OLANIRAN', '', '', 'KmhAiT', '', '1983', 'Unvoted'),
(296, 'gwju3L', '', 'OMOTUNDE OKESINA NEE AKINYELE', '', '', 'gwju3L', '', '1983', 'Unvoted'),
(297, '3zYy2s', '', 'PHILLIPIAN BASERAT RONKE ADESINA', '', '', '3zYy2s', '', '1983', 'Unvoted'),
(298, 'yuA3Cf', '', 'PHILLIPIAN TOSIN JIMOH', '', '', 'yuA3Cf', '', '2000', 'Unvoted'),
(299, 'W8Hb4f', '', 'PHILLIPIAN RONKE ATERE', '', '', 'W8Hb4f', '', '1987', 'Unvoted'),
(300, '366fpn', '', 'PHILLIPIAN LEYE FAGBAMIYE', '', '', '366fpn', '', '1987', 'Unvoted'),
(301, 'n7rV9v', '', 'PHILLIPIAN OMOTAYO ALLI', '', '', 'n7rV9v', '', '1987', 'Unvoted'),
(302, 'KlLhmL', '', 'ADEOSUN ABDUL OLANR', '', '8130805805', 'KlLhmL', '8130805805', '1994', 'Unvoted'),
(303, 'mmzK5P', '', 'PHILLIPIAN SOLA OWOLABI', '', '', 'mmzK5P', '', '2001', 'Unvoted'),
(304, 'tvlLk6', '', 'PHILLIPIAN ABIODUN JOHN ONI', '', '', 'tvlLk6', '', '1985', 'Unvoted'),
(305, 'Ulpt7J', '', 'PHILLIPIAN MOJEED AKINADE', '', '', 'Ulpt7J', '', '1982', 'Unvoted'),
(306, '9256j9', '', 'PHILLIPIAN TOSIN ODUBO', '', '', '9256j9', '', '2000', 'Unvoted'),
(307, 'ak87Yw', '', 'PHILLIPIAN OLUFUNMILAYO ADENIKE TAIWO', '', '8039403268', 'ak87Yw', '8039403268', '1987', 'Unvoted'),
(308, 'vP1kwq', '', 'PHILLIPIAN ODEKUNLE MAYOWA', '', '', 'vP1kwq', '', '2000', 'Unvoted'),
(309, 'CnIvUQ', '', 'PHILLIPIAN SAHEED ABIOYE', '', '', 'CnIvUQ', '', '1996', 'Unvoted'),
(310, 'O8f1D6', '', 'PHILLIPIAN ALAWODE BABAJIDE', '', '', 'O8f1D6', '', '1996', 'Unvoted'),
(311, 'u0ZtbC', '', 'PHILLIPIAN TAYO TOLASE', '', '', 'u0ZtbC', '', '1995', 'Unvoted'),
(312, 'ydYa7v', '', 'PHILLIPIAN JIRE ONITI', '', '', 'ydYa7v', '', '1995', 'Unvoted'),
(313, 'hcd50H', '', 'PHILLIPIAN PETER ATOYEBI', '', '', 'hcd50H', '', '1995', 'Unvoted'),
(314, 'tcWFpZ', '', 'PHILLIPIAN SUNDAY AYOADE', '', '', 'tcWFpZ', '', '1995', 'Unvoted'),
(315, 'Lf4XLl', '', 'PHILLIPIAN BIMBO SOYODE', '', '', 'Lf4XLl', '', '1995', 'Unvoted'),
(316, 'z4lggc', '', 'PHILLIPIAN LOLA ONIFADE', '', '', 'z4lggc', '', '1995', 'Unvoted'),
(317, 'iC4XdW', '', 'PHILLIPIAN OLUMIDE ALADEKOMO', '', '', 'iC4XdW', '', '1995', 'Unvoted'),
(318, '59a5Z3', '', 'PHILLIPIAN SITE SEUN', '', '', '59a5Z3', '', '1995', 'Unvoted'),
(319, 'MlF53N', '', 'PHILLIPIAN SAHEED SALAM', '', '', 'MlF53N', '', '1995', 'Unvoted'),
(320, 'nie3Sn', '', 'PHILLIPIAN SAHEED FOLARIN', '', '', 'nie3Sn', '', '1995', 'Unvoted'),
(321, 'c9vX4U', '', 'PHILLIPIAN IDOWU OGINNI', '', '', 'c9vX4U', '', '1995', 'Unvoted'),
(322, '2JMGTY', '', 'PHILLIPIAN RONKE GIWA', '', '', '2JMGTY', '', '1995', 'Unvoted'),
(323, '0137rz', '', 'PHILLIPIAN TUNDE FOLARIN', '', '', '0137rz', '', '1995', 'Unvoted'),
(324, 'IHJdyX', '', 'PHILLIPIAN IDOWU FASEYITAN', '', '', 'IHJdyX', '', '1995', 'Unvoted'),
(325, 'ZBLv5J', '', 'PHILLIPIAN YOMI LAWAL ', '', '', 'ZBLv5J', '', '1995', 'Unvoted'),
(326, 'mYLJPP', '', 'PHILLIPIAN SEGUN AWE', '', '', 'mYLJPP', '', '1995', 'Unvoted'),
(327, 'aPd2Xw', '', 'PHILLIPIAN OPEYEMI ORISAJO', '', '', 'aPd2Xw', '', '1995', 'Unvoted'),
(328, 'oWWSXa', '', 'PHILLIPIAN LEKE AKINSOLA', '', '', 'oWWSXa', '', '1995', 'Unvoted'),
(329, 'ZIvIW5', '', 'PHILLIPIAN KUNLE FABUNMI', '', '', 'ZIvIW5', '', '1995', 'Unvoted'),
(330, 'Q4IDvc', '', 'PHILLIPIAN MUTIAT AJOKE AKINTUNDE', '', '', 'Q4IDvc', '', '1995', 'Unvoted'),
(331, 'A29FnB', '', 'PHILLIPIAN HAMEED AKEEM ADEKUNLE', '', '', 'A29FnB', '', '', 'Unvoted'),
(332, 'wFKEEu', '', 'PHILLIPIAN SEGUN ADEOGUN', '', '', 'wFKEEu', '', '', 'Unvoted'),
(333, 'iDiwfB', '', 'PHILLIPIAN KEHINDE ABIODUN', '', '', 'iDiwfB', '', '1981', 'Unvoted'),
(334, 'wqcFMV', '', 'PHILLIPIAN SEMIU SODIPO', '', '', 'wqcFMV', '', '1979', 'Unvoted'),
(335, 'PPni8Y', '', 'PHILLIPIAN ABIMBOLA FUNMILAYO AFOLARIN.', '', '8034434030', 'PPni8Y', '8034434030', '1994', 'Unvoted'),
(336, 'VtlOu8', '', 'PHILLIPIAN OLUBUNMI ADEYEMO', '', '8060741879', 'VtlOu8', '8060741879', '', 'Unvoted'),
(337, 'mfZov6', '', 'PHILLIPIAN (HON) SIKIRU SANDA', '', '', 'mfZov6', '', '', 'Unvoted'),
(338, 'GJnpdy', '', 'PHILLIPIAN (ENGR) FOLAYANKA A ADEGBITE', '', '', 'GJnpdy', '', '1983', 'Unvoted'),
(339, 'K1BHpg', '', 'PHILLIPIAN YEMISI ADEOGUN NEE AFOLAYAN', '', '', 'K1BHpg', '', '1983', 'Unvoted'),
(340, '4B36n1', '', 'PHILLIPIAN JUMOKE OMOTOSO', '', '', '4B36n1', '', '1988', 'Unvoted'),
(341, 'maWk0b', '', 'PHILLIPIAN ROPO ODEYEMI', '', '', 'maWk0b', '', '1985', 'Unvoted'),
(342, 't3vxx6', '', 'PHILLIPIAN SADE SANDA', '', '', 't3vxx6', '', '1985', 'Unvoted'),
(343, 'ZXwQ4W', '', 'PHILLIPIAN FOLARIN BOLA', '', '', 'ZXwQ4W', '', '1985', 'Unvoted'),
(344, 'FenQ9a', '', 'PHILLIPIAN DAYO ADEROUNMU', '', '', 'FenQ9a', '', '1985', 'Unvoted'),
(345, 'aDWPbk', '', 'PHILLIPIAN ODEPO TAOFEEK', '', '', 'aDWPbk', '', '1985', 'Unvoted'),
(346, 'vbcEt0', '', 'PHILLIPIAN ADEGOKE FELIX', '', '', 'vbcEt0', '', '2005', 'Unvoted'),
(347, 'Rnkto9', '', 'PHILLIPIAN OLALERE KUNLE', '', '', 'Rnkto9', '', '2005', 'Unvoted'),
(348, 'urLXaY', '', 'PHILLIPIAN KAFAYAT AMODU', '', '', 'urLXaY', '', '', 'Unvoted'),
(349, 'zX7oIq', '', 'PHILLIPIAN OLARINDE KUNLE', '', '', 'zX7oIq', '', '2000', 'Unvoted'),
(350, '6tPmY1', '', 'PHILLIPIAN  DAVID OGUNYEMI', '', '', '6tPmY1', '', '1987', 'Unvoted'),
(351, 'WEnDaR', '', 'PHILLIPIAN SOJI OGUNDEYI', '', '', 'WEnDaR', '', '1985', 'Unvoted'),
(352, 'kaynED', '', 'PHILLIPIAN BAYONLE ALERELE', '', '', 'kaynED', '', '1986', 'Unvoted'),
(353, 'B8s5yf', '', 'PHILLIPIAN ADEJOKE AKINWALE', '', '', 'B8s5yf', '', '1986', 'Unvoted'),
(354, 'Nvjabi', '', 'PHILLIPIAN IJIYEMI RICHARD', '', '', 'Nvjabi', '', '1986', 'Unvoted'),
(355, 'spujGh', '', 'PHILLIPIAN MUSBAU AJANI', '', '', 'spujGh', '', '', 'Unvoted'),
(356, 'YNUUMW', '', 'PHILLIPIAN PAUL EGBEDELE', '', '', 'YNUUMW', '', '', 'Unvoted'),
(357, 'tXOuLk', '', 'PHILLIPIAN AKANBI WILLIAMS', '', '', 'tXOuLk', '', '', 'Unvoted'),
(358, 'CC656z', '', 'PHILLIPIAN SEGUN ERINLE', '', '', 'CC656z', '', '', 'Unvoted'),
(359, 'K5cxGM', '', 'PHILLIPIAN JIDE SESAN OLADIPO', '', '', 'K5cxGM', '', '1987', 'Unvoted'),
(360, '5ScGYD', '', 'PHILLIPIAN OLUGBENGA OLULADE', '', '+234 816 455 4982', '5ScGYD', '+234 816 455 4982', '1980', 'Unvoted'),
(361, 'p6Lg4h', '', 'PHILLIPIAN BOLARO OLUWOLE', '', '', 'p6Lg4h', '', '1970', 'Unvoted'),
(362, 'L9uAjT', '', 'PHILLIPIAN KEMI GADE NEE ASHAOLU', '', '7089675806', 'L9uAjT', '7089675806', '1984', 'Unvoted'),
(363, 'l8n9jt', '', 'PHILLIPIAN BOYEPE OREBIYI', '', '', 'l8n9jt', '', '1984', 'Unvoted'),
(364, 'Gdob5V', '', 'PHILLIPIAN ELSIE EGBEDIRAN', '', '', 'Gdob5V', '', '1984', 'Unvoted'),
(365, 'r9eI0W', '', 'PHILLIPIAN BOSE BOLARINWA', '', '', 'r9eI0W', '', '1984', 'Unvoted'),
(366, 'U0yAuX', '', 'PHILLIPIAN IYABO BABATUNDE', '', '', 'U0yAuX', '', '1984', 'Unvoted'),
(367, '0k4grL', '', 'PHILLIPIAN IYABO ADETUNBI', '', '', '0k4grL', '', '1984', 'Unvoted'),
(368, 'zaBv5D', '', 'PHILLIPIAN FARAMADE OGUNDAIRO', '', '', 'zaBv5D', '', '1984', 'Unvoted'),
(369, 'xG8CRM', '', 'PHILLIPIAN KEHINDE ADEBAYO', '', '', 'xG8CRM', '', '1984', 'Unvoted'),
(370, 'BmWl0p', '', 'PHILLIPIAN FOLASADE BORODE SOTONWA', '', '', 'BmWl0p', '', '1975', 'Unvoted'),
(371, 'sm3V2I', '', 'PHILLIPIAN SAMUEL OLUSHINA OLUSHANU', '', '', 'sm3V2I', '', '1975', 'Unvoted'),
(372, 'MN8Le7', '', 'PHILLIPIAN OMOYEMI ODUBONOJO', '', '', 'MN8Le7', '', '1972', 'Unvoted'),
(373, '77ClVf', '', 'PHILLIPIAN AYENI VICTOR ABIODUN', '', '', '77ClVf', '', '1972', 'Unvoted'),
(374, 'n8ZEkq', '', 'PHILLIPIAN SUMBI AWOBULUYI', '', '', 'n8ZEkq', '', '1972', 'Unvoted');

-- --------------------------------------------------------

--
-- Table structure for table `votes`
--

CREATE TABLE `votes` (
  `ID` int(11) NOT NULL,
  `CandidateID` int(11) NOT NULL,
  `votes` int(11) NOT NULL,
  `VoterID` int(10) NOT NULL,
  `Vname` varchar(100) NOT NULL,
  `Cposition` varchar(50) NOT NULL,
  `Cname` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `votes`
--

INSERT INTO `votes` (`ID`, `CandidateID`, `votes`, `VoterID`, `Vname`, `Cposition`, `Cname`) VALUES
(1, 2, 0, 28, 'ABIDEEN OLADIMEJI  ', 'AKINYOOYE AKINFEMI Emmanuel', 'President'),
(2, 3, 0, 28, 'ABIDEEN OLADIMEJI  ', 'TEMILOLUWA ADEYINKA ADERINSOLA', 'Vice President'),
(3, 10, 0, 28, 'ABIDEEN OLADIMEJI  ', 'STEPHEN OYEYIGA ', 'General Secretary'),
(4, 11, 0, 28, 'ABIDEEN OLADIMEJI  ', 'OPAKUNLE ALABA ', 'Treasurer'),
(5, 12, 0, 28, 'ABIDEEN OLADIMEJI  ', 'OKPEGBULAM DOROTHY ', 'Financial Secretary'),
(6, 13, 0, 28, 'ABIDEEN OLADIMEJI  ', 'ARAOYE LEKAN ', 'P.R.O'),
(7, 8, 0, 41, 'FOURTHMAN KENNY  ', 'OPEYEMI ALABI ', 'President'),
(8, 3, 0, 41, 'FOURTHMAN KENNY  ', 'TEMILOLUWA ADEYINKA ADERINSOLA', 'Vice President'),
(9, 4, 0, 41, 'FOURTHMAN KENNY  ', 'IFEOLUWA OBALOLUWA ', 'General Secretary'),
(10, 5, 0, 41, 'FOURTHMAN KENNY  ', 'PAUL AWOLOLA ', 'Treasurer'),
(11, 6, 0, 41, 'FOURTHMAN KENNY  ', 'PETERS MIRACLE ', 'Financial Secretary'),
(12, 13, 0, 41, 'FOURTHMAN KENNY  ', 'ARAOYE LEKAN ', 'P.R.O');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `candidate`
--
ALTER TABLE `candidate`
  ADD PRIMARY KEY (`CandidateID`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`history_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`User_id`);

--
-- Indexes for table `voters`
--
ALTER TABLE `voters`
  ADD PRIMARY KEY (`VoterID`);

--
-- Indexes for table `votes`
--
ALTER TABLE `votes`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `candidate`
--
ALTER TABLE `candidate`
  MODIFY `CandidateID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `history_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `User_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `voters`
--
ALTER TABLE `voters`
  MODIFY `VoterID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=375;

--
-- AUTO_INCREMENT for table `votes`
--
ALTER TABLE `votes`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
