-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 30, 2020 at 08:41 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id15501805_database123`
--

-- --------------------------------------------------------

--
-- Table structure for table `contactus`
--

CREATE TABLE `contactus` (
  `userid` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `query` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contactus`
--

INSERT INTO `contactus` (`userid`, `email`, `query`) VALUES
('hrutik7', 'hrutupn@gmail.com', 'hii'),
('hrutik7', 'hrutupn@gmail.com', 'qewqw'),
('qwerty', 'ds@gmail.com', ''),
('hrutik7', 'hrutupn@gmail.com', 'fff');

-- --------------------------------------------------------

--
-- Table structure for table `do`
--

CREATE TABLE `do` (
  `fname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `donation` bigint(11) NOT NULL,
  `contact` bigint(11) NOT NULL,
  `mode` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `do`
--

INSERT INTO `do` (`fname`, `email`, `donation`, `contact`, `mode`) VALUES
('HrutikNaik', 'hrutupn@gmail.com', 50000, 7208090456, 'Paytm');

-- --------------------------------------------------------

--
-- Table structure for table `entry_details1`
--

CREATE TABLE `entry_details1` (
  `first_name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `userid` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `zip_code` bigint(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `contact` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `entry_details1`
--

INSERT INTO `entry_details1` (`first_name`, `password`, `userid`, `address`, `country`, `zip_code`, `email`, `contact`) VALUES
('HrutikNaik', 'hrutiknaik', 'hrutik7', 'wallstreet', 'Barbados', 400092, 'hrutupn@gmail.com', 7208090456),
('HrutikNaik', 'ssssssssss', 'hrutik7', 'wallstreet', 'Barbados', 400092, 'hrutupn@gmail.com', 7208090456),
('HrutikNaik', 'hhhukhjk', 'hrutik7', 'wallstreet', 'Barbados', 400092, 'hrutupn@gmail.com', 7208090456),
('HrutikNaik', 'hrutiknaaa', 'hrutik7', 'ssasasasasa', 'Australia', 1516516, 'hrutupn@gmail.com', 7208090456),
('kash', 'kash123', 'kash123', 'Miraroad', 'India', 401107, 'kash@gmail.com', 123456789),
('d', 'Qqwerty12', 'qwerty', 'qwre', 'Belarus', 32232, 'qw@gmail.com', 29),
('Dolwin', 'dolwin02', 'Dolly', 'Sjjsns', 'Albania', 400068, 'dolwinmenezes02@gmail.com', 9004985948),
('HrutikNaik', 'hrutiknaik', 'hrutik7', 'walll', 'Austria', 1516516, 'hrutupn@gmail.com', 7208090456);

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `userid` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `experience` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`userid`, `email`, `experience`, `message`) VALUES
('hrutik7', 'hrutupn@gmail.com', 'average', 'hh'),
('qwerty', 'as@mail.com', 'good', 'Saman nhi mila'),
('hrutik7', 'hrutupn@gmail.com', 'good', 'any kind of suugestion');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
