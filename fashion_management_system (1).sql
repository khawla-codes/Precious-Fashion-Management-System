-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 04, 2025 at 10:07 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fashion_management_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `address` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `username`, `password`, `name`, `phone`, `address`) VALUES
(1, 'heshamm', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'hesham', '1545482546589', 'egypt');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `employee_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `is_admin` tinyint(1) DEFAULT 0,
  `manager_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`employee_id`, `username`, `password`, `name`, `is_admin`, `manager_id`) VALUES
(1, 'admin', 'f865b53623b121fd34ee5426c792e5c33af8c227', 'System Admin', 1, NULL),
(2, 'hesham', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'hesham', 0, NULL),
(565766, 'koko', '3fb40124503b8eda3be991627fe2d5372436dc18', 'jiuiu', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `inventory_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `size` enum('S','M','L','XL') NOT NULL,
  `color` varchar(50) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`inventory_id`, `product_id`, `size`, `color`, `quantity`) VALUES
(1, 1, 'S', 'White', 12),
(2, 1, 'M', 'White', 15),
(3, 2, 'L', 'Black', 8),
(4, 3, 'XL', 'Navy Blue', 5),
(5, 4, 'M', 'Black', 11),
(20, 1, 'L', 'White', 15),
(21, 1, 'XL', 'White', 7),
(22, 2, 'S', 'Black', 15),
(23, 2, 'M', 'Black', 5),
(24, 2, 'XL', 'Black', 8),
(25, 3, 'S', 'Navy Blue', 14),
(26, 3, 'M', 'Navy Blue', 14),
(27, 3, 'L', 'Navy Blue', 15),
(28, 4, 'S', 'Black', 7),
(29, 4, 'L', 'Black', 18),
(30, 4, 'XL', 'Black', 5),
(31, 5, 'S', 'White', 9),
(32, 5, 'M', 'White', 14),
(33, 5, 'L', 'White', 10),
(34, 5, 'XL', 'White', 14),
(35, 6, 'S', 'Black', 6),
(36, 6, 'M', 'Black', 9),
(37, 6, 'L', 'Black', 17),
(38, 6, 'XL', 'Black', 9),
(39, 7, 'S', 'Navy Blue', 6),
(40, 7, 'M', 'Navy Blue', 19),
(41, 7, 'L', 'Navy Blue', 19),
(42, 7, 'XL', 'Navy Blue', 18),
(43, 8, 'S', 'Black', 10),
(44, 8, 'M', 'Black', 11),
(45, 8, 'L', 'Black', 17),
(46, 8, 'XL', 'Black', 20),
(47, 9, 'S', 'White', 7),
(48, 9, 'M', 'White', 5),
(49, 9, 'L', 'White', 17),
(50, 9, 'XL', 'White', 6),
(51, 10, 'S', 'Black', 19),
(52, 10, 'M', 'Black', 14),
(53, 10, 'L', 'Black', 5),
(54, 10, 'XL', 'Black', 12),
(55, 11, 'S', 'Navy Blue', 6),
(56, 11, 'M', 'Navy Blue', 9),
(57, 11, 'L', 'Navy Blue', 13),
(58, 11, 'XL', 'Navy Blue', 15),
(59, 12, 'S', 'Black', 6),
(60, 12, 'M', 'Black', 8),
(61, 12, 'L', 'Black', 14),
(62, 12, 'XL', 'Black', 11);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `order_date` datetime DEFAULT current_timestamp(),
  `status` enum('Order confirmed','Packed','Shipped','Delivered') DEFAULT 'Order confirmed',
  `total_amount` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `customer_id`, `order_date`, `status`, `total_amount`) VALUES
(1, 1, '2025-04-27 20:16:09', 'Order confirmed', 150.00),
(2, 1, '2025-04-27 23:52:53', 'Order confirmed', 150.00);

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `item_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `size` enum('S','M','L','XL') NOT NULL,
  `color` varchar(50) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`item_id`, `order_id`, `product_id`, `size`, `color`, `quantity`, `price`) VALUES
(1, 1, 4, 'M', 'Black', 1, 150.00),
(2, 2, 1, 'M', 'Black', 1, 150.00);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `category` enum('Dress','Suit') NOT NULL,
  `base_price` decimal(10,2) NOT NULL,
  `image_path` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `name`, `description`, `category`, `base_price`, `image_path`) VALUES
(1, 'Velvet Dream', 'Elegant white dress for special occasions', 'Dress', 299.99, 'a.jpg'),
(2, 'Midnight Bloom', 'Beautiful black dress for evening parties', 'Dress', 349.99, 'BD.png'),
(3, 'Royal Navy', 'Dark blue suit for formal meetings', 'Suit', 499.99, 'DB.jpg'),
(4, 'Silver mist', 'Classic black suit, timeless choice', 'Suit', 599.99, 'B.jpg'),
(5, 'Blush Elegance', 'Elegant white dress for special occasions', 'Dress', 299.99, 'BW.png'),
(6, 'Amethyst Glow', 'Beautiful black dress for evening parties', 'Dress', 349.99, 'kgk.png'),
(7, 'Classic nior', 'Dark blue suit for formal meetings', 'Suit', 499.99, 'DB.jpg'),
(8, 'Urban Steel', 'Classic black suit, timeless choice', 'Suit', 599.99, 'B.jpg'),
(9, 'Sapphire  grace', 'Elegant white dress for special occasions', 'Dress', 299.99, 'ss.png'),
(10, 'Silver Whisper', 'Beautiful black dress for evening parties', 'Dress', 349.99, 'e.png'),
(11, 'Disert sand', 'Dark blue suit for formal meetings', 'Suit', 499.99, 'dfd.jpg'),
(12, 'Arctic White', 'Classic black suit, timeless choice', 'Suit', 599.99, 'rrr.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `review_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `review_text` text DEFAULT NULL,
  `review_date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`review_id`, `customer_id`, `product_id`, `review_text`, `review_date`) VALUES
(1, 1, 1, 'nice', '2025-04-27 23:51:32');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`employee_id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `manager_id` (`manager_id`);

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`inventory_id`),
  ADD UNIQUE KEY `product_id` (`product_id`,`size`,`color`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`item_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`review_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `product_id` (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `employee_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=565767;

--
-- AUTO_INCREMENT for table `inventory`
--
ALTER TABLE `inventory`
  MODIFY `inventory_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `employees_ibfk_1` FOREIGN KEY (`manager_id`) REFERENCES `employees` (`employee_id`);

--
-- Constraints for table `inventory`
--
ALTER TABLE `inventory`
  ADD CONSTRAINT `inventory_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`);

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`),
  ADD CONSTRAINT `order_items_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`);

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`),
  ADD CONSTRAINT `reviews_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
