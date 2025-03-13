-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 13, 2025 at 10:09 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `guest_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `guest_info`
--

CREATE TABLE `guest_info` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `document` varchar(255) DEFAULT NULL,
  `reg_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `guest_info`
--

INSERT INTO `guest_info` (`id`, `first_name`, `last_name`, `email`, `photo`, `document`, `reg_date`) VALUES
(2, 'Raymart', 'Magallanes', 'regulacionnikko@mail.com', 'uploads/photos/1741855134_wallpaperflare.com_wallpaper.jpg', 'uploads/documents/1741855134_Domain-Course-4-Midex.pdf', '2025-03-13 08:35:01'),
(3, 'Mika', 'Magallanes', 'user@mail.com', 'uploads/1741855554_wallpaperflare.com_wallpaper (3).jpg', 'uploads/documents/1741855570_IPT-302-Midterm-Project.pdf', '2025-03-13 08:45:54'),
(6, 'awawa', 'Regulacion', 'sadsadas@mail.com', 'uploads/1741856460_wallpaperflare.com_wallpaper (1).jpg', 'uploads/documents/1741856473_PRELIM-PROJECT-IN-IPT-302.pdf', '2025-03-13 09:01:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `guest_info`
--
ALTER TABLE `guest_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `guest_info`
--
ALTER TABLE `guest_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
