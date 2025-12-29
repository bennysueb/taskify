-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 29, 2025 at 11:32 AM
-- Server version: 8.4.3
-- PHP Version: 8.3.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `taskify`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_logs`
--

CREATE TABLE `activity_logs` (
  `id` bigint UNSIGNED NOT NULL,
  `workspace_id` bigint UNSIGNED DEFAULT NULL,
  `actor_id` bigint NOT NULL,
  `actor_type` varchar(56) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type_id` bigint NOT NULL,
  `type` varchar(56) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_type_id` bigint DEFAULT NULL,
  `parent_type` varchar(56) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `activity` varchar(56) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` varchar(512) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activity_logs`
--

INSERT INTO `activity_logs` (`id`, `workspace_id`, `actor_id`, `actor_type`, `type_id`, `type`, `parent_type_id`, `parent_type`, `activity`, `message`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'user', 1, 'status', NULL, NULL, 'created', 'Admin GMS created status Not Started', '2025-12-23 23:30:24', '2025-12-23 23:30:24'),
(2, 1, 1, 'user', 1, 'priority', NULL, NULL, 'created', 'Admin GMS created priority Low', '2025-12-23 23:33:45', '2025-12-23 23:33:45'),
(3, 1, 1, 'user', 1, 'project', NULL, NULL, 'created', 'Admin GMS created project Sampel Event Bimtek', '2025-12-23 23:34:45', '2025-12-23 23:34:45'),
(4, 1, 1, 'user', 1, 'task', 1, 'project', 'created', 'Admin GMS created task Task 1', '2025-12-23 23:35:53', '2025-12-23 23:35:53'),
(5, 1, 1, 'user', 2, 'task', 1, 'project', 'created', 'Admin GMS created task Task 2', '2025-12-23 23:36:55', '2025-12-23 23:36:55'),
(6, 1, 1, 'user', 2, 'priority', NULL, NULL, 'created', 'Admin GMS created priority Normal', '2025-12-23 23:46:38', '2025-12-23 23:46:38'),
(7, 1, 1, 'user', 3, 'priority', NULL, NULL, 'created', 'Admin GMS created priority Urgent', '2025-12-23 23:47:16', '2025-12-23 23:47:16'),
(8, 1, 1, 'user', 2, 'status', NULL, NULL, 'created', 'Admin GMS created status In Progress', '2025-12-23 23:48:32', '2025-12-23 23:48:32'),
(9, 1, 1, 'user', 3, 'status', NULL, NULL, 'created', 'Admin GMS created status On Hold', '2025-12-23 23:50:56', '2025-12-23 23:50:56'),
(10, 1, 1, 'user', 4, 'status', NULL, NULL, 'created', 'Admin GMS created status Canceled', '2025-12-23 23:51:22', '2025-12-23 23:51:22'),
(11, 1, 1, 'user', 3, 'status', NULL, NULL, 'updated', 'Admin GMS updated status On Hold', '2025-12-23 23:51:28', '2025-12-23 23:51:28'),
(12, 1, 1, 'user', 1, 'task', NULL, NULL, 'updated_status', 'Admin GMS updated task status from Not Started to In Progress', '2025-12-23 23:54:33', '2025-12-23 23:54:33'),
(13, 1, 1, 'user', 1, 'task', NULL, NULL, 'updated_status', 'Admin GMS updated task status from In Progress to On Hold', '2025-12-23 23:54:35', '2025-12-23 23:54:35'),
(14, 1, 1, 'user', 1, 'task', 1, 'project', 'created', 'Admin GMS created task Task 1', '2025-12-24 00:03:08', '2025-12-24 00:03:08'),
(15, 1, 1, 'user', 1, 'task', 1, 'project', 'created', 'Admin GMS created task Task 1_a', '2025-12-24 00:05:46', '2025-12-24 00:05:46'),
(16, 1, 1, 'user', 2, 'task', 1, 'project', 'created', 'Admin GMS created task Sub Task 1', '2025-12-24 00:13:50', '2025-12-24 00:13:50'),
(17, 1, 1, 'user', 1, 'status', NULL, NULL, 'updated', 'Admin GMS updated status Not Started', '2025-12-24 00:32:14', '2025-12-24 00:32:14'),
(18, 1, 1, 'user', 2, 'status', NULL, NULL, 'updated', 'Admin GMS updated status In Progress', '2025-12-24 00:32:23', '2025-12-24 00:32:23'),
(19, 1, 1, 'user', 3, 'status', NULL, NULL, 'updated', 'Admin GMS updated status On Hold', '2025-12-24 00:32:30', '2025-12-24 00:32:30'),
(20, 1, 1, 'user', 4, 'status', NULL, NULL, 'updated', 'Admin GMS updated status Canceled', '2025-12-24 00:32:37', '2025-12-24 00:32:37'),
(21, 1, 1, 'user', 1, 'status', NULL, NULL, 'updated', 'Admin GMS updated status Not Started', '2025-12-24 00:41:48', '2025-12-24 00:41:48'),
(22, 1, 1, 'user', 2, 'status', NULL, NULL, 'updated', 'Admin GMS updated status In Progress', '2025-12-24 00:42:03', '2025-12-24 00:42:03'),
(23, 1, 1, 'user', 4, 'status', NULL, NULL, 'updated', 'Admin GMS updated status Canceled', '2025-12-24 00:42:19', '2025-12-24 00:42:19'),
(24, 1, 1, 'user', 1, 'task', NULL, NULL, 'updated_status', 'Admin GMS updated task status from Not Started to In Progress', '2025-12-24 00:42:54', '2025-12-24 00:42:54'),
(25, 1, 1, 'user', 2, 'task', NULL, NULL, 'updated_status', 'Admin GMS updated task status from Not Started to In Progress', '2025-12-24 00:43:21', '2025-12-24 00:43:21'),
(26, 1, 1, 'user', 2, 'user', NULL, NULL, 'updated', 'Admin GMS updated user Benny Sueb', '2025-12-24 07:55:35', '2025-12-24 07:55:35');

-- --------------------------------------------------------

--
-- Table structure for table `allowances`
--

CREATE TABLE `allowances` (
  `id` bigint UNSIGNED NOT NULL,
  `workspace_id` bigint UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `allowance_payslip`
--

CREATE TABLE `allowance_payslip` (
  `id` bigint UNSIGNED NOT NULL,
  `allowance_id` bigint UNSIGNED NOT NULL,
  `payslip_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `candidates`
--

CREATE TABLE `candidates` (
  `id` bigint UNSIGNED NOT NULL,
  `job_vacancy_id` bigint UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `source` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `division_id` bigint UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `candidates`
--

INSERT INTO `candidates` (`id`, `job_vacancy_id`, `name`, `email`, `phone`, `position`, `source`, `status_id`, `created_at`, `updated_at`, `division_id`) VALUES
(2, 4, 'Febbiana Damiyah', 'febbiana80@gmail.com', '82120664105', 'Creative event concepts', 'Job Board', 3, '2025-12-28 08:50:12', '2025-12-28 08:52:19', 3);

-- --------------------------------------------------------

--
-- Table structure for table `candidate_notification`
--

CREATE TABLE `candidate_notification` (
  `id` bigint UNSIGNED NOT NULL,
  `candidate_id` bigint UNSIGNED NOT NULL,
  `notification_id` bigint UNSIGNED NOT NULL,
  `is_system` tinyint(1) NOT NULL DEFAULT '0',
  `is_push` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `candidate_notification`
--

INSERT INTO `candidate_notification` (`id`, `candidate_id`, `notification_id`, `is_system`, `is_push`, `created_at`, `updated_at`) VALUES
(3, 2, 7, 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `candidate_statuses`
--

CREATE TABLE `candidate_statuses` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int UNSIGNED NOT NULL DEFAULT '0',
  `color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'primary',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `candidate_statuses`
--

INSERT INTO `candidate_statuses` (`id`, `name`, `order`, `color`, `created_at`, `updated_at`) VALUES
(1, 'Apply', 1, 'primary', '2025-12-24 12:44:56', '2025-12-24 12:59:38'),
(2, 'Selection', 2, 'info', '2025-12-24 13:00:01', '2025-12-24 13:00:01'),
(3, 'Interview', 3, 'warning', '2025-12-24 13:00:21', '2025-12-24 13:00:21');

-- --------------------------------------------------------

--
-- Table structure for table `ch_favorites`
--

CREATE TABLE `ch_favorites` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `workspace_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint NOT NULL,
  `favorite_id` bigint NOT NULL,
  `type_id` bigint DEFAULT NULL,
  `type` varchar(28) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ch_messages`
--

CREATE TABLE `ch_messages` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `workspace_id` bigint UNSIGNED NOT NULL,
  `from_id` bigint NOT NULL,
  `to_id` bigint NOT NULL,
  `type_id` bigint DEFAULT NULL,
  `type` varchar(28) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` varchar(5000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attachment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seen` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` bigint UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_code` varchar(28) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_iso_code` varchar(28) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telegram_chat_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `doj` date DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '0',
  `lang` varchar(28) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'en',
  `remember_token` text COLLATE utf8mb4_unicode_ci,
  `email_verification_mail_sent` tinyint DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `acct_create_mail_sent` tinyint NOT NULL DEFAULT '1',
  `internal_purpose` tinyint NOT NULL DEFAULT '0',
  `default_workspace_id` bigint DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `client_meeting`
--

CREATE TABLE `client_meeting` (
  `id` bigint UNSIGNED NOT NULL,
  `meeting_id` bigint UNSIGNED NOT NULL,
  `client_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `client_notifications`
--

CREATE TABLE `client_notifications` (
  `client_id` bigint UNSIGNED NOT NULL,
  `notification_id` bigint UNSIGNED NOT NULL,
  `is_system` tinyint(1) DEFAULT '1',
  `is_push` tinyint(1) DEFAULT '0',
  `read_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `client_project`
--

CREATE TABLE `client_project` (
  `id` bigint UNSIGNED NOT NULL,
  `project_id` bigint UNSIGNED NOT NULL,
  `client_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `client_workspace`
--

CREATE TABLE `client_workspace` (
  `id` bigint UNSIGNED NOT NULL,
  `workspace_id` bigint UNSIGNED NOT NULL,
  `client_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint UNSIGNED NOT NULL,
  `parent_id` bigint UNSIGNED DEFAULT NULL,
  `commenter_id` bigint UNSIGNED DEFAULT NULL,
  `commenter_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'App\\Models\\User',
  `commentable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `commentable_id` bigint UNSIGNED NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `comment_attachments`
--

CREATE TABLE `comment_attachments` (
  `id` bigint UNSIGNED NOT NULL,
  `comment_id` bigint UNSIGNED NOT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contracts`
--

CREATE TABLE `contracts` (
  `id` bigint UNSIGNED NOT NULL,
  `workspace_id` bigint UNSIGNED NOT NULL,
  `project_id` bigint UNSIGNED DEFAULT NULL,
  `client_id` bigint UNSIGNED DEFAULT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contract_type_id` bigint UNSIGNED NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `promisor_sign` text COLLATE utf8mb4_unicode_ci,
  `promisee_sign` text COLLATE utf8mb4_unicode_ci,
  `signed_pdf` text COLLATE utf8mb4_unicode_ci,
  `created_by` varchar(56) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `division_id` bigint UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contract_types`
--

CREATE TABLE `contract_types` (
  `id` bigint UNSIGNED NOT NULL,
  `workspace_id` bigint UNSIGNED DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `custom_fieldables`
--

CREATE TABLE `custom_fieldables` (
  `id` bigint UNSIGNED NOT NULL,
  `custom_field_id` bigint UNSIGNED NOT NULL,
  `custom_fieldable_id` bigint UNSIGNED NOT NULL,
  `custom_fieldable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `custom_fieldables`
--

INSERT INTO `custom_fieldables` (`id`, `custom_field_id`, `custom_fieldable_id`, `custom_fieldable_type`, `value`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'App\\Models\\Candidate', 'Field Label 1', '2025-12-24 12:38:15', '2025-12-24 12:38:15'),
(2, 2, 1, 'App\\Models\\Candidate', '22', '2025-12-24 12:38:15', '2025-12-24 12:38:15'),
(3, 1, 2, 'App\\Models\\Candidate', 'Field Label Additional Information', '2025-12-28 08:50:12', '2025-12-28 08:50:12'),
(4, 2, 2, 'App\\Models\\Candidate', '10', '2025-12-28 08:50:12', '2025-12-28 08:50:12');

-- --------------------------------------------------------

--
-- Table structure for table `custom_fields`
--

CREATE TABLE `custom_fields` (
  `id` bigint UNSIGNED NOT NULL,
  `module` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `field_label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `field_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guide_text` text COLLATE utf8mb4_unicode_ci,
  `options` text COLLATE utf8mb4_unicode_ci,
  `required` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `visibility` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `custom_fields`
--

INSERT INTO `custom_fields` (`id`, `module`, `field_label`, `name`, `field_type`, `guide_text`, `options`, `required`, `visibility`, `created_at`, `updated_at`) VALUES
(1, 'candidate', 'Field Label', '', 'text', NULL, NULL, '1', '1', '2025-12-24 12:27:27', '2025-12-24 12:27:27'),
(2, 'candidate', 'Field Label', '', 'number', NULL, NULL, '1', '1', '2025-12-24 12:28:31', '2025-12-24 12:29:04');

-- --------------------------------------------------------

--
-- Table structure for table `deductions`
--

CREATE TABLE `deductions` (
  `id` bigint UNSIGNED NOT NULL,
  `workspace_id` bigint UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'amount',
  `percentage` double DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `deduction_payslip`
--

CREATE TABLE `deduction_payslip` (
  `id` bigint UNSIGNED NOT NULL,
  `deduction_id` bigint UNSIGNED NOT NULL,
  `payslip_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `divisions`
--

CREATE TABLE `divisions` (
  `id` bigint UNSIGNED NOT NULL,
  `workspace_id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `divisions`
--

INSERT INTO `divisions` (`id`, `workspace_id`, `title`, `created_at`, `updated_at`) VALUES
(1, 1, 'Owner', '2025-12-24 06:42:36', '2025-12-24 06:43:33'),
(2, 1, 'Admin', '2025-12-24 06:43:09', '2025-12-24 06:43:51'),
(3, 1, 'Kreatif', '2025-12-24 06:44:01', '2025-12-24 06:44:01'),
(4, 1, 'IP', '2025-12-24 06:44:07', '2025-12-24 06:44:07'),
(5, 1, 'GVT', '2025-12-24 06:44:57', '2025-12-24 06:45:08');

-- --------------------------------------------------------

--
-- Table structure for table `email_templates`
--

CREATE TABLE `email_templates` (
  `id` bigint UNSIGNED NOT NULL,
  `workspace_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `placeholders` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ;

-- --------------------------------------------------------

--
-- Table structure for table `estimates_invoices`
--

CREATE TABLE `estimates_invoices` (
  `id` bigint UNSIGNED NOT NULL,
  `workspace_id` bigint UNSIGNED NOT NULL,
  `client_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_code` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` longtext COLLATE utf8mb4_unicode_ci,
  `personal_note` longtext COLLATE utf8mb4_unicode_ci,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  `total` double NOT NULL,
  `tax_amount` double DEFAULT NULL,
  `final_total` double NOT NULL,
  `created_by` varchar(56) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `estimates_invoice_item`
--

CREATE TABLE `estimates_invoice_item` (
  `id` bigint UNSIGNED NOT NULL,
  `item_id` bigint UNSIGNED NOT NULL,
  `estimates_invoice_id` bigint UNSIGNED NOT NULL,
  `qty` double NOT NULL,
  `unit_id` bigint DEFAULT NULL,
  `rate` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_id` bigint DEFAULT NULL,
  `amount` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `id` bigint UNSIGNED NOT NULL,
  `workspace_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expense_type_id` bigint UNSIGNED NOT NULL,
  `amount` double NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `expense_date` date NOT NULL,
  `created_by` varchar(56) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `expense_types`
--

CREATE TABLE `expense_types` (
  `id` bigint UNSIGNED NOT NULL,
  `workspace_id` bigint UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `favorites`
--

CREATE TABLE `favorites` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `client_id` bigint UNSIGNED DEFAULT NULL,
  `favoritable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `favoritable_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fcm_tokens`
--

CREATE TABLE `fcm_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `client_id` bigint UNSIGNED DEFAULT NULL,
  `fcm_token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `interviews`
--

CREATE TABLE `interviews` (
  `id` bigint UNSIGNED NOT NULL,
  `candidate_id` bigint UNSIGNED NOT NULL,
  `interviewer_id` bigint UNSIGNED NOT NULL,
  `round` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `scheduled_at` datetime NOT NULL,
  `mode` enum('online','offline') COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('scheduled','completed','cancelled') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'scheduled',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `interviews`
--

INSERT INTO `interviews` (`id`, `candidate_id`, `interviewer_id`, `round`, `scheduled_at`, `mode`, `location`, `status`, `created_at`, `updated_at`) VALUES
(3, 2, 2, 'Technical', '2026-01-03 22:52:00', 'online', 'https://www.google.com/search?q=Event+Creative+Concept&oq=Event+Creative+Concept&gs_lcrp=EgZjaHJvbWUyBggAEEUYOTIHCAEQIRiPAtIBBzI2OWowajeoAgCwAgA&sourceid=chrome&ie=UTF-8', 'scheduled', '2025-12-28 08:52:56', '2025-12-28 08:52:56');

-- --------------------------------------------------------

--
-- Table structure for table `inventory_categories`
--

CREATE TABLE `inventory_categories` (
  `id` bigint UNSIGNED NOT NULL,
  `workspace_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'primary',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `inventory_categories`
--

INSERT INTO `inventory_categories` (`id`, `workspace_id`, `name`, `description`, `color`, `created_at`, `updated_at`) VALUES
(1, 1, 'Laptop', NULL, 'primary', '2025-12-29 03:23:24', '2025-12-29 03:23:24');

-- --------------------------------------------------------

--
-- Table structure for table `inventory_items`
--

CREATE TABLE `inventory_items` (
  `id` bigint UNSIGNED NOT NULL,
  `workspace_id` bigint UNSIGNED NOT NULL,
  `category_id` bigint UNSIGNED DEFAULT NULL,
  `ownership_type` enum('office','user') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'office',
  `owner_user_id` bigint UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sku` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `quantity` decimal(10,2) NOT NULL DEFAULT '0.00',
  `condition` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'good',
  `unit` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pcs',
  `price_purchase` decimal(15,2) NOT NULL DEFAULT '0.00',
  `price_sale` decimal(15,2) NOT NULL DEFAULT '0.00',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `inventory_items`
--

INSERT INTO `inventory_items` (`id`, `workspace_id`, `category_id`, `ownership_type`, `owner_user_id`, `name`, `sku`, `description`, `quantity`, `condition`, `unit`, `price_purchase`, `price_sale`, `image`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'user', 2, 'Laptop Asus ROG', NULL, NULL, 1.00, 'good', 'unit', 35000000.00, 0.00, NULL, '2025-12-29 04:23:49', '2025-12-29 04:25:09');

-- --------------------------------------------------------

--
-- Table structure for table `inventory_transactions`
--

CREATE TABLE `inventory_transactions` (
  `id` bigint UNSIGNED NOT NULL,
  `workspace_id` bigint UNSIGNED NOT NULL,
  `item_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `type` enum('IN','OUT','ADJUSTMENT') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'IN',
  `quantity` decimal(10,2) NOT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `inventory_transactions`
--

INSERT INTO `inventory_transactions` (`id`, `workspace_id`, `item_id`, `user_id`, `type`, `quantity`, `notes`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 'IN', 1.00, 'Initial stock on creation', '2025-12-29 04:23:49', '2025-12-29 04:23:49');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` bigint UNSIGNED NOT NULL,
  `workspace_id` bigint UNSIGNED NOT NULL,
  `unit_id` bigint UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_vacancies`
--

CREATE TABLE `job_vacancies` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `workspace_id` bigint UNSIGNED NOT NULL,
  `division_id` bigint UNSIGNED DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` text COLLATE utf8mb4_unicode_ci,
  `requirements` longtext COLLATE utf8mb4_unicode_ci,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Full Time',
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'draft',
  `apply_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_vacancies`
--

INSERT INTO `job_vacancies` (`id`, `title`, `slug`, `workspace_id`, `division_id`, `description`, `short_description`, `requirements`, `location`, `type`, `start_date`, `end_date`, `status`, `apply_link`, `created_at`, `updated_at`) VALUES
(4, 'Creative event concepts', 'creative-event-concepts', 1, 3, '<p>Description&nbsp;<span class=\"text-danger\">*</span>Description&nbsp;<span class=\"text-danger\">*</span>Description&nbsp;<span class=\"text-danger\">*</span>Description&nbsp;<span class=\"text-danger\">*</span>Description&nbsp;<span class=\"text-danger\">*</span></p>', 'Short Description', '<p>RequirementsRequirementsRequirementsRequirementsRequirementsRequirements</p>', 'Depok Jawa Barat', 'Full Time', '2026-01-01', '2026-01-03', 'active', NULL, '2025-12-24 12:21:53', '2025-12-28 08:43:13');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `name`, `code`, `created_at`, `updated_at`) VALUES
(4, 'English', 'en', '2023-06-29 09:37:47', '2023-06-29 09:37:47'),
(30, 'Hindi', 'hn', '2024-04-09 04:12:36', '2024-04-09 04:12:36'),
(31, 'Amharic', 'am', '2024-04-10 01:32:04', '2024-04-10 01:32:04'),
(32, 'Korean', 'ko', '2024-04-10 04:00:08', '2024-04-10 04:00:08'),
(33, 'Vietnamese', 'vn', '2024-04-10 04:45:26', '2024-04-10 04:45:26'),
(34, 'Portuguese', 'pt', '2024-04-10 23:11:05', '2024-04-10 23:11:05'),
(35, 'Español', 'es', '2024-04-11 05:03:18', '2024-04-11 05:03:18'),
(36, 'Français', 'fr', '2024-04-11 05:07:52', '2024-04-11 05:07:52'),
(37, 'Arabic', 'ar', '2024-04-11 05:37:27', '2024-04-11 05:37:27'),
(38, 'Dutch', 'nl', '2024-04-11 05:44:31', '2024-04-11 05:44:31'),
(39, 'Turkish', 'tr', '2024-04-11 05:52:41', '2024-04-11 05:52:41'),
(40, 'Indonesia', 'Ina', '2024-04-11 05:57:20', '2024-04-11 05:57:20'),
(41, 'Thai', 'TH', '2024-04-11 06:01:59', '2024-04-11 06:01:59'),
(42, 'Hrvatski', 'hr', '2024-04-11 06:06:25', '2024-04-11 06:06:25'),
(43, 'Italian', 'it', '2024-04-11 06:16:08', '2024-04-11 06:16:08');

-- --------------------------------------------------------

--
-- Table structure for table `leads`
--

CREATE TABLE `leads` (
  `id` bigint UNSIGNED NOT NULL,
  `lead_form_id` bigint UNSIGNED DEFAULT NULL,
  `workspace_id` bigint UNSIGNED DEFAULT NULL,
  `assigned_to` bigint UNSIGNED DEFAULT NULL,
  `custom_fields` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `source_id` bigint UNSIGNED DEFAULT NULL,
  `stage_id` bigint UNSIGNED DEFAULT NULL,
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `job_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `industry` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pinterest` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `country_iso_code` char(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_code` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_converted` tinyint(1) NOT NULL DEFAULT '0',
  `converted_at` timestamp NULL DEFAULT NULL
) ;

-- --------------------------------------------------------

--
-- Table structure for table `lead_follow_ups`
--

CREATE TABLE `lead_follow_ups` (
  `id` bigint UNSIGNED NOT NULL,
  `lead_id` bigint UNSIGNED NOT NULL,
  `assigned_to` bigint UNSIGNED DEFAULT NULL,
  `follow_up_at` datetime NOT NULL,
  `type` enum('call','email','meeting','sms','other') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('pending','completed','rescheduled') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `note` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lead_forms`
--

CREATE TABLE `lead_forms` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_by` bigint UNSIGNED NOT NULL,
  `workspace_id` bigint UNSIGNED NOT NULL,
  `source_id` bigint UNSIGNED NOT NULL,
  `stage_id` bigint UNSIGNED NOT NULL,
  `assigned_to` bigint UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lead_form_fields`
--

CREATE TABLE `lead_form_fields` (
  `id` bigint UNSIGNED NOT NULL,
  `form_id` bigint UNSIGNED NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_required` tinyint(1) NOT NULL DEFAULT '0',
  `is_mapped` tinyint(1) NOT NULL DEFAULT '0',
  `options` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `placeholder` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int NOT NULL DEFAULT '0',
  `validation_rules` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ;

-- --------------------------------------------------------

--
-- Table structure for table `lead_sources`
--

CREATE TABLE `lead_sources` (
  `id` bigint UNSIGNED NOT NULL,
  `workspace_id` bigint UNSIGNED DEFAULT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lead_stages`
--

CREATE TABLE `lead_stages` (
  `id` bigint UNSIGNED NOT NULL,
  `workspace_id` bigint UNSIGNED DEFAULT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int UNSIGNED NOT NULL DEFAULT '0',
  `color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'primary',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `leave_editors`
--

CREATE TABLE `leave_editors` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `leave_requests`
--

CREATE TABLE `leave_requests` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `workspace_id` bigint UNSIGNED NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  `from_time` time DEFAULT NULL,
  `to_time` time DEFAULT NULL,
  `reason` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('pending','approved','rejected') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `visible_to_all` tinyint NOT NULL DEFAULT '0',
  `action_by` bigint UNSIGNED DEFAULT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci COMMENT 'For admin and leave editor',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `leave_request_visibility`
--

CREATE TABLE `leave_request_visibility` (
  `id` bigint UNSIGNED NOT NULL,
  `leave_request_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `letters`
--

CREATE TABLE `letters` (
  `id` bigint UNSIGNED NOT NULL,
  `workspace_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `template_id` bigint UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `letter_date` date NOT NULL,
  `metadata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `created_by` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ;

-- --------------------------------------------------------

--
-- Table structure for table `letter_templates`
--

CREATE TABLE `letter_templates` (
  `id` bigint UNSIGNED NOT NULL,
  `workspace_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `letter_variables`
--

CREATE TABLE `letter_variables` (
  `id` bigint UNSIGNED NOT NULL,
  `workspace_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'text',
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collection_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mime_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `conversions_disk` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` bigint UNSIGNED NOT NULL,
  `manipulations` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `custom_properties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `generated_conversions` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `responsive_images` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `order_column` int UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `custom_properties`, `generated_conversions`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES
(2, 'App\\Models\\Candidate', 2, '54d9cf3d-8fcd-4284-b731-36b0d9bf4574', 'candidate-media', 'Permenperin No. 21 Tahun 2025', 'Permenperin-No.-21-Tahun-2025.pdf', 'application/pdf', 'public', 'public', 8403829, '[]', '[]', '[]', '[]', 1, '2025-12-28 08:50:12', '2025-12-28 08:50:12');

-- --------------------------------------------------------

--
-- Table structure for table `meetings`
--

CREATE TABLE `meetings` (
  `id` bigint UNSIGNED NOT NULL,
  `workspace_id` bigint UNSIGNED NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date_time` timestamp NULL DEFAULT NULL,
  `end_date_time` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `meeting_user`
--

CREATE TABLE `meeting_user` (
  `id` bigint UNSIGNED NOT NULL,
  `meeting_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menu_orders`
--

CREATE TABLE `menu_orders` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `client_id` bigint UNSIGNED DEFAULT NULL,
  `menu_order` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ;

--
-- Dumping data for table `menu_orders`
--

INSERT INTO `menu_orders` (`id`, `user_id`, `client_id`, `menu_order`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, '[{\"category\":\"dashboard\",\"menus\":[{\"id\":\"dashboard\"}]},{\"category\":\"projects_and_task_management\",\"menus\":[{\"id\":\"projects\",\"submenus\":[{\"id\":\"manage_projects\"},{\"id\":\"favorite_projects\"},{\"id\":\"projects_bulk_upload\"},{\"id\":\"tags\"},{\"id\":\"task-lists\"}]},{\"id\":\"tasks\",\"submenus\":[{\"id\":\"manage_tasks\"},{\"id\":\"favorite_tasks\"},{\"id\":\"tasks_bulk_upload\"}]},{\"id\":\"statuses\"},{\"id\":\"priorities\"}]},{\"category\":\"team\",\"menus\":[{\"id\":\"workspaces\"},{\"id\":\"chat\"},{\"id\":\"users\"},{\"id\":\"clients\"}]},{\"category\":\"utilities\",\"menus\":[{\"id\":\"leads_management\",\"submenus\":[{\"id\":\"lead_sources\"},{\"id\":\"lead_stages\"},{\"id\":\"leads\"},{\"id\":\"lead_bulk_upload\"},{\"id\":\"lead_forms\"}]},{\"id\":\"email\",\"submenus\":[{\"id\":\"email_history\"},{\"id\":\"email_templates\"}]},{\"id\":\"todos\"},{\"id\":\"meetings\"},{\"id\":\"reports\",\"submenus\":[{\"id\":\"projects_report\"},{\"id\":\"tasks_report\"},{\"id\":\"estimates_invoices_report\"},{\"id\":\"income_vs_expense\"},{\"id\":\"leaves\"}]},{\"id\":\"hrms\",\"submenus\":[{\"id\":\"job_vacancies\"},{\"id\":\"candidates\"},{\"id\":\"candidates_status\"},{\"id\":\"interviews\"},{\"id\":\"divisions\"}]},{\"id\":\"notes\"},{\"id\":\"leave_requests\"},{\"id\":\"activity_log\"},{\"id\":\"calendars\",\"submenus\":[{\"id\":\"holiday_calendar\"}]},{\"id\":\"password_manager\"},{\"id\":\"general_file_manager\"}]},{\"category\":\"finance\",\"menus\":[{\"id\":\"contracts\",\"submenus\":[{\"id\":\"manage_contracts\"},{\"id\":\"contract_types\"}]},{\"id\":\"payslips\",\"submenus\":[{\"id\":\"manage_payslips\"},{\"id\":\"allowances\"},{\"id\":\"deductions\"}]},{\"id\":\"finance\",\"submenus\":[{\"id\":\"expenses\"},{\"id\":\"expense_types\"},{\"id\":\"estimates_invoices\"},{\"id\":\"payments\"},{\"id\":\"payment_methods\"},{\"id\":\"taxes\"},{\"id\":\"units\"},{\"id\":\"items\"}]}]},{\"category\":\"settings\",\"menus\":[{\"id\":\"settings\",\"submenus\":[{\"id\":\"general\"},{\"id\":\"company\"},{\"id\":\"custom_fields\"},{\"id\":\"security\"},{\"id\":\"permissions\"},{\"id\":\"languages\"},{\"id\":\"email\"},{\"id\":\"ai_model_settings\"},{\"id\":\"sms_gateway\"},{\"id\":\"google_calendar\"},{\"id\":\"pusher\"},{\"id\":\"media_storage\"},{\"id\":\"notification_templates\"},{\"id\":\"privacy_policy\"},{\"id\":\"plugins\"},{\"id\":\"system_updater\"},{\"id\":\"pwa\"}]}]}]', '2025-12-29 10:33:24', '2025-12-29 10:33:24');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_01_05_044027_create_clients_table', 2),
(6, '2023_01_09_041709_create_projects_table', 3),
(7, '2023_01_12_095035_create_tasks_table', 4),
(8, '2023_01_25_061517_create_project_user_table', 5),
(9, '2023_01_27_044336_create_project_client_table', 6),
(10, '2023_01_30_050742_create_task_user_table', 7),
(11, '2023_01_30_060853_create_task_user_table', 8),
(12, '2023_03_02_051733_create_todo_table', 9),
(13, '2023_03_06_043616_create_status_table', 9),
(14, '2023_03_14_045106_create_permission_tables', 10),
(15, '2023_06_14_074411_create_settings_table', 11),
(16, '2023_06_15_074941_create_meetings_table', 12),
(19, '2023_06_15_073618_create_meeting_users_table', 13),
(21, '2023_06_15_074054_create_meeting_clients_table', 14),
(22, '2023_06_15_111007_create_meetings_table', 15),
(23, '2023_06_15_121717_create_meeting_user_table', 16),
(24, '2023_06_15_121752_create_client_meeting_table', 16),
(25, '2023_06_16_999999_add_active_status_to_users', 17),
(26, '2023_06_16_999999_add_avatar_to_users', 17),
(27, '2023_06_16_999999_add_dark_mode_to_users', 17),
(28, '2023_06_16_999999_add_messenger_color_to_users', 17),
(29, '2023_06_16_999999_create_chatify_favorites_table', 17),
(30, '2023_06_16_999999_create_chatify_messages_table', 17),
(34, '2023_06_16_132714_create_workspaces_table', 18),
(36, '2023_06_16_133749_create_workspace_client_table', 18),
(37, '2023_06_16_133505_create_workspace_user_table', 19),
(39, '2023_06_19_100748_alter_projects_table_add_column_workspace_id', 20),
(40, '2023_06_19_111816_alter_projects_table_add_column_created_by', 21),
(41, '2023_06_19_124749_alter_tasks_table_add_columns', 22),
(42, '2023_06_19_134537_alter_meeting_and_todo_tables_add_columns', 23),
(44, '2023_06_20_152434_alter_ch_messages_add_column_workspace_id', 24),
(45, '2023_06_24_162358_alter_ch_messages_add_column_workspace_id', 25),
(46, '2023_06_28_101921_alter_ch_favorites_table_add_column_workspace_id', 25),
(47, '2023_06_29_105758_create_languages_table', 26),
(48, '2023_08_22_124156_create_tags_table', 27),
(49, '2023_08_22_175355_create_project_tags_table', 28),
(50, '2023_08_22_180431_create_project_tag_table', 29),
(51, '2023_08_22_181203_create_project_tag_table', 30),
(52, '2023_08_24_050550_create_project_tag_table', 31),
(53, '2023_09_11_140028_create_todos_table', 32),
(54, '2023_09_11_085224_create_todos_table', 33),
(55, '2023_09_19_063727_create_leave_requests_table', 34),
(56, '2023_09_19_134017_create_leave_editors_table', 35),
(59, '2023_09_20_124013_create_contract_types_table', 36),
(60, '2023_09_20_123424_create_contracts_table', 37),
(61, '2023_09_25_084705_create_payment_methods_table', 38),
(62, '2023_09_25_070729_create_payslips_table', 39),
(63, '2023_09_25_094532_create_allowances_table', 40),
(64, '2023_09_25_094632_create_deductions_table', 40),
(65, '2023_09_27_124345_create_allowance_payslip_table', 41),
(66, '2023_09_27_124747_create_deduction_payslip_table', 41),
(67, '2023_09_29_131131_create_notes_table', 42),
(68, '2023_10_03_115025_create_updates_table', 43),
(69, '2023_10_03_115438_create_updates_table', 44),
(70, '2023_12_18_100056_create_time_trackers_table', 45),
(71, '2023_12_19_044413_create_time_trackers_table', 46),
(74, '2023_12_19_065522_create_time_trackers_table', 47),
(75, '2024_01_17_121328_create_media_table', 48),
(76, '2024_01_24_135513_create_activity_logs_table', 49),
(77, '2024_01_29_135126_create_taxes_table', 50),
(78, '2024_01_30_070848_create_units_table', 51),
(79, '2024_01_31_045129_create_items_table', 52),
(80, '2024_02_02_142029_create_estimates_invoices_table', 53),
(81, '2024_02_02_162343_create_estimates_invoice_item_table', 53),
(82, '2024_02_12_093738_create_expense_types_table', 54),
(83, '2024_02_12_094118_create_expenses_table', 54),
(84, '2024_02_16_043457_create_payments_table', 55),
(85, '2024_02_26_101512_create_milestones_table', 56),
(87, '2024_03_05_074505_create_notifications_table', 57),
(88, '2024_03_05_092120_create_client_notifications_table', 57),
(89, '2024_03_05_092139_create_notification_user_table', 57),
(91, '2024_03_11_120312_create_templates_table', 58),
(93, '2024_04_13_142557_create_priorities_table', 59),
(95, '2024_04_29_122911_create_role_status_table', 60),
(96, '2024_05_02_074714_create_leave_request_visibility_table', 61),
(98, '2024_05_17_054155_create_user_client_preferences_table', 62),
(100, '2024_10_09_050915_create_menu_orders_table', 63),
(101, '2024_10_21_132437_create_fcm_tokens_table', 64),
(103, '2024_08_09_100000_create_comments_table', 66),
(104, '2024_08_09_090054_create_comment_attachments_table', 67),
(105, '2024_11_28_055136_create_favorites_table', 68),
(106, '2024_11_30_044132_create_pinned_table', 69),
(107, '2025_01_24_042906_create_status_timelines_table', 70),
(108, '2025_01_25_055631_create_reminders_table', 71),
(109, '2025_01_16_085659_create_recuring_tasks', 72),
(110, '2025_02_11_053441_add_parent_id_to_tasks_table', 73),
(111, '2025_02_12_041617_add_time_entry_switch_to_projects_table', 74),
(112, '2025_02_12_060404_add_task_completion_percentage_to_tasks_table', 75),
(113, '2025_02_12_063159_create_task_lists_table', 76),
(114, '2025_02_12_064430_add_billing_type_to_tasks_table', 77),
(115, '2025_02_12_073313_create_tasks_time_entries', 78),
(116, '2025_03_22_142031_add_drawing_fields_to_notes_table', 79),
(119, '2025_04_18_112754_create_leads_table', 82),
(120, '2025_04_23_060440_create_lead_follow_ups_table', 83),
(123, '2025_04_26_060116_create_email_templates', 84),
(124, '2025_04_26_060254_create_scheduled_emails', 85),
(125, '2025_04_28_114140_create_custom_fields_table', 86),
(126, '2025_04_29_102352_add_is_converted_to_leads_table', 87),
(127, '2025_05_01_035845_create_candidate_statuses_table', 88),
(128, '2025_05_01_040103_create_interview_table', 89),
(129, '2025_05_01_055823_create_candidate_notification_table', 90),
(130, '2025_05_01_035955_create_candidate_table', 91),
(131, '2025_04_17_124915_create_lead_sources', 92),
(132, '2025_04_17_125219_create_lead_stages_table', 93),
(133, '2025_06_13_084602_create_lead_forms_table', 94),
(134, '2025_06_13_091415_create_lead_form_fields_table', 95),
(135, '2025_06_13_102308_add_custom_fields_to_leads_table', 96),
(201, '2025_12_23_092639_add_telegram_chat_id_to_users_and_clients_table', 97),
(202, '2025_12_24_071712_add_type_to_status_table', 98),
(203, '2025_12_24_101022_add_user_id_to_contracts_table', 99),
(204, '2025_12_24_101856_make_client_id_nullable_in_contracts_table', 100),
(205, '2025_12_24_103436_create_divisions_table', 101),
(206, '2025_12_24_103454_add_division_id_to_multiple_tables', 102),
(207, '2025_12_24_185158_create_job_vacancies_table', 103),
(208, '2025_12_24_185159_add_job_vacancy_id_to_candidates_table', 104),
(209, '2025_01_01_000000_create_password_managers_table', 105),
(210, '2025_01_02_000000_create_inventory_management_tables', 106),
(211, '2025_12_29_105450_add_fields_to_inventory_items_table', 107);

-- --------------------------------------------------------

--
-- Table structure for table `milestones`
--

CREATE TABLE `milestones` (
  `id` bigint UNSIGNED NOT NULL,
  `workspace_id` bigint UNSIGNED NOT NULL,
  `project_id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `cost` double NOT NULL,
  `progress` double NOT NULL DEFAULT '0',
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `created_by` varchar(56) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 2);

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

CREATE TABLE `notes` (
  `id` bigint UNSIGNED NOT NULL,
  `note_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'text',
  `workspace_id` bigint UNSIGNED NOT NULL,
  `creator_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `drawing_data` longtext COLLATE utf8mb4_unicode_ci,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` bigint UNSIGNED NOT NULL,
  `workspace_id` bigint UNSIGNED NOT NULL,
  `from_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type_id` bigint UNSIGNED DEFAULT NULL,
  `action` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `workspace_id`, `from_id`, `type`, `type_id`, `action`, `title`, `message`, `created_at`, `updated_at`) VALUES
(1, 1, 'u_1', 'project', 1, 'assigned', 'Project Assignment', 'Admin GMS assigned you new project: Sampel Event Bimtek, ID:#1.', '2025-12-23 23:34:45', '2025-12-23 23:34:45'),
(2, 1, 'u_1', 'task', 1, 'assigned', 'Task Assignment', 'Admin GMS assigned you new task: Task 1, ID:#1.', '2025-12-24 00:03:08', '2025-12-24 00:03:08'),
(3, 1, 'u_1', 'task', 1, 'assigned', 'Task Assignment', 'Admin GMS assigned you new task: Task 1_a, ID:#1.', '2025-12-24 00:05:46', '2025-12-24 00:05:46'),
(4, 1, 'u_1', 'task', 1, 'status_updated', 'Status Updation of a Task', 'Admin GMS has updated the status of task Task 1_a, ID:#1, from Not Started to In Progress.', '2025-12-24 00:42:54', '2025-12-24 00:42:54'),
(5, 1, 'u_1', 'interview_assignment', 1, 'update', 'New Interview_assignment Assigned', 'Admin GMS from Taskify has scheduled a new interview for Febbiana Damiyah. Interview ID: #1, Round: Technical, Scheduled at: 2025-12-26T03:02, Interviewer: Benny Sueb.', '2025-12-24 13:04:08', '2025-12-24 13:04:08'),
(6, 1, 'u_1', 'interview_assignment', 2, 'update', 'New Interview_assignment Assigned', 'Admin GMS from Taskify has scheduled a new interview for Febbiana Damiyah. Interview ID: #2, Round: Technicalsss, Scheduled at: 2025-12-27T04:34, Interviewer: Benny Sueb.', '2025-12-24 14:34:42', '2025-12-24 14:34:42'),
(7, 1, 'u_1', 'interview_assignment', 3, 'update', 'New Interview_assignment Assigned', 'Admin GMS from Taskify has scheduled a new interview for Febbiana Damiyah. Interview ID: #3, Round: Technical, Scheduled at: 2026-01-03T22:52, Interviewer: Benny Sueb.', '2025-12-28 08:52:56', '2025-12-28 08:52:56');

-- --------------------------------------------------------

--
-- Table structure for table `notification_user`
--

CREATE TABLE `notification_user` (
  `user_id` bigint UNSIGNED NOT NULL,
  `notification_id` bigint UNSIGNED NOT NULL,
  `is_system` tinyint(1) DEFAULT '1',
  `is_push` tinyint(1) DEFAULT '0',
  `read_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notification_user`
--

INSERT INTO `notification_user` (`user_id`, `notification_id`, `is_system`, `is_push`, `read_at`) VALUES
(2, 5, 1, 1, NULL),
(2, 6, 1, 1, NULL),
(2, 7, 1, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_managers`
--

CREATE TABLE `password_managers` (
  `id` bigint UNSIGNED NOT NULL,
  `workspace_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_managers`
--

INSERT INTO `password_managers` (`id`, `workspace_id`, `user_id`, `title`, `username`, `password`, `url`, `description`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Gmail GMS', 'gmsconsolidate@gmail.com', 'eyJpdiI6Ik00YXBxajl5SmhFNGp6UXBmU3Zzb3c9PSIsInZhbHVlIjoiWFJBaUUxemtzeXlkbHplK1JsdWZkbWhmeWowaFV3SkZnS0FITTNwZElWMD0iLCJtYWMiOiIyNzkzODI4Njg0MTMxYzQ3YmVkOGFmMGU5ZTU0MTM4NmQxMzNmOWY3ZThmNGVhZDk3NWYxM2Q2OTA0ZDhhYTU0IiwidGFnIjoiIn0=', 'https://mail.google.com/', 'Akun Gmail GMS', '2025-12-29 01:53:29', '2025-12-29 01:53:29');

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
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint UNSIGNED NOT NULL,
  `workspace_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `invoice_id` bigint UNSIGNED DEFAULT NULL,
  `payment_method_id` bigint UNSIGNED DEFAULT NULL,
  `amount` double NOT NULL,
  `payment_date` date NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `created_by` varchar(56) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_methods`
--

CREATE TABLE `payment_methods` (
  `id` bigint UNSIGNED NOT NULL,
  `workspace_id` bigint UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payslips`
--

CREATE TABLE `payslips` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `workspace_id` bigint UNSIGNED NOT NULL,
  `payment_method_id` bigint UNSIGNED DEFAULT NULL,
  `month` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `working_days` double NOT NULL,
  `lop_days` double NOT NULL,
  `paid_days` double NOT NULL,
  `basic_salary` double NOT NULL,
  `leave_deduction` double NOT NULL,
  `ot_hours` double NOT NULL DEFAULT '0',
  `ot_rate` double NOT NULL DEFAULT '0',
  `ot_payment` double NOT NULL DEFAULT '0',
  `total_allowance` double NOT NULL DEFAULT '0',
  `incentives` double NOT NULL DEFAULT '0',
  `bonus` double NOT NULL DEFAULT '0',
  `total_earnings` double NOT NULL,
  `total_deductions` double NOT NULL DEFAULT '0',
  `net_pay` double NOT NULL,
  `payment_date` timestamp NULL DEFAULT NULL,
  `status` tinyint NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `created_by` varchar(56) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `division_id` bigint UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'edit_tasks', 'web', '2023-03-14 00:32:57', '2023-03-14 00:32:57'),
(3, 'delete_tasks', 'web', '2023-03-14 01:09:18', '2023-03-14 01:09:18'),
(4, 'edit_projects', 'web', '2023-03-14 03:22:52', '2023-03-14 03:22:52'),
(5, 'delete_projects', 'web', '2023-03-14 03:23:43', '2023-03-14 03:23:43'),
(6, 'edit_clients', 'web', '2023-03-14 03:23:53', '2023-03-14 03:23:53'),
(7, 'delete_clients', 'web', '2023-03-14 03:24:01', '2023-03-14 03:24:01'),
(8, 'create_projects', 'web', '2023-03-14 23:12:29', '2023-03-14 23:12:29'),
(9, 'create_tasks', 'web', '2023-03-14 23:12:34', '2023-03-14 23:12:34'),
(10, 'create_clients', 'web', '2023-03-14 23:12:38', '2023-03-14 23:12:38'),
(11, 'edit_users', 'web', '2023-03-17 00:51:15', '2023-03-17 00:51:15'),
(12, 'delete_users', 'web', '2023-03-17 00:57:41', '2023-03-17 00:57:41'),
(13, 'manage_users', 'web', '2023-03-27 00:04:49', '2023-03-27 00:04:49'),
(14, 'manage_projects', 'web', '2023-03-27 00:04:54', '2023-03-27 00:04:54'),
(15, 'manage_tasks', 'web', '2023-03-27 00:04:58', '2023-03-27 00:04:58'),
(16, 'manage_clients', 'web', '2023-03-27 00:05:02', '2023-03-27 00:05:02'),
(17, 'create_users', 'web', '2023-03-27 00:19:25', '2023-03-27 00:19:25'),
(22, 'create_workspaces', 'web', '2023-08-12 10:48:04', '2023-08-12 10:48:04'),
(23, 'manage_workspaces', 'web', '2023-08-12 10:48:04', '2023-08-12 10:48:04'),
(24, 'edit_workspaces', 'web', '2023-08-12 10:48:04', '2023-08-12 10:48:04'),
(25, 'delete_workspaces', 'web', '2023-08-12 10:48:04', '2023-08-12 10:48:04'),
(26, 'create_meetings', 'web', '2023-08-12 10:50:22', '2023-08-12 10:50:22'),
(27, 'manage_meetings', 'web', '2023-08-12 10:50:22', '2023-08-12 10:50:22'),
(28, 'edit_meetings', 'web', '2023-08-12 10:50:22', '2023-08-12 10:50:22'),
(29, 'delete_meetings', 'web', '2023-08-12 10:50:22', '2023-08-12 10:50:22'),
(37, 'delete_projects', 'client', '2023-09-08 11:57:55', '2023-09-08 11:57:55'),
(38, 'manage_projects', 'client', '2023-09-08 11:57:55', '2023-09-08 11:57:55'),
(39, 'create_tasks', 'client', '2023-09-08 12:32:02', '2023-09-08 12:32:02'),
(40, 'create_projects', 'client', '2023-09-08 12:33:36', '2023-09-08 12:33:36'),
(41, 'manage_tasks', 'client', '2023-09-08 12:33:48', '2023-09-08 12:33:48'),
(42, 'edit_tasks', 'client', '2023-09-08 12:33:59', '2023-09-08 12:33:59'),
(43, 'delete_tasks', 'client', '2023-09-08 12:34:13', '2023-09-08 12:34:13'),
(44, 'create_users', 'client', '2023-09-08 12:34:25', '2023-09-08 12:34:25'),
(45, 'manage_users', 'client', '2023-09-08 12:34:37', '2023-09-08 12:34:37'),
(46, 'edit_users', 'client', '2023-09-08 12:34:56', '2023-09-08 12:34:56'),
(47, 'delete_users', 'client', '2023-09-08 12:35:08', '2023-09-08 12:35:08'),
(48, 'create_clients', 'client', '2023-09-08 12:35:25', '2023-09-08 12:35:25'),
(49, 'manage_clients', 'client', '2023-09-08 12:35:37', '2023-09-08 12:35:37'),
(50, 'edit_clients', 'client', '2023-09-08 12:35:49', '2023-09-08 12:35:49'),
(51, 'delete_clients', 'client', '2023-09-08 12:36:01', '2023-09-08 12:36:01'),
(52, 'create_workspaces', 'client', '2023-09-08 12:36:17', '2023-09-08 12:36:17'),
(53, 'manage_workspaces', 'client', '2023-09-08 12:36:34', '2023-09-08 12:36:34'),
(54, 'edit_workspaces', 'client', '2023-09-08 12:36:45', '2023-09-08 12:36:45'),
(55, 'delete_workspaces', 'client', '2023-09-08 12:37:01', '2023-09-08 12:37:01'),
(56, 'create_meetings', 'client', '2023-09-08 12:37:16', '2023-09-08 12:37:16'),
(57, 'manage_meetings', 'client', '2023-09-08 12:37:29', '2023-09-08 12:37:29'),
(58, 'edit_meetings', 'client', '2023-09-08 12:37:42', '2023-09-08 12:37:42'),
(59, 'delete_meetings', 'client', '2023-09-08 12:37:55', '2023-09-08 12:37:55'),
(60, 'edit_projects', 'client', '2023-09-08 13:10:48', '2023-09-08 13:10:48'),
(61, 'create_contracts', 'client', '2023-09-23 23:32:01', '2023-09-23 23:32:01'),
(62, 'manage_contracts', 'client', '2023-09-23 23:32:44', '2023-09-23 23:32:44'),
(63, 'edit_contracts', 'client', '2023-09-23 23:32:56', '2023-09-23 23:32:56'),
(64, 'delete_contracts', 'client', '2023-09-23 23:33:04', '2023-09-23 23:33:04'),
(65, 'delete_contracts', 'web', '2023-09-23 23:33:16', '2023-09-23 23:33:16'),
(66, 'edit_contracts', 'web', '2023-09-23 23:33:26', '2023-09-23 23:33:26'),
(67, 'manage_contracts', 'web', '2023-09-23 23:33:37', '2023-09-23 23:33:37'),
(68, 'create_contracts', 'web', '2023-09-23 23:33:50', '2023-09-23 23:33:50'),
(69, 'create_timesheet', 'web', '2023-12-19 07:13:52', '2023-12-19 07:13:52'),
(70, 'delete_timesheet', 'web', '2023-12-19 07:13:55', '2023-12-19 07:13:55'),
(71, 'manage_timesheet', 'web', '2023-12-19 07:13:55', '2023-12-19 07:13:55'),
(72, 'create_timesheet', 'client', '2023-12-19 07:15:11', '2023-12-19 07:15:11'),
(73, 'delete_timesheet', 'client', '2023-12-19 07:15:11', '2023-12-19 07:15:11'),
(74, 'manage_timesheet', 'client', '2023-12-19 07:15:11', '2023-12-19 07:15:11'),
(75, 'create_payslips', 'client', '2023-12-22 05:46:34', '2023-12-22 05:46:34'),
(76, 'edit_payslips', 'client', '2023-12-22 05:46:35', '2023-12-22 05:46:35'),
(77, 'delete_payslips', 'client', '2023-12-22 05:46:35', '2023-12-22 05:46:35'),
(78, 'manage_payslips', 'client', '2023-12-22 05:46:35', '2023-12-22 05:46:35'),
(79, 'create_payslips', 'web', '2023-12-22 05:46:52', '2023-12-22 05:46:52'),
(80, 'edit_payslips', 'web', '2023-12-22 05:46:53', '2023-12-22 05:46:53'),
(81, 'delete_payslips', 'web', '2023-12-22 05:46:53', '2023-12-22 05:46:53'),
(82, 'manage_payslips', 'web', '2023-12-22 05:46:53', '2023-12-22 05:46:53'),
(83, 'access_all_data', 'web', '2024-01-08 07:22:04', '2024-01-08 13:47:12'),
(85, 'access_all_data', 'client', '2024-01-08 07:22:04', '2024-01-08 13:47:12'),
(86, 'manage_activity_log', 'web', '2024-01-15 13:46:23', '2024-01-15 13:46:23'),
(87, 'delete_activity_log', 'web', '2024-01-15 13:46:23', '2024-01-15 13:46:23'),
(88, 'manage_activity_log', 'client', '2024-01-15 13:46:23', '2024-01-15 13:46:23'),
(89, 'delete_activity_log', 'client', '2024-01-15 13:46:23', '2024-01-15 13:46:23'),
(90, 'create_estimates_invoices', 'web', '2024-02-07 06:15:12', '2024-02-07 06:15:12'),
(91, 'manage_estimates_invoices', 'web', '2024-02-07 06:15:12', '2024-02-07 06:15:12'),
(92, 'edit_estimates_invoices', 'web', '2024-02-07 06:15:12', '2024-02-07 06:15:12'),
(93, 'delete_estimates_invoices', 'web', '2024-02-07 06:15:13', '2024-02-07 06:15:13'),
(94, 'create_estimates_invoices', 'client', '2024-02-07 06:15:30', '2024-02-07 06:15:30'),
(95, 'manage_estimates_invoices', 'client', '2024-02-07 06:15:30', '2024-02-07 06:15:30'),
(96, 'edit_estimates_invoices', 'client', '2024-02-07 06:15:31', '2024-02-07 06:15:31'),
(97, 'delete_estimates_invoices', 'client', '2024-02-07 06:15:31', '2024-02-07 06:15:31'),
(98, 'create_expenses', 'client', '2024-02-13 01:06:26', '2024-02-13 01:06:26'),
(99, 'manage_expenses', 'client', '2024-02-13 01:06:27', '2024-02-13 01:06:27'),
(100, 'edit_expenses', 'client', '2024-02-13 01:06:27', '2024-02-13 01:06:27'),
(101, 'delete_expenses', 'client', '2024-02-13 01:06:27', '2024-02-13 01:06:27'),
(102, 'create_expenses', 'web', '2024-02-13 01:11:45', '2024-02-13 01:11:45'),
(103, 'manage_expenses', 'web', '2024-02-13 01:11:45', '2024-02-13 01:11:45'),
(104, 'edit_expenses', 'web', '2024-02-13 01:11:45', '2024-02-13 01:11:45'),
(105, 'delete_expenses', 'web', '2024-02-13 01:11:45', '2024-02-13 01:11:45'),
(106, 'create_milestones', 'web', '2024-02-26 04:28:09', '2024-02-26 04:28:09'),
(107, 'manage_milestones', 'web', '2024-02-26 04:28:09', '2024-02-26 04:28:09'),
(108, 'edit_milestones', 'web', '2024-02-26 04:28:09', '2024-02-26 04:28:09'),
(109, 'delete_milestones', 'web', '2024-02-26 04:28:09', '2024-02-26 04:28:09'),
(110, 'create_milestones', 'client', '2024-02-26 04:28:35', '2024-02-26 04:28:35'),
(111, 'manage_milestones', 'client', '2024-02-26 04:28:35', '2024-02-26 04:28:35'),
(112, 'edit_milestones', 'client', '2024-02-26 04:28:36', '2024-02-26 04:28:36'),
(113, 'delete_milestones', 'client', '2024-02-26 04:28:36', '2024-02-26 04:28:36'),
(114, 'manage_system_notifications', 'client', '2024-03-05 06:57:10', '2024-03-05 06:57:10'),
(115, 'delete_system_notifications', 'client', '2024-03-05 06:57:10', '2024-03-05 06:57:10'),
(116, 'manage_system_notifications', 'web', '2024-03-05 06:57:21', '2024-03-05 06:57:21'),
(117, 'delete_system_notifications', 'web', '2024-03-05 06:57:21', '2024-03-05 06:57:21'),
(126, 'create_statuses', 'client', '2024-08-21 08:48:24', '2024-08-21 08:48:24'),
(127, 'manage_statuses', 'client', '2024-08-21 08:48:24', '2024-08-21 08:48:24'),
(128, 'edit_statuses', 'client', '2024-08-21 08:48:24', '2024-08-21 08:48:24'),
(129, 'delete_statuses', 'client', '2024-08-21 08:48:24', '2024-08-21 08:48:24'),
(130, 'create_statuses', 'web', '2024-08-21 08:48:54', '2024-08-21 08:48:54'),
(131, 'manage_statuses', 'web', '2024-08-21 08:48:54', '2024-08-21 08:48:54'),
(132, 'edit_statuses', 'web', '2024-08-21 08:48:54', '2024-08-21 08:48:54'),
(133, 'delete_statuses', 'web', '2024-08-21 08:48:54', '2024-08-21 08:48:54'),
(134, 'create_priorities', 'web', '2024-08-22 05:39:31', '2024-08-22 05:39:31'),
(135, 'manage_priorities', 'web', '2024-08-22 05:39:31', '2024-08-22 05:39:31'),
(136, 'edit_priorities', 'web', '2024-08-22 05:39:31', '2024-08-22 05:39:31'),
(137, 'delete_priorities', 'web', '2024-08-22 05:39:31', '2024-08-22 05:39:31'),
(138, 'create_priorities', 'client', '2024-08-22 05:39:51', '2024-08-22 05:39:51'),
(139, 'manage_priorities', 'client', '2024-08-22 05:39:51', '2024-08-22 05:39:51'),
(140, 'edit_priorities', 'client', '2024-08-22 05:39:51', '2024-08-22 05:39:51'),
(141, 'delete_priorities', 'client', '2024-08-22 05:39:51', '2024-08-22 05:39:51'),
(142, 'create_tags', 'web', '2024-08-22 01:01:55', '2024-08-22 01:01:55'),
(143, 'manage_tags', 'web', '2024-08-22 01:01:55', '2024-08-22 01:01:55'),
(144, 'edit_tags', 'web', '2024-08-22 01:01:55', '2024-08-22 01:01:55'),
(145, 'delete_tags', 'web', '2024-08-22 01:01:55', '2024-08-22 01:01:55'),
(146, 'create_tags', 'client', '2024-08-22 01:02:18', '2024-08-22 01:02:18'),
(147, 'manage_tags', 'client', '2024-08-22 01:02:18', '2024-08-22 01:02:18'),
(148, 'edit_tags', 'client', '2024-08-22 01:02:18', '2024-08-22 01:02:18'),
(149, 'delete_tags', 'client', '2024-08-22 01:02:18', '2024-08-22 01:02:18'),
(150, 'create_media', 'web', '2024-08-22 23:59:40', '2024-08-22 23:59:40'),
(151, 'manage_media', 'web', '2024-08-22 23:59:40', '2024-08-22 23:59:40'),
(152, 'delete_media', 'web', '2024-08-22 23:59:40', '2024-08-22 23:59:40'),
(153, 'create_media', 'client', '2024-08-22 23:59:59', '2024-08-22 23:59:59'),
(154, 'manage_media', 'client', '2024-08-22 23:59:59', '2024-08-22 23:59:59'),
(155, 'delete_media', 'client', '2024-08-23 00:00:00', '2024-08-23 00:00:00'),
(156, 'create_contract_types', 'web', '2024-08-29 01:56:12', '2024-08-29 01:56:12'),
(157, 'manage_contract_types', 'web', '2024-08-29 01:56:12', '2024-08-29 01:56:12'),
(158, 'edit_contract_types', 'web', '2024-08-29 01:56:12', '2024-08-29 01:56:12'),
(159, 'delete_contract_types', 'web', '2024-08-29 01:56:12', '2024-08-29 01:56:12'),
(160, 'create_contract_types', 'client', '2024-08-29 01:56:29', '2024-08-29 01:56:29'),
(161, 'manage_contract_types', 'client', '2024-08-29 01:56:29', '2024-08-29 01:56:29'),
(162, 'edit_contract_types', 'client', '2024-08-29 01:56:29', '2024-08-29 01:56:29'),
(163, 'delete_contract_types', 'client', '2024-08-29 01:56:29', '2024-08-29 01:56:29'),
(164, 'create_allowances', 'web', '2024-08-29 03:31:00', '2024-08-29 03:31:00'),
(165, 'manage_allowances', 'web', '2024-08-29 03:31:00', '2024-08-29 03:31:00'),
(166, 'edit_allowances', 'web', '2024-08-29 03:31:00', '2024-08-29 03:31:00'),
(167, 'delete_allowances', 'web', '2024-08-29 03:31:00', '2024-08-29 03:31:00'),
(168, 'create_deductions', 'web', '2024-08-29 03:32:10', '2024-08-29 03:32:10'),
(169, 'manage_deductions', 'web', '2024-08-29 03:32:10', '2024-08-29 03:32:10'),
(170, 'edit_deductions', 'web', '2024-08-29 03:32:10', '2024-08-29 03:32:10'),
(171, 'delete_deductions', 'web', '2024-08-29 03:32:10', '2024-08-29 03:32:10'),
(172, 'create_payment_methods', 'web', '2024-08-29 03:32:10', '2024-08-29 03:32:10'),
(173, 'manage_payment_methods', 'web', '2024-08-29 03:32:10', '2024-08-29 03:32:10'),
(174, 'edit_payment_methods', 'web', '2024-08-29 03:32:10', '2024-08-29 03:32:10'),
(175, 'delete_payment_methods', 'web', '2024-08-29 03:32:10', '2024-08-29 03:32:10'),
(176, 'create_allowances', 'client', '2024-08-29 03:33:01', '2024-08-29 03:33:01'),
(177, 'manage_allowances', 'client', '2024-08-29 03:33:01', '2024-08-29 03:33:01'),
(178, 'edit_allowances', 'client', '2024-08-29 03:33:01', '2024-08-29 03:33:01'),
(179, 'delete_allowances', 'client', '2024-08-29 03:33:01', '2024-08-29 03:33:01'),
(180, 'create_deductions', 'client', '2024-08-29 03:33:01', '2024-08-29 03:33:01'),
(181, 'manage_deductions', 'client', '2024-08-29 03:33:01', '2024-08-29 03:33:01'),
(182, 'edit_deductions', 'client', '2024-08-29 03:33:01', '2024-08-29 03:33:01'),
(183, 'delete_deductions', 'client', '2024-08-29 03:33:01', '2024-08-29 03:33:01'),
(184, 'create_payment_methods', 'client', '2024-08-29 03:33:01', '2024-08-29 03:33:01'),
(185, 'manage_payment_methods', 'client', '2024-08-29 03:33:01', '2024-08-29 03:33:01'),
(186, 'edit_payment_methods', 'client', '2024-08-29 03:33:01', '2024-08-29 03:33:01'),
(187, 'delete_payment_methods', 'client', '2024-08-29 03:33:01', '2024-08-29 03:33:01'),
(192, 'create_payments', 'web', '2024-08-29 04:58:21', '2024-08-29 04:58:21'),
(193, 'manage_payments', 'web', '2024-08-29 04:58:21', '2024-08-29 04:58:21'),
(194, 'edit_payments', 'web', '2024-08-29 04:58:21', '2024-08-29 04:58:21'),
(195, 'delete_payments', 'web', '2024-08-29 04:58:21', '2024-08-29 04:58:21'),
(196, 'create_taxes', 'web', '2024-08-29 04:58:21', '2024-08-29 04:58:21'),
(197, 'manage_taxes', 'web', '2024-08-29 04:58:21', '2024-08-29 04:58:21'),
(198, 'edit_taxes', 'web', '2024-08-29 04:58:21', '2024-08-29 04:58:21'),
(199, 'delete_taxes', 'web', '2024-08-29 04:58:21', '2024-08-29 04:58:21'),
(200, 'create_units', 'web', '2024-08-29 04:58:21', '2024-08-29 04:58:21'),
(201, 'manage_units', 'web', '2024-08-29 04:58:21', '2024-08-29 04:58:21'),
(202, 'edit_units', 'web', '2024-08-29 04:58:21', '2024-08-29 04:58:21'),
(203, 'delete_units', 'web', '2024-08-29 04:58:21', '2024-08-29 04:58:21'),
(204, 'create_items', 'web', '2024-08-29 04:58:21', '2024-08-29 04:58:21'),
(205, 'manage_items', 'web', '2024-08-29 04:58:21', '2024-08-29 04:58:21'),
(206, 'edit_items', 'web', '2024-08-29 04:58:21', '2024-08-29 04:58:21'),
(207, 'delete_items', 'web', '2024-08-29 04:58:21', '2024-08-29 04:58:21'),
(212, 'create_payments', 'client', '2024-08-29 04:58:43', '2024-08-29 04:58:43'),
(213, 'manage_payments', 'client', '2024-08-29 04:58:43', '2024-08-29 04:58:43'),
(214, 'edit_payments', 'client', '2024-08-29 04:58:43', '2024-08-29 04:58:43'),
(215, 'delete_payments', 'client', '2024-08-29 04:58:43', '2024-08-29 04:58:43'),
(216, 'create_taxes', 'client', '2024-08-29 04:58:43', '2024-08-29 04:58:43'),
(217, 'manage_taxes', 'client', '2024-08-29 04:58:43', '2024-08-29 04:58:43'),
(218, 'edit_taxes', 'client', '2024-08-29 04:58:43', '2024-08-29 04:58:43'),
(219, 'delete_taxes', 'client', '2024-08-29 04:58:43', '2024-08-29 04:58:43'),
(220, 'create_units', 'client', '2024-08-29 04:58:43', '2024-08-29 04:58:43'),
(221, 'manage_units', 'client', '2024-08-29 04:58:43', '2024-08-29 04:58:43'),
(222, 'edit_units', 'client', '2024-08-29 04:58:43', '2024-08-29 04:58:43'),
(223, 'delete_units', 'client', '2024-08-29 04:58:43', '2024-08-29 04:58:43'),
(224, 'create_items', 'client', '2024-08-29 04:58:43', '2024-08-29 04:58:43'),
(225, 'manage_items', 'client', '2024-08-29 04:58:43', '2024-08-29 04:58:43'),
(226, 'edit_items', 'client', '2024-08-29 04:58:43', '2024-08-29 04:58:43'),
(227, 'delete_items', 'client', '2024-08-29 04:58:43', '2024-08-29 04:58:43'),
(228, 'create_expense_types', 'client', '2024-08-29 05:25:21', '2024-08-29 05:25:21'),
(229, 'manage_expense_types', 'client', '2024-08-29 05:25:21', '2024-08-29 05:25:21'),
(230, 'edit_expense_types', 'client', '2024-08-29 05:25:21', '2024-08-29 05:25:21'),
(231, 'delete_expense_types', 'client', '2024-08-29 05:25:21', '2024-08-29 05:25:21'),
(232, 'create_expense_types', 'web', '2024-08-29 05:25:38', '2024-08-29 05:25:38'),
(233, 'manage_expense_types', 'web', '2024-08-29 05:25:38', '2024-08-29 05:25:38'),
(234, 'edit_expense_types', 'web', '2024-08-29 05:25:38', '2024-08-29 05:25:38'),
(235, 'delete_expense_types', 'web', '2024-08-29 05:25:38', '2024-08-29 05:25:38'),
(333, 'create_leads', 'web', '2025-04-26 04:14:30', '2025-04-26 04:14:30'),
(334, 'manage_leads', 'web', '2025-04-26 04:14:30', '2025-04-26 04:14:30'),
(335, 'edit_leads', 'web', '2025-04-26 04:14:30', '2025-04-26 04:14:30'),
(336, 'delete_leads', 'web', '2025-04-26 04:14:30', '2025-04-26 04:14:30'),
(337, 'send_email', 'web', '2025-05-05 05:28:46', '2025-05-05 05:28:46'),
(338, 'create_email_template', 'web', '2025-05-05 05:28:46', '2025-05-05 05:28:46'),
(339, 'manage_email_template', 'web', '2025-05-05 05:28:46', '2025-05-05 05:28:46'),
(340, 'delete_email_template', 'web', '2025-05-05 05:28:46', '2025-05-05 05:28:46'),
(341, 'manage_candidate', 'web', '2025-05-05 05:28:58', '2025-05-05 05:35:31'),
(342, 'create_candidate', 'web', '2025-05-05 05:28:58', '2025-05-05 05:28:58'),
(343, 'edit_candidate', 'web', '2025-05-05 05:28:58', '2025-05-05 05:28:58'),
(344, 'delete_candidate', 'web', '2025-05-05 05:28:58', '2025-05-05 05:28:58'),
(345, 'edit_candidate_status', 'web', '2025-05-05 05:28:58', '2025-05-05 05:36:41'),
(346, 'manage_candidate_status', 'web', '2025-05-05 05:28:58', '2025-05-05 05:28:58'),
(347, 'edit_interview', 'web', '2025-05-05 05:28:58', '2025-05-05 05:56:24'),
(348, 'create_interview', 'web', '2025-05-05 05:28:58', '2025-05-05 05:28:58'),
(349, 'manage_interview', 'web', '2025-05-05 05:28:58', '2025-05-05 05:56:03'),
(350, 'delete_interview', 'web', '2025-05-05 05:28:58', '2025-05-05 05:28:58'),
(351, 'create_candidate_status', 'web', '2025-05-05 05:28:58', '2025-05-05 05:28:58'),
(352, 'delete_candidate_status', 'web', '2025-05-05 05:28:58', '2025-05-05 05:28:58'),
(373, 'create_divisions', 'web', '2025-12-24 04:41:54', '2025-12-24 04:41:54'),
(374, 'manage_divisions', 'web', '2025-12-24 04:41:54', '2025-12-24 04:41:54'),
(375, 'edit_divisions', 'web', '2025-12-24 04:41:54', '2025-12-24 04:41:54'),
(376, 'delete_divisions', 'web', '2025-12-24 04:41:54', '2025-12-24 04:41:54'),
(377, 'manage_password_manager', 'web', '2025-12-28 23:11:35', '2025-12-28 23:11:35'),
(378, 'create_password_manager', 'web', '2025-12-28 23:11:35', '2025-12-28 23:11:35'),
(379, 'edit_password_manager', 'web', '2025-12-28 23:11:35', '2025-12-28 23:11:35'),
(380, 'delete_password_manager', 'web', '2025-12-28 23:11:35', '2025-12-28 23:11:35'),
(381, 'manage_inventory', 'web', '2025-12-29 03:02:57', '2025-12-29 03:02:57'),
(382, 'create_inventory', 'web', '2025-12-29 03:02:57', '2025-12-29 03:02:57'),
(383, 'edit_inventory', 'web', '2025-12-29 03:02:57', '2025-12-29 03:02:57'),
(384, 'delete_inventory', 'web', '2025-12-29 03:02:57', '2025-12-29 03:02:57');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pinned`
--

CREATE TABLE `pinned` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `client_id` bigint UNSIGNED DEFAULT NULL,
  `pinnable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinnable_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `priorities`
--

CREATE TABLE `priorities` (
  `id` bigint NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `priorities`
--

INSERT INTO `priorities` (`id`, `title`, `slug`, `color`, `created_at`, `updated_at`) VALUES
(1, 'Low', 'low', 'secondary', '2025-12-23 23:33:45', '2025-12-23 23:33:45'),
(2, 'Normal', 'normal', 'success', '2025-12-23 23:46:38', '2025-12-23 23:46:38'),
(3, 'Urgent', 'urgent', 'danger', '2025-12-23 23:47:16', '2025-12-23 23:47:16');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` bigint UNSIGNED NOT NULL,
  `workspace_id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `status_id` bigint UNSIGNED NOT NULL DEFAULT '1',
  `priority_id` bigint DEFAULT NULL,
  `budget` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `created_by` bigint UNSIGNED NOT NULL,
  `is_favorite` tinyint NOT NULL DEFAULT '0',
  `task_accessibility` varchar(28) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'assigned_users',
  `note` longtext COLLATE utf8mb4_unicode_ci,
  `client_can_discuss` tinyint(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `enable_tasks_time_entries` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `workspace_id`, `title`, `description`, `status_id`, `priority_id`, `budget`, `start_date`, `end_date`, `created_by`, `is_favorite`, `task_accessibility`, `note`, `client_can_discuss`, `created_at`, `updated_at`, `enable_tasks_time_entries`) VALUES
(1, 1, 'Sampel Event Bimtek', NULL, 1, 1, '', '2026-01-01', '2026-01-31', 1, 0, 'assigned_users', NULL, 0, '2025-12-23 23:34:45', '2025-12-23 23:34:45', 0);

-- --------------------------------------------------------

--
-- Table structure for table `project_tag`
--

CREATE TABLE `project_tag` (
  `id` bigint UNSIGNED NOT NULL,
  `project_id` bigint UNSIGNED NOT NULL,
  `tag_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `project_tag`
--

INSERT INTO `project_tag` (`id`, `project_id`, `tag_id`, `created_at`, `updated_at`) VALUES
(1, 1, 3, '2025-12-24 06:34:45', '2025-12-24 06:34:45');

-- --------------------------------------------------------

--
-- Table structure for table `project_user`
--

CREATE TABLE `project_user` (
  `id` bigint UNSIGNED NOT NULL,
  `project_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `project_user`
--

INSERT INTO `project_user` (`id`, `project_id`, `user_id`) VALUES
(1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `recurring_tasks`
--

CREATE TABLE `recurring_tasks` (
  `id` bigint UNSIGNED NOT NULL,
  `task_id` bigint UNSIGNED NOT NULL,
  `frequency` enum('daily','weekly','monthly','yearly') COLLATE utf8mb4_unicode_ci NOT NULL,
  `day_of_week` text COLLATE utf8mb4_unicode_ci,
  `day_of_month` text COLLATE utf8mb4_unicode_ci,
  `month_of_year` text COLLATE utf8mb4_unicode_ci,
  `starts_from` date DEFAULT NULL,
  `number_of_occurrences` text COLLATE utf8mb4_unicode_ci,
  `completed_occurrences` text COLLATE utf8mb4_unicode_ci,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `last_created_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reminders`
--

CREATE TABLE `reminders` (
  `id` bigint UNSIGNED NOT NULL,
  `remindable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remindable_id` bigint UNSIGNED NOT NULL,
  `frequency_type` enum('daily','weekly','monthly') COLLATE utf8mb4_unicode_ci NOT NULL,
  `frequency_value` int DEFAULT NULL,
  `day_of_week` int DEFAULT NULL,
  `day_of_month` int DEFAULT NULL,
  `time_of_day` time NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `last_sent_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'web', '2023-03-13 23:28:49', '2023-09-24 06:53:41'),
(2, 'member', 'web', '2023-03-13 23:28:49', '2023-09-24 06:53:41'),
(3, 'Client', 'client', '2023-12-22 07:45:49', '2024-11-21 05:38:48'),
(69, 'Owner', 'web', '2025-12-24 07:47:49', '2025-12-24 07:47:49');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(377, 1),
(378, 1),
(379, 1),
(380, 1),
(381, 1),
(382, 1),
(383, 1),
(384, 1),
(14, 69),
(15, 69),
(27, 69),
(67, 69),
(71, 69),
(82, 69),
(86, 69),
(151, 69),
(334, 69),
(341, 69),
(349, 69),
(377, 69),
(381, 69);

-- --------------------------------------------------------

--
-- Table structure for table `role_status`
--

CREATE TABLE `role_status` (
  `role_id` bigint UNSIGNED NOT NULL,
  `status_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_status`
--

INSERT INTO `role_status` (`role_id`, `status_id`) VALUES
(2, 1),
(3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `scheduled_emails`
--

CREATE TABLE `scheduled_emails` (
  `id` bigint UNSIGNED NOT NULL,
  `workspace_id` bigint UNSIGNED NOT NULL,
  `email_template_id` bigint UNSIGNED DEFAULT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `to_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `placeholders` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `attachments` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `scheduled_at` datetime DEFAULT NULL,
  `status` enum('pending','sent','failed') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint UNSIGNED NOT NULL,
  `variable` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `variable`, `value`, `created_at`, `updated_at`) VALUES
(5, 'general_settings', '{\"company_title\":\"Taskify\",\"currency_full_form\":\"Indian Rupee\",\"currency_symbol\":\"\\u20b9\",\"currency_code\":\"INR\",\"timezone\":\"Asia\\/Kolkata\",\"date_format\":\"DD-MM-YYYY|d-m-Y\",\"footer_text\":\"<p>made with \\u2764\\ufe0f by&nbsp;<a href=\\\"https:\\/\\/www.infinitietech.com\\/\\\" target=\\\"_blank\\\" rel=\\\"noopener\\\">Infinitie Technologies<\\/a><\\/p>\",\"full_logo\":\"\",\"half_logo\":\"\",\"favicon\":\"\",\"site_url\":\"https:\\/\\/google.com\",\"currency_symbol_position\":\"before\",\"currency_formate\":\"comma_separated\",\"decimal_points_in_currency\":\"2\",\"time_format\":\"H:i:s\",\"toast_position\":\"toast-top-right\",\"toast_time_out\":\"5\",\"upcomingBirthdays\":1,\"upcomingWorkAnniversaries\":1,\"membersOnLeave\":1,\"priLangAsAuth\":1,\"currency_format\":null,\"decimal_points\":\"2\",\"allowed_file_types\":\".png,.jpg,.pdf,.doc,.docx,.xls,.xlsx,.zip,.rar,.txt\",\"allowSignup\":1,\"max_attempts\":\"5\",\"lock_time\":\"1\",\"allowed_max_upload_size\":\"512\",\"max_files\":\"10\",\"recaptcha_enabled\":0,\"recaptcha_site_key\":\"\",\"recaptcha_secret_key\":\"\"}', '2023-06-14 02:18:25', '2025-08-13 09:58:32'),
(9, 'pusher_settings', NULL, '2023-06-21 00:03:13', '2023-10-08 19:39:20'),
(10, 'email_settings', '{\"email\":\"admin@gmsconsolidate.id\",\"password\":\"vnsp cwns jtme dckd\",\"smtp_host\":\"smtp.gmail.com\",\"smtp_port\":\"465\",\"email_content_type\":\"html\",\"smtp_encryption\":\"ssl\"}', '2023-06-21 03:13:07', '2025-12-24 08:27:22'),
(11, 'media_storage_settings', NULL, '2024-01-22 01:33:48', '2024-02-11 19:37:32'),
(12, 'sms_gateway_settings', NULL, '2024-03-28 19:51:39', '2024-04-01 23:15:13'),
(13, 'privacy_policy', '{\"privacy_policy\":\"<h1 data-start=\\\"144\\\" data-end=\\\"162\\\">Privacy Policy<\\/h1>\\r\\n<p data-start=\\\"163\\\" data-end=\\\"194\\\"><strong data-start=\\\"163\\\" data-end=\\\"194\\\">Last updated: July 10, 2025<\\/strong><\\/p>\\r\\n<hr data-start=\\\"471\\\" data-end=\\\"474\\\">\\r\\n<h3 data-start=\\\"476\\\" data-end=\\\"502\\\">1. <strong data-start=\\\"483\\\" data-end=\\\"502\\\">Data We Collect<\\/strong><\\/h3>\\r\\n<p data-start=\\\"504\\\" data-end=\\\"542\\\"><strong data-start=\\\"504\\\" data-end=\\\"521\\\">Personal Data<\\/strong> (provided by you):<\\/p>\\r\\n<ul data-start=\\\"543\\\" data-end=\\\"592\\\">\\r\\n<li data-start=\\\"543\\\" data-end=\\\"574\\\">\\r\\n<p data-start=\\\"545\\\" data-end=\\\"574\\\">Name, Email, Phone, Address<\\/p>\\r\\n<\\/li>\\r\\n<li data-start=\\\"575\\\" data-end=\\\"592\\\">\\r\\n<p data-start=\\\"577\\\" data-end=\\\"592\\\">Login details<\\/p>\\r\\n<\\/li>\\r\\n<\\/ul>\\r\\n<p data-start=\\\"594\\\" data-end=\\\"637\\\"><strong data-start=\\\"594\\\" data-end=\\\"608\\\">Usage Data<\\/strong> (collected automatically):<\\/p>\\r\\n<ul data-start=\\\"638\\\" data-end=\\\"732\\\">\\r\\n<li data-start=\\\"638\\\" data-end=\\\"693\\\">\\r\\n<p data-start=\\\"640\\\" data-end=\\\"693\\\">IP address, browser type, pages visited, time spent<\\/p>\\r\\n<\\/li>\\r\\n<li data-start=\\\"694\\\" data-end=\\\"732\\\">\\r\\n<p data-start=\\\"696\\\" data-end=\\\"732\\\">Mobile device info (if applicable)<\\/p>\\r\\n<\\/li>\\r\\n<\\/ul>\\r\\n<hr data-start=\\\"907\\\" data-end=\\\"910\\\">\\r\\n<h3 data-start=\\\"912\\\" data-end=\\\"934\\\">2. <strong data-start=\\\"919\\\" data-end=\\\"934\\\">Use of Data<\\/strong><\\/h3>\\r\\n<p data-start=\\\"936\\\" data-end=\\\"956\\\">We use your data to:<\\/p>\\r\\n<ul data-start=\\\"957\\\" data-end=\\\"1150\\\">\\r\\n<li data-start=\\\"957\\\" data-end=\\\"994\\\">\\r\\n<p data-start=\\\"959\\\" data-end=\\\"994\\\">Provide and maintain our services<\\/p>\\r\\n<\\/li>\\r\\n<li data-start=\\\"995\\\" data-end=\\\"1018\\\">\\r\\n<p data-start=\\\"997\\\" data-end=\\\"1018\\\">Manage your account<\\/p>\\r\\n<\\/li>\\r\\n<li data-start=\\\"1019\\\" data-end=\\\"1079\\\">\\r\\n<p data-start=\\\"1021\\\" data-end=\\\"1079\\\">Contact you with updates or promotions (you can opt out)<\\/p>\\r\\n<\\/li>\\r\\n<li data-start=\\\"1080\\\" data-end=\\\"1116\\\">\\r\\n<p data-start=\\\"1082\\\" data-end=\\\"1116\\\">Improve performance and security<\\/p>\\r\\n<\\/li>\\r\\n<li data-start=\\\"1117\\\" data-end=\\\"1150\\\">\\r\\n<p data-start=\\\"1119\\\" data-end=\\\"1150\\\">Comply with legal obligations<\\/p>\\r\\n<\\/li>\\r\\n<\\/ul>\\r\\n<hr data-start=\\\"1819\\\" data-end=\\\"1822\\\">\\r\\n<h3 data-start=\\\"1824\\\" data-end=\\\"1846\\\">3. <strong data-start=\\\"1831\\\" data-end=\\\"1846\\\">Your Rights<\\/strong><\\/h3>\\r\\n<p data-start=\\\"1848\\\" data-end=\\\"1856\\\">You can:<\\/p>\\r\\n<ul data-start=\\\"1857\\\" data-end=\\\"1976\\\">\\r\\n<li data-start=\\\"1857\\\" data-end=\\\"1896\\\">\\r\\n<p data-start=\\\"1859\\\" data-end=\\\"1896\\\">Access, update, or delete your data<\\/p>\\r\\n<\\/li>\\r\\n<li data-start=\\\"1897\\\" data-end=\\\"1936\\\">\\r\\n<p data-start=\\\"1899\\\" data-end=\\\"1936\\\">Withdraw consent (where applicable)<\\/p>\\r\\n<\\/li>\\r\\n<\\/ul>\\r\\n<hr data-start=\\\"2263\\\" data-end=\\\"2266\\\">\\r\\n<h3 data-start=\\\"2268\\\" data-end=\\\"2293\\\">4. <strong data-start=\\\"2275\\\" data-end=\\\"2293\\\">Policy Updates<\\/strong><\\/h3>\\r\\n<p data-start=\\\"2295\\\" data-end=\\\"2408\\\">We may update this policy occasionally. Changes take effect once posted. We\'ll notify you of significant updates.<\\/p>\\r\\n<hr data-start=\\\"2410\\\" data-end=\\\"2413\\\">\\r\\n<h3 data-start=\\\"2415\\\" data-end=\\\"2437\\\">5.&nbsp;<strong data-start=\\\"2423\\\" data-end=\\\"2437\\\">Contact Us<\\/strong><\\/h3>\\r\\n<ul data-start=\\\"2439\\\" data-end=\\\"2507\\\">\\r\\n<li data-start=\\\"2439\\\" data-end=\\\"2476\\\">\\r\\n<p data-start=\\\"2441\\\" data-end=\\\"2476\\\"><strong data-start=\\\"2441\\\" data-end=\\\"2451\\\">Email:<\\/strong> <a class=\\\"cursor-pointer\\\" rel=\\\"noopener\\\" data-start=\\\"2452\\\" data-end=\\\"2474\\\">info@infinitietech.com<\\/a><\\/p>\\r\\n<\\/li>\\r\\n<li data-start=\\\"2477\\\" data-end=\\\"2507\\\">\\r\\n<p data-start=\\\"2479\\\" data-end=\\\"2507\\\"><strong data-start=\\\"2479\\\" data-end=\\\"2489\\\">Phone:<\\/strong> +91 99746 92496<\\/p>\\r\\n<\\/li>\\r\\n<\\/ul>\"}', '2024-10-14 12:02:09', '2025-07-10 06:43:17'),
(14, 'about_us', NULL, '2024-10-14 12:02:09', '2025-07-07 05:16:14'),
(15, 'terms_conditions', NULL, '2024-10-14 12:02:09', '2025-07-07 05:18:30'),
(16, 'slack_settings', NULL, '2025-01-30 01:01:27', '2025-04-28 11:16:16'),
(44, 'google_calendar_settings', NULL, '2025-04-08 09:19:05', '2025-06-10 10:34:49'),
(45, 'company_information', '{\"dnr\":null,\"companyEmail\":\"infinitie@gmail.com\",\"companyPhone\":\"1234567891\",\"companyAddress\":\"bhuj\",\"companyCity\":null,\"companyState\":\"gujrat\",\"companyCountry\":\"India\",\"companyZip\":\"370001\",\"companyWebsite\":null,\"companyVatNumber\":\"56987789\",\"companyVATNumber\":\"56987789\"}', '2025-04-12 11:36:46', '2025-06-10 11:43:40'),
(46, 'whatsapp_settings', NULL, '2025-04-16 04:49:29', '2025-04-16 04:49:29'),
(47, 'ai_model_settings', NULL, '2025-05-12 07:11:19', '2025-07-28 07:24:04'),
(48, 'pwa_settings', '{\"name\":\"Taskify\",\"short_name\":\"Taskify\",\"theme_color\":\"#80a9ac\",\"background_color\":\"#fff0f3\",\"logo\":\"\\/storage\\/images\\/icons\\/logo-512x512.png\",\"description\":\"A task management app to boost productivity\"}', '2025-06-05 11:39:43', '2025-06-25 11:51:19'),
(54, 'doctor_brown', '{\"code_bravo\":\"skip\",\"time_check\":1766478032,\"code_adam\":\"OfflineValidation\",\"dr_firestone\":\"local_mode\"}', '2025-12-23 01:20:32', '2025-12-23 01:20:32'),
(55, 'telegram_settings', '{\"telegram_bot_token\":\"8542420809:AAGgZgPZZuZNOXGzep88SniW7wNW5qjkCuI\"}', '2025-12-23 03:14:29', '2025-12-23 03:14:29');

-- --------------------------------------------------------

--
-- Table structure for table `statuses`
--

CREATE TABLE `statuses` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'task'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `statuses`
--

INSERT INTO `statuses` (`id`, `title`, `slug`, `color`, `is_default`, `created_at`, `updated_at`, `type`) VALUES
(1, 'Not Started', 'not-started', 'primary', 0, '2025-12-23 23:30:24', '2025-12-24 00:41:48', 'task,subtask,project'),
(2, 'In Progress', 'in-progress', 'secondary', 0, '2025-12-23 23:48:32', '2025-12-24 00:42:03', 'task,subtask,project'),
(3, 'On Hold', 'on-hold', 'warning', 0, '2025-12-23 23:50:56', '2025-12-24 00:32:30', 'project'),
(4, 'Canceled', 'canceled', 'danger', 0, '2025-12-23 23:51:22', '2025-12-24 00:42:19', 'task,subtask,project');

-- --------------------------------------------------------

--
-- Table structure for table `status_timelines`
--

CREATE TABLE `status_timelines` (
  `id` bigint UNSIGNED NOT NULL,
  `entity_id` bigint UNSIGNED NOT NULL,
  `entity_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `previous_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `new_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `old_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `changed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `status_timelines`
--

INSERT INTO `status_timelines` (`id`, `entity_id`, `entity_type`, `status`, `previous_status`, `new_color`, `old_color`, `changed_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'App\\Models\\Project', 'Not Started', '-', 'primary', NULL, '2025-12-23 23:34:45', '2025-12-23 23:34:45', '2025-12-23 23:34:45'),
(2, 1, 'App\\Models\\Task', 'Not Started', '-', 'primary', NULL, '2025-12-23 23:35:53', '2025-12-23 23:35:53', '2025-12-23 23:35:53'),
(3, 2, 'App\\Models\\Task', 'Not Started', '-', 'primary', NULL, '2025-12-23 23:36:55', '2025-12-23 23:36:55', '2025-12-23 23:36:55'),
(4, 1, 'App\\Models\\Task', 'Not Started', '-', 'primary', NULL, '2025-12-24 00:03:08', '2025-12-24 00:03:08', '2025-12-24 00:03:08'),
(5, 1, 'App\\Models\\Task', 'Not Started', '-', 'primary', NULL, '2025-12-24 00:05:46', '2025-12-24 00:05:46', '2025-12-24 00:05:46'),
(6, 2, 'App\\Models\\Task', 'Not Started', '-', 'primary', NULL, '2025-12-24 00:13:50', '2025-12-24 00:13:50', '2025-12-24 00:13:50'),
(7, 2, 'App\\Models\\Task', 'In Progress', 'Not Started', 'secondary', 'primary', '2025-12-24 00:43:21', '2025-12-24 00:43:21', '2025-12-24 00:43:21');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `title`, `slug`, `color`, `created_at`, `updated_at`) VALUES
(3, 'wadad', 'wadad', 'primary', '2025-07-09 06:36:02', '2025-07-09 06:36:02');

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` bigint UNSIGNED NOT NULL,
  `workspace_id` bigint UNSIGNED NOT NULL,
  `project_id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `billing_type` enum('none','billable','non-billable') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'none',
  `status_id` bigint NOT NULL DEFAULT '1',
  `priority_id` bigint DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `note` longtext COLLATE utf8mb4_unicode_ci,
  `client_can_discuss` tinyint(1) DEFAULT '0',
  `created_by` bigint UNSIGNED NOT NULL,
  `parent_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `completion_percentage` tinyint UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Completion percentage (0 to 100)',
  `task_list_id` bigint UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `workspace_id`, `project_id`, `title`, `description`, `billing_type`, `status_id`, `priority_id`, `start_date`, `due_date`, `note`, `client_can_discuss`, `created_by`, `parent_id`, `created_at`, `updated_at`, `completion_percentage`, `task_list_id`) VALUES
(1, 1, 1, 'Task 1_a', NULL, 'none', 2, NULL, NULL, NULL, NULL, 0, 1, NULL, '2025-12-24 00:05:46', '2025-12-24 00:42:54', 0, 1),
(2, 1, 1, 'Sub Task 1', NULL, 'none', 2, 1, NULL, NULL, NULL, 0, 1, 1, '2025-12-24 00:13:50', '2025-12-24 00:43:21', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `task_lists`
--

CREATE TABLE `task_lists` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `project_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `task_lists`
--

INSERT INTO `task_lists` (`id`, `name`, `project_id`, `created_at`, `updated_at`) VALUES
(1, 'Task 1', 1, '2025-12-24 00:04:39', '2025-12-24 00:04:39'),
(2, 'Task 2', 1, '2025-12-24 00:05:02', '2025-12-24 00:05:02');

-- --------------------------------------------------------

--
-- Table structure for table `task_time_entries`
--

CREATE TABLE `task_time_entries` (
  `id` bigint UNSIGNED NOT NULL,
  `task_id` bigint UNSIGNED NOT NULL,
  `user_id` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `workspace_id` bigint UNSIGNED NOT NULL,
  `entry_date` date NOT NULL,
  `is_billable` tinyint(1) NOT NULL DEFAULT '0',
  `entry_type` enum('standard','flexible') COLLATE utf8mb4_unicode_ci NOT NULL,
  `standard_hours` time DEFAULT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `task_user`
--

CREATE TABLE `task_user` (
  `id` bigint UNSIGNED NOT NULL,
  `task_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `task_user`
--

INSERT INTO `task_user` (`id`, `task_id`, `user_id`) VALUES
(2, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `taxes`
--

CREATE TABLE `taxes` (
  `id` bigint UNSIGNED NOT NULL,
  `workspace_id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL,
  `percentage` double DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `templates`
--

CREATE TABLE `templates` (
  `id` bigint UNSIGNED NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` text COLLATE utf8mb4_unicode_ci,
  `content` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `templates`
--

INSERT INTO `templates` (`id`, `type`, `name`, `subject`, `content`, `status`, `created_at`, `updated_at`) VALUES
(1, 'email', 'account_creation', 'Account Creation', '<div style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; background-color: #ffffff; color: #718096; height: 100%; line-height: 1.4; margin: 0; padding: 0; width: 100%!important;\">\n<table style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; background-color: #edf2f7; margin: 0; padding: 0; width: 100%;\" role=\"presentation\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\';\" align=\"center\">\n<table style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; margin: 0px; padding: 0px; width: 100%; height: 659.844px;\" role=\"presentation\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr style=\"height: 77.0938px;\">\n<td style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; padding: 25px 0px; height: 77.0938px; text-align: center;\"><span style=\"font-size: 18px;\">{COMPANY_LOGO}</span></td>\n</tr>\n<tr style=\"height: 486.25px;\">\n<td style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; background-color: rgb(237, 242, 247); margin: 0px; padding: 0px; width: 100%; border: hidden !important; height: 486.25px;\" width=\"100%\">\n<table class=\"m_2051327272198114809inner-body\" style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; background-color: #ffffff; border-color: #e8e5ef; border-radius: 2px; border-width: 1px; margin: 0 auto; padding: 0; width: 570px;\" role=\"presentation\" width=\"570\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\">\n<tbody>\n<tr>\n<td style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; max-width: 100vw; padding: 32px;\">\n<h1 style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; color: rgb(61, 72, 82); font-size: 18px; font-weight: bold; margin-top: 0px; text-align: left;\">Hello, {FIRST_NAME} {LAST_NAME}</h1>\n<p style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; font-size: 16px; line-height: 1.5em; margin-top: 0; text-align: left;\">Your account has been successfully created.</p>\n<p style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; font-size: 16px; line-height: 1.5em; margin-top: 0; text-align: left;\"><strong>Username:</strong> {USER_NAME}<br><strong>Password:</strong> {PASSWORD}</p>\n<p style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; font-size: 16px; line-height: 1.5em; margin-top: 0; text-align: left;\">If you did not create an account, no further action is required.</p>\n<p style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; font-size: 16px; line-height: 1.5em; margin-top: 0; text-align: left;\">To access your account, simply click on the link below or copy and paste it into your browser:</p>\n{SITE_URL}<br><br>Regards,</td>\n</tr>\n<tr>\n<td style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; max-width: 100vw; padding: 32px;\">\n<h1 style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; color: #3d4852; font-size: 18px; font-weight: bold; margin-top: 0; text-align: left;\">&nbsp;</h1>\n</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n<tr style=\"height: 96.5px;\">\n<td style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; height: 96.5px;\">\n<table class=\"m_2051327272198114809footer\" style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; margin: 0 auto; padding: 0; text-align: center; width: 570px;\" role=\"presentation\" width=\"570\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\">\n<tbody>\n<tr>\n<td style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; max-width: 100vw; padding: 32px;\" align=\"center\">\n<p style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; line-height: 1.5em; margin-top: 0; color: #b0adc5; font-size: 12px; text-align: center;\">&copy; {CURRENT_YEAR} {COMPANY_TITLE}. All rights reserved.</p>\n</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n</tbody>\n</table>\n<div class=\"yj6qo\">&nbsp;</div>\n<div class=\"adL\">&nbsp;</div>\n</div>', 0, '2025-04-08 12:13:13', '2025-12-23 04:16:38'),
(17, 'email', 'interview_assignment', 'Interview', '<p>{INTERVIEW_ID}{INTERVIEW_URL}</p>', 1, '2025-05-20 05:36:58', '2025-12-24 14:29:24'),
(18, 'sms', 'interview_assignment', NULL, 'TEST', 1, '2025-05-21 09:24:06', '2025-05-21 09:24:06'),
(19, 'sms', 'interview_status_update', NULL, 'Deep SEARCH TEST UPDATE STATUS.', 1, '2025-05-21 09:24:53', '2025-05-21 09:24:53'),
(20, 'push', 'project_assignment', 'Project Assignment', '{ASSIGNEE_FIRST_NAME} {ASSIGNEE_LAST_NAME} assigned you new project: {PROJECT_TITLE}, ID:#{PROJECT_ID}.', 1, '2025-06-05 05:33:46', '2025-12-23 04:29:29'),
(21, 'push', 'project_status_updation', 'Project Status Updation', '{UPDATER_FIRST_NAME} {UPDATER_LAST_NAME} has updated the status of project {PROJECT_TITLE}, ID:#{PROJECT_ID}, from {OLD_STATUS} to {NEW_STATUS}.', 1, '2025-06-05 05:34:04', '2025-12-23 04:29:48'),
(22, 'whatsapp', 'project_assignment', NULL, 'Hello, {FIRST_NAME} {LAST_NAME} You have been assigned a new project {PROJECT_TITLE}, ID:#{PROJECT_ID}.', 0, '2025-12-23 04:03:18', '2025-12-24 07:40:11'),
(23, 'whatsapp', 'task_assignment', NULL, 'Hello, {FIRST_NAME} {LAST_NAME} You have been assigned a new task {TASK_TITLE}, ID:#{TASK_ID}.', 1, '2025-12-23 04:03:34', '2025-12-23 04:03:34'),
(24, 'whatsapp', 'task_status_updation', NULL, '{UPDATER_FIRST_NAME} {UPDATER_LAST_NAME} has updated the status of task {TASK_TITLE}, ID:#{TASK_ID}, from {OLD_STATUS} to {NEW_STATUS}.', 1, '2025-12-23 04:03:58', '2025-12-23 04:03:58'),
(25, 'whatsapp', 'task_reminder', NULL, 'You have a task reminder for Task #{TASK_ID} - \"{TASK_TITLE}\". You can view the task here: {TASK_URL}', 1, '2025-12-23 04:04:16', '2025-12-23 04:04:16'),
(26, 'whatsapp', 'recurring_task', NULL, 'The recurring task #{TASK_ID} - \"{TASK_TITLE}\" has been executed. You can view the new instance here: {TASK_URL}', 1, '2025-12-23 04:04:28', '2025-12-23 04:04:28'),
(27, 'whatsapp', 'workspace_assignment', NULL, 'Hello, {FIRST_NAME} {LAST_NAME} You have been added in a new workspace {WORKSPACE_TITLE}, ID:#{WORKSPACE_ID}.', 1, '2025-12-23 04:04:46', '2025-12-23 04:04:46'),
(28, 'whatsapp', 'meeting_assignment', NULL, 'Hello, {FIRST_NAME} {LAST_NAME} You have been added in a new meeting {MEETING_TITLE}, ID:#{MEETING_ID}.', 1, '2025-12-23 04:04:58', '2025-12-23 04:04:58'),
(29, 'whatsapp', 'leave_request_creation', NULL, 'New Leave Request ID:#{ID} Has Been Created By {REQUESTEE_FIRST_NAME} {REQUESTEE_LAST_NAME}.', 1, '2025-12-23 04:05:13', '2025-12-23 04:05:13'),
(30, 'whatsapp', 'leave_request_status_updation', NULL, 'Leave Request ID:#{ID} Status Updated From {OLD_STATUS} To {NEW_STATUS}.', 1, '2025-12-23 04:05:25', '2025-12-23 04:05:25'),
(31, 'whatsapp', 'team_member_on_leave_alert', NULL, '{REQUESTEE_FIRST_NAME} {REQUESTEE_LAST_NAME} will be on {TYPE} leave from {FROM} to {TO}.', 1, '2025-12-23 04:05:36', '2025-12-23 04:05:36'),
(32, 'whatsapp', 'birthday_wish', NULL, 'Hello {FIRST_NAME} {LAST_NAME}, {COMPANY_TITLE} wishes you a very Happy Birthday!', 1, '2025-12-23 04:05:54', '2025-12-23 04:05:54'),
(33, 'whatsapp', 'work_anniversary_wish', NULL, 'Hello {FIRST_NAME} {LAST_NAME}, {COMPANY_TITLE} wishes you a very happy work anniversary!', 1, '2025-12-23 04:06:13', '2025-12-23 04:06:13'),
(34, 'telegram', 'project_assignment', NULL, 'Hello, {FIRST_NAME} {LAST_NAME} You have been assigned a new project {PROJECT_TITLE}, ID:#{PROJECT_ID}.', 1, '2025-12-23 04:07:04', '2025-12-23 04:07:04'),
(35, 'whatsapp', 'project_status_updation', NULL, '{UPDATER_FIRST_NAME} {UPDATER_LAST_NAME} has updated the status of project {PROJECT_TITLE}, ID:#{PROJECT_ID}, from {OLD_STATUS} to {NEW_STATUS}.', 1, '2025-12-23 04:07:29', '2025-12-23 04:08:26'),
(36, 'telegram', 'project_status_updation', NULL, '{UPDATER_FIRST_NAME} {UPDATER_LAST_NAME} has updated the status of project {PROJECT_TITLE}, ID:#{PROJECT_ID}, from {OLD_STATUS} to {NEW_STATUS}.', 1, '2025-12-23 04:08:50', '2025-12-23 04:13:38'),
(37, 'telegram', 'task_assignment', NULL, 'Hello, {FIRST_NAME} {LAST_NAME} You have been assigned a new task {TASK_TITLE}, ID:#{TASK_ID}.', 1, '2025-12-23 04:13:51', '2025-12-23 04:13:51'),
(38, 'telegram', 'task_status_updation', NULL, '{UPDATER_FIRST_NAME} {UPDATER_LAST_NAME} has updated the status of task {TASK_TITLE}, ID:#{TASK_ID}, from {OLD_STATUS} to {NEW_STATUS}.', 1, '2025-12-23 04:14:03', '2025-12-23 04:14:03'),
(39, 'telegram', 'task_reminder', NULL, 'You have a task reminder for Task #{TASK_ID} - \"{TASK_TITLE}\". You can view the task here: {TASK_URL}', 1, '2025-12-23 04:14:12', '2025-12-23 04:14:12'),
(40, 'telegram', 'recurring_task', NULL, 'The recurring task #{TASK_ID} - \"{TASK_TITLE}\" has been executed. You can view the new instance here: {TASK_URL}', 1, '2025-12-23 04:14:20', '2025-12-23 04:14:20'),
(41, 'telegram', 'workspace_assignment', NULL, 'Hello, {FIRST_NAME} {LAST_NAME} You have been added in a new workspace {WORKSPACE_TITLE}, ID:#{WORKSPACE_ID}.', 1, '2025-12-23 04:14:32', '2025-12-23 04:14:32'),
(42, 'telegram', 'meeting_assignment', NULL, 'Hello, {FIRST_NAME} {LAST_NAME} You have been added in a new meeting {MEETING_TITLE}, ID:#{MEETING_ID}.', 1, '2025-12-23 04:14:41', '2025-12-23 04:14:41'),
(43, 'telegram', 'leave_request_creation', NULL, 'New Leave Request ID:#{ID} Has Been Created By {REQUESTEE_FIRST_NAME} {REQUESTEE_LAST_NAME}.', 1, '2025-12-23 04:14:50', '2025-12-23 04:15:09'),
(44, 'telegram', 'leave_request_status_updation', NULL, 'Leave Request ID:#{ID} Status Updated From {OLD_STATUS} To {NEW_STATUS}.', 1, '2025-12-23 04:15:19', '2025-12-23 04:15:19'),
(45, 'telegram', 'team_member_on_leave_alert', NULL, '{REQUESTEE_FIRST_NAME} {REQUESTEE_LAST_NAME} will be on {TYPE} leave from {FROM} to {TO}.', 1, '2025-12-23 04:15:28', '2025-12-23 04:15:28'),
(46, 'telegram', 'birthday_wish', NULL, 'Hello {FIRST_NAME} {LAST_NAME}, {COMPANY_TITLE} wishes you a very Happy Birthday!', 1, '2025-12-23 04:15:39', '2025-12-23 04:15:39'),
(47, 'telegram', 'work_anniversary_wish', NULL, 'Hello {FIRST_NAME} {LAST_NAME}, {COMPANY_TITLE} wishes you a very happy work anniversary!', 1, '2025-12-23 04:15:49', '2025-12-23 04:15:49'),
(48, 'email', 'verify_email', 'Email Verification', '<div style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; background-color: #ffffff; color: #718096; height: 100%; line-height: 1.4; margin: 0; padding: 0; width: 100%!important;\">\n<table style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; background-color: #edf2f7; margin: 0; padding: 0; width: 100%;\" role=\"presentation\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\';\" align=\"center\">\n<table style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; margin: 0px; padding: 0px; width: 100%; height: 659.844px;\" role=\"presentation\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr style=\"height: 77.0938px;\">\n<td style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; padding: 25px 0px; height: 77.0938px; text-align: center;\"><span style=\"font-size: 18px;\">{COMPANY_LOGO}</span></td>\n</tr>\n<tr style=\"height: 486.25px;\">\n<td style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; background-color: rgb(237, 242, 247); margin: 0px; padding: 0px; width: 100%; border: hidden !important; height: 486.25px;\" width=\"100%\">\n<table class=\"m_2051327272198114809inner-body\" style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; background-color: #ffffff; border-color: #e8e5ef; border-radius: 2px; border-width: 1px; margin: 0 auto; padding: 0; width: 570px;\" role=\"presentation\" width=\"570\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\">\n<tbody>\n<tr>\n<td style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; max-width: 100vw; padding: 32px;\">\n<h1 style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; color: rgb(61, 72, 82); font-size: 18px; font-weight: bold; margin-top: 0px; text-align: left;\">Hello, {FIRST_NAME} {LAST_NAME}</h1>\n<p style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; font-size: 16px; line-height: 1.5em; margin-top: 0; text-align: left;\">Please click the button below to verify your email address.</p>\n<table style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; margin: 30px auto; padding: 0; text-align: center; width: 100%;\" role=\"presentation\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\">\n<tbody>\n<tr>\n<td style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\';\" align=\"center\">\n<table style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\';\" role=\"presentation\" border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\';\" align=\"center\">\n<table style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\';\" role=\"presentation\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\';\"><a class=\"m_2051327272198114809button\" style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; border-radius: 4px; color: #fff; display: inline-block; overflow: hidden; text-decoration: none; background-color: #2d3748; border-bottom: 8px solid #2d3748; border-left: 18px solid #2d3748; border-right: 18px solid #2d3748; border-top: 8px solid #2d3748;\" href=\"{VERIFY_EMAIL_URL}\" target=\"_blank\" rel=\"noopener\" data-saferedirecturl=\"https://www.google.com/url?q=http://127.0.0.1:8000/email/verify/129/9e323bcc5df5fdff3fe6ff960fd6576204a510ca?expires%3D1710157052%26signature%3D2df5df03c59d0dcd960500989168d0bb4b064035d572bc4195ca5a912b0302e8&amp;source=gmail&amp;ust=1710333202290000&amp;usg=AOvVaw2RJnO33Iiu4v5j5tJBiQWH\">Verify Email Address</a></td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n</tbody>\n</table>\n<p style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; font-size: 16px; line-height: 1.5em; margin-top: 0; text-align: left;\">If you did not create an account, no further action is required.</p>\n<p style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; font-size: 16px; line-height: 1.5em; margin-top: 0; text-align: left;\">Regards,</p>\n<table style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; border-top: 1px solid #e8e5ef; margin-top: 25px; padding-top: 25px;\" role=\"presentation\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\';\">\n<p style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; line-height: 1.5em; margin-top: 0; text-align: left; font-size: 14px;\">If you\'re having trouble clicking the \"Verify Email Address\" button, copy and paste the URL below into your web browser: {VERIFY_EMAIL_URL}</p>\n</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n<tr>\n<td style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; max-width: 100vw; padding: 32px;\">\n<h1 style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; color: #3d4852; font-size: 18px; font-weight: bold; margin-top: 0; text-align: left;\">&nbsp;</h1>\n</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n<tr style=\"height: 96.5px;\">\n<td style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; height: 96.5px;\">\n<table class=\"m_2051327272198114809footer\" style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; margin: 0 auto; padding: 0; text-align: center; width: 570px;\" role=\"presentation\" width=\"570\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\">\n<tbody>\n<tr>\n<td style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; max-width: 100vw; padding: 32px;\" align=\"center\">\n<p style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; line-height: 1.5em; margin-top: 0; color: #b0adc5; font-size: 12px; text-align: center;\">&copy; {CURRENT_YEAR} {COMPANY_TITLE}. All rights reserved.</p>\n</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n</tbody>\n</table>\n<div class=\"yj6qo\">&nbsp;</div>\n<div class=\"adL\">&nbsp;</div>\n</div>', 1, '2025-12-23 04:17:29', '2025-12-23 04:17:29'),
(49, 'email', 'forgot_password', 'Reset Password', '<div style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; background-color: #ffffff; color: #718096; height: 100%; line-height: 1.4; margin: 0; padding: 0; width: 100%!important;\">\n<table style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; background-color: #edf2f7; margin: 0; padding: 0; width: 100%;\" role=\"presentation\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\';\" align=\"center\">\n<table style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; margin: 0; padding: 0; width: 100%;\" role=\"presentation\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; padding: 25px 0; text-align: center;\">&nbsp;{COMPANY_LOGO}</td>\n</tr>\n<tr>\n<td style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; background-color: #edf2f7; border-bottom: 1px solid #edf2f7; border-top: 1px solid #edf2f7; margin: 0; padding: 0; width: 100%; border: hidden!important;\" width=\"100%\">\n<table class=\"m_-1573326913322544649inner-body\" style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; background-color: #ffffff; border-color: #e8e5ef; border-radius: 2px; border-width: 1px; margin: 0 auto; padding: 0; width: 570px;\" role=\"presentation\" width=\"570\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\">\n<tbody>\n<tr>\n<td style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; max-width: 100vw; padding: 32px;\">\n<h1 style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; color: rgb(61, 72, 82); font-size: 18px; font-weight: bold; margin-top: 0px; text-align: left;\">Hello, {FIRST_NAME} {LAST_NAME}</h1>\n<p style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; font-size: 16px; line-height: 1.5em; margin-top: 0; text-align: left;\">You are receiving this email because we received a password reset request for your account.</p>\n<table style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; margin: 30px auto; padding: 0; text-align: center; width: 100%;\" role=\"presentation\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\">\n<tbody>\n<tr>\n<td style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\';\" align=\"center\">\n<table style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\';\" role=\"presentation\" border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\';\" align=\"center\">\n<table style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\';\" role=\"presentation\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\';\"><a class=\"m_-1573326913322544649button\" style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; border-radius: 4px; color: #fff; display: inline-block; overflow: hidden; text-decoration: none; background-color: #2d3748; border-bottom: 8px solid #2d3748; border-left: 18px solid #2d3748; border-right: 18px solid #2d3748; border-top: 8px solid #2d3748;\" href=\"{RESET_PASSWORD_URL}\" target=\"_blank\" rel=\"noopener\" data-saferedirecturl=\"https://www.google.com/url?q=http://127.0.0.1:8000/reset-password/a949de0b656f969649a7f702f263b5a6700085e97958ec84a3aa600a52f40c49?email%3Dgirishthacker1995%2540gmail.com&amp;source=gmail&amp;ust=1710507596576000&amp;usg=AOvVaw1NMV_rWlcnaraU7NfjEcNQ\">Reset Password</a></td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n</tbody>\n</table>\n<p style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; font-size: 16px; line-height: 1.5em; margin-top: 0; text-align: left;\">This password reset link will expire in 60 minutes.</p>\n<p style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; font-size: 16px; line-height: 1.5em; margin-top: 0; text-align: left;\">If you did not request a password reset, no further action is required.</p>\n<p style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; font-size: 16px; line-height: 1.5em; margin-top: 0; text-align: left;\">Regards,</p>\n<table style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; border-top: 1px solid #e8e5ef; margin-top: 25px; padding-top: 25px;\" role=\"presentation\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\';\">\n<p style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; line-height: 1.5em; margin-top: 0; text-align: left; font-size: 14px;\">If you\'re having trouble clicking the \"Reset Password\" button, copy and paste the URL below into your web browser: {RESET_PASSWORD_URL}</p>\n</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n<tr>\n<td style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\';\">\n<table class=\"m_-1573326913322544649footer\" style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; margin: 0 auto; padding: 0; text-align: center; width: 570px;\" role=\"presentation\" width=\"570\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\">\n<tbody>\n<tr>\n<td style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; max-width: 100vw; padding: 32px;\" align=\"center\">\n<p style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; line-height: 1.5em; margin-top: 0; color: #b0adc5; font-size: 12px; text-align: center;\">&copy; {CURRENT_YEAR} {COMPANY_TITLE}. All rights reserved.</p>\n</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n</tbody>\n</table>\n<div class=\"yj6qo\">&nbsp;</div>\n<div class=\"adL\">&nbsp;</div>\n</div>', 1, '2025-12-23 04:17:58', '2025-12-23 04:17:58'),
(50, 'email', 'project_assignment', 'Project Assignment', '<div style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; background-color: #ffffff; color: #718096; height: 100%; line-height: 1.4; margin: 0; padding: 0; width: 100%!important;\">\n<table style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; background-color: #edf2f7; margin: 0; padding: 0; width: 100%;\" role=\"presentation\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\';\" align=\"center\">\n<table style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; margin: 0px; padding: 0px; width: 100%; height: 659.844px;\" role=\"presentation\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr style=\"height: 77.0938px;\">\n<td style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; padding: 25px 0px; height: 77.0938px; text-align: center;\"><span style=\"font-size: 18px;\">{COMPANY_LOGO}</span></td>\n</tr>\n<tr style=\"height: 486.25px;\">\n<td style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; background-color: rgb(237, 242, 247); margin: 0px; padding: 0px; width: 100%; border: hidden !important; height: 486.25px;\" width=\"100%\">\n<table class=\"m_2051327272198114809inner-body\" style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; background-color: #ffffff; border-color: #e8e5ef; border-radius: 2px; border-width: 1px; margin: 0 auto; padding: 0; width: 570px;\" role=\"presentation\" width=\"570\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\">\n<tbody>\n<tr>\n<td style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; max-width: 100vw; padding: 32px;\">\n<h1 style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; color: rgb(61, 72, 82); font-size: 18px; font-weight: bold; margin-top: 0px; text-align: left;\">Hello, {FIRST_NAME} {LAST_NAME}</h1>\n<p style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; font-size: 16px; line-height: 1.5em; margin-top: 0; text-align: left;\">You have been assigned a new project <strong>{PROJECT_TITLE}, </strong>ID:<strong>#{PROJECT_ID}</strong>.<br><br>Please click the button below to access detailed project information.</p>\n<table style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; margin: 30px auto; padding: 0; text-align: center; width: 100%;\" role=\"presentation\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\">\n<tbody>\n<tr>\n<td style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\';\" align=\"center\">\n<table style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\';\" role=\"presentation\" border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\';\" align=\"center\">\n<table style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\';\" role=\"presentation\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\';\"><a class=\"m_2051327272198114809button\" style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; border-radius: 4px; color: #fff; display: inline-block; overflow: hidden; text-decoration: none; background-color: #2d3748; border-bottom: 8px solid #2d3748; border-left: 18px solid #2d3748; border-right: 18px solid #2d3748; border-top: 8px solid #2d3748;\" href=\"{PROJECT_URL}\" target=\"_blank\" rel=\"noopener\" data-saferedirecturl=\"https://www.google.com/url?q=http://127.0.0.1:8000/email/verify/129/9e323bcc5df5fdff3fe6ff960fd6576204a510ca?expires%3D1710157052%26signature%3D2df5df03c59d0dcd960500989168d0bb4b064035d572bc4195ca5a912b0302e8&amp;source=gmail&amp;ust=1710333202290000&amp;usg=AOvVaw2RJnO33Iiu4v5j5tJBiQWH\">View Project Details</a></td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n</tbody>\n</table>\n<p style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; font-size: 16px; line-height: 1.5em; margin-top: 0; text-align: left;\">Regards,</p>\n<table style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; border-top: 1px solid #e8e5ef; margin-top: 25px; padding-top: 25px;\" role=\"presentation\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\';\">\n<p style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; line-height: 1.5em; margin-top: 0; text-align: left; font-size: 14px;\">If you\'re having trouble clicking the \"View Project Details\" button, copy and paste the URL below into your web browser: {PROJECT_URL}</p>\n</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n<tr>\n<td style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; max-width: 100vw; padding: 32px;\">\n<h1 style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; color: #3d4852; font-size: 18px; font-weight: bold; margin-top: 0; text-align: left;\">&nbsp;</h1>\n</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n<tr style=\"height: 96.5px;\">\n<td style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; height: 96.5px;\">\n<table class=\"m_2051327272198114809footer\" style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; margin: 0 auto; padding: 0; text-align: center; width: 570px;\" role=\"presentation\" width=\"570\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\">\n<tbody>\n<tr>\n<td style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; max-width: 100vw; padding: 32px;\" align=\"center\">\n<p style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; line-height: 1.5em; margin-top: 0; color: #b0adc5; font-size: 12px; text-align: center;\">&copy; {CURRENT_YEAR} {COMPANY_TITLE}. All rights reserved.</p>\n</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n</tbody>\n</table>\n<div class=\"yj6qo\">&nbsp;</div>\n<div class=\"adL\">&nbsp;</div>\n</div>', 1, '2025-12-23 04:18:24', '2025-12-23 04:18:24');
INSERT INTO `templates` (`id`, `type`, `name`, `subject`, `content`, `status`, `created_at`, `updated_at`) VALUES
(51, 'email', 'task_assignment', 'Task Assignment', '<div style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; background-color: #ffffff; color: #718096; height: 100%; line-height: 1.4; margin: 0; padding: 0; width: 100%!important;\">\n<table style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; background-color: #edf2f7; margin: 0; padding: 0; width: 100%;\" role=\"presentation\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\';\" align=\"center\">\n<table style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; margin: 0px; padding: 0px; width: 100%; height: 659.844px;\" role=\"presentation\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr style=\"height: 77.0938px;\">\n<td style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; padding: 25px 0px; height: 77.0938px; text-align: center;\"><span style=\"font-size: 18px;\">{COMPANY_LOGO}</span></td>\n</tr>\n<tr style=\"height: 486.25px;\">\n<td style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; background-color: rgb(237, 242, 247); margin: 0px; padding: 0px; width: 100%; border: hidden !important; height: 486.25px;\" width=\"100%\">\n<table class=\"m_2051327272198114809inner-body\" style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; background-color: #ffffff; border-color: #e8e5ef; border-radius: 2px; border-width: 1px; margin: 0 auto; padding: 0; width: 570px;\" role=\"presentation\" width=\"570\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\">\n<tbody>\n<tr>\n<td style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; max-width: 100vw; padding: 32px;\">\n<h1 style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; color: rgb(61, 72, 82); font-size: 18px; font-weight: bold; margin-top: 0px; text-align: left;\">Hello, {FIRST_NAME} {LAST_NAME}</h1>\n<p style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; font-size: 16px; line-height: 1.5em; margin-top: 0; text-align: left;\">You have been assigned a new task <strong>{TASK_TITLE}, </strong>ID:<strong>#{TASK_ID}</strong>.<br><br>Please click the button below to access detailed task information.</p>\n<table style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; margin: 30px auto; padding: 0; text-align: center; width: 100%;\" role=\"presentation\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\">\n<tbody>\n<tr>\n<td style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\';\" align=\"center\">\n<table style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\';\" role=\"presentation\" border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\';\" align=\"center\">\n<table style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\';\" role=\"presentation\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\';\"><a class=\"m_2051327272198114809button\" style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; border-radius: 4px; color: #fff; display: inline-block; overflow: hidden; text-decoration: none; background-color: #2d3748; border-bottom: 8px solid #2d3748; border-left: 18px solid #2d3748; border-right: 18px solid #2d3748; border-top: 8px solid #2d3748;\" href=\"{TASK_URL}\" target=\"_blank\" rel=\"noopener\" data-saferedirecturl=\"https://www.google.com/url?q=http://127.0.0.1:8000/email/verify/129/9e323bcc5df5fdff3fe6ff960fd6576204a510ca?expires%3D1710157052%26signature%3D2df5df03c59d0dcd960500989168d0bb4b064035d572bc4195ca5a912b0302e8&amp;source=gmail&amp;ust=1710333202290000&amp;usg=AOvVaw2RJnO33Iiu4v5j5tJBiQWH\">View Task Details</a></td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n</tbody>\n</table>\n<p style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; font-size: 16px; line-height: 1.5em; margin-top: 0; text-align: left;\">Regards,</p>\n<table style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; border-top: 1px solid #e8e5ef; margin-top: 25px; padding-top: 25px;\" role=\"presentation\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\';\">\n<p style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; line-height: 1.5em; margin-top: 0; text-align: left; font-size: 14px;\">If you\'re having trouble clicking the \"View Task Details\" button, copy and paste the URL below into your web browser: {TASK_URL}</p>\n</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n<tr>\n<td style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; max-width: 100vw; padding: 32px;\">\n<h1 style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; color: #3d4852; font-size: 18px; font-weight: bold; margin-top: 0; text-align: left;\">&nbsp;</h1>\n</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n<tr style=\"height: 96.5px;\">\n<td style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; height: 96.5px;\">\n<table class=\"m_2051327272198114809footer\" style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; margin: 0 auto; padding: 0; text-align: center; width: 570px;\" role=\"presentation\" width=\"570\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\">\n<tbody>\n<tr>\n<td style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; max-width: 100vw; padding: 32px;\" align=\"center\">\n<p style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; line-height: 1.5em; margin-top: 0; color: #b0adc5; font-size: 12px; text-align: center;\">&copy; {CURRENT_YEAR} {COMPANY_TITLE}. All rights reserved.</p>\n</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n</tbody>\n</table>\n<div class=\"yj6qo\">&nbsp;</div>\n<div class=\"adL\">&nbsp;</div>\n</div>', 1, '2025-12-23 04:18:52', '2025-12-23 04:19:09'),
(52, 'email', 'task_status_updation', 'Task Status Updation', '<div style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; background-color: #ffffff; color: #718096; height: 100%; line-height: 1.4; margin: 0; padding: 0; width: 100%!important;\">\n<table style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; background-color: #edf2f7; margin: 0; padding: 0; width: 100%;\" role=\"presentation\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\';\" align=\"center\">\n<table style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; margin: 0px; padding: 0px; width: 100%; height: 659.844px;\" role=\"presentation\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr style=\"height: 77.0938px;\">\n<td style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; padding: 25px 0px; height: 77.0938px; text-align: center;\"><span style=\"font-size: 18px;\">{COMPANY_LOGO}</span></td>\n</tr>\n<tr style=\"height: 486.25px;\">\n<td style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; background-color: rgb(237, 242, 247); margin: 0px; padding: 0px; width: 100%; border: hidden !important; height: 486.25px;\" width=\"100%\">\n<table class=\"m_2051327272198114809inner-body\" style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; background-color: #ffffff; border-color: #e8e5ef; border-radius: 2px; border-width: 1px; margin: 0 auto; padding: 0; width: 570px;\" role=\"presentation\" width=\"570\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\">\n<tbody>\n<tr>\n<td style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; max-width: 100vw; padding: 32px;\">\n<h1 style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; color: rgb(61, 72, 82); font-size: 18px; font-weight: bold; margin-top: 0px; text-align: left;\">Hello, {FIRST_NAME} {LAST_NAME}</h1>\n<p style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; font-size: 16px; line-height: 1.5em; margin-top: 0; text-align: left;\">This is to inform you that {UPDATER_FIRST_NAME} {UPDATER_LAST_NAME} has updated the status of task <strong>{TASK_TITLE}</strong>, ID: <strong>#{TASK_ID}</strong>, from <strong>{OLD_STATUS}</strong> to <strong>{NEW_STATUS}</strong>.<br><br>Please click the button below to access detailed task information.</p>\n<table style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; margin: 30px auto; padding: 0; text-align: center; width: 100%;\" role=\"presentation\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\">\n<tbody>\n<tr>\n<td style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\';\" align=\"center\">\n<table style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\';\" role=\"presentation\" border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\';\" align=\"center\">\n<table style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\';\" role=\"presentation\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\';\"><a class=\"m_2051327272198114809button\" style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; border-radius: 4px; color: #fff; display: inline-block; overflow: hidden; text-decoration: none; background-color: #2d3748; border-bottom: 8px solid #2d3748; border-left: 18px solid #2d3748; border-right: 18px solid #2d3748; border-top: 8px solid #2d3748;\" href=\"{TASK_URL}\" target=\"_blank\" rel=\"noopener\" data-saferedirecturl=\"https://www.google.com/url?q=http://127.0.0.1:8000/email/verify/129/9e323bcc5df5fdff3fe6ff960fd6576204a510ca?expires%3D1710157052%26signature%3D2df5df03c59d0dcd960500989168d0bb4b064035d572bc4195ca5a912b0302e8&amp;source=gmail&amp;ust=1710333202290000&amp;usg=AOvVaw2RJnO33Iiu4v5j5tJBiQWH\">View Task Details</a></td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n</tbody>\n</table>\n<p style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; font-size: 16px; line-height: 1.5em; margin-top: 0; text-align: left;\">Regards,</p>\n<table style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; border-top: 1px solid #e8e5ef; margin-top: 25px; padding-top: 25px;\" role=\"presentation\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\';\">\n<p style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; line-height: 1.5em; margin-top: 0; text-align: left; font-size: 14px;\">If you\'re having trouble clicking the \"View Task Details\" button, copy and paste the URL below into your web browser: {TASK_URL}</p>\n</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n<tr>\n<td style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; max-width: 100vw; padding: 32px;\">\n<h1 style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; color: #3d4852; font-size: 18px; font-weight: bold; margin-top: 0; text-align: left;\">&nbsp;</h1>\n</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n<tr style=\"height: 96.5px;\">\n<td style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; height: 96.5px;\">\n<table class=\"m_2051327272198114809footer\" style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; margin: 0 auto; padding: 0; text-align: center; width: 570px;\" role=\"presentation\" width=\"570\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\">\n<tbody>\n<tr>\n<td style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; max-width: 100vw; padding: 32px;\" align=\"center\">\n<p style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; line-height: 1.5em; margin-top: 0; color: #b0adc5; font-size: 12px; text-align: center;\">&copy; {CURRENT_YEAR} {COMPANY_TITLE}. All rights reserved.</p>\n</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n</tbody>\n</table>\n<div class=\"yj6qo\">&nbsp;</div>\n<div class=\"adL\">&nbsp;</div>\n</div>', 1, '2025-12-23 04:19:28', '2025-12-23 04:19:28'),
(53, 'email', 'task_reminder', 'Task Remider', '<div style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; background-color: #ffffff; color: #718096; height: 100%; line-height: 1.4; margin: 0; padding: 0; width: 100%!important;\">\n<table style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; background-color: #edf2f7; margin: 0; padding: 0; width: 100%;\" role=\"presentation\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\';\" align=\"center\">\n<table style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; margin: 0px; padding: 0px; width: 100%; height: 659.844px;\" role=\"presentation\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr style=\"height: 77.0938px;\">\n<td style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; padding: 25px 0px; height: 77.0938px; text-align: center;\"><span style=\"font-size: 18px;\">{COMPANY_LOGO}</span></td>\n</tr>\n<tr style=\"height: 486.25px;\">\n<td style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; background-color: rgb(237, 242, 247); margin: 0px; padding: 0px; width: 100%; border: hidden !important; height: 486.25px;\" width=\"100%\">\n<table class=\"m_2051327272198114809inner-body\" style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; background-color: #ffffff; border-color: #e8e5ef; border-radius: 2px; border-width: 1px; margin: 0 auto; padding: 0; width: 570px;\" role=\"presentation\" width=\"570\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\">\n<tbody>\n<tr>\n<td style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; max-width: 100vw; padding: 32px;\">\n<p style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; font-size: 16px; line-height: 1.5em; margin-top: 0; text-align: left;\">You have a task reminder for Task #<strong>{TASK_ID} - {TASK_TITLE}</strong>. You can view the task here: {TASK_URL}.</p>\n<table style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; margin: 30px auto; padding: 0; text-align: center; width: 100%;\" role=\"presentation\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\">\n<tbody>\n<tr>\n<td style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\';\" align=\"center\">\n<table style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\';\" role=\"presentation\" border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\';\" align=\"center\">\n<table style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\';\" role=\"presentation\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\';\"><a class=\"m_2051327272198114809button\" style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; border-radius: 4px; color: #fff; display: inline-block; overflow: hidden; text-decoration: none; background-color: #2d3748; border-bottom: 8px solid #2d3748; border-left: 18px solid #2d3748; border-right: 18px solid #2d3748; border-top: 8px solid #2d3748;\" href=\"{TASK_URL}\" target=\"_blank\" rel=\"noopener\" data-saferedirecturl=\"https://www.google.com/url?q=http://127.0.0.1:8000/email/verify/129/9e323bcc5df5fdff3fe6ff960fd6576204a510ca?expires%3D1710157052%26signature%3D2df5df03c59d0dcd960500989168d0bb4b064035d572bc4195ca5a912b0302e8&amp;source=gmail&amp;ust=1710333202290000&amp;usg=AOvVaw2RJnO33Iiu4v5j5tJBiQWH\">View Task Details</a></td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n</tbody>\n</table>\n<p style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; font-size: 16px; line-height: 1.5em; margin-top: 0; text-align: left;\">Regards,</p>\n<table style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; border-top: 1px solid #e8e5ef; margin-top: 25px; padding-top: 25px;\" role=\"presentation\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\';\">\n<p style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; line-height: 1.5em; margin-top: 0; text-align: left; font-size: 14px;\">If you\'re having trouble clicking the \"View Task Details\" button, copy and paste the URL below into your web browser: {TASK_URL}</p>\n</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n<tr>\n<td style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; max-width: 100vw; padding: 32px;\">\n<h1 style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; color: #3d4852; font-size: 18px; font-weight: bold; margin-top: 0; text-align: left;\">&nbsp;</h1>\n</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n<tr style=\"height: 96.5px;\">\n<td style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; height: 96.5px;\">\n<table class=\"m_2051327272198114809footer\" style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; margin: 0 auto; padding: 0; text-align: center; width: 570px;\" role=\"presentation\" width=\"570\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\">\n<tbody>\n<tr>\n<td style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; max-width: 100vw; padding: 32px;\" align=\"center\">\n<p style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; line-height: 1.5em; margin-top: 0; color: #b0adc5; font-size: 12px; text-align: center;\">&copy; {CURRENT_YEAR} {COMPANY_TITLE}. All rights reserved.</p>\n</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n</tbody>\n</table>\n<div class=\"yj6qo\">&nbsp;</div>\n<div class=\"adL\">&nbsp;</div>\n</div>', 1, '2025-12-23 04:19:58', '2025-12-23 04:19:58'),
(54, 'email', 'recurring_task', 'Recuring Task', '<div style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; background-color: #ffffff; color: #718096; height: 100%; line-height: 1.4; margin: 0; padding: 0; width: 100%!important;\">\n<table style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; background-color: #edf2f7; margin: 0; padding: 0; width: 100%;\" role=\"presentation\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\';\" align=\"center\">\n<table style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; margin: 0px; padding: 0px; width: 100%; height: 659.844px;\" role=\"presentation\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr style=\"height: 77.0938px;\">\n<td style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; padding: 25px 0px; height: 77.0938px; text-align: center;\"><span style=\"font-size: 18px;\">{COMPANY_LOGO}</span></td>\n</tr>\n<tr style=\"height: 486.25px;\">\n<td style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; background-color: rgb(237, 242, 247); margin: 0px; padding: 0px; width: 100%; border: hidden !important; height: 486.25px;\" width=\"100%\">\n<table class=\"m_2051327272198114809inner-body\" style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; background-color: #ffffff; border-color: #e8e5ef; border-radius: 2px; border-width: 1px; margin: 0 auto; padding: 0; width: 570px;\" role=\"presentation\" width=\"570\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\">\n<tbody>\n<tr>\n<td style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; max-width: 100vw; padding: 32px;\">\n<p style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; font-size: 16px; line-height: 1.5em; margin-top: 0; text-align: left;\">The recurring task <strong> #{TASK_ID} - \"{TASK_TITLE}\"</strong> has been executed. You can view the new instance here: {TASK_URL}.</p>\n<table style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; margin: 30px auto; padding: 0; text-align: center; width: 100%;\" role=\"presentation\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\">\n<tbody>\n<tr>\n<td style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\';\" align=\"center\">\n<table style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\';\" role=\"presentation\" border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\';\" align=\"center\">\n<table style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\';\" role=\"presentation\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\';\"><a class=\"m_2051327272198114809button\" style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; border-radius: 4px; color: #fff; display: inline-block; overflow: hidden; text-decoration: none; background-color: #2d3748; border-bottom: 8px solid #2d3748; border-left: 18px solid #2d3748; border-right: 18px solid #2d3748; border-top: 8px solid #2d3748;\" href=\"{TASK_URL}\" target=\"_blank\" rel=\"noopener\" data-saferedirecturl=\"https://www.google.com/url?q=http://127.0.0.1:8000/email/verify/129/9e323bcc5df5fdff3fe6ff960fd6576204a510ca?expires%3D1710157052%26signature%3D2df5df03c59d0dcd960500989168d0bb4b064035d572bc4195ca5a912b0302e8&amp;source=gmail&amp;ust=1710333202290000&amp;usg=AOvVaw2RJnO33Iiu4v5j5tJBiQWH\">View Task Details</a></td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n</tbody>\n</table>\n<p style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; font-size: 16px; line-height: 1.5em; margin-top: 0; text-align: left;\">Regards,</p>\n<table style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; border-top: 1px solid #e8e5ef; margin-top: 25px; padding-top: 25px;\" role=\"presentation\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\';\">\n<p style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; line-height: 1.5em; margin-top: 0; text-align: left; font-size: 14px;\">If you\'re having trouble clicking the \"View Task Details\" button, copy and paste the URL below into your web browser: {TASK_URL}</p>\n</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n<tr>\n<td style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; max-width: 100vw; padding: 32px;\">\n<h1 style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; color: #3d4852; font-size: 18px; font-weight: bold; margin-top: 0; text-align: left;\">&nbsp;</h1>\n</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n<tr style=\"height: 96.5px;\">\n<td style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; height: 96.5px;\">\n<table class=\"m_2051327272198114809footer\" style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; margin: 0 auto; padding: 0; text-align: center; width: 570px;\" role=\"presentation\" width=\"570\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\">\n<tbody>\n<tr>\n<td style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; max-width: 100vw; padding: 32px;\" align=\"center\">\n<p style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; line-height: 1.5em; margin-top: 0; color: #b0adc5; font-size: 12px; text-align: center;\">&copy; {CURRENT_YEAR} {COMPANY_TITLE}. All rights reserved.</p>\n</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n</tbody>\n</table>\n<div class=\"yj6qo\">&nbsp;</div>\n<div class=\"adL\">&nbsp;</div>\n</div>', 1, '2025-12-23 04:20:24', '2025-12-23 04:20:24'),
(55, 'email', 'workspace_assignment', 'WorkSpace Assignment', '<div style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; background-color: #ffffff; color: #718096; height: 100%; line-height: 1.4; margin: 0; padding: 0; width: 100%!important;\">\n<table style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; background-color: #edf2f7; margin: 0; padding: 0; width: 100%;\" role=\"presentation\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\';\" align=\"center\">\n<table style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; margin: 0px; padding: 0px; width: 100%; height: 659.844px;\" role=\"presentation\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr style=\"height: 77.0938px;\">\n<td style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; padding: 25px 0px; height: 77.0938px; text-align: center;\"><span style=\"font-size: 18px;\">{COMPANY_LOGO}</span></td>\n</tr>\n<tr style=\"height: 486.25px;\">\n<td style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; background-color: rgb(237, 242, 247); margin: 0px; padding: 0px; width: 100%; border: hidden !important; height: 486.25px;\" width=\"100%\">\n<table class=\"m_2051327272198114809inner-body\" style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; background-color: #ffffff; border-color: #e8e5ef; border-radius: 2px; border-width: 1px; margin: 0 auto; padding: 0; width: 570px;\" role=\"presentation\" width=\"570\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\">\n<tbody>\n<tr>\n<td style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; max-width: 100vw; padding: 32px;\">\n<h1 style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; color: rgb(61, 72, 82); font-size: 18px; font-weight: bold; margin-top: 0px; text-align: left;\">Hello, {FIRST_NAME} {LAST_NAME}</h1>\n<p style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; font-size: 16px; line-height: 1.5em; margin-top: 0; text-align: left;\">You have been added in a new workspace <strong>{WORKSPACE_TITLE}, </strong>ID:<strong>#{WORKSPACE_ID}</strong>.</p>\n<p style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; font-size: 16px; line-height: 1.5em; margin-top: 0; text-align: left;\">Please click the button below to access workspace.</p>\n<table style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; margin: 30px auto; padding: 0; text-align: center; width: 100%;\" role=\"presentation\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\">\n<tbody>\n<tr>\n<td style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\';\" align=\"center\">\n<table style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\';\" role=\"presentation\" border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\';\" align=\"center\">\n<table style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\';\" role=\"presentation\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\';\"><a class=\"m_2051327272198114809button\" style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; border-radius: 4px; color: #fff; display: inline-block; overflow: hidden; text-decoration: none; background-color: #2d3748; border-bottom: 8px solid #2d3748; border-left: 18px solid #2d3748; border-right: 18px solid #2d3748; border-top: 8px solid #2d3748;\" href=\"{WORKSPACE_URL}\" target=\"_blank\" rel=\"noopener\" data-saferedirecturl=\"https://www.google.com/url?q=http://127.0.0.1:8000/email/verify/129/9e323bcc5df5fdff3fe6ff960fd6576204a510ca?expires%3D1710157052%26signature%3D2df5df03c59d0dcd960500989168d0bb4b064035d572bc4195ca5a912b0302e8&amp;source=gmail&amp;ust=1710333202290000&amp;usg=AOvVaw2RJnO33Iiu4v5j5tJBiQWH\">Access Workspace</a></td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n</tbody>\n</table>\n<p style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; font-size: 16px; line-height: 1.5em; margin-top: 0; text-align: left;\">Regards,</p>\n<table style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; border-top: 1px solid #e8e5ef; margin-top: 25px; padding-top: 25px;\" role=\"presentation\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\';\">\n<p style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; line-height: 1.5em; margin-top: 0; text-align: left; font-size: 14px;\">If you\'re having trouble clicking the \"Access Workspace\" button, copy and paste the URL below into your web browser: {WORKSPACE_URL}</p>\n</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n<tr>\n<td style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; max-width: 100vw; padding: 32px;\">\n<h1 style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; color: #3d4852; font-size: 18px; font-weight: bold; margin-top: 0; text-align: left;\">&nbsp;</h1>\n</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n<tr style=\"height: 96.5px;\">\n<td style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; height: 96.5px;\">\n<table class=\"m_2051327272198114809footer\" style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; margin: 0 auto; padding: 0; text-align: center; width: 570px;\" role=\"presentation\" width=\"570\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\">\n<tbody>\n<tr>\n<td style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; max-width: 100vw; padding: 32px;\" align=\"center\">\n<p style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; line-height: 1.5em; margin-top: 0; color: #b0adc5; font-size: 12px; text-align: center;\">&copy; {CURRENT_YEAR} {COMPANY_TITLE}. All rights reserved.</p>\n</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n</tbody>\n</table>\n<div class=\"yj6qo\">&nbsp;</div>\n<div class=\"adL\">&nbsp;</div>\n</div>', 1, '2025-12-23 04:20:52', '2025-12-23 04:20:52');
INSERT INTO `templates` (`id`, `type`, `name`, `subject`, `content`, `status`, `created_at`, `updated_at`) VALUES
(56, 'email', 'meeting_assignment', 'Meeting Assignment', '<div style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; background-color: #ffffff; color: #718096; height: 100%; line-height: 1.4; margin: 0; padding: 0; width: 100%!important;\">\n<table style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; background-color: #edf2f7; margin: 0; padding: 0; width: 100%;\" role=\"presentation\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\';\" align=\"center\">\n<table style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; margin: 0px; padding: 0px; width: 100%; height: 659.844px;\" role=\"presentation\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr style=\"height: 77.0938px;\">\n<td style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; padding: 25px 0px; height: 77.0938px; text-align: center;\"><span style=\"font-size: 18px;\">{COMPANY_LOGO}</span></td>\n</tr>\n<tr style=\"height: 486.25px;\">\n<td style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; background-color: rgb(237, 242, 247); margin: 0px; padding: 0px; width: 100%; border: hidden !important; height: 486.25px;\" width=\"100%\">\n<table class=\"m_2051327272198114809inner-body\" style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; background-color: #ffffff; border-color: #e8e5ef; border-radius: 2px; border-width: 1px; margin: 0 auto; padding: 0; width: 570px;\" role=\"presentation\" width=\"570\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\">\n<tbody>\n<tr>\n<td style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; max-width: 100vw; padding: 32px;\">\n<h1 style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; color: rgb(61, 72, 82); font-size: 18px; font-weight: bold; margin-top: 0px; text-align: left;\">Hello, {FIRST_NAME} {LAST_NAME}</h1>\n<p style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; font-size: 16px; line-height: 1.5em; margin-top: 0; text-align: left;\">You have been added in a new meeting <strong>{MEETING_TITLE}, </strong>ID:<strong>#{MEETING_ID}</strong>.</p>\n<p style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; font-size: 16px; line-height: 1.5em; margin-top: 0; text-align: left;\">Please click the button below to access meeting.</p>\n<table style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; margin: 30px auto; padding: 0; text-align: center; width: 100%;\" role=\"presentation\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\">\n<tbody>\n<tr>\n<td style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\';\" align=\"center\">\n<table style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\';\" role=\"presentation\" border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\';\" align=\"center\">\n<table style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\';\" role=\"presentation\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\';\"><a class=\"m_2051327272198114809button\" style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; border-radius: 4px; color: #fff; display: inline-block; overflow: hidden; text-decoration: none; background-color: #2d3748; border-bottom: 8px solid #2d3748; border-left: 18px solid #2d3748; border-right: 18px solid #2d3748; border-top: 8px solid #2d3748;\" href=\"{MEETING_URL}\" target=\"_blank\" rel=\"noopener\" data-saferedirecturl=\"https://www.google.com/url?q=http://127.0.0.1:8000/email/verify/129/9e323bcc5df5fdff3fe6ff960fd6576204a510ca?expires%3D1710157052%26signature%3D2df5df03c59d0dcd960500989168d0bb4b064035d572bc4195ca5a912b0302e8&amp;source=gmail&amp;ust=1710333202290000&amp;usg=AOvVaw2RJnO33Iiu4v5j5tJBiQWH\">Access Meeting</a></td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n</tbody>\n</table>\n<p style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; font-size: 16px; line-height: 1.5em; margin-top: 0; text-align: left;\">Regards,</p>\n<table style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; border-top: 1px solid #e8e5ef; margin-top: 25px; padding-top: 25px;\" role=\"presentation\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\';\">\n<p style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; line-height: 1.5em; margin-top: 0; text-align: left; font-size: 14px;\">If you\'re having trouble clicking the \"Access Meeting\" button, copy and paste the URL below into your web browser: {MEETING_URL}</p>\n</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n<tr>\n<td style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; max-width: 100vw; padding: 32px;\">\n<h1 style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; color: #3d4852; font-size: 18px; font-weight: bold; margin-top: 0; text-align: left;\">&nbsp;</h1>\n</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n<tr style=\"height: 96.5px;\">\n<td style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; height: 96.5px;\">\n<table class=\"m_2051327272198114809footer\" style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; margin: 0 auto; padding: 0; text-align: center; width: 570px;\" role=\"presentation\" width=\"570\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\">\n<tbody>\n<tr>\n<td style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; max-width: 100vw; padding: 32px;\" align=\"center\">\n<p style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; line-height: 1.5em; margin-top: 0; color: #b0adc5; font-size: 12px; text-align: center;\">&copy; {CURRENT_YEAR} {COMPANY_TITLE}. All rights reserved.</p>\n</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n</tbody>\n</table>\n<div class=\"yj6qo\">&nbsp;</div>\n<div class=\"adL\">&nbsp;</div>\n</div>', 1, '2025-12-23 04:21:15', '2025-12-23 04:21:15'),
(57, 'email', 'leave_request_creation', 'Leave Request', '<div style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; background-color: #ffffff; color: #718096; height: 100%; line-height: 1.4; margin: 0; padding: 0; width: 100%!important;\">\n<table style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; background-color: #edf2f7; margin: 0; padding: 0; width: 100%;\" role=\"presentation\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\';\" align=\"center\">\n<table style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; margin: 0px; padding: 0px; width: 100%; height: 846.823px;\" role=\"presentation\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr style=\"height: 77.0833px;\">\n<td style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; padding: 25px 0px; height: 77.0833px; text-align: center;\"><span style=\"font-size: 18px;\">{COMPANY_LOGO}</span></td>\n</tr>\n<tr style=\"height: 672.986px;\">\n<td style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; background-color: rgb(237, 242, 247); margin: 0px; padding: 0px; width: 100%; height: 672.986px; border: hidden !important;\" width=\"100%\">\n<table class=\"m_2051327272198114809inner-body\" style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; background-color: rgb(255, 255, 255); border-color: rgb(232, 229, 239); border-radius: 2px; border-width: 1px; margin: 0px auto; padding: 0px; width: 674px; height: 676px;\" role=\"presentation\" width=\"570\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\">\n<tbody>\n<tr>\n<td style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; max-width: 100vw; padding: 32px; width: 672.882px;\">\n<h1 style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; color: rgb(61, 72, 82); font-size: 18px; font-weight: bold; margin-top: 0px; text-align: left;\">Hello, {USER_FIRST_NAME} {USER_LAST_NAME}</h1>\n<p style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; font-size: 16px; line-height: 1.5em; margin-top: 0; text-align: left;\">This is to inform you that a leave request has been submitted by {REQUESTEE_FIRST_NAME} {REQUESTEE_LAST_NAME}.<br><br>Details of the leave request are as follows:</p>\n<p style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; font-size: 16px; line-height: 1.5em; margin-top: 0; text-align: left;\">- ID: {ID}<br>- Type: {TYPE}<br>- From: {FROM}<br>- To: {TO}<br>- Duration: {DURATION}<br>- Reason: {REASON}<br>- Status: {STATUS}</p>\n<p style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; font-size: 16px; line-height: 1.5em; margin-top: 0; text-align: left;\">Please take necessary actions regarding this leave request. <br><br>Thank you.</p>\n{SITE_URL}<br><br>Regards,</td>\n</tr>\n<tr>\n<td style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; max-width: 100vw; padding: 32px; width: 672.882px;\">\n<h1 style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; color: #3d4852; font-size: 18px; font-weight: bold; margin-top: 0; text-align: left;\">&nbsp;</h1>\n</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n<tr style=\"height: 96.7535px;\">\n<td style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; height: 96.7535px;\">\n<table class=\"m_2051327272198114809footer\" style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; margin: 0px auto; padding: 0px; text-align: center; width: 673px; height: 97px;\" role=\"presentation\" width=\"570\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\">\n<tbody>\n<tr>\n<td style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; max-width: 100vw; padding: 32px; width: 671.875px;\" align=\"center\">\n<p style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; line-height: 1.5em; margin-top: 0; color: #b0adc5; font-size: 12px; text-align: center;\">&copy; {CURRENT_YEAR} {COMPANY_TITLE}. All rights reserved.</p>\n</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n</tbody>\n</table>\n<div class=\"yj6qo\">&nbsp;</div>\n<div class=\"adL\">&nbsp;</div>\n</div>', 1, '2025-12-23 04:21:42', '2025-12-23 04:21:42'),
(58, 'email', 'leave_request_status_updation', 'Status Updation of a Leave Request', '<div style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; background-color: #ffffff; color: #718096; height: 100%; line-height: 1.4; margin: 0; padding: 0; width: 100%!important;\">\n<table style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; background-color: #edf2f7; margin: 0; padding: 0; width: 100%;\" role=\"presentation\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\';\" align=\"center\">\n<table style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; margin: 0px; padding: 0px; width: 100%; height: 846.823px;\" role=\"presentation\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr style=\"height: 77.0833px;\">\n<td style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; padding: 25px 0px; height: 77.0833px; text-align: center;\"><span style=\"font-size: 18px;\">{COMPANY_LOGO}</span></td>\n</tr>\n<tr style=\"height: 672.986px;\">\n<td style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; background-color: rgb(237, 242, 247); margin: 0px; padding: 0px; width: 100%; height: 672.986px; border: hidden !important;\" width=\"100%\">\n<table class=\"m_2051327272198114809inner-body\" style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; background-color: rgb(255, 255, 255); border-color: rgb(232, 229, 239); border-radius: 2px; border-width: 1px; margin: 0px auto; padding: 0px; width: 674px; height: 676px;\" role=\"presentation\" width=\"570\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\">\n<tbody>\n<tr>\n<td style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; max-width: 100vw; padding: 32px; width: 672.882px;\">\n<h1 style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; color: rgb(61, 72, 82); font-size: 18px; font-weight: bold; margin-top: 0px; text-align: left;\">Hello, {USER_FIRST_NAME} {USER_LAST_NAME}</h1>\n<p style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; font-size: 16px; line-height: 1.5em; margin-top: 0; text-align: left;\">This is <span class=\"hljs-selector-tag\">to</span> inform you that the status of <span class=\"hljs-selector-tag\">a</span> leave request has been updated from {OLD_STATUS} to {NEW_STATUS}.<br><br>Details of the leave request are as follows:</p>\n<p style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; font-size: 16px; line-height: 1.5em; margin-top: 0; text-align: left;\">- ID: {ID}<br>- Requestee: {REQUESTEE_FIRST_NAME} {REQUESTEE_LAST_NAME}<br>- Type: {TYPE}<br>- From: {FROM}<br>- To: {TO}<br>- Duration: {DURATION}<br>- Reason: {REASON}<br><br>Thank you.</p>\n{SITE_URL}<br><br>Regards,</td>\n</tr>\n<tr>\n<td style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; max-width: 100vw; padding: 32px; width: 672.882px;\">\n<h1 style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; color: #3d4852; font-size: 18px; font-weight: bold; margin-top: 0; text-align: left;\">&nbsp;</h1>\n</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n<tr style=\"height: 96.7535px;\">\n<td style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; height: 96.7535px;\">\n<table class=\"m_2051327272198114809footer\" style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; margin: 0px auto; padding: 0px; text-align: center; width: 673px; height: 97px;\" role=\"presentation\" width=\"570\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\">\n<tbody>\n<tr>\n<td style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; max-width: 100vw; padding: 32px; width: 671.875px;\" align=\"center\">\n<p style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; line-height: 1.5em; margin-top: 0; color: #b0adc5; font-size: 12px; text-align: center;\">&copy; {CURRENT_YEAR} {COMPANY_TITLE}. All rights reserved.</p>\n</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n</tbody>\n</table>\n<div class=\"yj6qo\">&nbsp;</div>\n<div class=\"adL\">&nbsp;</div>\n</div>', 1, '2025-12-23 04:22:10', '2025-12-23 04:22:10'),
(59, 'email', 'team_member_on_leave_alert', 'Team Member on Leave', '<div style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; background-color: #ffffff; color: #718096; height: 100%; line-height: 1.4; margin: 0; padding: 0; width: 100%!important;\">\n<table style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; background-color: #edf2f7; margin: 0; padding: 0; width: 100%;\" role=\"presentation\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\';\" align=\"center\">\n<table style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; margin: 0px; padding: 0px; width: 100%; height: 615.844px;\" role=\"presentation\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr style=\"height: 77.0938px;\">\n<td style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; padding: 25px 0px; height: 77.0938px; text-align: center;\"><span style=\"font-size: 18px;\">{COMPANY_LOGO}</span></td>\n</tr>\n<tr style=\"height: 442.25px;\">\n<td style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; background-color: rgb(237, 242, 247); margin: 0px; padding: 0px; width: 100%; height: 442.25px; border: hidden !important;\" width=\"100%\">\n<table class=\"m_2051327272198114809inner-body\" style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; background-color: rgb(255, 255, 255); border-color: rgb(232, 229, 239); border-radius: 2px; border-width: 1px; margin: 0px auto; padding: 0px; width: 570px; height: 427.453px;\" role=\"presentation\" width=\"570\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\">\n<tbody>\n<tr style=\"height: 302.234px;\">\n<td style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; max-width: 100vw; padding: 32px; height: 302.234px;\">\n<h1 style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; color: rgb(61, 72, 82); font-size: 18px; font-weight: bold; margin-top: 0px; text-align: left;\">Hello, {USER_FIRST_NAME} {USER_LAST_NAME}</h1>\n<p style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; font-size: 16px; line-height: 1.5em; margin-top: 0; text-align: left;\">This is to inform you that the team member {REQUESTEE_FIRST_NAME} {REQUESTEE_LAST_NAME} will be on {TYPE} leave from {FROM} to {TO}.<br><br>Thank you.</p>\n<p style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; font-size: 16px; line-height: 1.5em; margin-top: 0; text-align: left;\">{SITE_URL}<br><br>Regards,</p>\n</td>\n</tr>\n<tr style=\"height: 125.219px;\">\n<td style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; max-width: 100vw; padding: 32px; height: 125.219px;\">\n<h1 style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; color: #3d4852; font-size: 18px; font-weight: bold; margin-top: 0; text-align: left;\">&nbsp;</h1>\n</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n<tr style=\"height: 96.5px;\">\n<td style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; height: 96.5px;\">\n<table class=\"m_2051327272198114809footer\" style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; margin: 0 auto; padding: 0; text-align: center; width: 570px;\" role=\"presentation\" width=\"570\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\">\n<tbody>\n<tr>\n<td style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; max-width: 100vw; padding: 32px;\" align=\"center\">\n<p style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; line-height: 1.5em; margin-top: 0; color: #b0adc5; font-size: 12px; text-align: center;\">&copy; {CURRENT_YEAR} {COMPANY_TITLE}. All rights reserved.</p>\n</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n</tbody>\n</table>\n<div class=\"yj6qo\">&nbsp;</div>\n<div class=\"adL\">&nbsp;</div>\n</div>', 1, '2025-12-23 04:23:21', '2025-12-23 04:23:21'),
(60, 'email', 'birthday_wish', 'Birthday', '<div style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; background-color: #ffffff; color: #718096; height: 100%; line-height: 1.4; margin: 0; padding: 0; width: 100%!important;\">\n<table style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; background-color: #edf2f7; margin: 0; padding: 0; width: 100%;\" role=\"presentation\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\';\" align=\"center\">\n<table style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; margin: 0px; padding: 0px; width: 100%; height: 615.844px;\" role=\"presentation\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr style=\"height: 77.0938px;\">\n<td style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; padding: 25px 0px; height: 77.0938px; text-align: center;\"><span style=\"font-size: 18px;\">{COMPANY_LOGO}</span></td>\n</tr>\n<tr style=\"height: 442.25px;\">\n<td style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; background-color: rgb(237, 242, 247); margin: 0px; padding: 0px; width: 100%; height: 442.25px; border: hidden !important;\" width=\"100%\">\n<table class=\"m_2051327272198114809inner-body\" style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; background-color: rgb(255, 255, 255); border-color: rgb(232, 229, 239); border-radius: 2px; border-width: 1px; margin: 0px auto; padding: 0px; width: 570px; height: 427.453px;\" role=\"presentation\" width=\"570\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\">\n<tbody>\n<tr style=\"height: 302.234px;\">\n<td style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; max-width: 100vw; padding: 32px; height: 302.234px;\">\n<h1 style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; color: rgb(61, 72, 82); font-size: 18px; font-weight: bold; margin-top: 0px; text-align: left;\">Hello, {FIRST_NAME} {LAST_NAME}</h1>\n<p style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; font-size: 16px; line-height: 1.5em; margin-top: 0; text-align: left;\">Greetings on your {BIRTHDAY_COUNT}<sup>{ORDINAL_SUFFIX}</sup> Birthday!<br><br>Thank you.</p>\n<p style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; font-size: 16px; line-height: 1.5em; margin-top: 0; text-align: left;\">{SITE_URL}<br><br>Regards,</p>\n</td>\n</tr>\n<tr style=\"height: 125.219px;\">\n<td style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; max-width: 100vw; padding: 32px; height: 125.219px;\">\n<h1 style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; color: #3d4852; font-size: 18px; font-weight: bold; margin-top: 0; text-align: left;\">&nbsp;</h1>\n</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n<tr style=\"height: 96.5px;\">\n<td style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; height: 96.5px;\">\n<table class=\"m_2051327272198114809footer\" style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; margin: 0 auto; padding: 0; text-align: center; width: 570px;\" role=\"presentation\" width=\"570\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\">\n<tbody>\n<tr>\n<td style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; max-width: 100vw; padding: 32px;\" align=\"center\">\n<p style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; line-height: 1.5em; margin-top: 0; color: #b0adc5; font-size: 12px; text-align: center;\">&copy; {CURRENT_YEAR} {COMPANY_TITLE}. All rights reserved.</p>\n</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n</tbody>\n</table>\n<div class=\"yj6qo\">&nbsp;</div>\n<div class=\"adL\">&nbsp;</div>\n</div>', 1, '2025-12-23 04:23:53', '2025-12-23 04:23:53'),
(61, 'email', 'work_anniversary_wish', 'Work Anniversary', '<div style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; background-color: #ffffff; color: #718096; height: 100%; line-height: 1.4; margin: 0; padding: 0; width: 100%!important;\">\n<table style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; background-color: #edf2f7; margin: 0; padding: 0; width: 100%;\" role=\"presentation\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\';\" align=\"center\">\n<table style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; margin: 0px; padding: 0px; width: 100%; height: 615.844px;\" role=\"presentation\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr style=\"height: 77.0938px;\">\n<td style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; padding: 25px 0px; height: 77.0938px; text-align: center;\"><span style=\"font-size: 18px;\">{COMPANY_LOGO}</span></td>\n</tr>\n<tr style=\"height: 442.25px;\">\n<td style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; background-color: rgb(237, 242, 247); margin: 0px; padding: 0px; width: 100%; height: 442.25px; border: hidden !important;\" width=\"100%\">\n<table class=\"m_2051327272198114809inner-body\" style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; background-color: rgb(255, 255, 255); border-color: rgb(232, 229, 239); border-radius: 2px; border-width: 1px; margin: 0px auto; padding: 0px; width: 570px; height: 427.453px;\" role=\"presentation\" width=\"570\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\">\n<tbody>\n<tr style=\"height: 302.234px;\">\n<td style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; max-width: 100vw; padding: 32px; height: 302.234px;\">\n<h1 style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; color: rgb(61, 72, 82); font-size: 18px; font-weight: bold; margin-top: 0px; text-align: left;\">Hello, {FIRST_NAME} {LAST_NAME}</h1>\n<p style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; font-size: 16px; line-height: 1.5em; margin-top: 0; text-align: left;\">Greetings on your {WORK_ANNIVERSARY_COUNT}<sup>{ORDINAL_SUFFIX}</sup> Work Anniversary!<br><br>Thank you.</p>\n<p style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; font-size: 16px; line-height: 1.5em; margin-top: 0; text-align: left;\">{SITE_URL}<br><br>Regards,</p>\n</td>\n</tr>\n<tr style=\"height: 125.219px;\">\n<td style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; max-width: 100vw; padding: 32px; height: 125.219px;\">\n<h1 style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; color: #3d4852; font-size: 18px; font-weight: bold; margin-top: 0; text-align: left;\">&nbsp;</h1>\n</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n<tr style=\"height: 96.5px;\">\n<td style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; height: 96.5px;\">\n<table class=\"m_2051327272198114809footer\" style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; margin: 0 auto; padding: 0; text-align: center; width: 570px;\" role=\"presentation\" width=\"570\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\">\n<tbody>\n<tr>\n<td style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; max-width: 100vw; padding: 32px;\" align=\"center\">\n<p style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; line-height: 1.5em; margin-top: 0; color: #b0adc5; font-size: 12px; text-align: center;\">&copy; {CURRENT_YEAR} {COMPANY_TITLE}. All rights reserved.</p>\n</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n</tbody>\n</table>\n<div class=\"yj6qo\">&nbsp;</div>\n<div class=\"adL\">&nbsp;</div>\n</div>', 1, '2025-12-23 04:24:16', '2025-12-23 04:24:16'),
(62, 'system', 'project_assignment', 'Project Assignment', '{ASSIGNEE_FIRST_NAME} {ASSIGNEE_LAST_NAME} assigned you new project: {PROJECT_TITLE}, ID:#{PROJECT_ID}.', 1, '2025-12-23 04:25:20', '2025-12-23 04:25:20'),
(63, 'system', 'project_status_updation', 'Status Updation', '{UPDATER_FIRST_NAME} {UPDATER_LAST_NAME} has updated the status of project {PROJECT_TITLE}, ID:#{PROJECT_ID}, from {OLD_STATUS} to {NEW_STATUS}.', 1, '2025-12-23 04:25:39', '2025-12-23 04:25:39'),
(64, 'system', 'task_assignment', 'Task Assignment', '{ASSIGNEE_FIRST_NAME} {ASSIGNEE_LAST_NAME} assigned you new task: {TASK_TITLE}, ID:#{TASK_ID}.', 1, '2025-12-23 04:25:57', '2025-12-23 04:25:57'),
(65, 'system', 'task_status_updation', 'Status Updation of a Task', '{UPDATER_FIRST_NAME} {UPDATER_LAST_NAME} has updated the status of task {TASK_TITLE}, ID:#{TASK_ID}, from {OLD_STATUS} to {NEW_STATUS}.', 1, '2025-12-23 04:26:14', '2025-12-23 04:26:14'),
(66, 'system', 'task_reminder', 'Reminder of a Task', 'You have a task reminder for Task #{TASK_ID} - \"{TASK_TITLE}\".', 1, '2025-12-23 04:26:28', '2025-12-23 04:26:28'),
(67, 'system', 'recurring_task', 'Recurrence of a Task', 'The recurring task #{TASK_ID} - \"{TASK_TITLE}\" has been executed.', 1, '2025-12-23 04:26:40', '2025-12-23 04:26:40'),
(68, 'system', 'workspace_assignment', 'WorkSpace Assignment', '{ASSIGNEE_FIRST_NAME} {ASSIGNEE_LAST_NAME} added you in a new workspace {WORKSPACE_TITLE}, ID:#{WORKSPACE_ID}.', 1, '2025-12-23 04:27:06', '2025-12-23 04:27:06'),
(69, 'system', 'meeting_assignment', 'Meeting Assignment', '{ASSIGNEE_FIRST_NAME} {ASSIGNEE_LAST_NAME} added you in a new meeting {MEETING_TITLE}, ID:#{MEETING_ID}.', 1, '2025-12-23 04:27:27', '2025-12-23 04:27:27'),
(70, 'system', 'leave_request_creation', 'Leave Request', 'New Leave Request ID:#{ID} Has Been Created By {REQUESTEE_FIRST_NAME} {REQUESTEE_LAST_NAME}.', 1, '2025-12-23 04:27:44', '2025-12-23 04:27:44'),
(71, 'system', 'leave_request_status_updation', 'Status Updation of a Leave Request', 'Leave Request ID:#{ID} Status Updated From {OLD_STATUS} To {NEW_STATUS}.', 1, '2025-12-23 04:27:58', '2025-12-23 04:27:58'),
(72, 'system', 'team_member_on_leave_alert', 'Team Member on Leave', '{REQUESTEE_FIRST_NAME} {REQUESTEE_LAST_NAME} will be on {TYPE} leave from {FROM} to {TO}.', 1, '2025-12-23 04:28:13', '2025-12-23 04:28:13'),
(73, 'system', 'birthday_wish', 'Birthday', 'Hello {FIRST_NAME} {LAST_NAME}, {COMPANY_TITLE} wishes you a very Happy Birthday!', 1, '2025-12-23 04:28:33', '2025-12-23 04:28:33'),
(74, 'system', 'work_anniversary_wish', 'Work Anniversary', 'Hello {FIRST_NAME} {LAST_NAME}, {COMPANY_TITLE} wishes you a very happy work anniversary!', 1, '2025-12-23 04:28:48', '2025-12-23 04:28:48'),
(75, 'push', 'task_assignment', 'Task Assignment', '{ASSIGNEE_FIRST_NAME} {ASSIGNEE_LAST_NAME} assigned you new task: {TASK_TITLE}, ID:#{TASK_ID}.', 1, '2025-12-23 04:30:16', '2025-12-23 04:30:16'),
(76, 'push', 'task_status_updation', 'Task Status Updation', '{UPDATER_FIRST_NAME} {UPDATER_LAST_NAME} has updated the status of task {TASK_TITLE}, ID:#{TASK_ID}, from {OLD_STATUS} to {NEW_STATUS}.', 1, '2025-12-23 04:30:32', '2025-12-23 04:30:32'),
(77, 'push', 'task_reminder', 'Task Remider', 'You have a task reminder for Task #{TASK_ID} - \"{TASK_TITLE}\".', 1, '2025-12-23 04:30:46', '2025-12-23 04:30:46'),
(78, 'push', 'recurring_task', 'The recurring task #{TASK_ID} - \"{TASK_TITLE}\" has been executed.', 'The recurring task #{TASK_ID} - \"{TASK_TITLE}\" has been executed.', 1, '2025-12-23 04:31:04', '2025-12-23 04:31:04'),
(79, 'push', 'workspace_assignment', 'WorkSpace Assignment', '{ASSIGNEE_FIRST_NAME} {ASSIGNEE_LAST_NAME} added you in a new workspace {WORKSPACE_TITLE}, ID:#{WORKSPACE_ID}.', 1, '2025-12-23 04:31:22', '2025-12-23 04:31:22'),
(80, 'push', 'meeting_assignment', 'Meeting Assignment', '{ASSIGNEE_FIRST_NAME} {ASSIGNEE_LAST_NAME} added you in a new meeting {MEETING_TITLE}, ID:#{MEETING_ID}.', 1, '2025-12-23 04:31:37', '2025-12-23 04:31:37'),
(81, 'push', 'leave_request_creation', 'Leave Request', 'New Leave Request ID:#{ID} Has Been Created By {REQUESTEE_FIRST_NAME} {REQUESTEE_LAST_NAME}.', 1, '2025-12-23 04:31:55', '2025-12-23 04:31:55'),
(82, 'push', 'leave_request_status_updation', 'Status Updation', 'Leave Request ID:#{ID} Status Updated From {OLD_STATUS} To {NEW_STATUS}.', 1, '2025-12-23 04:32:09', '2025-12-23 04:32:09'),
(83, 'push', 'team_member_on_leave_alert', 'Team Member on Leave', '{REQUESTEE_FIRST_NAME} {REQUESTEE_LAST_NAME} will be on {TYPE} leave from {FROM} to {TO}.', 1, '2025-12-23 04:32:28', '2025-12-23 04:32:28'),
(84, 'push', 'birthday_wish', 'Birthday', 'Hello {FIRST_NAME} {LAST_NAME}, {COMPANY_TITLE} wishes you a very Happy Birthday!', 1, '2025-12-23 04:32:46', '2025-12-23 04:32:46'),
(85, 'push', 'work_anniversary_wish', 'Work Anniversary', 'Hello {FIRST_NAME} {LAST_NAME}, {COMPANY_TITLE} wishes you a very happy work anniversary!', 1, '2025-12-23 04:33:00', '2025-12-23 04:33:00'),
(86, 'slack', 'project_assignment', NULL, '*New Project Assigned:* {PROJECT_TITLE}, ID: #{PROJECT_ID}. By {ASSIGNEE_FIRST_NAME} {ASSIGNEE_LAST_NAME} You can find the project here :{PROJECT_URL}', 1, '2025-12-23 04:33:14', '2025-12-23 04:33:14'),
(87, 'slack', 'project_status_updation', NULL, '*Project Status Updated:* By {UPDATER_FIRST_NAME} {UPDATER_LAST_NAME} , {PROJECT_TITLE}, ID: #{PROJECT_ID}. Status changed from `{OLD_STATUS}` to `{NEW_STATUS}`. You can find the project here :{PROJECT_URL}', 1, '2025-12-23 04:33:23', '2025-12-23 04:33:23'),
(88, 'slack', 'task_assignment', NULL, '*New Task Assigned:* {TASK_TITLE}, ID: #{TASK_ID}. By {ASSIGNEE_FIRST_NAME} {ASSIGNEE_LAST_NAME} You can find the task here : {TASK_URL}', 1, '2025-12-23 04:33:33', '2025-12-23 04:33:33'),
(89, 'slack', 'task_status_updation', NULL, '*Task Status Updated:* By {UPDATER_FIRST_NAME} {UPDATER_LAST_NAME},  {TASK_TITLE}, ID: #{TASK_ID}. Status changed from `{OLD_STATUS}` to `{NEW_STATUS}`. You can find the Task here : {TASK_URL}', 1, '2025-12-23 04:33:42', '2025-12-23 04:33:42'),
(90, 'slack', 'task_reminder', NULL, 'You have a task reminder for Task #{TASK_ID} - \"{TASK_TITLE}\". You can view the task here: {TASK_URL}.', 1, '2025-12-23 04:33:50', '2025-12-23 04:33:50'),
(91, 'slack', 'workspace_assignment', NULL, '*New Workspace Added:* By {ASSIGNEE_FIRST_NAME} {ASSIGNEE_LAST_NAME},   {WORKSPACE_TITLE}, ID: #{WORKSPACE_ID}. You can find the Workspace here : {WORKSPACE_URL}', 1, '2025-12-23 04:34:17', '2025-12-23 04:34:17'),
(92, 'slack', 'meeting_assignment', NULL, '*New Meeting Scheduled:* By {ASSIGNEE_FIRST_NAME} {ASSIGNEE_LAST_NAME},  {MEETING_TITLE}, ID: #{MEETING_ID}. You can find the Meeting here : {MEETING_URL}', 1, '2025-12-23 04:34:24', '2025-12-23 04:34:24'),
(93, 'slack', 'leave_request_creation', NULL, '*New {TYPE} Leave Request Created:* ID: #{ID} By {REQUESTEE_FIRST_NAME} {REQUESTEE_LAST_NAME} for {REASON}.  From ( {FROM} ) -  To ( {TO} ).', 1, '2025-12-23 04:34:32', '2025-12-23 04:34:32'),
(94, 'slack', 'leave_request_status_updation', NULL, '*Leave Request Status Updated:* For {REQUESTEE_FIRST_NAME} {REQUESTEE_LAST_NAME},  ID: #{ID}. Status changed from `{OLD_STATUS}` to `{NEW_STATUS}`.', 1, '2025-12-23 04:34:40', '2025-12-23 04:34:40'),
(95, 'slack', 'team_member_on_leave_alert', NULL, '*Team Member Leave Alert:* {REQUESTEE_FIRST_NAME} {REQUESTEE_LAST_NAME} will be on {TYPE} leave from {FROM} to {TO}.', 1, '2025-12-23 04:34:47', '2025-12-23 04:34:47'),
(96, 'slack', 'birthday_wish', NULL, 'Hello *{FIRST_NAME} {LAST_NAME}*, {COMPANY_TITLE} wishes you a very Happy Birthday!', 1, '2025-12-23 04:34:56', '2025-12-23 04:34:56'),
(97, 'slack', 'work_anniversary_wish', NULL, 'Hello *{FIRST_NAME} {LAST_NAME}*, {COMPANY_TITLE} wishes you a very happy work anniversary!', 1, '2025-12-23 04:35:05', '2025-12-23 04:35:05'),
(98, 'sms', 'project_assignment', NULL, '', 0, '2025-12-24 07:40:04', '2025-12-24 07:40:04');
INSERT INTO `templates` (`id`, `type`, `name`, `subject`, `content`, `status`, `created_at`, `updated_at`) VALUES
(99, 'email', 'job_application_received', 'Application Received: {JOB_TITLE} - {CANDIDATE_NAME}', '<div style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; background-color: #ffffff; color: #718096; height: 100%; line-height: 1.4; margin: 0; padding: 0; width: 100%!important;\">\n<table style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; background-color: #edf2f7; margin: 0; padding: 0; width: 100%;\" role=\"presentation\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\';\" align=\"center\">\n<table style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; margin: 0px; padding: 0px; width: 100%; height: 659.844px;\" role=\"presentation\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr style=\"height: 77.0938px;\">\n<td style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; padding: 25px 0px; height: 77.0938px; text-align: center;\"><span style=\"font-size: 18px;\">{COMPANY_LOGO}</span></td>\n</tr>\n<tr style=\"height: 486.25px;\">\n<td style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; background-color: rgb(237, 242, 247); margin: 0px; padding: 0px; width: 100%; border: hidden !important; height: 486.25px;\" width=\"100%\">\n<table class=\"m_2051327272198114809inner-body\" style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; background-color: #ffffff; border-color: #e8e5ef; border-radius: 2px; border-width: 1px; margin: 0 auto; padding: 0; width: 570px;\" role=\"presentation\" width=\"570\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\">\n<tbody>\n<tr>\n<td style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; max-width: 100vw; padding: 32px;\">\n<h1 style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; color: rgb(61, 72, 82); font-size: 18px; font-weight: bold; margin-top: 0px; text-align: left;\">Hello, {CANDIDATE_NAME}</h1>\n<p style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; font-size: 16px; line-height: 1.5em; margin-top: 0; text-align: left;\">Thank you for applying for the position of <strong>{JOB_TITLE}, </strong>at <strong>{COMPANY_TITLE}.</strong><br><br>We have received your application and will review it shortly. If your qualifications match our requirements, we will contact you to discuss the next steps.</p>\n<p style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; font-size: 16px; line-height: 1.5em; margin-top: 0; text-align: left;\">Regards,</p>\n<p style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; font-size: 16px; line-height: 1.5em; margin-top: 0; text-align: left;\"><strong>{COMPANY_TITLE} Team</strong></p>\n<table style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; border-top: 1px solid rgb(232, 229, 239); margin-top: 25px; padding-top: 25px; height: 57px;\" role=\"presentation\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr style=\"height: 57px;\">\n<td style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; height: 57px;\">\n<p style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; line-height: 1.5em; margin-top: 0; text-align: left; font-size: 14px;\">Visit us at: {SITE_URL}</p>\n</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n<tr>\n<td style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; max-width: 100vw; padding: 32px;\">\n<h1 style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; color: #3d4852; font-size: 18px; font-weight: bold; margin-top: 0; text-align: left;\">&nbsp;</h1>\n</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n<tr style=\"height: 96.5px;\">\n<td style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; height: 96.5px;\">\n<table class=\"m_2051327272198114809footer\" style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; margin: 0 auto; padding: 0; text-align: center; width: 570px;\" role=\"presentation\" width=\"570\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\">\n<tbody>\n<tr>\n<td style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; max-width: 100vw; padding: 32px;\" align=\"center\">\n<p style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; line-height: 1.5em; margin-top: 0; color: #b0adc5; font-size: 12px; text-align: center;\">&copy; {CURRENT_YEAR} {COMPANY_TITLE}. All rights reserved.</p>\n</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n</tbody>\n</table>\n<div class=\"yj6qo\">&nbsp;</div>\n<div class=\"adL\">&nbsp;</div>\n</div>', 1, '2025-12-24 13:40:34', '2025-12-28 08:29:54'),
(100, 'email', 'project_status_updation', 'Project Status Updation', '<div style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; background-color: #ffffff; color: #718096; height: 100%; line-height: 1.4; margin: 0; padding: 0; width: 100%!important;\">\n<table style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; background-color: #edf2f7; margin: 0; padding: 0; width: 100%;\" role=\"presentation\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\';\" align=\"center\">\n<table style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; margin: 0px; padding: 0px; width: 100%; height: 659.844px;\" role=\"presentation\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr style=\"height: 77.0938px;\">\n<td style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; padding: 25px 0px; height: 77.0938px; text-align: center;\"><span style=\"font-size: 18px;\">{COMPANY_LOGO}</span></td>\n</tr>\n<tr style=\"height: 486.25px;\">\n<td style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; background-color: rgb(237, 242, 247); margin: 0px; padding: 0px; width: 100%; border: hidden !important; height: 486.25px;\" width=\"100%\">\n<table class=\"m_2051327272198114809inner-body\" style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; background-color: #ffffff; border-color: #e8e5ef; border-radius: 2px; border-width: 1px; margin: 0 auto; padding: 0; width: 570px;\" role=\"presentation\" width=\"570\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\">\n<tbody>\n<tr>\n<td style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; max-width: 100vw; padding: 32px;\">\n<h1 style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; color: rgb(61, 72, 82); font-size: 18px; font-weight: bold; margin-top: 0px; text-align: left;\">Hello, {FIRST_NAME} {LAST_NAME}</h1>\n<p style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; font-size: 16px; line-height: 1.5em; margin-top: 0; text-align: left;\">This is to inform you that {UPDATER_FIRST_NAME} {UPDATER_LAST_NAME} has updated the status of project <strong>{PROJECT_TITLE}</strong>, ID: <strong>#{PROJECT_ID}</strong>, from <strong>{OLD_STATUS}</strong> to <strong>{NEW_STATUS}</strong>.<br><br>Please click the button below to access detailed project information.</p>\n<table style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; margin: 30px auto; padding: 0; text-align: center; width: 100%;\" role=\"presentation\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\">\n<tbody>\n<tr>\n<td style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\';\" align=\"center\">\n<table style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\';\" role=\"presentation\" border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\';\" align=\"center\">\n<table style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\';\" role=\"presentation\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\';\"><a class=\"m_2051327272198114809button\" style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; border-radius: 4px; color: #fff; display: inline-block; overflow: hidden; text-decoration: none; background-color: #2d3748; border-bottom: 8px solid #2d3748; border-left: 18px solid #2d3748; border-right: 18px solid #2d3748; border-top: 8px solid #2d3748;\" href=\"{PROJECT_URL}\" target=\"_blank\" rel=\"noopener\" data-saferedirecturl=\"https://www.google.com/url?q=http://127.0.0.1:8000/email/verify/129/9e323bcc5df5fdff3fe6ff960fd6576204a510ca?expires%3D1710157052%26signature%3D2df5df03c59d0dcd960500989168d0bb4b064035d572bc4195ca5a912b0302e8&amp;source=gmail&amp;ust=1710333202290000&amp;usg=AOvVaw2RJnO33Iiu4v5j5tJBiQWH\">View Project Details</a></td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n</tbody>\n</table>\n<p style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; font-size: 16px; line-height: 1.5em; margin-top: 0; text-align: left;\">Regards,</p>\n<table style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; border-top: 1px solid #e8e5ef; margin-top: 25px; padding-top: 25px;\" role=\"presentation\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\';\">\n<p style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; line-height: 1.5em; margin-top: 0; text-align: left; font-size: 14px;\">If you\'re having trouble clicking the \"View Project Details\" button, copy and paste the URL below into your web browser: {PROJECT_URL}</p>\n</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n<tr>\n<td style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; max-width: 100vw; padding: 32px;\">\n<h1 style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; color: #3d4852; font-size: 18px; font-weight: bold; margin-top: 0; text-align: left;\">&nbsp;</h1>\n</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n<tr style=\"height: 96.5px;\">\n<td style=\"box-sizing: border-box; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; height: 96.5px;\">\n<table class=\"m_2051327272198114809footer\" style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; margin: 0 auto; padding: 0; text-align: center; width: 570px;\" role=\"presentation\" width=\"570\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\">\n<tbody>\n<tr>\n<td style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; max-width: 100vw; padding: 32px;\" align=\"center\">\n<p style=\"box-sizing: border-box; font-family: -apple-system,BlinkMacSystemFont,\'Segoe UI\',Roboto,Helvetica,Arial,sans-serif,\'Apple Color Emoji\',\'Segoe UI Emoji\',\'Segoe UI Symbol\'; line-height: 1.5em; margin-top: 0; color: #b0adc5; font-size: 12px; text-align: center;\">&copy; {CURRENT_YEAR} {COMPANY_TITLE}. All rights reserved.</p>\n</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n</tbody>\n</table>\n<div class=\"yj6qo\">&nbsp;</div>\n<div class=\"adL\">&nbsp;</div>\n</div>', 1, '2025-12-24 14:08:51', '2025-12-24 14:08:51'),
(101, 'telegram', 'interview_assignment', NULL, '{INTERVIEW_ID}{INTERVIEW_URL}', 1, '2025-12-24 14:28:23', '2025-12-24 14:29:32'),
(102, 'email', 'interview_status_update', 'Status Updation a Interview', '<p>Status Updation a Interview</p>', 1, '2025-12-24 14:33:04', '2025-12-24 14:33:04'),
(103, 'telegram', 'interview_status_update', NULL, 'Status Updation a Interview', 1, '2025-12-24 14:33:15', '2025-12-24 14:33:15');

-- --------------------------------------------------------

--
-- Table structure for table `time_trackers`
--

CREATE TABLE `time_trackers` (
  `id` bigint UNSIGNED NOT NULL,
  `workspace_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `start_date_time` datetime NOT NULL,
  `end_date_time` datetime DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `todos`
--

CREATE TABLE `todos` (
  `id` bigint UNSIGNED NOT NULL,
  `workspace_id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `priority` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_completed` tinyint(1) NOT NULL DEFAULT '0',
  `creator_id` bigint UNSIGNED NOT NULL,
  `creator_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE `units` (
  `id` bigint UNSIGNED NOT NULL,
  `workspace_id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `updates`
--

CREATE TABLE `updates` (
  `id` bigint UNSIGNED NOT NULL,
  `version` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `updates`
--

INSERT INTO `updates` (`id`, `version`, `created_at`, `updated_at`) VALUES
(1, '1.0.0', '2023-10-03 06:26:04', '2023-10-03 06:26:04'),
(2, '1.0.1', '2023-10-30 05:35:10', '2023-10-30 05:35:10'),
(3, '1.0.2', '2024-01-27 04:21:48', '2024-01-27 04:21:53'),
(4, '1.0.3', '2024-01-27 04:22:09', '2024-01-27 04:22:16'),
(5, '1.0.4', '2024-03-01 12:53:15', '2024-03-01 12:53:15'),
(6, '1.0.5', '2024-04-09 05:25:03', '2024-04-09 05:25:03'),
(7, '1.0.6', '2024-07-08 07:50:53', '2024-07-08 07:50:53'),
(8, '1.0.7', '2024-07-08 07:50:53', '2024-07-08 07:50:53'),
(9, '1.0.8', '2024-07-08 07:51:38', '2024-07-08 07:51:38'),
(10, '1.0.9', '2024-07-11 12:39:04', '2024-07-11 12:39:04'),
(11, '1.0.10', '2025-01-31 03:58:54', '2025-01-31 03:58:54'),
(12, '1.1.0', '2025-01-31 03:59:07', '2025-01-31 03:59:07'),
(13, '1.1.1', '2025-01-31 04:02:09', '2025-01-31 04:02:09'),
(14, '1.1.2', '2025-01-31 04:40:45', '2025-01-31 04:40:45'),
(15, '1.1.3', '2025-01-31 04:41:20', '2025-01-31 04:41:20'),
(16, '1.2.0', '2025-03-28 04:41:20', '2025-03-28 04:41:20'),
(17, '1.2.1', '2025-05-06 06:29:39', '2025-05-06 06:29:39'),
(19, '1.2.2', '2025-06-30 11:02:28', '2025-06-30 11:02:28'),
(20, '2.0.0', '2025-07-15 06:39:34', '2025-07-15 06:39:34'),
(21, '2.0.1', '2025-08-14 06:39:34', '2025-08-14 06:39:34');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_code` varchar(28) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_iso_code` varchar(28) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(56) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telegram_chat_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip` varchar(56) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dob` date DEFAULT NULL,
  `doj` date DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'avatar.png',
  `active_status` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'For chatify messenger',
  `dark_mode` tinyint(1) NOT NULL DEFAULT '0',
  `messenger_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang` varchar(28) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'en',
  `remember_token` text COLLATE utf8mb4_unicode_ci,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `default_workspace_id` bigint DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '0',
  `division_id` bigint UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `country_code`, `country_iso_code`, `phone`, `telegram_chat_id`, `email`, `address`, `city`, `state`, `country`, `zip`, `password`, `dob`, `doj`, `photo`, `avatar`, `active_status`, `dark_mode`, `messenger_color`, `lang`, `remember_token`, `email_verified_at`, `default_workspace_id`, `created_at`, `updated_at`, `status`, `division_id`) VALUES
(1, 'Admin', 'GMS', NULL, NULL, NULL, '1045791989', 'admin@gmsconsolidate.id', NULL, NULL, NULL, NULL, NULL, '$2y$10$L4uY7oa5UjL5/VEQAA96H.9QH0/CX1DqzJcSLz.Vr4Zj0fEv1iw9.', NULL, NULL, NULL, 'avatar.png', 0, 0, NULL, 'en', NULL, '2025-12-23 08:16:27', NULL, '2025-12-23 08:16:41', '2025-12-23 03:49:04', 1, NULL),
(2, 'Benny', 'Sueb', '', NULL, '', NULL, 'gms.benny@gmail.com', NULL, NULL, NULL, NULL, NULL, '$2y$10$nJPTWz0MmKn5t5N.r1d1POo8OmA70ajALsPJn5N.BIVLj9XpyWOZW', NULL, NULL, 'photos/no-image.jpg', 'avatar.png', 0, 0, NULL, 'en', NULL, NULL, NULL, '2025-12-24 07:52:16', '2025-12-24 07:55:35', 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `user_client_preferences`
--

CREATE TABLE `user_client_preferences` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` varchar(56) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `visible_columns` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `enabled_notifications` longtext COLLATE utf8mb4_unicode_ci,
  `default_view` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_client_preferences`
--

INSERT INTO `user_client_preferences` (`id`, `user_id`, `table_name`, `visible_columns`, `enabled_notifications`, `default_view`) VALUES
(1, 'u_1', 'tasks', NULL, NULL, 'tasks/list');

-- --------------------------------------------------------

--
-- Table structure for table `user_workspace`
--

CREATE TABLE `user_workspace` (
  `id` bigint UNSIGNED NOT NULL,
  `workspace_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_workspace`
--

INSERT INTO `user_workspace` (`id`, `workspace_id`, `user_id`) VALUES
(1, 1, 1),
(2, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `workspaces`
--

CREATE TABLE `workspaces` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_primary` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `workspaces`
--

INSERT INTO `workspaces` (`id`, `user_id`, `title`, `is_primary`, `created_at`, `updated_at`) VALUES
(1, '1', 'Default Workspace', 1, '2025-12-23 08:16:41', '2025-12-23 08:16:41');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_logs`
--
ALTER TABLE `activity_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activity_logs_workspace_id_index` (`workspace_id`);

--
-- Indexes for table `allowances`
--
ALTER TABLE `allowances`
  ADD PRIMARY KEY (`id`),
  ADD KEY `allowances_workspace_id_foreign` (`workspace_id`);

--
-- Indexes for table `allowance_payslip`
--
ALTER TABLE `allowance_payslip`
  ADD PRIMARY KEY (`id`),
  ADD KEY `allowance_payslip_allowance_id_foreign` (`allowance_id`),
  ADD KEY `allowance_payslip_payslip_id_foreign` (`payslip_id`);

--
-- Indexes for table `candidates`
--
ALTER TABLE `candidates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `candidates_status_id_foreign` (`status_id`),
  ADD KEY `candidates_division_id_foreign` (`division_id`),
  ADD KEY `candidates_job_vacancy_id_foreign` (`job_vacancy_id`);

--
-- Indexes for table `candidate_notification`
--
ALTER TABLE `candidate_notification`
  ADD PRIMARY KEY (`id`),
  ADD KEY `candidate_notification_candidate_id_foreign` (`candidate_id`),
  ADD KEY `candidate_notification_notification_id_foreign` (`notification_id`);

--
-- Indexes for table `candidate_statuses`
--
ALTER TABLE `candidate_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ch_favorites`
--
ALTER TABLE `ch_favorites`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ch_messages`
--
ALTER TABLE `ch_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `clients_email_unique` (`email`);

--
-- Indexes for table `client_meeting`
--
ALTER TABLE `client_meeting`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `client_meeting_meeting_id_client_id_unique` (`meeting_id`,`client_id`),
  ADD KEY `client_meeting_client_id_foreign` (`client_id`);

--
-- Indexes for table `client_notifications`
--
ALTER TABLE `client_notifications`
  ADD PRIMARY KEY (`client_id`,`notification_id`),
  ADD KEY `client_notifications_notification_id_foreign` (`notification_id`);

--
-- Indexes for table `client_project`
--
ALTER TABLE `client_project`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `project_client_project_id_client_id_unique` (`project_id`,`client_id`),
  ADD KEY `project_client_client_id_foreign` (`client_id`);

--
-- Indexes for table `client_workspace`
--
ALTER TABLE `client_workspace`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `client_workspace_workspace_id_client_id_unique` (`workspace_id`,`client_id`),
  ADD KEY `client_workspace_client_id_foreign` (`client_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_commentable_type_commentable_id_index` (`commentable_type`,`commentable_id`),
  ADD KEY `comments_parent_id_index` (`parent_id`),
  ADD KEY `comments_user_id_index` (`commenter_id`);

--
-- Indexes for table `comment_attachments`
--
ALTER TABLE `comment_attachments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comment_attachments_comment_id_foreign` (`comment_id`);

--
-- Indexes for table `contracts`
--
ALTER TABLE `contracts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contracts_workspace_id_foreign` (`workspace_id`),
  ADD KEY `contracts_project_id_foreign` (`project_id`),
  ADD KEY `contracts_client_id_foreign` (`client_id`),
  ADD KEY `contracts_contract_type_id_foreign` (`contract_type_id`),
  ADD KEY `contracts_user_id_foreign` (`user_id`),
  ADD KEY `contracts_division_id_foreign` (`division_id`);

--
-- Indexes for table `contract_types`
--
ALTER TABLE `contract_types`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contract_types_workspace_id_foreign` (`workspace_id`);

--
-- Indexes for table `custom_fieldables`
--
ALTER TABLE `custom_fieldables`
  ADD PRIMARY KEY (`id`),
  ADD KEY `custom_fieldables_custom_field_id_foreign` (`custom_field_id`);

--
-- Indexes for table `custom_fields`
--
ALTER TABLE `custom_fields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deductions`
--
ALTER TABLE `deductions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deduction_payslip`
--
ALTER TABLE `deduction_payslip`
  ADD PRIMARY KEY (`id`),
  ADD KEY `deduction_payslip_deduction_id_foreign` (`deduction_id`),
  ADD KEY `deduction_payslip_payslip_id_foreign` (`payslip_id`);

--
-- Indexes for table `divisions`
--
ALTER TABLE `divisions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `divisions_workspace_id_foreign` (`workspace_id`);

--
-- Indexes for table `email_templates`
--
ALTER TABLE `email_templates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email_templates_workspace_id_foreign` (`workspace_id`);

--
-- Indexes for table `estimates_invoices`
--
ALTER TABLE `estimates_invoices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `estimates_invoices_client_id_foreign` (`client_id`),
  ADD KEY `estimates_invoices_workspace_id_foreign` (`workspace_id`);

--
-- Indexes for table `estimates_invoice_item`
--
ALTER TABLE `estimates_invoice_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `estimates_invoices_items_item_id_foreign` (`item_id`),
  ADD KEY `estimates_invoices_items_estimate_invoice_id_foreign` (`estimates_invoice_id`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `expenses_workspace_id_foreign` (`workspace_id`),
  ADD KEY `expenses_user_id_foreign` (`user_id`),
  ADD KEY `expenses_expense_type_id_foreign` (`expense_type_id`);

--
-- Indexes for table `expense_types`
--
ALTER TABLE `expense_types`
  ADD PRIMARY KEY (`id`),
  ADD KEY `expense_types_workspace_id_foreign` (`workspace_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `favorites`
--
ALTER TABLE `favorites`
  ADD PRIMARY KEY (`id`),
  ADD KEY `favorites_favoritable_type_favoritable_id_index` (`favoritable_type`,`favoritable_id`),
  ADD KEY `favorites_user_id_foreign` (`user_id`),
  ADD KEY `favorites_client_id_foreign` (`client_id`);

--
-- Indexes for table `fcm_tokens`
--
ALTER TABLE `fcm_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fcm_tokens_user_id_foreign` (`user_id`),
  ADD KEY `fcm_tokens_client_id_foreign` (`client_id`);

--
-- Indexes for table `interviews`
--
ALTER TABLE `interviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `interviews_candidate_id_foreign` (`candidate_id`),
  ADD KEY `interviews_interviewer_id_foreign` (`interviewer_id`);

--
-- Indexes for table `inventory_categories`
--
ALTER TABLE `inventory_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inventory_items`
--
ALTER TABLE `inventory_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `inventory_items_category_id_foreign` (`category_id`),
  ADD KEY `inventory_items_owner_user_id_foreign` (`owner_user_id`);

--
-- Indexes for table `inventory_transactions`
--
ALTER TABLE `inventory_transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `inventory_transactions_item_id_foreign` (`item_id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_vacancies`
--
ALTER TABLE `job_vacancies`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `job_vacancies_slug_unique` (`slug`),
  ADD KEY `job_vacancies_division_id_foreign` (`division_id`),
  ADD KEY `job_vacancies_workspace_id_foreign` (`workspace_id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leads`
--
ALTER TABLE `leads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `leads_workspace_id_foreign` (`workspace_id`),
  ADD KEY `leads_assigned_to_foreign` (`assigned_to`),
  ADD KEY `leads_created_by_foreign` (`created_by`),
  ADD KEY `leads_source_id_foreign` (`source_id`),
  ADD KEY `leads_stage_id_foreign` (`stage_id`);

--
-- Indexes for table `lead_follow_ups`
--
ALTER TABLE `lead_follow_ups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lead_follow_ups_lead_id_foreign` (`lead_id`),
  ADD KEY `lead_follow_ups_assigned_to_foreign` (`assigned_to`);

--
-- Indexes for table `lead_forms`
--
ALTER TABLE `lead_forms`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `lead_forms_slug_unique` (`slug`),
  ADD KEY `lead_forms_created_by_foreign` (`created_by`),
  ADD KEY `lead_forms_workspace_id_foreign` (`workspace_id`),
  ADD KEY `lead_forms_source_id_foreign` (`source_id`),
  ADD KEY `lead_forms_stage_id_foreign` (`stage_id`),
  ADD KEY `lead_forms_assigned_to_foreign` (`assigned_to`);

--
-- Indexes for table `lead_form_fields`
--
ALTER TABLE `lead_form_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lead_form_fields_form_id_foreign` (`form_id`);

--
-- Indexes for table `lead_sources`
--
ALTER TABLE `lead_sources`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lead_stages`
--
ALTER TABLE `lead_stages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `lead_stages_slug_unique` (`slug`);

--
-- Indexes for table `leave_editors`
--
ALTER TABLE `leave_editors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `leave_editors_user_id_foreign` (`user_id`);

--
-- Indexes for table `leave_requests`
--
ALTER TABLE `leave_requests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `leave_requests_user_id_foreign` (`user_id`),
  ADD KEY `leave_requests_workspace_id_foreign` (`workspace_id`);

--
-- Indexes for table `leave_request_visibility`
--
ALTER TABLE `leave_request_visibility`
  ADD PRIMARY KEY (`id`),
  ADD KEY `leave_request_visibility_leave_request_id_foreign` (`leave_request_id`),
  ADD KEY `leave_request_visibility_user_id_foreign` (`user_id`);

--
-- Indexes for table `letters`
--
ALTER TABLE `letters`
  ADD PRIMARY KEY (`id`),
  ADD KEY `letters_user_id_foreign` (`user_id`),
  ADD KEY `letters_template_id_foreign` (`template_id`),
  ADD KEY `letters_created_by_foreign` (`created_by`),
  ADD KEY `letters_workspace_id_user_id_index` (`workspace_id`,`user_id`),
  ADD KEY `letters_workspace_id_template_id_index` (`workspace_id`,`template_id`),
  ADD KEY `letters_workspace_id_letter_date_index` (`workspace_id`,`letter_date`);

--
-- Indexes for table `letter_templates`
--
ALTER TABLE `letter_templates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `letter_templates_created_by_foreign` (`created_by`),
  ADD KEY `letter_templates_workspace_id_category_index` (`workspace_id`,`category`),
  ADD KEY `letter_templates_workspace_id_is_active_index` (`workspace_id`,`is_active`);

--
-- Indexes for table `letter_variables`
--
ALTER TABLE `letter_variables`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `letter_variables_workspace_id_name_unique` (`workspace_id`,`name`),
  ADD KEY `letter_variables_created_by_foreign` (`created_by`),
  ADD KEY `letter_variables_workspace_id_is_active_index` (`workspace_id`,`is_active`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `media_uuid_unique` (`uuid`),
  ADD KEY `media_model_type_model_id_index` (`model_type`,`model_id`),
  ADD KEY `media_order_column_index` (`order_column`);

--
-- Indexes for table `meetings`
--
ALTER TABLE `meetings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meeting_user`
--
ALTER TABLE `meeting_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `meeting_user_meeting_id_user_id_unique` (`meeting_id`,`user_id`),
  ADD KEY `meeting_user_user_id_foreign` (`user_id`);

--
-- Indexes for table `menu_orders`
--
ALTER TABLE `menu_orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_orders_user_id_foreign` (`user_id`),
  ADD KEY `menu_orders_client_id_foreign` (`client_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `milestones`
--
ALTER TABLE `milestones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `milestones_project_id_foreign` (`project_id`),
  ADD KEY `milestones_workspace_id_foreign` (`workspace_id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notes_workspace_id_foreign` (`workspace_id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_workspace_id_foreign` (`workspace_id`);

--
-- Indexes for table `notification_user`
--
ALTER TABLE `notification_user`
  ADD PRIMARY KEY (`user_id`,`notification_id`),
  ADD KEY `notification_user_notification_id_foreign` (`notification_id`);

--
-- Indexes for table `password_managers`
--
ALTER TABLE `password_managers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_methods`
--
ALTER TABLE `payment_methods`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payment_methods_workspace_id_foreign` (`workspace_id`);

--
-- Indexes for table `payslips`
--
ALTER TABLE `payslips`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payslips_user_id_foreign` (`user_id`),
  ADD KEY `payslips_workspace_id_foreign` (`workspace_id`),
  ADD KEY `payslips_payment_method_id_foreign` (`payment_method_id`),
  ADD KEY `payslips_division_id_foreign` (`division_id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `pinned`
--
ALTER TABLE `pinned`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pinned_pinnable_type_pinnable_id_index` (`pinnable_type`,`pinnable_id`),
  ADD KEY `pinned_user_id_foreign` (`user_id`),
  ADD KEY `pinned_client_id_foreign` (`client_id`);

--
-- Indexes for table `priorities`
--
ALTER TABLE `priorities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_status_id_foreign` (`status_id`);

--
-- Indexes for table `project_tag`
--
ALTER TABLE `project_tag`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_tag_project_id_foreign` (`project_id`),
  ADD KEY `project_tag_tag_id_foreign` (`tag_id`);

--
-- Indexes for table `project_user`
--
ALTER TABLE `project_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `project_user_project_id_user_id_unique` (`project_id`,`user_id`),
  ADD KEY `project_user_user_id_foreign` (`user_id`);

--
-- Indexes for table `recurring_tasks`
--
ALTER TABLE `recurring_tasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `recurring_tasks_task_id_foreign` (`task_id`);

--
-- Indexes for table `reminders`
--
ALTER TABLE `reminders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reminders_remindable_type_remindable_id_index` (`remindable_type`,`remindable_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `role_status`
--
ALTER TABLE `role_status`
  ADD PRIMARY KEY (`role_id`,`status_id`),
  ADD KEY `role_status_status_id_foreign` (`status_id`);

--
-- Indexes for table `scheduled_emails`
--
ALTER TABLE `scheduled_emails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `scheduled_emails_workspace_id_foreign` (`workspace_id`),
  ADD KEY `scheduled_emails_email_template_id_foreign` (`email_template_id`),
  ADD KEY `scheduled_emails_user_id_foreign` (`user_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `statuses`
--
ALTER TABLE `statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `status_timelines`
--
ALTER TABLE `status_timelines`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status_timelines_entity_id_entity_type_index` (`entity_id`,`entity_type`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tasks_project_id_foreign` (`project_id`),
  ADD KEY `tasks_parent_id_foreign` (`parent_id`),
  ADD KEY `tasks_task_list_id_foreign` (`task_list_id`);

--
-- Indexes for table `task_lists`
--
ALTER TABLE `task_lists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `task_lists_project_id_foreign` (`project_id`);

--
-- Indexes for table `task_time_entries`
--
ALTER TABLE `task_time_entries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `task_time_entries_task_id_foreign` (`task_id`);

--
-- Indexes for table `task_user`
--
ALTER TABLE `task_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `task_user_task_id_user_id_unique` (`task_id`,`user_id`),
  ADD KEY `task_user_user_id_foreign` (`user_id`);

--
-- Indexes for table `taxes`
--
ALTER TABLE `taxes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `templates`
--
ALTER TABLE `templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `templates_type_name_unique` (`type`,`name`);

--
-- Indexes for table `time_trackers`
--
ALTER TABLE `time_trackers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `time_trackers_workspace_id_foreign` (`workspace_id`),
  ADD KEY `time_trackers_user_id_foreign` (`user_id`);

--
-- Indexes for table `todos`
--
ALTER TABLE `todos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `updates`
--
ALTER TABLE `updates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_division_id_foreign` (`division_id`);

--
-- Indexes for table `user_client_preferences`
--
ALTER TABLE `user_client_preferences`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_workspace`
--
ALTER TABLE `user_workspace`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_workspace_workspace_id_user_id_unique` (`workspace_id`,`user_id`),
  ADD KEY `user_workspace_user_id_foreign` (`user_id`);

--
-- Indexes for table `workspaces`
--
ALTER TABLE `workspaces`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_logs`
--
ALTER TABLE `activity_logs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `allowances`
--
ALTER TABLE `allowances`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `allowance_payslip`
--
ALTER TABLE `allowance_payslip`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `candidates`
--
ALTER TABLE `candidates`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `candidate_notification`
--
ALTER TABLE `candidate_notification`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `candidate_statuses`
--
ALTER TABLE `candidate_statuses`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `client_meeting`
--
ALTER TABLE `client_meeting`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `client_project`
--
ALTER TABLE `client_project`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `client_workspace`
--
ALTER TABLE `client_workspace`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `comment_attachments`
--
ALTER TABLE `comment_attachments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contracts`
--
ALTER TABLE `contracts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contract_types`
--
ALTER TABLE `contract_types`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `custom_fieldables`
--
ALTER TABLE `custom_fieldables`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `custom_fields`
--
ALTER TABLE `custom_fields`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `deductions`
--
ALTER TABLE `deductions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `deduction_payslip`
--
ALTER TABLE `deduction_payslip`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `divisions`
--
ALTER TABLE `divisions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `email_templates`
--
ALTER TABLE `email_templates`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `estimates_invoices`
--
ALTER TABLE `estimates_invoices`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `estimates_invoice_item`
--
ALTER TABLE `estimates_invoice_item`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `expense_types`
--
ALTER TABLE `expense_types`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `favorites`
--
ALTER TABLE `favorites`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fcm_tokens`
--
ALTER TABLE `fcm_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `interviews`
--
ALTER TABLE `interviews`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `inventory_categories`
--
ALTER TABLE `inventory_categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `inventory_items`
--
ALTER TABLE `inventory_items`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `inventory_transactions`
--
ALTER TABLE `inventory_transactions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `job_vacancies`
--
ALTER TABLE `job_vacancies`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `leads`
--
ALTER TABLE `leads`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lead_follow_ups`
--
ALTER TABLE `lead_follow_ups`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lead_forms`
--
ALTER TABLE `lead_forms`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lead_form_fields`
--
ALTER TABLE `lead_form_fields`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lead_sources`
--
ALTER TABLE `lead_sources`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lead_stages`
--
ALTER TABLE `lead_stages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `leave_editors`
--
ALTER TABLE `leave_editors`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `leave_requests`
--
ALTER TABLE `leave_requests`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `leave_request_visibility`
--
ALTER TABLE `leave_request_visibility`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `letters`
--
ALTER TABLE `letters`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `letter_templates`
--
ALTER TABLE `letter_templates`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `letter_variables`
--
ALTER TABLE `letter_variables`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `meetings`
--
ALTER TABLE `meetings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `meeting_user`
--
ALTER TABLE `meeting_user`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menu_orders`
--
ALTER TABLE `menu_orders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=212;

--
-- AUTO_INCREMENT for table `milestones`
--
ALTER TABLE `milestones`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notes`
--
ALTER TABLE `notes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `password_managers`
--
ALTER TABLE `password_managers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_methods`
--
ALTER TABLE `payment_methods`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payslips`
--
ALTER TABLE `payslips`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=385;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pinned`
--
ALTER TABLE `pinned`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `priorities`
--
ALTER TABLE `priorities`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `project_tag`
--
ALTER TABLE `project_tag`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `project_user`
--
ALTER TABLE `project_user`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `recurring_tasks`
--
ALTER TABLE `recurring_tasks`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reminders`
--
ALTER TABLE `reminders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `scheduled_emails`
--
ALTER TABLE `scheduled_emails`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `statuses`
--
ALTER TABLE `statuses`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `status_timelines`
--
ALTER TABLE `status_timelines`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `task_lists`
--
ALTER TABLE `task_lists`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `task_time_entries`
--
ALTER TABLE `task_time_entries`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `task_user`
--
ALTER TABLE `task_user`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `taxes`
--
ALTER TABLE `taxes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `templates`
--
ALTER TABLE `templates`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT for table `time_trackers`
--
ALTER TABLE `time_trackers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `todos`
--
ALTER TABLE `todos`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `updates`
--
ALTER TABLE `updates`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_client_preferences`
--
ALTER TABLE `user_client_preferences`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_workspace`
--
ALTER TABLE `user_workspace`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `workspaces`
--
ALTER TABLE `workspaces`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `activity_logs`
--
ALTER TABLE `activity_logs`
  ADD CONSTRAINT `activity_logs_workspace_id_foreign` FOREIGN KEY (`workspace_id`) REFERENCES `workspaces` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `allowances`
--
ALTER TABLE `allowances`
  ADD CONSTRAINT `allowances_workspace_id_foreign` FOREIGN KEY (`workspace_id`) REFERENCES `workspaces` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `allowance_payslip`
--
ALTER TABLE `allowance_payslip`
  ADD CONSTRAINT `allowance_payslip_allowance_id_foreign` FOREIGN KEY (`allowance_id`) REFERENCES `allowances` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `allowance_payslip_payslip_id_foreign` FOREIGN KEY (`payslip_id`) REFERENCES `payslips` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `candidates`
--
ALTER TABLE `candidates`
  ADD CONSTRAINT `candidates_division_id_foreign` FOREIGN KEY (`division_id`) REFERENCES `divisions` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `candidates_job_vacancy_id_foreign` FOREIGN KEY (`job_vacancy_id`) REFERENCES `job_vacancies` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `candidates_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `candidate_statuses` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `candidate_notification`
--
ALTER TABLE `candidate_notification`
  ADD CONSTRAINT `candidate_notification_candidate_id_foreign` FOREIGN KEY (`candidate_id`) REFERENCES `candidates` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `candidate_notification_notification_id_foreign` FOREIGN KEY (`notification_id`) REFERENCES `notifications` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `client_meeting`
--
ALTER TABLE `client_meeting`
  ADD CONSTRAINT `client_meeting_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `client_meeting_meeting_id_foreign` FOREIGN KEY (`meeting_id`) REFERENCES `meetings` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `client_notifications`
--
ALTER TABLE `client_notifications`
  ADD CONSTRAINT `client_notifications_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `client_notifications_notification_id_foreign` FOREIGN KEY (`notification_id`) REFERENCES `notifications` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `client_project`
--
ALTER TABLE `client_project`
  ADD CONSTRAINT `project_client_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `project_client_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `client_workspace`
--
ALTER TABLE `client_workspace`
  ADD CONSTRAINT `client_workspace_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `client_workspace_workspace_id_foreign` FOREIGN KEY (`workspace_id`) REFERENCES `workspaces` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `comment_attachments`
--
ALTER TABLE `comment_attachments`
  ADD CONSTRAINT `comment_attachments_comment_id_foreign` FOREIGN KEY (`comment_id`) REFERENCES `comments` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `contracts`
--
ALTER TABLE `contracts`
  ADD CONSTRAINT `contracts_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `contracts_contract_type_id_foreign` FOREIGN KEY (`contract_type_id`) REFERENCES `contract_types` (`id`),
  ADD CONSTRAINT `contracts_division_id_foreign` FOREIGN KEY (`division_id`) REFERENCES `divisions` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `contracts_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `contracts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `contracts_workspace_id_foreign` FOREIGN KEY (`workspace_id`) REFERENCES `workspaces` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `contract_types`
--
ALTER TABLE `contract_types`
  ADD CONSTRAINT `contract_types_workspace_id_foreign` FOREIGN KEY (`workspace_id`) REFERENCES `workspaces` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `custom_fieldables`
--
ALTER TABLE `custom_fieldables`
  ADD CONSTRAINT `custom_fieldables_custom_field_id_foreign` FOREIGN KEY (`custom_field_id`) REFERENCES `custom_fields` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `deduction_payslip`
--
ALTER TABLE `deduction_payslip`
  ADD CONSTRAINT `deduction_payslip_deduction_id_foreign` FOREIGN KEY (`deduction_id`) REFERENCES `deductions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `deduction_payslip_payslip_id_foreign` FOREIGN KEY (`payslip_id`) REFERENCES `payslips` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `divisions`
--
ALTER TABLE `divisions`
  ADD CONSTRAINT `divisions_workspace_id_foreign` FOREIGN KEY (`workspace_id`) REFERENCES `workspaces` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `email_templates`
--
ALTER TABLE `email_templates`
  ADD CONSTRAINT `email_templates_workspace_id_foreign` FOREIGN KEY (`workspace_id`) REFERENCES `workspaces` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `estimates_invoices`
--
ALTER TABLE `estimates_invoices`
  ADD CONSTRAINT `estimates_invoices_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `estimates_invoices_workspace_id_foreign` FOREIGN KEY (`workspace_id`) REFERENCES `workspaces` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `estimates_invoice_item`
--
ALTER TABLE `estimates_invoice_item`
  ADD CONSTRAINT `estimates_invoices_items_estimate_invoice_id_foreign` FOREIGN KEY (`estimates_invoice_id`) REFERENCES `estimates_invoices` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `estimates_invoices_items_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `expenses`
--
ALTER TABLE `expenses`
  ADD CONSTRAINT `expenses_expense_type_id_foreign` FOREIGN KEY (`expense_type_id`) REFERENCES `expense_types` (`id`),
  ADD CONSTRAINT `expenses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `expenses_workspace_id_foreign` FOREIGN KEY (`workspace_id`) REFERENCES `workspaces` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `expense_types`
--
ALTER TABLE `expense_types`
  ADD CONSTRAINT `expense_types_workspace_id_foreign` FOREIGN KEY (`workspace_id`) REFERENCES `workspaces` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `favorites`
--
ALTER TABLE `favorites`
  ADD CONSTRAINT `favorites_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `favorites_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `fcm_tokens`
--
ALTER TABLE `fcm_tokens`
  ADD CONSTRAINT `fcm_tokens_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fcm_tokens_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `interviews`
--
ALTER TABLE `interviews`
  ADD CONSTRAINT `interviews_candidate_id_foreign` FOREIGN KEY (`candidate_id`) REFERENCES `candidates` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `interviews_interviewer_id_foreign` FOREIGN KEY (`interviewer_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `inventory_items`
--
ALTER TABLE `inventory_items`
  ADD CONSTRAINT `inventory_items_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `inventory_categories` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `inventory_items_owner_user_id_foreign` FOREIGN KEY (`owner_user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `inventory_transactions`
--
ALTER TABLE `inventory_transactions`
  ADD CONSTRAINT `inventory_transactions_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `inventory_items` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `job_vacancies`
--
ALTER TABLE `job_vacancies`
  ADD CONSTRAINT `job_vacancies_division_id_foreign` FOREIGN KEY (`division_id`) REFERENCES `divisions` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `job_vacancies_workspace_id_foreign` FOREIGN KEY (`workspace_id`) REFERENCES `workspaces` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `leads`
--
ALTER TABLE `leads`
  ADD CONSTRAINT `leads_assigned_to_foreign` FOREIGN KEY (`assigned_to`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `leads_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `leads_source_id_foreign` FOREIGN KEY (`source_id`) REFERENCES `lead_sources` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `leads_stage_id_foreign` FOREIGN KEY (`stage_id`) REFERENCES `lead_stages` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `leads_workspace_id_foreign` FOREIGN KEY (`workspace_id`) REFERENCES `workspaces` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `lead_follow_ups`
--
ALTER TABLE `lead_follow_ups`
  ADD CONSTRAINT `lead_follow_ups_assigned_to_foreign` FOREIGN KEY (`assigned_to`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `lead_follow_ups_lead_id_foreign` FOREIGN KEY (`lead_id`) REFERENCES `leads` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `lead_forms`
--
ALTER TABLE `lead_forms`
  ADD CONSTRAINT `lead_forms_assigned_to_foreign` FOREIGN KEY (`assigned_to`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `lead_forms_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `lead_forms_source_id_foreign` FOREIGN KEY (`source_id`) REFERENCES `lead_sources` (`id`),
  ADD CONSTRAINT `lead_forms_stage_id_foreign` FOREIGN KEY (`stage_id`) REFERENCES `lead_stages` (`id`),
  ADD CONSTRAINT `lead_forms_workspace_id_foreign` FOREIGN KEY (`workspace_id`) REFERENCES `workspaces` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `lead_form_fields`
--
ALTER TABLE `lead_form_fields`
  ADD CONSTRAINT `lead_form_fields_form_id_foreign` FOREIGN KEY (`form_id`) REFERENCES `lead_forms` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `leave_editors`
--
ALTER TABLE `leave_editors`
  ADD CONSTRAINT `leave_editors_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `leave_requests`
--
ALTER TABLE `leave_requests`
  ADD CONSTRAINT `leave_requests_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `leave_requests_workspace_id_foreign` FOREIGN KEY (`workspace_id`) REFERENCES `workspaces` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `leave_request_visibility`
--
ALTER TABLE `leave_request_visibility`
  ADD CONSTRAINT `leave_request_visibility_leave_request_id_foreign` FOREIGN KEY (`leave_request_id`) REFERENCES `leave_requests` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `leave_request_visibility_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `letters`
--
ALTER TABLE `letters`
  ADD CONSTRAINT `letters_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `letters_template_id_foreign` FOREIGN KEY (`template_id`) REFERENCES `letter_templates` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `letters_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `letters_workspace_id_foreign` FOREIGN KEY (`workspace_id`) REFERENCES `workspaces` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `letter_templates`
--
ALTER TABLE `letter_templates`
  ADD CONSTRAINT `letter_templates_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `letter_templates_workspace_id_foreign` FOREIGN KEY (`workspace_id`) REFERENCES `workspaces` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `letter_variables`
--
ALTER TABLE `letter_variables`
  ADD CONSTRAINT `letter_variables_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `letter_variables_workspace_id_foreign` FOREIGN KEY (`workspace_id`) REFERENCES `workspaces` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `meeting_user`
--
ALTER TABLE `meeting_user`
  ADD CONSTRAINT `meeting_user_meeting_id_foreign` FOREIGN KEY (`meeting_id`) REFERENCES `meetings` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `meeting_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `menu_orders`
--
ALTER TABLE `menu_orders`
  ADD CONSTRAINT `menu_orders_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `menu_orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `milestones`
--
ALTER TABLE `milestones`
  ADD CONSTRAINT `milestones_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `milestones_workspace_id_foreign` FOREIGN KEY (`workspace_id`) REFERENCES `workspaces` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `notes`
--
ALTER TABLE `notes`
  ADD CONSTRAINT `notes_workspace_id_foreign` FOREIGN KEY (`workspace_id`) REFERENCES `workspaces` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `notifications_workspace_id_foreign` FOREIGN KEY (`workspace_id`) REFERENCES `workspaces` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `notification_user`
--
ALTER TABLE `notification_user`
  ADD CONSTRAINT `notification_user_notification_id_foreign` FOREIGN KEY (`notification_id`) REFERENCES `notifications` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `notification_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `payment_methods`
--
ALTER TABLE `payment_methods`
  ADD CONSTRAINT `payment_methods_workspace_id_foreign` FOREIGN KEY (`workspace_id`) REFERENCES `workspaces` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `payslips`
--
ALTER TABLE `payslips`
  ADD CONSTRAINT `payslips_division_id_foreign` FOREIGN KEY (`division_id`) REFERENCES `divisions` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `payslips_payment_method_id_foreign` FOREIGN KEY (`payment_method_id`) REFERENCES `payment_methods` (`id`),
  ADD CONSTRAINT `payslips_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `payslips_workspace_id_foreign` FOREIGN KEY (`workspace_id`) REFERENCES `workspaces` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `pinned`
--
ALTER TABLE `pinned`
  ADD CONSTRAINT `pinned_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `pinned_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `project_tag`
--
ALTER TABLE `project_tag`
  ADD CONSTRAINT `project_tag_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `project_tag_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `project_user`
--
ALTER TABLE `project_user`
  ADD CONSTRAINT `project_user_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `project_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `recurring_tasks`
--
ALTER TABLE `recurring_tasks`
  ADD CONSTRAINT `recurring_tasks_task_id_foreign` FOREIGN KEY (`task_id`) REFERENCES `tasks` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_status`
--
ALTER TABLE `role_status`
  ADD CONSTRAINT `role_status_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_status_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `scheduled_emails`
--
ALTER TABLE `scheduled_emails`
  ADD CONSTRAINT `scheduled_emails_email_template_id_foreign` FOREIGN KEY (`email_template_id`) REFERENCES `email_templates` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `scheduled_emails_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `scheduled_emails_workspace_id_foreign` FOREIGN KEY (`workspace_id`) REFERENCES `workspaces` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tasks`
--
ALTER TABLE `tasks`
  ADD CONSTRAINT `tasks_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `tasks` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tasks_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tasks_task_list_id_foreign` FOREIGN KEY (`task_list_id`) REFERENCES `task_lists` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `task_lists`
--
ALTER TABLE `task_lists`
  ADD CONSTRAINT `task_lists_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `task_time_entries`
--
ALTER TABLE `task_time_entries`
  ADD CONSTRAINT `task_time_entries_task_id_foreign` FOREIGN KEY (`task_id`) REFERENCES `tasks` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `task_user`
--
ALTER TABLE `task_user`
  ADD CONSTRAINT `task_user_task_id_foreign` FOREIGN KEY (`task_id`) REFERENCES `tasks` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `task_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `time_trackers`
--
ALTER TABLE `time_trackers`
  ADD CONSTRAINT `time_trackers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `time_trackers_workspace_id_foreign` FOREIGN KEY (`workspace_id`) REFERENCES `workspaces` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_division_id_foreign` FOREIGN KEY (`division_id`) REFERENCES `divisions` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `user_workspace`
--
ALTER TABLE `user_workspace`
  ADD CONSTRAINT `user_workspace_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_workspace_workspace_id_foreign` FOREIGN KEY (`workspace_id`) REFERENCES `workspaces` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
