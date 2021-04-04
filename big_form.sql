-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 04, 2021 at 07:41 AM
-- Server version: 5.7.24
-- PHP Version: 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `big_form`
--

-- --------------------------------------------------------

--
-- Table structure for table `course_stream`
--

CREATE TABLE `course_stream` (
  `streamid` int(11) NOT NULL,
  `stream_name` varchar(55) NOT NULL,
  `main_course_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course_stream`
--

INSERT INTO `course_stream` (`streamid`, `stream_name`, `main_course_id`) VALUES
(5, 'Fashion Management', 9),
(37, 'Digital Administation', 9),
(38, 'MTech', 12),
(39, 'Information Tech', 9),
(40, 'History', 11),
(41, 'Hindi literature', 11),
(42, 'BioTechnology', 12),
(43, 'English Literature ', 10),
(44, 'Science Botany', 10),
(45, 'BioTechnology', 10);

-- --------------------------------------------------------

--
-- Stand-in structure for view `customerpayments`
-- (See below for the actual view)
--
CREATE TABLE `customerpayments` (
`f_name` varchar(55)
,`m_name` varchar(55)
,`10_marks` decimal(12,2)
,`12_marks` decimal(12,2)
);

-- --------------------------------------------------------

--
-- Table structure for table `lead_medium`
--

CREATE TABLE `lead_medium` (
  `leadmediumid` int(11) NOT NULL,
  `lead_mediums` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lead_medium`
--

INSERT INTO `lead_medium` (`leadmediumid`, `lead_mediums`) VALUES
(1, 'Phone'),
(2, 'Email'),
(3, 'Instagram'),
(4, 'Facebook'),
(5, 'Youtube'),
(6, 'Twitter'),
(7, 'Whatsapp');

-- --------------------------------------------------------

--
-- Table structure for table `lead_source`
--

CREATE TABLE `lead_source` (
  `leid` int(11) NOT NULL,
  `lead_source` varchar(55) NOT NULL,
  `lead_details` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lead_source`
--

INSERT INTO `lead_source` (`leid`, `lead_source`, `lead_details`) VALUES
(7, 'Mumbai Diamond', ''),
(8, 'Lucknow', ''),
(9, 'Indore Live ', ''),
(10, 'Kanpur Sorts', '');

-- --------------------------------------------------------

--
-- Table structure for table `lead_status`
--

CREATE TABLE `lead_status` (
  `leadstatusid` int(11) NOT NULL,
  `lead_status` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lead_status`
--

INSERT INTO `lead_status` (`leadstatusid`, `lead_status`) VALUES
(1, 'POTENTIAL'),
(2, 'NOT POTENTIAL'),
(3, 'FOLLOW UP AGAIN'),
(4, 'APPOINTMENT FIXED'),
(5, 'BEYOND INTAKE'),
(6, 'WRONG NUMBER'),
(7, 'NOT CALLED'),
(8, 'APPOINTMENT FIXED FOR INTERVIEW');

-- --------------------------------------------------------

--
-- Table structure for table `main_course`
--

CREATE TABLE `main_course` (
  `courseid` int(11) NOT NULL,
  `course_name` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `main_course`
--

INSERT INTO `main_course` (`courseid`, `course_name`) VALUES
(9, 'MBA'),
(10, 'PHD'),
(11, 'BA'),
(12, 'MSC');

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `stateid` int(11) NOT NULL,
  `state_name` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`stateid`, `state_name`) VALUES
(1, 'Gujrat'),
(2, 'Rajasthan'),
(3, 'Maharashtra'),
(4, 'Delhi'),
(5, 'Karnataka'),
(6, 'Tamil Nadu'),
(7, 'Orrisa');

-- --------------------------------------------------------

--
-- Table structure for table `student_details`
--

CREATE TABLE `student_details` (
  `std_id` int(11) NOT NULL,
  `f_name` varchar(55) NOT NULL,
  `m_name` varchar(55) NOT NULL,
  `l_name` varchar(55) NOT NULL,
  `date_ofbirth` date NOT NULL,
  `mobile_num` int(11) NOT NULL,
  `mobile_num_alter` int(11) NOT NULL,
  `email_id` varchar(55) NOT NULL,
  `stu_image` varchar(55) DEFAULT NULL,
  `student_edu_id` int(11) DEFAULT NULL,
  `student_lead_id` int(11) DEFAULT NULL,
  `student_recommend_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_details`
--

INSERT INTO `student_details` (`std_id`, `f_name`, `m_name`, `l_name`, `date_ofbirth`, `mobile_num`, `mobile_num_alter`, `email_id`, `stu_image`, `student_edu_id`, `student_lead_id`, `student_recommend_id`) VALUES
(9, 'Dheeraj', 'Yashwant', 'Singh', '2021-03-09', 2252552, 25252552, 'dandan@gmail.com', 'WhatsApp Image 2021-02-22 at 02.53.43.jpeg', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `student_educational_detail`
--

CREATE TABLE `student_educational_detail` (
  `eduid` int(11) NOT NULL,
  `10_marks` decimal(12,2) NOT NULL,
  `12_marks` decimal(12,2) NOT NULL,
  `graduation_marks` decimal(12,2) NOT NULL,
  `graduation_stream` varchar(55) NOT NULL,
  `graduation_year` date NOT NULL,
  `job_profile` varchar(255) NOT NULL,
  `exp_year` int(11) NOT NULL,
  `exp_month` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_educational_detail`
--

INSERT INTO `student_educational_detail` (`eduid`, `10_marks`, `12_marks`, `graduation_marks`, `graduation_stream`, `graduation_year`, `job_profile`, `exp_year`, `exp_month`) VALUES
(29, '22.33', '23.44', '33.33', 'Information', '2021-03-09', 'Developer', 2, 3),
(30, '11.44', '98.88', '99.88', 'Chemical', '2021-03-03', 'Software Engineering', 4, 5),
(31, '31.35', '32.55', '33.42', 'BSc', '2021-03-09', 'Developer', 2, 12);

-- --------------------------------------------------------

--
-- Table structure for table `student_leads_details`
--

CREATE TABLE `student_leads_details` (
  `sld_id` int(11) NOT NULL,
  `start_year` varchar(55) DEFAULT NULL,
  `start_month` varchar(55) DEFAULT NULL,
  `interested_states` varchar(255) DEFAULT NULL,
  `lead_source_id` int(11) DEFAULT NULL,
  `lead_meduim_id` int(11) DEFAULT NULL,
  `lead_status_id` int(11) NOT NULL,
  `main_courses_id` int(11) NOT NULL,
  `course_stream_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_leads_details`
--

INSERT INTO `student_leads_details` (`sld_id`, `start_year`, `start_month`, `interested_states`, `lead_source_id`, `lead_meduim_id`, `lead_status_id`, `main_courses_id`, `course_stream_id`) VALUES
(85, '2024', 'Aug', 'Delhi,Madhya Pradesh', 8, 4, 3, 9, 5);

-- --------------------------------------------------------

--
-- Table structure for table `student_recommend`
--

CREATE TABLE `student_recommend` (
  `recmmndid` int(11) NOT NULL,
  `name_one` varchar(55) NOT NULL,
  `name_two` varchar(55) NOT NULL,
  `contact_no1` int(55) NOT NULL,
  `contact_no2` int(55) NOT NULL,
  `add_comment` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_recommend`
--

INSERT INTO `student_recommend` (`recmmndid`, `name_one`, `name_two`, `contact_no1`, `contact_no2`, `add_comment`) VALUES
(15, 'Himsh', 'Arush', 1313133, 2222222, 'zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz');

-- --------------------------------------------------------

--
-- Structure for view `customerpayments`
--
DROP TABLE IF EXISTS `customerpayments`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `customerpayments`  AS SELECT `student_details`.`f_name` AS `f_name`, `student_details`.`m_name` AS `m_name`, `student_educational_detail`.`10_marks` AS `10_marks`, `student_educational_detail`.`12_marks` AS `12_marks` FROM (`student_details` join `student_educational_detail` on((`student_details`.`student_edu_id` = `student_educational_detail`.`eduid`))) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `course_stream`
--
ALTER TABLE `course_stream`
  ADD PRIMARY KEY (`streamid`),
  ADD KEY `main_course_details` (`main_course_id`);

--
-- Indexes for table `lead_medium`
--
ALTER TABLE `lead_medium`
  ADD PRIMARY KEY (`leadmediumid`);

--
-- Indexes for table `lead_source`
--
ALTER TABLE `lead_source`
  ADD PRIMARY KEY (`leid`);

--
-- Indexes for table `lead_status`
--
ALTER TABLE `lead_status`
  ADD PRIMARY KEY (`leadstatusid`);

--
-- Indexes for table `main_course`
--
ALTER TABLE `main_course`
  ADD PRIMARY KEY (`courseid`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`stateid`);

--
-- Indexes for table `student_details`
--
ALTER TABLE `student_details`
  ADD PRIMARY KEY (`std_id`),
  ADD KEY `educationa_details` (`student_edu_id`),
  ADD KEY `student_lead` (`student_lead_id`),
  ADD KEY `student_recommendation` (`student_recommend_id`);

--
-- Indexes for table `student_educational_detail`
--
ALTER TABLE `student_educational_detail`
  ADD PRIMARY KEY (`eduid`);

--
-- Indexes for table `student_leads_details`
--
ALTER TABLE `student_leads_details`
  ADD PRIMARY KEY (`sld_id`),
  ADD KEY `lead_source` (`lead_source_id`),
  ADD KEY `lead_medium` (`lead_meduim_id`),
  ADD KEY `lead_status` (`lead_status_id`),
  ADD KEY `main_course` (`main_courses_id`),
  ADD KEY `course_stream` (`course_stream_id`);

--
-- Indexes for table `student_recommend`
--
ALTER TABLE `student_recommend`
  ADD PRIMARY KEY (`recmmndid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `course_stream`
--
ALTER TABLE `course_stream`
  MODIFY `streamid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `lead_medium`
--
ALTER TABLE `lead_medium`
  MODIFY `leadmediumid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `lead_source`
--
ALTER TABLE `lead_source`
  MODIFY `leid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `lead_status`
--
ALTER TABLE `lead_status`
  MODIFY `leadstatusid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `main_course`
--
ALTER TABLE `main_course`
  MODIFY `courseid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `stateid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `student_details`
--
ALTER TABLE `student_details`
  MODIFY `std_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `student_educational_detail`
--
ALTER TABLE `student_educational_detail`
  MODIFY `eduid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `student_leads_details`
--
ALTER TABLE `student_leads_details`
  MODIFY `sld_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `student_recommend`
--
ALTER TABLE `student_recommend`
  MODIFY `recmmndid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `course_stream`
--
ALTER TABLE `course_stream`
  ADD CONSTRAINT `main_course_details` FOREIGN KEY (`main_course_id`) REFERENCES `main_course` (`courseid`);

--
-- Constraints for table `student_details`
--
ALTER TABLE `student_details`
  ADD CONSTRAINT `educationa_details` FOREIGN KEY (`student_edu_id`) REFERENCES `student_educational_detail` (`eduid`),
  ADD CONSTRAINT `student_lead` FOREIGN KEY (`student_lead_id`) REFERENCES `student_leads_details` (`sld_id`),
  ADD CONSTRAINT `student_recommendation` FOREIGN KEY (`student_recommend_id`) REFERENCES `student_recommend` (`recmmndid`);

--
-- Constraints for table `student_leads_details`
--
ALTER TABLE `student_leads_details`
  ADD CONSTRAINT `course_stream` FOREIGN KEY (`course_stream_id`) REFERENCES `course_stream` (`streamid`),
  ADD CONSTRAINT `lead_medium` FOREIGN KEY (`lead_meduim_id`) REFERENCES `lead_medium` (`leadmediumid`),
  ADD CONSTRAINT `lead_source` FOREIGN KEY (`lead_source_id`) REFERENCES `lead_source` (`leid`),
  ADD CONSTRAINT `lead_status` FOREIGN KEY (`lead_status_id`) REFERENCES `lead_status` (`leadstatusid`),
  ADD CONSTRAINT `main_course` FOREIGN KEY (`main_courses_id`) REFERENCES `main_course` (`courseid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
