-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 07, 2020 at 08:27 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quizapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `quizset`
--

CREATE TABLE `quizset` (
  `q_no` int(11) NOT NULL,
  `question` text NOT NULL,
  `option1` text NOT NULL,
  `option2` text NOT NULL,
  `option3` text NOT NULL,
  `option4` text NOT NULL,
  `coorrect_option` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `quizset`
--

INSERT INTO `quizset` (`q_no`, `question`, `option1`, `option2`, `option3`, `option4`, `coorrect_option`) VALUES
(1, 'Which function overloads the >> operator?', 'more()', 'gt()', 'ge()', 'None of the above', 4),
(2, 'Which operator is overloaded by the or() function?', '|', '||', '/', '//', 1),
(3, 'Which of these is not a core data type?', 'Lists', 'Dictionary', 'Tuples', 'CLASS', 4),
(4, 'What data type is the object below ? L = [1, 23, ‘hello’, 1]', 'List', 'Dictionary', 'Tuple', 'Array', 1),
(5, 'print \"Hello World\"[::-1]', 'dlroW olleH', 'Hello Worl', 'd', 'Error', 1),
(6, 'What is the output of the expression : 3*1**3', '27', '9', '3', '1', 3),
(7, ' output of the following program : print \'{0:.2}\'.format(1.0 / 3)', ' 0.333333                 ', '0.33', '0.3333333-2e', 'Error', 2),
(8, 'What is the output of the following segment :chr(ord(\'A\'))', 'A', 'B', 'a', 'Error', 1),
(9, 'What is called when a function is defined inside a class?', 'Module', 'Class', 'Another Function', 'Method', 4),
(10, 'Which of the following is the use of id() function in python?', 'Id returns the identity of the object', 'Every object doesn’t have a unique id', 'All of the mentioned', 'None of the mentioned', 1);

-- --------------------------------------------------------

--
-- Table structure for table `scoretable`
--

CREATE TABLE `scoretable` (
  `user_id` int(11) NOT NULL,
  `score` int(11) NOT NULL,
  `wrong` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `college` varchar(255) NOT NULL,
  `DOB` date NOT NULL,
  `dp` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `quizset`
--
ALTER TABLE `quizset`
  ADD PRIMARY KEY (`q_no`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `quizset`
--
ALTER TABLE `quizset`
  MODIFY `q_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
