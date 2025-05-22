-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 22, 2025 at 05:22 PM
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
-- Database: `inventory`
--

-- --------------------------------------------------------

--
-- Table structure for table `currentstock`
--

CREATE TABLE `currentstock` (
  `productcode` varchar(45) NOT NULL,
  `quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `currentstock`
--

INSERT INTO `currentstock` (`productcode`, `quantity`) VALUES
('prod1', 146),
('prod2', 100),
('prod3', 202),
('prod4', 172),
('prod5', 500),
('prod6', 500),
('prod7', 10),
('prod8', 20);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `cid` int(11) NOT NULL,
  `customercode` varchar(45) DEFAULT NULL,
  `fullname` varchar(45) DEFAULT NULL,
  `location` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`cid`, `customercode`, `fullname`, `location`, `phone`) VALUES
(301, 'vip1', 'John Seed', 'New York', '9818562354'),
(302, 'vip2', 'Jacob Seed', 'Texas', '9650245489'),
(303, 'std1', 'Ajay Kumar', 'Mumbai', '9236215622'),
(304, 'std2', 'Astha Walia', 'Chandigarh', '8854612478'),
(306, 'vip3', 'Madhu Chitkara', 'Chandigarh', '9826546182');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `pid` int(11) NOT NULL,
  `productcode` varchar(45) DEFAULT NULL,
  `productname` varchar(45) DEFAULT NULL,
  `costprice` double DEFAULT NULL,
  `sellprice` double DEFAULT NULL,
  `brand` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`pid`, `productcode`, `productname`, `costprice`, `sellprice`, `brand`) VALUES
(111, 'prod1', 'Laptop', 85000, 90000, 'Dell'),
(112, 'prod2', 'Laptop', 70000, 72000, 'HP'),
(113, 'prod3', 'Mobile', 60000, 64000, 'Apple'),
(114, 'prod4', 'Mobile', 50000, 51000, 'Samsung'),
(121, 'prod5', 'Charger', 2000, 2100, 'Apple'),
(122, 'prod6', 'Mouse', 1700, 1900, 'Dell'),
(128, 'prod7', 'Power Adapter', 3000, 3500, 'Dell'),
(129, 'prod8', 'Smart Watch', 15000, 17000, 'Apple');

-- --------------------------------------------------------

--
-- Table structure for table `purchaseinfo`
--

CREATE TABLE `purchaseinfo` (
  `purchaseID` int(11) NOT NULL,
  `suppliercode` varchar(45) DEFAULT NULL,
  `productcode` varchar(45) DEFAULT NULL,
  `date` varchar(45) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `totalcost` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `purchaseinfo`
--

INSERT INTO `purchaseinfo` (`purchaseID`, `suppliercode`, `productcode`, `date`, `quantity`, `totalcost`) VALUES
(1001, 'sup1', 'prod1', 'Wed Jan 14 00:15:19 IST 2021', 10, 850000),
(1002, 'sup1', 'prod6', 'Wed Jan 14 00:15:19 IST 2021', 20, 34000),
(1003, 'sup2', 'prod3', 'Wed Jan 14 00:15:19 IST 2021', 5, 300000),
(1004, 'sup2', 'prod5', 'Wed Jan 14 00:15:19 IST 2021', 5, 10000),
(1005, 'sup3', 'prod2', 'Wed Jan 14 00:15:19 IST 2021', 2, 140000),
(1006, 'sup4', 'prod4', 'Wed Jan 14 00:15:19 IST 2021', 2, 100000),
(1009, 'sup2', 'prod3', 'Wed Sep 01 04:11:13 IST 2021', 2, 120000),
(1010, 'sup1', 'prod7', 'Wed Sep 01 04:25:06 IST 2021', 10, 30000),
(1011, 'sup2', 'prod8', 'Fri Sep 03 00:00:00 IST 2021', 20, 300000);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `location` varchar(45) DEFAULT NULL,
  `phone` varchar(10) DEFAULT NULL,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `usertype` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `location`, `phone`, `username`, `password`, `usertype`) VALUES
(20, 'Admin', 'Local', '9876543210', 'root', 'root', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `currentstock`
--
ALTER TABLE `currentstock`
  ADD PRIMARY KEY (`productcode`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`pid`),
  ADD UNIQUE KEY `productcode_UNIQUE` (`productcode`);

--
-- Indexes for table `purchaseinfo`
--
ALTER TABLE `purchaseinfo`
  ADD PRIMARY KEY (`purchaseID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=307;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=130;

--
-- AUTO_INCREMENT for table `purchaseinfo`
--
ALTER TABLE `purchaseinfo`
  MODIFY `purchaseID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1012;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
