-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 20, 2025 at 01:51 PM
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
-- Database: `wtms`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_submissions`
--

CREATE TABLE `tbl_submissions` (
  `id` int(11) NOT NULL,
  `work_id` int(11) NOT NULL,
  `worker_id` int(11) NOT NULL,
  `submission_text` text NOT NULL,
  `submitted_at` datetime DEFAULT current_timestamp(),
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_submissions`
--

INSERT INTO `tbl_submissions` (`id`, `work_id`, `worker_id`, `submission_text`, `submitted_at`, `created_at`) VALUES
(1, 1, 1, 'the task complete', '2025-05-30 01:30:18', '2025-06-20 16:11:44'),
(2, 1, 1, 'done', '2025-06-20 01:45:42', '2025-06-20 16:11:44'),
(3, 2, 1, 'done', '2025-06-20 01:45:51', '2025-06-20 16:11:44'),
(4, 1, 1, 'done', '2025-06-20 02:23:25', '2025-06-20 16:11:44'),
(5, 1, 1, 'yes', '2025-06-20 02:36:57', '2025-06-20 16:11:44'),
(6, 1, 1, 'yes it done', '2025-06-20 17:53:15', '2025-06-20 17:53:15'),
(7, 1, 1, 'the task already complete by my team', '2025-06-20 18:48:41', '2025-06-20 18:48:41');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_works`
--

CREATE TABLE `tbl_works` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `assigned_to` int(11) NOT NULL,
  `date_assigned` date NOT NULL,
  `due_date` date NOT NULL,
  `status` varchar(20) DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_works`
--

INSERT INTO `tbl_works` (`id`, `title`, `description`, `assigned_to`, `date_assigned`, `due_date`, `status`) VALUES
(1, 'Prepare Material A', 'Prepare raw material A for assembly.', 1, '2025-05-25', '2025-05-28', 'submitted'),
(2, 'Paint Booth Check', 'Routine check on painting booth.', 1, '2025-05-25', '2025-05-30', 'submitted'),
(3, 'Inspect Machine X', 'Conduct inspection for machine X.', 2, '2025-05-25', '2025-05-29', 'pending'),
(4, 'Clean Area B', 'Deep clean work area B before audit.', 3, '2025-05-25', '2025-05-30', 'pending'),
(5, 'Test Circuit Board', 'Perform unit test for circuit batch 4.', 4, '2025-05-25', '2025-05-28', 'pending'),
(6, 'Document Process', 'Write SOP for packaging unit.', 5, '2025-05-25', '2025-05-29', 'pending'),
(7, 'Label Inventory', 'Label all boxes in section C.', 2, '2025-05-25', '2025-05-28', 'pending'),
(8, 'Update Database', 'Update inventory in MySQL system.', 3, '2025-05-25', '2025-05-29', 'pending'),
(9, 'Maintain Equipment', 'Oil and tune cutting machine.', 4, '2025-05-25', '2025-05-30', 'pending'),
(10, 'Prepare Report', 'Prepare monthly performance report.', 5, '2025-05-25', '2025-05-30', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `phone`, `address`) VALUES
(1, 'amirul', 'amirularif@gmail.com', 'afd426e3c77e01615e25e1ba7065429dbe19dcba', '01139114460', 'perak'),
(2, 'as', 'a@gmail.com', 'afd426e3c77e01615e25e1ba7065429dbe19dcba', '023456879', 'sasasa'),
(3, 'sasas', 'asas@gmail.com', 'afd426e3c77e01615e25e1ba7065429dbe19dcba', 'sasasas', 'asasasa'),
(4, 'qwert', 'op@gmail.com', '7ed0a1bbea1b9d712d0cb2de82adbe9cae928f34', '01245789', 'klklk'),
(5, 'hujhuh', 'uhuhuh@gmail.com', 'afd426e3c77e01615e25e1ba7065429dbe19dcba', '87978978997', 'kedah');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_submissions`
--
ALTER TABLE `tbl_submissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `work_id` (`work_id`),
  ADD KEY `worker_id` (`worker_id`);

--
-- Indexes for table `tbl_works`
--
ALTER TABLE `tbl_works`
  ADD PRIMARY KEY (`id`),
  ADD KEY `assigned_to` (`assigned_to`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_submissions`
--
ALTER TABLE `tbl_submissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_works`
--
ALTER TABLE `tbl_works`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_submissions`
--
ALTER TABLE `tbl_submissions`
  ADD CONSTRAINT `tbl_submissions_ibfk_1` FOREIGN KEY (`work_id`) REFERENCES `tbl_works` (`id`),
  ADD CONSTRAINT `tbl_submissions_ibfk_2` FOREIGN KEY (`worker_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `tbl_works`
--
ALTER TABLE `tbl_works`
  ADD CONSTRAINT `tbl_works_ibfk_1` FOREIGN KEY (`assigned_to`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
