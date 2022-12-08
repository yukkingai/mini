-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 08, 2022 at 03:41 AM
-- Server version: 5.7.24
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_mini`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mini`
--

CREATE TABLE `tbl_mini` (
  `id` mediumint(9) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `type_id` varchar(250) NOT NULL,
  `price` int(11) NOT NULL,
  `desc` text NOT NULL,
  `specs` text NOT NULL,
  `pic` text NOT NULL,
  `headerpic` text NOT NULL,
  `morepics` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_mini`
--

INSERT INTO `tbl_mini` (`id`, `name`, `type_id`, `price`, `desc`, `specs`, `pic`, `headerpic`, `morepics`) VALUES
(1, 'The Mini Convertible - Cooper', '2', 43390, 'Meet the MINI Convertible, the most open-minded member of the MINI family. Featuring our signature 3-in-1 soft top roof and a refined interior with comfortable seating for four, it is always ready for your next open-air adventure. And with a lively Twin Power Turbo engine that can hit 100 km/h in a blistering 6.3 seconds (in the John Cooper Works variant), it is sure to deliver a few hair-raising thrills along the way. Discover the MINI Convertible today, and see the road in a whole new light.', '3 Cylinder 12 Valve Twin Power Turbo.  Top Speed: 205 km / h. Wheel size: 6.5J x 16. Dimensions: Length/Width/Height 3,837 / 1,727 / 1,415 (mm).', 'pic-con.png', 'header-con.jpg', 'mini-con.jpg'),
(2, 'MINI Cooper', '2', 36790, 'Expressive and self assured, the new MINI 3 door is a true original, combining 60+ years of convention-defying ideas with modern touches and practical features. Iconic by design and urban by nature, it is made to stand out as you uncover new corners of your city. And with a distinct go-kart feel and plenty of power to boot, you are sure to find something exciting at every turn.', '3 Cylinder 12 Valve Twin Power Turbo. Top Speed: 210 km / h. Wheel size: 6.5J x 16. Dimensions: Length/Width/Height 3,837 / 1,727 / 1,415 (mm).', 'pic-cooper.png', 'header-3door.jpg', '3door.jpg'),
(3, 'MINI Cooper S', '3', 40756, 'It is everything you love about MINI…and more. Thanks to its unique layout and low centre of gravity, the MINI 5 door is ready to deliver the same corner-carving agility that made its 3-door brother famous. But with more doors, headroom, legroom, and cargo room, it may be the slightly better choice for anyone leading a slightly fuller life.', '4 Cylinder 16 Valve Twin Power Turbo. Top Speed: 233 km / h. Wheel size: 6.5J x 16. Dimensions: Length/Width/Height 4,013 / 1,727 / 1,425 (mm).', 'pic-coopers.png', 'header-5door.jpg', '5door.jpg'),
(4, 'The Mini CountElectricryman Hybrid SUV', '1', 43190, 'The new MINI Countryman ALL4 is as daring and adventure minded as you are. Whether you prefer playing in the city or escaping it at the first opportunity, you will have the freedom and flexibility to go wherever your wandering mind takes you. Time to discover the new MINI Countryman and start writing your next adventure.', 'Up to 29 km electric range. Up to 479 km combined range. 6.8 sec 0-100km/h. eAll4 all-wheel drive.', 'pic-suv.png', 'header-suv.jpg', 'suv.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mini_models`
--

CREATE TABLE `tbl_mini_models` (
  `model_id` mediumint(8) UNSIGNED NOT NULL,
  `model_name` varchar(250) NOT NULL,
  `type_id` varchar(250) NOT NULL,
  `mini_id` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_mini_models`
--

INSERT INTO `tbl_mini_models` (`model_id`, `model_name`, `type_id`, `mini_id`) VALUES
(1, 'Cooper', '2', '2'),
(2, 'John Cooper Works', '2', '0'),
(3, 'Cooper SE', '2', '0'),
(4, 'The All-Electric Mini Cooper SE 3 door', '1', '0'),
(5, 'The Mini Countryman Hybrid SUV', '1', '4'),
(6, 'Cooper S', '3', '3'),
(7, 'Convertible Cooper', '2', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mini_types`
--

CREATE TABLE `tbl_mini_types` (
  `type_id` mediumint(250) UNSIGNED NOT NULL,
  `type_name` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_mini_types`
--

INSERT INTO `tbl_mini_types` (`type_id`, `type_name`) VALUES
(1, 'Electric'),
(2, '3 doors'),
(3, '5 doors');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_vehicle_brand`
--

CREATE TABLE `tbl_vehicle_brand` (
  `brand_id` mediumint(8) UNSIGNED NOT NULL,
  `brand_name` varchar(250) NOT NULL,
  `brand_desc` text NOT NULL,
  `brand_producer` varchar(250) NOT NULL,
  `brand_address` varchar(250) NOT NULL,
  `brand_phone` varchar(250) NOT NULL,
  `brand_website` varchar(250) NOT NULL,
  `brand_province` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_vehicle_brand`
--

INSERT INTO `tbl_vehicle_brand` (`brand_id`, `brand_name`, `brand_desc`, `brand_producer`, `brand_address`, `brand_phone`, `brand_website`, `brand_province`) VALUES
(1, 'Mini Cooper', 'Mini Cooper made by the British Motor Corporation and its successors 1961–1971,  and 1990–2000. \r\nCars of the Mini (marque), including a number of different models produced by BMW since 2000 with the \"Mini Cooper\" title:\r\nMini Hatch, first introduced in early 2000, second generation from 2006, third from 2014\r\nMini Clubman (2007–Present)\r\nMini Countryman\r\nMini Coupé and Roadster\r\nMini Paceman', 'BMW', '764 Wharncliffe Rd S, London, ON N6J 2N4', '(519) 686-6464', 'https://mini.ca', 'Ontario');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_mini`
--
ALTER TABLE `tbl_mini`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_mini_models`
--
ALTER TABLE `tbl_mini_models`
  ADD PRIMARY KEY (`model_id`);

--
-- Indexes for table `tbl_mini_types`
--
ALTER TABLE `tbl_mini_types`
  ADD PRIMARY KEY (`type_id`);

--
-- Indexes for table `tbl_vehicle_brand`
--
ALTER TABLE `tbl_vehicle_brand`
  ADD PRIMARY KEY (`brand_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_mini`
--
ALTER TABLE `tbl_mini`
  MODIFY `id` mediumint(9) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_mini_models`
--
ALTER TABLE `tbl_mini_models`
  MODIFY `model_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_mini_types`
--
ALTER TABLE `tbl_mini_types`
  MODIFY `type_id` mediumint(250) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_vehicle_brand`
--
ALTER TABLE `tbl_vehicle_brand`
  MODIFY `brand_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
