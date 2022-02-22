-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 11, 2022 at 05:35 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `student_result_management_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `announcements`
--

CREATE TABLE `announcements` (
  `announcement_id` int(11) UNSIGNED NOT NULL,
  `announcement` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `announcements`
--

INSERT INTO `announcements` (`announcement_id`, `announcement`) VALUES
(1, 'AU Concert'),
(2, 'Periodical'),
(3, 'Midterms'),
(4, 'Test'),
(5, 'Java'),
(6, 'hinid ko alam'),
(7, 'nagawa kona '),
(8, 'Animation 4');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `accountId` int(11) UNSIGNED NOT NULL,
  `studentId` int(11) NOT NULL,
  `username` varchar(100) CHARACTER SET latin1 NOT NULL,
  `password` varchar(100) CHARACTER SET latin1 NOT NULL,
  `accessLevel` int(100) NOT NULL,
  `dateRegistered` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`accountId`, `studentId`, `username`, `password`, `accessLevel`, `dateRegistered`) VALUES
(1, 659472, 'aliyah', '0000', 1, '2022-01-11 15:50:29'),
(2, 23421, 'admin', 'admin', 1, '2022-01-31 15:56:52');

-- --------------------------------------------------------

--
-- Table structure for table `results`
--

CREATE TABLE `results` (
  `score` int(11) NOT NULL,
  `estimated_score` int(11) NOT NULL,
  `overall_score` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `account_id` int(11) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `middleName` varchar(255) NOT NULL,
  `stdnt_strand` varchar(255) NOT NULL,
  `stdnt_section` varchar(255) NOT NULL,
  `stdnt_lrn` varchar(255) NOT NULL,
  `sex` varchar(255) NOT NULL,
  `bday` date NOT NULL,
  `stdnt_email` varchar(255) NOT NULL,
  `stdnt_contactNum` varchar(255) NOT NULL,
  `stdnt_motherName` varchar(255) NOT NULL,
  `stdnt_momNum` varchar(255) NOT NULL,
  `stdnt_fatherName` varchar(255) NOT NULL,
  `stdnt_fatherNum` varchar(255) NOT NULL,
  `access_level` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `user_systemStatus` varchar(255) NOT NULL,
  `date_registered` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`account_id`, `lastName`, `firstName`, `middleName`, `stdnt_strand`, `stdnt_section`, `stdnt_lrn`, `sex`, `bday`, `stdnt_email`, `stdnt_contactNum`, `stdnt_motherName`, `stdnt_momNum`, `stdnt_fatherName`, `stdnt_fatherNum`, `access_level`, `username`, `password`, `user_systemStatus`, `date_registered`) VALUES
(18030, 'Bruh', 'Joshua', '', 'ICT', '2A', '13689234', '', '0000-00-00', '', '09955662435', '', '', '', '', '0', 'student2', '$2y$10$1BDXdl.ZCn28S61l4dPuf.8SHC54pb.XBhQrWS/IJ2n7Am/ToyVpC', 'Offline', '2022-02-03 11:04:00'),
(35606, 'Reyes', 'Dennis Jim', 'Catindig', 'STEM', '1A', '1368234723', 'Male', '2003-03-19', 'dennisjimpogi@gmail.com', '09345234321', '', '', '', '', '0', 'student5', '$2y$10$ls9hVHUSVmq0BdCvYcibtOJvx968yMS0sGjdgpiGc084N27Rvz6py', 'Offline', '2022-02-06 15:22:53'),
(62937, 'Rosario', 'John Ryan', 'Del', 'ICT', '1A', '136812392', '', '0000-00-00', '', '09963452374', '', '', '', '', '0', 'student3', '$2y$10$I/P.SqsqLwjBYGc/OxyoBun4vfl52yptSTAKY.s/Gy1XiEGBX7viu', 'Offline', '2022-02-03 16:17:10'),
(65674, 'Tamaña', 'Ken Brian', 'NA', 'ICT', '1A', '136857323', '', '0000-00-00', '', '09923487423', '', '', '', '', '0', 'student4', '$2y$10$w3b48pdYSC8rJ0eAFqofZuxPgMgixl.odu4wCnzcsoiWeChFIK5om', 'Offline', '2022-02-03 16:19:12'),
(89984, 'Calderon', 'John Emmanuel', 'Cruz', 'STEM', '1A', '4252e4134', 'Male', '2004-03-07', 'johnemmanuelcruz23@gmail.com', '09950479994', '', '', '', '', '0', 'student7', '$2y$10$eyD8GpQJNeuYfvYcXCNFnuvmHVImYTLU0HRUgag52CXvebECnlrG2', 'Offline', '2022-02-08 05:04:24'),
(99519, 'CALDERON', 'JOHN EMMANUEL', 'CRUZ', 'ICT', '1A', '4574542525', '', '0000-00-00', 'james.calderon023@gmail.com', '09950479994', '', '', '', '', '0', 'student', '$2y$10$.tay1Ycf/PzkBVUgnt960.jEIGmn2FiN.q2B4qbt4eoIL4LYp2RF.', 'Offline', '2022-02-03 16:10:09');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `subject_id` int(11) NOT NULL,
  `subject_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`subject_id`, `subject_name`) VALUES
(1, 'Computer-Programming'),
(2, 'Research'),
(3, 'Animation'),
(4, 'General-Mathematics\n'),
(6, 'Contemporary-Arts\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) UNSIGNED NOT NULL,
  `account_id` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `middleName` varchar(255) NOT NULL,
  `sex` varchar(255) NOT NULL,
  `bday` date NOT NULL,
  `motherName` varchar(255) NOT NULL,
  `motherContactNum` varchar(255) NOT NULL,
  `fatherName` varchar(255) NOT NULL,
  `fatherContactNum` varchar(255) NOT NULL,
  `strand` varchar(255) NOT NULL,
  `advisory_class` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `contact_num` varchar(255) NOT NULL,
  `stdnt_strand` varchar(255) NOT NULL,
  `subjectsTaken` varchar(255) NOT NULL,
  `stdnt_section` varchar(255) NOT NULL,
  `stdnt_lrn` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `user_systemStatus` varchar(255) NOT NULL,
  `access_level` int(11) NOT NULL,
  `date_registered` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `account_id`, `lastName`, `firstName`, `middleName`, `sex`, `bday`, `motherName`, `motherContactNum`, `fatherName`, `fatherContactNum`, `strand`, `advisory_class`, `subject`, `email`, `contact_num`, `stdnt_strand`, `subjectsTaken`, `stdnt_section`, `stdnt_lrn`, `username`, `password`, `user_systemStatus`, `access_level`, `date_registered`) VALUES
(14, '77834', 'Calderon', 'John Emmanuel', 'Cruz', 'Male', '0000-00-00', '', '', '', '', 'ADMIN', 'ADMIN', '', 'johnemmanuelcruz23@gmail.com', '09950479994', 'ADMIN', '', 'ADMIN', 'ADMIN', 'admin', '$2y$10$ddz8NteDR8ABzhh2HO7k8ugni8dLB04CboeE9wW/tXWWRwBjcMOV6', 'Offline', 1, '2021-05-13 12:11:34'),
(127, '81432', 'Calderon', 'John Emmanuel', 'Cruz', 'Male', '2004-03-07', 'N/A', 'N/A', 'N/A', 'N/A', 'ICT', '1A', 'Computer-Programming', 'johnemmanuelcruz23@gmail.com', '09950479994', 'FACULTY', '', 'stdnt_section', 'FACULTY', 'faculty', '$2y$10$eHYf/tcpKF6IB/RadcuOuO..49.QA2lEMEItLdYIZWI.qi42n1Qdi', 'Offline', 2, '2022-02-09 04:22:56'),
(128, '77210', 'Cruz', 'Kalfontein', 'Tibegar', 'Male', '2004-03-08', 'N/A', 'N/A', 'N/A', 'N/A', 'STEM', '2A', 'Research', 'kalfonpogi@gmail.com', '0995789341', 'FACULTY', '', 'stdnt_section', 'FACULTY', 'faculty2', '$2y$10$llizofXbFvlQX61W4k3P1OHMzI/vmmeSS2TmZ6ONgOkYNEkAASHSe', 'Offline', 2, '2022-02-09 04:24:24'),
(129, '12690', 'Calderon', 'John Emmanuel', 'Cruz', 'Male', '2004-03-07', 'N/A', 'N/A', 'N/A', 'N/A', '', '', '', 'johnemmanuelcruz23@gmail.com', '09950479994', 'ICT', 'Computer-Programming', '1A', '1368909099', 'student', '$2y$10$QoiInh8d1uJ7WetnHPDHQ.Z5Mch1/Bz4snaHhYr8apxd8WqMducN2', 'Online', 0, '2022-02-09 18:32:40');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `announcements`
--
ALTER TABLE `announcements`
  ADD PRIMARY KEY (`announcement_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`account_id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`subject_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `account_id` (`account_id`,`email`,`contact_num`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `announcements`
--
ALTER TABLE `announcements`
  MODIFY `announcement_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `subject_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=130;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
