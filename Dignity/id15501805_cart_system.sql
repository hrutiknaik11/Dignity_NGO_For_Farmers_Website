-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 30, 2020 at 08:40 PM
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
-- Database: `id15501805_cart_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_price` varchar(50) NOT NULL,
  `product_image` varchar(255) NOT NULL,
  `qty` int(10) NOT NULL,
  `total_price` varchar(100) NOT NULL,
  `product_code` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `address` varchar(255) NOT NULL,
  `pmode` varchar(50) NOT NULL,
  `products` varchar(255) NOT NULL,
  `amount_paid` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `name`, `email`, `phone`, `address`, `pmode`, `products`, `amount_paid`) VALUES
(12, 'Hrutik', 'hrutupn@gmail.com', '7208090456', 'ggt', 'cod', 'Fresh Onions(1)', '95'),
(13, 'Hrutik', 'hrutupn@gmail.com', '7208090456', 'borivali', 'cod', 'Fresh Tomatoes(1)', '45'),
(14, 'qwerty', 'qw@mail.com', '11111111111', 'qwwwwwwwwwwwwww', 'netbanking', 'Fresh Garlic(-9), Fresh Potatoes(1), Fresh Onions(123), Fresh Tomatoes(1), Apple(1430303)', '185950736'),
(15, 'aaa', 'sa@gmail.com', '1111111111', 'reqeq', 'cards', 'Fresh Potatoes(1), Fresh Onions(44), Fresh Tomatoes(100), Fresh Garlic(199999)', '9608680'),
(16, 'Hrutik', 'hrutupn@gmail.com', '7208090456', 'ssss', 'cod', 'Fresh Onions(1)', '95');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_price` varchar(100) NOT NULL,
  `product_qty` int(11) NOT NULL DEFAULT 1,
  `product_image` varchar(255) NOT NULL,
  `product_code` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `product_name`, `product_price`, `product_qty`, `product_image`, `product_code`) VALUES
(1, 'Fresh Potatoes', '48', 1, 'potato.jpg', 'p1000'),
(2, 'Fresh Onions', '95', 1, 'onion.jpg', 'p1001'),
(3, 'Fresh Tomatoes', '45', 1, 'tomato.jpg', 'p1002'),
(4, 'Fresh Garlic', '48', 1, 'garlic.jpg', 'p1003'),
(5, 'Apple', '130', 1, 'apple.jpg', 'p1004'),
(6, 'Bananas', '100', 1, 'banana.jpg', 'p1005'),
(7, 'Oranges', '120', 1, 'orange.jpg', 'p1006'),
(8, 'Mosambi', '60', 1, 'mosambi.jpg', 'p1007'),
(9, 'Ladies Finger', '50', 1, 'ladyfinger.jpg', 'p1008'),
(10, 'Capsicum', '60', 1, 'capsicum.jpg', 'p1009'),
(11, 'Cabbage', '60', 1, 'cabbage.jpg', 'p1010'),
(12, 'Coriander', '20', 1, 'coriander.jpg', 'p1011'),
(13, 'Cucumber', '35', 1, 'cucumber.jpg', 'p1012'),
(14, 'Chilli', '10', 1, 'chilly.jpg', 'p1013'),
(15, 'Lemon', '20', 1, 'lemon.jpg', 'p1014'),
(16, 'Coconut', '30', 1, 'coconut.jpg', 'p1015');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_code_2` (`product_code`),
  ADD KEY `product_code` (`product_code`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
