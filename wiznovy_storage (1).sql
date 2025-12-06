-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 10, 2025 at 08:42 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wiznovy_storage`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `id` varchar(36) NOT NULL,
  `phoneNumber` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` text DEFAULT NULL,
  `roles` enum('ADMIN','USER','TUTOR','STAFF') NOT NULL DEFAULT 'USER',
  `loginType` enum('FACEBOOK','GOOGLE','APPLE','EMAIL','PHONE','GUEST') NOT NULL DEFAULT 'EMAIL',
  `status` enum('ACTIVE','DEACTIVE','DELETED','SUSPENDED','PENDING') NOT NULL DEFAULT 'ACTIVE',
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`id`, `phoneNumber`, `email`, `password`, `roles`, `loginType`, `status`, `createdAt`, `updatedAt`) VALUES
('098930d7-3a88-45aa-96a6-6f875560df27', '9832973021', 'bittusharma54320@gmail.com', '$2b$10$mhG.c4lPTAP1OJqjuCgdaOHerdJf91Q74TLxatwZ2Uius5mWb2lT.', 'TUTOR', 'EMAIL', 'ACTIVE', '2025-11-07 10:43:19.635114', '2025-11-07 11:33:11.000000'),
('0d366b09-09f4-459c-b6fb-6f498101b9da', '9832973021', 'aritrasharmacgec@gmail.com', '$2b$10$8GHVadlf6H/RtlzZnPC.BOq7aXbMa8RpdNFNRFWQnpsiW/nW/t2vG', 'TUTOR', 'EMAIL', 'ACTIVE', '2025-11-07 11:01:59.525791', '2025-11-07 11:08:54.000000'),
('48fc5698-5fef-42c2-b1fa-87cbca547b42', '9635655484', 'admin123@gmail.com', '$2b$10$DxG4nGItqaJ5qaWNRds5euw.WK3lC0rLgovKlXioI.Y2cYufLVHq2', 'ADMIN', 'EMAIL', 'ACTIVE', '2025-10-24 12:54:34.304974', '2025-10-24 12:55:08.870920'),
('946b6983-63db-4e64-85a7-88478b703c77', '09382575745', 'sharmagalactus@gmail.com', '$2b$10$LkDVqxNI7kFIblSGqvvp4uAXbTJDUniJFC3nahm.MgrsDGIXeiNPm', 'TUTOR', 'EMAIL', 'ACTIVE', '2025-11-07 10:17:37.356092', '2025-11-07 10:18:52.000000'),
('a3ccbba0-5710-4a61-88f0-e33a845f488c', '9832973021', 'ptest2253@gmail.com', '$2b$10$cDDsjo.d8Nok3sBBlF1jNuvGxjjBw6zDZNG12bxDWYr14nvwNXu5q', 'TUTOR', 'EMAIL', 'ACTIVE', '2025-11-07 10:35:42.435319', '2025-11-07 11:33:14.000000'),
('b0411973-fe73-476f-a87a-70a3393aeea3', '9832973021', 'sekharajay38@gmail.com', '$2b$10$VwNTWuYAwxLgKvz3uS.3F.nyaoFvWiyrDoZkumFv480QFHVg99bLi', 'USER', 'EMAIL', 'ACTIVE', '2025-11-07 18:11:31.357876', '2025-11-07 18:11:31.357876'),
('c6001df9-4fa6-47ba-bd65-ec3554f925e7', '09382575745', 'akashkumarsharma794@gmail.com', '$2b$10$wyWjgv64wdo68QNVoA6Nv.KJgU28s5VrFqUl3fOPVGJgmhmCZcRZq', 'USER', 'EMAIL', 'ACTIVE', '2025-11-07 11:39:45.331945', '2025-11-10 10:39:26.000000'),
('dcd76f33-4e07-475a-9f2a-20a818454c17', '9635655484', 'akashghosh5896@gmail.com', '$2b$10$Hh5MIh7amvogI1Y9.TdY8.SubuYXo2XxthTt8UmjmM7IwIXP.IKIy', 'TUTOR', 'EMAIL', 'DELETED', '2025-11-07 11:37:08.086214', '2025-11-08 12:14:09.000000'),
('de5cefba-355a-4b1c-8b37-4955f5b20401', '1234569877', 'bittusharmapmc@gmail.com', '$2b$10$eWpbNKiIx.dYXl5JC6K11.v745kezcaOxhyv4.9qY0TPifmU.95Rq', 'TUTOR', 'EMAIL', 'PENDING', '2025-11-07 17:22:35.334835', '2025-11-07 17:22:35.334835'),
('f2b58c5c-419b-47d6-a599-28e425a93059', '09382575745', 'siddharthamajumder22@gmail.com', '$2b$10$SxSrbZTxHJUeAbcFQtzNQOoVb3pHXzyn5UEhdwzX.DB0e.IaJLGyK', 'USER', 'EMAIL', 'ACTIVE', '2025-11-07 18:52:23.764124', '2025-11-07 18:52:23.764124');




-- Table structure for table `banner`


CREATE TABLE `banner` (
  `id` varchar(36) NOT NULL,
  `image` text DEFAULT NULL,
  `imagePath` text DEFAULT NULL,
  `status` enum('ACTIVE','DEACTIVE','DELETED','SUSPENDED','PENDING') NOT NULL DEFAULT 'PENDING',
  `bannerType` enum('TUTOR_APP','USER_APP','USER_WEBSITE','TUTOR_WEBSITE') NOT NULL DEFAULT 'USER_APP',
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`id`, `image`, `imagePath`, `status`, `bannerType`, `createdAt`, `updatedAt`) VALUES
('aba17d3b-f543-4184-aac2-eef889b49b61', 'http://10.82.13.67:6524/uploads\\Banners\\dbfaa2eed5aebc1029f77b4351076463d.jpg', 'uploads\\Banners\\dbfaa2eed5aebc1029f77b4351076463d.jpg', 'ACTIVE', 'USER_APP', '2025-10-24 15:40:21.917958', '2025-10-24 15:40:54.077589'),
('fb8c4468-4d89-4596-8668-17c43b321f54', 'http://192.168.1.8:6524/uploads\\Banners\\557beea085e56dbefdc10cfa103fc9e8cc.png', 'uploads\\Banners\\557beea085e56dbefdc10cfa103fc9e8cc.png', 'PENDING', 'USER_APP', '2025-10-29 14:47:57.654614', '2025-10-29 14:47:57.654614');

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `id` varchar(36) NOT NULL,
  `name` varchar(255) NOT NULL,
  `authorName` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `status` enum('ACTIVE','DEACTIVE','DELETED','SUSPENDED','PENDING') NOT NULL DEFAULT 'ACTIVE',
  `averageRating` decimal(3,2) NOT NULL DEFAULT 0.00,
  `totalRatings` int(11) NOT NULL DEFAULT 0,
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `coverImage` text DEFAULT NULL,
  `coverImagePath` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`id`, `name`, `authorName`, `description`, `status`, `averageRating`, `totalRatings`, `createdAt`, `updatedAt`, `coverImage`, `coverImagePath`) VALUES
('31d75ed2-cc33-418b-b267-4ab6c82cbb1e', 'The Great Gatsby', 'F. Scott Fitzgerald', 'A classic American novel', 'ACTIVE', 0.00, 0, '2025-10-25 10:24:18.978663', '2025-10-29 15:19:19.000000', 'http://192.168.1.8:6524/uploads\\Books\\74bd44bec979a7f6fa5d3a42851b452d.webp', 'uploads\\Books\\74bd44bec979a7f6fa5d3a42851b452d.webp'),
('ef351cd0-2169-4a65-92fd-2ab72220e249', 'Don Quixote', 'Miguel de Cervantes', 'A classic American novel', 'ACTIVE', 0.00, 0, '2025-10-25 10:26:58.842143', '2025-10-25 16:09:40.281556', NULL, NULL);



--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `id` varchar(36) NOT NULL,
  `userId` varchar(255) NOT NULL,
  `tutorId` varchar(255) NOT NULL,
  `scheduleId` varchar(255) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `invoiceNumber` varchar(50) DEFAULT NULL,
  `paymentMethod` enum('CASH','ONLINE','UPI') NOT NULL DEFAULT 'CASH',
  `notes` text DEFAULT NULL,
  `status` enum('PENDING','CONFIRMED','CANCELLED','COMPLETED') NOT NULL DEFAULT 'PENDING',
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `duration` int(11) NOT NULL,
  `startTime` time NOT NULL,
  `endTime` time NOT NULL,
  `sessionDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`id`, `userId`, `tutorId`, `scheduleId`, `amount`, `invoiceNumber`, `paymentMethod`, `notes`, `status`, `createdAt`, `updatedAt`, `duration`, `startTime`, `endTime`, `sessionDate`) VALUES
('1e321fa0-a2cb-4ec6-bf2c-523c8d0c5c27', '1d688443-79e0-4a72-a78f-d310aa891b04', '1cb5b4d5-7bb9-45b3-8a18-531776922141', '', 500.00, 'INV-20251027-912330', 'CASH', 'Math tutoring session', 'CONFIRMED', '2025-10-27 15:25:12.331388', '2025-10-27 15:25:12.331388', 60, '09:00:00', '10:00:00', '2024-01-15'),
('66737331-292c-4bb0-9983-4ceaee5cc327', '1d688443-79e0-4a72-a78f-d310aa891b04', '1cb5b4d5-7bb9-45b3-8a18-531776922141', '', 500.00, 'INV-20251027-885913', 'CASH', 'Math tutoring session', 'CONFIRMED', '2025-10-27 15:24:45.919879', '2025-10-27 15:24:45.919879', 60, '09:00:00', '10:00:00', '2024-01-15'),
('c0eb432d-6c91-42ca-a25d-7c63489d74e1', '1d688443-79e0-4a72-a78f-d310aa891b04', '1cb5b4d5-7bb9-45b3-8a18-531776922141', '', 500.00, 'INV-20251027-899310', 'CASH', 'Math tutoring session', 'CONFIRMED', '2025-10-27 15:24:59.312506', '2025-10-27 15:24:59.312506', 60, '09:00:00', '10:00:00', '2024-01-15');

-- --------------------------------------------------------

--
-- Table structure for table `book_image`
--

CREATE TABLE `book_image` (
  `id` varchar(36) NOT NULL,
  `image` text NOT NULL,
  `imagePath` text NOT NULL,
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `bookId` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `book_image`
--

INSERT INTO `book_image` (`id`, `image`, `imagePath`, `createdAt`, `updatedAt`, `bookId`) VALUES
('01709c75-5d76-486d-a8a0-05d5290932d5', 'http://192.168.1.8:6524/uploads\\Books\\e4dba2e7b4d79f1cadfe231d6ab50f1c.jpg', 'uploads\\Books\\e4dba2e7b4d79f1cadfe231d6ab50f1c.jpg', '2025-10-29 15:40:52.518952', '2025-10-29 15:40:52.518952', '31d75ed2-cc33-418b-b267-4ab6c82cbb1e'),
('275d5577-7d6e-4997-a642-dfa9f5c0b75f', 'http://192.168.1.8:6524/uploads\\Books\\5c94c5b3857533d7e461031ea251af733.png', 'uploads\\Books\\5c94c5b3857533d7e461031ea251af733.png', '2025-10-29 15:40:52.529471', '2025-10-29 15:40:52.529471', '31d75ed2-cc33-418b-b267-4ab6c82cbb1e'),
('bb937161-3df1-4d0e-9603-ef9a84ac57ff', 'http://192.168.1.8:6524/uploads\\Books\\e6d375a8992ba2b11025218591675283c.jpg', 'uploads\\Books\\e6d375a8992ba2b11025218591675283c.jpg', '2025-10-29 15:40:52.537745', '2025-10-29 15:40:52.537745', '31d75ed2-cc33-418b-b267-4ab6c82cbb1e');

-- --------------------------------------------------------

--
-- Table structure for table `budget`
--

CREATE TABLE `budget` (
  `id` varchar(36) NOT NULL,
  `min` int(11) NOT NULL,
  `max` int(11) NOT NULL,
  `status` enum('ACTIVE','DEACTIVE','DELETED','SUSPENDED','PENDING') NOT NULL DEFAULT 'ACTIVE',
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `budget`
--

INSERT INTO `budget` (`id`, `min`, `max`, `status`, `createdAt`, `updatedAt`) VALUES
('0f5eeb64-bce8-4488-8c99-128fb890a4ed', 200, 300, 'ACTIVE', '2025-10-24 15:23:50.677766', '2025-10-24 15:23:50.677766'),
('4f780813-a358-416c-a7cb-d67668ac40d4', 500, 600, 'ACTIVE', '2025-10-24 15:22:57.031595', '2025-10-24 15:22:57.031595'),
('5eaa3932-1389-419e-b8fa-adf3cb97315c', 100, 200, 'ACTIVE', '2025-10-24 15:23:15.225392', '2025-10-24 15:23:15.225392');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` varchar(36) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` text DEFAULT NULL,
  `imagePath` text DEFAULT NULL,
  `status` enum('ACTIVE','DEACTIVE','DELETED','SUSPENDED','PENDING') NOT NULL DEFAULT 'PENDING',
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` enum('ACTIVE','DEACTIVE','DELETED','SUSPENDED','PENDING') NOT NULL DEFAULT 'ACTIVE',
  `stateId` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `id` varchar(36) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` text DEFAULT NULL,
  `imagePath` text DEFAULT NULL,
  `status` enum('ACTIVE','DEACTIVE','DELETED','SUSPENDED','PENDING') NOT NULL DEFAULT 'ACTIVE',
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` varchar(36) NOT NULL,
  `accountId` varchar(255) DEFAULT NULL,
  `firstName` varchar(55) DEFAULT NULL,
  `LastName` varchar(55) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phoneNumber` varchar(100) DEFAULT NULL,
  `code` varchar(100) DEFAULT NULL,
  `message` varchar(100) DEFAULT NULL,
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `id` varchar(36) NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(10) DEFAULT NULL,
  `status` enum('ACTIVE','DEACTIVE','DELETED','SUSPENDED','PENDING') NOT NULL DEFAULT 'ACTIVE',
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`id`, `name`, `code`, `status`, `createdAt`, `updatedAt`) VALUES
('7c4af670-4f39-4dda-b8b7-da6a42c8aa2e', 'Japan', 'JPN', 'ACTIVE', '2025-11-09 12:38:21.452718', '2025-11-09 12:38:21.452718'),
('83b7ba47-4ac1-44a8-b24f-11caf876b1b9', 'France', 'FR', 'ACTIVE', '2025-10-24 15:00:21.010318', '2025-10-24 15:00:21.010318'),
('9a2d1b76-9e5b-47c0-8566-0ca41a4b5da4', 'India', 'IND', 'ACTIVE', '2025-10-24 15:00:47.408085', '2025-10-24 15:00:47.408085'),
('9e55dede-9ded-4908-a859-779fdb2e89b7', 'Austrilia', 'AUS', 'ACTIVE', '2025-10-24 15:01:02.444234', '2025-10-24 15:01:02.444234'),
('ff436dd8-b6bf-43c8-b4cb-4dcd5f90f1f7', 'Brazil', 'BZ', 'ACTIVE', '2025-10-28 13:23:52.211925', '2025-10-28 13:23:52.211925');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` varchar(36) NOT NULL,
  `name` varchar(200) NOT NULL,
  `description` text DEFAULT NULL,
  `imageUrl` varchar(500) DEFAULT NULL,
  `imagepath` varchar(500) DEFAULT NULL,
  `price` decimal(10,2) NOT NULL DEFAULT 0.00,
  `discountPrice` decimal(10,2) NOT NULL DEFAULT 0.00,
  `validityDays` int(11) NOT NULL DEFAULT 365,
  `accessType` enum('PAID','FREE') NOT NULL DEFAULT 'FREE',
  `status` enum('ACTIVE','DEACTIVE','DELETED','SUSPENDED','PENDING') NOT NULL DEFAULT 'PENDING',
  `totalDuration` varchar(100) DEFAULT NULL,
  `totalLectures` int(11) NOT NULL DEFAULT 0,
  `level` varchar(100) DEFAULT NULL,
  `requirements` text DEFAULT NULL,
  `whatYouWillLearn` text DEFAULT NULL,
  `averageRating` decimal(2,1) NOT NULL DEFAULT 0.0,
  `totalRatings` int(11) NOT NULL DEFAULT 0,
  `subjectId` varchar(255) DEFAULT NULL,
  `languageId` varchar(255) DEFAULT NULL,
  `classId` varchar(255) DEFAULT NULL,
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `tutorId` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `name`, `description`, `imageUrl`, `imagepath`, `price`, `discountPrice`, `validityDays`, `accessType`, `status`, `totalDuration`, `totalLectures`, `level`, `requirements`, `whatYouWillLearn`, `averageRating`, `totalRatings`, `subjectId`, `languageId`, `classId`, `createdAt`, `updatedAt`, `tutorId`) VALUES
('89bc2e3c-ad69-4f7b-8743-33a22a0197bb', 'JavaScript Fundamental', 'Learn JavaScript from basics to advanced', NULL, NULL, 99.99, 79.99, 365, 'PAID', 'PENDING', '90', 0, NULL, NULL, NULL, 0.0, 0, NULL, NULL, NULL, '2025-11-09 17:47:07.059510', '2025-11-09 17:47:07.059510', '0d366b09-09f4-459c-b6fb-6f498101b9da'),
('c9d82e71-df78-4aff-8055-41d5c18f77f7', 'JavaScript Fundamentals', 'Learn JavaScript from basics to advanced', 'http://192.168.1.13:6524/uploads\\Course\\thumbnails\\5a1e74e006b3dacd919571f211a5bac6.jpg', 'uploads\\Course\\thumbnails\\5a1e74e006b3dacd919571f211a5bac6.jpg', 99.99, 79.99, 365, 'PAID', 'PENDING', '90', 0, '', '', '', 0.0, 0, NULL, NULL, NULL, '2025-11-07 13:24:10.794680', '2025-11-07 16:56:31.000000', '0d366b09-09f4-459c-b6fb-6f498101b9da'),
('e755fd7c-784f-440c-af6a-235242790085', 'Physics Course', 'Complete physics course for students', 'http://192.168.1.13:6524/uploads\\Course\\thumbnails\\8b5b584a8dccfc1051e223c21707bcfbc.jpg', 'uploads\\Course\\thumbnails\\8b5b584a8dccfc1051e223c21707bcfbc.jpg', 3999.00, 2999.00, 365, 'PAID', 'ACTIVE', '265', 0, '', '', '', 0.0, 0, NULL, NULL, NULL, '2025-11-07 12:34:28.162410', '2025-11-07 16:10:37.000000', 'dcd76f33-4e07-475a-9f2a-20a818454c17');

-- --------------------------------------------------------

--
-- Table structure for table `course_content`
--

CREATE TABLE `course_content` (
  `id` varchar(36) NOT NULL,
  `courseId` varchar(255) NOT NULL,
  `videoLectureId` varchar(255) DEFAULT NULL,
  `studyMaterialId` varchar(255) DEFAULT NULL,
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faq`
--

CREATE TABLE `faq` (
  `id` varchar(36) NOT NULL,
  `question` varchar(150) DEFAULT NULL,
  `answer` text DEFAULT NULL,
  `status` enum('ACTIVE','DEACTIVE','DELETED','SUSPENDED','PENDING') NOT NULL DEFAULT 'PENDING',
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fixed_session`
--

CREATE TABLE `fixed_session` (
  `id` varchar(36) NOT NULL,
  `userId` varchar(255) NOT NULL,
  `tutorId` varchar(255) NOT NULL,
  `sessionDate` date NOT NULL,
  `timeSlot` enum('MORNING','AFTERNOON','EVENING','NIGHT') NOT NULL,
  `duration` enum('25','45') NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `purchaseId` varchar(255) DEFAULT NULL,
  `status` enum('PENDING','SCHEDULED','COMPLETED','CANCELLED','NO_SHOW') NOT NULL DEFAULT 'SCHEDULED',
  `notes` text DEFAULT NULL,
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `goal`
--

CREATE TABLE `goal` (
  `id` varchar(36) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` enum('ACTIVE','DEACTIVE','DELETED','SUSPENDED','PENDING') NOT NULL DEFAULT 'ACTIVE',
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `goal`
--

INSERT INTO `goal` (`id`, `name`, `status`, `createdAt`, `updatedAt`) VALUES
('14df7452-0dc7-4096-8842-44cb84eeaf7e', 'Example Goal 4', 'ACTIVE', '2025-10-24 14:48:25.101240', '2025-10-24 14:48:25.101240'),
('1fc1d079-9d3d-45ac-87e6-96670dce35fd', 'Example Goal 2', 'ACTIVE', '2025-10-24 14:48:11.923799', '2025-10-24 14:48:11.923799'),
('22bf4b18-6666-4289-911c-7d16b85be52a', 'Example Goal 1', 'ACTIVE', '2025-10-24 14:47:58.025161', '2025-10-24 14:47:58.025161'),
('3b0f5158-bdc1-4313-a80a-8df0c628be30', 'Example Goal 5', 'ACTIVE', '2025-10-24 14:48:29.842388', '2025-10-24 14:48:29.842388'),
('f5c03af7-dd91-4c25-a508-6db3ee335f46', 'Example Goal 3', 'ACTIVE', '2025-10-24 14:48:20.022108', '2025-10-24 14:48:20.022108');

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

CREATE TABLE `language` (
  `id` varchar(36) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `status` enum('ACTIVE','DEACTIVE','DELETED','SUSPENDED','PENDING') NOT NULL DEFAULT 'ACTIVE',
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `language`
--

INSERT INTO `language` (`id`, `name`, `status`, `createdAt`, `updatedAt`) VALUES
('9d1e1398-c8fc-4ba4-8114-0c506b85620b', 'English', 'ACTIVE', '2025-10-24 15:04:01.069807', '2025-10-24 15:04:01.069807'),
('c981e508-0eb9-4e63-972c-53783d624fc3', 'Germany', 'ACTIVE', '2025-10-24 15:04:11.193114', '2025-10-24 15:04:11.193114'),
('ef2c9f3c-bc8b-405a-8396-ccbdb9007cdf', 'Spanish', 'ACTIVE', '2025-10-24 15:03:43.677072', '2025-10-24 15:03:43.677072');

-- --------------------------------------------------------

--
-- Table structure for table `login_history`
--

CREATE TABLE `login_history` (
  `id` int(11) NOT NULL,
  `accountId` varchar(255) NOT NULL,
  `loginTime` timestamp NOT NULL DEFAULT current_timestamp(),
  `logoutTime` timestamp NULL DEFAULT NULL,
  `ip` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login_history`
--

INSERT INTO `login_history` (`id`, `accountId`, `loginTime`, `logoutTime`, `ip`) VALUES
(1, 'e83208a9-6398-49ac-a1c6-03a6b0e7baf5', '2025-10-24 08:33:16', NULL, '::ffff:192.168.29.207'),
(2, '1d688443-79e0-4a72-a78f-d310aa891b04', '2025-10-24 09:16:31', NULL, '::ffff:10.82.13.67'),
(3, '57d76d3b-15c3-430b-b03e-76d5f99ea82a', '2025-10-24 12:06:51', NULL, '::ffff:192.168.29.163'),
(4, '3c036083-fcb2-4d58-8ddf-3da30f5e36a7', '2025-10-24 12:47:54', NULL, '::ffff:192.168.29.163'),
(5, '94568bf6-981e-4523-8228-e84e9d9b728e', '2025-10-25 05:39:48', NULL, '::ffff:192.168.29.162'),
(6, '94568bf6-981e-4523-8228-e84e9d9b728e', '2025-10-25 06:21:09', NULL, '::ffff:192.168.1.8'),
(7, '3bb6e3e7-600a-49af-be1e-1a5f16d93c12', '2025-10-25 11:05:13', NULL, '::ffff:10.187.154.52'),
(8, '3bb6e3e7-600a-49af-be1e-1a5f16d93c12', '2025-10-25 11:09:56', NULL, '::ffff:10.187.154.52'),
(9, '3bb6e3e7-600a-49af-be1e-1a5f16d93c12', '2025-10-25 11:10:01', NULL, '::ffff:10.187.154.52'),
(10, '3bb6e3e7-600a-49af-be1e-1a5f16d93c12', '2025-10-25 11:12:41', NULL, '::ffff:10.187.154.52'),
(11, '3bb6e3e7-600a-49af-be1e-1a5f16d93c12', '2025-10-25 11:13:18', NULL, '::ffff:10.187.154.52'),
(12, '3bb6e3e7-600a-49af-be1e-1a5f16d93c12', '2025-10-25 11:13:59', NULL, '::ffff:10.187.154.52'),
(13, '3bb6e3e7-600a-49af-be1e-1a5f16d93c12', '2025-10-25 11:16:23', NULL, '::ffff:10.187.154.52'),
(14, '1d688443-79e0-4a72-a78f-d310aa891b04', '2025-10-25 11:25:45', NULL, '::ffff:10.187.154.67'),
(15, '91cfb413-3ab9-4a68-8347-56642affcd34', '2025-10-27 11:04:54', NULL, '::ffff:10.82.13.136'),
(16, 'd0a39f2a-461d-45cb-8048-e0ba91e38872', '2025-10-28 06:24:04', NULL, '::ffff:192.168.1.4'),
(17, 'd0a39f2a-461d-45cb-8048-e0ba91e38872', '2025-10-28 06:25:16', NULL, '::ffff:192.168.1.4'),
(18, 'd0a39f2a-461d-45cb-8048-e0ba91e38872', '2025-10-28 06:48:41', NULL, '::ffff:192.168.1.4'),
(19, '3cb74603-0285-4d2f-8f58-5279e6ccdf01', '2025-10-28 09:29:00', NULL, '::ffff:192.168.1.12'),
(20, '3cb74603-0285-4d2f-8f58-5279e6ccdf01', '2025-10-28 09:35:26', NULL, '::ffff:192.168.1.12'),
(21, '3cb74603-0285-4d2f-8f58-5279e6ccdf01', '2025-10-28 09:37:37', NULL, '::ffff:192.168.1.12'),
(22, 'd0a39f2a-461d-45cb-8048-e0ba91e38872', '2025-10-28 09:51:08', NULL, '::ffff:192.168.1.4'),
(23, '5b176d0b-09a5-46cd-8d0e-7a43e5aca735', '2025-10-29 06:23:02', '2025-10-29 06:23:30', '::ffff:192.168.1.8'),
(24, 'a324236a-ab41-4e9e-88ee-c3a13260679a', '2025-10-29 07:06:57', '2025-10-29 07:07:55', '::ffff:192.168.1.12'),
(25, 'a324236a-ab41-4e9e-88ee-c3a13260679a', '2025-10-29 07:08:16', NULL, '::ffff:192.168.1.12'),
(26, 'a324236a-ab41-4e9e-88ee-c3a13260679a', '2025-10-29 08:00:50', NULL, '::ffff:192.168.1.12'),
(27, 'a324236a-ab41-4e9e-88ee-c3a13260679a', '2025-10-29 12:41:40', NULL, '::ffff:192.168.1.12'),
(28, '0f33069c-9a66-49d8-b36a-42f1940b4826', '2025-10-30 04:51:06', NULL, '::ffff:192.168.1.12'),
(29, 'd0a39f2a-461d-45cb-8048-e0ba91e38872', '2025-10-30 05:37:37', NULL, '::ffff:192.168.1.4'),
(30, 'd0a39f2a-461d-45cb-8048-e0ba91e38872', '2025-10-30 05:54:53', NULL, '::ffff:192.168.1.4'),
(31, 'd0a39f2a-461d-45cb-8048-e0ba91e38872', '2025-10-30 05:56:02', NULL, '::ffff:192.168.1.4'),
(32, '0f33069c-9a66-49d8-b36a-42f1940b4826', '2025-10-30 06:02:50', NULL, '::ffff:192.168.1.12'),
(33, '4a433e4d-f6ba-48b7-9d10-74a8e35c78db', '2025-10-30 06:25:26', NULL, '::ffff:192.168.1.4'),
(34, '4a433e4d-f6ba-48b7-9d10-74a8e35c78db', '2025-10-30 06:26:33', NULL, '::ffff:192.168.1.4'),
(35, '4a433e4d-f6ba-48b7-9d10-74a8e35c78db', '2025-10-30 06:28:20', NULL, '::ffff:192.168.1.4'),
(36, '4a433e4d-f6ba-48b7-9d10-74a8e35c78db', '2025-10-30 06:34:35', NULL, '::ffff:192.168.1.4'),
(37, '4a433e4d-f6ba-48b7-9d10-74a8e35c78db', '2025-10-30 06:38:54', NULL, '::ffff:192.168.1.4'),
(38, '4a433e4d-f6ba-48b7-9d10-74a8e35c78db', '2025-10-30 06:42:52', '2025-10-30 07:04:36', '::ffff:192.168.1.4'),
(39, '4a433e4d-f6ba-48b7-9d10-74a8e35c78db', '2025-10-30 07:30:49', '2025-10-30 07:30:55', '::ffff:192.168.1.4'),
(40, 'd0a39f2a-461d-45cb-8048-e0ba91e38872', '2025-10-30 07:31:32', '2025-10-30 07:31:59', '::ffff:192.168.1.4'),
(41, '4a433e4d-f6ba-48b7-9d10-74a8e35c78db', '2025-10-30 07:32:22', '2025-10-30 07:39:46', '::ffff:192.168.1.4'),
(42, 'd0a39f2a-461d-45cb-8048-e0ba91e38872', '2025-10-30 07:40:10', '2025-10-30 07:45:26', '::ffff:192.168.1.4'),
(43, '61524a53-f0c0-405d-90db-e07472f7fe17', '2025-10-30 07:46:59', '2025-10-30 07:51:49', '::ffff:192.168.1.4'),
(44, '61524a53-f0c0-405d-90db-e07472f7fe17', '2025-10-30 07:52:07', '2025-10-30 07:52:16', '::ffff:192.168.1.4'),
(45, 'd0a39f2a-461d-45cb-8048-e0ba91e38872', '2025-10-30 07:52:38', '2025-10-30 07:53:59', '::ffff:192.168.1.4'),
(46, '4a433e4d-f6ba-48b7-9d10-74a8e35c78db', '2025-10-30 07:54:22', '2025-10-30 08:01:10', '::ffff:192.168.1.4'),
(47, '61524a53-f0c0-405d-90db-e07472f7fe17', '2025-10-30 08:01:29', '2025-10-30 08:01:39', '::ffff:192.168.1.4'),
(48, 'd0a39f2a-461d-45cb-8048-e0ba91e38872', '2025-10-30 08:01:58', NULL, '::ffff:192.168.1.4'),
(49, 'd0a39f2a-461d-45cb-8048-e0ba91e38872', '2025-10-30 09:03:34', NULL, '::ffff:192.168.1.4'),
(50, '61524a53-f0c0-405d-90db-e07472f7fe17', '2025-10-30 09:19:11', '2025-10-30 09:22:58', '::ffff:192.168.1.4'),
(51, '4a433e4d-f6ba-48b7-9d10-74a8e35c78db', '2025-10-30 09:23:25', '2025-10-30 09:23:34', '::ffff:192.168.1.4'),
(52, 'd0a39f2a-461d-45cb-8048-e0ba91e38872', '2025-10-30 09:23:57', '2025-10-30 09:24:11', '::ffff:192.168.1.4'),
(53, '8215aa81-75a4-4dc2-88bc-267d62d8c01d', '2025-10-30 09:26:07', '2025-10-30 09:26:27', '::ffff:192.168.1.4'),
(54, 'd0a39f2a-461d-45cb-8048-e0ba91e38872', '2025-10-30 09:26:49', '2025-10-30 09:34:18', '::ffff:192.168.1.4'),
(55, '8215aa81-75a4-4dc2-88bc-267d62d8c01d', '2025-10-30 09:35:36', '2025-10-30 09:38:12', '::ffff:192.168.1.4'),
(56, 'd0a39f2a-461d-45cb-8048-e0ba91e38872', '2025-10-30 09:39:09', NULL, '::ffff:192.168.1.4'),
(57, '48fc5698-5fef-42c2-b1fa-87cbca547b42', '2025-10-30 11:11:11', NULL, 'unknown'),
(58, '48fc5698-5fef-42c2-b1fa-87cbca547b42', '2025-10-30 11:18:55', NULL, 'unknown'),
(59, 'd0a39f2a-461d-45cb-8048-e0ba91e38872', '2025-10-31 04:52:06', NULL, '::ffff:192.168.1.4'),
(60, '9fb9b3c4-70c1-4728-bb8e-38e748f6383a', '2025-10-31 05:50:08', NULL, '::ffff:192.168.1.8'),
(61, 'cd35a543-6a64-4754-b00c-41f9338e893b', '2025-10-31 05:51:40', NULL, '::ffff:192.168.1.8'),
(62, '1a6d8fe8-90b2-4207-a2f9-49b200d09bc3', '2025-10-31 07:18:57', NULL, '::ffff:192.168.1.4'),
(63, '1a6d8fe8-90b2-4207-a2f9-49b200d09bc3', '2025-10-31 08:58:27', '2025-10-31 10:01:12', '::ffff:192.168.1.4'),
(64, 'e7dce7b3-f53f-4715-b722-f137035f24f5', '2025-10-31 09:40:24', NULL, '::ffff:192.168.1.12'),
(65, 'e7dce7b3-f53f-4715-b722-f137035f24f5', '2025-10-31 10:32:55', NULL, '::ffff:192.168.1.12'),
(66, '1a6d8fe8-90b2-4207-a2f9-49b200d09bc3', '2025-10-31 10:34:53', '2025-10-31 10:49:55', '::ffff:192.168.1.4'),
(67, '1a6d8fe8-90b2-4207-a2f9-49b200d09bc3', '2025-10-31 10:53:01', '2025-10-31 10:53:57', '::ffff:192.168.1.4'),
(68, '9e17de58-c5a1-492b-9084-9b55e5bf9074', '2025-10-31 10:54:53', '2025-10-31 10:55:53', '::ffff:192.168.1.4'),
(69, '1a6d8fe8-90b2-4207-a2f9-49b200d09bc3', '2025-10-31 11:32:59', '2025-10-31 11:33:29', '::ffff:192.168.1.4'),
(70, 'c25c7b0d-5889-43ed-a87b-4c6b4ad2ae14', '2025-10-31 11:37:57', NULL, '::ffff:192.168.1.4'),
(71, 'ff33d661-4d3e-40e8-9ee2-00ea3345a68a', '2025-11-03 05:49:41', '2025-11-03 06:03:19', '::ffff:192.168.1.8'),
(72, '152e66bc-34dc-4bc0-a455-959b440ae7d6', '2025-11-03 08:01:47', NULL, '::ffff:192.168.1.8'),
(73, 'b3860506-cde6-48e8-8c91-0321935966ac', '2025-11-05 07:09:18', NULL, '::ffff:192.168.1.13'),
(74, 'f74147ad-e04f-4cb1-979f-2dd67523d948', '2025-11-05 07:33:34', NULL, '::ffff:192.168.1.13'),
(75, '89eb4baf-6a57-4af1-a19c-bf5a4d3f8302', '2025-11-05 10:33:59', NULL, '::ffff:192.168.1.8'),
(76, 'bcafa93b-7596-423f-a485-7c847b6f1329', '2025-11-05 11:06:43', NULL, '::ffff:192.168.1.8'),
(77, 'b76440a3-9335-4198-806e-7c8ed6207ae3', '2025-11-05 11:11:58', NULL, '::ffff:192.168.1.13'),
(78, '327dfbdf-5e3a-4678-9130-e31e023e35f0', '2025-11-05 11:15:05', NULL, '::ffff:192.168.1.4'),
(79, 'ebf4028d-6393-4031-b612-9596846e5f6c', '2025-11-05 11:18:47', NULL, '::ffff:192.168.1.4'),
(80, '15b9e0c1-578a-450e-8347-13b8d255511f', '2025-11-05 11:51:29', NULL, '::ffff:192.168.1.4'),
(81, 'e75a08ab-01c4-4cd6-b536-871a69d6480a', '2025-11-05 12:15:33', NULL, '::ffff:192.168.1.4'),
(82, '835ab975-173c-4706-b944-919b103dab5f', '2025-11-05 12:59:41', NULL, '::ffff:192.168.1.4'),
(83, '0adcca7c-2580-4193-9bf0-f2fffcccea46', '2025-11-06 10:32:52', NULL, '::ffff:192.168.1.4'),
(84, '0adcca7c-2580-4193-9bf0-f2fffcccea46', '2025-11-06 11:03:38', NULL, '::ffff:192.168.1.4'),
(85, '0adcca7c-2580-4193-9bf0-f2fffcccea46', '2025-11-06 11:05:16', NULL, '::ffff:192.168.1.13'),
(86, '48fc5698-5fef-42c2-b1fa-87cbca547b42', '2025-11-06 11:43:55', NULL, 'unknown'),
(87, 'ba528212-d5f7-4fc9-9d6a-e5f263ee1cce', '2025-11-06 13:09:50', NULL, '::ffff:192.168.1.3'),
(88, '48fc5698-5fef-42c2-b1fa-87cbca547b42', '2025-11-07 04:44:53', NULL, 'unknown'),
(89, '946b6983-63db-4e64-85a7-88478b703c77', '2025-11-07 04:47:42', NULL, '::ffff:192.168.1.3'),
(90, '946b6983-63db-4e64-85a7-88478b703c77', '2025-11-07 04:56:03', NULL, '::ffff:192.168.1.3'),
(91, 'a3ccbba0-5710-4a61-88f0-e33a845f488c', '2025-11-07 05:05:46', NULL, '::ffff:192.168.1.8'),
(92, '098930d7-3a88-45aa-96a6-6f875560df27', '2025-11-07 05:13:23', NULL, '::ffff:192.168.1.8'),
(93, '0d366b09-09f4-459c-b6fb-6f498101b9da', '2025-11-07 05:32:03', '2025-11-07 07:13:00', '::ffff:192.168.1.4'),
(94, 'dcd76f33-4e07-475a-9f2a-20a818454c17', '2025-11-07 06:07:12', NULL, '::ffff:192.168.1.13'),
(95, 'c6001df9-4fa6-47ba-bd65-ec3554f925e7', '2025-11-07 06:09:49', '2025-11-07 06:40:00', '::ffff:192.168.1.3'),
(96, '0d366b09-09f4-459c-b6fb-6f498101b9da', '2025-11-07 07:00:07', '2025-11-07 07:09:56', '::ffff:192.168.1.4'),
(97, '0d366b09-09f4-459c-b6fb-6f498101b9da', '2025-11-07 07:12:51', '2025-11-07 07:12:59', '::ffff:192.168.1.4'),
(98, '0d366b09-09f4-459c-b6fb-6f498101b9da', '2025-11-07 07:20:04', NULL, '::ffff:192.168.1.4'),
(99, 'c6001df9-4fa6-47ba-bd65-ec3554f925e7', '2025-11-07 07:26:39', NULL, '::ffff:192.168.1.3'),
(100, '098930d7-3a88-45aa-96a6-6f875560df27', '2025-11-07 07:28:56', NULL, '::ffff:192.168.1.3'),
(101, '098930d7-3a88-45aa-96a6-6f875560df27', '2025-11-07 11:14:57', NULL, '::ffff:192.168.1.3'),
(102, 'de5cefba-355a-4b1c-8b37-4955f5b20401', '2025-11-07 11:52:39', '2025-11-07 12:25:40', '::ffff:192.168.1.3'),
(103, 'c6001df9-4fa6-47ba-bd65-ec3554f925e7', '2025-11-07 12:25:46', '2025-11-07 12:30:39', '::ffff:192.168.1.3'),
(104, '098930d7-3a88-45aa-96a6-6f875560df27', '2025-11-07 12:32:37', '2025-11-07 12:42:24', '::ffff:192.168.1.3'),
(105, 'b0411973-fe73-476f-a87a-70a3393aeea3', '2025-11-07 12:41:35', NULL, '::ffff:192.168.1.4'),
(106, 'c6001df9-4fa6-47ba-bd65-ec3554f925e7', '2025-11-07 12:52:41', '2025-11-07 13:19:40', '::ffff:192.168.1.3'),
(107, 'f2b58c5c-419b-47d6-a599-28e425a93059', '2025-11-07 13:22:27', '2025-11-08 05:11:07', '::ffff:192.168.1.3'),
(108, 'b0411973-fe73-476f-a87a-70a3393aeea3', '2025-11-08 05:11:01', NULL, '::ffff:192.168.1.4'),
(109, 'b0411973-fe73-476f-a87a-70a3393aeea3', '2025-11-08 05:13:50', NULL, '::ffff:192.168.1.8'),
(110, 'c6001df9-4fa6-47ba-bd65-ec3554f925e7', '2025-11-08 06:09:52', NULL, '::ffff:192.168.1.3'),
(111, 'b0411973-fe73-476f-a87a-70a3393aeea3', '2025-11-08 08:54:12', NULL, '::ffff:192.168.1.4'),
(112, 'b0411973-fe73-476f-a87a-70a3393aeea3', '2025-11-09 07:04:02', NULL, '::ffff:10.51.121.230'),
(113, 'b0411973-fe73-476f-a87a-70a3393aeea3', '2025-11-09 07:04:03', NULL, '::ffff:10.51.121.230'),
(114, '48fc5698-5fef-42c2-b1fa-87cbca547b42', '2025-11-09 07:19:01', NULL, 'unknown'),
(115, 'b0411973-fe73-476f-a87a-70a3393aeea3', '2025-11-09 11:44:36', NULL, '::ffff:10.51.121.183'),
(116, '0d366b09-09f4-459c-b6fb-6f498101b9da', '2025-11-09 12:16:42', NULL, '::ffff:10.51.121.230'),
(117, '0d366b09-09f4-459c-b6fb-6f498101b9da', '2025-11-10 05:04:09', NULL, '::ffff:192.168.1.4'),
(118, '48fc5698-5fef-42c2-b1fa-87cbca547b42', '2025-11-10 05:08:53', NULL, 'unknown'),
(119, '0d366b09-09f4-459c-b6fb-6f498101b9da', '2025-11-10 05:19:58', NULL, '::ffff:192.168.1.6'),
(120, 'c6001df9-4fa6-47ba-bd65-ec3554f925e7', '2025-11-10 06:54:49', NULL, '::ffff:192.168.1.2');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` varchar(36) NOT NULL,
  `heading` varchar(100) DEFAULT NULL,
  `desc` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `imagePath` text DEFAULT NULL,
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notice`
--

CREATE TABLE `notice` (
  `id` varchar(36) NOT NULL,
  `image` text DEFAULT NULL,
  `imagePath` text DEFAULT NULL,
  `status` enum('ACTIVE','DEACTIVE','DELETED','SUSPENDED','PENDING') NOT NULL DEFAULT 'PENDING',
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `id` int(11) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `desc` text DEFAULT NULL,
  `type` enum('NEW PRODUCT','NEW ACCOUNT','CONTACT US','QNA','FEEDBACK','INVOICE','STAFF','TICKET','USER PRODUCT','USER ACCOUNT','USER INVOICE','USER PAYMENT','USER TICKET','OFFER','LOGIN','DEMO') DEFAULT NULL,
  `read` tinyint(4) NOT NULL DEFAULT 0,
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `accountId` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`id`, `title`, `desc`, `type`, `read`, `createdAt`, `accountId`) VALUES
(1, 'New User Registration', 'New user registered: aritrasharma96542@gmail.com', '', 0, '2025-10-24 14:00:13.982382', NULL),
(2, 'New User Registration', 'New user registered: akashghosh3511@gmail.com', '', 0, '2025-10-24 14:41:49.249644', NULL),
(3, 'New User Registration', 'New user registered: aritrasharma9811@gmail.com', '', 0, '2025-10-24 17:30:15.034976', NULL),
(4, 'New User Registration', 'New user registered: aritrasharma9811@gmail.com', '', 0, '2025-10-24 17:39:45.022095', NULL),
(5, 'New Course Available!', 'Check out our new course: JavaScript Fundamentals', 'USER PRODUCT', 0, '2025-10-24 18:46:09.040708', '1d688443-79e0-4a72-a78f-d310aa891b04'),
(6, 'New Course Available!', 'Check out our new course: JavaScript Fundamentals', 'USER PRODUCT', 0, '2025-10-24 18:46:09.047785', '3c036083-fcb2-4d58-8ddf-3da30f5e36a7'),
(7, 'New Course Available!', 'Check out our new course: JavaScript Fundamentals', 'USER PRODUCT', 0, '2025-10-24 18:46:09.056330', 'e83208a9-6398-49ac-a1c6-03a6b0e7baf5'),
(8, 'New User Registration', 'New user registered: aritrasharmacgec@gmail.com', '', 0, '2025-10-24 18:46:17.291813', NULL),
(9, 'New User Registration', 'New user registered: aritrasharmacgec@gmail.com', '', 0, '2025-10-25 10:24:04.570524', NULL),
(10, 'New Course Available!', 'Check out our new course: C ++Fundamentals', 'USER PRODUCT', 0, '2025-10-25 12:08:00.410179', '1d688443-79e0-4a72-a78f-d310aa891b04'),
(11, 'New Course Available!', 'Check out our new course: C ++Fundamentals', 'USER PRODUCT', 0, '2025-10-25 12:08:00.416727', '94568bf6-981e-4523-8228-e84e9d9b728e'),
(12, 'New User Registration', 'New user registered: aritrasharma96542@gmail.com', '', 0, '2025-10-25 12:38:05.205438', NULL),
(13, 'New Course Available!', 'Check out our new course: Python Fundamentals', 'USER PRODUCT', 0, '2025-10-25 12:40:47.947188', '1d688443-79e0-4a72-a78f-d310aa891b04'),
(14, 'New Course Available!', 'Check out our new course: Python Fundamentals', 'USER PRODUCT', 0, '2025-10-25 12:40:47.953035', '94568bf6-981e-4523-8228-e84e9d9b728e'),
(15, 'New Course Available!', 'Check out our new course: Python Fundamentals', 'USER PRODUCT', 0, '2025-10-25 12:40:47.957999', 'f2e9e1ca-679d-4b72-ad5c-358085b98e85'),
(16, 'New User Registration', 'New user registered: ptest2253@gmail.com', '', 0, '2025-10-25 15:52:10.580939', NULL),
(17, 'New User Registration', 'New user registered: aritrasharma9811@gmail.com', '', 0, '2025-10-25 16:34:36.505925', NULL),
(18, 'New User Registration', 'New user registered: akashkumarsharma794@gmail.com', '', 0, '2025-10-25 16:58:10.414789', NULL),
(19, 'New User Registration', 'New user registered: aritrasharma9811@gmail.com', '', 0, '2025-10-27 15:07:29.255140', NULL),
(20, 'New User Registration', 'New user registered: aritrasharmacgec@gmail.com', '', 0, '2025-10-27 15:21:32.841422', NULL),
(21, 'New Class Booking', 'You have a new class booking for 2024-01-15 from 09:00 to 10:00', 'USER ACCOUNT', 0, '2025-10-27 15:24:45.934196', '1cb5b4d5-7bb9-45b3-8a18-531776922141'),
(22, 'New User Registration', 'New user registered: bittusharma54320@gmail.com', '', 0, '2025-10-28 10:43:46.082950', NULL),
(23, 'New User Registration', 'New user registered: akashkumarsharma794@gmail.com', '', 0, '2025-10-28 11:52:25.728665', NULL),
(24, 'New Course Available!', 'Check out our new course: Python Fundamentals', 'USER PRODUCT', 0, '2025-10-28 15:32:50.397409', '4a433e4d-f6ba-48b7-9d10-74a8e35c78db'),
(25, 'New Course Available!', 'Check out our new course: Python Fundamentals', 'USER PRODUCT', 0, '2025-10-28 15:32:50.402685', '91cfb413-3ab9-4a68-8347-56642affcd34'),
(26, 'New Course Available!', 'Check out our new course: Python Fundamentals', 'USER PRODUCT', 0, '2025-10-28 15:32:50.410592', 'd0a39f2a-461d-45cb-8048-e0ba91e38872'),
(27, 'New Course Available!', 'Check out our new course: Python Fundamentals', 'USER PRODUCT', 0, '2025-10-28 15:32:50.415587', 'f06231e0-8ed0-471e-8dc7-b6566b2edf3d'),
(28, 'New Course Available!', 'Check out our new course: C ++Fundamentals', 'USER PRODUCT', 0, '2025-10-28 15:36:38.490613', '4a433e4d-f6ba-48b7-9d10-74a8e35c78db'),
(29, 'New Course Available!', 'Check out our new course: C ++Fundamentals', 'USER PRODUCT', 0, '2025-10-28 15:36:38.497086', '91cfb413-3ab9-4a68-8347-56642affcd34'),
(30, 'New Course Available!', 'Check out our new course: C ++Fundamentals', 'USER PRODUCT', 0, '2025-10-28 15:36:38.506093', 'd0a39f2a-461d-45cb-8048-e0ba91e38872'),
(31, 'New Course Available!', 'Check out our new course: C ++Fundamentals', 'USER PRODUCT', 0, '2025-10-28 15:36:38.514020', 'f06231e0-8ed0-471e-8dc7-b6566b2edf3d'),
(32, 'New Course Available!', 'Check out our new course: JavaScript Fundamentals', 'USER PRODUCT', 0, '2025-10-28 15:37:30.060369', '4a433e4d-f6ba-48b7-9d10-74a8e35c78db'),
(33, 'New Course Available!', 'Check out our new course: JavaScript Fundamentals', 'USER PRODUCT', 0, '2025-10-28 15:37:30.066911', '91cfb413-3ab9-4a68-8347-56642affcd34'),
(34, 'New Course Available!', 'Check out our new course: JavaScript Fundamentals', 'USER PRODUCT', 0, '2025-10-28 15:37:30.073289', 'd0a39f2a-461d-45cb-8048-e0ba91e38872'),
(35, 'New Course Available!', 'Check out our new course: JavaScript Fundamentals', 'USER PRODUCT', 0, '2025-10-28 15:37:30.081635', 'f06231e0-8ed0-471e-8dc7-b6566b2edf3d'),
(36, 'New User Registration', 'New user registered: kaushiks9304@gmail.com', '', 0, '2025-10-28 17:09:01.185650', NULL),
(37, 'New User Registration', 'New user registered: debnathkrishnangee01@gmail.com', '', 0, '2025-10-29 12:36:53.354644', NULL),
(38, 'New User Registration', 'New user registered: aritrasharmacgec@gmail.com', '', 0, '2025-10-30 10:21:01.188496', NULL),
(39, 'New User Registration', 'New user registered: sharmagalactus@gmail.com', '', 0, '2025-10-30 13:16:53.717576', NULL),
(40, 'New User Registration', 'New user registered: siddharthamajumder22@gmail.com', '', 0, '2025-10-30 14:56:02.729011', NULL),
(41, 'New User Registration', 'New user registered: akashkumarsharma794@gmail.com', '', 0, '2025-10-31 12:48:52.811433', NULL),
(42, 'New User Registration', 'New user registered: aritrasharmacgec@gmail.com', '', 0, '2025-10-31 15:10:17.908086', NULL),
(43, 'New User Registration', 'New user registered: bittusharma54320@gmail.com', '', 0, '2025-10-31 16:24:49.030587', NULL),
(44, 'New User Registration', 'New user registered: siddharthamajumder22@gmail.com', '', 0, '2025-10-31 17:07:51.921733', NULL),
(45, 'New User Registration', 'New user registered: akashghosh9635@gmail.com', '', 0, '2025-11-03 11:19:37.235263', NULL),
(46, 'New User Registration', 'New user registered: akashghosh9635@gmail.com', '', 0, '2025-11-03 13:31:43.483592', NULL),
(47, 'New User Registration', 'New user registered: akashghosh9635@gmail.com', '', 0, '2025-11-05 13:03:30.194423', NULL),
(48, 'New Course Available!', 'Check out our new course: Math Course ', 'USER PRODUCT', 0, '2025-11-06 16:09:47.329802', '1a6d8fe8-90b2-4207-a2f9-49b200d09bc3'),
(49, 'New Course Available!', 'Check out our new course: Math Course ', 'USER PRODUCT', 0, '2025-11-06 16:09:47.339365', '9e17de58-c5a1-492b-9084-9b55e5bf9074'),
(50, 'New Course Available!', 'Check out our new course: Math Course ', 'USER PRODUCT', 0, '2025-11-06 16:09:47.346997', 'c25c7b0d-5889-43ed-a87b-4c6b4ad2ae14'),
(51, 'New Course Available!', 'Check out our new course: Math Course ', 'USER PRODUCT', 0, '2025-11-06 16:09:47.355624', 'e7dce7b3-f53f-4715-b722-f137035f24f5'),
(52, 'New Course Available!', 'Check out our new course: Math Course ', 'USER PRODUCT', 0, '2025-11-06 16:09:47.364888', 'f74147ad-e04f-4cb1-979f-2dd67523d948'),
(53, 'New User Registration', 'New user registered: akashkumarsharma794@gmail.com', '', 0, '2025-11-07 11:39:45.385145', NULL),
(54, 'New Course Available!', 'Check out our new course: Physics Course', 'USER PRODUCT', 0, '2025-11-07 12:34:28.173636', 'c6001df9-4fa6-47ba-bd65-ec3554f925e7'),
(55, 'New Course Available!', 'Check out our new course: JavaScript Fundamentals', 'USER PRODUCT', 0, '2025-11-07 13:24:10.817094', 'c6001df9-4fa6-47ba-bd65-ec3554f925e7'),
(56, 'New User Registration', 'New user registered: sekharajay38@gmail.com', '', 0, '2025-11-07 18:11:31.386823', NULL),
(57, 'New User Registration', 'New user registered: siddharthamajumder22@gmail.com', '', 0, '2025-11-07 18:52:23.794982', NULL),
(58, 'New Course Available!', 'Check out our new course: JavaScript Fundamental', 'USER PRODUCT', 0, '2025-11-09 17:47:07.113910', 'b0411973-fe73-476f-a87a-70a3393aeea3'),
(59, 'New Course Available!', 'Check out our new course: JavaScript Fundamental', 'USER PRODUCT', 0, '2025-11-09 17:47:07.123872', 'c6001df9-4fa6-47ba-bd65-ec3554f925e7'),
(60, 'New Course Available!', 'Check out our new course: JavaScript Fundamental', 'USER PRODUCT', 0, '2025-11-09 17:47:07.136275', 'f2b58c5c-419b-47d6-a599-28e425a93059');

-- --------------------------------------------------------

--
-- Table structure for table `page`
--

CREATE TABLE `page` (
  `desc` text NOT NULL,
  `id` int(11) NOT NULL,
  `pageType` enum('USER','TUTOR') NOT NULL,
  `imageUrl` text DEFAULT NULL,
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `title` varchar(255) NOT NULL,
  `imagePath` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permission`
--

CREATE TABLE `permission` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `qualification`
--

CREATE TABLE `qualification` (
  `id` varchar(36) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` enum('ACTIVE','DEACTIVE','DELETED','SUSPENDED','PENDING') NOT NULL DEFAULT 'ACTIVE',
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `qualification`
--

INSERT INTO `qualification` (`id`, `name`, `status`, `createdAt`, `updatedAt`) VALUES
('0b0fb83d-877c-43f6-9420-c6cce7dd523d', 'Bachelor of Science', 'ACTIVE', '2025-11-06 10:56:24.057585', '2025-11-06 10:56:24.057585'),
('5b1af9ad-81b6-43b4-82a4-0c369e5990b2', 'Master Of Arts ', 'ACTIVE', '2025-11-06 10:56:51.263199', '2025-11-06 10:56:51.263199');

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE `rating` (
  `id` varchar(36) NOT NULL,
  `accountId` varchar(255) NOT NULL,
  `tutorId` varchar(255) DEFAULT NULL,
  `courseId` varchar(255) DEFAULT NULL,
  `rating` decimal(2,1) NOT NULL,
  `comment` text DEFAULT NULL,
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rating`
--

INSERT INTO `rating` (`id`, `accountId`, `tutorId`, `courseId`, `rating`, `comment`, `createdAt`, `updatedAt`) VALUES
('7a73f6ff-b943-4161-92b1-708042f08b5d', '1d688443-79e0-4a72-a78f-d310aa891b04', '7793b760-1833-4152-b277-91a491d5d922', NULL, 4.0, NULL, '2025-10-25 13:11:00.563637', '2025-10-25 13:11:00.563637'),
('bd36edfe-1995-4037-b509-8f3c267454d7', '1d688443-79e0-4a72-a78f-d310aa891b04', NULL, '2a3dfa54-0cd3-412e-a7ff-41900cc6c165', 4.0, NULL, '2025-10-25 11:31:25.475400', '2025-10-25 11:31:25.475400');

-- --------------------------------------------------------

--
-- Table structure for table `rating_feedback`
--

CREATE TABLE `rating_feedback` (
  `id` varchar(36) NOT NULL,
  `desc` text DEFAULT NULL,
  `rating` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `accountId` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `search_history`
--

CREATE TABLE `search_history` (
  `id` varchar(36) NOT NULL,
  `keyword` text DEFAULT NULL,
  `accountId` varchar(255) DEFAULT NULL,
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `search_history`
--

INSERT INTO `search_history` (`id`, `keyword`, `accountId`, `createdAt`, `updatedAt`) VALUES
('0b99c4a1-0539-4f02-9116-8fd8035fff50', 'Tut', NULL, '2025-10-25 10:30:19.514095', '2025-10-25 10:30:19.514095'),
('142f6b52-ebc3-44cc-ace3-e15253eedcce', 'Fi', NULL, '2025-10-27 17:23:24.790429', '2025-10-27 17:23:24.790429'),
('16ea74d3-7eb7-402c-b114-3ebf5da4dc35', 'Filtered', NULL, '2025-10-27 17:23:24.509099', '2025-10-27 17:23:24.509099'),
('172abf8b-838b-4398-bb2a-2be8c266146e', 'untitled', NULL, '2025-10-28 18:35:05.238247', '2025-10-28 18:35:05.238247'),
('181aeceb-f5fe-4358-8917-453c5757695d', 'Bi', NULL, '2025-10-25 12:09:42.099050', '2025-10-25 12:09:42.099050'),
('1aee09c4-7629-402c-bbb8-b006ba181b3c', 'Biology', NULL, '2025-10-27 16:47:59.900390', '2025-10-27 16:47:59.900390'),
('1c47c128-04bf-4413-a83b-ddded73b0313', 'Filte', NULL, '2025-10-27 17:23:24.617334', '2025-10-27 17:23:24.617334'),
('1e401989-2821-42cd-b09b-0f301811fa96', 'Filtered Resu', NULL, '2025-10-27 17:23:24.323176', '2025-10-27 17:23:24.323176'),
('2402a2e0-2db4-498b-b36a-91bbf6e0f0b8', 'Co', NULL, '2025-10-25 12:00:06.510271', '2025-10-25 12:00:06.510271'),
('28f5ae94-5327-473e-b4bd-83cc1b8f110d', 'Filt', NULL, '2025-10-27 17:23:24.699083', '2025-10-27 17:23:24.699083'),
('2b0374b3-e027-42c4-a839-a9af918d97ce', 'Tuto', NULL, '2025-10-25 10:30:20.131035', '2025-10-25 10:30:20.131035'),
('2b27c367-7578-485b-a05e-2251b8b9a626', 'Biol', NULL, '2025-10-27 16:48:00.678392', '2025-10-27 16:48:00.678392'),
('325e9912-4b2b-4f59-9f6f-1f4d8b723395', 'Tu', NULL, '2025-10-25 10:30:17.946314', '2025-10-25 10:30:17.946314'),
('35a32fae-94a2-4a19-a823-b1478d6cdee5', 'tutor', NULL, '2025-10-24 20:10:05.568335', '2025-10-24 20:10:05.568335'),
('38111a05-7a83-4845-b438-2bcb81878d5d', 'Couse', NULL, '2025-10-25 12:00:07.321244', '2025-10-25 12:00:07.321244'),
('39af1f66-943b-4bfa-ad4c-934296563831', 'Math', NULL, '2025-10-28 17:19:45.481009', '2025-10-28 17:19:45.481009'),
('4217d18b-392b-42d2-925c-8393468d8e34', 'Bio', NULL, '2025-10-27 16:48:00.846562', '2025-10-27 16:48:00.846562'),
('454dd041-07d5-4e2a-b8b5-3c01a9605d8d', 'Course', NULL, '2025-10-25 12:00:11.864432', '2025-10-25 12:00:11.864432'),
('45c072be-40b8-4f48-ad81-b48673938ade', 'Tutorl', NULL, '2025-10-28 10:30:29.659283', '2025-10-28 10:30:29.659283'),
('476c7a2f-cf80-4101-b54f-12f7c0cd2c1a', '+', NULL, '2025-10-28 18:34:52.319640', '2025-10-28 18:34:52.319640'),
('4b436956-313e-4259-a9d4-726ffbf9cc46', 'D', NULL, '2025-10-27 16:48:19.478855', '2025-10-27 16:48:19.478855'),
('4f4c7ee5-f1f0-4a8d-a4ae-c048d19c36e9', 'Biolog', NULL, '2025-10-27 16:48:00.351643', '2025-10-27 16:48:00.351643'),
('536c38d8-5e9a-4a80-b6bb-79ca58013a78', 'T', NULL, '2025-10-25 10:30:10.432652', '2025-10-25 10:30:10.432652'),
('54f8eda4-b93a-4d39-9d62-fc16bf804fb2', 'Tutors', NULL, '2025-10-25 12:05:02.373021', '2025-10-25 12:05:02.373021'),
('59bec5e1-bd40-4b22-a071-8957b07b5806', 'un', NULL, '2025-10-28 17:58:33.959876', '2025-10-28 17:58:33.959876'),
('5a6e9ac8-fe44-42d6-a036-fcd72a16cbcd', 'Biolo', NULL, '2025-10-27 16:48:00.498811', '2025-10-27 16:48:00.498811'),
('5b4128f8-ca46-4ac2-80e6-bcacb6ca270a', 'I', NULL, '2025-10-25 16:01:00.332976', '2025-10-25 16:01:00.332976'),
('5e58883f-41c7-4b74-9a82-5ab39f581511', 'Ja', NULL, '2025-10-25 11:35:31.423763', '2025-10-25 11:35:31.423763'),
('621f4331-678e-4ccd-af31-5a0981318128', 'fund', NULL, '2025-10-28 17:59:09.379739', '2025-10-28 17:59:09.379739'),
('66461558-bc87-42e1-840c-39a6daedc96c', 'ar', NULL, '2025-10-24 20:10:45.328844', '2025-10-24 20:10:45.328844'),
('686677f3-7e81-45ce-8bec-8f60f6777177', 'Filtered Res', NULL, '2025-10-27 17:23:24.328050', '2025-10-27 17:23:24.328050'),
('6935c5b2-71c4-4aff-bd8e-d5d8c1582a6f', 'Boo', NULL, '2025-10-25 11:59:20.796376', '2025-10-25 11:59:20.796376'),
('718be436-f65e-4fe2-8df1-b5cd9c3ef798', 'funda', NULL, '2025-10-28 17:59:06.133779', '2025-10-28 17:59:06.133779'),
('740ea1fe-7c70-4db1-9afc-ff79b60f6d77', 'Filtered', NULL, '2025-10-27 17:23:24.509391', '2025-10-27 17:23:24.509391'),
('7f0d3cf6-3274-4dac-812c-8175cf27e854', 'Cou', NULL, '2025-10-25 12:00:06.755449', '2025-10-25 12:00:06.755449'),
('878d76ec-1924-4650-8ccf-690b18e00842', 'Cous', NULL, '2025-10-25 12:00:07.183010', '2025-10-25 12:00:07.183010'),
('8a7e7539-d5df-44e0-8e6e-ebc1853c3ff7', 'Mathe', NULL, '2025-10-28 17:19:45.833020', '2025-10-28 17:19:45.833020'),
('8b4e2cc8-b38f-4878-a6dc-287f4c9e329d', 'Sm', NULL, '2025-10-28 17:19:07.348361', '2025-10-28 17:19:07.348361'),
('8b85e2f9-acdf-4ca4-9125-fc1d6481c12a', 'F', NULL, '2025-10-27 17:23:24.856134', '2025-10-27 17:23:24.856134'),
('8ceab60a-e4ca-4d7b-b911-1ba4237d3180', 'M', NULL, '2025-10-28 17:19:41.366549', '2025-10-28 17:19:41.366549'),
('8d268dd6-8468-40f9-85c0-7f431a53509d', 'Smit', NULL, '2025-10-28 17:19:08.130566', '2025-10-28 17:19:08.130566'),
('8da5d11a-30ab-416e-8b54-3d458dc22981', 'jane', NULL, '2025-10-24 20:10:29.197003', '2025-10-24 20:10:29.197003'),
('8fe908ad-d6a0-435c-b491-6ded72e41ed8', 'Cours', NULL, '2025-10-25 12:00:11.745267', '2025-10-25 12:00:11.745267'),
('9974fff7-7b7b-4183-8b50-b8d9ce3d402f', 'Tur', NULL, '2025-10-28 10:32:44.507249', '2025-10-28 10:32:44.507249'),
('99866bf9-d0cb-4d58-973c-41603333e4a0', 'Filtered Results', NULL, '2025-10-28 12:15:22.943323', '2025-10-28 12:15:22.943323'),
('99d848e6-be4b-4fdf-a870-5ff38b75060b', 'courses', NULL, '2025-10-28 10:37:24.316956', '2025-10-28 10:37:24.316956'),
('a19be7d2-85c6-4150-b0ed-ee30b39e52f1', 'Filtered Result', NULL, '2025-10-27 17:23:24.306870', '2025-10-27 17:23:24.306870'),
('a5fadb33-124d-4c16-9456-f722d2d02f78', 'Coure', NULL, '2025-10-28 10:30:33.337067', '2025-10-28 10:30:33.337067'),
('b900e18d-ea9c-490c-9110-b7f2f30f7b16', 'B', NULL, '2025-10-25 11:59:20.087813', '2025-10-25 11:59:20.087813'),
('ba248895-a8cc-4240-9411-fc4a02b686bb', 'bok', NULL, '2025-10-25 16:31:30.089059', '2025-10-25 16:31:30.089059'),
('c0e180b8-b34c-413b-9234-de75d0ba1853', 'una', NULL, '2025-10-28 17:58:54.562026', '2025-10-28 17:58:54.562026'),
('c12ad803-008e-41ce-aad9-39ba93c393ea', 'Smi', NULL, '2025-10-28 17:19:07.707977', '2025-10-28 17:19:07.707977'),
('c42b64c2-583a-48b9-868e-cee5f1ef9076', 'Filtere', NULL, '2025-10-27 17:23:24.516554', '2025-10-27 17:23:24.516554'),
('c463c736-7f88-407b-8402-e6a451f5f87e', 'india', NULL, '2025-10-25 13:15:02.110976', '2025-10-25 13:15:02.110976'),
('c4f44349-6ae8-4ff8-be60-01483bac561d', 'Se', NULL, '2025-10-28 12:16:05.513752', '2025-10-28 12:16:05.513752'),
('c562ec66-bf6d-446b-aab3-2b69e395dc37', 'und', NULL, '2025-10-28 17:58:57.468484', '2025-10-28 17:58:57.468484'),
('ce05bdb1-dac3-4596-98eb-577a9f021eff', 'Fil', NULL, '2025-10-27 17:23:24.709585', '2025-10-27 17:23:24.709585'),
('d04b3138-00cf-41bd-bc5b-42e542f4cb10', 'Mat', NULL, '2025-10-28 17:19:45.287481', '2025-10-28 17:19:45.287481'),
('d176e00c-9e55-4965-959f-be04ecef5508', 'Bo', NULL, '2025-10-25 11:59:20.625430', '2025-10-25 11:59:20.625430'),
('d9f91e04-5e4a-49a2-b5a1-e8fd8b1f7ceb', 'Don', NULL, '2025-10-27 16:48:20.180776', '2025-10-27 16:48:20.180776'),
('dc311464-b3cb-407a-a7b7-c0b9b8b76348', 'Filtered Resul', NULL, '2025-10-27 17:23:24.315255', '2025-10-27 17:23:24.315255'),
('ddb328c2-3618-427e-9b36-6c55938a3103', 'S', NULL, '2025-10-28 10:32:38.276387', '2025-10-28 10:32:38.276387'),
('ded4062d-7f1c-49ce-afd2-b31df56caf6b', 'Filter', NULL, '2025-10-27 17:23:24.605121', '2025-10-27 17:23:24.605121'),
('e0c9c5f9-d393-43f2-a2bd-084546047406', 'book', NULL, '2025-10-24 20:09:51.681285', '2025-10-24 20:09:51.681285'),
('e284c783-3f0e-4cf4-bcea-1ae4833d4c6c', 'j', NULL, '2025-10-24 20:10:37.325813', '2025-10-24 20:10:37.325813'),
('ec8d7a81-5ccc-42ff-b91a-19de82870242', 'Ma', NULL, '2025-10-28 17:19:43.266464', '2025-10-28 17:19:43.266464'),
('f116b8fc-309a-4a63-b013-eee3e2ad1bb9', 'Cour', NULL, '2025-10-25 12:00:11.461163', '2025-10-25 12:00:11.461163'),
('f557d67f-6b84-4560-913d-eabb4f2f88fe', 'C', NULL, '2025-10-25 12:00:05.998781', '2025-10-25 12:00:05.998781'),
('f5d7670d-259f-4791-9786-148841e2fd45', 'Jan', NULL, '2025-10-25 11:35:32.140161', '2025-10-25 11:35:32.140161'),
('f72842e6-d450-4c88-8c84-cc25a59ab62b', 'Do', NULL, '2025-10-27 16:48:19.903596', '2025-10-27 16:48:19.903596'),
('f754de2f-96de-427e-a6b4-d2b7807d1b5d', 'Books', NULL, '2025-10-25 11:59:24.686597', '2025-10-25 11:59:24.686597'),
('f7cbef79-868f-4b36-a177-80bed513ded8', 'Filtered R', NULL, '2025-10-27 17:23:24.393773', '2025-10-27 17:23:24.393773'),
('faf68d6a-a941-49b5-95f7-9dcd5a924192', 'Filtered Re', NULL, '2025-10-27 17:23:24.393076', '2025-10-27 17:23:24.393076');

-- --------------------------------------------------------

--
-- Table structure for table `session`
--

CREATE TABLE `session` (
  `id` varchar(36) NOT NULL,
  `userId` varchar(255) NOT NULL,
  `tutorId` varchar(255) NOT NULL,
  `sessionDate` date NOT NULL,
  `startTime` time NOT NULL,
  `endTime` time NOT NULL,
  `duration` int(11) NOT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `purchaseId` varchar(255) DEFAULT NULL,
  `status` enum('PENDING','SCHEDULED','COMPLETED','CANCELLED','NO_SHOW') NOT NULL DEFAULT 'SCHEDULED',
  `notes` text DEFAULT NULL,
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `session`
--

INSERT INTO `session` (`id`, `userId`, `tutorId`, `sessionDate`, `startTime`, `endTime`, `duration`, `amount`, `purchaseId`, `status`, `notes`, `createdAt`, `updatedAt`) VALUES
('2f619f36-2a3e-495b-a695-fee840524234', 'b0411973-fe73-476f-a87a-70a3393aeea3', '098930d7-3a88-45aa-96a6-6f875560df27', '2025-11-15', '10:15:00', '11:15:00', 60, 59.00, 'c5e52700-6520-49a8-a1f1-71898aa1ac30', 'SCHEDULED', 'Regular session - Astronomy tutoring session', '2025-11-09 17:17:45.286451', '2025-11-09 17:17:45.286451'),
('360e40ce-cc79-4acb-bb12-30baa85bcda4', 'b0411973-fe73-476f-a87a-70a3393aeea3', '0d366b09-09f4-459c-b6fb-6f498101b9da', '2025-11-09', '11:15:00', '12:15:00', 60, 70.00, 'c41c47c5-2bbd-41cb-876d-938d8f504856', 'SCHEDULED', 'Regular session - Mathematics tutoring session', '2025-11-09 13:24:53.947548', '2025-11-09 13:24:53.947548'),
('637170ed-983d-43ea-849c-7fb6e806a873', 'b0411973-fe73-476f-a87a-70a3393aeea3', '0d366b09-09f4-459c-b6fb-6f498101b9da', '2024-01-15', '10:00:00', '11:00:00', 60, 70.00, '395a8800-cadc-4a47-a9f5-f11c4eedcd7c', 'SCHEDULED', 'Math tutoring session', '2025-11-09 12:35:14.986242', '2025-11-09 12:35:14.986242'),
('6f758a25-715e-4547-9b08-e4426db5daee', 'b0411973-fe73-476f-a87a-70a3393aeea3', '0d366b09-09f4-459c-b6fb-6f498101b9da', '2025-11-10', '10:00:00', '11:00:00', 60, 70.00, '0b662557-a854-4f51-bf33-2df24aca0acd', 'SCHEDULED', 'Regular session - Mathematics tutoring session', '2025-11-09 17:36:34.871161', '2025-11-09 17:36:34.871161'),
('704f1cc9-b9c3-440b-a8ac-b2b3c3b8fcb2', 'b0411973-fe73-476f-a87a-70a3393aeea3', '0d366b09-09f4-459c-b6fb-6f498101b9da', '2025-11-11', '09:15:00', '10:15:00', 60, 70.00, 'df7561df-aadb-4d8f-931d-c26baa976d51', 'SCHEDULED', 'Regular session - Mathematics tutoring session', '2025-11-09 17:15:53.280738', '2025-11-09 17:15:53.280738'),
('7fd9a46b-0d69-406f-9a71-b2519525ac73', 'b0411973-fe73-476f-a87a-70a3393aeea3', '0d366b09-09f4-459c-b6fb-6f498101b9da', '2025-11-11', '11:45:00', '12:45:00', 60, 70.00, '9a87ce90-59fe-49a7-8cb0-48ed219c3230', 'SCHEDULED', 'Regular session - Mathematics tutoring session', '2025-11-10 10:41:46.238164', '2025-11-10 10:41:46.238164'),
('970f84a4-26fc-41aa-ad03-72da7d63b87b', 'b0411973-fe73-476f-a87a-70a3393aeea3', '0d366b09-09f4-459c-b6fb-6f498101b9da', '2025-11-09', '15:00:00', '16:00:00', 60, 70.00, '645141ea-a9f7-4fc0-bd99-88443f6843a5', 'SCHEDULED', 'Regular session - Mathematics tutoring session', '2025-11-09 13:36:22.078380', '2025-11-09 13:36:22.078380'),
('98e7e9a8-d098-4cba-95c8-d91890db540c', 'f74147ad-e04f-4cb1-979f-2dd67523d948', 'b3860506-cde6-48e8-8c91-0321935966ac', '2024-01-15', '10:00:00', '11:00:00', 60, 150.00, '02598c1a-9f30-40cf-9f36-0fd9b26771c2', 'SCHEDULED', 'Math tutoring session', '2025-11-06 11:11:04.632823', '2025-11-06 11:11:04.632823'),
('a3d9cc8c-f307-41a1-8eb1-a5ec00bd5f1e', 'b0411973-fe73-476f-a87a-70a3393aeea3', '098930d7-3a88-45aa-96a6-6f875560df27', '2025-11-12', '10:15:00', '11:15:00', 60, 59.00, '77dc2b56-c686-4955-83bb-68479e3bf049', 'SCHEDULED', 'Regular session - Astronomy tutoring session', '2025-11-09 12:46:48.109830', '2025-11-09 12:46:48.109830'),
('a4067cde-685d-46c6-8984-753e24e0a986', 'f74147ad-e04f-4cb1-979f-2dd67523d948', 'b3860506-cde6-48e8-8c91-0321935966ac', '2024-01-15', '10:00:00', '11:00:00', 60, 150.00, '4cd091a3-6148-49b1-b819-f176e9678969', 'SCHEDULED', 'Math tutoring session', '2025-11-05 17:24:44.220946', '2025-11-05 17:24:44.220946'),
('f20e5a9d-52fe-48f8-b1c9-bfef2e944883', 'b0411973-fe73-476f-a87a-70a3393aeea3', '0d366b09-09f4-459c-b6fb-6f498101b9da', '2025-11-12', '19:00:00', '20:00:00', 60, 70.00, '39f8aaae-b9b5-41c6-b3dc-01c7460ac1ae', 'SCHEDULED', 'Regular session - Mathematics tutoring session', '2025-11-09 12:59:25.022019', '2025-11-09 12:59:25.022019'),
('fd60504f-2ab1-4b85-9414-d24584c5112d', 'b0411973-fe73-476f-a87a-70a3393aeea3', '0d366b09-09f4-459c-b6fb-6f498101b9da', '2025-11-09', '12:30:00', '13:30:00', 60, 70.00, '102dea71-230d-4b5b-8b4a-a599e7d568ff', 'SCHEDULED', 'Regular session - Mathematics tutoring session', '2025-11-09 12:44:39.940715', '2025-11-09 12:44:39.940715');

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `id` varchar(36) NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `user_domain` varchar(50) DEFAULT NULL,
  `admin_domain` varchar(50) DEFAULT NULL,
  `mobile_domain` varchar(150) DEFAULT NULL,
  `logo` text DEFAULT NULL,
  `logoPath` text DEFAULT NULL,
  `facebook` varchar(500) DEFAULT NULL,
  `linkedIn` varchar(500) DEFAULT NULL,
  `twitter` varchar(500) DEFAULT NULL,
  `instagram` varchar(500) DEFAULT NULL,
  `whatsApp` varchar(500) DEFAULT NULL,
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `staff_detail`
--

CREATE TABLE `staff_detail` (
  `id` varchar(36) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `gender` enum('MALE','FEMALE','OTHERS') DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `state` varchar(20) DEFAULT NULL,
  `country` varchar(20) DEFAULT NULL,
  `pin` varchar(10) DEFAULT NULL,
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `accountId` varchar(255) DEFAULT NULL,
  `updatedBy` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE `state` (
  `id` varchar(36) NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(10) DEFAULT NULL,
  `status` enum('ACTIVE','DEACTIVE','DELETED','SUSPENDED','PENDING') NOT NULL DEFAULT 'ACTIVE',
  `countryId` varchar(255) DEFAULT NULL,
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`id`, `name`, `code`, `status`, `countryId`, `createdAt`, `updatedAt`) VALUES
('0f839a8d-ac9e-4a6d-9dc6-5c25ddd257f0', 'Victoria', 'VC', 'ACTIVE', '9e55dede-9ded-4908-a859-779fdb2e89b7', '2025-11-08 15:16:41.779343', '2025-11-08 15:20:06.349455'),
('c06471e0-ea65-4445-aa25-3ec2d4cd484b', 'Queensland', 'QL', 'ACTIVE', '9e55dede-9ded-4908-a859-779fdb2e89b7', '2025-11-08 15:21:21.332540', '2025-11-08 15:21:21.332540');

-- --------------------------------------------------------

--
-- Table structure for table `study_material`
--

CREATE TABLE `study_material` (
  `id` varchar(36) NOT NULL,
  `title` varchar(200) NOT NULL,
  `description` text DEFAULT NULL,
  `fileUrl` varchar(500) DEFAULT NULL,
  `filePath` varchar(500) DEFAULT NULL,
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `videoLectureId` varchar(255) NOT NULL,
  `unitId` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `study_material`
--

INSERT INTO `study_material` (`id`, `title`, `description`, `fileUrl`, `filePath`, `createdAt`, `updatedAt`, `videoLectureId`, `unitId`) VALUES
('0aea97e4-6af6-4c84-a87d-3554be8ab6e6', '  Newton Worksheet', 'Practice problems for calculus', 'http://192.168.1.5:6524/uploads\\StudyMaterial\\pdfs\\1113e351027433789101521be576ae2e5b.pdf', 'uploads\\StudyMaterial\\pdfs\\1113e351027433789101521be576ae2e5b.pdf', '2025-11-07 17:25:30.137042', '2025-11-10 10:54:10.777067', '', '545110de-a44d-41b7-b1b5-11b64476e982'),
('3737f365-3c02-478d-85d1-ccab338b85ab', '  Newton Worksheet', 'Practice problems for calculus', 'http://192.168.1.5:6524/uploads\\StudyMaterial\\pdfs\\2c97d109d1023f67c1c97cfcb97136a77c.pdf', 'uploads\\StudyMaterial\\pdfs\\2c97d109d1023f67c1c97cfcb97136a77c.pdf', '2025-11-07 17:24:20.159042', '2025-11-10 10:54:44.420443', '', 'e0705637-1e9e-4b6a-be85-6e2f3ab9ef3f'),
('68f645dd-b8ac-423e-affd-46cdc3f130e8', '  Newton Worksheet', 'Practice problems for calculus', 'http://192.168.1.5:6524/uploads\\StudyMaterial\\pdfs\\f2c7f73678d84ad148323bb94c4304105.pdf', 'uploads\\StudyMaterial\\pdfs\\f2c7f73678d84ad148323bb94c4304105.pdf', '2025-11-07 17:24:26.896183', '2025-11-10 10:54:49.401106', '', 'e0705637-1e9e-4b6a-be85-6e2f3ab9ef3f'),
('c8051aa5-793f-4bb8-a8fc-cd8cb6f3452e', '  Newton Worksheet', 'Practice problems for calculus', 'http://192.168.1.5:6524/uploads\\StudyMaterial\\pdfs\\86ad81f9ab11cf36be1b846a1497c4110.pdf', 'uploads\\StudyMaterial\\pdfs\\86ad81f9ab11cf36be1b846a1497c4110.pdf', '2025-11-07 15:54:07.813050', '2025-11-10 10:54:54.474731', 'c63c5e94-b15c-49bb-bba4-7edb14d7a25d', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `id` varchar(36) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `imagePath` text DEFAULT NULL,
  `status` enum('ACTIVE','DEACTIVE','DELETED','SUSPENDED','PENDING') NOT NULL DEFAULT 'ACTIVE',
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`id`, `name`, `description`, `image`, `imagePath`, `status`, `createdAt`, `updatedAt`) VALUES
('27c7063f-cf6f-4e57-bb98-9bd2abb0dce2', 'Astronomy', NULL, 'http://192.168.1.8:6524/uploads\\Subjects\\09bd6f35fa0bbda10917ceac431061cee4.jpg', 'uploads\\Subjects\\09bd6f35fa0bbda10917ceac431061cee4.jpg', 'DEACTIVE', '2025-10-24 16:07:07.836168', '2025-11-09 13:10:53.000000'),
('2b59d0d6-c0e5-4743-81f4-ceb8ce275fc1', 'Mathematics', 'Advanced mathematics course', NULL, NULL, 'ACTIVE', '2025-10-24 15:57:17.447339', '2025-10-24 15:57:17.447339'),
('3dbecb87-358f-4ed4-a683-940bc0f528dc', 'history', '', NULL, NULL, 'ACTIVE', '2025-11-09 13:16:52.959664', '2025-11-09 13:16:52.959664'),
('6b7a2150-b29a-403a-804e-5e7ea1cf1f36', 'Geography', NULL, NULL, NULL, 'ACTIVE', '2025-10-28 13:28:21.348278', '2025-10-28 13:28:21.348278'),
('ba815942-473e-4ec0-92c7-b6ddaba189f1', 'Computer Science', NULL, 'http://10.187.154.67:6524/uploads\\Subjects\\9c8205ef8674fc09a9e55210b78b69911.webp', 'uploads\\Subjects\\9c8205ef8674fc09a9e55210b78b69911.webp', 'ACTIVE', '2025-10-24 16:07:13.877640', '2025-10-25 16:10:06.143595'),
('e153a15b-d61c-4df8-8284-f20a062f3e5c', 'Spanish', NULL, 'http://10.187.154.67:6524/uploads\\Subjects\\b5b910a6fdfc8da178281890bd8299b49.jpg', 'uploads\\Subjects\\b5b910a6fdfc8da178281890bd8299b49.jpg', 'ACTIVE', '2025-10-24 15:59:23.205978', '2025-10-25 16:10:12.908613');

-- --------------------------------------------------------

--
-- Table structure for table `topic`
--

CREATE TABLE `topic` (
  `id` varchar(36) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `status` enum('ACTIVE','DEACTIVE','DELETED','SUSPENDED','PENDING') NOT NULL DEFAULT 'ACTIVE',
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `topic`
--

INSERT INTO `topic` (`id`, `name`, `description`, `status`, `createdAt`, `updatedAt`) VALUES
('28ce27f4-0a12-4770-ae5d-a1da1ac34b90', 'EXAMPLE TOPIC 1', NULL, 'ACTIVE', '2025-10-24 14:55:29.317627', '2025-10-24 14:55:29.317627'),
('529be7cd-2785-4f3b-8af3-7847075fa8b8', 'EXAMPLE TOPIC 4', NULL, 'ACTIVE', '2025-10-24 14:55:43.979121', '2025-10-24 14:55:43.979121'),
('8ad6d4fb-03d4-424e-8d15-8e0040d99419', 'EXAMPLE TOPIC 3', NULL, 'ACTIVE', '2025-10-24 14:55:39.684572', '2025-10-24 14:55:39.684572'),
('ed8d6d40-080a-48d2-9f28-5fd8e76397c8', 'EXAMPLE TOPIC 2', NULL, 'ACTIVE', '2025-10-24 14:55:34.888682', '2025-10-24 14:55:34.888682');

-- --------------------------------------------------------

--
-- Table structure for table `tutor_availability`
--

CREATE TABLE `tutor_availability` (
  `id` varchar(36) NOT NULL,
  `tutorId` varchar(255) NOT NULL,
  `dayOfWeek` enum('MONDAY','TUESDAY','WEDNESDAY','THURSDAY','FRIDAY','SATURDAY','SUNDAY') NOT NULL,
  `startTime` time NOT NULL,
  `endTime` time NOT NULL,
  `status` enum('ACTIVE','DEACTIVE','DELETED','SUSPENDED','PENDING') NOT NULL DEFAULT 'ACTIVE',
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tutor_availability`
--

INSERT INTO `tutor_availability` (`id`, `tutorId`, `dayOfWeek`, `startTime`, `endTime`, `status`, `createdAt`, `updatedAt`) VALUES
('01a8d25f-d0cd-43cd-9af8-a1819343fa1b', 'b3860506-cde6-48e8-8c91-0321935966ac', 'MONDAY', '10:00:00', '20:00:00', 'ACTIVE', '2025-11-05 12:42:53.381823', '2025-11-05 16:12:40.000000'),
('0faa33f8-cadb-458e-98d5-7790ac70b07c', '0d366b09-09f4-459c-b6fb-6f498101b9da', 'TUESDAY', '08:00:00', '15:00:00', 'ACTIVE', '2025-11-07 11:13:14.894628', '2025-11-07 12:31:40.000000'),
('138682fc-88c3-4454-bb4f-fb77382d3e62', '0adcca7c-2580-4193-9bf0-f2fffcccea46', 'WEDNESDAY', '09:30:00', '16:30:00', 'ACTIVE', '2025-11-06 16:26:53.621134', '2025-11-06 16:26:53.621134'),
('26e42e91-b6d2-42a3-8bf1-daf3541173c5', '0d366b09-09f4-459c-b6fb-6f498101b9da', 'WEDNESDAY', '10:15:00', '23:15:00', 'ACTIVE', '2025-11-07 11:14:27.623758', '2025-11-07 11:14:27.623758'),
('3197de3f-5559-48a8-96d4-ebb07ab6d1b3', '098930d7-3a88-45aa-96a6-6f875560df27', 'THURSDAY', '09:00:00', '17:00:00', 'ACTIVE', '2025-11-07 16:48:23.033034', '2025-11-08 13:04:47.000000'),
('31a25b75-12a0-4ee1-bef3-2f3a55584c33', 'cd35a543-6a64-4754-b00c-41f9338e893b', 'WEDNESDAY', '10:00:00', '17:00:00', 'ACTIVE', '2025-11-04 17:40:43.188192', '2025-11-04 17:40:43.188192'),
('32528d05-4d0a-4d01-9f77-f7bfcc4baad2', '0adcca7c-2580-4193-9bf0-f2fffcccea46', 'TUESDAY', '05:40:00', '18:40:00', 'ACTIVE', '2025-11-06 16:40:24.313270', '2025-11-06 16:40:24.313270'),
('3ebf5f2f-e662-4466-a41c-ed766a7d6b30', '098930d7-3a88-45aa-96a6-6f875560df27', 'MONDAY', '09:00:00', '13:00:00', 'ACTIVE', '2025-11-07 16:46:50.188061', '2025-11-08 14:41:14.000000'),
('3fae5d71-066b-4446-a49c-46b21a7c4239', 'cd35a543-6a64-4754-b00c-41f9338e893b', 'FRIDAY', '10:00:00', '17:00:00', 'ACTIVE', '2025-11-04 17:41:05.327369', '2025-11-04 17:41:05.327369'),
('438491a1-cb22-4bf6-a49c-53b71cfe2473', '0d366b09-09f4-459c-b6fb-6f498101b9da', 'THURSDAY', '11:15:00', '23:15:00', 'ACTIVE', '2025-11-07 11:14:45.371600', '2025-11-07 11:14:45.371600'),
('4d24ced4-9b1b-43f2-a836-219cd46cf19c', '0adcca7c-2580-4193-9bf0-f2fffcccea46', 'SATURDAY', '16:15:00', '16:55:00', 'ACTIVE', '2025-11-06 16:15:57.877029', '2025-11-06 16:15:57.877029'),
('4f644b94-1f3e-4c87-9554-357d7d244ac4', '0d366b09-09f4-459c-b6fb-6f498101b9da', 'FRIDAY', '11:15:00', '23:15:00', 'ACTIVE', '2025-11-07 11:15:03.797844', '2025-11-07 11:15:03.797844'),
('5d7572fc-7eb5-489a-b62e-8e5c051fe1b5', '0adcca7c-2580-4193-9bf0-f2fffcccea46', 'FRIDAY', '06:05:00', '17:05:00', 'ACTIVE', '2025-11-06 17:05:46.065611', '2025-11-06 17:05:46.065611'),
('5dd54fad-4067-468b-9fef-5f34974f35f2', 'b3860506-cde6-48e8-8c91-0321935966ac', 'SUNDAY', '10:00:00', '15:00:00', 'ACTIVE', '2025-11-05 12:41:13.643757', '2025-11-05 12:41:13.643757'),
('5ff5dd04-c4f1-4b41-a80b-788273a8bae1', '0d366b09-09f4-459c-b6fb-6f498101b9da', 'SUNDAY', '11:15:00', '23:00:00', 'ACTIVE', '2025-11-07 11:15:35.553535', '2025-11-07 11:47:36.000000'),
('6617cf94-7204-4736-8428-b8b0826b5e5f', '098930d7-3a88-45aa-96a6-6f875560df27', 'WEDNESDAY', '09:00:00', '17:00:00', 'ACTIVE', '2025-11-07 16:48:20.002695', '2025-11-08 13:04:45.000000'),
('696d0a7b-d087-4b2c-b6ab-9d3656430624', 'b3860506-cde6-48e8-8c91-0321935966ac', 'SATURDAY', '10:00:00', '20:00:00', 'ACTIVE', '2025-11-05 15:52:55.736273', '2025-11-05 15:52:55.736273'),
('789d1220-58ee-4ed9-98d2-c3670f24de06', 'b3860506-cde6-48e8-8c91-0321935966ac', 'THURSDAY', '10:00:00', '20:00:00', 'ACTIVE', '2025-11-05 15:41:09.146350', '2025-11-05 15:41:09.146350'),
('7b7ee948-b7a8-424b-b0ec-217a208867cd', '098930d7-3a88-45aa-96a6-6f875560df27', 'SATURDAY', '09:00:00', '17:00:00', 'ACTIVE', '2025-11-07 16:48:26.928159', '2025-11-07 17:05:10.000000'),
('80c579be-294e-48fb-a28a-2a715152e875', '098930d7-3a88-45aa-96a6-6f875560df27', 'TUESDAY', '09:00:00', '17:00:00', 'ACTIVE', '2025-11-07 16:24:24.119311', '2025-11-08 13:04:44.000000'),
('8f696ec1-09ec-49b2-8a0d-ccdfe1360a4c', '0adcca7c-2580-4193-9bf0-f2fffcccea46', 'MONDAY', '09:00:00', '17:00:00', 'ACTIVE', '2025-11-06 16:06:29.256224', '2025-11-06 16:06:29.256224'),
('95f32b3b-708a-49df-a4fa-d3c9f3ecd0d7', '0adcca7c-2580-4193-9bf0-f2fffcccea46', 'THURSDAY', '05:05:00', '17:05:00', 'ACTIVE', '2025-11-06 17:05:30.021592', '2025-11-06 17:05:30.021592'),
('9a31de3c-6ee8-4146-b489-0a97b7f63d3a', '098930d7-3a88-45aa-96a6-6f875560df27', 'FRIDAY', '09:00:00', '17:00:00', 'ACTIVE', '2025-11-07 16:48:25.037033', '2025-11-08 13:04:48.000000'),
('9da4ab49-800e-4b37-8e18-a20a3eaebcb9', '098930d7-3a88-45aa-96a6-6f875560df27', 'SUNDAY', '11:00:00', '17:00:00', 'ACTIVE', '2025-11-07 16:48:28.903227', '2025-11-07 17:06:11.000000'),
('a1bcef1f-ca1d-4b74-823b-c4c446cf250e', '1cb5b4d5-7bb9-45b3-8a18-531776922141', 'MONDAY', '09:00:00', '17:00:00', 'ACTIVE', '2025-10-27 15:19:46.691117', '2025-10-27 15:19:46.691117'),
('a3be9341-6d27-4f8a-ae7c-2fa0c7f420d6', '0d366b09-09f4-459c-b6fb-6f498101b9da', 'SATURDAY', '11:15:00', '23:15:00', 'ACTIVE', '2025-11-07 11:15:12.816671', '2025-11-07 11:15:12.816671'),
('ae68ef3e-43c6-4f11-81c5-67eb347fe067', '0d366b09-09f4-459c-b6fb-6f498101b9da', 'MONDAY', '10:00:00', '11:00:00', 'ACTIVE', '2025-11-07 11:07:08.191864', '2025-11-07 11:54:24.000000'),
('b36a2ee8-dc93-44f2-b70d-d4d467f8c14d', '0adcca7c-2580-4193-9bf0-f2fffcccea46', 'SUNDAY', '20:05:00', '17:05:00', 'ACTIVE', '2025-11-06 17:06:04.637038', '2025-11-06 17:06:04.637038'),
('b45a48e4-f84b-4f4d-b9f9-6444fadc35f7', 'cd35a543-6a64-4754-b00c-41f9338e893b', 'TUESDAY', '10:00:00', '17:00:00', 'ACTIVE', '2025-11-04 17:40:28.954460', '2025-11-04 17:40:28.954460'),
('b81a61b6-a6fd-45fe-8a41-0c58343d903b', 'cd35a543-6a64-4754-b00c-41f9338e893b', 'SUNDAY', '10:00:00', '15:00:00', 'ACTIVE', '2025-11-04 17:41:42.735724', '2025-11-04 17:41:42.735724'),
('cddc9011-00aa-414c-8e14-eb0e037a395b', '0adcca7c-2580-4193-9bf0-f2fffcccea46', 'SUNDAY', '03:14:00', '04:14:00', 'ACTIVE', '2025-11-06 17:14:39.938123', '2025-11-06 17:14:39.938123'),
('e17f4160-61cd-4434-8987-d30c92ecc7a3', 'b3860506-cde6-48e8-8c91-0321935966ac', 'WEDNESDAY', '10:00:00', '20:00:00', 'ACTIVE', '2025-11-05 15:40:58.554770', '2025-11-05 15:40:58.554770'),
('e54e4a69-784c-4e2b-b42a-8e48414e2d50', 'b3860506-cde6-48e8-8c91-0321935966ac', 'TUESDAY', '10:00:00', '15:00:00', 'ACTIVE', '2025-11-05 15:40:38.217894', '2025-11-05 15:40:38.217894'),
('ee301f61-9a4e-4901-8c18-1aac19837a42', 'cd35a543-6a64-4754-b00c-41f9338e893b', 'THURSDAY', '10:00:00', '17:00:00', 'ACTIVE', '2025-11-04 17:40:57.204800', '2025-11-04 17:40:57.204800'),
('f57e629b-f3bc-4630-9d35-ff74e38603f2', 'cd35a543-6a64-4754-b00c-41f9338e893b', 'SATURDAY', '10:00:00', '17:00:00', 'ACTIVE', '2025-11-04 17:41:14.751774', '2025-11-04 17:41:14.751774'),
('fc295391-0804-4cd6-b8df-6c50e14fad28', 'b3860506-cde6-48e8-8c91-0321935966ac', 'FRIDAY', '10:00:00', '20:00:00', 'ACTIVE', '2025-11-05 15:52:47.135483', '2025-11-05 15:52:47.135483');

-- --------------------------------------------------------

--
-- Table structure for table `tutor_block`
--

CREATE TABLE `tutor_block` (
  `id` varchar(36) NOT NULL,
  `tutorId` varchar(255) NOT NULL,
  `blockDate` date NOT NULL,
  `startTime` time NOT NULL,
  `endTime` time NOT NULL,
  `reason` varchar(200) DEFAULT NULL,
  `status` enum('ACTIVE','DEACTIVE','DELETED','SUSPENDED','PENDING') NOT NULL DEFAULT 'ACTIVE',
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tutor_detail`
--

CREATE TABLE `tutor_detail` (
  `id` varchar(36) NOT NULL,
  `name` varchar(55) DEFAULT NULL,
  `gender` enum('MALE','FEMALE','OTHERS') DEFAULT NULL,
  `expertiseLevel` enum('Beginner','Intermediate','Exparts','Pro_Master') NOT NULL DEFAULT 'Beginner',
  `dob` date DEFAULT NULL,
  `document` text DEFAULT NULL,
  `documentName` text DEFAULT NULL,
  `bio` text DEFAULT NULL,
  `averageRating` decimal(3,2) NOT NULL DEFAULT 0.00,
  `totalRatings` int(11) NOT NULL DEFAULT 0,
  `hourlyRate` decimal(10,2) DEFAULT 0.00,
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `accountId` varchar(255) DEFAULT NULL,
  `cityId` int(11) DEFAULT NULL,
  `subjectId` varchar(255) DEFAULT NULL,
  `countryId` varchar(255) DEFAULT NULL,
  `languageId` varchar(255) DEFAULT NULL,
  `profileImage` text DEFAULT NULL,
  `profileImagePath` text DEFAULT NULL,
  `bufferTimeMinutes` int(11) NOT NULL DEFAULT 15 COMMENT 'Buffer time between sessions in minutes',
  `tutorId` varchar(20) DEFAULT NULL,
  `sessionDuration` int(11) NOT NULL DEFAULT 60 COMMENT 'Session duration in minutes',
  `qualificationId` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tutor_detail`
--

INSERT INTO `tutor_detail` (`id`, `name`, `gender`, `expertiseLevel`, `dob`, `document`, `documentName`, `bio`, `averageRating`, `totalRatings`, `hourlyRate`, `createdAt`, `updatedAt`, `accountId`, `cityId`, `subjectId`, `countryId`, `languageId`, `profileImage`, `profileImagePath`, `bufferTimeMinutes`, `tutorId`, `sessionDuration`, `qualificationId`) VALUES
('0a612a7a-3f5c-4746-ba02-0b13d576fba5', 'Jane Smith', 'FEMALE', 'Beginner', '1990-05-15', NULL, NULL, 'Experienced mathematics tutor with 5 years of teaching experience', 0.00, 0, 120.00, '2025-11-07 11:37:08.137066', '2025-11-07 17:09:58.000000', 'dcd76f33-4e07-475a-9f2a-20a818454c17', 3, '2b59d0d6-c0e5-4743-81f4-ceb8ce275fc1', '9a2d1b76-9e5b-47c0-8566-0ca41a4b5da4', NULL, NULL, NULL, 15, 'WIZ20251107/1005', 60, NULL),
('0ea512da-fcec-4f71-a9a9-0338acb5b280', 'Aritra kumar sharma', NULL, 'Beginner', NULL, 'http://192.168.1.13:6524/uploads\\TutorDetail\\documents\\d6e1ded164ed3915f18037ed12c5cb86.jpg', 'uploads\\TutorDetail\\documents\\d6e1ded164ed3915f18037ed12c5cb86.jpg', 'Hello this is the link to the subject ', 0.00, 0, 70.00, '2025-11-07 11:01:59.549762', '2025-11-07 16:27:55.000000', '0d366b09-09f4-459c-b6fb-6f498101b9da', 4, '2b59d0d6-c0e5-4743-81f4-ceb8ce275fc1', '9a2d1b76-9e5b-47c0-8566-0ca41a4b5da4', '9d1e1398-c8fc-4ba4-8114-0c506b85620b', 'http://192.168.1.13:6524/uploads\\TutorDetail\\profile\\82e10682fe8bf42498d6e73d395e2eca5.jpg', 'uploads\\TutorDetail\\profile\\82e10682fe8bf42498d6e73d395e2eca5.jpg', 15, 'WIZ20251107/1004', 60, NULL),
('2bd05dd4-d154-41f4-96da-064bb13bb179', 'Ak Sharma', NULL, 'Beginner', NULL, 'http://192.168.1.13:6524/uploads\\TutorDetail\\documents\\2fb6ae91b757357101042eaa7796d3baca.png', 'uploads\\TutorDetail\\documents\\2fb6ae91b757357101042eaa7796d3baca.png', 'I’m an experienced English tutor passionate about helping students improve their communication, grammar, and writing skills. I focus on building confidence through interactive lessons tailored to individual learning styles. Whether it’s spoken English, academic writing, or exam preparation, I aim to make learning engaging and effective.', 0.00, 0, 59.00, '2025-11-07 10:43:19.642445', '2025-11-08 15:43:00.000000', '098930d7-3a88-45aa-96a6-6f875560df27', NULL, '27c7063f-cf6f-4e57-bb98-9bd2abb0dce2', '9e55dede-9ded-4908-a859-779fdb2e89b7', '9d1e1398-c8fc-4ba4-8114-0c506b85620b', 'http://192.168.1.13:6524/uploads\\TutorDetail\\profile\\10dbf983386910d10230b9589c70db8665f.jpg', 'uploads\\TutorDetail\\profile\\10dbf983386910d10230b9589c70db8665f.jpg', 15, 'WIZ20251107/1003', 60, ''),
('435c62e9-f1e7-4ecc-9bac-ed8fb9c2b439', 'Akash kumar ', NULL, 'Beginner', NULL, 'http://192.168.1.13:6524/uploads\\TutorDetail\\documents\\bdc550a110da5ac7310b93985de912c8ab.png', 'uploads\\TutorDetail\\documents\\bdc550a110da5ac7310b93985de912c8ab.png', 'specalized in Maths', 0.00, 0, 20.00, '2025-11-07 10:17:37.394678', '2025-11-07 11:46:06.000000', '946b6983-63db-4e64-85a7-88478b703c77', NULL, NULL, NULL, NULL, 'http://192.168.1.13:6524/uploads\\TutorDetail\\profile\\b665478364bf1b5d3cef7faa57723b54.png', 'uploads\\TutorDetail\\profile\\b665478364bf1b5d3cef7faa57723b54.png', 15, 'WIZ20251107/1001', 60, NULL),
('48dad18f-2f4b-4e8a-bd2c-117f6a24a908', 'Akash kumar ', 'MALE', 'Beginner', '2025-11-04', 'http://192.168.1.13:6524/uploads\\TutorDetail\\documents\\c383b2c2977d1d724c96733b60e9bbde.png', 'uploads\\TutorDetail\\documents\\c383b2c2977d1d724c96733b60e9bbde.png', 'llll8l87lmm', 0.00, 0, 0.00, '2025-11-07 17:22:35.391970', '2025-11-07 17:39:28.000000', 'de5cefba-355a-4b1c-8b37-4955f5b20401', 3, NULL, '9a2d1b76-9e5b-47c0-8566-0ca41a4b5da4', NULL, 'http://192.168.1.13:6524/uploads\\TutorDetail\\profile\\dcb5a88b2e710f2e3df7b98cb36f08a03.png', 'uploads\\TutorDetail\\profile\\dcb5a88b2e710f2e3df7b98cb36f08a03.png', 15, 'WIZ20251107/1006', 60, '5b1af9ad-81b6-43b4-82a4-0c369e5990b2'),
('ff9ac9a6-5617-4d6d-b438-ad043fe72db3', 'test', NULL, 'Beginner', NULL, 'http://192.168.1.13:6524/uploads\\TutorDetail\\documents\\1ca357df2df7df2def88dca9f9efb5db.jpg', 'uploads\\TutorDetail\\documents\\1ca357df2df7df2def88dca9f9efb5db.jpg', NULL, 0.00, 0, 0.00, '2025-11-07 10:35:42.450536', '2025-11-07 10:40:00.000000', 'a3ccbba0-5710-4a61-88f0-e33a845f488c', NULL, NULL, NULL, NULL, NULL, NULL, 15, 'WIZ20251107/1002', 60, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tutor_schedule`
--

CREATE TABLE `tutor_schedule` (
  `id` varchar(36) NOT NULL,
  `tutorId` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `startTime` time NOT NULL,
  `endTime` time NOT NULL,
  `status` enum('AVAILABLE','BOOKED','BLOCKED') NOT NULL DEFAULT 'AVAILABLE',
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `unit`
--

CREATE TABLE `unit` (
  `id` varchar(36) NOT NULL,
  `name` varchar(200) NOT NULL,
  `description` text DEFAULT NULL,
  `imgUrl` varchar(200) DEFAULT NULL,
  `imgPath` varchar(200) DEFAULT NULL,
  `courseId` varchar(255) DEFAULT NULL,
  `status` enum('ACTIVE','DEACTIVE','DELETED','SUSPENDED','PENDING') NOT NULL DEFAULT 'PENDING',
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `unit`
--

INSERT INTO `unit` (`id`, `name`, `description`, `imgUrl`, `imgPath`, `courseId`, `status`, `createdAt`, `updatedAt`) VALUES
('545110de-a44d-41b7-b1b5-11b64476e982', 'Physics Adavanced', 'Basic Physics concepts and theorems', NULL, NULL, 'e755fd7c-784f-440c-af6a-235242790085', 'ACTIVE', '2025-11-07 17:25:09.938822', '2025-11-07 17:26:01.012154'),
('d7c1eead-5798-410b-ae97-b0bc1b8b499d', 'Variables and Data Types', 'Learn about JavaScript variables and data types', NULL, NULL, 'd5c73bdf-b2bc-4167-90d3-80415942296c', 'PENDING', '2025-11-03 15:58:35.508289', '2025-11-03 15:58:35.508289'),
('e0705637-1e9e-4b6a-be85-6e2f3ab9ef3f', 'Physics Fundamentals', 'Basic Physics concepts and theorems', NULL, NULL, 'e755fd7c-784f-440c-af6a-235242790085', 'ACTIVE', '2025-11-07 13:05:02.492769', '2025-11-07 13:08:19.000000');

-- --------------------------------------------------------

--
-- Table structure for table `user_detail`
--

CREATE TABLE `user_detail` (
  `id` varchar(36) NOT NULL,
  `name` varchar(55) DEFAULT NULL,
  `gender` enum('MALE','FEMALE','OTHERS') DEFAULT NULL,
  `englishLevel` enum('Beginner','Intermediate','Exparts','Pro_Master') DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `address` varchar(5000) DEFAULT NULL,
  `profile` text DEFAULT NULL,
  `profileName` text DEFAULT NULL,
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `accountId` varchar(255) DEFAULT NULL,
  `topicId` varchar(255) DEFAULT NULL,
  `goalId` varchar(255) DEFAULT NULL,
  `countryId` varchar(255) DEFAULT NULL,
  `languageId` varchar(255) DEFAULT NULL,
  `budgetId` varchar(255) DEFAULT NULL,
  `qualificationId` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_detail`
--

INSERT INTO `user_detail` (`id`, `name`, `gender`, `englishLevel`, `dob`, `address`, `profile`, `profileName`, `createdAt`, `updatedAt`, `accountId`, `topicId`, `goalId`, `countryId`, `languageId`, `budgetId`, `qualificationId`) VALUES
('2cd3a722-d146-445c-be73-2ff8e735484c', 'jane smith', 'MALE', NULL, '1981-02-11', NULL, 'http://192.168.1.13:6524/uploads\\UserDetail\\profile\\c4f1426dfadbdbbc7ab59db3b6109567b.jpg', 'uploads\\UserDetail\\profile\\c4f1426dfadbdbbc7ab59db3b6109567b.jpg', '2025-11-07 18:52:23.779995', '2025-11-08 10:38:44.000000', 'f2b58c5c-419b-47d6-a599-28e425a93059', NULL, NULL, NULL, NULL, NULL, NULL),
('43ff5c81-d737-4657-8e14-17e7f8827192', 'Akash kumar sharma', 'MALE', NULL, '2025-01-07', NULL, 'http://192.168.1.13:6524/uploads\\UserDetail\\profile\\cde1185106c73cc639c5c7959ff6c5c83.png', 'uploads\\UserDetail\\profile\\cde1185106c73cc639c5c7959ff6c5c83.png', '2025-11-07 11:39:45.355371', '2025-11-07 18:24:18.000000', 'c6001df9-4fa6-47ba-bd65-ec3554f925e7', NULL, NULL, NULL, NULL, NULL, NULL),
('9824bfa1-9232-4d3c-9d0a-69f258289c6f', 'Sekhar', 'MALE', 'Beginner', '2001-12-30', NULL, 'http://10.51.121.67:6524/uploads\\UserDetail\\profile\\a1f99d29be107f1d4a78b7ff1ac4e9b35.jpg', 'uploads\\UserDetail\\profile\\a1f99d29be107f1d4a78b7ff1ac4e9b35.jpg', '2025-11-07 18:11:31.378890', '2025-11-09 17:38:44.000000', 'b0411973-fe73-476f-a87a-70a3393aeea3', '28ce27f4-0a12-4770-ae5d-a1da1ac34b90', '22bf4b18-6666-4289-911c-7d16b85be52a', 'ff436dd8-b6bf-43c8-b4cb-4dcd5f90f1f7', NULL, '5eaa3932-1389-419e-b8fa-adf3cb97315c', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_permission`
--

CREATE TABLE `user_permission` (
  `id` int(11) NOT NULL,
  `accountId` varchar(255) DEFAULT NULL,
  `menuId` int(11) DEFAULT NULL,
  `permissionId` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_progress`
--

CREATE TABLE `user_progress` (
  `id` varchar(36) NOT NULL,
  `userId` varchar(255) NOT NULL,
  `courseId` varchar(255) DEFAULT NULL,
  `unitId` varchar(255) DEFAULT NULL,
  `studyMaterialId` varchar(255) DEFAULT NULL,
  `contentId` varchar(255) DEFAULT NULL,
  `contentType` varchar(50) NOT NULL,
  `isCompleted` tinyint(4) NOT NULL DEFAULT 0,
  `value` int(11) NOT NULL DEFAULT 0,
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_purchase`
--

CREATE TABLE `user_purchase` (
  `id` varchar(36) NOT NULL,
  `accountId` varchar(255) NOT NULL,
  `purchaseType` enum('COURSE','UNIT','STUDY_MATERIAL','SESSION') NOT NULL,
  `courseId` varchar(255) DEFAULT NULL,
  `videoLectureId` varchar(255) DEFAULT NULL,
  `studyMaterialId` varchar(255) DEFAULT NULL,
  `unitId` varchar(255) DEFAULT NULL,
  `merchantOrderId` varchar(100) DEFAULT NULL,
  `amount` decimal(10,2) NOT NULL,
  `originalAmount` decimal(10,2) DEFAULT NULL,
  `discountAmount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `couponCode` varchar(50) DEFAULT NULL,
  `transactionId` varchar(100) DEFAULT NULL,
  `paymentStatus` enum('PENDING','COMPLETED','ALL','REFUNDED','CANCELLED','FAILED') NOT NULL DEFAULT 'PENDING',
  `status` enum('ACTIVE','DEACTIVE','DELETED','SUSPENDED','PENDING') NOT NULL DEFAULT 'ACTIVE',
  `expiresAt` datetime DEFAULT NULL,
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `sessionId` varchar(255) DEFAULT NULL,
  `paymentIntentId` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_purchase`
--

INSERT INTO `user_purchase` (`id`, `accountId`, `purchaseType`, `courseId`, `videoLectureId`, `studyMaterialId`, `unitId`, `merchantOrderId`, `amount`, `originalAmount`, `discountAmount`, `couponCode`, `transactionId`, `paymentStatus`, `status`, `expiresAt`, `createdAt`, `updatedAt`, `sessionId`, `paymentIntentId`) VALUES
('02598c1a-9f30-40cf-9f36-0fd9b26771c2', 'f74147ad-e04f-4cb1-979f-2dd67523d948', 'SESSION', NULL, NULL, NULL, NULL, NULL, 150.00, NULL, 0.00, NULL, NULL, 'PENDING', 'ACTIVE', NULL, '2025-11-06 11:11:04.626159', '2025-11-06 11:11:04.000000', '98e7e9a8-d098-4cba-95c8-d91890db540c', NULL),
('0b662557-a854-4f51-bf33-2df24aca0acd', 'b0411973-fe73-476f-a87a-70a3393aeea3', 'SESSION', NULL, NULL, NULL, NULL, NULL, 70.00, NULL, 0.00, NULL, NULL, 'PENDING', 'ACTIVE', NULL, '2025-11-09 17:36:34.844254', '2025-11-09 17:36:34.000000', '6f758a25-715e-4547-9b08-e4426db5daee', NULL),
('102dea71-230d-4b5b-8b4a-a599e7d568ff', 'b0411973-fe73-476f-a87a-70a3393aeea3', 'SESSION', NULL, NULL, NULL, NULL, NULL, 70.00, NULL, 0.00, NULL, NULL, 'PENDING', 'ACTIVE', NULL, '2025-11-09 12:44:39.926073', '2025-11-09 12:44:39.000000', 'fd60504f-2ab1-4b85-9414-d24584c5112d', NULL),
('395a8800-cadc-4a47-a9f5-f11c4eedcd7c', 'b0411973-fe73-476f-a87a-70a3393aeea3', 'SESSION', NULL, NULL, NULL, NULL, NULL, 70.00, NULL, 0.00, NULL, NULL, 'PENDING', 'ACTIVE', NULL, '2025-11-09 12:35:14.980006', '2025-11-09 12:35:14.000000', '637170ed-983d-43ea-849c-7fb6e806a873', NULL),
('39f8aaae-b9b5-41c6-b3dc-01c7460ac1ae', 'b0411973-fe73-476f-a87a-70a3393aeea3', 'SESSION', NULL, NULL, NULL, NULL, NULL, 70.00, NULL, 0.00, NULL, NULL, 'PENDING', 'ACTIVE', NULL, '2025-11-09 12:59:24.984729', '2025-11-09 12:59:25.000000', 'f20e5a9d-52fe-48f8-b1c9-bfef2e944883', NULL),
('4cd091a3-6148-49b1-b819-f176e9678969', 'f74147ad-e04f-4cb1-979f-2dd67523d948', 'SESSION', NULL, NULL, NULL, NULL, NULL, 150.00, NULL, 0.00, NULL, NULL, 'PENDING', 'ACTIVE', NULL, '2025-11-05 17:24:44.193128', '2025-11-05 17:24:44.000000', 'a4067cde-685d-46c6-8984-753e24e0a986', NULL),
('645141ea-a9f7-4fc0-bd99-88443f6843a5', 'b0411973-fe73-476f-a87a-70a3393aeea3', 'SESSION', NULL, NULL, NULL, NULL, NULL, 70.00, NULL, 0.00, NULL, NULL, 'PENDING', 'ACTIVE', NULL, '2025-11-09 13:36:22.064652', '2025-11-09 13:36:22.000000', '970f84a4-26fc-41aa-ad03-72da7d63b87b', NULL),
('77dc2b56-c686-4955-83bb-68479e3bf049', 'b0411973-fe73-476f-a87a-70a3393aeea3', 'SESSION', NULL, NULL, NULL, NULL, NULL, 59.00, NULL, 0.00, NULL, NULL, 'PENDING', 'ACTIVE', NULL, '2025-11-09 12:46:48.093114', '2025-11-09 12:46:48.000000', 'a3d9cc8c-f307-41a1-8eb1-a5ec00bd5f1e', NULL),
('9a87ce90-59fe-49a7-8cb0-48ed219c3230', 'b0411973-fe73-476f-a87a-70a3393aeea3', 'SESSION', NULL, NULL, NULL, NULL, NULL, 70.00, NULL, 0.00, NULL, NULL, 'PENDING', 'ACTIVE', NULL, '2025-11-10 10:41:46.225430', '2025-11-10 10:41:46.000000', '7fd9a46b-0d69-406f-9a71-b2519525ac73', NULL),
('c41c47c5-2bbd-41cb-876d-938d8f504856', 'b0411973-fe73-476f-a87a-70a3393aeea3', 'SESSION', NULL, NULL, NULL, NULL, NULL, 70.00, NULL, 0.00, NULL, NULL, 'PENDING', 'ACTIVE', NULL, '2025-11-09 13:24:53.917749', '2025-11-09 13:24:53.000000', '360e40ce-cc79-4acb-bb12-30baa85bcda4', NULL),
('c5e52700-6520-49a8-a1f1-71898aa1ac30', 'b0411973-fe73-476f-a87a-70a3393aeea3', 'SESSION', NULL, NULL, NULL, NULL, NULL, 59.00, NULL, 0.00, NULL, NULL, 'PENDING', 'ACTIVE', NULL, '2025-11-09 17:17:45.277734', '2025-11-09 17:17:45.000000', '2f619f36-2a3e-495b-a695-fee840524234', NULL),
('df7561df-aadb-4d8f-931d-c26baa976d51', 'b0411973-fe73-476f-a87a-70a3393aeea3', 'SESSION', NULL, NULL, NULL, NULL, NULL, 70.00, NULL, 0.00, NULL, NULL, 'PENDING', 'ACTIVE', NULL, '2025-11-09 17:15:53.268229', '2025-11-09 17:15:53.000000', '704f1cc9-b9c3-440b-a8ac-b2b3c3b8fcb2', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `video_lecture`
--

CREATE TABLE `video_lecture` (
  `id` varchar(36) NOT NULL,
  `title` varchar(200) NOT NULL,
  `description` text DEFAULT NULL,
  `videoUrl` varchar(500) DEFAULT NULL,
  `thumbnailUrl` varchar(500) DEFAULT NULL,
  `thumbnailPath` varchar(500) DEFAULT NULL,
  `duration` int(11) NOT NULL DEFAULT 0,
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `unitId` varchar(255) NOT NULL,
  `videoPath` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `video_lecture`
--

INSERT INTO `video_lecture` (`id`, `title`, `description`, `videoUrl`, `thumbnailUrl`, `thumbnailPath`, `duration`, `createdAt`, `updatedAt`, `unitId`, `videoPath`) VALUES
('c63c5e94-b15c-49bb-bba4-7edb14d7a25d', 'Introduction to Newton Law', 'Learn about  Newton Law and their types', NULL, 'http://192.168.1.13:6524/uploads\\VideoLecture\\thumbnails\\ecec508e9f1b6cbe4eecbb57d3b5caf7.webp', 'uploads\\VideoLecture\\thumbnails\\ecec508e9f1b6cbe4eecbb57d3b5caf7.webp', 12, '2025-11-07 14:51:37.229064', '2025-11-07 14:51:37.229064', 'e0705637-1e9e-4b6a-be85-6e2f3ab9ef3f', NULL),
('dcda172c-04b1-4773-8fd9-1d53bb9bf436', 'Introduction to JavaScript Variables', 'Learn about JavaScript variables and their types', 'undefineduploads\\VideoLecture\\videos\\492a2a56d76b101fb988ac3b9bd07a95.png', NULL, NULL, 0, '2025-11-03 16:28:27.823331', '2025-11-03 16:28:27.823331', 'd7c1eead-5798-410b-ae97-b0bc1b8b499d', 'uploads\\VideoLecture\\videos\\492a2a56d76b101fb988ac3b9bd07a95.png');

-- --------------------------------------------------------

--
-- Table structure for table `walk_through`
--

CREATE TABLE `walk_through` (
  `id` varchar(36) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `subtitle` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `imagePath` text DEFAULT NULL,
  `status` enum('ACTIVE','DEACTIVE','DELETED','SUSPENDED','PENDING') NOT NULL DEFAULT 'PENDING',
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `walk_through`
--

INSERT INTO `walk_through` (`id`, `title`, `subtitle`, `image`, `imagePath`, `status`, `createdAt`, `updatedAt`) VALUES
('5aeeec06-8026-445b-8b0a-ff3a91fa9f93', 'Stay Connected', 'See updates and messages in real-time', 'http://10.187.154.67:6524/uploads\\WalkThrough\\b4eaaf0ba422926edba289668dcd1861.png', 'uploads\\WalkThrough\\b4eaaf0ba422926edba289668dcd1861.png', 'ACTIVE', '2025-10-24 13:11:08.192227', '2025-10-25 16:10:41.272628'),
('5bda6f93-00e6-4db4-99f8-653233f74faa', 'Lipsum generator: Lorem Ipsum - All the facts', 'See updates and messages in real-time', 'http://10.187.154.67:6524/uploads\\WalkThrough\\ae98106d76b1490b9e27fd16f7f385dd5.png', 'uploads\\WalkThrough\\ae98106d76b1490b9e27fd16f7f385dd5.png', 'ACTIVE', '2025-10-24 13:12:27.832799', '2025-10-25 16:10:48.950234'),
('72e212f4-169e-442e-9c96-9e645c655daf', 'Welcome', 'See updates and messages in real-time', 'http://10.187.154.67:6524/uploads\\WalkThrough\\2b8210225db1ae0abd08faaea30a926de.png', 'uploads\\WalkThrough\\2b8210225db1ae0abd08faaea30a926de.png', 'ACTIVE', '2025-10-24 13:11:54.551479', '2025-10-25 16:10:57.495373'),
('c4e65234-fb62-447a-943c-c9f1dcaf24b6', 'Lipsum generator: Lorem Ipsum - All the facts', 'See updates and messages in real-time', 'http://10.187.154.67:6524/uploads\\WalkThrough\\7753e46ac9810c817f363ae2e2b21fa41.png', 'uploads\\WalkThrough\\7753e46ac9810c817f363ae2e2b21fa41.png', 'PENDING', '2025-10-24 13:14:07.408098', '2025-10-25 16:11:04.558377');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `IDX_32e5f788d16a59ccf637a65a2d` (`invoiceNumber`);

--
-- Indexes for table `book_image`
--
ALTER TABLE `book_image`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `budget`
--
ALTER TABLE `budget`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_21a409f03c342bf8bb747c90161` (`accountId`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course_content`
--
ALTER TABLE `course_content`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faq`
--
ALTER TABLE `faq`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fixed_session`
--
ALTER TABLE `fixed_session`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `goal`
--
ALTER TABLE `goal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login_history`
--
ALTER TABLE `login_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_0b4c5e7e15b3d2866cae5ab794c` (`accountId`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `IDX_51b63874cdce0d6898a0b2150f` (`name`),
  ADD UNIQUE KEY `IDX_f29781ef48d93c714e1c592a12` (`title`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notice`
--
ALTER TABLE `notice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page`
--
ALTER TABLE `page`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permission`
--
ALTER TABLE `permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `IDX_240853a0c3353c25fb12434ad3` (`name`);

--
-- Indexes for table `qualification`
--
ALTER TABLE `qualification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_90e07e1f7bdccf618deb2738872` (`accountId`);

--
-- Indexes for table `rating_feedback`
--
ALTER TABLE `rating_feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `search_history`
--
ALTER TABLE `search_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `session`
--
ALTER TABLE `session`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff_detail`
--
ALTER TABLE `staff_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `study_material`
--
ALTER TABLE `study_material`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `topic`
--
ALTER TABLE `topic`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tutor_availability`
--
ALTER TABLE `tutor_availability`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tutor_block`
--
ALTER TABLE `tutor_block`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tutor_detail`
--
ALTER TABLE `tutor_detail`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `REL_345fc8b7836d46e07752da898c` (`accountId`),
  ADD UNIQUE KEY `IDX_b5ca2415b0dd56f2b51897d679` (`tutorId`);

--
-- Indexes for table `tutor_schedule`
--
ALTER TABLE `tutor_schedule`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `unit`
--
ALTER TABLE `unit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_detail`
--
ALTER TABLE `user_detail`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `REL_540d2de9f397b81fd7ee070d63` (`accountId`);

--
-- Indexes for table `user_permission`
--
ALTER TABLE `user_permission`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_progress`
--
ALTER TABLE `user_progress`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_purchase`
--
ALTER TABLE `user_purchase`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `video_lecture`
--
ALTER TABLE `video_lecture`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `walk_through`
--
ALTER TABLE `walk_through`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `login_history`
--
ALTER TABLE `login_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `page`
--
ALTER TABLE `page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `permission`
--
ALTER TABLE `permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_permission`
--
ALTER TABLE `user_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD CONSTRAINT `FK_21a409f03c342bf8bb747c90161` FOREIGN KEY (`accountId`) REFERENCES `account` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `login_history`
--
ALTER TABLE `login_history`
  ADD CONSTRAINT `FK_0b4c5e7e15b3d2866cae5ab794c` FOREIGN KEY (`accountId`) REFERENCES `account` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `rating`
--
ALTER TABLE `rating`
  ADD CONSTRAINT `FK_90e07e1f7bdccf618deb2738872` FOREIGN KEY (`accountId`) REFERENCES `account` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
