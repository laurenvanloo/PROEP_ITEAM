-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 26, 2021 at 07:51 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `proep`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`name`, `created_at`, `updated_at`) VALUES
('Business', NULL, NULL),
('Embedded System', NULL, NULL),
('Research', NULL, NULL),
('Software', NULL, NULL),
('Software and Business', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `endorsement`
--

CREATE TABLE `endorsement` (
  `studentId` bigint(20) UNSIGNED NOT NULL,
  `skillId` bigint(20) UNSIGNED NOT NULL,
  `endorserId` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(4, '2020_11_05_102544_create_category_table', 1),
(5, '2020_11_06_140005_create_student_tables', 1),
(6, '2020_11_06_140006_create_project_tables', 1),
(7, '2020_11_06_140052_create_role_tables', 1),
(8, '2020_11_06_140208_create_spot_tables', 1),
(9, '2020_11_06_140244_create_skill_tables', 1),
(10, '2020_11_06_140329_create_request_tables', 1),
(11, '2020_11_06_140532_create_student_skill_associate_tables', 1),
(12, '2020_11_06_140923_create_skill_spot_associate_tables', 1),
(13, '2020_12_11_225215_create_endorsement_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ownerId` bigint(20) UNSIGNED NOT NULL,
  `startDate` datetime NOT NULL,
  `endDate` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`id`, `name`, `description`, `category`, `ownerId`, `startDate`, `endDate`, `created_at`, `updated_at`) VALUES
(1, 'ProEP student networking', 'Hopes and dreams were dashed that day. It should have been expected, but it still came as a shock. The warning signs had been ignored in favor of the possibility, however remote, that it could actually happen.', 'Software', 11, '2020-02-08 11:37:09', '2020-07-06 11:37:09', NULL, NULL),
(2, 'ProP Music Festival', 'Hopes and dreams were dashed that day. It should have been expected, but it still came as a shock. The warning signs had been ignored in favor of the possibility, however remote, that it could actually happen.', 'Software', 2, '2020-01-30 15:28:22', '2020-07-30 15:28:22', NULL, NULL),
(3, 'ProCP Airport baggage simulation', 'Hopes and dreams were dashed that day. It should have been expected, but it still came as a shock. The warning signs had been ignored in favor of the possibility, however remote, that it could actually happen.', 'Software', 14, '2019-09-08 15:28:22', '2020-02-01 15:28:22', NULL, NULL),
(4, 'ProCP traffic simulation', 'Hopes and dreams were dashed that day. It should have been expected, but it still came as a shock. The warning signs had been ignored in favor of the possibility, however remote, that it could actually happen.', 'Software', 15, '2019-09-30 15:32:29', '2020-01-30 15:32:29', NULL, NULL),
(5, 'Android', 'Hopes and dreams were dashed that day. It should have been expected, but it still came as a shock. The warning signs had been ignored in favor of the possibility, however remote, that it could actually happen.', 'Embedded System', 16, '2018-02-08 15:32:29', '2019-04-20 15:32:29', NULL, NULL),
(6, 'Secure design and implementation methodology for software application', 'Hopes and dreams were dashed that day. It should have been expected, but it still came as a shock. The warning signs had been ignored in favor of the possibility, however remote, that it could actually happen.', 'Research', 17, '2019-02-08 15:32:29', '2020-02-08 15:32:29', NULL, NULL),
(7, 'Distribution system design and implementation practice', 'Hopes and dreams were dashed that day. It should have been expected, but it still came as a shock. The warning signs had been ignored in favor of the possibility, however remote, that it could actually happen.', 'Research', 18, '2020-01-25 15:32:29', '2020-04-25 15:32:29', NULL, NULL),
(8, 'Business practices and design for E-commerce websites', 'Hopes and dreams were dashed that day. It should have been expected, but it still came as a shock. The warning signs had been ignored in favor of the possibility, however remote, that it could actually happen.', 'Business', 19, '2020-07-02 15:32:29', '2020-09-06 15:32:29', NULL, NULL),
(9, 'Design and implement a message system for a social website', 'Hopes and dreams were dashed that day. It should have been expected, but it still came as a shock. The warning signs had been ignored in favor of the possibility, however remote, that it could actually happen.', 'Software and Business', 5, '2019-09-01 15:38:15', '2020-01-30 15:38:15', NULL, NULL),
(10, 'Improve robot functionalities using AI', 'Hopes and dreams were dashed that day. It should have been expected, but it still came as a shock. The warning signs had been ignored in favor of the possibility, however remote, that it could actually happen.', 'Embedded System', 3, '2019-02-01 15:38:15', '2019-07-05 15:38:15', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `request`
--

CREATE TABLE `request` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `studentId` bigint(20) UNSIGNED NOT NULL,
  `projectId` bigint(20) UNSIGNED NOT NULL,
  `spotId` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'sadas', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `skill`
--

CREATE TABLE `skill` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `skill`
--

INSERT INTO `skill` (`id`, `title`, `type`, `created_at`, `updated_at`) VALUES
(1, 'C#', 'hard skill', NULL, NULL),
(2, 'Java', 'hard skill', NULL, NULL),
(3, 'PHP', 'hard skill', NULL, NULL),
(4, 'Database Design', 'hard skill', NULL, NULL),
(5, 'Planning', 'hard skill', NULL, NULL),
(6, 'React Native', 'hard skill', NULL, NULL),
(7, 'Laravel', 'hard skill', NULL, NULL),
(8, 'Web Development', 'hard skill', NULL, NULL),
(9, 'Algorithm', 'hard skill', NULL, NULL),
(10, 'C++', 'hard skill', NULL, NULL),
(11, 'Linux', 'hard skill', NULL, NULL),
(12, 'Circuit', 'hard skill', NULL, NULL),
(13, 'Research', 'hard skill', NULL, NULL),
(14, 'Cyber Security', 'hard skill', NULL, NULL),
(15, 'E-commerce ', 'hard skill', NULL, NULL),
(16, 'Chat Service', 'hard skill', NULL, NULL),
(17, 'Robotics', 'hard skill', NULL, NULL),
(18, 'Machine Leaning', 'hard skill', NULL, NULL),
(19, 'Mining', 'hard skill', NULL, NULL),
(20, 'Project Management', 'hard skill', NULL, NULL),
(21, 'Business Management', 'hard skill', NULL, NULL),
(22, 'Earth Science', 'hard skill', NULL, NULL),
(23, 'Manufacturing Operations', 'hard skill', NULL, NULL),
(24, 'Drilling Engineering', 'hard skill', NULL, NULL),
(25, 'Digital Literacy', 'hard skill', NULL, NULL),
(26, 'Maintenance & Repair', 'hard skill', NULL, NULL),
(27, 'Procurement', 'hard skill', NULL, NULL),
(28, 'Oil & Gas', 'hard skill', NULL, NULL),
(29, 'Utilities', 'hard skill', NULL, NULL),
(30, 'Construction Engineering', 'hard skill', NULL, NULL),
(31, 'Pharmaceutics', 'hard skill', NULL, NULL),
(32, 'Pharmaceutical Manufacturing', 'hard skill', NULL, NULL),
(33, 'Oncology', 'hard skill', NULL, NULL),
(34, 'Cardiology', 'hard skill', NULL, NULL),
(35, 'Biomedical Engineering', 'hard skill', NULL, NULL),
(36, 'Neurology', 'hard skill', NULL, NULL),
(37, 'Product Testing', 'hard skill', NULL, NULL),
(38, 'Product Development', 'hard skill', NULL, NULL),
(39, 'Family Medicine', 'hard skill', NULL, NULL),
(40, 'Product Marketing', 'hard skill', NULL, NULL),
(41, 'Food Manufacturing', 'hard skill', NULL, NULL),
(42, 'Food Service Operations', 'hard skill', NULL, NULL),
(43, 'Retail', 'hard skill', NULL, NULL),
(44, 'Air Force', 'hard skill', NULL, NULL),
(45, 'Airlines', 'hard skill', NULL, NULL),
(46, 'Aerospace Engineering', 'hard skill', NULL, NULL),
(47, 'Aircraft Management', 'hard skill', NULL, NULL),
(48, 'Composites', 'hard skill', NULL, NULL),
(49, 'Scientific Computing', 'hard skill', NULL, NULL),
(50, 'Automotive', 'hard skill', NULL, NULL),
(51, 'Customer Experience', 'hard skill', NULL, NULL),
(52, 'Chemical Processing', 'hard skill', NULL, NULL),
(54, 'Materials Science', 'hard skill', NULL, NULL),
(55, 'Architecture', 'hard skill', NULL, NULL),
(56, 'Machining', 'hard skill', NULL, NULL),
(57, 'Apparel', 'hard skill', NULL, NULL),
(58, 'Recruiting', 'hard skill', NULL, NULL),
(59, 'Inside Sales', 'hard skill', NULL, NULL),
(60, 'Forestry', 'hard skill', NULL, NULL),
(61, 'Printing', 'hard skill', NULL, NULL),
(62, 'Retail Packaging', 'hard skill', NULL, NULL),
(63, 'Graphic Design', 'hard skill', NULL, NULL),
(64, 'Advertising', 'hard skill', NULL, NULL),
(65, 'Electronics', 'hard skill', NULL, NULL),
(67, 'Software Testing', 'hard skill', NULL, NULL),
(68, 'Plastics', 'hard skill', NULL, NULL),
(69, 'Power Systems', 'hard skill', NULL, NULL),
(70, 'Negotiation', 'soft skill', NULL, NULL),
(71, 'Teamwork', 'soft skill', NULL, NULL),
(72, 'Leadership', 'soft skill', NULL, NULL),
(73, 'Communication', 'soft skill', NULL, NULL),
(74, 'Writing', 'soft skill', NULL, NULL),
(75, 'Time Management', 'soft skill', NULL, NULL),
(80, 'Coaching', 'soft skill', NULL, NULL),
(81, 'Intercultural Communication', 'soft skill', NULL, NULL),
(82, 'Presenting', 'soft skill', NULL, NULL),
(83, 'Driven', 'soft skill', NULL, NULL),
(84, 'Creativity', 'soft skill', NULL, NULL),
(85, 'Persuasion', 'soft skill', NULL, NULL),
(86, 'Collaboration', 'soft skill', NULL, NULL),
(87, 'Adaptability', 'soft skill', NULL, NULL),
(189, 'Environmental Science', 'hard skill', NULL, NULL),
(240, 'Environmental Consulting', 'hard skill', NULL, NULL),
(269, 'Entrepreneurship', 'hard skill', NULL, NULL),
(270, 'Instrumentation', 'hard skill', NULL, NULL),
(271, 'Electronic Control Systems', 'hard skill', NULL, NULL),
(272, 'Computer Hardware', 'hard skill', NULL, NULL),
(273, 'Technical Support', 'hard skill', NULL, NULL),
(274, 'System Administration', 'hard skill', NULL, NULL),
(275, 'Computer Networking', 'hard skill', NULL, NULL),
(276, 'Development Tools', 'hard skill', NULL, NULL),
(278, 'Data Storage Technologies', 'hard skill', NULL, NULL),
(279, 'Data Science', 'hard skill', NULL, NULL),
(280, 'Software Development Life Cycle (SDLC)', 'hard skill', NULL, NULL),
(281, 'Mobile Application Development', 'hard skill', NULL, NULL),
(282, 'Management Consulting', 'hard skill', NULL, NULL),
(283, 'Telecommunications', 'hard skill', NULL, NULL),
(284, 'Cybersecurity', 'hard skill', NULL, NULL),
(285, 'Sales Operations', 'hard skill', NULL, NULL),
(286, 'Social Media', 'hard skill', NULL, NULL),
(287, 'Digital Marketing', 'hard skill', NULL, NULL),
(288, 'Video', 'hard skill', NULL, NULL),
(289, 'Television', 'hard skill', NULL, NULL),
(290, 'Photography', 'hard skill', NULL, NULL),
(291, 'Editing', 'hard skill', NULL, NULL),
(320, 'Animation', 'hard skill', NULL, NULL),
(321, 'Theatre', 'hard skill', NULL, NULL),
(322, 'Journalism', 'hard skill', NULL, NULL),
(323, 'Radio Production', 'hard skill', NULL, NULL),
(324, 'Corporate Communications', 'hard skill', NULL, NULL),
(325, 'Literature', 'hard skill', NULL, NULL),
(326, 'Teaching', 'hard skill', NULL, NULL),
(327, 'Game Development', 'hard skill', NULL, NULL),
(328, 'Human Computer Interaction', 'hard skill', NULL, NULL),
(329, 'Information Management', 'hard skill', NULL, NULL),
(330, 'Commercial Banking', 'hard skill', NULL, NULL),
(331, 'Financial Accounting', 'hard skill', NULL, NULL),
(332, 'Capital Markets', 'hard skill', NULL, NULL),
(333, 'Investment Banking', 'hard skill', NULL, NULL),
(334, 'Insurance', 'hard skill', NULL, NULL),
(335, 'Auditing', 'hard skill', NULL, NULL),
(336, 'Growth Strategies', 'hard skill', NULL, NULL),
(337, 'Investor Relations', 'hard skill', NULL, NULL),
(338, 'Law', 'hard skill', NULL, NULL),
(339, 'Contract Law', 'hard skill', NULL, NULL),
(340, 'Labor and Employment Law', 'hard skill', NULL, NULL),
(341, 'Intellectual Property', 'hard skill', NULL, NULL),
(342, 'Family Law', 'hard skill', NULL, NULL),
(373, 'International Law', 'hard skill', NULL, NULL),
(374, 'Criminal Law', 'hard skill', NULL, NULL),
(375, 'Tax Law', 'hard skill', NULL, NULL),
(376, 'Employee Learning & Development', 'hard skill', NULL, NULL),
(377, 'Genetic Engineering', 'hard skill', NULL, NULL),
(378, 'Evolutionary Biology', 'hard skill', NULL, NULL),
(379, 'Physiology', 'hard skill', NULL, NULL),
(380, 'Organic Chemistry', 'hard skill', NULL, NULL),
(381, 'Veterinary Medicine', 'hard skill', NULL, NULL),
(382, 'Zoology', 'hard skill', NULL, NULL),
(383, 'Agricultural Production', 'hard skill', NULL, NULL),
(384, 'General Surgery', 'hard skill', NULL, NULL),
(385, 'Anesthesiology', 'hard skill', NULL, NULL),
(386, 'Tax Accounting', 'hard skill', NULL, NULL),
(387, 'Bookkeeping', 'hard skill', NULL, NULL),
(388, 'Management Accounting', 'hard skill', NULL, NULL),
(389, 'Accounts Payable', 'hard skill', NULL, NULL),
(390, 'Payroll Services', 'hard skill', NULL, NULL),
(391, 'Urban Planning', 'hard skill', NULL, NULL),
(392, 'Interior Design', 'hard skill', NULL, NULL),
(393, 'Industrial Design', 'hard skill', NULL, NULL),
(423, 'Public Policy', 'hard skill', NULL, NULL),
(424, 'Administrative Assistance', 'hard skill', NULL, NULL),
(425, 'Event Planning', 'hard skill', NULL, NULL),
(426, 'Water Engineering', 'hard skill', NULL, NULL),
(427, 'Environmental Engineering', 'hard skill', NULL, NULL),
(428, 'Competitive Strategies', 'hard skill', NULL, NULL),
(429, 'Personal Coaching', 'hard skill', NULL, NULL),
(430, 'Human Resources (HR)', 'hard skill', NULL, NULL),
(431, 'Translation', 'hard skill', NULL, NULL),
(432, 'Linguistics', 'hard skill', NULL, NULL),
(433, 'Foreign Languages', 'hard skill', NULL, NULL),
(434, 'Higher Education', 'hard skill', NULL, NULL),
(435, 'Commercial Photography', 'hard skill', NULL, NULL),
(436, 'Music', 'hard skill', NULL, NULL),
(437, 'Recreation', 'hard skill', NULL, NULL),
(438, 'Professional Sports', 'hard skill', NULL, NULL),
(439, 'Sports Coaching', 'hard skill', NULL, NULL),
(440, 'Art History', 'hard skill', NULL, NULL),
(441, 'History', 'hard skill', NULL, NULL),
(442, 'Visual Arts', 'hard skill', NULL, NULL),
(443, 'Anthropology', 'hard skill', NULL, NULL),
(444, 'Conceptual Art', 'hard skill', NULL, NULL),
(476, 'Dance', 'hard skill', NULL, NULL),
(477, 'Arts & Crafts', 'hard skill', NULL, NULL),
(478, 'Wellness', 'hard skill', NULL, NULL),
(479, 'Medicine', 'hard skill', NULL, NULL),
(480, 'Healthcare Management', 'hard skill', NULL, NULL),
(481, 'Public Health', 'hard skill', NULL, NULL),
(482, 'Physical Medicine and Rehabilitation', 'hard skill', NULL, NULL),
(483, 'Computer Graphics', 'hard skill', NULL, NULL),
(484, 'Enterprise Software', 'hard skill', NULL, NULL),
(485, 'Artificial Intelligence', 'hard skill', NULL, NULL),
(486, 'Nanotechnology', 'hard skill', NULL, NULL),
(487, 'Landscape Architecture', 'hard skill', NULL, NULL),
(488, 'Cooking', 'hard skill', NULL, NULL),
(489, 'Real Estate', 'hard skill', NULL, NULL),
(490, 'Property Law', 'hard skill', NULL, NULL),
(491, 'Customer Service Systems', 'hard skill', NULL, NULL),
(493, 'Human-Computer Interaction', 'hard skill', NULL, NULL),
(495, 'Accounting', 'hard skill', NULL, NULL),
(498, 'Virtual Reality', 'hard skill', NULL, NULL),
(499, 'IOS App Development', 'hard skill', NULL, NULL),
(500, 'Android App Development', 'hard skill', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `skill_spot`
--

CREATE TABLE `skill_spot` (
  `skillId` bigint(20) UNSIGNED NOT NULL,
  `spotId` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `spot`
--

CREATE TABLE `spot` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `projectId` bigint(20) UNSIGNED NOT NULL,
  `roleId` bigint(20) UNSIGNED DEFAULT NULL,
  `studentId` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `spot`
--

INSERT INTO `spot` (`id`, `description`, `projectId`, `roleId`, `studentId`, `created_at`, `updated_at`) VALUES
(15, 'Frontend Developer', 1, NULL, NULL, NULL, NULL),
(16, 'Backend Developer', 2, NULL, NULL, NULL, NULL),
(17, 'Business Analyst', 3, NULL, NULL, NULL, NULL),
(18, 'Data Analyst', 4, NULL, NULL, NULL, NULL),
(19, 'Project Leader', 5, NULL, NULL, NULL, NULL),
(20, 'Designer', 6, NULL, NULL, NULL, NULL),
(21, 'Interaction Designer', 7, NULL, NULL, NULL, NULL),
(22, 'Test Engineer', 8, NULL, NULL, NULL, NULL),
(23, 'Software Architect', 9, NULL, NULL, NULL, NULL),
(24, 'Project Manager', 10, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fontysId` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `givenName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `surName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `initials` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `displayName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `department` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `personalTitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `employeeId` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tokenValidUntil` datetime DEFAULT NULL,
  `fontysToken` varchar(10000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fontysTokenValidUntil` datetime DEFAULT NULL,
  `resetPasswordCode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `resetPasswordCodeValidUntil` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `fontysId`, `givenName`, `surName`, `initials`, `displayName`, `email`, `photo`, `department`, `title`, `personalTitle`, `employeeId`, `password`, `description`, `token`, `tokenValidUntil`, `fontysToken`, `fontysTokenValidUntil`, `resetPasswordCode`, `resetPasswordCodeValidUntil`, `created_at`, `updated_at`) VALUES
(1, 'Karen Gorczany', 'Rocio', 'Schulist', 'b', 'Rocio Schulist', 'rocio.schulist@student.fontys.nl', 'https://eu.ui-avatars.com/api/?background=E5E5E5&color=000&name=Rocio+Schulist', 'B HBO-ICT', 'E-S71', 'Student FHICT', '1321576241', '$2y$10$oE9xc33offw7u2WhJ2/toerc98eaSuJFZ0l5DxNBygz.jXqta6uUi', 'Sint suscipit est aut voluptatem et adipisci.', 'c7utOyvS2L', '1973-12-06 03:59:24', 'Ro8534cCbP', '1982-03-30 03:51:31', NULL, NULL, '1987-05-11 17:20:55', '2021-01-11 09:34:41'),
(2, 'Brant Gislason Sr.', 'Matilde', 'Stanton', 'm', 'Matilde Stanton', 'matilde.stanton@student.fontys.nl', 'https://eu.ui-avatars.com/api/?background=E5E5E5&color=000&name=Matilde+Stanton', 'B HBO-ICT', 'E-S71', 'Student FHICT', '544796989', '$2y$10$F999xx/9Xe5JHh3MA9L7g.VwPoRyPEttQ9OuRqleDqLSte7DssMAW', 'Autem quidem sed itaque iste dolore.', 'P3Int9MibB', '1996-09-02 02:25:15', 'BV57N6GF46', '1984-06-20 06:54:29', NULL, NULL, '1994-08-06 05:20:18', '2021-01-11 09:34:41'),
(3, 'Martin Dach', 'Kristofer', 'Bogisich', 'v', 'Kristofer Bogisich', 'kristofer.bogisich@student.fontys.nl', 'https://eu.ui-avatars.com/api/?background=E5E5E5&color=000&name=Kristofer+Bogisich', 'B HBO-ICT', 'E-S71', 'Student FHICT', '355991129', '$2y$10$akLieSfV0LHYdmK0Mu.X7udX/jLZPPsYPIzOmVIKykQJtWmENZifO', 'Amet ut non dolores ut ipsam nesciunt nihil.', 'rmU899dooT', '2006-12-10 13:36:34', '3LYW82EDzY', '2008-05-30 01:19:48', NULL, NULL, '1986-03-31 09:17:32', '2021-01-11 09:34:41'),
(4, 'Elyse Prohaska', 'Delia', 'Gaylord', 'l', 'Delia Gaylord', 'delia.gaylord@student.fontys.nl', 'https://eu.ui-avatars.com/api/?background=E5E5E5&color=000&name=Delia+Gaylord', 'B HBO-ICT', 'E-S71', 'Student FHICT', '1414135417', '$2y$10$rkrPCjecjl8oshzYMBzmcucFfr33/.KHALUjB5K7qS68NvJE8gIaa', 'Impedit enim quis qui aliquid sed.', 'tLAUV84SdC', '2015-09-06 10:19:40', 'PUCcoNqeHg', '1981-12-03 08:23:08', NULL, NULL, '1996-01-06 06:37:52', '2021-01-11 09:34:41'),
(5, 'Miss Ellie Wunsch Jr.', 'Margarete', 'Pfeffer', 'k', 'Margarete Pfeffer', 'margarete.pfeffer@student.fontys.nl', 'https://eu.ui-avatars.com/api/?background=E5E5E5&color=000&name=Margarete+Pfeffer', 'B HBO-ICT', 'E-S71', 'Student FHICT', '133383564', '$2y$10$cKd61we7NjfAZ2vrk2Jtke2qiplwXEuif0etg2DglLDleQuNsNyWi', 'Incidunt velit atque ea voluptatem sed iste.', 'EdSeFstJ2y', '2019-05-30 16:23:47', 'qQ43J9WYIf', '2001-02-01 21:20:26', NULL, NULL, '2015-08-19 00:07:07', '2021-01-11 09:34:41'),
(6, 'Audra Conroy', 'Moriah', 'DAmore', 'h', 'Moriah DAmore', 'moriah.damore@student.fontys.nl', 'https://eu.ui-avatars.com/api/?background=E5E5E5&color=000&name=Moriah+DAmore', 'B HBO-ICT', 'E-S71', 'Student FHICT', '2033910817', '$2y$10$GtJ6RAQ28VbbFj0qCcQUDe7ofhxgwr2KGCRoI.JE6mjhpzkGgAEVK', 'Rerum enim ut aliquid sunt quis.', 'WLe4RoyTBO', '1970-03-04 10:44:13', '9LWtdwPK8V', '1989-12-13 14:20:21', NULL, NULL, '2016-09-07 15:35:53', '2021-01-11 09:34:41'),
(7, 'Prof. Edgar Greenholt', 'Katherine', 'Kuvalis', 'i', 'Katherine Kuvalis', 'katherine.kuvalis@student.fontys.nl', 'https://eu.ui-avatars.com/api/?background=E5E5E5&color=000&name=Katherine+Kuvalis', 'B HBO-ICT', 'E-S71', 'Student FHICT', '23208488', '$2y$10$H5niVT9of.PkfkJh9SWi/eCcfg7fCiSFtTWivj/Gb2leRX4/ncdW2', 'Non quam aut repellendus ut architecto voluptates.', 'NCGC6gcdHa', '1979-11-06 23:56:57', 'TB8x5747CY', '2013-01-26 00:12:47', NULL, NULL, '2002-06-15 19:03:32', '2021-01-11 09:34:41'),
(8, 'Delilah Harris DVM', 'Frederik', 'Jacobi', 'i', 'Frederik Jacobi', 'frederik.jacobi@student.fontys.nl', 'https://eu.ui-avatars.com/api/?background=E5E5E5&color=000&name=Frederik+Jacobi', 'B HBO-ICT', 'E-S71', 'Student FHICT', '624536505', '$2y$10$ZICRU/.oMeOb7Y2/.cLSPOdrw5jd9i9y5zFCoh2xeZUCBjiIm98T.', 'Minima hic optio molestias voluptatibus ullam voluptas ducimus.', 'R8xUVeMtrW', '1975-12-24 08:00:49', '2jxjyyu1bb', '1993-07-30 03:00:58', NULL, NULL, '2010-11-30 12:11:33', '2021-01-11 09:34:41'),
(9, 'Prof. Jewell Purdy', 'Casimer', 'Welch', 'o', 'Casimer Welch', 'casimer.welch@student.fontys.nl', 'https://eu.ui-avatars.com/api/?background=E5E5E5&color=000&name=Casimer+Welch', 'B HBO-ICT', 'E-S71', 'Student FHICT', '568020827', '$2y$10$ICwodci/hoflObmGCOX8FeYkQLMA3hr5lPJshxoAM13zuw9FRnQDK', 'Consequatur et vitae aliquam rerum consectetur quaerat.', 'I2idUgEsBJ', '1979-08-12 21:46:18', 'is42J8DzuM', '2009-08-01 17:59:09', NULL, NULL, '1984-10-11 23:48:31', '2021-01-11 09:34:41'),
(10, 'Duane Huels', 'Giovani', 'Casper', 'q', 'Giovani Casper', 'giovani.casper@student.fontys.nl', 'https://eu.ui-avatars.com/api/?background=E5E5E5&color=000&name=Giovani+Casper', 'B HBO-ICT', 'E-S71', 'Student FHICT', '1906681617', '$2y$10$fpBTkkPT6MFC.F0sfJ1V3e4m2pJBk4HWi9vJf515PgbZS0XLqyVN.', 'Et dolor inventore dolor laborum eum quia ab repellat.', '39RUPjwTzP', '1992-08-23 10:20:18', 'ZKqDAwbomF', '2020-02-10 02:58:29', NULL, NULL, '1995-09-23 13:49:15', '2021-01-11 09:34:41'),
(11, 'Charlene Lubowitz', 'Macy', 'Jast', 'r', 'Macy Jast', 'macy.jast@student.fontys.nl', 'https://eu.ui-avatars.com/api/?background=E5E5E5&color=000&name=Macy+Jast', 'B HBO-ICT', 'E-S71', 'Student FHICT', '562740641', '$2y$10$PidI9dPYFNl6D2ZRPFa44ebhbcUaZ9Cy3jdSBbMZniCzMvxcNJAbq', 'Et enim ratione autem veniam placeat.', 'fShukH6ARC', '1983-11-01 01:41:15', 'bkTfJoCxb5', '1980-08-10 00:24:16', NULL, NULL, '1993-09-09 18:18:25', '2021-01-11 09:34:41'),
(12, 'Randi Volkman V', 'Ava', 'Swift', 'y', 'Ava Swift', 'ava.swift@student.fontys.nl', 'https://eu.ui-avatars.com/api/?background=E5E5E5&color=000&name=Ava+Swift', 'B HBO-ICT', 'E-S71', 'Student FHICT', '1661880097', '$2y$10$VTQmYZiOwRVwu21iheyUS.vHGnh.QGfpnlzYVdvULQgUyj9YcQM6u', 'Architecto molestiae eos excepturi rerum voluptatem.', 'IlTmsCEjm5', '2014-07-27 06:13:19', 'atro0TidGj', '1989-08-20 17:38:25', NULL, NULL, '1989-03-03 13:54:25', '2021-01-11 09:34:42'),
(13, 'Alberta Koelpin', 'Lenore', 'Runolfsson', 'k', 'Lenore Runolfsson', 'lenore.runolfsson@student.fontys.nl', 'https://eu.ui-avatars.com/api/?background=E5E5E5&color=000&name=Lenore+Runolfsson', 'B HBO-ICT', 'E-S71', 'Student FHICT', '1352099897', '$2y$10$MglTp51fNVfyqP9WlDfipebUkvDmyXmEXmwQJ.ZkrwU8DCmW4RB4C', 'Rerum voluptatem perspiciatis et doloremque.', 'TPk3JxVt7d', '2021-01-03 09:55:45', 'vYEfvbPOsv', '2005-01-29 16:23:00', NULL, NULL, '1994-07-27 06:54:27', '2021-01-11 09:34:42'),
(14, 'Jewel Donnelly', 'Reed', 'Quitzon', 's', 'Reed Quitzon', 'reed.quitzon@student.fontys.nl', 'https://eu.ui-avatars.com/api/?background=E5E5E5&color=000&name=Reed+Quitzon', 'B HBO-ICT', 'E-S71', 'Student FHICT', '1349129677', '$2y$10$6datuVe.7OiQWZ/BKjoDdu30GQlWpZBrU2753DFH7o2NRAk4eJZlG', 'Est eum velit consequatur.', 'aobKttczWS', '1999-09-07 20:19:25', 'x2SepQGCId', '1972-07-26 01:58:41', NULL, NULL, '2020-11-04 13:51:24', '2021-01-11 09:34:42'),
(15, 'Stefan Carter', 'Everette', 'Koepp', 'g', 'Everette Koepp', 'everette.koepp@student.fontys.nl', 'https://eu.ui-avatars.com/api/?background=E5E5E5&color=000&name=Everette+Koepp', 'B HBO-ICT', 'E-S71', 'Student FHICT', '1000742335', '$2y$10$7/kK9dM.73qiu1oTkTJr6u.Kla1SznNKz.PSdK8pkBsu7Un2NqJg6', 'Consequatur ut in non corporis a.', 'S3xn9TFBQ2', '1980-09-18 12:18:06', 'BTZerymWcW', '1995-02-15 17:17:36', NULL, NULL, '1977-07-26 13:35:59', '2021-01-11 09:34:42'),
(16, 'Zelda Mertz DDS', 'Katelyn', 'Abshire', 'm', 'Katelyn Abshire', 'katelyn.abshire@student.fontys.nl', 'https://eu.ui-avatars.com/api/?background=E5E5E5&color=000&name=Katelyn+Abshire', 'B HBO-ICT', 'E-S71', 'Student FHICT', '1352948767', '$2y$10$3L/KY9ja9UXxazY5sCixreRM99S9QF.Qfj9TGi2K3Qtfk5s00.1Ee', 'Qui tempore repellendus quae qui hic voluptatem nulla.', 'Tu4yxpaeou', '1996-08-12 21:49:49', 'jIwroqwrDc', '2005-03-31 12:23:15', NULL, NULL, '1997-10-18 16:28:47', '2021-01-11 09:34:42'),
(17, 'Karl Hills', 'Emilie', 'Willms', 'b', 'Emilie Willms', 'emilie.willms@student.fontys.nl', 'https://eu.ui-avatars.com/api/?background=E5E5E5&color=000&name=Emilie+Willms', 'B HBO-ICT', 'E-S71', 'Student FHICT', '689796353', '$2y$10$sV7J0859jSH4Suk77BGoqe14UvQFg8aKGiMx1/IDr6F51eEYCa2q6', 'Qui vitae quia assumenda libero.', '9yBSd3d0B2', '2018-11-11 07:35:44', 'K94SZ83LUX', '2001-08-07 18:29:29', NULL, NULL, '1971-12-11 21:48:18', '2021-01-11 09:34:42'),
(18, 'Logan Crooks', 'Bernita', 'McCullough', 'i', 'Bernita McCullough', 'bernita.mccullough@student.fontys.nl', 'https://eu.ui-avatars.com/api/?background=E5E5E5&color=000&name=Bernita+McCullough', 'B HBO-ICT', 'E-S71', 'Student FHICT', '541939794', '$2y$10$C.ugyr2RKrFGcgRRuFGfAO0JTagTct9RKrpSi0uMprasIH/7ak.1q', 'Et a ducimus nihil placeat earum ducimus laborum.', 'mACoyXGLSE', '1995-03-03 14:40:40', 'iAo0Lwk8qd', '2015-08-13 23:13:55', NULL, NULL, '1999-10-09 20:29:53', '2021-01-11 09:34:42'),
(19, 'Ms. Sally Balistreri IV', 'Ephraim', 'Kozey', 'w', 'Ephraim Kozey', 'ephraim.kozey@student.fontys.nl', 'https://eu.ui-avatars.com/api/?background=E5E5E5&color=000&name=Ephraim+Kozey', 'B HBO-ICT', 'E-S71', 'Student FHICT', '2080730957', '$2y$10$s5g/ybqyhE.16opdotXhi.vsAGWK8uDMtQnjaWWk/IZxG.clBYVOG', 'Id reiciendis sit ipsum velit exercitationem id aliquam.', 'dI37VxUS0b', '2014-03-03 12:25:40', '5iVOigSpMT', '2006-12-17 00:46:02', NULL, NULL, '1976-02-05 02:33:33', '2021-01-11 09:34:42'),
(20, 'Bartholome Harvey', 'Renee', 'Jerde', 't', 'Renee Jerde', 'renee.jerde@student.fontys.nl', 'https://eu.ui-avatars.com/api/?background=E5E5E5&color=000&name=Renee+Jerde', 'B HBO-ICT', 'E-S71', 'Student FHICT', '647089250', '$2y$10$eUIJGKMz02iHG/NLiqkYbOPJZ0XdJParkZHyzHwgI34Z48YdjUl2K', 'Aut deserunt saepe dolorem earum et voluptates eos.', 'mJzs0a6gqT', '2011-07-24 22:48:42', 'MVCQfOfb1I', '2006-11-26 12:34:41', NULL, NULL, '2004-11-09 11:28:02', '2021-01-11 09:34:42');

-- --------------------------------------------------------

--
-- Table structure for table `student_skill`
--

CREATE TABLE `student_skill` (
  `studentId` bigint(20) UNSIGNED NOT NULL,
  `skillId` bigint(20) UNSIGNED NOT NULL,
  `level` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `endorsement`
--
ALTER TABLE `endorsement`
  ADD PRIMARY KEY (`studentId`,`skillId`,`endorserId`),
  ADD KEY `endorsement_endorserid_foreign` (`endorserId`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_ownerid_foreign` (`ownerId`),
  ADD KEY `project_category_foreign` (`category`);

--
-- Indexes for table `request`
--
ALTER TABLE `request`
  ADD PRIMARY KEY (`id`),
  ADD KEY `request_studentid_foreign` (`studentId`),
  ADD KEY `request_projectid_foreign` (`projectId`),
  ADD KEY `request_spotid_foreign` (`spotId`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `skill`
--
ALTER TABLE `skill`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `skill_title_unique` (`title`);

--
-- Indexes for table `skill_spot`
--
ALTER TABLE `skill_spot`
  ADD PRIMARY KEY (`skillId`,`spotId`),
  ADD KEY `skill_spot_spotid_foreign` (`spotId`);

--
-- Indexes for table `spot`
--
ALTER TABLE `spot`
  ADD PRIMARY KEY (`id`),
  ADD KEY `spot_projectid_foreign` (`projectId`),
  ADD KEY `spot_roleid_foreign` (`roleId`),
  ADD KEY `spot_studentid_foreign` (`studentId`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `student_fontysid_unique` (`fontysId`),
  ADD UNIQUE KEY `student_email_unique` (`email`),
  ADD UNIQUE KEY `student_employeeid_unique` (`employeeId`),
  ADD UNIQUE KEY `student_token_unique` (`token`);

--
-- Indexes for table `student_skill`
--
ALTER TABLE `student_skill`
  ADD PRIMARY KEY (`studentId`,`skillId`),
  ADD KEY `student_skill_skillid_foreign` (`skillId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `project`
--
ALTER TABLE `project`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `request`
--
ALTER TABLE `request`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `skill`
--
ALTER TABLE `skill`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=501;

--
-- AUTO_INCREMENT for table `spot`
--
ALTER TABLE `spot`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `endorsement`
--
ALTER TABLE `endorsement`
  ADD CONSTRAINT `endorsement_endorserid_foreign` FOREIGN KEY (`endorserId`) REFERENCES `student` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `endorsement_studentid_skillid_foreign` FOREIGN KEY (`studentId`,`skillId`) REFERENCES `student_skill` (`studentId`, `skillId`) ON DELETE CASCADE;

--
-- Constraints for table `project`
--
ALTER TABLE `project`
  ADD CONSTRAINT `project_category_foreign` FOREIGN KEY (`category`) REFERENCES `category` (`name`) ON DELETE CASCADE,
  ADD CONSTRAINT `project_ownerid_foreign` FOREIGN KEY (`ownerId`) REFERENCES `student` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `request`
--
ALTER TABLE `request`
  ADD CONSTRAINT `request_projectid_foreign` FOREIGN KEY (`projectId`) REFERENCES `project` (`id`),
  ADD CONSTRAINT `request_spotid_foreign` FOREIGN KEY (`spotId`) REFERENCES `spot` (`id`),
  ADD CONSTRAINT `request_studentid_foreign` FOREIGN KEY (`studentId`) REFERENCES `student` (`id`);

--
-- Constraints for table `skill_spot`
--
ALTER TABLE `skill_spot`
  ADD CONSTRAINT `skill_spot_skillid_foreign` FOREIGN KEY (`skillId`) REFERENCES `skill` (`id`),
  ADD CONSTRAINT `skill_spot_spotid_foreign` FOREIGN KEY (`spotId`) REFERENCES `spot` (`id`);

--
-- Constraints for table `spot`
--
ALTER TABLE `spot`
  ADD CONSTRAINT `spot_projectid_foreign` FOREIGN KEY (`projectId`) REFERENCES `project` (`id`),
  ADD CONSTRAINT `spot_roleid_foreign` FOREIGN KEY (`roleId`) REFERENCES `role` (`id`),
  ADD CONSTRAINT `spot_studentid_foreign` FOREIGN KEY (`studentId`) REFERENCES `student` (`id`);

--
-- Constraints for table `student_skill`
--
ALTER TABLE `student_skill`
  ADD CONSTRAINT `student_skill_skillid_foreign` FOREIGN KEY (`skillId`) REFERENCES `skill` (`id`),
  ADD CONSTRAINT `student_skill_studentid_foreign` FOREIGN KEY (`studentId`) REFERENCES `student` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
