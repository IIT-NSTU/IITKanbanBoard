-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 30, 2023 at 12:30 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kanban_board`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `Email` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `Correct_password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`Email`, `Password`, `Correct_password`) VALUES
('bijoy@gmail.com', '', '$2y$10$LyVf7vRM.qxZ3ltyJcDsiuid/zldokCLlwZuZ.deRuY'),
('etu123@gmail.com', '', '$2y$10$/UNdSDqEnoG.6foie1FGH.S2c8iWvoxvUOg5zStrK2o'),
('etu@gmail.com', '', '$2y$10$E5.h0xMr3NQkPXgvGZvERelLKCOoG1rHIFdeb1W4wgy'),
('hello@gmail.com', '', '$2y$10$gEVP31iKwfy/FK/bgkdEMeOASEFGQ9b4Q0o2/vNYfeW'),
('raju.iit3@gmail', '', '$2y$10$DhEWYgNWKGi65a3c1shO8uZ3ux4lkBb5C4ObVwTtnge'),
('raju.iit3@gmail.com', '', '$2y$10$Dmy4M1/wvrCPNsdaXVct1.UBkqTp0GySEK4DZo9.bc0'),
('raju123@emai', '', '$2y$10$EXBbHi5E9pCuK8IfqR8SIOm9p2CvP5XBzXve11hdtRT'),
('raju@gmail.com', '', '$2y$10$xVodVcsVBeY/e4DSanVetefizsBOKatxYlZBqrVc0ti'),
('saiful@gmail.com', '', '$2y$10$QYNAMj7uk4wpEJf8GB5gw.HsH6lEAnlzvB75DW9R4MP'),
('santo123@gmail.com', '', '$2y$10$BbbbIBstyP9rRm.yod8lL.CJhRXPTRhTmHoOhiOT1jc');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`Email`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
