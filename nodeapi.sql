-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 31, 2021 at 08:59 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nodeapi`
--

-- --------------------------------------------------------

--
-- Table structure for table `developers`
--

CREATE TABLE `developers` (
  `developerID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `rank` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `developers`
--

INSERT INTO `developers` (`developerID`, `name`, `email`, `rank`, `password`) VALUES
('0284bf80-08c0-11ec-a353-7f16714e5047', 'Bryan Kinuthia', 'bk@yahoo.com', 'Team Lead', '$2a$10$lgPpXqeHEhsqwnLq7aHmCe3B/HQpnn6gmCaL2ZPba5R5wWFf52aP.'),
('0e053200-08bf-11ec-a353-7f16714e5047', 'Jane Doe', 'jd@yahoo.com', 'Software Engineer Intern', '$2a$10$d8khoGnM33brfG9c49n10e8WsDT5Wwaz86k5T2p3pssFfgKk1hQmO'),
('1d6e6580-08c0-11ec-a353-7f16714e5047', 'Martin Mwangi', 'mm@yahoo.com', 'Junior Developer', '$2a$10$fWgUkVnb1wF4XPNNgMX1mOaz7gkU1MKcM1Du7xojMPsnGcsKEkDN6'),
('1fcd7500-098d-11ec-8307-6b8babbf97e9', 'Josephine Wanjiku', 'jw@yahoo.com', 'Quality Analyst', '$2a$10$ve15Ywc..G.EUWjHZORoS.Fst52cTyN.amljiE/JM4POaIYqb4ILC'),
('33ffca60-08bf-11ec-a353-7f16714e5047', 'Mary Keller', 'mk@yahoo.com', 'Software Engineer Intern', '$2a$10$SHauP0fvRuB5K6tE8.gRG.iSpNRmqkzz6G6ChGad9Y4Mr652Fy6qy'),
('3725b6e0-098d-11ec-bcd4-b399d7e9c6c1', 'Allan Mwangi', 'am@yahoo.com', 'Quality Analyst', '$2a$10$dqg.MYqrJbdizMDGgna59OqPlPshAVN4m5xsMQYXo/YOvFtqVjoV.'),
('3ebc17a0-08c0-11ec-a353-7f16714e5047', 'Jonah Ndambuki', 'jn@yahoo.com', 'Junior Developer', '$2a$10$pWqfLvVuySvuOWjCdfzlH..Z83qP/GLkz3F0Oy9DGXfpnPS2/2I/.'),
('407f40e0-08bf-11ec-a353-7f16714e5047', 'Steve Jobs', 'sj@yahoo.com', 'Software Engineer Intern', '$2a$10$BFBpGrY2gleLinrHxtlQxOjkH4KI1Sx8a5a/.V./Aj7rQjvwItyP6'),
('5b09d6f0-08bf-11ec-a353-7f16714e5047', 'Gladys Gladwell', 'gg@yahoo.com', 'Software Engineer Intern', '$2a$10$R0Ft8wM9qpABCBywyL0PWuDv3E.pxTySebHwwB633UAr6VSnbcX42'),
('7b05e600-0a23-11ec-98a8-ff5f91e50090', 'Richahard Hendricks', 'rh@yahoo.com', 'Senior developer', '$2a$10$3U64VlEBaevwLw6s2Hr8LuG/d0vM9WJ4lcfY8mJtBlH7Joeeim4XC'),
('8ae10490-08b8-11ec-84aa-71e1481b9239', 'Edwin Murimi', 'em@yahoo.com', 'Senior Developer', '$2a$10$JH..II092zvOyIXpEQ5vSu6KzY5Qf3vnG9d7E4BHG/FDqdsl71ZjK'),
('8b51b900-08be-11ec-95c9-75369d7e0758', 'Frederick Lingard', 'fl@yahoo.com', 'Software Engineer Intern', '$2a$10$uThd7P/EaROlajNspvitVOzEYfw8ob34XGxLS4bpKr7hlRd5BC9L6'),
('ae88c160-08ba-11ec-95c9-75369d7e0758', 'Fred Ombachi', 'fo@yahoo.com', 'Junior Developer', '$2a$10$6OG.AUBx22Hk0.RaMiO6KeVV7Zc6ntWCIo/tj5w6CmDxQxYaSirrO'),
('aeb424e0-08bf-11ec-a353-7f16714e5047', 'Sam Smith', 'ss@yahoo.com', 'Senior Developer', '$2a$10$Yz9Hzh9B3l7FJrCyPukYSuhld1KiLKmME0gRQyJwVcXT2t.uNbnVG'),
('ba71aaf0-08bf-11ec-a353-7f16714e5047', 'Stephen Gatana', 'sg@yahoo.com', 'Junior Developer', '$2a$10$XGOiZOp1DC9ku36TNlwHGOMyH2UW9gWkzaqKYYcyrmeO/.qo.kWHi'),
('cc10c6b0-08bf-11ec-a353-7f16714e5047', 'Charity Nyanchera', 'cn@yahoo.com', 'Senior Developer', '$2a$10$jXTWZRnjf2Abt.2v3s/RDOsOSV2nfJx9T0RnN.Z1na5kUMfhCQQPW'),
('e7b0a910-08da-11ec-be47-7f04d12f4ab6', 'Alice Wanjiku', 'aw@yahoo.com', 'Quality Analyst', '$2a$10$l5FIjoStsH9/irWs/SciauJezNnEL7lV6yehW8TfJP5ikM5j4tM2S');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `recordID` varchar(100) NOT NULL,
  `projectName` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `duration` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`recordID`, `projectName`, `email`, `duration`) VALUES
('10181830-08da-11ec-be47-7f04d12f4ab6', 'A closer look', 'bk@yahoo.com', 6),
('25a79f20-0a26-11ec-b902-a1ab86c6be57', 'A closer look', 'rh@yahoo.com', 30),
('3414bdb0-08da-11ec-be47-7f04d12f4ab6', 'CJ rush', 'ss@yahoo.com', 15),
('62b5aab0-08d2-11ec-b7ad-cd66a3ed90e4', 'Amarok', 'sg@yahoo.com', 10),
('86c1b980-08d2-11ec-b7ad-cd66a3ed90e4', 'PPS 2021', 'em@yahoo.com', 6),
('8b7d7fb0-0989-11ec-968e-015b8d74d53e', 'A closer look', 'jn@yahoo.com', 6),
('fe857a20-098a-11ec-857f-fdd2d0437b51', 'A closer look', 'cn@yahoo.com', 6);

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `taskID` varchar(100) NOT NULL,
  `projectName` varchar(100) NOT NULL,
  `taskName` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`taskID`, `projectName`, `taskName`) VALUES
('2fd3ba90-0988-11ec-be0b-0b0df6332427', 'CJ rush', 'Resolve bugs that were realised'),
('95a40780-0988-11ec-9539-31ffd661747e', 'CJ rush', 'Resolve bugs that were realised yesterday'),
('dc290340-08de-11ec-a219-fbc18347c24b', 'Amarok', 'Meeting at 4pm'),
('e273d600-0a26-11ec-b902-a1ab86c6be57', 'CJ Rush', 'Jam start phase 2'),
('e718b200-08de-11ec-a219-fbc18347c24b', 'CJ rush', 'Meeting with client'),
('fc8f62a0-08de-11ec-a219-fbc18347c24b', 'PPS 2021', 'Node inital setup'),
('ff645350-0988-11ec-b9d9-9955bbf3ff3b', 'CJ rush', 'Resolve bugs that were realised yesterday');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `developers`
--
ALTER TABLE `developers`
  ADD PRIMARY KEY (`developerID`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`recordID`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `email_2` (`email`),
  ADD UNIQUE KEY `email_3` (`email`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`taskID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
