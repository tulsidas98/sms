-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306

-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbms1`
--

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `M_id` int(11) NOT NULL,
  `Sub_name` varchar(50) NOT NULL,
  `Rating` int(4) DEFAULT NULL,
  `feedback` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`M_id`, `Sub_name`, `Rating`, `feedback`) VALUES
(24, 'Math', NULL, NULL),
(24, 'Physics', NULL, NULL),
(24, 'English', 8, 'Understood Narration changes '),
(25, 'Math', 8, 'Very conceptual good understanding'),
(25, 'Physics', NULL, NULL),
(25, 'Computer Science', 8, 'Python basics done well'),
(26, 'Computer Science', NULL, NULL),
(27, 'Social Studies', 8, 'History Past awesome'),
(27, 'English', 7, 'Understood Voice changes '),
(28, 'Biology', 9, 'Zoology basics'),
(28, 'Chemistry', NULL, NULL),
(29, 'Math', NULL, NULL),
(29, 'Physics', NULL, NULL),
(29, 'Chemistry', NULL, NULL),
(30, 'Math', NULL, NULL),
(30, 'Physics', NULL, NULL),
(30, 'Chemistry', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `fees`
--

CREATE TABLE `fees` (
  `M_id` int(11) NOT NULL,
  `Sub_id` int(11) NOT NULL,
  `fees_per_hr` bigint(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fees`
--

INSERT INTO `fees` (`M_id`, `Sub_id`, `fees_per_hr`) VALUES
(24, 1, 500),
(24, 3, 400),
(24, 6, 1200),
(25, 1, 1000),
(25, 3, 800),
(25, 7, 300),
(26, 7, 1200),
(27, 5, 750),
(27, 6, 350),
(28, 2, 1300),
(28, 4, 900),
(29, 1, 1000),
(29, 3, 2300),
(29, 4, 800),
(30, 1, 1000),
(30, 3, 800),
(30, 4, 300);

-- --------------------------------------------------------

--
-- Table structure for table `mentor_login`
--

CREATE TABLE `mentor_login` (
  `M_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mentor_login`
--

INSERT INTO `mentor_login` (`M_id`, `username`, `password`) VALUES
(24, 'roshan123', 'roshan123'),
(25, 'sahesh234', 'sahesh234'),
(26, 'deepta908', 'deepta908'),
(27, 'himanushu745', 'himanushu745'),
(28, 'sourav128', 'sourav128'),
(29, 'aman123', 'aman123'),
(30, 'sunil123', 'sunil123');

-- --------------------------------------------------------

--
-- Table structure for table `mentor_reg`
--

CREATE TABLE `mentor_reg` (
  `M_id` int(11) NOT NULL,
  `fname` char(30) NOT NULL,
  `lname` char(30) DEFAULT NULL,
  `email` varchar(40) NOT NULL CHECK (`email` like '%@%' and `email` like '%.%'),
  `contact` decimal(10,0) NOT NULL CHECK (char_length(`contact`) = 10),
  `city` varchar(50) NOT NULL,
  `Qualification` varchar(30) NOT NULL,
  `Resume_Link` varchar(40) NOT NULL CHECK (`Resume_Link` like '%.%')
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mentor_reg`
--

INSERT INTO `mentor_reg` (`M_id`, `fname`, `lname`, `email`, `contact`, `city`, `Qualification`, `Resume_Link`) VALUES
(24, 'Roshan', 'Mehra', 'roshan7@gmail.com', '8928946785', 'Bangalore', 'Graduate', 'linkedin_roshan.in'),
(25, 'Sahesh', 'Mukherjee', 'sahesh@gmail.com', '8909845678', 'Dharwad', 'Btech', 'linkedin_sahesh.in'),
(26, 'Deepta', 'Devkota', 'deepta@gmail.com', '9999999999', 'Mangalore', 'Btech-Cse', 'linkedin_deepta.in'),
(27, 'Himanushu', 'Cheylike', 'himanushu@gamil.com', '8967851239', 'Bangalore', 'B-A History', 'linkedin_himanushu.in'),
(28, 'Sourav', 'Karmakar', 'sourav@gmail.com', '8768906542', 'Dharwad', 'MBBS', 'linkedin_sourav.in'),
(29, 'Aman', 'Dhattarwal', 'aman@gmail.com', '8938571236', 'Bangalore', 'Graduate', 'linkedin_aman.in'),
(30, 'Sunil', 'Yadav', 'sunil@gmail.com', '8918764524', 'Bangalore', 'Cse Graduate', 'linkedin_sunil.in');

-- --------------------------------------------------------

--
-- Table structure for table `mentor_sub`
--

CREATE TABLE `mentor_sub` (
  `M_id` int(11) NOT NULL,
  `Sub_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mentor_sub`
--

INSERT INTO `mentor_sub` (`M_id`, `Sub_id`) VALUES
(24, 1),
(24, 3),
(24, 6),
(25, 1),
(25, 3),
(25, 7),
(26, 7),
(27, 5),
(27, 6),
(28, 2),
(28, 4),
(29, 1),
(29, 3),
(29, 4),
(30, 1),
(30, 3),
(30, 4);

-- --------------------------------------------------------

--
-- Table structure for table `resourcesharing`
--

CREATE TABLE `resourcesharing` (
  `Sub_id` int(11) NOT NULL,
  `book_name` varchar(50) NOT NULL,
  `book_author` varchar(50) NOT NULL,
  `book_link` varchar(50) NOT NULL,
  `DPP_link` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `resourcesharing`
--

INSERT INTO `resourcesharing` (`Sub_id`, `book_name`, `book_author`, `book_link`, `DPP_link`) VALUES
(1, 'Cengage Algebra', 'Mr.Amit Arora', 'www.cengage.in/Algebra', 'www.cengage.in/Algebra/DPPs'),
(2, 'NCERT Biology 12th', 'Mr.Singh', 'www.ncert.in/biology12', 'www.ncert.in/biology12/dpps'),
(3, 'Concepts of Physics', 'HC Verma', 'www.hcverma/conceptsofphy', 'www.hcverma/conceptsofphy/DPPs'),
(4, 'Cengage Inorganic Chemistry', 'Mr.Brahma', 'www.cengage.in/ inorganicchemistry', 'www.cengage.in/ inorganicchemistry/DPPs'),
(5, 'Our Past-III', 'NCERT', 'www.ncert.in/ourpast3', 'www.ncert.in/ourpast3/questionbank'),
(6, 'HoneyHive', 'NCERT', 'www.ncert.in/HoneyHive', 'www.ncert.in/HoneyHive/practice'),
(7, 'Computer Science Data Structures and Algorithms', 'Mr.Rakesh Sharma', 'www.compsci.in/DSA', 'www.compsci.in/DSA/questions'),
(7, 'Computer Science Operating', 'Mr.Veena Sinha', 'www.acm.in/OS', 'www.acm.in/OS/questions'),
(5, 'Our Present', 'NCERT', 'www.ncert.in/ourpresent7', 'www.ncert.in/ourpresent7/questionbank'),
(6, 'Pride and Prejudice', 'Jane-Austen', 'www.prideandprejudice.com', 'www.in/pride_and_prejudice.com'),
(3, 'Cengage Physics', 'Ashish Arora', 'www.ashisharoroa/conceptsofphy', 'www.ashisharora/conceptsofphy/DPPs');

-- --------------------------------------------------------

--
-- Table structure for table `sessionmanagement`
--

CREATE TABLE `sessionmanagement` (
  `S_id` int(11) NOT NULL,
  `M_id` int(11) NOT NULL,
  `Sub_id` int(11) NOT NULL,
  `fees_per_hr` int(11) DEFAULT NULL,
  `No_of_hrs` int(11) DEFAULT NULL,
  `slot_or_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sessionmanagement`
--

INSERT INTO `sessionmanagement` (`S_id`, `M_id`, `Sub_id`, `fees_per_hr`, `No_of_hrs`, `slot_or_date`) VALUES
(56, 27, 5, 750, 3, '2021-03-25'),
(56, 24, 6, 350, 3, '2021-03-28'),
(57, 24, 1, 500, 2, '2021-03-31'),
(57, 28, 2, 1300, 3, '2021-04-09'),
(57, 25, 3, 800, 2, '2021-04-06'),
(57, 28, 4, 900, 2, '2021-03-14'),
(58, 27, 6, 350, 4, '2021-03-31'),
(58, 24, 6, 350, 3, '2021-04-08'),
(58, 26, 7, 1200, 3, '2021-03-26'),
(59, 25, 7, 300, 2, '2021-03-26'),
(59, 25, 1, 1000, 3, '2021-04-15'),
(59, 26, 7, 1200, 3, '2021-04-09'),
(60, 26, 7, 1200, 4, '2021-04-08'),
(60, 28, 2, 1300, 3, '2021-03-28'),
(60, 25, 3, 800, 2, '2021-03-21'),
(60, 25, 7, 300, 4, '2021-03-19'),
(61, 25, 1, 1000, 3, '2021-04-07'),
(57, 30, 1, 1000, 3, '2021-04-07'),
(62, 24, 3, 400, 2, '2021-10-23');

-- --------------------------------------------------------

--
-- Table structure for table `student_login`
--

CREATE TABLE `student_login` (
  `S_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_login`
--

INSERT INTO `student_login` (`S_id`, `username`, `password`) VALUES
(56, 'arnab1207', 'arnab1207'),
(57, 'vinesh764', 'vinesh764'),
(58, 'madan405', 'madan405'),
(59, 'sahil123', 'sahil123'),
(60, 'sree909', 'sree909'),
(61, 'romit76', 'romit76'),
(62, 'as', 'as');

-- --------------------------------------------------------

--
-- Table structure for table `student_reg`
--

CREATE TABLE `student_reg` (
  `S_id` int(11) NOT NULL,
  `fname` char(30) NOT NULL,
  `lname` char(30) DEFAULT NULL,
  `grade` varchar(30) NOT NULL,
  `email` varchar(40) NOT NULL CHECK (`email` like '%@%' and `email` like '%.%'),
  `contact` decimal(10,0) NOT NULL CHECK (char_length(`contact`) = 10),
  `city` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_reg`
--

INSERT INTO `student_reg` (`S_id`, `fname`, `lname`, `grade`, `email`, `contact`, `city`) VALUES
(56, 'Arnab', 'Das', '9', 'arnabtubun@gmail.com', '8918936324', 'Mangalore'),
(57, 'Vinesh', 'Devkumar', '10', 'vinesh@gmail.com', '7891236534', 'Bangalore'),
(58, 'Madan', 'Kumar', '11', 'madan@gmail.com', '6784561278', 'Bangalore'),
(59, 'sahil', 'akhtar', '12', 'sahil@gmail.com', '7895671237', 'Dharwad'),
(60, 'sreetama', 'baidya', '7', 'sreetama@gmail.com', '6789657654', 'Mangalore'),
(61, 'Romit', 'Das', '11', 'romit@gmail.com', '8981457658', 'Mangalore'),
(62, 'ashish', 'tudu', '11', 'as@hotmail.com', '4325673812', 'Bangalore');

-- --------------------------------------------------------

--
-- Table structure for table `student_sub`
--

CREATE TABLE `student_sub` (
  `S_id` int(11) NOT NULL,
  `Sub_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_sub`
--

INSERT INTO `student_sub` (`S_id`, `Sub_id`) VALUES
(56, 5),
(56, 6),
(57, 1),
(57, 2),
(57, 3),
(57, 4),
(58, 6),
(58, 7),
(59, 1),
(59, 7),
(60, 1),
(60, 2),
(60, 3),
(60, 7),
(61, 1),
(61, 3),
(61, 6),
(62, 3),
(62, 4),
(62, 5),
(62, 7);

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `Sub_id` int(11) NOT NULL,
  `Sub_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`Sub_id`, `Sub_name`) VALUES
(2, 'Biology'),
(4, 'Chemistry'),
(7, 'Computer Science'),
(6, 'English'),
(1, 'Math'),
(3, 'Physics'),
(5, 'Social Studies');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD KEY `M_id` (`M_id`),
  ADD KEY `Sub_name` (`Sub_name`);

--
-- Indexes for table `fees`
--
ALTER TABLE `fees`
  ADD KEY `M_id` (`M_id`),
  ADD KEY `Sub_id` (`Sub_id`);

--
-- Indexes for table `mentor_login`
--
ALTER TABLE `mentor_login`
  ADD UNIQUE KEY `M_id` (`M_id`);

--
-- Indexes for table `mentor_reg`
--
ALTER TABLE `mentor_reg`
  ADD PRIMARY KEY (`M_id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `contact` (`contact`),
  ADD UNIQUE KEY `Resume_Link` (`Resume_Link`);

--
-- Indexes for table `mentor_sub`
--
ALTER TABLE `mentor_sub`
  ADD KEY `M_id` (`M_id`),
  ADD KEY `Sub_id` (`Sub_id`);

--
-- Indexes for table `resourcesharing`
--
ALTER TABLE `resourcesharing`
  ADD KEY `Sub_id` (`Sub_id`);

--
-- Indexes for table `sessionmanagement`
--
ALTER TABLE `sessionmanagement`
  ADD KEY `S_id` (`S_id`),
  ADD KEY `M_id` (`M_id`),
  ADD KEY `Sub_id` (`Sub_id`);

--
-- Indexes for table `student_login`
--
ALTER TABLE `student_login`
  ADD UNIQUE KEY `S_id` (`S_id`);

--
-- Indexes for table `student_reg`
--
ALTER TABLE `student_reg`
  ADD PRIMARY KEY (`S_id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `contact` (`contact`);

--
-- Indexes for table `student_sub`
--
ALTER TABLE `student_sub`
  ADD KEY `S_id` (`S_id`),
  ADD KEY `Sub_id` (`Sub_id`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`Sub_id`),
  ADD UNIQUE KEY `Sub_name` (`Sub_name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mentor_reg`
--
ALTER TABLE `mentor_reg`
  MODIFY `M_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `student_reg`
--
ALTER TABLE `student_reg`
  MODIFY `S_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `Sub_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `feedback`
--
ALTER TABLE `feedback`
  ADD CONSTRAINT `feedback_ibfk_1` FOREIGN KEY (`M_id`) REFERENCES `mentor_reg` (`M_id`),
  ADD CONSTRAINT `feedback_ibfk_2` FOREIGN KEY (`Sub_name`) REFERENCES `subject` (`Sub_name`);

--
-- Constraints for table `fees`
--
ALTER TABLE `fees`
  ADD CONSTRAINT `fees_ibfk_1` FOREIGN KEY (`M_id`) REFERENCES `mentor_reg` (`M_id`),
  ADD CONSTRAINT `fees_ibfk_2` FOREIGN KEY (`Sub_id`) REFERENCES `subject` (`Sub_id`);

--
-- Constraints for table `mentor_login`
--
ALTER TABLE `mentor_login`
  ADD CONSTRAINT `mentor_login_ibfk_1` FOREIGN KEY (`M_id`) REFERENCES `mentor_reg` (`M_id`);

--
-- Constraints for table `mentor_sub`
--
ALTER TABLE `mentor_sub`
  ADD CONSTRAINT `mentor_sub_ibfk_1` FOREIGN KEY (`M_id`) REFERENCES `mentor_reg` (`M_id`),
  ADD CONSTRAINT `mentor_sub_ibfk_2` FOREIGN KEY (`Sub_id`) REFERENCES `subject` (`Sub_id`);

--
-- Constraints for table `resourcesharing`
--
ALTER TABLE `resourcesharing`
  ADD CONSTRAINT `resourcesharing_ibfk_1` FOREIGN KEY (`Sub_id`) REFERENCES `subject` (`Sub_id`);

--
-- Constraints for table `sessionmanagement`
--
ALTER TABLE `sessionmanagement`
  ADD CONSTRAINT `sessionmanagement_ibfk_1` FOREIGN KEY (`S_id`) REFERENCES `student_reg` (`S_id`),
  ADD CONSTRAINT `sessionmanagement_ibfk_2` FOREIGN KEY (`M_id`) REFERENCES `mentor_reg` (`M_id`),
  ADD CONSTRAINT `sessionmanagement_ibfk_3` FOREIGN KEY (`Sub_id`) REFERENCES `subject` (`Sub_id`);

--
-- Constraints for table `student_login`
--
ALTER TABLE `student_login`
  ADD CONSTRAINT `student_login_ibfk_1` FOREIGN KEY (`S_id`) REFERENCES `student_reg` (`S_id`);

--
-- Constraints for table `student_sub`
--
ALTER TABLE `student_sub`
  ADD CONSTRAINT `student_sub_ibfk_1` FOREIGN KEY (`S_id`) REFERENCES `student_reg` (`S_id`),
  ADD CONSTRAINT `student_sub_ibfk_2` FOREIGN KEY (`Sub_id`) REFERENCES `subject` (`Sub_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
