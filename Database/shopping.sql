-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 08, 2023 at 01:36 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopping`
--

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE `bill` (
  `Cashiername` varchar(255) NOT NULL,
  `CustomerName` varchar(255) NOT NULL,
  `CustPhno` varchar(255) NOT NULL,
  `Date` date NOT NULL,
  `Billno` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `Itemname` varchar(255) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `Price` float NOT NULL,
  `PurchaseQuantity` int(11) NOT NULL,
  `Totalprice` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bill`
--

INSERT INTO `bill` (`Cashiername`, `CustomerName`, `CustPhno`, `Date`, `Billno`, `productId`, `Itemname`, `Quantity`, `Price`, `PurchaseQuantity`, `Totalprice`) VALUES
('admin', 'admin', '000000000000', '2023-02-01', 1000, 0, 'Nil', 0, 0, 0, 0),
('Abhi', 'Ramu', '987787787', '2023-02-08', 1001, 1, 'Pen', 100, 10, 1, 10),
('Abhi', 'Ramu', '987787787', '2023-02-08', 1001, 3, 'Box', 100, 20, 3, 60),
('Abhi', 'Ramu', '987787787', '2023-02-08', 1001, 4, 'Pencil', 100, 5, 0, 0),
('Abhi', 'Ramu', '987787787', '2023-02-08', 1001, 5, 'Pencil Box', 100, 500, 3, 1500),
('Abhi', 'Ramu', '987787787', '2023-02-08', 1001, 7, 'Eraser', 100, 10, 2, 20),
('Abhi', 'Ramu', '987787787', '2023-02-08', 1001, 12, 'Soap', 100, 30, 2, 60),
('Abhi', 'Ramu', '987787787', '2023-02-08', 1001, 13, 'Book', 100, 60, 0, 0),
('Abhi', 'Ramu', '987787787', '2023-02-08', 1001, 16, 'Sanitizer', 100, 73, 0, 0),
('Abhi', 'Ramu', '987787787', '2023-02-08', 1001, 17, 'Cello Tape', 100, 10, 1, 10),
('Abhi', 'Mamu', '34443333', '2023-02-08', 1002, 1, 'Pen', 99, 10, 0, 0),
('Abhi', 'Mamu', '34443333', '2023-02-08', 1002, 3, 'Box', 97, 20, 0, 0),
('Abhi', 'Mamu', '34443333', '2023-02-08', 1002, 4, 'Pencil', 100, 5, 15, 75),
('Abhi', 'Mamu', '34443333', '2023-02-08', 1002, 5, 'Pencil Box', 97, 500, 0, 0),
('Abhi', 'Mamu', '34443333', '2023-02-08', 1002, 7, 'Eraser', 98, 10, 0, 0),
('Abhi', 'Mamu', '34443333', '2023-02-08', 1002, 12, 'Soap', 98, 30, 0, 0),
('Abhi', 'Mamu', '34443333', '2023-02-08', 1002, 13, 'Book', 100, 60, 5, 300),
('Abhi', 'Mamu', '34443333', '2023-02-08', 1002, 16, 'Sanitizer', 100, 73, 10, 730),
('Abhi', 'Mamu', '34443333', '2023-02-08', 1002, 17, 'Cello Tape', 99, 10, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `Id` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Username` varchar(255) NOT NULL,
  `DOB` date NOT NULL,
  `Address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`Id`, `Name`, `Email`, `Password`, `Username`, `DOB`, `Address`) VALUES
(1, 'admin', 'admin@mail.com', '123', 'admin', '1995-01-17', 'TVM'),
(2, 'Manu', 'M@mail.com', '123', 'Manu123', '2023-01-26', 'Kollam'),
(3, 'Ramu', 'Ramu@mail.com', '123', 'Ram123', '2023-01-19', 'Kollamtvm'),
(4, 'Sam', 'Sam@mail.com', '123', 'Sam123', '2023-01-05', 'Kollam'),
(5, 'Abhi', 'Abhi@mail.com', '123', 'Abhi123', '2000-10-17', 'Thiruvananthapuram');

-- --------------------------------------------------------

--
-- Table structure for table `prod`
--

CREATE TABLE `prod` (
  `Id` int(11) NOT NULL,
  `Item_Name` varchar(255) NOT NULL,
  `Quantity` varchar(255) NOT NULL,
  `Price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `prod`
--

INSERT INTO `prod` (`Id`, `Item_Name`, `Quantity`, `Price`) VALUES
(1, 'Pen', '99', 10),
(3, 'Box', '97', 20),
(4, 'Pencil', '85', 5),
(5, 'Pencil Box', '97', 500),
(7, 'Eraser', '98', 10),
(12, 'Soap', '98', 30),
(13, 'Book', '95', 60),
(16, 'Sanitizer', '90', 73),
(17, 'Cello Tape', '99', 10);

-- --------------------------------------------------------

--
-- Table structure for table `regcust`
--

CREATE TABLE `regcust` (
  `Bill_No` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Phno` int(255) NOT NULL,
  `Date` date NOT NULL,
  `Product_Name` varchar(255) NOT NULL,
  `Product_Quanity` varchar(255) NOT NULL,
  `Product_Rate` float NOT NULL,
  `Total_Price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `Username` (`Username`),
  ADD UNIQUE KEY `Email` (`Email`);

--
-- Indexes for table `prod`
--
ALTER TABLE `prod`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `Item_Name` (`Item_Name`);

--
-- Indexes for table `regcust`
--
ALTER TABLE `regcust`
  ADD PRIMARY KEY (`Bill_No`),
  ADD UNIQUE KEY `Phno` (`Phno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `prod`
--
ALTER TABLE `prod`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `regcust`
--
ALTER TABLE `regcust`
  MODIFY `Bill_No` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
