-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 07, 2025 at 04:44 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `netflix_clone`
--

-- --------------------------------------------------------

--
-- Table structure for table `audio_languages`
--

CREATE TABLE `audio_languages` (
  `id` int(11) NOT NULL,
  `content_id` int(11) DEFAULT NULL,
  `language` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `audio_languages`
--

INSERT INTO `audio_languages` (`id`, `content_id`, `language`) VALUES
(1, 1, 'English'),
(2, 1, 'Spanish'),
(3, 2, 'English'),
(4, 3, 'Hindi'),
(5, 4, 'English'),
(6, 5, 'French'),
(7, 6, 'English'),
(8, 7, 'Tamil'),
(9, 8, 'English'),
(10, 9, 'Spanish'),
(11, 10, 'Hindi'),
(12, 11, 'English'),
(13, 12, 'English'),
(14, 13, 'Bengali'),
(15, 14, 'Kannada'),
(16, 15, 'English'),
(17, 16, 'Malayalam'),
(18, 17, 'English'),
(19, 18, 'English'),
(20, 19, 'Hindi'),
(21, 20, 'Telugu'),
(22, 21, 'English'),
(23, 22, 'English'),
(24, 23, 'Punjabi'),
(25, 24, 'English'),
(26, 25, 'Marathi');

-- --------------------------------------------------------

--
-- Table structure for table `content`
--

CREATE TABLE `content` (
  `content_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `type` enum('movie','show') NOT NULL,
  `genre_id` int(11) DEFAULT NULL,
  `release_year` year(4) DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `episodes` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `thumbnail_url` varchar(255) DEFAULT NULL,
  `is_featured` tinyint(1) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `content`
--

INSERT INTO `content` (`content_id`, `title`, `type`, `genre_id`, `release_year`, `duration`, `episodes`, `description`, `thumbnail_url`, `is_featured`, `created_at`, `updated_at`) VALUES
(26, 'Echoes', 'movie', 1, '2021', 95, NULL, 'Drama mystery film.', 'echo.jpg', 1, '2025-06-17 16:28:22', '2025-06-17 16:28:22'),
(27, 'Speed Rush', 'movie', 4, '2020', 110, NULL, 'High speed thriller.', 'rush.jpg', 0, '2025-06-17 16:28:22', '2025-06-17 16:28:22'),
(28, 'Quantum Dreams', 'movie', 5, '2022', 100, NULL, 'Sci-Fi time travel.', 'quantum.jpg', 1, '2025-06-17 16:28:22', '2025-06-17 16:28:22'),
(29, 'Haunted Night', 'movie', 3, '2023', 90, NULL, 'Thrilling horror night.', 'haunted.jpg', 1, '2025-06-17 16:28:22', '2025-06-17 16:28:22'),
(30, 'Justice League: Reloaded', 'movie', 4, '2021', 150, NULL, 'Action-packed superhero.', 'jl.jpg', 1, '2025-06-17 16:28:22', '2025-06-17 16:28:22'),
(31, 'Star Dust', 'movie', 5, '2022', 125, NULL, 'Space fantasy adventure.', 'sd.jpg', 0, '2025-06-17 16:28:22', '2025-06-17 16:28:22'),
(32, 'Village Story', 'movie', 1, '2019', 105, NULL, 'Heart-touching drama.', 'vs.jpg', 0, '2025-06-17 16:28:22', '2025-06-17 16:28:22'),
(33, 'Lol Club', 'movie', 2, '2021', 98, NULL, 'Comedy riot.', 'lol.jpg', 0, '2025-06-17 16:28:22', '2025-06-17 16:28:22'),
(34, 'Final Clue', 'movie', 3, '2020', 103, NULL, 'Intense thriller.', 'clue.jpg', 0, '2025-06-17 16:28:22', '2025-06-17 16:28:22'),
(35, 'Behind Bars', 'movie', 1, '2021', 120, NULL, 'Prison drama.', 'bars.jpg', 0, '2025-06-17 16:28:22', '2025-06-17 16:28:22'),
(36, 'Road Rage', 'movie', 4, '2022', 99, NULL, 'Fast-paced action.', 'rage.jpg', 0, '2025-06-17 16:28:22', '2025-06-17 16:28:22'),
(37, 'Alien Signal', 'movie', 5, '2023', 115, NULL, 'Alien mystery.', 'alien.jpg', 1, '2025-06-17 16:28:22', '2025-06-17 16:28:22'),
(38, 'Giggles Galore', 'movie', 2, '2020', 101, NULL, 'Comedy delight.', 'giggles.jpg', 0, '2025-06-17 16:28:22', '2025-06-17 16:28:22'),
(39, 'Detective Chronicles', 'movie', 3, '2021', 119, NULL, 'Crime and mystery.', 'dc.jpg', 0, '2025-06-17 16:28:22', '2025-06-17 16:28:22'),
(40, 'New Hope', 'movie', 1, '2024', 130, NULL, 'Emotional drama.', 'hope.jpg', 1, '2025-06-17 16:28:22', '2025-06-17 16:28:22'),
(41, 'Science Squad', 'show', 5, '2021', NULL, 8, 'Team of sci-fi nerds.', 'squad.jpg', 0, '2025-06-17 16:28:22', '2025-06-17 16:28:22'),
(42, 'Comedy Nights', 'show', 2, '2022', NULL, 10, 'Stand-up laughter.', 'cn.jpg', 0, '2025-06-17 16:28:22', '2025-06-17 16:28:22'),
(43, 'Haunted City', 'show', 3, '2020', NULL, 6, 'Creepy series.', 'hc.jpg', 1, '2025-06-17 16:28:22', '2025-06-17 16:28:22'),
(44, 'The Mission', 'show', 4, '2023', NULL, 12, 'Covert operations.', 'mission.jpg', 0, '2025-06-17 16:28:22', '2025-06-17 16:28:22'),
(45, 'Life Lines', 'show', 1, '2022', NULL, 9, 'Dramatic hospital life.', 'lifelines.jpg', 0, '2025-06-17 16:28:22', '2025-06-17 16:28:22'),
(46, 'Quantum Code', 'show', 5, '2023', NULL, 7, 'Tech-savvy crew.', 'qcode.jpg', 1, '2025-06-17 16:28:22', '2025-06-17 16:28:22'),
(47, 'Family Circus', 'show', 2, '2021', NULL, 10, 'Comedy sitcom.', 'fc.jpg', 0, '2025-06-17 16:28:22', '2025-06-17 16:28:22'),
(48, 'Edge of Crime', 'show', 3, '2021', NULL, 8, 'Criminal investigations.', 'eoc.jpg', 1, '2025-06-17 16:28:22', '2025-06-17 16:28:22'),
(49, 'Street Fighters', 'show', 4, '2022', NULL, 10, 'Urban action scenes.', 'sf.jpg', 1, '2025-06-17 16:28:22', '2025-06-17 16:28:22'),
(50, 'Generations', 'show', 1, '2020', NULL, 6, 'Family drama.', 'gen.jpg', 0, '2025-06-17 16:28:22', '2025-06-17 16:28:22');

-- --------------------------------------------------------

--
-- Table structure for table `genres`
--

CREATE TABLE `genres` (
  `genre_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `genres`
--

INSERT INTO `genres` (`genre_id`, `name`) VALUES
(1, 'Drama'),
(2, 'Comedy'),
(3, 'Thriller'),
(4, 'Action'),
(5, 'Sci-Fi'),
(6, 'Documentary'),
(7, 'Horror'),
(8, 'Fantasy'),
(9, 'Crime'),
(10, 'Romance');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `payment_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `method_id` int(11) DEFAULT NULL,
  `payment_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`payment_id`, `user_id`, `amount`, `method_id`, `payment_date`) VALUES
(1, 1, 199.00, 1, '2025-06-01'),
(2, 2, 499.00, 2, '2025-06-05'),
(3, 3, 799.00, 3, '2025-06-10');

-- --------------------------------------------------------

--
-- Table structure for table `payment_methods`
--

CREATE TABLE `payment_methods` (
  `method_id` int(11) NOT NULL,
  `method_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payment_methods`
--

INSERT INTO `payment_methods` (`method_id`, `method_name`) VALUES
(1, 'Credit Card'),
(2, 'Debit Card'),
(3, 'Net Banking'),
(4, 'UPI'),
(5, 'Wallet');

-- --------------------------------------------------------

--
-- Table structure for table `plans`
--

CREATE TABLE `plans` (
  `plan_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `resolution` enum('SD','HD','Full HD','4K') DEFAULT 'HD',
  `devices_allowed` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `plans`
--

INSERT INTO `plans` (`plan_id`, `name`, `price`, `resolution`, `devices_allowed`) VALUES
(1, 'Basic', 199.00, 'SD', 1),
(2, 'Standard', 499.00, 'HD', 2),
(3, 'Premium', 799.00, 'Full HD', 4),
(4, 'Ultra HD', 999.00, '4K', 5);

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `profile_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `profile_name` varchar(50) NOT NULL,
  `age` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `recommendations`
--

CREATE TABLE `recommendations` (
  `rec_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `content_id` int(11) DEFAULT NULL,
  `reason` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `recommendations`
--

INSERT INTO `recommendations` (`rec_id`, `user_id`, `content_id`, `reason`, `created_at`) VALUES
(1, 2, 6, 'Because you watched action thrillers', '2025-06-17 16:36:21'),
(2, 3, 5, 'Based on your interests in superhero content', '2025-06-17 16:36:21'),
(3, 4, 8, 'Popular in your area', '2025-06-17 16:36:21'),
(4, 5, 7, 'Critically acclaimed', '2025-06-17 16:36:21'),
(5, 6, 9, 'New in your favorite genre', '2025-06-17 16:36:21');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `review_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `content_id` int(11) DEFAULT NULL,
  `rating` int(11) DEFAULT NULL CHECK (`rating` between 1 and 5),
  `comment` text DEFAULT NULL,
  `review_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`review_id`, `user_id`, `content_id`, `rating`, `comment`, `review_date`) VALUES
(1, 1, 1, 5, 'Loved the mystery!', '2025-06-17 16:28:23'),
(2, 2, 2, 4, 'High action!', '2025-06-17 16:28:23'),
(3, 3, 3, 3, 'It was okay.', '2025-06-17 16:28:23'),
(4, 4, 4, 2, 'Too scary for me.', '2025-06-17 16:28:23'),
(5, 5, 5, 1, 'Not my type.', '2025-06-17 16:28:23'),
(6, 6, 6, 4, 'Great visual effects.', '2025-06-17 16:28:23'),
(7, 7, 7, 5, 'Beautiful storytelling.', '2025-06-17 16:28:23'),
(8, 8, 8, 2, 'Didn’t laugh much.', '2025-06-17 16:28:23'),
(9, 9, 9, 3, 'Average thriller.', '2025-06-17 16:28:23'),
(10, 10, 10, 5, 'Intense and gripping.', '2025-06-17 16:28:23'),
(11, 11, 11, 4, 'Fast and fun.', '2025-06-17 16:28:23'),
(12, 12, 12, 5, 'Loved the sci-fi.', '2025-06-17 16:28:23'),
(13, 13, 13, 1, 'Not funny.', '2025-06-17 16:28:23'),
(14, 14, 14, 3, 'Good plot.', '2025-06-17 16:28:23'),
(15, 15, 15, 4, 'Heartwarming.', '2025-06-17 16:28:23'),
(16, 16, 16, 5, 'Best sci-fi show ever.', '2025-06-17 16:28:23'),
(17, 17, 17, 2, 'Repetitive.', '2025-06-17 16:28:23'),
(18, 18, 18, 3, 'So-so horror.', '2025-06-17 16:28:23'),
(19, 19, 19, 5, 'Adrenaline rush.', '2025-06-17 16:28:23'),
(20, 20, 20, 4, 'Realistic hospital scenes.', '2025-06-17 16:28:23'),
(21, 21, 6, 4, 'Nice effects and concept.', '2025-06-17 16:36:21'),
(22, 22, 7, 5, 'Outstanding performance.', '2025-06-17 16:36:21'),
(23, 23, 8, 2, 'Could be better.', '2025-06-17 16:36:21'),
(24, 24, 9, 3, 'Average movie.', '2025-06-17 16:36:21'),
(25, 25, 10, 4, 'Well made and engaging.', '2025-06-17 16:36:21');

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `subscription_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `plan_id` int(11) DEFAULT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subscriptions`
--

INSERT INTO `subscriptions` (`subscription_id`, `user_id`, `plan_id`, `start_date`, `end_date`) VALUES
(1, 1, 1, '2025-06-01', '2025-07-01'),
(2, 2, 2, '2025-06-05', '2025-07-05'),
(3, 3, 3, '2025-06-10', '2025-07-10');

-- --------------------------------------------------------

--
-- Table structure for table `upcoming_content`
--

CREATE TABLE `upcoming_content` (
  `upcoming_id` int(11) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `type` enum('movie','show') DEFAULT NULL,
  `genre_id` int(11) DEFAULT NULL,
  `release_date` date DEFAULT NULL,
  `description` text DEFAULT NULL,
  `thumbnail_url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `upcoming_content`
--

INSERT INTO `upcoming_content` (`upcoming_id`, `title`, `type`, `genre_id`, `release_date`, `description`, `thumbnail_url`) VALUES
(1, 'Deep Space', 'movie', 5, '2025-07-15', 'Sci-fi galaxy mission.', 'deep.jpg'),
(2, 'Next Laugh', 'show', 2, '2025-08-01', 'Comedy contest show.', 'laugh.jpg'),
(3, 'Hidden Truth', 'movie', 3, '2025-07-20', 'Mystery thriller film.', 'truth.jpg'),
(4, 'Village Warrior', 'movie', 4, '2025-08-10', 'Historic war drama.', 'warrior.jpg'),
(5, 'Echo Return', 'show', 1, '2025-07-25', 'Drama sequel show.', 'return.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `phone_number` varchar(15) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `name`, `email`, `password`, `phone_number`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Alice', 'alice@example.com', 'pass1', '80245 91736', 1, '2025-06-17 16:25:33', '2025-06-17 16:25:33'),
(2, 'Bob', 'bob@example.com', 'pass2', '91732 80549', 1, '2025-06-17 16:25:33', '2025-06-17 16:25:33'),
(3, 'Charlie', 'charlie@example.com', 'pass3', '88901 23456', 1, '2025-06-17 16:25:33', '2025-06-17 16:25:33'),
(4, 'David', 'david@example.com', 'pass4', '95432 10987', 1, '2025-06-17 16:25:33', '2025-06-17 16:25:33'),
(5, 'Eva', 'eva@example.com', 'pass5', '87654 32109', 1, '2025-06-17 16:25:33', '2025-06-17 16:25:33'),
(6, 'Frank', 'frank@example.com', 'pass6', '90123 45678', 1, '2025-06-17 16:25:33', '2025-06-17 16:25:33'),
(7, 'Grace', 'grace@example.com', 'pass7', '83456 78901', 1, '2025-06-17 16:25:33', '2025-06-17 16:25:33'),
(8, 'Hank', 'hank@example.com', 'pass8', '99876 54321', 1, '2025-06-17 16:25:33', '2025-06-17 16:25:33'),
(9, 'Ivy', 'ivy@example.com', 'pass9', '81234 56789', 1, '2025-06-17 16:25:33', '2025-06-17 16:25:33'),
(10, 'Jake', 'jake@example.com', 'pass10', '96789 01234', 1, '2025-06-17 16:25:33', '2025-06-17 16:25:33'),
(11, 'Kara', 'kara@example.com', 'pass11', '84567 89012', 1, '2025-06-17 16:25:33', '2025-06-17 16:25:33'),
(12, 'Leo', 'leo@example.com', 'pass12', '92345 67890', 1, '2025-06-17 16:25:33', '2025-06-17 16:25:33'),
(13, 'Mona', 'mona@example.com', 'pass13', '85678 90123', 1, '2025-06-17 16:25:33', '2025-06-17 16:25:33'),
(14, 'Nate', 'nate@example.com', 'pass14', '97890 12345', 1, '2025-06-17 16:25:33', '2025-06-17 16:25:33'),
(15, 'Olive', 'olive@example.com', 'pass15', '80123 45678', 1, '2025-06-17 16:25:33', '2025-06-17 16:25:33'),
(16, 'Paul', 'paul@example.com', 'pass16', '93456 78901', 1, '2025-06-17 16:25:33', '2025-06-17 16:25:33'),
(17, 'Quinn', 'quinn@example.com', 'pass17', '86789 01234', 1, '2025-06-17 16:25:33', '2025-06-17 16:25:33'),
(18, 'Rita', 'rita@example.com', 'pass18', '94567 89012', 1, '2025-06-17 16:25:33', '2025-06-17 16:25:33'),
(19, 'Steve', 'steve@example.com', 'pass19', '89012 34567', 1, '2025-06-17 16:25:33', '2025-06-17 16:25:33'),
(20, 'Tina', 'tina@example.com', 'pass20', '98765 43210', 1, '2025-06-17 16:25:33', '2025-06-17 16:25:33'),
(61, 'Alice', 'alice@email.com', 'pass1', '80245 91736', 1, '2025-06-17 16:28:22', '2025-06-17 16:28:22'),
(62, 'Bob', 'bob@email.com', 'pass2', '91732 80549', 1, '2025-06-17 16:28:22', '2025-06-17 16:28:22'),
(63, 'Charlie', 'charlie@email.com', 'pass3', '88901 23456', 1, '2025-06-17 16:28:22', '2025-06-17 16:28:22'),
(64, 'David', 'david@email.com', 'pass4', '95432 10987', 1, '2025-06-17 16:28:22', '2025-06-17 16:28:22'),
(65, 'Eva', 'eva@email.com', 'pass5', '87654 32109', 1, '2025-06-17 16:28:22', '2025-06-17 16:28:22'),
(66, 'Frank', 'frank@email.com', 'pass6', '90123 45678', 1, '2025-06-17 16:28:22', '2025-06-17 16:28:22'),
(67, 'Grace', 'grace@email.com', 'pass7', '83456 78901', 1, '2025-06-17 16:28:22', '2025-06-17 16:28:22'),
(68, 'Hank', 'hank@email.com', 'pass8', '99876 54321', 1, '2025-06-17 16:28:22', '2025-06-17 16:28:22'),
(69, 'Ivy', 'ivy@email.com', 'pass9', '81234 56789', 1, '2025-06-17 16:28:22', '2025-06-17 16:28:22'),
(70, 'Jake', 'jake@email.com', 'pass10', '96789 01234', 1, '2025-06-17 16:28:22', '2025-06-17 16:28:22'),
(71, 'Kara', 'kara@email.com', 'pass11', '84567 89012', 1, '2025-06-17 16:28:22', '2025-06-17 16:28:22'),
(72, 'Leo', 'leo@email.com', 'pass12', '92345 67890', 1, '2025-06-17 16:28:22', '2025-06-17 16:28:22'),
(73, 'Mona', 'mona@email.com', 'pass13', '85678 90123', 1, '2025-06-17 16:28:22', '2025-06-17 16:28:22'),
(74, 'Nate', 'nate@email.com', 'pass14', '97890 12345', 1, '2025-06-17 16:28:22', '2025-06-17 16:28:22'),
(75, 'Olive', 'olive@email.com', 'pass15', '80123 45678', 1, '2025-06-17 16:28:22', '2025-06-17 16:28:22'),
(76, 'Paul', 'paul@email.com', 'pass16', '93456 78901', 1, '2025-06-17 16:28:22', '2025-06-17 16:28:22'),
(77, 'Quinn', 'quinn@email.com', 'pass17', '86789 01234', 1, '2025-06-17 16:28:22', '2025-06-17 16:28:22'),
(78, 'Rita', 'rita@email.com', 'pass18', '94567 89012', 1, '2025-06-17 16:28:22', '2025-06-17 16:28:22'),
(79, 'Steve', 'steve@email.com', 'pass19', '89012 34567', 1, '2025-06-17 16:28:22', '2025-06-17 16:28:22'),
(80, 'Tina', 'tina@email.com', 'pass20', '98765 43210', 1, '2025-06-17 16:28:22', '2025-06-17 16:28:22'),
(81, 'Uma', '[uma@example.com](mailto:uma@example.com)', 'pass21', '2223334444', 1, '2025-06-17 16:35:16', '2025-06-17 16:35:16'),
(82, 'Vikram', '[vikram@example.com](mailto:vikram@example.com)', 'pass22', '3334445555', 1, '2025-06-17 16:35:16', '2025-06-17 16:35:16'),
(83, 'Wendy', '[wendy@example.com](mailto:wendy@example.com)', 'pass23', '4445556666', 1, '2025-06-17 16:35:16', '2025-06-17 16:35:16'),
(84, 'Xavier', '[xavier@example.com](mailto:xavier@example.com)', 'pass24', '5556667777', 1, '2025-06-17 16:35:16', '2025-06-17 16:35:16'),
(85, 'Yara', '[yara@example.com](mailto:yara@example.com)', 'pass25', '6667778888', 1, '2025-06-17 16:35:16', '2025-06-17 16:35:16'),
(91, 'Uma', '[uma@email.com](mailto:uma@email.com)', 'pass21', '2223334444', 1, '2025-06-17 16:36:21', '2025-06-17 16:36:21'),
(92, 'Vikram', '[vikram@email.com](mailto:vikram@email.com)', 'pass22', '3334445555', 1, '2025-06-17 16:36:21', '2025-06-17 16:36:21'),
(93, 'Wendy', '[wendy@email.com](mailto:wendy@email.com)', 'pass23', '4445556666', 1, '2025-06-17 16:36:21', '2025-06-17 16:36:21'),
(94, 'Xavier', '[xavier@email.com](mailto:xavier@email.com)', 'pass24', '5556667777', 1, '2025-06-17 16:36:21', '2025-06-17 16:36:21'),
(95, 'Yara', '[yara@email.com](mailto:yara@email.com)', 'pass25', '6667778888', 1, '2025-06-17 16:36:21', '2025-06-17 16:36:21');

-- --------------------------------------------------------

--
-- Table structure for table `viewing_history`
--

CREATE TABLE `viewing_history` (
  `history_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `content_id` int(11) DEFAULT NULL,
  `watch_date` date DEFAULT NULL,
  `watch_duration` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `viewing_history`
--

INSERT INTO `viewing_history` (`history_id`, `user_id`, `content_id`, `watch_date`, `watch_duration`) VALUES
(8, 4, 5, '2025-06-15', 120),
(9, 5, 3, '2025-06-15', 95),
(10, 6, 7, '2025-06-14', 110),
(11, 7, 1, '2025-06-13', 45),
(12, 8, 4, '2025-06-12', 100),
(13, 9, 6, '2025-06-10', 88),
(14, 10, 9, '2025-06-09', 105);

-- --------------------------------------------------------

--
-- Table structure for table `watchlist`
--

CREATE TABLE `watchlist` (
  `watchlist_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `content_id` int(11) DEFAULT NULL,
  `added_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `watchlist`
--

INSERT INTO `watchlist` (`watchlist_id`, `user_id`, `content_id`, `added_at`) VALUES
(1, 3, 4, '2025-06-17 16:36:21'),
(2, 4, 6, '2025-06-17 16:36:21'),
(3, 5, 10, '2025-06-17 16:36:21'),
(4, 6, 2, '2025-06-17 16:36:21'),
(5, 7, 5, '2025-06-17 16:36:21');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `audio_languages`
--
ALTER TABLE `audio_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `content_id` (`content_id`);

--
-- Indexes for table `content`
--
ALTER TABLE `content`
  ADD PRIMARY KEY (`content_id`),
  ADD KEY `genre_id` (`genre_id`);

--
-- Indexes for table `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`genre_id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`payment_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `method_id` (`method_id`);

--
-- Indexes for table `payment_methods`
--
ALTER TABLE `payment_methods`
  ADD PRIMARY KEY (`method_id`),
  ADD UNIQUE KEY `method_name` (`method_name`);

--
-- Indexes for table `plans`
--
ALTER TABLE `plans`
  ADD PRIMARY KEY (`plan_id`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`profile_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `recommendations`
--
ALTER TABLE `recommendations`
  ADD PRIMARY KEY (`rec_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `content_id` (`content_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`review_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `content_id` (`content_id`);

--
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`subscription_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `plan_id` (`plan_id`);

--
-- Indexes for table `upcoming_content`
--
ALTER TABLE `upcoming_content`
  ADD PRIMARY KEY (`upcoming_id`),
  ADD KEY `genre_id` (`genre_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `viewing_history`
--
ALTER TABLE `viewing_history`
  ADD PRIMARY KEY (`history_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `content_id` (`content_id`);

--
-- Indexes for table `watchlist`
--
ALTER TABLE `watchlist`
  ADD PRIMARY KEY (`watchlist_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `content_id` (`content_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `audio_languages`
--
ALTER TABLE `audio_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `content`
--
ALTER TABLE `content`
  MODIFY `content_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `genres`
--
ALTER TABLE `genres`
  MODIFY `genre_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `payment_methods`
--
ALTER TABLE `payment_methods`
  MODIFY `method_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `plans`
--
ALTER TABLE `plans`
  MODIFY `plan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `profile_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `recommendations`
--
ALTER TABLE `recommendations`
  MODIFY `rec_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `subscription_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `upcoming_content`
--
ALTER TABLE `upcoming_content`
  MODIFY `upcoming_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT for table `viewing_history`
--
ALTER TABLE `viewing_history`
  MODIFY `history_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `watchlist`
--
ALTER TABLE `watchlist`
  MODIFY `watchlist_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `audio_languages`
--
ALTER TABLE `audio_languages`
  ADD CONSTRAINT `audio_languages_ibfk_1` FOREIGN KEY (`content_id`) REFERENCES `content` (`content_id`);

--
-- Constraints for table `content`
--
ALTER TABLE `content`
  ADD CONSTRAINT `content_ibfk_1` FOREIGN KEY (`genre_id`) REFERENCES `genres` (`genre_id`);

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `payments_ibfk_2` FOREIGN KEY (`method_id`) REFERENCES `payment_methods` (`method_id`);

--
-- Constraints for table `profiles`
--
ALTER TABLE `profiles`
  ADD CONSTRAINT `profiles_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `recommendations`
--
ALTER TABLE `recommendations`
  ADD CONSTRAINT `recommendations_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `recommendations_ibfk_2` FOREIGN KEY (`content_id`) REFERENCES `content` (`content_id`);

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `reviews_ibfk_2` FOREIGN KEY (`content_id`) REFERENCES `content` (`content_id`);

--
-- Constraints for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD CONSTRAINT `subscriptions_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `subscriptions_ibfk_2` FOREIGN KEY (`plan_id`) REFERENCES `plans` (`plan_id`);

--
-- Constraints for table `upcoming_content`
--
ALTER TABLE `upcoming_content`
  ADD CONSTRAINT `upcoming_content_ibfk_1` FOREIGN KEY (`genre_id`) REFERENCES `genres` (`genre_id`);

--
-- Constraints for table `viewing_history`
--
ALTER TABLE `viewing_history`
  ADD CONSTRAINT `viewing_history_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `viewing_history_ibfk_2` FOREIGN KEY (`content_id`) REFERENCES `content` (`content_id`);

--
-- Constraints for table `watchlist`
--
ALTER TABLE `watchlist`
  ADD CONSTRAINT `watchlist_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `watchlist_ibfk_2` FOREIGN KEY (`content_id`) REFERENCES `content` (`content_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
