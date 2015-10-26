-- phpMyAdmin SQL Dump
-- version 4.4.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 08, 2015 at 12:31 PM
-- Server version: 5.6.25
-- PHP Version: 5.6.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blogdatabase`
--

-- --------------------------------------------------------

--
-- Table structure for table `blogger_info`
--

CREATE TABLE IF NOT EXISTS `blogger_info` (
  `blogger_id` int(11) NOT NULL,
  `blogger_username` varchar(100) NOT NULL,
  `blogger_password` varchar(100) NOT NULL,
  `blogger_creation_date` datetime DEFAULT NULL,
  `blogger_user_type` int(11) NOT NULL DEFAULT '0',
  `blogger_is_active` int(11) NOT NULL DEFAULT '0',
  `blogger_updated_date` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blogger_info`
--

INSERT INTO `blogger_info` (`blogger_id`, `blogger_username`, `blogger_password`, `blogger_creation_date`, `blogger_user_type`, `blogger_is_active`, `blogger_updated_date`) VALUES
(0, 'Harshal', '7a28b42059af5e6f658c27d011c169a4e0810aa1', '2015-08-11 00:00:00', 1, 1, '2015-09-02 19:10:02'),
(1, 'Tanmay', 'abff452a340cb95e569f244218f8a92254fac461', '2014-10-11 00:00:00', 0, 1, NULL),
(2, 'Shubham', 'd87ee5b02f19d302b77d739251b54dffc7e50b79', '2015-08-24 00:00:00', 0, 0, '2015-09-05 01:57:07'),
(3, 'Akhilesh', '67c08e4cd7ae3b4bf2d8b1126cd6e5b132797576', '2015-06-22 00:00:00', 0, 1, '2015-09-01 22:03:21'),
(4, 'Viral', 'd3788071ea221be84532414bbdbaae0f2a1744f0', '2015-04-21 00:00:00', 0, 1, '2015-09-04 20:15:27'),
(5, 'Sourav', '9db28a81084c08ae00ac838a8b73db206db4c371', '2015-08-22 00:00:00', 0, 0, '2015-09-08 11:56:30'),
(6, 'Aakash', '548a63c67cc3cdc237d665322d54671bf038be6b', '2015-08-25 00:00:00', 0, 0, NULL),
(7, 'Richa', '546367226f3dc773ebfe6faffb8b11aaa94f37fd', '2015-08-27 00:00:00', 0, 0, NULL),
(8, 'Urmil', 'e5364a2b837304ebf7b2ef0ebf7796cd85d20262', '2015-09-02 14:03:17', 0, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `blog_detail`
--

CREATE TABLE IF NOT EXISTS `blog_detail` (
  `blog_detail_id` int(11) NOT NULL,
  `blog_id` int(11) DEFAULT NULL,
  `blog_detail_image` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `blog_master`
--

CREATE TABLE IF NOT EXISTS `blog_master` (
  `blog_id` int(11) NOT NULL,
  `blogger_id` int(11) DEFAULT NULL,
  `blog_title` varchar(1024) NOT NULL,
  `blog_desc` varchar(60000) NOT NULL,
  `blog_category` varchar(100) DEFAULT NULL,
  `blog_author` varchar(50) NOT NULL,
  `blog_is_active` int(1) NOT NULL DEFAULT '0',
  `creation_date` datetime NOT NULL,
  `updated_date` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blog_master`
--

INSERT INTO `blog_master` (`blog_id`, `blogger_id`, `blog_title`, `blog_desc`, `blog_category`, `blog_author`, `blog_is_active`, `creation_date`, `updated_date`) VALUES
(8, NULL, 'dummy', 'dummy', 'dummy', '', 0, '0000-00-00 00:00:00', '2015-09-01 00:00:00'),
(13, 3, 'Cricket', 'Cricket is a bat-and-ball game played between two teams of 11 players each on a field at the centre of which is a rectangular 22-yard-long pitch. The game is played by 120 million players in many countries, making it the world''s second most popular sport. Each team takes its turn to bat, attempting to score runs, while the other team fields. Each turn is known as an innings ', 'sports', 'Akhilesh', 1, '2015-08-22 00:00:00', '0000-00-00 00:00:00'),
(17, 3, 'Hostel', 'A hostel is a budget-oriented, overnight lodging place where travelers rent accommodation by the bed as opposed to the whole room.', 'lifestyle', 'Akhilesh', 1, '2015-08-22 00:00:00', '0000-00-00 00:00:00'),
(20, 7, 'birthday', 'hii harshal today is my birthday i want my gift.............chal bye pak mat', 'lifestyle', 'Richa', 0, '2015-08-27 00:00:00', '0000-00-00 00:00:00'),
(47, 5, 'gfgrv', 'r4gvt4htgv4r', '4gtr4g', 'Sourav', 1, '2015-09-03 17:57:50', '2015-09-03 17:57:50'),
(48, 5, 'fdhdsgd', 'nhgjdghshfs', 'dsfgfx', 'Sourav', 1, '2015-09-03 18:04:19', '2015-09-03 18:04:19'),
(49, 5, 'jdhteh', 'adgnfn', 'ardgfdsg', 'Sourav', 1, '2015-09-03 18:04:26', '2015-09-03 18:04:26'),
(50, 4, 'Youtube', 'kjdvhhuvo; SVDIJSIOV ADOIOILKJVIDJ', 'Entertainment', 'Viral', 1, '2015-09-04 20:15:27', '2015-09-04 20:15:27'),
(52, 5, 'attendance', 'I bunked whole first half', 'senti', 'Sourav', 0, '2015-09-08 11:56:30', '2015-09-08 11:56:30');

-- --------------------------------------------------------

--
-- Table structure for table `contact_form`
--

CREATE TABLE IF NOT EXISTS `contact_form` (
  `id` int(50) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `subject` varchar(2048) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact_form`
--

INSERT INTO `contact_form` (`id`, `name`, `email`, `subject`) VALUES
(1, 'Avinash', 'avi@gmail.com', 'There are some bad posts.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blogger_info`
--
ALTER TABLE `blogger_info`
  ADD PRIMARY KEY (`blogger_id`);

--
-- Indexes for table `blog_detail`
--
ALTER TABLE `blog_detail`
  ADD PRIMARY KEY (`blog_detail_id`),
  ADD KEY `blog_id` (`blog_id`);

--
-- Indexes for table `blog_master`
--
ALTER TABLE `blog_master`
  ADD PRIMARY KEY (`blog_id`),
  ADD KEY `blogger_id` (`blogger_id`);

--
-- Indexes for table `contact_form`
--
ALTER TABLE `contact_form`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blogger_info`
--
ALTER TABLE `blogger_info`
  MODIFY `blogger_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `blog_detail`
--
ALTER TABLE `blog_detail`
  MODIFY `blog_detail_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `blog_master`
--
ALTER TABLE `blog_master`
  MODIFY `blog_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=53;
--
-- AUTO_INCREMENT for table `contact_form`
--
ALTER TABLE `contact_form`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `blog_detail`
--
ALTER TABLE `blog_detail`
  ADD CONSTRAINT `blog_detail_ibfk_1` FOREIGN KEY (`blog_id`) REFERENCES `blog_master` (`blog_id`),
  ADD CONSTRAINT `blog_detail_ibfk_2` FOREIGN KEY (`blog_id`) REFERENCES `blog_master` (`blog_id`);

--
-- Constraints for table `blog_master`
--
ALTER TABLE `blog_master`
  ADD CONSTRAINT `blog_master_ibfk_1` FOREIGN KEY (`blogger_id`) REFERENCES `blogger_info` (`blogger_id`),
  ADD CONSTRAINT `blog_master_ibfk_2` FOREIGN KEY (`blogger_id`) REFERENCES `blogger_info` (`blogger_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
