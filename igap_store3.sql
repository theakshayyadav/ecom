-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 26, 2022 at 12:50 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `igap_store3`
--

-- --------------------------------------------------------

--
-- Table structure for table `igap_venderproductpictures`
--

CREATE TABLE `igap_venderproductpictures` (
  `id` int(11) NOT NULL,
  `productid` int(11) NOT NULL,
  `title` varchar(500) NOT NULL,
  `picpath` varchar(500) NOT NULL,
  `srno` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `igap_venderproductpictures`
--

INSERT INTO `igap_venderproductpictures` (`id`, `productid`, `title`, `picpath`, `srno`) VALUES
(3, 2, 'demo', 'businessproductpicture/vec1r.png', 1),
(4, 2, 'demo', 'businessproductpicture/6wstv.png', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `igap_venderproductpictures`
--
ALTER TABLE `igap_venderproductpictures`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `igap_venderproductpictures`
--
ALTER TABLE `igap_venderproductpictures`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
