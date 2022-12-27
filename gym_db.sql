-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 15, 2022 at 05:12 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gym_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `id` int(30) NOT NULL,
  `member_id` int(30) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `middlename` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `address` text NOT NULL,
  `email` varchar(100) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`id`, `member_id`, `firstname`, `middlename`, `lastname`, `gender`, `contact`, `address`, `email`, `date_created`) VALUES
(5, 58487246, 'Mike', 'D', 'Williams', 'Male', '+14526-5455-44', 'Sample Address', 'mwilliams@sample.com', '2020-10-21 13:18:19'),
(6, 59430244, 'Snoop', 'D', 'Doggy Dogg', 'Female', '+18456-5455-55', 'Sample', 'snoop_DO_Double_G@sample.com', '2020-10-21 14:57:54'),
(7, 37340761, 'James', '', 'Lombres', 'Male', '09345-634-5343', 'Daraga, Albay, Philippines', 'jamessaxll@sample.com', '2022-11-23 10:24:57'),
(8, 67864582, 'Mirvin', 'Rinon', 'Sarte', 'Male', '+18456-5475-56', 'Felicidad Subdivision, Sugcad, Polangui, Albay', 'johnmirvin680@gmail.com', '2022-12-15 09:57:30'),
(9, 28795533, 'Jane', 'Dela Cruz', 'Doe', 'Male', '+18445-53435-12', 'Los Angeles, California, USA', 'jane@example.com', '2022-12-15 09:59:46'),
(10, 52688072, 'Conor', '', 'Mcgregor', 'Male', '+18 20 4455 1956', '', 'MCLife@gmail.com', '2022-12-15 10:24:47');

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` int(30) NOT NULL,
  `package` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `amount` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`id`, `package`, `description`, `amount`) VALUES
(2, 'Martial Arts', 'Martial Arts will teach you about body strength through the studies of ancient philosophies and ideologies that can have a positive impact on your life. ', 1800),
(4, 'Weight loss or Burn Fat', 'Learn how to push your body into the fat-burning zone, plus torch calories with these six trainer-recommended moves.', 1300),
(6, 'Basic Fitness', 'A basic package for the beginners. This package is more on body weight workouts.', 800),
(7, 'Muscle Gain', 'Our package is designed to build muscle via the right balance of mass-building exercises, sufficient volume and intensity-boosting techniques.', 1600),
(8, 'Muscle Endurance', 'This package is to improve the ability of a muscle or group of muscles to perform repetitive contractions against a force for an extended period.', 1800),
(9, 'Strength and Conditioning', 'The selection and development of dynamic /static exercises used to improve physical performance.', 2600),
(10, 'Zumba (Dance Exercise)', 'Zumba is an interval workout. The classes move between high- and low-intensity dance moves designed to get your heart rate up and boost cardio endurance.', 2400),
(11, 'Yoga', 'meditative process of self-discovery and liberation. It is a diverse collection of practices that aims to control the mind, recognize a detached witness consciousness, and free oneself from the cycle of birth and death.', 1350);

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(30) NOT NULL,
  `registration_id` int(30) NOT NULL,
  `amount` int(30) NOT NULL,
  `remarks` text NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 2 COMMENT '1=registration, 2= monthly payment',
  `date_created` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `registration_id`, `amount`, `remarks`, `type`, `date_created`) VALUES
(1, 2, 4500, 'First payment', 2, '2020-10-21 14:39:26'),
(2, 2, 3500, 'payment for november', 2, '2020-10-21 14:39:52'),
(3, 8, 1000, 'First Month Payment', 2, '2022-12-15 10:22:33'),
(4, 8, 1000, '', 2, '2022-12-15 10:22:40'),
(5, 8, 1800, '3rd Payment', 2, '2022-12-15 10:23:06');

-- --------------------------------------------------------

--
-- Table structure for table `plans`
--

CREATE TABLE `plans` (
  `id` int(30) NOT NULL,
  `plan` int(30) NOT NULL,
  `amount` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `plans`
--

INSERT INTO `plans` (`id`, `plan`, `amount`) VALUES
(5, 12, 14000),
(6, 1, 1200),
(7, 6, 3800),
(8, 24, 19000),
(9, 3, 2400),
(10, 8, 5200);

-- --------------------------------------------------------

--
-- Table structure for table `registration_info`
--

CREATE TABLE `registration_info` (
  `id` int(30) NOT NULL,
  `member_id` int(30) NOT NULL,
  `plan_id` int(30) NOT NULL,
  `package_id` int(30) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `trainer_id` tinyint(30) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1 COMMENT '0=Inactive, 1= Active',
  `date_created` date DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `registration_info`
--

INSERT INTO `registration_info` (`id`, `member_id`, `plan_id`, `package_id`, `start_date`, `end_date`, `trainer_id`, `status`, `date_created`) VALUES
(2, 5, 1, 2, '2020-10-21', '2021-10-21', 0, 0, '2020-10-21'),
(3, 5, 1, 2, '2020-10-21', '2021-10-21', 0, 0, '2020-10-21'),
(4, 6, 1, 2, '2019-10-19', '2020-10-19', 0, 0, '2020-10-21'),
(5, 6, 1, 2, '2020-10-21', '2021-10-21', 0, 0, '2020-10-21'),
(6, 7, 1, 0, '2022-11-23', '2023-11-23', 0, 1, '2022-11-23'),
(7, 0, 7, 8, '2022-11-23', '2023-05-23', 1, 1, '2022-11-23'),
(8, 6, 5, 8, '2022-12-01', '2023-12-01', 2, 1, '2022-12-01'),
(9, 9, 7, 4, '2022-12-15', '2023-06-15', 0, 1, '2022-12-15'),
(10, 5, 5, 8, '2022-12-15', '2023-12-15', 6, 1, '2022-12-15');

-- --------------------------------------------------------

--
-- Table structure for table `schedules`
--

CREATE TABLE `schedules` (
  `id` int(30) NOT NULL,
  `member_id` int(30) NOT NULL,
  `dow` text NOT NULL,
  `date_from` date NOT NULL,
  `date_to` date NOT NULL,
  `time_from` time NOT NULL,
  `time_to` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `schedules`
--

INSERT INTO `schedules` (`id`, `member_id`, `dow`, `date_from`, `date_to`, `time_from`, `time_to`) VALUES
(1, 5, '1,3,5', '2022-11-01', '2022-12-31', '13:00:00', '00:00:00'),
(2, 6, '0,6', '2022-11-01', '2022-12-31', '19:30:00', '21:30:00'),
(3, 10, '4,5', '2022-12-01', '2023-01-31', '17:00:00', '22:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `trainers`
--

CREATE TABLE `trainers` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `contact` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `rate` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `trainers`
--

INSERT INTO `trainers` (`id`, `name`, `contact`, `email`, `rate`) VALUES
(1, 'John Smith (General Coach)', '+18456-5455-55', 'jsmith@sample.com', 150),
(2, 'Chris Bumstead (Body Building Trainer)', '@cbum / (555) 555-1234', 'cbum04@sample.com', 12000),
(4, 'Renzo Gracie (Jiu-Jitsu Coach)', '(518) 782-3505', 'RGLBJJinfo@gmail.com', 6000),
(5, 'Freddie Roach (Boxing Coach)', '(702) 650-9030', 'wildcardboxing@gmail.com', 15000),
(6, 'Floyd Mayweather Sr. (Boxing Coach)', '702-778-8622', 'floydSr@boxing.com', 13000),
(7, 'Nick Mitchell (Strength and Conditioning Coach)', '+44 20 7033 1942', 'jane.doe@upfitness.com', 9300),
(8, 'Emma Chan', '01772 600603', 'chanemma03@gmail.com', 600);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` text NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 3 COMMENT '1=Admin,2=Staff, 3= subscriber'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`, `type`) VALUES
(1, 'Administrator', 'admin', '0192023a7bbd73250516f069df18b500', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `plans`
--
ALTER TABLE `plans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registration_info`
--
ALTER TABLE `registration_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schedules`
--
ALTER TABLE `schedules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trainers`
--
ALTER TABLE `trainers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `plans`
--
ALTER TABLE `plans`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `registration_info`
--
ALTER TABLE `registration_info`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `schedules`
--
ALTER TABLE `schedules`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `trainers`
--
ALTER TABLE `trainers`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
