-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 30, 2019 at 07:33 AM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id11406858_davietattendance`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `teacher_id` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `student_id` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `subject_id` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `time` datetime(6) NOT NULL,
  `attendance_status` varchar(10) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`teacher_id`, `student_id`, `subject_id`, `time`, `attendance_status`) VALUES
('raj19', '403', 'btit601', '2019-11-12 20:01:46.827197', 'PRESENT'),
('raj19', '401', 'btit601', '2019-11-12 20:01:46.827197', 'ABSENT'),
('raj19', '417', 'btit601', '2019-11-12 20:01:46.827197', 'ABSENT'),
('raj19', '467', 'btit601', '2019-11-12 20:01:46.827197', 'ABSENT'),
('avani19', '403', 'btit702', '2019-11-12 20:08:36.857135', 'PRESENT'),
('avani19', '417', 'btit702', '2019-11-12 20:08:36.857135', 'ABSENT'),
('raj19', '403', 'btit701', '2019-11-13 16:25:10.641073', 'PRESENT'),
('raj19', '417', 'btit701', '2019-11-13 16:25:10.641073', 'PRESENT'),
('raj19', '401', 'btit701', '2019-11-13 16:25:10.641073', 'ABSENT'),
('raj19', '467', 'btit701', '2019-11-13 16:25:10.641073', 'ABSENT'),
('raj19', '403', 'btit601', '2019-11-15 09:45:37.001574', 'PRESENT'),
('raj19', '467', 'btit601', '2019-11-15 09:45:37.001574', 'PRESENT'),
('raj19', '417', 'btit601', '2019-11-15 09:45:37.001574', 'PRESENT'),
('raj19', '401', 'btit601', '2019-11-15 09:45:37.001574', 'ABSENT'),
('psmann19', '403', 'btcs905', '2019-11-15 10:02:43.192333', 'PRESENT'),
('psmann19', '467', 'btcs905', '2019-11-15 10:02:43.192333', 'PRESENT'),
('psmann19', '417', 'btcs905', '2019-11-15 10:02:43.192333', 'PRESENT'),
('psmann19', '438', 'btcs905', '2019-11-15 10:02:43.192333', 'PRESENT'),
('psmann19', '401', 'btcs905', '2019-11-15 10:02:43.192333', 'ABSENT');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `student_id` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `student_password` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `student_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `student_batch` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `student_contact` varchar(15) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`student_id`, `student_password`, `student_name`, `student_batch`, `student_contact`) VALUES
('401', '401', 'Aarushi', '2020', '9876564323'),
('403', '403', 'Aditi', '2020', '8699594771'),
('417', '417', 'Harshita', '2016', '9814450831'),
('438', '438', 'Riya Gugnani', '2016', '9876768745'),
('467', '467', 'Osheen', '2020', '9845667543');

-- --------------------------------------------------------

--
-- Table structure for table `student_subject`
--

CREATE TABLE `student_subject` (
  `student_id` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `subject_id` varchar(10) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `subject_id` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `subject_name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `subject_year` varchar(5) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`subject_id`, `subject_name`, `subject_year`) VALUES
('btcs603', 'Software Technology', '2019'),
('btcs905', 'STQA', '2019'),
('btit601', 'Network programming', '2019'),
('btit603', 'Web Technology', '2019'),
('btit701', 'BEA', '2019'),
('btit702', 'SPM', '2019');

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `teacher_id` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `teacher_password` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `teacher_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `teacher_contact` varchar(15) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`teacher_id`, `teacher_password`, `teacher_name`, `teacher_contact`) VALUES
('avani19', '123', 'Avani Chopra', '9814450834'),
('psmann19', '123', 'PS Mann', '9814450833'),
('raj19', '123', 'rajindervir kaur', '9814450832');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_student_subject`
--

CREATE TABLE `teacher_student_subject` (
  `teacher_id` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `student_id` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `subject_id` varchar(10) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `teacher_student_subject`
--

INSERT INTO `teacher_student_subject` (`teacher_id`, `student_id`, `subject_id`) VALUES
('avani19', '403', 'btit603'),
('avani19', '403', 'btit702'),
('avani19', '417', 'btit603'),
('avani19', '417', 'btit702'),
('avani19', '438', 'btit603'),
('avani19', '438', 'btit702'),
('psmann19', '401', 'btcs603'),
('psmann19', '401', 'btcs905'),
('psmann19', '403', 'btcs603'),
('psmann19', '403', 'btcs905'),
('psmann19', '467', 'btcs603'),
('psmann19', '467', 'btcs905'),
('raj19', '401', 'btit601'),
('raj19', '401', 'btit701'),
('raj19', '403', 'btit601'),
('raj19', '403', 'btit701'),
('raj19', '417', 'btit601'),
('raj19', '417', 'btit701'),
('raj19', '467', 'btit601'),
('raj19', '467', 'btit701');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_subject`
--

CREATE TABLE `teacher_subject` (
  `teacher_id` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `subject_id` varchar(10) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD KEY `teacher_id` (`teacher_id`,`student_id`,`subject_id`),
  ADD KEY `subject_id` (`subject_id`),
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `student_subject`
--
ALTER TABLE `student_subject`
  ADD KEY `student_id` (`student_id`),
  ADD KEY `subject_id` (`subject_id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`subject_id`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`teacher_id`);

--
-- Indexes for table `teacher_student_subject`
--
ALTER TABLE `teacher_student_subject`
  ADD PRIMARY KEY (`teacher_id`,`student_id`,`subject_id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `subject_id` (`subject_id`);

--
-- Indexes for table `teacher_subject`
--
ALTER TABLE `teacher_subject`
  ADD KEY `subject_id` (`subject_id`),
  ADD KEY `teacher_id` (`teacher_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attendance`
--
ALTER TABLE `attendance`
  ADD CONSTRAINT `attendance_ibfk_1` FOREIGN KEY (`teacher_id`) REFERENCES `teachers` (`teacher_id`),
  ADD CONSTRAINT `attendance_ibfk_2` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`subject_id`),
  ADD CONSTRAINT `attendance_ibfk_3` FOREIGN KEY (`student_id`) REFERENCES `students` (`student_id`);

--
-- Constraints for table `student_subject`
--
ALTER TABLE `student_subject`
  ADD CONSTRAINT `student_subject_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`student_id`),
  ADD CONSTRAINT `student_subject_ibfk_2` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`subject_id`);

--
-- Constraints for table `teacher_student_subject`
--
ALTER TABLE `teacher_student_subject`
  ADD CONSTRAINT `teacher_student_subject_ibfk_1` FOREIGN KEY (`teacher_id`) REFERENCES `teachers` (`teacher_id`),
  ADD CONSTRAINT `teacher_student_subject_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `students` (`student_id`),
  ADD CONSTRAINT `teacher_student_subject_ibfk_3` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`subject_id`);

--
-- Constraints for table `teacher_subject`
--
ALTER TABLE `teacher_subject`
  ADD CONSTRAINT `teacher_subject_ibfk_1` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`subject_id`),
  ADD CONSTRAINT `teacher_subject_ibfk_2` FOREIGN KEY (`teacher_id`) REFERENCES `teachers` (`teacher_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
