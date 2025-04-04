-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 04, 2025 at 01:41 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `namlt`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2025-03-28 01:31:27', '2025-03-28 01:31:27', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com/\">Gravatar</a>.', 0, 'post-trashed', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_learnpress_courses`
--

CREATE TABLE `wp_learnpress_courses` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `json` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `price_to_sort` float DEFAULT NULL,
  `is_sale` int(1) DEFAULT 0,
  `post_author` bigint(20) UNSIGNED DEFAULT NULL,
  `post_date_gmt` datetime DEFAULT NULL,
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  `menu_order` int(11) DEFAULT 0,
  `lang` varchar(20) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_learnpress_courses`
--

INSERT INTO `wp_learnpress_courses` (`ID`, `json`, `price_to_sort`, `is_sale`, `post_author`, `post_date_gmt`, `post_content`, `post_title`, `post_status`, `post_name`, `menu_order`, `lang`) VALUES
(45, '{\"ID\":45,\"post_author\":1,\"post_date_gmt\":\"2025-04-04 10:54:51\",\"post_title\":\"Cấu trúc dữ liệu giải thuật\",\"post_status\":\"publish\",\"post_name\":\"cau-truc-du-lieu-giai-thuat\",\"price_to_sort\":0,\"is_sale\":0,\"lang\":null,\"meta_data\":{\"_lp_allow_course_repurchase\":\"no\",\"_lp_offline_course\":\"no\",\"_lp_duration\":\"10 week\",\"_lp_block_expire_duration\":\"no\",\"_lp_block_finished\":\"yes\",\"_lp_course_repurchase_option\":\"reset\",\"_lp_level\":\"beginner\",\"_lp_students\":\"0\",\"_lp_max_students\":30,\"_lp_retake_count\":\"0\",\"_lp_has_finish\":\"yes\",\"_lp_featured\":\"no\",\"_lp_featured_review\":\"\",\"_lp_external_link_buy_course\":\"\",\"_lp_offline_lesson_count\":10,\"_lp_deliver_type\":\"private_1_1\",\"_lp_address\":\"\",\"_lp_regular_price\":\"\",\"_lp_sale_price\":\"\",\"_lp_sale_start\":\"\",\"_lp_sale_end\":\"\",\"_lp_price_prefix\":\"\",\"_lp_price_suffix\":\"\",\"_lp_no_required_enroll\":\"no\",\"_lp_requirements\":[],\"_lp_target_audiences\":[],\"_lp_key_features\":[],\"_lp_faqs\":[],\"_lp_course_result\":\"evaluate_lesson\",\"_lp_passing_condition\":80,\"post_author\":\"1\",\"_lp_course_material\":null,\"_lp_price\":0,\"_lp_final_quiz\":0},\"image_url\":\"http:\\/\\/localhost\\/tintucedu\\/wp-content\\/plugins\\/learnpress\\/assets\\/images\\/no-image.png\",\"permalink\":\"\",\"categories\":[{\"term_id\":8,\"name\":\"Lập trình\",\"slug\":\"lap-trinh\",\"term_group\":0,\"term_taxonomy_id\":8,\"taxonomy\":\"course_category\",\"description\":\"\",\"parent\":0,\"count\":1,\"filter\":\"raw\"}],\"tags\":[],\"post_excerpt\":\"\",\"first_item_id\":0,\"total_items\":{\"count_items\":null,\"lp_lesson\":null,\"lp_quiz\":null},\"sections_items\":[]}', 0, 0, 1, '2025-04-04 10:54:51', '<span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Phần mềm trợ giúp cài đặt học tập hiểu biết thêm về cấu hình trong trình cài đặt</span></span></span></span></span></span>', 'Cấu trúc dữ liệu giải thuật', 'publish', 'cau-truc-du-lieu-giai-thuat', 0, NULL),
(53, '{\"ID\":53,\"post_author\":1,\"post_date_gmt\":\"2025-04-04 11:08:32\",\"post_title\":\"Lập trình C#\",\"post_status\":\"publish\",\"post_name\":\"lap-trinh-c\",\"price_to_sort\":2000000,\"is_sale\":0,\"lang\":null,\"meta_data\":{\"_lp_allow_course_repurchase\":\"yes\",\"_lp_offline_course\":\"no\",\"_lp_duration\":\"10 week\",\"_lp_block_expire_duration\":\"no\",\"_lp_block_finished\":\"yes\",\"_lp_course_repurchase_option\":\"reset\",\"_lp_level\":\"intermediate\",\"_lp_students\":\"0\",\"_lp_max_students\":\"0\",\"_lp_retake_count\":\"0\",\"_lp_has_finish\":\"yes\",\"_lp_featured\":\"no\",\"_lp_featured_review\":\"\",\"_lp_external_link_buy_course\":\"\",\"_lp_offline_lesson_count\":10,\"_lp_deliver_type\":\"private_1_1\",\"_lp_address\":\"\",\"_lp_regular_price\":\"2000000\",\"_lp_sale_price\":\"2000000\",\"_lp_sale_start\":\"\",\"_lp_sale_end\":\"\",\"_lp_price_prefix\":\"\",\"_lp_price_suffix\":\"\",\"_lp_no_required_enroll\":\"no\",\"_lp_requirements\":[],\"_lp_target_audiences\":[],\"_lp_key_features\":[],\"_lp_faqs\":[],\"_lp_course_result\":\"evaluate_lesson\",\"_lp_passing_condition\":80,\"post_author\":\"1\",\"_lp_course_material\":null,\"_lp_price\":2000000,\"_lp_final_quiz\":0},\"image_url\":\"http:\\/\\/localhost\\/tintucedu\\/wp-content\\/plugins\\/learnpress\\/assets\\/images\\/no-image.png\",\"permalink\":\"\",\"categories\":[{\"term_id\":8,\"name\":\"Lập trình\",\"slug\":\"lap-trinh\",\"term_group\":0,\"term_taxonomy_id\":8,\"taxonomy\":\"course_category\",\"description\":\"\",\"parent\":0,\"count\":2,\"filter\":\"raw\"}],\"tags\":[],\"post_excerpt\":\"\",\"first_item_id\":0,\"total_items\":{\"count_items\":null,\"lp_lesson\":null,\"lp_quiz\":null},\"sections_items\":[]}', 2000000, 0, 1, '2025-04-04 11:08:32', '<span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">C# là một ngôn ngữ lập trình đơn giản, hiện đại, mục tiêu tổng thống, đối tượng hướng dẫn được phát triển bởi Microsoft trong phần khởi động .NET của họ, được phát triển chủ yếu bởi Anders Hejlsberg, một kiến ​​trúc sư phần mềm nổi tiếng với các sản phẩm Turbo Pascal, Delphi, J++, WFC. Khóa học này sẽ cung cấp cho bạn kiến ​​thức cơ bản về lập trình C# qua các khái niệm từ cơ bản và các bài tập thực tế bằng ngôn ngữ lập trình C#.</span></span>\r\n<h3><strong><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Đặc biệt của ngôn ngữ C#:</span></span></strong></h3>\r\n<ul>\r\n 	<li><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Là một đối tượng hướng ngôn ngữ tĩnh (đối tượng hướng là nội dung sẽ được trình bày trong khóa học C# Advance)</span></span></li>\r\n 	<li><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Ngôn ngữ khá đơn giản, chỉ có khoảng 80 từ khóa và hơn mười loại dữ liệu được cài đặt sẵn.</span></span></li>\r\n 	<li><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Cung cấp các thành phần đặc tính (hướng thành phần) như Thuộc tính, Sự kiện</span></span></li>\r\n 	<li><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">C# has a Garbage Collector sẽ tự động thu thập vùng nhớ khi không sử dụng nữa.</span></span></li>\r\n</ul>\r\n<h3><strong><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Ứng dụng của C#</span></span></strong></h3>\r\n<ul>\r\n 	<li><strong><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Ứng dụng trên Windows:</span></span>\r\n<img src=\"https://s3-sgn09.fptcloud.com/codelearnstorage/files/thumbnails/A2_4a0918575fdb4a598759686cec0620ab.png\" />\r\n</strong><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\"> Với sự trợ giúp của bộ khung .Net, “C#” được sử dụng để phát triển các ứng dụng dựa trên cửa sổ cho máy tính để bàn. Nhiều ứng dụng Windows phổ biến như các công cụ Microsoft Office, Skype, Photoshop và Visual Studio được phát triển bằng ngôn ngữ này.</span></span></li>\r\n 	<li><strong><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Các thành phần và điều khiển:</span></span>\r\n</strong><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\"> Các thành phần và điều khiển là các thư viện có thể được sử dụng để tạo ra một phân phối dễ dàng thứ hai và có thể chia sẻ được. Thư viện GPS là một ví dụ tuyệt vời cho một thư viện có thể được xây dựng và dễ dàng phân phối cho các thành viên khác trong các ứng dụng của họ để sử dụng. Nó cũng có thể được sử dụng để xây dựng các thành phần máy chủ và nhiều công việc khác.</span></span></li>\r\n 	<li><strong><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Web ứng dụng:</span></span>\r\n<img src=\"https://s3-sgn09.fptcloud.com/codelearnstorage/files/thumbnails/A1_8a4efcbe8355487ebe053fa1a6313020.png\" />\r\n</strong><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\"> Với sự trợ giúp của bộ .NET khung, C# có khả năng tạo nhiều web ứng dụng bằng cách sử dụng asp.net. Đó là một ngôn ngữ phổ biến khác mà ai có thể học ngay lập tức khi muốn làm ứng dụng web chạy trơn tru trên một trang web máy chủ. Các ứng dụng Windows chạy trên cả máy chủ cũng như trong trình duyệt của máy khách, tùy thuộc vào cách viết mã. Nếu C# được sử dụng bên dưới mã hóa công thức ở phần phụ trợ, thì mã hóa C# sẽ chạy trên máy chủ và giao diện người dùng HTML sẽ chạy trong trình duyệt của khách hàng.</span></span></li>\r\n</ul>\r\n\r\n<hr />\r\n\r\n<h3><strong><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Mục tiêu của khóa học.</span></span></strong></h3>\r\n<ul>\r\n 	<li><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Viết thành phần cơ bản của chương trình bằng ngôn ngữ C#.</span></span></li>\r\n 	<li><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Biết cách sử dụng loại dữ liệu của biến và sử dụng nó một cách hợp lý.</span></span></li>\r\n 	<li><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Sử dụng các toán tử trong C#.</span></span></li>\r\n 	<li><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Biết một số chất trong lệnh cũng như các lệnh trong C#:</span></span>\r\n<ul>\r\n 	<li><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Cấu trúc mảng.</span></span></li>\r\n 	<li><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Cấu trúc chuỗi.</span></span></li>\r\n 	<li><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Câu lệnh điều kiện.</span></span></li>\r\n 	<li><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Vòng lặp.</span></span></li>\r\n</ul>\r\n</li>\r\n 	<li><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Tìm hiểu về lớp DateTime trong C#.</span></span></li>\r\n 	<li><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Hiểu rõ và sử dụng cũng như viết các hàm trong C#.</span></span></li>\r\n</ul>\r\n\r\n<hr />\r\n\r\n<h3><strong><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Lời kết:</span></span></strong></h3>\r\n<span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Hướng tới trình cài đặt mục tiêu cho các đối tượng chưa biết, chưa tìm thấy về trình cài đặt. Trong khóa học này, chúng tôi sẽ chỉ tìm hiểu khái niệm cơ bản nhất về lập trình và thực thi trên ngôn ngữ C#.</span></span>', 'Lập trình C#', 'publish', 'lap-trinh-c', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wp_learnpress_files`
--

CREATE TABLE `wp_learnpress_files` (
  `file_id` bigint(20) UNSIGNED NOT NULL,
  `file_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `file_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `item_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `item_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `method` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'upload' CHECK (`method` in ('upload','external')),
  `file_path` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `orders` int(4) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_learnpress_order_itemmeta`
--

CREATE TABLE `wp_learnpress_order_itemmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `learnpress_order_item_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `meta_value` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `extra_value` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_learnpress_order_itemmeta`
--

INSERT INTO `wp_learnpress_order_itemmeta` (`meta_id`, `learnpress_order_item_id`, `meta_key`, `meta_value`, `extra_value`) VALUES
(1, 1, '_course_id', '45', NULL),
(2, 1, '_quantity', '1', NULL),
(3, 1, '_subtotal', '0', NULL),
(4, 1, '_total', '0', NULL),
(5, 2, '_course_id', '53', NULL),
(6, 2, '_quantity', '1', NULL),
(7, 2, '_subtotal', '2000000', NULL),
(8, 2, '_total', '2000000', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wp_learnpress_order_items`
--

CREATE TABLE `wp_learnpress_order_items` (
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_name` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `item_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `item_type` varchar(45) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_learnpress_order_items`
--

INSERT INTO `wp_learnpress_order_items` (`order_item_id`, `order_item_name`, `order_id`, `item_id`, `item_type`) VALUES
(1, 'Cấu trúc dữ liệu giải thuật', 52, 45, 'lp_course'),
(2, 'Lập trình C#', 57, 53, 'lp_course');

-- --------------------------------------------------------

--
-- Table structure for table `wp_learnpress_question_answermeta`
--

CREATE TABLE `wp_learnpress_question_answermeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `learnpress_question_answer_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_learnpress_question_answers`
--

CREATE TABLE `wp_learnpress_question_answers` (
  `question_answer_id` bigint(20) UNSIGNED NOT NULL,
  `question_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `value` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `order` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `is_true` varchar(3) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_learnpress_quiz_questions`
--

CREATE TABLE `wp_learnpress_quiz_questions` (
  `quiz_question_id` bigint(20) UNSIGNED NOT NULL,
  `quiz_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `question_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `question_order` bigint(20) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_learnpress_sections`
--

CREATE TABLE `wp_learnpress_sections` (
  `section_id` bigint(20) UNSIGNED NOT NULL,
  `section_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `section_course_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `section_order` bigint(10) UNSIGNED NOT NULL DEFAULT 1,
  `section_description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_learnpress_section_items`
--

CREATE TABLE `wp_learnpress_section_items` (
  `section_item_id` bigint(20) UNSIGNED NOT NULL,
  `section_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `item_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `item_order` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `item_type` varchar(45) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_learnpress_sessions`
--

CREATE TABLE `wp_learnpress_sessions` (
  `session_id` bigint(20) NOT NULL,
  `session_key` char(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `session_expiry` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_learnpress_sessions`
--

INSERT INTO `wp_learnpress_sessions` (`session_id`, `session_key`, `session_value`, `session_expiry`) VALUES
(1, '1', 'a:3:{i:0;b:0;s:4:\"cart\";s:90:\"a:1:{s:32:\"d82c8d1619ad8176d665453cfb2e55f0\";a:2:{s:7:\"item_id\";i:53;s:8:\"quantity\";i:1;}}\";s:22:\"order_awaiting_payment\";i:57;}', 1744284139);

-- --------------------------------------------------------

--
-- Table structure for table `wp_learnpress_user_itemmeta`
--

CREATE TABLE `wp_learnpress_user_itemmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `learnpress_user_item_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `meta_value` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `extra_value` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_learnpress_user_items`
--

CREATE TABLE `wp_learnpress_user_items` (
  `user_item_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `item_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `item_type` varchar(45) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `status` varchar(45) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `graduation` varchar(20) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `access_level` int(3) NOT NULL DEFAULT 50,
  `ref_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `ref_type` varchar(45) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  `parent_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_learnpress_user_items`
--

INSERT INTO `wp_learnpress_user_items` (`user_item_id`, `user_id`, `item_id`, `start_time`, `end_time`, `item_type`, `status`, `graduation`, `access_level`, `ref_id`, `ref_type`, `parent_id`) VALUES
(1, 1, 45, '2025-04-04 11:00:53', NULL, 'lp_course', 'enrolled', 'in-progress', 50, 52, 'lp_order', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_learnpress_user_item_results`
--

CREATE TABLE `wp_learnpress_user_item_results` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_item_id` bigint(20) UNSIGNED NOT NULL,
  `result` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'cron', 'a:11:{i:1743766778;a:1:{s:30:\"wp_delete_temp_updater_backups\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1743769888;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1743773508;a:1:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1743777086;a:1:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1743778887;a:1:{s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1743780687;a:1:{s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1743816688;a:2:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1743816708;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1743816723;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1744336017;a:1:{s:30:\"wp_delete_temp_updater_backups\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'on'),
(2, 'siteurl', 'http://localhost/tintucedu', 'on'),
(3, 'home', 'http://localhost/tintucedu', 'on'),
(4, 'blogname', 'Newsedu', 'on'),
(5, 'blogdescription', '', 'on'),
(6, 'users_can_register', '0', 'on'),
(7, 'admin_email', 'n1@gmail.com', 'on'),
(8, 'start_of_week', '1', 'on'),
(9, 'use_balanceTags', '0', 'on'),
(10, 'use_smilies', '1', 'on'),
(11, 'require_name_email', '1', 'on'),
(12, 'comments_notify', '1', 'on'),
(13, 'posts_per_rss', '10', 'on'),
(14, 'rss_use_excerpt', '0', 'on'),
(15, 'mailserver_url', 'mail.example.com', 'on'),
(16, 'mailserver_login', 'login@example.com', 'on'),
(17, 'mailserver_pass', '', 'on'),
(18, 'mailserver_port', '110', 'on'),
(19, 'default_category', '1', 'on'),
(20, 'default_comment_status', 'open', 'on'),
(21, 'default_ping_status', 'open', 'on'),
(22, 'default_pingback_flag', '0', 'on'),
(23, 'posts_per_page', '10', 'on'),
(24, 'date_format', 'F j, Y', 'on'),
(25, 'time_format', 'g:i a', 'on'),
(26, 'links_updated_date_format', 'F j, Y g:i a', 'on'),
(27, 'comment_moderation', '0', 'on'),
(28, 'moderation_notify', '1', 'on'),
(29, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'on'),
(30, 'rewrite_rules', 'a:183:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:10:\"courses/?$\";s:29:\"index.php?post_type=lp_course\";s:40:\"courses/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?post_type=lp_course&feed=$matches[1]\";s:35:\"courses/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?post_type=lp_course&feed=$matches[1]\";s:27:\"courses/page/([0-9]{1,})/?$\";s:47:\"index.php?post_type=lp_course&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:35:\"courses/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"courses/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"courses/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"courses/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"courses/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"courses/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"courses/([^/]+)/embed/?$\";s:42:\"index.php?lp_course=$matches[1]&embed=true\";s:28:\"courses/([^/]+)/trackback/?$\";s:36:\"index.php?lp_course=$matches[1]&tb=1\";s:48:\"courses/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?lp_course=$matches[1]&feed=$matches[2]\";s:43:\"courses/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?lp_course=$matches[1]&feed=$matches[2]\";s:36:\"courses/([^/]+)/page/?([0-9]{1,})/?$\";s:49:\"index.php?lp_course=$matches[1]&paged=$matches[2]\";s:43:\"courses/([^/]+)/comment-page-([0-9]{1,})/?$\";s:49:\"index.php?lp_course=$matches[1]&cpage=$matches[2]\";s:32:\"courses/([^/]+)(?:/([0-9]+))?/?$\";s:48:\"index.php?lp_course=$matches[1]&page=$matches[2]\";s:24:\"courses/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"courses/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"courses/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"courses/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"courses/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"courses/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:54:\"course-category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:54:\"index.php?course_category=$matches[1]&feed=$matches[2]\";s:49:\"course-category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:54:\"index.php?course_category=$matches[1]&feed=$matches[2]\";s:30:\"course-category/(.+?)/embed/?$\";s:48:\"index.php?course_category=$matches[1]&embed=true\";s:42:\"course-category/(.+?)/page/?([0-9]{1,})/?$\";s:55:\"index.php?course_category=$matches[1]&paged=$matches[2]\";s:24:\"course-category/(.+?)/?$\";s:37:\"index.php?course_category=$matches[1]\";s:51:\"course-tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?course_tag=$matches[1]&feed=$matches[2]\";s:46:\"course-tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?course_tag=$matches[1]&feed=$matches[2]\";s:27:\"course-tag/([^/]+)/embed/?$\";s:43:\"index.php?course_tag=$matches[1]&embed=true\";s:39:\"course-tag/([^/]+)/page/?([0-9]{1,})/?$\";s:50:\"index.php?course_tag=$matches[1]&paged=$matches[2]\";s:21:\"course-tag/([^/]+)/?$\";s:32:\"index.php?course_tag=$matches[1]\";s:33:\"lessons/.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:43:\"lessons/.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:63:\"lessons/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"lessons/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"lessons/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:39:\"lessons/.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:22:\"lessons/(.+?)/embed/?$\";s:42:\"index.php?lp_lesson=$matches[1]&embed=true\";s:26:\"lessons/(.+?)/trackback/?$\";s:36:\"index.php?lp_lesson=$matches[1]&tb=1\";s:34:\"lessons/(.+?)/page/?([0-9]{1,})/?$\";s:49:\"index.php?lp_lesson=$matches[1]&paged=$matches[2]\";s:41:\"lessons/(.+?)/comment-page-([0-9]{1,})/?$\";s:49:\"index.php?lp_lesson=$matches[1]&cpage=$matches[2]\";s:30:\"lessons/(.+?)(?:/([0-9]+))?/?$\";s:48:\"index.php?lp_lesson=$matches[1]&page=$matches[2]\";s:33:\"quizzes/.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:43:\"quizzes/.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:63:\"quizzes/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"quizzes/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"quizzes/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:39:\"quizzes/.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:22:\"quizzes/(.+?)/embed/?$\";s:40:\"index.php?lp_quiz=$matches[1]&embed=true\";s:26:\"quizzes/(.+?)/trackback/?$\";s:34:\"index.php?lp_quiz=$matches[1]&tb=1\";s:34:\"quizzes/(.+?)/page/?([0-9]{1,})/?$\";s:47:\"index.php?lp_quiz=$matches[1]&paged=$matches[2]\";s:41:\"quizzes/(.+?)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?lp_quiz=$matches[1]&cpage=$matches[2]\";s:30:\"quizzes/(.+?)(?:/([0-9]+))?/?$\";s:46:\"index.php?lp_quiz=$matches[1]&page=$matches[2]\";s:53:\"question-tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:51:\"index.php?question_tag=$matches[1]&feed=$matches[2]\";s:48:\"question-tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:51:\"index.php?question_tag=$matches[1]&feed=$matches[2]\";s:29:\"question-tag/([^/]+)/embed/?$\";s:45:\"index.php?question_tag=$matches[1]&embed=true\";s:41:\"question-tag/([^/]+)/page/?([0-9]{1,})/?$\";s:52:\"index.php?question_tag=$matches[1]&paged=$matches[2]\";s:23:\"question-tag/([^/]+)/?$\";s:34:\"index.php?question_tag=$matches[1]\";s:37:\"questions/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:47:\"questions/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:67:\"questions/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"questions/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"questions/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:43:\"questions/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:26:\"questions/([^/]+)/embed/?$\";s:44:\"index.php?lp_question=$matches[1]&embed=true\";s:30:\"questions/([^/]+)/trackback/?$\";s:38:\"index.php?lp_question=$matches[1]&tb=1\";s:38:\"questions/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?lp_question=$matches[1]&paged=$matches[2]\";s:45:\"questions/([^/]+)/comment-page-([0-9]{1,})/?$\";s:51:\"index.php?lp_question=$matches[1]&cpage=$matches[2]\";s:34:\"questions/([^/]+)(?:/([0-9]+))?/?$\";s:50:\"index.php?lp_question=$matches[1]&page=$matches[2]\";s:26:\"questions/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:36:\"questions/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:56:\"questions/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"questions/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"questions/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:32:\"questions/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:34:\"lp_order/.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"lp_order/.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"lp_order/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"lp_order/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"lp_order/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"lp_order/.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:23:\"lp_order/(.+?)/embed/?$\";s:41:\"index.php?lp_order=$matches[1]&embed=true\";s:27:\"lp_order/(.+?)/trackback/?$\";s:35:\"index.php?lp_order=$matches[1]&tb=1\";s:35:\"lp_order/(.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?lp_order=$matches[1]&paged=$matches[2]\";s:42:\"lp_order/(.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?lp_order=$matches[1]&cpage=$matches[2]\";s:31:\"lp_order/(.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?lp_order=$matches[1]&page=$matches[2]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:36:\"(.?.+?)/lp-order-received(/(.*))?/?$\";s:60:\"index.php?pagename=$matches[1]&lp-order-received=$matches[3]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'on'),
(31, 'hack_file', '0', 'on'),
(32, 'blog_charset', 'UTF-8', 'on'),
(33, 'moderation_keys', '', 'off'),
(34, 'active_plugins', 'a:1:{i:0;s:25:\"learnpress/learnpress.php\";}', 'on'),
(35, 'category_base', '', 'on'),
(36, 'ping_sites', 'http://rpc.pingomatic.com/', 'on'),
(37, 'comment_max_links', '2', 'on'),
(38, 'gmt_offset', '0', 'on'),
(39, 'default_email_category', '1', 'on'),
(40, 'recently_edited', '', 'off'),
(41, 'template', 'education-hub', 'on'),
(42, 'stylesheet', 'education-hub', 'on'),
(43, 'comment_registration', '0', 'on'),
(44, 'html_type', 'text/html', 'on'),
(45, 'use_trackback', '0', 'on'),
(46, 'default_role', 'subscriber', 'on'),
(47, 'db_version', '58975', 'on'),
(48, 'uploads_use_yearmonth_folders', '1', 'on'),
(49, 'upload_path', '', 'on'),
(50, 'blog_public', '0', 'on'),
(51, 'default_link_category', '2', 'on'),
(52, 'show_on_front', 'posts', 'on'),
(53, 'tag_base', '', 'on'),
(54, 'show_avatars', '1', 'on'),
(55, 'avatar_rating', 'G', 'on'),
(56, 'upload_url_path', '', 'on'),
(57, 'thumbnail_size_w', '150', 'on'),
(58, 'thumbnail_size_h', '150', 'on'),
(59, 'thumbnail_crop', '1', 'on'),
(60, 'medium_size_w', '300', 'on'),
(61, 'medium_size_h', '300', 'on'),
(62, 'avatar_default', 'mystery', 'on'),
(63, 'large_size_w', '1024', 'on'),
(64, 'large_size_h', '1024', 'on'),
(65, 'image_default_link_type', 'none', 'on'),
(66, 'image_default_size', '', 'on'),
(67, 'image_default_align', '', 'on'),
(68, 'close_comments_for_old_posts', '0', 'on'),
(69, 'close_comments_days_old', '14', 'on'),
(70, 'thread_comments', '1', 'on'),
(71, 'thread_comments_depth', '5', 'on'),
(72, 'page_comments', '0', 'on'),
(73, 'comments_per_page', '50', 'on'),
(74, 'default_comments_page', 'newest', 'on'),
(75, 'comment_order', 'asc', 'on'),
(76, 'sticky_posts', 'a:0:{}', 'on'),
(77, 'widget_categories', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'auto'),
(78, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'auto'),
(79, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'auto'),
(80, 'uninstall_plugins', 'a:0:{}', 'off'),
(81, 'timezone_string', '', 'on'),
(82, 'page_for_posts', '0', 'on'),
(83, 'page_on_front', '0', 'on'),
(84, 'default_post_format', '0', 'on'),
(85, 'link_manager_enabled', '0', 'on'),
(86, 'finished_splitting_shared_terms', '1', 'on'),
(87, 'site_icon', '0', 'on'),
(88, 'medium_large_size_w', '768', 'on'),
(89, 'medium_large_size_h', '0', 'on'),
(90, 'wp_page_for_privacy_policy', '3', 'on'),
(91, 'show_comments_cookies_opt_in', '1', 'on'),
(92, 'admin_email_lifespan', '1758677487', 'on'),
(93, 'disallowed_keys', '', 'off'),
(94, 'comment_previously_approved', '1', 'on'),
(95, 'auto_plugin_theme_update_emails', 'a:0:{}', 'off'),
(96, 'auto_update_core_dev', 'enabled', 'on'),
(97, 'auto_update_core_minor', 'enabled', 'on'),
(98, 'auto_update_core_major', 'enabled', 'on'),
(99, 'wp_force_deactivated_plugins', 'a:0:{}', 'on'),
(100, 'wp_attachment_pages_enabled', '0', 'on'),
(101, 'initial_db_version', '58975', 'on'),
(102, 'wp_user_roles', 'a:6:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:90:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:23:\"read_private_lp_courses\";b:1;s:17:\"delete_lp_courses\";b:1;s:27:\"delete_published_lp_courses\";b:1;s:15:\"edit_lp_courses\";b:1;s:25:\"edit_published_lp_courses\";b:1;s:18:\"publish_lp_courses\";b:1;s:25:\"delete_private_lp_courses\";b:1;s:23:\"edit_private_lp_courses\";b:1;s:24:\"delete_others_lp_courses\";b:1;s:22:\"edit_others_lp_courses\";b:1;s:23:\"read_private_lp_lessons\";b:1;s:17:\"delete_lp_lessons\";b:1;s:27:\"delete_published_lp_lessons\";b:1;s:15:\"edit_lp_lessons\";b:1;s:25:\"edit_published_lp_lessons\";b:1;s:18:\"publish_lp_lessons\";b:1;s:25:\"delete_private_lp_lessons\";b:1;s:23:\"edit_private_lp_lessons\";b:1;s:24:\"delete_others_lp_lessons\";b:1;s:22:\"edit_others_lp_lessons\";b:1;s:16:\"delete_lp_orders\";b:1;s:26:\"delete_published_lp_orders\";b:1;s:14:\"edit_lp_orders\";b:1;s:24:\"edit_published_lp_orders\";b:1;s:17:\"publish_lp_orders\";b:1;s:24:\"delete_private_lp_orders\";b:1;s:22:\"edit_private_lp_orders\";b:1;s:23:\"delete_others_lp_orders\";b:1;s:21:\"edit_others_lp_orders\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:10:\"lp_teacher\";a:2:{s:4:\"name\";s:13:\"LP Instructor\";s:12:\"capabilities\";a:15:{s:23:\"read_private_lp_courses\";b:1;s:27:\"delete_published_lp_courses\";b:1;s:25:\"edit_published_lp_courses\";b:1;s:15:\"edit_lp_courses\";b:1;s:17:\"delete_lp_courses\";b:1;s:18:\"publish_lp_courses\";b:1;s:23:\"read_private_lp_lessons\";b:1;s:27:\"delete_published_lp_lessons\";b:1;s:25:\"edit_published_lp_lessons\";b:1;s:15:\"edit_lp_lessons\";b:1;s:17:\"delete_lp_lessons\";b:1;s:18:\"publish_lp_lessons\";b:1;s:12:\"upload_files\";b:1;s:4:\"read\";b:1;s:10:\"edit_posts\";b:1;}}}', 'on'),
(103, 'fresh_site', '0', 'off'),
(104, 'user_count', '1', 'off'),
(105, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'auto'),
(106, 'sidebars_widgets', 'a:8:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}s:8:\"footer-1\";a:0:{}s:8:\"footer-2\";a:0:{}s:8:\"footer-3\";a:0:{}s:8:\"footer-4\";a:0:{}s:13:\"array_version\";i:3;}', 'auto'),
(107, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(108, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(109, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(110, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(111, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(112, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(113, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(114, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(115, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(116, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(117, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(118, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(119, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(120, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(121, '_transient_wp_core_block_css_files', 'a:2:{s:7:\"version\";s:5:\"6.7.1\";s:5:\"files\";a:540:{i:0;s:23:\"archives/editor-rtl.css\";i:1;s:27:\"archives/editor-rtl.min.css\";i:2;s:19:\"archives/editor.css\";i:3;s:23:\"archives/editor.min.css\";i:4;s:22:\"archives/style-rtl.css\";i:5;s:26:\"archives/style-rtl.min.css\";i:6;s:18:\"archives/style.css\";i:7;s:22:\"archives/style.min.css\";i:8;s:20:\"audio/editor-rtl.css\";i:9;s:24:\"audio/editor-rtl.min.css\";i:10;s:16:\"audio/editor.css\";i:11;s:20:\"audio/editor.min.css\";i:12;s:19:\"audio/style-rtl.css\";i:13;s:23:\"audio/style-rtl.min.css\";i:14;s:15:\"audio/style.css\";i:15;s:19:\"audio/style.min.css\";i:16;s:19:\"audio/theme-rtl.css\";i:17;s:23:\"audio/theme-rtl.min.css\";i:18;s:15:\"audio/theme.css\";i:19;s:19:\"audio/theme.min.css\";i:20;s:21:\"avatar/editor-rtl.css\";i:21;s:25:\"avatar/editor-rtl.min.css\";i:22;s:17:\"avatar/editor.css\";i:23;s:21:\"avatar/editor.min.css\";i:24;s:20:\"avatar/style-rtl.css\";i:25;s:24:\"avatar/style-rtl.min.css\";i:26;s:16:\"avatar/style.css\";i:27;s:20:\"avatar/style.min.css\";i:28;s:21:\"button/editor-rtl.css\";i:29;s:25:\"button/editor-rtl.min.css\";i:30;s:17:\"button/editor.css\";i:31;s:21:\"button/editor.min.css\";i:32;s:20:\"button/style-rtl.css\";i:33;s:24:\"button/style-rtl.min.css\";i:34;s:16:\"button/style.css\";i:35;s:20:\"button/style.min.css\";i:36;s:22:\"buttons/editor-rtl.css\";i:37;s:26:\"buttons/editor-rtl.min.css\";i:38;s:18:\"buttons/editor.css\";i:39;s:22:\"buttons/editor.min.css\";i:40;s:21:\"buttons/style-rtl.css\";i:41;s:25:\"buttons/style-rtl.min.css\";i:42;s:17:\"buttons/style.css\";i:43;s:21:\"buttons/style.min.css\";i:44;s:22:\"calendar/style-rtl.css\";i:45;s:26:\"calendar/style-rtl.min.css\";i:46;s:18:\"calendar/style.css\";i:47;s:22:\"calendar/style.min.css\";i:48;s:25:\"categories/editor-rtl.css\";i:49;s:29:\"categories/editor-rtl.min.css\";i:50;s:21:\"categories/editor.css\";i:51;s:25:\"categories/editor.min.css\";i:52;s:24:\"categories/style-rtl.css\";i:53;s:28:\"categories/style-rtl.min.css\";i:54;s:20:\"categories/style.css\";i:55;s:24:\"categories/style.min.css\";i:56;s:19:\"code/editor-rtl.css\";i:57;s:23:\"code/editor-rtl.min.css\";i:58;s:15:\"code/editor.css\";i:59;s:19:\"code/editor.min.css\";i:60;s:18:\"code/style-rtl.css\";i:61;s:22:\"code/style-rtl.min.css\";i:62;s:14:\"code/style.css\";i:63;s:18:\"code/style.min.css\";i:64;s:18:\"code/theme-rtl.css\";i:65;s:22:\"code/theme-rtl.min.css\";i:66;s:14:\"code/theme.css\";i:67;s:18:\"code/theme.min.css\";i:68;s:22:\"columns/editor-rtl.css\";i:69;s:26:\"columns/editor-rtl.min.css\";i:70;s:18:\"columns/editor.css\";i:71;s:22:\"columns/editor.min.css\";i:72;s:21:\"columns/style-rtl.css\";i:73;s:25:\"columns/style-rtl.min.css\";i:74;s:17:\"columns/style.css\";i:75;s:21:\"columns/style.min.css\";i:76;s:33:\"comment-author-name/style-rtl.css\";i:77;s:37:\"comment-author-name/style-rtl.min.css\";i:78;s:29:\"comment-author-name/style.css\";i:79;s:33:\"comment-author-name/style.min.css\";i:80;s:29:\"comment-content/style-rtl.css\";i:81;s:33:\"comment-content/style-rtl.min.css\";i:82;s:25:\"comment-content/style.css\";i:83;s:29:\"comment-content/style.min.css\";i:84;s:26:\"comment-date/style-rtl.css\";i:85;s:30:\"comment-date/style-rtl.min.css\";i:86;s:22:\"comment-date/style.css\";i:87;s:26:\"comment-date/style.min.css\";i:88;s:31:\"comment-edit-link/style-rtl.css\";i:89;s:35:\"comment-edit-link/style-rtl.min.css\";i:90;s:27:\"comment-edit-link/style.css\";i:91;s:31:\"comment-edit-link/style.min.css\";i:92;s:32:\"comment-reply-link/style-rtl.css\";i:93;s:36:\"comment-reply-link/style-rtl.min.css\";i:94;s:28:\"comment-reply-link/style.css\";i:95;s:32:\"comment-reply-link/style.min.css\";i:96;s:30:\"comment-template/style-rtl.css\";i:97;s:34:\"comment-template/style-rtl.min.css\";i:98;s:26:\"comment-template/style.css\";i:99;s:30:\"comment-template/style.min.css\";i:100;s:42:\"comments-pagination-numbers/editor-rtl.css\";i:101;s:46:\"comments-pagination-numbers/editor-rtl.min.css\";i:102;s:38:\"comments-pagination-numbers/editor.css\";i:103;s:42:\"comments-pagination-numbers/editor.min.css\";i:104;s:34:\"comments-pagination/editor-rtl.css\";i:105;s:38:\"comments-pagination/editor-rtl.min.css\";i:106;s:30:\"comments-pagination/editor.css\";i:107;s:34:\"comments-pagination/editor.min.css\";i:108;s:33:\"comments-pagination/style-rtl.css\";i:109;s:37:\"comments-pagination/style-rtl.min.css\";i:110;s:29:\"comments-pagination/style.css\";i:111;s:33:\"comments-pagination/style.min.css\";i:112;s:29:\"comments-title/editor-rtl.css\";i:113;s:33:\"comments-title/editor-rtl.min.css\";i:114;s:25:\"comments-title/editor.css\";i:115;s:29:\"comments-title/editor.min.css\";i:116;s:23:\"comments/editor-rtl.css\";i:117;s:27:\"comments/editor-rtl.min.css\";i:118;s:19:\"comments/editor.css\";i:119;s:23:\"comments/editor.min.css\";i:120;s:22:\"comments/style-rtl.css\";i:121;s:26:\"comments/style-rtl.min.css\";i:122;s:18:\"comments/style.css\";i:123;s:22:\"comments/style.min.css\";i:124;s:20:\"cover/editor-rtl.css\";i:125;s:24:\"cover/editor-rtl.min.css\";i:126;s:16:\"cover/editor.css\";i:127;s:20:\"cover/editor.min.css\";i:128;s:19:\"cover/style-rtl.css\";i:129;s:23:\"cover/style-rtl.min.css\";i:130;s:15:\"cover/style.css\";i:131;s:19:\"cover/style.min.css\";i:132;s:22:\"details/editor-rtl.css\";i:133;s:26:\"details/editor-rtl.min.css\";i:134;s:18:\"details/editor.css\";i:135;s:22:\"details/editor.min.css\";i:136;s:21:\"details/style-rtl.css\";i:137;s:25:\"details/style-rtl.min.css\";i:138;s:17:\"details/style.css\";i:139;s:21:\"details/style.min.css\";i:140;s:20:\"embed/editor-rtl.css\";i:141;s:24:\"embed/editor-rtl.min.css\";i:142;s:16:\"embed/editor.css\";i:143;s:20:\"embed/editor.min.css\";i:144;s:19:\"embed/style-rtl.css\";i:145;s:23:\"embed/style-rtl.min.css\";i:146;s:15:\"embed/style.css\";i:147;s:19:\"embed/style.min.css\";i:148;s:19:\"embed/theme-rtl.css\";i:149;s:23:\"embed/theme-rtl.min.css\";i:150;s:15:\"embed/theme.css\";i:151;s:19:\"embed/theme.min.css\";i:152;s:19:\"file/editor-rtl.css\";i:153;s:23:\"file/editor-rtl.min.css\";i:154;s:15:\"file/editor.css\";i:155;s:19:\"file/editor.min.css\";i:156;s:18:\"file/style-rtl.css\";i:157;s:22:\"file/style-rtl.min.css\";i:158;s:14:\"file/style.css\";i:159;s:18:\"file/style.min.css\";i:160;s:23:\"footnotes/style-rtl.css\";i:161;s:27:\"footnotes/style-rtl.min.css\";i:162;s:19:\"footnotes/style.css\";i:163;s:23:\"footnotes/style.min.css\";i:164;s:23:\"freeform/editor-rtl.css\";i:165;s:27:\"freeform/editor-rtl.min.css\";i:166;s:19:\"freeform/editor.css\";i:167;s:23:\"freeform/editor.min.css\";i:168;s:22:\"gallery/editor-rtl.css\";i:169;s:26:\"gallery/editor-rtl.min.css\";i:170;s:18:\"gallery/editor.css\";i:171;s:22:\"gallery/editor.min.css\";i:172;s:21:\"gallery/style-rtl.css\";i:173;s:25:\"gallery/style-rtl.min.css\";i:174;s:17:\"gallery/style.css\";i:175;s:21:\"gallery/style.min.css\";i:176;s:21:\"gallery/theme-rtl.css\";i:177;s:25:\"gallery/theme-rtl.min.css\";i:178;s:17:\"gallery/theme.css\";i:179;s:21:\"gallery/theme.min.css\";i:180;s:20:\"group/editor-rtl.css\";i:181;s:24:\"group/editor-rtl.min.css\";i:182;s:16:\"group/editor.css\";i:183;s:20:\"group/editor.min.css\";i:184;s:19:\"group/style-rtl.css\";i:185;s:23:\"group/style-rtl.min.css\";i:186;s:15:\"group/style.css\";i:187;s:19:\"group/style.min.css\";i:188;s:19:\"group/theme-rtl.css\";i:189;s:23:\"group/theme-rtl.min.css\";i:190;s:15:\"group/theme.css\";i:191;s:19:\"group/theme.min.css\";i:192;s:21:\"heading/style-rtl.css\";i:193;s:25:\"heading/style-rtl.min.css\";i:194;s:17:\"heading/style.css\";i:195;s:21:\"heading/style.min.css\";i:196;s:19:\"html/editor-rtl.css\";i:197;s:23:\"html/editor-rtl.min.css\";i:198;s:15:\"html/editor.css\";i:199;s:19:\"html/editor.min.css\";i:200;s:20:\"image/editor-rtl.css\";i:201;s:24:\"image/editor-rtl.min.css\";i:202;s:16:\"image/editor.css\";i:203;s:20:\"image/editor.min.css\";i:204;s:19:\"image/style-rtl.css\";i:205;s:23:\"image/style-rtl.min.css\";i:206;s:15:\"image/style.css\";i:207;s:19:\"image/style.min.css\";i:208;s:19:\"image/theme-rtl.css\";i:209;s:23:\"image/theme-rtl.min.css\";i:210;s:15:\"image/theme.css\";i:211;s:19:\"image/theme.min.css\";i:212;s:29:\"latest-comments/style-rtl.css\";i:213;s:33:\"latest-comments/style-rtl.min.css\";i:214;s:25:\"latest-comments/style.css\";i:215;s:29:\"latest-comments/style.min.css\";i:216;s:27:\"latest-posts/editor-rtl.css\";i:217;s:31:\"latest-posts/editor-rtl.min.css\";i:218;s:23:\"latest-posts/editor.css\";i:219;s:27:\"latest-posts/editor.min.css\";i:220;s:26:\"latest-posts/style-rtl.css\";i:221;s:30:\"latest-posts/style-rtl.min.css\";i:222;s:22:\"latest-posts/style.css\";i:223;s:26:\"latest-posts/style.min.css\";i:224;s:18:\"list/style-rtl.css\";i:225;s:22:\"list/style-rtl.min.css\";i:226;s:14:\"list/style.css\";i:227;s:18:\"list/style.min.css\";i:228;s:22:\"loginout/style-rtl.css\";i:229;s:26:\"loginout/style-rtl.min.css\";i:230;s:18:\"loginout/style.css\";i:231;s:22:\"loginout/style.min.css\";i:232;s:25:\"media-text/editor-rtl.css\";i:233;s:29:\"media-text/editor-rtl.min.css\";i:234;s:21:\"media-text/editor.css\";i:235;s:25:\"media-text/editor.min.css\";i:236;s:24:\"media-text/style-rtl.css\";i:237;s:28:\"media-text/style-rtl.min.css\";i:238;s:20:\"media-text/style.css\";i:239;s:24:\"media-text/style.min.css\";i:240;s:19:\"more/editor-rtl.css\";i:241;s:23:\"more/editor-rtl.min.css\";i:242;s:15:\"more/editor.css\";i:243;s:19:\"more/editor.min.css\";i:244;s:30:\"navigation-link/editor-rtl.css\";i:245;s:34:\"navigation-link/editor-rtl.min.css\";i:246;s:26:\"navigation-link/editor.css\";i:247;s:30:\"navigation-link/editor.min.css\";i:248;s:29:\"navigation-link/style-rtl.css\";i:249;s:33:\"navigation-link/style-rtl.min.css\";i:250;s:25:\"navigation-link/style.css\";i:251;s:29:\"navigation-link/style.min.css\";i:252;s:33:\"navigation-submenu/editor-rtl.css\";i:253;s:37:\"navigation-submenu/editor-rtl.min.css\";i:254;s:29:\"navigation-submenu/editor.css\";i:255;s:33:\"navigation-submenu/editor.min.css\";i:256;s:25:\"navigation/editor-rtl.css\";i:257;s:29:\"navigation/editor-rtl.min.css\";i:258;s:21:\"navigation/editor.css\";i:259;s:25:\"navigation/editor.min.css\";i:260;s:24:\"navigation/style-rtl.css\";i:261;s:28:\"navigation/style-rtl.min.css\";i:262;s:20:\"navigation/style.css\";i:263;s:24:\"navigation/style.min.css\";i:264;s:23:\"nextpage/editor-rtl.css\";i:265;s:27:\"nextpage/editor-rtl.min.css\";i:266;s:19:\"nextpage/editor.css\";i:267;s:23:\"nextpage/editor.min.css\";i:268;s:24:\"page-list/editor-rtl.css\";i:269;s:28:\"page-list/editor-rtl.min.css\";i:270;s:20:\"page-list/editor.css\";i:271;s:24:\"page-list/editor.min.css\";i:272;s:23:\"page-list/style-rtl.css\";i:273;s:27:\"page-list/style-rtl.min.css\";i:274;s:19:\"page-list/style.css\";i:275;s:23:\"page-list/style.min.css\";i:276;s:24:\"paragraph/editor-rtl.css\";i:277;s:28:\"paragraph/editor-rtl.min.css\";i:278;s:20:\"paragraph/editor.css\";i:279;s:24:\"paragraph/editor.min.css\";i:280;s:23:\"paragraph/style-rtl.css\";i:281;s:27:\"paragraph/style-rtl.min.css\";i:282;s:19:\"paragraph/style.css\";i:283;s:23:\"paragraph/style.min.css\";i:284;s:35:\"post-author-biography/style-rtl.css\";i:285;s:39:\"post-author-biography/style-rtl.min.css\";i:286;s:31:\"post-author-biography/style.css\";i:287;s:35:\"post-author-biography/style.min.css\";i:288;s:30:\"post-author-name/style-rtl.css\";i:289;s:34:\"post-author-name/style-rtl.min.css\";i:290;s:26:\"post-author-name/style.css\";i:291;s:30:\"post-author-name/style.min.css\";i:292;s:26:\"post-author/editor-rtl.css\";i:293;s:30:\"post-author/editor-rtl.min.css\";i:294;s:22:\"post-author/editor.css\";i:295;s:26:\"post-author/editor.min.css\";i:296;s:25:\"post-author/style-rtl.css\";i:297;s:29:\"post-author/style-rtl.min.css\";i:298;s:21:\"post-author/style.css\";i:299;s:25:\"post-author/style.min.css\";i:300;s:33:\"post-comments-form/editor-rtl.css\";i:301;s:37:\"post-comments-form/editor-rtl.min.css\";i:302;s:29:\"post-comments-form/editor.css\";i:303;s:33:\"post-comments-form/editor.min.css\";i:304;s:32:\"post-comments-form/style-rtl.css\";i:305;s:36:\"post-comments-form/style-rtl.min.css\";i:306;s:28:\"post-comments-form/style.css\";i:307;s:32:\"post-comments-form/style.min.css\";i:308;s:27:\"post-content/editor-rtl.css\";i:309;s:31:\"post-content/editor-rtl.min.css\";i:310;s:23:\"post-content/editor.css\";i:311;s:27:\"post-content/editor.min.css\";i:312;s:26:\"post-content/style-rtl.css\";i:313;s:30:\"post-content/style-rtl.min.css\";i:314;s:22:\"post-content/style.css\";i:315;s:26:\"post-content/style.min.css\";i:316;s:23:\"post-date/style-rtl.css\";i:317;s:27:\"post-date/style-rtl.min.css\";i:318;s:19:\"post-date/style.css\";i:319;s:23:\"post-date/style.min.css\";i:320;s:27:\"post-excerpt/editor-rtl.css\";i:321;s:31:\"post-excerpt/editor-rtl.min.css\";i:322;s:23:\"post-excerpt/editor.css\";i:323;s:27:\"post-excerpt/editor.min.css\";i:324;s:26:\"post-excerpt/style-rtl.css\";i:325;s:30:\"post-excerpt/style-rtl.min.css\";i:326;s:22:\"post-excerpt/style.css\";i:327;s:26:\"post-excerpt/style.min.css\";i:328;s:34:\"post-featured-image/editor-rtl.css\";i:329;s:38:\"post-featured-image/editor-rtl.min.css\";i:330;s:30:\"post-featured-image/editor.css\";i:331;s:34:\"post-featured-image/editor.min.css\";i:332;s:33:\"post-featured-image/style-rtl.css\";i:333;s:37:\"post-featured-image/style-rtl.min.css\";i:334;s:29:\"post-featured-image/style.css\";i:335;s:33:\"post-featured-image/style.min.css\";i:336;s:34:\"post-navigation-link/style-rtl.css\";i:337;s:38:\"post-navigation-link/style-rtl.min.css\";i:338;s:30:\"post-navigation-link/style.css\";i:339;s:34:\"post-navigation-link/style.min.css\";i:340;s:28:\"post-template/editor-rtl.css\";i:341;s:32:\"post-template/editor-rtl.min.css\";i:342;s:24:\"post-template/editor.css\";i:343;s:28:\"post-template/editor.min.css\";i:344;s:27:\"post-template/style-rtl.css\";i:345;s:31:\"post-template/style-rtl.min.css\";i:346;s:23:\"post-template/style.css\";i:347;s:27:\"post-template/style.min.css\";i:348;s:24:\"post-terms/style-rtl.css\";i:349;s:28:\"post-terms/style-rtl.min.css\";i:350;s:20:\"post-terms/style.css\";i:351;s:24:\"post-terms/style.min.css\";i:352;s:24:\"post-title/style-rtl.css\";i:353;s:28:\"post-title/style-rtl.min.css\";i:354;s:20:\"post-title/style.css\";i:355;s:24:\"post-title/style.min.css\";i:356;s:26:\"preformatted/style-rtl.css\";i:357;s:30:\"preformatted/style-rtl.min.css\";i:358;s:22:\"preformatted/style.css\";i:359;s:26:\"preformatted/style.min.css\";i:360;s:24:\"pullquote/editor-rtl.css\";i:361;s:28:\"pullquote/editor-rtl.min.css\";i:362;s:20:\"pullquote/editor.css\";i:363;s:24:\"pullquote/editor.min.css\";i:364;s:23:\"pullquote/style-rtl.css\";i:365;s:27:\"pullquote/style-rtl.min.css\";i:366;s:19:\"pullquote/style.css\";i:367;s:23:\"pullquote/style.min.css\";i:368;s:23:\"pullquote/theme-rtl.css\";i:369;s:27:\"pullquote/theme-rtl.min.css\";i:370;s:19:\"pullquote/theme.css\";i:371;s:23:\"pullquote/theme.min.css\";i:372;s:39:\"query-pagination-numbers/editor-rtl.css\";i:373;s:43:\"query-pagination-numbers/editor-rtl.min.css\";i:374;s:35:\"query-pagination-numbers/editor.css\";i:375;s:39:\"query-pagination-numbers/editor.min.css\";i:376;s:31:\"query-pagination/editor-rtl.css\";i:377;s:35:\"query-pagination/editor-rtl.min.css\";i:378;s:27:\"query-pagination/editor.css\";i:379;s:31:\"query-pagination/editor.min.css\";i:380;s:30:\"query-pagination/style-rtl.css\";i:381;s:34:\"query-pagination/style-rtl.min.css\";i:382;s:26:\"query-pagination/style.css\";i:383;s:30:\"query-pagination/style.min.css\";i:384;s:25:\"query-title/style-rtl.css\";i:385;s:29:\"query-title/style-rtl.min.css\";i:386;s:21:\"query-title/style.css\";i:387;s:25:\"query-title/style.min.css\";i:388;s:20:\"query/editor-rtl.css\";i:389;s:24:\"query/editor-rtl.min.css\";i:390;s:16:\"query/editor.css\";i:391;s:20:\"query/editor.min.css\";i:392;s:19:\"quote/style-rtl.css\";i:393;s:23:\"quote/style-rtl.min.css\";i:394;s:15:\"quote/style.css\";i:395;s:19:\"quote/style.min.css\";i:396;s:19:\"quote/theme-rtl.css\";i:397;s:23:\"quote/theme-rtl.min.css\";i:398;s:15:\"quote/theme.css\";i:399;s:19:\"quote/theme.min.css\";i:400;s:23:\"read-more/style-rtl.css\";i:401;s:27:\"read-more/style-rtl.min.css\";i:402;s:19:\"read-more/style.css\";i:403;s:23:\"read-more/style.min.css\";i:404;s:18:\"rss/editor-rtl.css\";i:405;s:22:\"rss/editor-rtl.min.css\";i:406;s:14:\"rss/editor.css\";i:407;s:18:\"rss/editor.min.css\";i:408;s:17:\"rss/style-rtl.css\";i:409;s:21:\"rss/style-rtl.min.css\";i:410;s:13:\"rss/style.css\";i:411;s:17:\"rss/style.min.css\";i:412;s:21:\"search/editor-rtl.css\";i:413;s:25:\"search/editor-rtl.min.css\";i:414;s:17:\"search/editor.css\";i:415;s:21:\"search/editor.min.css\";i:416;s:20:\"search/style-rtl.css\";i:417;s:24:\"search/style-rtl.min.css\";i:418;s:16:\"search/style.css\";i:419;s:20:\"search/style.min.css\";i:420;s:20:\"search/theme-rtl.css\";i:421;s:24:\"search/theme-rtl.min.css\";i:422;s:16:\"search/theme.css\";i:423;s:20:\"search/theme.min.css\";i:424;s:24:\"separator/editor-rtl.css\";i:425;s:28:\"separator/editor-rtl.min.css\";i:426;s:20:\"separator/editor.css\";i:427;s:24:\"separator/editor.min.css\";i:428;s:23:\"separator/style-rtl.css\";i:429;s:27:\"separator/style-rtl.min.css\";i:430;s:19:\"separator/style.css\";i:431;s:23:\"separator/style.min.css\";i:432;s:23:\"separator/theme-rtl.css\";i:433;s:27:\"separator/theme-rtl.min.css\";i:434;s:19:\"separator/theme.css\";i:435;s:23:\"separator/theme.min.css\";i:436;s:24:\"shortcode/editor-rtl.css\";i:437;s:28:\"shortcode/editor-rtl.min.css\";i:438;s:20:\"shortcode/editor.css\";i:439;s:24:\"shortcode/editor.min.css\";i:440;s:24:\"site-logo/editor-rtl.css\";i:441;s:28:\"site-logo/editor-rtl.min.css\";i:442;s:20:\"site-logo/editor.css\";i:443;s:24:\"site-logo/editor.min.css\";i:444;s:23:\"site-logo/style-rtl.css\";i:445;s:27:\"site-logo/style-rtl.min.css\";i:446;s:19:\"site-logo/style.css\";i:447;s:23:\"site-logo/style.min.css\";i:448;s:27:\"site-tagline/editor-rtl.css\";i:449;s:31:\"site-tagline/editor-rtl.min.css\";i:450;s:23:\"site-tagline/editor.css\";i:451;s:27:\"site-tagline/editor.min.css\";i:452;s:26:\"site-tagline/style-rtl.css\";i:453;s:30:\"site-tagline/style-rtl.min.css\";i:454;s:22:\"site-tagline/style.css\";i:455;s:26:\"site-tagline/style.min.css\";i:456;s:25:\"site-title/editor-rtl.css\";i:457;s:29:\"site-title/editor-rtl.min.css\";i:458;s:21:\"site-title/editor.css\";i:459;s:25:\"site-title/editor.min.css\";i:460;s:24:\"site-title/style-rtl.css\";i:461;s:28:\"site-title/style-rtl.min.css\";i:462;s:20:\"site-title/style.css\";i:463;s:24:\"site-title/style.min.css\";i:464;s:26:\"social-link/editor-rtl.css\";i:465;s:30:\"social-link/editor-rtl.min.css\";i:466;s:22:\"social-link/editor.css\";i:467;s:26:\"social-link/editor.min.css\";i:468;s:27:\"social-links/editor-rtl.css\";i:469;s:31:\"social-links/editor-rtl.min.css\";i:470;s:23:\"social-links/editor.css\";i:471;s:27:\"social-links/editor.min.css\";i:472;s:26:\"social-links/style-rtl.css\";i:473;s:30:\"social-links/style-rtl.min.css\";i:474;s:22:\"social-links/style.css\";i:475;s:26:\"social-links/style.min.css\";i:476;s:21:\"spacer/editor-rtl.css\";i:477;s:25:\"spacer/editor-rtl.min.css\";i:478;s:17:\"spacer/editor.css\";i:479;s:21:\"spacer/editor.min.css\";i:480;s:20:\"spacer/style-rtl.css\";i:481;s:24:\"spacer/style-rtl.min.css\";i:482;s:16:\"spacer/style.css\";i:483;s:20:\"spacer/style.min.css\";i:484;s:20:\"table/editor-rtl.css\";i:485;s:24:\"table/editor-rtl.min.css\";i:486;s:16:\"table/editor.css\";i:487;s:20:\"table/editor.min.css\";i:488;s:19:\"table/style-rtl.css\";i:489;s:23:\"table/style-rtl.min.css\";i:490;s:15:\"table/style.css\";i:491;s:19:\"table/style.min.css\";i:492;s:19:\"table/theme-rtl.css\";i:493;s:23:\"table/theme-rtl.min.css\";i:494;s:15:\"table/theme.css\";i:495;s:19:\"table/theme.min.css\";i:496;s:24:\"tag-cloud/editor-rtl.css\";i:497;s:28:\"tag-cloud/editor-rtl.min.css\";i:498;s:20:\"tag-cloud/editor.css\";i:499;s:24:\"tag-cloud/editor.min.css\";i:500;s:23:\"tag-cloud/style-rtl.css\";i:501;s:27:\"tag-cloud/style-rtl.min.css\";i:502;s:19:\"tag-cloud/style.css\";i:503;s:23:\"tag-cloud/style.min.css\";i:504;s:28:\"template-part/editor-rtl.css\";i:505;s:32:\"template-part/editor-rtl.min.css\";i:506;s:24:\"template-part/editor.css\";i:507;s:28:\"template-part/editor.min.css\";i:508;s:27:\"template-part/theme-rtl.css\";i:509;s:31:\"template-part/theme-rtl.min.css\";i:510;s:23:\"template-part/theme.css\";i:511;s:27:\"template-part/theme.min.css\";i:512;s:30:\"term-description/style-rtl.css\";i:513;s:34:\"term-description/style-rtl.min.css\";i:514;s:26:\"term-description/style.css\";i:515;s:30:\"term-description/style.min.css\";i:516;s:27:\"text-columns/editor-rtl.css\";i:517;s:31:\"text-columns/editor-rtl.min.css\";i:518;s:23:\"text-columns/editor.css\";i:519;s:27:\"text-columns/editor.min.css\";i:520;s:26:\"text-columns/style-rtl.css\";i:521;s:30:\"text-columns/style-rtl.min.css\";i:522;s:22:\"text-columns/style.css\";i:523;s:26:\"text-columns/style.min.css\";i:524;s:19:\"verse/style-rtl.css\";i:525;s:23:\"verse/style-rtl.min.css\";i:526;s:15:\"verse/style.css\";i:527;s:19:\"verse/style.min.css\";i:528;s:20:\"video/editor-rtl.css\";i:529;s:24:\"video/editor-rtl.min.css\";i:530;s:16:\"video/editor.css\";i:531;s:20:\"video/editor.min.css\";i:532;s:19:\"video/style-rtl.css\";i:533;s:23:\"video/style-rtl.min.css\";i:534;s:15:\"video/style.css\";i:535;s:19:\"video/style.min.css\";i:536;s:19:\"video/theme-rtl.css\";i:537;s:23:\"video/theme-rtl.min.css\";i:538;s:15:\"video/theme.css\";i:539;s:19:\"video/theme.min.css\";}}', 'on'),
(125, 'recovery_keys', 'a:0:{}', 'off'),
(126, 'theme_mods_twentytwentyfive', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1743126433;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'off'),
(127, '_transient_wp_styles_for_blocks', 'a:2:{s:4:\"hash\";s:32:\"ea26336599731f08fe70df203d19b3ba\";s:6:\"blocks\";a:5:{s:11:\"core/button\";s:0:\"\";s:14:\"core/site-logo\";s:0:\"\";s:18:\"core/post-template\";s:120:\":where(.wp-block-post-template.is-layout-flex){gap: 1.25em;}:where(.wp-block-post-template.is-layout-grid){gap: 1.25em;}\";s:12:\"core/columns\";s:102:\":where(.wp-block-columns.is-layout-flex){gap: 2em;}:where(.wp-block-columns.is-layout-grid){gap: 2em;}\";s:14:\"core/pullquote\";s:69:\":root :where(.wp-block-pullquote){font-size: 1.5em;line-height: 1.6;}\";}}', 'on'),
(128, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:2:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.7.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.7.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-6.7.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-6.7.2-new-bundled.zip\";s:7:\"partial\";s:69:\"https://downloads.wordpress.org/release/wordpress-6.7.2-partial-1.zip\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.7.2\";s:7:\"version\";s:5:\"6.7.2\";s:11:\"php_version\";s:6:\"7.2.24\";s:13:\"mysql_version\";s:5:\"5.5.5\";s:11:\"new_bundled\";s:3:\"6.7\";s:15:\"partial_version\";s:5:\"6.7.1\";}i:1;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:51:\"https://downloads.w.org/release/wordpress-6.7.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:51:\"https://downloads.w.org/release/wordpress-6.7.2.zip\";s:10:\"no_content\";s:62:\"https://downloads.w.org/release/wordpress-6.7.2-no-content.zip\";s:11:\"new_bundled\";s:63:\"https://downloads.w.org/release/wordpress-6.7.2-new-bundled.zip\";s:7:\"partial\";s:61:\"https://downloads.w.org/release/wordpress-6.7.2-partial-1.zip\";s:8:\"rollback\";s:62:\"https://downloads.w.org/release/wordpress-6.7.2-rollback-1.zip\";}s:7:\"current\";s:5:\"6.7.2\";s:7:\"version\";s:5:\"6.7.2\";s:11:\"php_version\";s:6:\"7.2.24\";s:13:\"mysql_version\";s:5:\"5.5.5\";s:11:\"new_bundled\";s:3:\"6.7\";s:15:\"partial_version\";s:5:\"6.7.1\";s:9:\"new_files\";s:0:\"\";}}s:12:\"last_checked\";i:1743763484;s:15:\"version_checked\";s:5:\"6.7.1\";s:12:\"translations\";a:0:{}}', 'off'),
(145, 'can_compress_scripts', '1', 'on'),
(150, 'finished_updating_comment_type', '1', 'auto'),
(155, 'current_theme', 'Education Hub', 'auto'),
(156, 'theme_mods_education-hub', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:6;}s:18:\"custom_css_post_id\";i:-1;}', 'on'),
(157, 'theme_switched', '', 'auto'),
(158, 'widget_education-hub-social', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(162, 'downloaded_font_files', 'a:30:{s:119:\"https://fonts.gstatic.com/s/merriweather/v31/u-4c0qyriQwlOrhSvowK_l5-eTxCVx0ZbwLvKH2Gk9hLmp0v5yA-xXPqCzLvF-adrGGj.woff2\";s:131:\"C:/xampp/htdocs/tintucedu/wp-content//fonts/merriweather/u-4c0qyriQwlOrhSvowK_l5-eTxCVx0ZbwLvKH2Gk9hLmp0v5yA-xXPqCzLvF-adrGGj.woff2\";s:119:\"https://fonts.gstatic.com/s/merriweather/v31/u-4c0qyriQwlOrhSvowK_l5-eTxCVx0ZbwLvKH2Gk9hLmp0v5yA-xXPqCzLvF--drGGj.woff2\";s:131:\"C:/xampp/htdocs/tintucedu/wp-content//fonts/merriweather/u-4c0qyriQwlOrhSvowK_l5-eTxCVx0ZbwLvKH2Gk9hLmp0v5yA-xXPqCzLvF--drGGj.woff2\";s:119:\"https://fonts.gstatic.com/s/merriweather/v31/u-4c0qyriQwlOrhSvowK_l5-eTxCVx0ZbwLvKH2Gk9hLmp0v5yA-xXPqCzLvF-SdrGGj.woff2\";s:131:\"C:/xampp/htdocs/tintucedu/wp-content//fonts/merriweather/u-4c0qyriQwlOrhSvowK_l5-eTxCVx0ZbwLvKH2Gk9hLmp0v5yA-xXPqCzLvF-SdrGGj.woff2\";s:119:\"https://fonts.gstatic.com/s/merriweather/v31/u-4c0qyriQwlOrhSvowK_l5-eTxCVx0ZbwLvKH2Gk9hLmp0v5yA-xXPqCzLvF-WdrGGj.woff2\";s:131:\"C:/xampp/htdocs/tintucedu/wp-content//fonts/merriweather/u-4c0qyriQwlOrhSvowK_l5-eTxCVx0ZbwLvKH2Gk9hLmp0v5yA-xXPqCzLvF-WdrGGj.woff2\";s:117:\"https://fonts.gstatic.com/s/merriweather/v31/u-4c0qyriQwlOrhSvowK_l5-eTxCVx0ZbwLvKH2Gk9hLmp0v5yA-xXPqCzLvF-udrA.woff2\";s:129:\"C:/xampp/htdocs/tintucedu/wp-content//fonts/merriweather/u-4c0qyriQwlOrhSvowK_l5-eTxCVx0ZbwLvKH2Gk9hLmp0v5yA-xXPqCzLvF-udrA.woff2\";s:117:\"https://fonts.gstatic.com/s/merriweather/v31/u-4e0qyriQwlOrhSvowK_l5UcA6zuSYEqOzpPe3HOZJ5eX1WtLaQwmYiSeqnJ-mFqA.woff2\";s:129:\"C:/xampp/htdocs/tintucedu/wp-content//fonts/merriweather/u-4e0qyriQwlOrhSvowK_l5UcA6zuSYEqOzpPe3HOZJ5eX1WtLaQwmYiSeqnJ-mFqA.woff2\";s:117:\"https://fonts.gstatic.com/s/merriweather/v31/u-4e0qyriQwlOrhSvowK_l5UcA6zuSYEqOzpPe3HOZJ5eX1WtLaQwmYiSequJ-mFqA.woff2\";s:129:\"C:/xampp/htdocs/tintucedu/wp-content//fonts/merriweather/u-4e0qyriQwlOrhSvowK_l5UcA6zuSYEqOzpPe3HOZJ5eX1WtLaQwmYiSequJ-mFqA.woff2\";s:117:\"https://fonts.gstatic.com/s/merriweather/v31/u-4e0qyriQwlOrhSvowK_l5UcA6zuSYEqOzpPe3HOZJ5eX1WtLaQwmYiSeqlJ-mFqA.woff2\";s:129:\"C:/xampp/htdocs/tintucedu/wp-content//fonts/merriweather/u-4e0qyriQwlOrhSvowK_l5UcA6zuSYEqOzpPe3HOZJ5eX1WtLaQwmYiSeqlJ-mFqA.woff2\";s:117:\"https://fonts.gstatic.com/s/merriweather/v31/u-4e0qyriQwlOrhSvowK_l5UcA6zuSYEqOzpPe3HOZJ5eX1WtLaQwmYiSeqkJ-mFqA.woff2\";s:129:\"C:/xampp/htdocs/tintucedu/wp-content//fonts/merriweather/u-4e0qyriQwlOrhSvowK_l5UcA6zuSYEqOzpPe3HOZJ5eX1WtLaQwmYiSeqkJ-mFqA.woff2\";s:114:\"https://fonts.gstatic.com/s/merriweather/v31/u-4e0qyriQwlOrhSvowK_l5UcA6zuSYEqOzpPe3HOZJ5eX1WtLaQwmYiSeqqJ-k.woff2\";s:126:\"C:/xampp/htdocs/tintucedu/wp-content//fonts/merriweather/u-4e0qyriQwlOrhSvowK_l5UcA6zuSYEqOzpPe3HOZJ5eX1WtLaQwmYiSeqqJ-k.woff2\";s:94:\"https://fonts.gstatic.com/s/opensans/v40/memtYaGs126MiZpBA-UFUIcVXSCEkx2cmqvXlWqWtE6F15M.woff2\";s:107:\"C:/xampp/htdocs/tintucedu/wp-content//fonts/open-sans/memtYaGs126MiZpBA-UFUIcVXSCEkx2cmqvXlWqWtE6F15M.woff2\";s:94:\"https://fonts.gstatic.com/s/opensans/v40/memtYaGs126MiZpBA-UFUIcVXSCEkx2cmqvXlWqWvU6F15M.woff2\";s:107:\"C:/xampp/htdocs/tintucedu/wp-content//fonts/open-sans/memtYaGs126MiZpBA-UFUIcVXSCEkx2cmqvXlWqWvU6F15M.woff2\";s:94:\"https://fonts.gstatic.com/s/opensans/v40/memtYaGs126MiZpBA-UFUIcVXSCEkx2cmqvXlWqWtU6F15M.woff2\";s:107:\"C:/xampp/htdocs/tintucedu/wp-content//fonts/open-sans/memtYaGs126MiZpBA-UFUIcVXSCEkx2cmqvXlWqWtU6F15M.woff2\";s:94:\"https://fonts.gstatic.com/s/opensans/v40/memtYaGs126MiZpBA-UFUIcVXSCEkx2cmqvXlWqWuk6F15M.woff2\";s:107:\"C:/xampp/htdocs/tintucedu/wp-content//fonts/open-sans/memtYaGs126MiZpBA-UFUIcVXSCEkx2cmqvXlWqWuk6F15M.woff2\";s:94:\"https://fonts.gstatic.com/s/opensans/v40/memtYaGs126MiZpBA-UFUIcVXSCEkx2cmqvXlWqWu06F15M.woff2\";s:107:\"C:/xampp/htdocs/tintucedu/wp-content//fonts/open-sans/memtYaGs126MiZpBA-UFUIcVXSCEkx2cmqvXlWqWu06F15M.woff2\";s:94:\"https://fonts.gstatic.com/s/opensans/v40/memtYaGs126MiZpBA-UFUIcVXSCEkx2cmqvXlWqWxU6F15M.woff2\";s:107:\"C:/xampp/htdocs/tintucedu/wp-content//fonts/open-sans/memtYaGs126MiZpBA-UFUIcVXSCEkx2cmqvXlWqWxU6F15M.woff2\";s:94:\"https://fonts.gstatic.com/s/opensans/v40/memtYaGs126MiZpBA-UFUIcVXSCEkx2cmqvXlWqW106F15M.woff2\";s:107:\"C:/xampp/htdocs/tintucedu/wp-content//fonts/open-sans/memtYaGs126MiZpBA-UFUIcVXSCEkx2cmqvXlWqW106F15M.woff2\";s:94:\"https://fonts.gstatic.com/s/opensans/v40/memtYaGs126MiZpBA-UFUIcVXSCEkx2cmqvXlWqWtk6F15M.woff2\";s:107:\"C:/xampp/htdocs/tintucedu/wp-content//fonts/open-sans/memtYaGs126MiZpBA-UFUIcVXSCEkx2cmqvXlWqWtk6F15M.woff2\";s:94:\"https://fonts.gstatic.com/s/opensans/v40/memtYaGs126MiZpBA-UFUIcVXSCEkx2cmqvXlWqWt06F15M.woff2\";s:107:\"C:/xampp/htdocs/tintucedu/wp-content//fonts/open-sans/memtYaGs126MiZpBA-UFUIcVXSCEkx2cmqvXlWqWt06F15M.woff2\";s:91:\"https://fonts.gstatic.com/s/opensans/v40/memtYaGs126MiZpBA-UFUIcVXSCEkx2cmqvXlWqWuU6F.woff2\";s:104:\"C:/xampp/htdocs/tintucedu/wp-content//fonts/open-sans/memtYaGs126MiZpBA-UFUIcVXSCEkx2cmqvXlWqWuU6F.woff2\";s:91:\"https://fonts.gstatic.com/s/opensans/v40/memvYaGs126MiZpBA-UvWbX2vVnXBbObj2OVTSKmu1aB.woff2\";s:104:\"C:/xampp/htdocs/tintucedu/wp-content//fonts/open-sans/memvYaGs126MiZpBA-UvWbX2vVnXBbObj2OVTSKmu1aB.woff2\";s:91:\"https://fonts.gstatic.com/s/opensans/v40/memvYaGs126MiZpBA-UvWbX2vVnXBbObj2OVTSumu1aB.woff2\";s:104:\"C:/xampp/htdocs/tintucedu/wp-content//fonts/open-sans/memvYaGs126MiZpBA-UvWbX2vVnXBbObj2OVTSumu1aB.woff2\";s:91:\"https://fonts.gstatic.com/s/opensans/v40/memvYaGs126MiZpBA-UvWbX2vVnXBbObj2OVTSOmu1aB.woff2\";s:104:\"C:/xampp/htdocs/tintucedu/wp-content//fonts/open-sans/memvYaGs126MiZpBA-UvWbX2vVnXBbObj2OVTSOmu1aB.woff2\";s:91:\"https://fonts.gstatic.com/s/opensans/v40/memvYaGs126MiZpBA-UvWbX2vVnXBbObj2OVTSymu1aB.woff2\";s:104:\"C:/xampp/htdocs/tintucedu/wp-content//fonts/open-sans/memvYaGs126MiZpBA-UvWbX2vVnXBbObj2OVTSymu1aB.woff2\";s:91:\"https://fonts.gstatic.com/s/opensans/v40/memvYaGs126MiZpBA-UvWbX2vVnXBbObj2OVTS2mu1aB.woff2\";s:104:\"C:/xampp/htdocs/tintucedu/wp-content//fonts/open-sans/memvYaGs126MiZpBA-UvWbX2vVnXBbObj2OVTS2mu1aB.woff2\";s:91:\"https://fonts.gstatic.com/s/opensans/v40/memvYaGs126MiZpBA-UvWbX2vVnXBbObj2OVTVOmu1aB.woff2\";s:104:\"C:/xampp/htdocs/tintucedu/wp-content//fonts/open-sans/memvYaGs126MiZpBA-UvWbX2vVnXBbObj2OVTVOmu1aB.woff2\";s:91:\"https://fonts.gstatic.com/s/opensans/v40/memvYaGs126MiZpBA-UvWbX2vVnXBbObj2OVTUGmu1aB.woff2\";s:104:\"C:/xampp/htdocs/tintucedu/wp-content//fonts/open-sans/memvYaGs126MiZpBA-UvWbX2vVnXBbObj2OVTUGmu1aB.woff2\";s:91:\"https://fonts.gstatic.com/s/opensans/v40/memvYaGs126MiZpBA-UvWbX2vVnXBbObj2OVTSCmu1aB.woff2\";s:104:\"C:/xampp/htdocs/tintucedu/wp-content//fonts/open-sans/memvYaGs126MiZpBA-UvWbX2vVnXBbObj2OVTSCmu1aB.woff2\";s:91:\"https://fonts.gstatic.com/s/opensans/v40/memvYaGs126MiZpBA-UvWbX2vVnXBbObj2OVTSGmu1aB.woff2\";s:104:\"C:/xampp/htdocs/tintucedu/wp-content//fonts/open-sans/memvYaGs126MiZpBA-UvWbX2vVnXBbObj2OVTSGmu1aB.woff2\";s:89:\"https://fonts.gstatic.com/s/opensans/v40/memvYaGs126MiZpBA-UvWbX2vVnXBbObj2OVTS-muw.woff2\";s:102:\"C:/xampp/htdocs/tintucedu/wp-content//fonts/open-sans/memvYaGs126MiZpBA-UvWbX2vVnXBbObj2OVTS-muw.woff2\";}', 'off'),
(186, '_site_transient_wp_plugin_dependencies_plugin_data', 'a:0:{}', 'off'),
(187, 'recently_activated', 'a:0:{}', 'off'),
(188, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'off'),
(195, 'wp_calendar_block_has_published_posts', '1', 'auto'),
(207, 'category_children', 'a:0:{}', 'auto'),
(229, 'core_updater.lock', '1743129255', 'off'),
(238, '_site_transient_timeout_theme_roots', '1743764959', 'off'),
(239, '_site_transient_theme_roots', 'a:4:{s:13:\"education-hub\";s:7:\"/themes\";s:16:\"twentytwentyfive\";s:7:\"/themes\";s:16:\"twentytwentyfour\";s:7:\"/themes\";s:17:\"twentytwentythree\";s:7:\"/themes\";}', 'off'),
(243, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1743763486;s:7:\"checked\";a:4:{s:13:\"education-hub\";s:5:\"2.7.1\";s:16:\"twentytwentyfive\";s:3:\"1.0\";s:16:\"twentytwentyfour\";s:3:\"1.3\";s:17:\"twentytwentythree\";s:3:\"1.6\";}s:8:\"response\";a:1:{s:16:\"twentytwentyfive\";a:6:{s:5:\"theme\";s:16:\"twentytwentyfive\";s:11:\"new_version\";s:3:\"1.1\";s:3:\"url\";s:46:\"https://wordpress.org/themes/twentytwentyfive/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/theme/twentytwentyfive.1.1.zip\";s:8:\"requires\";s:3:\"6.7\";s:12:\"requires_php\";s:3:\"7.2\";}}s:9:\"no_update\";a:3:{s:13:\"education-hub\";a:6:{s:5:\"theme\";s:13:\"education-hub\";s:11:\"new_version\";s:5:\"2.7.1\";s:3:\"url\";s:43:\"https://wordpress.org/themes/education-hub/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/education-hub.2.7.1.zip\";s:8:\"requires\";s:3:\"5.6\";s:12:\"requires_php\";s:3:\"5.6\";}s:16:\"twentytwentyfour\";a:6:{s:5:\"theme\";s:16:\"twentytwentyfour\";s:11:\"new_version\";s:3:\"1.3\";s:3:\"url\";s:46:\"https://wordpress.org/themes/twentytwentyfour/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/theme/twentytwentyfour.1.3.zip\";s:8:\"requires\";s:3:\"6.4\";s:12:\"requires_php\";s:3:\"7.0\";}s:17:\"twentytwentythree\";a:6:{s:5:\"theme\";s:17:\"twentytwentythree\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:47:\"https://wordpress.org/themes/twentytwentythree/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/theme/twentytwentythree.1.6.zip\";s:8:\"requires\";s:3:\"6.1\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}', 'off'),
(245, '_site_transient_timeout_php_check_3959ae27c599b58e87e38d960e11312b', '1744367972', 'off'),
(246, '_site_transient_php_check_3959ae27c599b58e87e38d960e11312b', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"7.2.24\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'off'),
(249, 'https_detection_errors', 'a:1:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:24:\"SSL verification failed.\";}}', 'auto'),
(250, '_transient_health-check-site-status-result', '{\"good\":14,\"recommended\":7,\"critical\":2}', 'on'),
(252, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1743763562;s:8:\"response\";a:1:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"5.3.7\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.5.3.7.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:60:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=2818463\";s:2:\"1x\";s:60:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=2818463\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/akismet/assets/banner-1544x500.png?rev=2900731\";s:2:\"1x\";s:62:\"https://ps.w.org/akismet/assets/banner-772x250.png?rev=2900731\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.8\";s:6:\"tested\";s:5:\"6.7.2\";s:12:\"requires_php\";s:6:\"5.6.20\";s:16:\"requires_plugins\";a:0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:9:\"hello.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/hello-dolly/assets/banner-1544x500.jpg?rev=2645582\";s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";}s:25:\"learnpress/learnpress.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:24:\"w.org/plugins/learnpress\";s:4:\"slug\";s:10:\"learnpress\";s:6:\"plugin\";s:25:\"learnpress/learnpress.php\";s:11:\"new_version\";s:7:\"4.2.8.2\";s:3:\"url\";s:41:\"https://wordpress.org/plugins/learnpress/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/learnpress.4.2.8.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/learnpress/assets/icon-256x256.gif?rev=3254420\";s:2:\"1x\";s:63:\"https://ps.w.org/learnpress/assets/icon-128x128.gif?rev=3254420\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/learnpress/assets/banner-1544x500.png?rev=3237609\";s:2:\"1x\";s:65:\"https://ps.w.org/learnpress/assets/banner-772x250.png?rev=3225881\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"6.0\";}}s:7:\"checked\";a:3:{s:19:\"akismet/akismet.php\";s:5:\"5.3.5\";s:9:\"hello.php\";s:5:\"1.7.2\";s:25:\"learnpress/learnpress.php\";s:7:\"4.2.8.2\";}}', 'off'),
(253, 'learn_press_layout_single_course', 'modern', 'auto'),
(254, 'learnpress_version', '4.2.8.2', 'auto'),
(255, 'thim_cache_tb_created', 'yes', 'auto'),
(256, 'tb_learnpress_courses', 'yes', 'auto'),
(257, 'table_learnpress_files_created', 'yes', 'auto'),
(258, 'learn_press_check_tables', 'yes', 'auto'),
(259, 'learnpress_db_version', '5', 'auto'),
(260, 'learn_press_checkout_page_id', '38', 'auto'),
(261, 'learn_press_profile_page_id', '39', 'auto'),
(262, 'learn_press_courses_page_id', '40', 'auto'),
(263, 'learn_press_instructors_page_id', '41', 'auto'),
(264, 'learn_press_single_instructor_page_id', '42', 'auto'),
(265, 'learn_press_become_a_teacher_page_id', '43', 'auto'),
(266, 'learn_press_term_conditions_page_id', '44', 'auto'),
(267, 'widget_learnpress_widget_course_extra', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(268, 'widget_learnpress_widget_course_info', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(269, 'widget_learnpress_widget_course_progress', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(270, 'widget_learnpress_widget_course_featured', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(271, 'widget_learnpress_widget_course_popular', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(272, 'widget_learnpress_widget_course_recent', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(273, 'widget_learnpress_widget_course_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(274, 'learn_press_paypal', 'a:2:{s:12:\"paypal_email\";s:24:\"thainam2092004@gmail.com\";s:6:\"enable\";s:3:\"yes\";}', 'auto'),
(275, 'learn_press_currency', 'VND', 'auto'),
(276, 'learn_press_currency_pos', 'left', 'auto'),
(277, 'learn_press_thousands_separator', ',', 'auto'),
(278, 'learn_press_decimals_separator', '.', 'auto'),
(279, 'learn_press_number_of_decimals', '2', 'auto'),
(280, 'learn_press_setup_wizard_completed', 'yes', 'auto'),
(283, 'course_category_children', 'a:0:{}', 'auto'),
(293, '_site_transient_timeout_wp_theme_files_patterns-9e9ed3ccd92726d6b356df4fd1171e03', '1743766814', 'off'),
(294, '_site_transient_wp_theme_files_patterns-9e9ed3ccd92726d6b356df4fd1171e03', 'a:2:{s:7:\"version\";s:5:\"2.7.1\";s:8:\"patterns\";a:0:{}}', 'off'),
(302, '_transient_is_multi_author', '0', 'on');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(7, 9, '_menu_item_type', 'taxonomy'),
(8, 9, '_menu_item_menu_item_parent', '0'),
(9, 9, '_menu_item_object_id', '1'),
(10, 9, '_menu_item_object', 'category'),
(11, 9, '_menu_item_target', ''),
(12, 9, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(13, 9, '_menu_item_xfn', ''),
(14, 9, '_menu_item_url', ''),
(16, 10, '_menu_item_type', 'taxonomy'),
(17, 10, '_menu_item_menu_item_parent', '0'),
(18, 10, '_menu_item_object_id', '4'),
(19, 10, '_menu_item_object', 'category'),
(20, 10, '_menu_item_target', ''),
(21, 10, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(22, 10, '_menu_item_xfn', ''),
(23, 10, '_menu_item_url', ''),
(25, 11, '_menu_item_type', 'taxonomy'),
(26, 11, '_menu_item_menu_item_parent', '0'),
(27, 11, '_menu_item_object_id', '3'),
(28, 11, '_menu_item_object', 'category'),
(29, 11, '_menu_item_target', ''),
(30, 11, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(31, 11, '_menu_item_xfn', ''),
(32, 11, '_menu_item_url', ''),
(34, 12, '_menu_item_type', 'taxonomy'),
(35, 12, '_menu_item_menu_item_parent', '0'),
(36, 12, '_menu_item_object_id', '2'),
(37, 12, '_menu_item_object', 'category'),
(38, 12, '_menu_item_target', ''),
(39, 12, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(40, 12, '_menu_item_xfn', ''),
(41, 12, '_menu_item_url', ''),
(43, 13, '_menu_item_type', 'custom'),
(44, 13, '_menu_item_menu_item_parent', '0'),
(45, 13, '_menu_item_object_id', '13'),
(46, 13, '_menu_item_object', 'custom'),
(47, 13, '_menu_item_target', ''),
(48, 13, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(49, 13, '_menu_item_xfn', ''),
(50, 13, '_menu_item_url', 'http://localhost/tintucedu/'),
(52, 14, '_edit_lock', '1743127917:1'),
(53, 15, '_wp_attached_file', '2025/03/thong-bao.jpg'),
(54, 15, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:274;s:6:\"height\";i:184;s:4:\"file\";s:21:\"2025/03/thong-bao.jpg\";s:8:\"filesize\";i:9495;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(56, 14, '_thumbnail_id', '15'),
(57, 14, '_edit_last', '1'),
(59, 1, '_edit_lock', '1743127815:1'),
(60, 1, '_wp_trash_meta_status', 'publish'),
(61, 1, '_wp_trash_meta_time', '1743127813'),
(62, 1, '_wp_desired_post_slug', 'hello-world'),
(63, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:\"1\";}'),
(64, 1, '_edit_last', '1'),
(66, 19, '_edit_lock', '1743128031:1'),
(67, 20, '_wp_attached_file', '2025/03/images-1.jpg'),
(68, 20, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:275;s:6:\"height\";i:183;s:4:\"file\";s:20:\"2025/03/images-1.jpg\";s:8:\"filesize\";i:7193;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(70, 19, '_thumbnail_id', '20'),
(71, 19, '_edit_last', '1'),
(73, 22, '_menu_item_type', 'taxonomy'),
(74, 22, '_menu_item_menu_item_parent', '0'),
(75, 22, '_menu_item_object_id', '7'),
(76, 22, '_menu_item_object', 'category'),
(77, 22, '_menu_item_target', ''),
(78, 22, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(79, 22, '_menu_item_xfn', ''),
(80, 22, '_menu_item_url', ''),
(82, 23, '_edit_lock', '1743128452:1'),
(83, 24, '_wp_attached_file', '2025/03/EPU_8440.jpg'),
(84, 24, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:780;s:6:\"height\";i:453;s:4:\"file\";s:20:\"2025/03/EPU_8440.jpg\";s:8:\"filesize\";i:84236;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(86, 23, '_thumbnail_id', '24'),
(87, 23, '_edit_last', '1'),
(89, 26, '_edit_lock', '1743128623:1'),
(90, 27, '_wp_attached_file', '2025/03/z6436673075515_68e6847ed7f5131fcc558295025c1dc1.jpg'),
(91, 27, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:253;s:6:\"height\";i:354;s:4:\"file\";s:59:\"2025/03/z6436673075515_68e6847ed7f5131fcc558295025c1dc1.jpg\";s:8:\"filesize\";i:24732;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(93, 26, '_thumbnail_id', '27'),
(94, 26, '_edit_last', '1'),
(96, 29, '_edit_lock', '1743128838:1'),
(97, 30, '_wp_attached_file', '2025/03/epu68.jpg'),
(98, 30, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:354;s:6:\"height\";i:151;s:4:\"file\";s:17:\"2025/03/epu68.jpg\";s:8:\"filesize\";i:25192;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(100, 29, '_thumbnail_id', '30'),
(101, 29, '_edit_last', '1'),
(103, 32, '_edit_lock', '1743128929:1'),
(104, 33, '_wp_attached_file', '2025/03/TD.jpg'),
(105, 33, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:354;s:6:\"height\";i:189;s:4:\"file\";s:14:\"2025/03/TD.jpg\";s:8:\"filesize\";i:25070;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(107, 32, '_thumbnail_id', '33'),
(108, 32, '_edit_last', '1'),
(110, 35, '_edit_lock', '1743129051:1'),
(111, 36, '_wp_attached_file', '2025/03/NAM051294.jpg'),
(112, 36, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:354;s:6:\"height\";i:236;s:4:\"file\";s:21:\"2025/03/NAM051294.jpg\";s:8:\"filesize\";i:33502;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(114, 35, '_thumbnail_id', '36'),
(115, 35, '_edit_last', '1'),
(116, 35, '_encloseme', '1'),
(117, 45, '_lp_regular_price', ''),
(118, 45, '_lp_sale_price', ''),
(119, 45, '_lp_price', '0'),
(120, 45, '_edit_last', '1'),
(121, 45, '_lp_duration', '10 week'),
(122, 45, '_lp_block_expire_duration', 'no'),
(123, 45, '_lp_block_finished', 'yes'),
(124, 45, '_lp_allow_course_repurchase', 'no'),
(125, 45, '_lp_course_repurchase_option', 'reset'),
(126, 45, '_lp_level', 'beginner'),
(127, 45, '_lp_students', '0'),
(128, 45, '_lp_max_students', '30'),
(129, 45, '_lp_retake_count', '0'),
(130, 45, '_lp_has_finish', 'yes'),
(131, 45, '_lp_featured', 'no'),
(132, 45, '_lp_featured_review', ''),
(133, 45, '_lp_external_link_buy_course', ''),
(134, 45, '_lp_offline_course', 'no'),
(135, 45, '_lp_offline_lesson_count', '10'),
(136, 45, '_lp_deliver_type', 'private_1_1'),
(137, 45, '_lp_address', ''),
(138, 45, '_lp_sale_start', ''),
(139, 45, '_lp_sale_end', ''),
(140, 45, '_lp_price_prefix', ''),
(141, 45, '_lp_price_suffix', ''),
(142, 45, '_lp_no_required_enroll', 'no'),
(143, 45, '_lp_requirements', 'a:0:{}'),
(144, 45, '_lp_target_audiences', 'a:0:{}'),
(145, 45, '_lp_key_features', 'a:0:{}'),
(146, 45, '_lp_faqs', 'a:0:{}'),
(147, 45, '_lp_course_result', 'evaluate_lesson'),
(148, 45, '_lp_passing_condition', '80'),
(149, 45, 'post_author', '1'),
(150, 45, '_edit_lock', '1743764535:1'),
(151, 47, '_wp_attached_file', '2025/04/dinh-nghia-cau-truc-du-lieu.jpg'),
(152, 47, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:800;s:6:\"height\";i:600;s:4:\"file\";s:39:\"2025/04/dinh-nghia-cau-truc-du-lieu.jpg\";s:8:\"filesize\";i:142501;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:10:\"Mstar Corp\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:38:\"Định nghĩa cấu trúc dữ liệu\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:38:\"https://mstarcorp.vn/cau-truc-du-lieu/\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:38:\"Định nghĩa cấu trúc dữ liệu\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:4:{i:0;s:42:\"cấu trúc dữ liệu và giải thuật\";i:1;s:23:\"cấu trúc dữ liệu\";i:2;s:46:\"cấu trúc dữ liệu và giải thuật pdf\";i:3;s:31:\"cấu trúc dữ liệu là gì\";}}}'),
(153, 45, '_thumbnail_id', '47'),
(154, 52, '_order_currency', 'VND'),
(155, 52, '_prices_include_tax', 'no'),
(156, 52, '_user_id', '1'),
(157, 52, '_order_subtotal', '0'),
(158, 52, '_order_total', '0'),
(159, 52, '_order_key', 'ORDER67EFBBE2EB849'),
(160, 52, '_payment_method', ''),
(161, 52, '_payment_method_title', ''),
(162, 52, '_user_ip_address', '::1'),
(163, 52, '_user_agent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36'),
(164, 52, '_order_version', '3.0.0'),
(165, 52, '_created_via', 'checkout'),
(166, 53, '_lp_regular_price', '2000000'),
(167, 53, '_lp_sale_price', '2000000'),
(168, 53, '_lp_price', '2000000'),
(169, 54, '_wp_attached_file', '2025/04/c.jpg'),
(170, 54, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:800;s:6:\"height\";i:451;s:4:\"file\";s:13:\"2025/04/c.jpg\";s:8:\"filesize\";i:61021;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(171, 53, '_edit_last', '1'),
(172, 53, '_thumbnail_id', '54'),
(173, 53, '_lp_duration', '10 week'),
(174, 53, '_lp_block_expire_duration', 'no'),
(175, 53, '_lp_block_finished', 'yes'),
(176, 53, '_lp_allow_course_repurchase', 'yes'),
(177, 53, '_lp_course_repurchase_option', 'reset'),
(178, 53, '_lp_level', 'intermediate'),
(179, 53, '_lp_students', '0'),
(180, 53, '_lp_max_students', '0'),
(181, 53, '_lp_retake_count', '0'),
(182, 53, '_lp_has_finish', 'yes'),
(183, 53, '_lp_featured', 'no'),
(184, 53, '_lp_featured_review', ''),
(185, 53, '_lp_external_link_buy_course', ''),
(186, 53, '_lp_offline_course', 'no'),
(187, 53, '_lp_offline_lesson_count', '10'),
(188, 53, '_lp_deliver_type', 'private_1_1'),
(189, 53, '_lp_address', ''),
(190, 53, '_lp_sale_start', ''),
(191, 53, '_lp_sale_end', ''),
(192, 53, '_lp_price_prefix', ''),
(193, 53, '_lp_price_suffix', ''),
(194, 53, '_lp_no_required_enroll', 'no'),
(195, 53, '_lp_requirements', 'a:0:{}'),
(196, 53, '_lp_target_audiences', 'a:0:{}'),
(197, 53, '_lp_key_features', 'a:0:{}'),
(198, 53, '_lp_faqs', 'a:0:{}'),
(199, 53, '_lp_course_result', 'evaluate_lesson'),
(200, 53, '_lp_passing_condition', '80'),
(201, 53, 'post_author', '1'),
(202, 53, '_edit_lock', '1743765834:1'),
(203, 57, '_order_currency', 'VND'),
(204, 57, '_prices_include_tax', 'no'),
(205, 57, '_user_id', '1'),
(206, 57, '_order_subtotal', '2000000'),
(207, 57, '_order_total', '2000000'),
(208, 57, '_order_key', 'ORDER67EFC0EB4CECF'),
(209, 57, '_payment_method', 'paypal'),
(210, 57, '_payment_method_title', 'PayPal'),
(211, 57, '_user_ip_address', '::1'),
(212, 57, '_user_agent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36'),
(213, 57, '_order_version', '3.0.0'),
(214, 57, '_created_via', 'checkout');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2025-03-28 01:31:27', '2025-03-28 01:31:27', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'trash', 'open', 'open', '', 'hello-world__trashed', '', '', '2025-03-28 02:10:15', '2025-03-28 02:10:15', '', 0, 'http://localhost/tintucedu/?p=1', 0, 'post', '', 1),
(2, 1, '2025-03-28 01:31:27', '2025-03-28 01:31:27', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost/tintucedu/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2025-03-28 01:31:27', '2025-03-28 01:31:27', '', 0, 'http://localhost/tintucedu/?page_id=2', 0, 'page', '', 0),
(3, 1, '2025-03-28 01:31:27', '2025-03-28 01:31:27', '<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Who we are</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://localhost/tintucedu.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Comments</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Media</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Cookies</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Embedded content from other websites</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Who we share your data with</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">How long we retain your data</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">What rights you have over your data</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Where your data is sent</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p>\n<!-- /wp:paragraph -->\n', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2025-03-28 01:31:27', '2025-03-28 01:31:27', '', 0, 'http://localhost/tintucedu/?page_id=3', 0, 'page', '', 0),
(4, 0, '2025-03-28 01:31:29', '2025-03-28 01:31:29', '<!-- wp:page-list /-->', 'Navigation', '', 'publish', 'closed', 'closed', '', 'navigation', '', '', '2025-03-28 01:31:29', '2025-03-28 01:31:29', '', 0, 'http://localhost/tintucedu/2025/03/28/navigation/', 0, 'wp_navigation', '', 0),
(9, 1, '2025-03-28 02:14:46', '2025-03-28 02:01:07', ' ', '', '', 'publish', 'closed', 'closed', '', '9', '', '', '2025-03-28 02:14:46', '2025-03-28 02:14:46', '', 0, 'http://localhost/tintucedu/?p=9', 2, 'nav_menu_item', '', 0),
(10, 1, '2025-03-28 02:14:46', '2025-03-28 02:01:07', ' ', '', '', 'publish', 'closed', 'closed', '', '10', '', '', '2025-03-28 02:14:46', '2025-03-28 02:14:46', '', 0, 'http://localhost/tintucedu/?p=10', 3, 'nav_menu_item', '', 0),
(11, 1, '2025-03-28 02:14:46', '2025-03-28 02:01:07', ' ', '', '', 'publish', 'closed', 'closed', '', '11', '', '', '2025-03-28 02:14:46', '2025-03-28 02:14:46', '', 0, 'http://localhost/tintucedu/?p=11', 4, 'nav_menu_item', '', 0),
(12, 1, '2025-03-28 02:14:46', '2025-03-28 02:01:07', ' ', '', '', 'publish', 'closed', 'closed', '', '12', '', '', '2025-03-28 02:14:46', '2025-03-28 02:14:46', '', 0, 'http://localhost/tintucedu/?p=12', 5, 'nav_menu_item', '', 0),
(13, 1, '2025-03-28 02:14:46', '2025-03-28 02:02:22', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2025-03-28 02:14:46', '2025-03-28 02:14:46', '', 0, 'http://localhost/tintucedu/?p=13', 1, 'nav_menu_item', '', 0),
(14, 1, '2025-03-28 02:06:55', '2025-03-28 02:06:55', '<!-- wp:paragraph -->\n<p>Trường Đại học Điện lực thông báo danh sách các sinh viên đủ điều kiện dự thi tốt nghiệp môn Khoa học Mác Lênin khóa D9 hệ cử nhân như sau:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>1. Danh sách sinh viên đủ ĐK dự thi tốt nghiệp khóa D9 hệ cử nhân –&nbsp;<strong><em><a href=\"https://epu.edu.vn/Uploads/files/D9%20Cu%20nhan_Thi%20TN%20mac-le.xlsx\">file đính kèm</a></em></strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>2. Sinh viên còn nợ học phí sẽ không được dự thi.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>3. Sinh viên có thắc mắc gì liên hệ cửa số 5 Phòng Đào tạo (theo giờ tiếp sinh viên) hoặc theo địa chỉ mail:&nbsp;<a href=\"mailto:diemdhcq@epu.edu.vn\" target=\"_blank\" rel=\"noreferrer noopener\">diemdhcq@epu.edu.vn</a></p>\n<!-- /wp:paragraph -->', 'Danh sách phòng thi TN môn KH Mác Leenin khóa Đ9 hệ Cử nhân', '', 'publish', 'open', 'open', '', 'danh-sach-phong-thi-tn-mon-kh-mac-leenin-khoa-d9-he-cu-nhan', '', '', '2025-03-28 02:11:27', '2025-03-28 02:11:27', '', 0, 'http://localhost/tintucedu/?p=14', 0, 'post', '', 0),
(15, 1, '2025-03-28 02:05:55', '2025-03-28 02:05:55', 'Trường Đại học Điện lực thông báo danh sách các sinh viên đủ điều kiện dự thi tốt nghiệp môn Khoa học Mác Lênin khóa D9 hệ cử nhân như sau:\n\n1. Danh sách sinh viên đủ ĐK dự thi tốt nghiệp khóa D9 hệ cử nhân – file đính kèm\n\n2. Sinh viên còn nợ học phí sẽ không được dự thi.\n\n3. Sinh viên có thắc mắc gì liên hệ cửa số 5 Phòng Đào tạo (theo giờ tiếp sinh viên) hoặc theo địa chỉ mail: diemdhcq@epu.edu.vn', 'thong bao', '', 'inherit', 'open', 'closed', '', 'thong-bao', '', '', '2025-03-28 02:06:27', '2025-03-28 02:06:27', '', 14, 'http://localhost/tintucedu/wp-content/uploads/2025/03/thong-bao.jpg', 0, 'attachment', 'image/jpeg', 0),
(16, 1, '2025-03-28 02:06:55', '2025-03-28 02:06:55', '', 'Danh sách phòng thi TN môn KH Mác Leenin khóa Đ9 hệ Cử nhân', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2025-03-28 02:06:55', '2025-03-28 02:06:55', '', 14, 'http://localhost/tintucedu/?p=16', 0, 'revision', '', 0),
(17, 1, '2025-03-28 02:10:13', '2025-03-28 02:10:13', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2025-03-28 02:10:13', '2025-03-28 02:10:13', '', 1, 'http://localhost/tintucedu/?p=17', 0, 'revision', '', 0),
(18, 1, '2025-03-28 02:11:25', '2025-03-28 02:11:25', '<!-- wp:paragraph -->\n<p>Trường Đại học Điện lực thông báo danh sách các sinh viên đủ điều kiện dự thi tốt nghiệp môn Khoa học Mác Lênin khóa D9 hệ cử nhân như sau:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>1. Danh sách sinh viên đủ ĐK dự thi tốt nghiệp khóa D9 hệ cử nhân –&nbsp;<strong><em><a href=\"https://epu.edu.vn/Uploads/files/D9%20Cu%20nhan_Thi%20TN%20mac-le.xlsx\">file đính kèm</a></em></strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>2. Sinh viên còn nợ học phí sẽ không được dự thi.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>3. Sinh viên có thắc mắc gì liên hệ cửa số 5 Phòng Đào tạo (theo giờ tiếp sinh viên) hoặc theo địa chỉ mail:&nbsp;<a href=\"mailto:diemdhcq@epu.edu.vn\" target=\"_blank\" rel=\"noreferrer noopener\">diemdhcq@epu.edu.vn</a></p>\n<!-- /wp:paragraph -->', 'Danh sách phòng thi TN môn KH Mác Leenin khóa Đ9 hệ Cử nhân', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2025-03-28 02:11:25', '2025-03-28 02:11:25', '', 14, 'http://localhost/tintucedu/?p=18', 0, 'revision', '', 0),
(19, 1, '2025-03-28 02:13:07', '2025-03-28 02:13:07', '<!-- wp:paragraph -->\n<p>Trường Đại học Điện lực thông báo Dánh sách các thí sinh đủ điều kiện dự thi Cao học đợt 1 năm 2018 như sauu:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Xem chi tiết Danh sách&nbsp;<strong><em><a href=\"https://epu.edu.vn/Uploads/files/DS%20Thi%20sinh%20Du%20DK%20Du%20Thi%20CH%20Dot%201.pdf\">Tại đây</a></em></strong></p>\n<!-- /wp:paragraph -->', 'Danh sách thí sinh đủ điều kiện dự thi Cao học đợt 1 năm 2018', '', 'publish', 'open', 'open', '', 'danh-sach-thi-sinh-du-dieu-kien-du-thi-cao-hoc-dot-1-nam-2018', '', '', '2025-03-28 02:13:09', '2025-03-28 02:13:09', '', 0, 'http://localhost/tintucedu/?p=19', 0, 'post', '', 0),
(20, 1, '2025-03-28 02:12:23', '2025-03-28 02:12:23', '', 'images (1)', '', 'inherit', 'open', 'closed', '', 'images-1', '', '', '2025-03-28 02:12:23', '2025-03-28 02:12:23', '', 19, 'http://localhost/tintucedu/wp-content/uploads/2025/03/images-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(21, 1, '2025-03-28 02:13:07', '2025-03-28 02:13:07', '<!-- wp:paragraph -->\n<p>Trường Đại học Điện lực thông báo Dánh sách các thí sinh đủ điều kiện dự thi Cao học đợt 1 năm 2018 như sauu:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Xem chi tiết Danh sách&nbsp;<strong><em><a href=\"https://epu.edu.vn/Uploads/files/DS%20Thi%20sinh%20Du%20DK%20Du%20Thi%20CH%20Dot%201.pdf\">Tại đây</a></em></strong></p>\n<!-- /wp:paragraph -->', 'Danh sách thí sinh đủ điều kiện dự thi Cao học đợt 1 năm 2018', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2025-03-28 02:13:07', '2025-03-28 02:13:07', '', 19, 'http://localhost/tintucedu/?p=21', 0, 'revision', '', 0),
(22, 1, '2025-03-28 02:14:46', '2025-03-28 02:14:46', ' ', '', '', 'publish', 'closed', 'closed', '', '22', '', '', '2025-03-28 02:14:46', '2025-03-28 02:14:46', '', 0, 'http://localhost/tintucedu/?p=22', 6, 'nav_menu_item', '', 0),
(23, 1, '2025-03-28 02:16:40', '2025-03-28 02:16:40', '<!-- wp:paragraph -->\n<p><em>Chiều 26/3/2025, Đảng ủy Trường Đại học Điện lực tổ chức Hội nghị thực hiện quy trình công tác nhân sự Cấp ủy&nbsp;Đại hội Đảng bộ lần thứ XXV (nhiệm kỳ 2025 - 2030).</em></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Dự Hội nghị, phía Đảng ủy Khối các trường Đại học, Cao đẳng Hà Nội có các đồng chí: Ông Trần Anh Tuấn - Uỷ viên Thường vụ, Trưởng ban tổ chức Đảng ủy Khối; bà Doãn Thị Thu Hằng - Phó chánh Văn phòng Đảng ủy Khối; bà Lê Hương Ly - Ủy viên ủy Ban kiểm tra Đảng ủy Khối.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Về phía Trường Đại học Điện lực có NGƯT.PGS.TS Vũ Đình Ngọ - Bí thư Đảng ủy, Chủ tịch Hội đồng trường; PGS.TS Đinh Văn Châu - Phó Bí thư Đảng ủy, Hiệu trưởng; PGS.TS. Nguyễn Lê Cường - Phó Hiệu trưởng; TS. Dương Trung Kiên - Phó Hiệu trưởng; cùng các đồng chí trong Ban Thường vụ, Ban Chấp hành; Bí thư, Phó Bí thư các chi bộ của các đơn vị của Nhà trường.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Phát biểu tại Hội nghị, NGƯT.PGS.TS Vũ Đình Ngọ quán triệt nội dung, mục đích, quy trình thủ tục, tầm quan trọng và ý nghĩa của Hội nghị. Đồng thời, báo cáo tổng kết công tác nhân sự Đại hội nhiệm kỳ 2020 - 2025; Phương hướng công tác nhân sự Đại hội nhiệm kỳ 2025 - 2030.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;“Đây là Hội nghị quan trọng về việc thực hiện quy trình công tác nhân sự Cấp ủy, Đại hội Đảng bộ lần thứ XXV, nhiệm kỳ 2025 - 2030. Qua đó nhằm phát huy tính công khai, dân chủ và trí tuệ tập thể trong việc lựa chọn nguồn cán bộ cho Đảng để bổ sung, xây dựng đội ngũ cán bộ lãnh đạo, quản lý của Nhà trường cho nhiệm kỳ 2025 - 2030,...” NGƯT.PGS.TS Vũ Đình Ngọ chia sẻ.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Tại Hội nghị, các đại biểu đã nêu cao tinh thần trách nhiệm, công tâm, khách quan, nghiên cứu kỹ tiêu chuẩn, điều kiện để lựa chọn, bỏ phiếu giới thiệu nhân sự tái cử và lần đầu chức danh Ủy viên Ban Chấp hành; Ủy viên Ban thường vụ; Bí thư Đảng ủy; Phó Bí thư Đảng ủy; Ủy viên ủy ban Kiểm tra Đảng ủy nhiệm kỳ 2025 - 2030 theo đúng quy định.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Thông qua Hội nghị này, nhằm bổ sung hoàn thiện quy trình công tác nhân sự Cấp ủy, Đại hội Đảng bộ lần thứ XXV, nhiệm kỳ 2025 - 2030, góp phần tạo sự chủ động về công tác cán bộ nhân sự Đảng trong nhiệm kỳ; bảo đảm tính kế thừa, phát triển, giữ vững đoàn kết nội bộ và sự ổn định của Nhà trường.</p>\n<!-- /wp:paragraph -->', 'Chuẩn bị chu đáo công tác nhân sự cho Đại hội Đảng bộ Nhà trường', '', 'publish', 'open', 'open', '', 'chuan-bi-chu-dao-cong-tac-nhan-su-cho-dai-hoi-dang-bo-nha-truong', '', '', '2025-03-28 02:16:42', '2025-03-28 02:16:42', '', 0, 'http://localhost/tintucedu/?p=23', 0, 'post', '', 0),
(24, 1, '2025-03-28 02:16:28', '2025-03-28 02:16:28', '', 'EPU_8440', '', 'inherit', 'open', 'closed', '', 'epu_8440', '', '', '2025-03-28 02:16:28', '2025-03-28 02:16:28', '', 23, 'http://localhost/tintucedu/wp-content/uploads/2025/03/EPU_8440.jpg', 0, 'attachment', 'image/jpeg', 0),
(25, 1, '2025-03-28 02:16:40', '2025-03-28 02:16:40', '<!-- wp:paragraph -->\n<p><em>Chiều 26/3/2025, Đảng ủy Trường Đại học Điện lực tổ chức Hội nghị thực hiện quy trình công tác nhân sự Cấp ủy&nbsp;Đại hội Đảng bộ lần thứ XXV (nhiệm kỳ 2025 - 2030).</em></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Dự Hội nghị, phía Đảng ủy Khối các trường Đại học, Cao đẳng Hà Nội có các đồng chí: Ông Trần Anh Tuấn - Uỷ viên Thường vụ, Trưởng ban tổ chức Đảng ủy Khối; bà Doãn Thị Thu Hằng - Phó chánh Văn phòng Đảng ủy Khối; bà Lê Hương Ly - Ủy viên ủy Ban kiểm tra Đảng ủy Khối.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Về phía Trường Đại học Điện lực có NGƯT.PGS.TS Vũ Đình Ngọ - Bí thư Đảng ủy, Chủ tịch Hội đồng trường; PGS.TS Đinh Văn Châu - Phó Bí thư Đảng ủy, Hiệu trưởng; PGS.TS. Nguyễn Lê Cường - Phó Hiệu trưởng; TS. Dương Trung Kiên - Phó Hiệu trưởng; cùng các đồng chí trong Ban Thường vụ, Ban Chấp hành; Bí thư, Phó Bí thư các chi bộ của các đơn vị của Nhà trường.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Phát biểu tại Hội nghị, NGƯT.PGS.TS Vũ Đình Ngọ quán triệt nội dung, mục đích, quy trình thủ tục, tầm quan trọng và ý nghĩa của Hội nghị. Đồng thời, báo cáo tổng kết công tác nhân sự Đại hội nhiệm kỳ 2020 - 2025; Phương hướng công tác nhân sự Đại hội nhiệm kỳ 2025 - 2030.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;“Đây là Hội nghị quan trọng về việc thực hiện quy trình công tác nhân sự Cấp ủy, Đại hội Đảng bộ lần thứ XXV, nhiệm kỳ 2025 - 2030. Qua đó nhằm phát huy tính công khai, dân chủ và trí tuệ tập thể trong việc lựa chọn nguồn cán bộ cho Đảng để bổ sung, xây dựng đội ngũ cán bộ lãnh đạo, quản lý của Nhà trường cho nhiệm kỳ 2025 - 2030,...” NGƯT.PGS.TS Vũ Đình Ngọ chia sẻ.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Tại Hội nghị, các đại biểu đã nêu cao tinh thần trách nhiệm, công tâm, khách quan, nghiên cứu kỹ tiêu chuẩn, điều kiện để lựa chọn, bỏ phiếu giới thiệu nhân sự tái cử và lần đầu chức danh Ủy viên Ban Chấp hành; Ủy viên Ban thường vụ; Bí thư Đảng ủy; Phó Bí thư Đảng ủy; Ủy viên ủy ban Kiểm tra Đảng ủy nhiệm kỳ 2025 - 2030 theo đúng quy định.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Thông qua Hội nghị này, nhằm bổ sung hoàn thiện quy trình công tác nhân sự Cấp ủy, Đại hội Đảng bộ lần thứ XXV, nhiệm kỳ 2025 - 2030, góp phần tạo sự chủ động về công tác cán bộ nhân sự Đảng trong nhiệm kỳ; bảo đảm tính kế thừa, phát triển, giữ vững đoàn kết nội bộ và sự ổn định của Nhà trường.</p>\n<!-- /wp:paragraph -->', 'Chuẩn bị chu đáo công tác nhân sự cho Đại hội Đảng bộ Nhà trường', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2025-03-28 02:16:40', '2025-03-28 02:16:40', '', 23, 'http://localhost/tintucedu/?p=25', 0, 'revision', '', 0),
(26, 1, '2025-03-28 02:23:07', '2025-03-28 02:23:07', '<!-- wp:paragraph -->\n<p>Trường Đại học Điện lực xin trân trọng kính mời Tân Thạc sĩ/Kỹ sư/Cử nhân và Quý vị phụ huynh/người thân của Tân Thạc sĩ/Kỹ sư/Cử nhân tham dự ngày lễ trao bằng tốt nghiệp vào sáng thứ sáu ngày 28/3/2025.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Để buổi lễ trao bằng tốt nghiệp của Trường Đại học Điện lực diễn ra trang trọng và ý nghĩa, Nhà trường kính gửi đến Quý Phụ huynh/người thân và các Tân Thạc sĩ/Kỹ sư/Cử nhân tham dự Lễ trao bằng tốt nghiệp một số thông tin quan trọng và hướng dẫn như sau\":</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;Thời gian: Từ 9h00 - 12h00, ngày 28/3/2025 (thứ 6)</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;Địa điểm: Sân Thanh niên, Cơ sở 1, Trường Đại học Điện lực</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;Đăng ký tham dự Lễ tốt nghiệp tại link:&nbsp;<strong><a href=\"https://docs.google.com/forms/d/e/1FAIpQLScFxBUHCeEnGk18mthGSWgI-0_sVVxDsJMXu4t1XWmPgNI-YA/viewform\">https://forms.gle/gCm8xj8fmNEdgeEa9</a></strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Chi tiết thông báo tổ chức Lễ tốt nghiệp đợt 1 năm 2025 và hướng dẫn tham dự cho Tân Thạc sĩ/Kỹ sư/Cử nhân xem tại link:&nbsp;<strong><a href=\"http://sinhvien.epu.edu.vn/NewsDetail.aspx?NewsID=3070\">http://sinhvien.epu.edu.vn/NewsDetail.aspx?NewsID=3070</a></strong></p>\n<!-- /wp:paragraph -->', 'Lễ tốt nghiệp và trao bằng tốt nghiệp đợt 1 năm 2025', '', 'publish', 'open', 'open', '', 'le-tot-nghiep-va-trao-bang-tot-nghiep-dot-1-nam-2025', '', '', '2025-03-28 02:23:09', '2025-03-28 02:23:09', '', 0, 'http://localhost/tintucedu/?p=26', 0, 'post', '', 0),
(27, 1, '2025-03-28 02:22:57', '2025-03-28 02:22:57', '', 'z6436673075515_68e6847ed7f5131fcc558295025c1dc1', '', 'inherit', 'open', 'closed', '', 'z6436673075515_68e6847ed7f5131fcc558295025c1dc1', '', '', '2025-03-28 02:22:57', '2025-03-28 02:22:57', '', 26, 'http://localhost/tintucedu/wp-content/uploads/2025/03/z6436673075515_68e6847ed7f5131fcc558295025c1dc1.jpg', 0, 'attachment', 'image/jpeg', 0),
(28, 1, '2025-03-28 02:23:07', '2025-03-28 02:23:07', '<!-- wp:paragraph -->\n<p>Trường Đại học Điện lực xin trân trọng kính mời Tân Thạc sĩ/Kỹ sư/Cử nhân và Quý vị phụ huynh/người thân của Tân Thạc sĩ/Kỹ sư/Cử nhân tham dự ngày lễ trao bằng tốt nghiệp vào sáng thứ sáu ngày 28/3/2025.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Để buổi lễ trao bằng tốt nghiệp của Trường Đại học Điện lực diễn ra trang trọng và ý nghĩa, Nhà trường kính gửi đến Quý Phụ huynh/người thân và các Tân Thạc sĩ/Kỹ sư/Cử nhân tham dự Lễ trao bằng tốt nghiệp một số thông tin quan trọng và hướng dẫn như sau\":</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;Thời gian: Từ 9h00 - 12h00, ngày 28/3/2025 (thứ 6)</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;Địa điểm: Sân Thanh niên, Cơ sở 1, Trường Đại học Điện lực</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;Đăng ký tham dự Lễ tốt nghiệp tại link:&nbsp;<strong><a href=\"https://docs.google.com/forms/d/e/1FAIpQLScFxBUHCeEnGk18mthGSWgI-0_sVVxDsJMXu4t1XWmPgNI-YA/viewform\">https://forms.gle/gCm8xj8fmNEdgeEa9</a></strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Chi tiết thông báo tổ chức Lễ tốt nghiệp đợt 1 năm 2025 và hướng dẫn tham dự cho Tân Thạc sĩ/Kỹ sư/Cử nhân xem tại link:&nbsp;<strong><a href=\"http://sinhvien.epu.edu.vn/NewsDetail.aspx?NewsID=3070\">http://sinhvien.epu.edu.vn/NewsDetail.aspx?NewsID=3070</a></strong></p>\n<!-- /wp:paragraph -->', 'Lễ tốt nghiệp và trao bằng tốt nghiệp đợt 1 năm 2025', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2025-03-28 02:23:07', '2025-03-28 02:23:07', '', 26, 'http://localhost/tintucedu/?p=28', 0, 'revision', '', 0),
(29, 1, '2025-03-28 02:25:37', '2025-03-28 02:25:37', '<!-- wp:paragraph -->\n<p><em>Vừa qua (21/3/2025), tại&nbsp;Trường Đại học Điện lực (EPU) diễn ra lễ&nbsp;ký kết hợp tác giữa Nhà trường&nbsp;với các doanh nghiệp trong công tác đào tạo và&nbsp;cung ứng nguồn nhân lực chất lượng cao.</em></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Dự chương trình về&nbsp;phía các doanh nghiệp có: Bà Vũ Thị Xuân, Tổng Giám đốc&nbsp;Công ty Cổ phần&nbsp;phát triển nghề nghiệp Tuổi trẻ Việt;&nbsp;Mr. Hirokazu Tanaka - Tổng Giám đốc&nbsp;Công ty CP Technobridge NKE; bà Trương Thị Nguyệt, Tổng Giám đốc&nbsp;Công ty CP Lotus Human Resources.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Nhóm Công tác về Điện và Năng lượng thuộc Diễn đàn Doanh nghiệp Việt Nam có ông John Rockhold, Trưởng nhóm Công tác Điện và Năng lượng.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Về phía Trường&nbsp;Đại diện Trường Đại học Điện lực có&nbsp;TS. Dương Trung Kiên – Phó Hiệu trưởng Nhà trường;&nbsp;Ths. Đỗ Hữu Chế - Giám đốc Trung tâm Truyền thông và Quan hệ Doanh nghiệp;&nbsp;TS. Nguyễn Đạt Minh – Trưởng khoa Quản lý công nghiệp và năng lượng;&nbsp;Ths. Chu Văn Tuấn – Quyền Giám đốc Trung tâm Ngoại ngữ;&nbsp;&nbsp;cùng đại&nbsp;diện cán bộ, giảng viên một số đơn vị.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image -->\n<figure class=\"wp-block-image\"><img src=\"https://lh7-rt.googleusercontent.com/docsz/AD_4nXcT24K8Z4aEHKjyF1HuZ8m8VA6c1j7h5Fy92RfRQmEtDPOWjBVix_b1wmwCZzGSPKX0A4blhBsXyNmJm-iCwG7EW-TaDn2s48OwgCbcXQina1EcqjA1Ub5RrXnBvSz9doBgjn8vyA?key=fKQJm8HDt4tBe727O_QarXFf\" alt=\"\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p><em>TS. Dương Trung Kiên phát biểu tại Lễ ký kết.</em></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Gửi lời cảm ơn tới các đối tác là doanh nghiệp, TS. Dương Trung Kiên - Phó Hiệu trưởng Trường Đại học Điện lực&nbsp;chia sẻ, việc hợp tác với doanh nghiệp không chỉ mang lại lợi ích trực tiếp cho sinh viên mà còn có ý nghĩa to lớn đối với Nhà trường.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>\"Sự kiện hôm nay là minh chứng rõ ràng cho mối quan hệ hợp tác chặt chẽ giữa các doanh nghiệp và Trường Đại học Điện lực nhằm hướng tới mục tiêu tạo ra những giá trị bền vững cho xã hội”, TS Dương Trung Kiên nhấn mạnh.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Đồng thời, tin tưởng với sự hợp tác của các doanh nghiệp sẽ góp phần hỗ trợ cho người học nâng cao chất lượng học tập, phát triển toàn diện và chuẩn bị hành trang tốt nhất cho tương lai sau khi ra trường.&nbsp;&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>TS. Dương Trung Kiên cũng&nbsp;thông tin về&nbsp;tiềm năng phát triển chương trình hợp tác giữa các doanh nghiệp trong các lĩnh vực đào tạo (kỹ thuật, điện, cơ khí...) có sự đồng thuận đào tạo giữa các trường Đại học tại Nhật Bản, Đài Loan và đáp ứng nhu cầu chuyên môn từ các doanh nghiệp quốc tế tuyển dụng việc làm.&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Tại buổi lễ, đại diện các doanh nghiệp ký biên bản ghi nhớ&nbsp;hợp tác với Trường Đại học Điện lực trong công tác đào tạo và cung ứng nguồn nhân lực chất lượng cao bày tỏ mong muốn đồng hành cùng Nhà trường&nbsp;triển khai các chương trình hỗ trợ sinh viên thực tập, nhận học bổng và mang lại cơ hội việc làm cho sinh viên. Đồng thời, các doanh nghiệp&nbsp;khẳng định năng lực chuyên môn học tập,&nbsp;làm việc tại môi trường trong nước và quốc tế cho&nbsp;sinh viên.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Một số hình ảnh tại Lễ ký kết:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image -->\n<figure class=\"wp-block-image\"><img src=\"https://lh7-rt.googleusercontent.com/docsz/AD_4nXdOLq1zGbZqXVny1U4Vh3G19b6k6HRG9A8Cp5u5sXHwtMcm89ZCOO7C9-UWaWGN9Le1CVg7wtthT4Gru-bwC6nmMa2J-qG_iRV69LTRnBimwrPC5sH0UO6JhrvAYqExlonZg94wRw?key=fKQJm8HDt4tBe727O_QarXFf\" alt=\"\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image -->\n<figure class=\"wp-block-image\"><img src=\"https://lh7-rt.googleusercontent.com/docsz/AD_4nXdnvYOuAa1FfOnQHMr5i33jE-lucSD_-M7VeLVX2rbleAv2awyOYKYrcA18Bs5QMjDGnax1Yp1AjF3iyKLBf0NYan1dgBn-rmetTDZ2SUDjX7RMEOVEF3ebSVdhWxxbRSJbrwaeuQ?key=fKQJm8HDt4tBe727O_QarXFf\" alt=\"\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image -->\n<figure class=\"wp-block-image\"><img src=\"https://lh7-rt.googleusercontent.com/docsz/AD_4nXd1BFod40EgXfCYejGnhch3Bx5sjWEsLV7O3U8xeP5sfHA8L4yz0j8PzUjy_PUdffDn_H_XLs_ZxieO2wx2jNFX6WnV2vNTvl_pRpa3YWBgEjqQP31hVm1ZRFzo_vvRCSy8ukolgA?key=fKQJm8HDt4tBe727O_QarXFf\" alt=\"\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image -->\n<figure class=\"wp-block-image\"><img src=\"https://lh7-rt.googleusercontent.com/docsz/AD_4nXdKmt6RN4krSwAdqTKwwQEy8N2D6V4bmqc-RV0r8yRKvAeb358p4qtaLcOEOoLEhGXCdK75sTJ7KRXYXbhhQzpgtB6Jo8E3KTbNab5kev0kVoytGHHek1-03QfHVqIPviFE0IcIfA?key=fKQJm8HDt4tBe727O_QarXFf\" alt=\"\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image -->\n<figure class=\"wp-block-image\"><img src=\"https://lh7-rt.googleusercontent.com/docsz/AD_4nXc7xDCVDP1yj8-QwrwkmX6e4hs1cdQFUxjw-BrrgwUTYcRbJ96z47n0Rus5X-cwsu9zCaD7_Ohc8gBolAg7QY1oIiifgK8o2bKYnvp-bb-ZrigsGxekLX2XEb4oiX5rc7msWPY8Eg?key=fKQJm8HDt4tBe727O_QarXFf\" alt=\"\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Buổi lễ ký kết biên bản ghi nhớ hợp tác giữa Trường Đại học Điện lực và các&nbsp;doanh nghiệp mở ra nhiều&nbsp;cơ hội học tập và việc làm cho sinh viên EPU&nbsp;trong và ngoài nước.&nbsp;Đồng thời&nbsp;gia tăng cơ hội nghiên cứu và ứng dụng công nghệ hiện đại cho sinh viên. Đây cũng&nbsp;là cầu nối cho sinh viên tiếp cận môi trường làm việc chuyên nghiệp và đóng góp vai trò của Nhà trường vào sự phát triển của hội nhập quốc tế.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image -->\n<figure class=\"wp-block-image\"><img src=\"https://lh7-rt.googleusercontent.com/docsz/AD_4nXdLxnl1npGW07uMu3KGmyn3tyaTDJJNhUtBr47V1j_PMt_yFx4x9Ql7uvwEcENMD-h71N3Xq3rOmPe1kZ2VD4C0ihUx_bw83_O93ZCDvneLzD-1xsIoNQmxvN-B0ZvkRYTnzBD9?key=fKQJm8HDt4tBe727O_QarXFf\" alt=\"\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p><em>Các đại biểu chụp ảnh lưu niệm tại Lễ ký kết.</em></p>\n<!-- /wp:paragraph -->', 'EPU hợp tác với doanh nghiệp cung ứng nguồn nhân lực chất lượng cao ', '', 'publish', 'open', 'open', '', 'epu-hop-tac-voi-doanh-nghiep-cung-ung-nguon-nhan-luc-chat-luong-cao', '', '', '2025-03-28 02:25:39', '2025-03-28 02:25:39', '', 0, 'http://localhost/tintucedu/?p=29', 0, 'post', '', 0),
(30, 1, '2025-03-28 02:23:57', '2025-03-28 02:23:57', '', 'epu68', '', 'inherit', 'open', 'closed', '', 'epu68', '', '', '2025-03-28 02:23:57', '2025-03-28 02:23:57', '', 29, 'http://localhost/tintucedu/wp-content/uploads/2025/03/epu68.jpg', 0, 'attachment', 'image/jpeg', 0),
(31, 1, '2025-03-28 02:25:37', '2025-03-28 02:25:37', '<!-- wp:paragraph -->\n<p><em>Vừa qua (21/3/2025), tại&nbsp;Trường Đại học Điện lực (EPU) diễn ra lễ&nbsp;ký kết hợp tác giữa Nhà trường&nbsp;với các doanh nghiệp trong công tác đào tạo và&nbsp;cung ứng nguồn nhân lực chất lượng cao.</em></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Dự chương trình về&nbsp;phía các doanh nghiệp có: Bà Vũ Thị Xuân, Tổng Giám đốc&nbsp;Công ty Cổ phần&nbsp;phát triển nghề nghiệp Tuổi trẻ Việt;&nbsp;Mr. Hirokazu Tanaka - Tổng Giám đốc&nbsp;Công ty CP Technobridge NKE; bà Trương Thị Nguyệt, Tổng Giám đốc&nbsp;Công ty CP Lotus Human Resources.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Nhóm Công tác về Điện và Năng lượng thuộc Diễn đàn Doanh nghiệp Việt Nam có ông John Rockhold, Trưởng nhóm Công tác Điện và Năng lượng.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Về phía Trường&nbsp;Đại diện Trường Đại học Điện lực có&nbsp;TS. Dương Trung Kiên – Phó Hiệu trưởng Nhà trường;&nbsp;Ths. Đỗ Hữu Chế - Giám đốc Trung tâm Truyền thông và Quan hệ Doanh nghiệp;&nbsp;TS. Nguyễn Đạt Minh – Trưởng khoa Quản lý công nghiệp và năng lượng;&nbsp;Ths. Chu Văn Tuấn – Quyền Giám đốc Trung tâm Ngoại ngữ;&nbsp;&nbsp;cùng đại&nbsp;diện cán bộ, giảng viên một số đơn vị.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image -->\n<figure class=\"wp-block-image\"><img src=\"https://lh7-rt.googleusercontent.com/docsz/AD_4nXcT24K8Z4aEHKjyF1HuZ8m8VA6c1j7h5Fy92RfRQmEtDPOWjBVix_b1wmwCZzGSPKX0A4blhBsXyNmJm-iCwG7EW-TaDn2s48OwgCbcXQina1EcqjA1Ub5RrXnBvSz9doBgjn8vyA?key=fKQJm8HDt4tBe727O_QarXFf\" alt=\"\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p><em>TS. Dương Trung Kiên phát biểu tại Lễ ký kết.</em></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Gửi lời cảm ơn tới các đối tác là doanh nghiệp, TS. Dương Trung Kiên - Phó Hiệu trưởng Trường Đại học Điện lực&nbsp;chia sẻ, việc hợp tác với doanh nghiệp không chỉ mang lại lợi ích trực tiếp cho sinh viên mà còn có ý nghĩa to lớn đối với Nhà trường.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>\"Sự kiện hôm nay là minh chứng rõ ràng cho mối quan hệ hợp tác chặt chẽ giữa các doanh nghiệp và Trường Đại học Điện lực nhằm hướng tới mục tiêu tạo ra những giá trị bền vững cho xã hội”, TS Dương Trung Kiên nhấn mạnh.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Đồng thời, tin tưởng với sự hợp tác của các doanh nghiệp sẽ góp phần hỗ trợ cho người học nâng cao chất lượng học tập, phát triển toàn diện và chuẩn bị hành trang tốt nhất cho tương lai sau khi ra trường.&nbsp;&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>TS. Dương Trung Kiên cũng&nbsp;thông tin về&nbsp;tiềm năng phát triển chương trình hợp tác giữa các doanh nghiệp trong các lĩnh vực đào tạo (kỹ thuật, điện, cơ khí...) có sự đồng thuận đào tạo giữa các trường Đại học tại Nhật Bản, Đài Loan và đáp ứng nhu cầu chuyên môn từ các doanh nghiệp quốc tế tuyển dụng việc làm.&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Tại buổi lễ, đại diện các doanh nghiệp ký biên bản ghi nhớ&nbsp;hợp tác với Trường Đại học Điện lực trong công tác đào tạo và cung ứng nguồn nhân lực chất lượng cao bày tỏ mong muốn đồng hành cùng Nhà trường&nbsp;triển khai các chương trình hỗ trợ sinh viên thực tập, nhận học bổng và mang lại cơ hội việc làm cho sinh viên. Đồng thời, các doanh nghiệp&nbsp;khẳng định năng lực chuyên môn học tập,&nbsp;làm việc tại môi trường trong nước và quốc tế cho&nbsp;sinh viên.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Một số hình ảnh tại Lễ ký kết:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image -->\n<figure class=\"wp-block-image\"><img src=\"https://lh7-rt.googleusercontent.com/docsz/AD_4nXdOLq1zGbZqXVny1U4Vh3G19b6k6HRG9A8Cp5u5sXHwtMcm89ZCOO7C9-UWaWGN9Le1CVg7wtthT4Gru-bwC6nmMa2J-qG_iRV69LTRnBimwrPC5sH0UO6JhrvAYqExlonZg94wRw?key=fKQJm8HDt4tBe727O_QarXFf\" alt=\"\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image -->\n<figure class=\"wp-block-image\"><img src=\"https://lh7-rt.googleusercontent.com/docsz/AD_4nXdnvYOuAa1FfOnQHMr5i33jE-lucSD_-M7VeLVX2rbleAv2awyOYKYrcA18Bs5QMjDGnax1Yp1AjF3iyKLBf0NYan1dgBn-rmetTDZ2SUDjX7RMEOVEF3ebSVdhWxxbRSJbrwaeuQ?key=fKQJm8HDt4tBe727O_QarXFf\" alt=\"\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image -->\n<figure class=\"wp-block-image\"><img src=\"https://lh7-rt.googleusercontent.com/docsz/AD_4nXd1BFod40EgXfCYejGnhch3Bx5sjWEsLV7O3U8xeP5sfHA8L4yz0j8PzUjy_PUdffDn_H_XLs_ZxieO2wx2jNFX6WnV2vNTvl_pRpa3YWBgEjqQP31hVm1ZRFzo_vvRCSy8ukolgA?key=fKQJm8HDt4tBe727O_QarXFf\" alt=\"\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image -->\n<figure class=\"wp-block-image\"><img src=\"https://lh7-rt.googleusercontent.com/docsz/AD_4nXdKmt6RN4krSwAdqTKwwQEy8N2D6V4bmqc-RV0r8yRKvAeb358p4qtaLcOEOoLEhGXCdK75sTJ7KRXYXbhhQzpgtB6Jo8E3KTbNab5kev0kVoytGHHek1-03QfHVqIPviFE0IcIfA?key=fKQJm8HDt4tBe727O_QarXFf\" alt=\"\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image -->\n<figure class=\"wp-block-image\"><img src=\"https://lh7-rt.googleusercontent.com/docsz/AD_4nXc7xDCVDP1yj8-QwrwkmX6e4hs1cdQFUxjw-BrrgwUTYcRbJ96z47n0Rus5X-cwsu9zCaD7_Ohc8gBolAg7QY1oIiifgK8o2bKYnvp-bb-ZrigsGxekLX2XEb4oiX5rc7msWPY8Eg?key=fKQJm8HDt4tBe727O_QarXFf\" alt=\"\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Buổi lễ ký kết biên bản ghi nhớ hợp tác giữa Trường Đại học Điện lực và các&nbsp;doanh nghiệp mở ra nhiều&nbsp;cơ hội học tập và việc làm cho sinh viên EPU&nbsp;trong và ngoài nước.&nbsp;Đồng thời&nbsp;gia tăng cơ hội nghiên cứu và ứng dụng công nghệ hiện đại cho sinh viên. Đây cũng&nbsp;là cầu nối cho sinh viên tiếp cận môi trường làm việc chuyên nghiệp và đóng góp vai trò của Nhà trường vào sự phát triển của hội nhập quốc tế.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image -->\n<figure class=\"wp-block-image\"><img src=\"https://lh7-rt.googleusercontent.com/docsz/AD_4nXdLxnl1npGW07uMu3KGmyn3tyaTDJJNhUtBr47V1j_PMt_yFx4x9Ql7uvwEcENMD-h71N3Xq3rOmPe1kZ2VD4C0ihUx_bw83_O93ZCDvneLzD-1xsIoNQmxvN-B0ZvkRYTnzBD9?key=fKQJm8HDt4tBe727O_QarXFf\" alt=\"\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p><em>Các đại biểu chụp ảnh lưu niệm tại Lễ ký kết.</em></p>\n<!-- /wp:paragraph -->', 'EPU hợp tác với doanh nghiệp cung ứng nguồn nhân lực chất lượng cao ', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2025-03-28 02:25:37', '2025-03-28 02:25:37', '', 29, 'http://localhost/tintucedu/?p=31', 0, 'revision', '', 0),
(32, 1, '2025-03-28 02:28:27', '2025-03-28 02:28:27', '<!-- wp:paragraph -->\n<p><strong>Tọa đàm \"Định hướng phát triển Trường Đại học Điện lực đến năm 2030, tầm nhìn đến năm 2045\"</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><em>Ngày 21/3/2025, Trường Đại học Điện lực tổ chức Tọa đàm với chủ đề \"Định hướng phát triển Trường Đại học Điện lực đến năm 2030, tầm nhìn đến năm 2045\".</em></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Tọa đàm là diễn đàn tổng kết, đánh giá các kết quả đạt được giai đoạn vừa qua của Trường Đại học Điện lực trước xu thế giáo dục thời đại mới, và làm rõ hơn nội dung tổng thể, mục tiêu cụ thể trong các lĩnh vực hoạt động. Qua đó, lắng nghe những đóng góp ý kiến xác đáng để triển khai định hướng phát triển Trường Đại học Điện lực đến năm 2030, tầm nhìn đến năm 2045.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Tham dự Tọa đàm&nbsp;về phía khách mời có NGND.GS.TS. Nguyễn Hữu Đức – Nguyên Phó Giám đốc Đại học Quốc gia Hà Nội. Về phía Trường Đại học Điện lực có NGƯT.PGS.TS Vũ Đình Ngọ – Bí thư Đảng ủy, Chủ tịch Hội đồng trường; PGS.TS Đinh Văn Châu – Phó Bí thư Đảng ủy, Hiệu trưởng Nhà trường; cùng các đồng chí trong BCH Đảng bộ; thành viên Hội đồng trường; thành viên Ban Giám hiệu; Bí thư, Phó Bí thư các Chi bộ; Trưởng, Phó các đơn vị trực thuộc Trường; các chuyên gia, các nhà khoa học, các giảng viên có học hàm Giáo sư, Phó Giáo sư; Tổ soạn thảo xây dựng Tọa đàm.&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image -->\n<figure class=\"wp-block-image\"><img src=\"https://lh7-rt.googleusercontent.com/docsz/AD_4nXe8SUkwtwXUe73FJ2xnUc31yEPQGLAFEDi_qziwm8Dhil3c689Dtz8MYpKUrl94TERA8Cy9yIFmSwX5ser9mABHblP0ijTGZYBEegJM4TTMjt5zKHumGxZVvUBBrgPrQ5az9zUNow?key=jNj_ugcM4ekIdfFW8UsBcBr6\" alt=\"\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p><em>NGƯT.PGS.TS Vũ Đình Ngọ – Bí thư Đảng ủy, Chủ tịch Hội đồng trường phát biểu khai mạc Tọa đàm.</em></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Phát biểu khai mạc Toạ đàm, NGƯT.PGS.TS Vũ Đình Ngọ nhấn mạnh: “Trong bối cảnh cuộc Cách mạng công nghiệp lần thứ tư đang diễn ra mạnh mẽ, sự chuyển dịch cơ cấu năng lượng và xu hướng phát triển giáo dục đại học đổi mới sáng tạo, Trường Đại học Điện lực cần xác định chiến lược phát triển rõ ràng, nhằm nâng cao chất lượng đào tạo, đẩy mạnh nghiên cứu khoa học, hợp tác quốc tế, đáp ứng yêu cầu phát triển kinh tế - xã hội của đất nước trong thời gian tới, phù hợp các Nghị Quyết của Đảng, các Quy định của Nhà nước và với xu thế giáo dục hiện đại…”.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Toạ đàm tập trung vào thảo luận định hướng phát triển trong bối cảnh nhà Trường đang quyết tâm thực hiện có hiệu quả Nghị Quyết 29-NQ/TW ngày 4/11/2023&nbsp; về đổi mới căn bản, toàn diện giáo dục và đào tạo, đáp ứng yêu cầu công nghiệp hóa, hiện đại hóa trong điều kiện kinh tế thị trường định hướng xã hội chủ nghĩa và hội nhập quốc tế; Nghị quyết 19-NQ/TW ngày 25/10/2017 về tiếp tục đổi mới hệ thống tổ chức và quản lý, nâng cao chất lượng và hiệu quả hoạt động của các đơn vị sự nghiệp công lập”; và đặc biệt Nghị quyết 57-NQ/TW ngày 22/12/2024 Bộ Chính trị về đột phá phát triển khoa học, công nghệ, đổi mới sáng tạo và chuyển đổi số quốc gia,… NGƯT.PGS.TS Vũ Đình Ngọ cũng bày tỏ mong muốn lắng nghe các ý kiến đóng góp tâm huyết từ các chuyên gia, nhà khoa học để xây dựng các giải pháp thiết thực và hiệu quả phát triển trường Đại học Điện lực trong thời gian tới.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image -->\n<figure class=\"wp-block-image\"><img src=\"https://lh7-rt.googleusercontent.com/docsz/AD_4nXfY47VO3iBOL9eEAjBX-EVR0fMDmrUmPU8Jx_LEB0sjeWu961rAjiaUpZEDI6nNuOCL0WzAPVCDvUiFcIO1eRK-zik59aBHLZ4BJK_QSrs7VvwMWazDjECBxLFWMWmw0I-cnl5a4Q?key=jNj_ugcM4ekIdfFW8UsBcBr6\" alt=\"\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p><em>PGS.TS Đinh Văn Châu – Phó Bí thư Đảng ủy, Hiệu trưởng Nhà trường báo cáo tại Hội nghị.</em></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>Định hướng phát triển đến 2030, tầm nhìn 2045 là cơ sở cho toàn bộ hoạt động của Trường</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Trong bài phát biểu của mình PGS.TS Đinh Văn Châu nêu một số mục tiêu phát triển của Trường, cụ thể: “Đến năm 2030, Trường Đại học Điện lực đặt mục tiêu trở thành trường đại học đa ngành theo định hướng nghiên cứu ứng dụng và đổi mới sáng tạo, tự chủ bền vững, có uy tín trong nước và quốc tế; trung tấm xuất sắc về công nghệ và kỹ thuật năng lượng; kiến tạo động lực phát triển mới cho ngành Công thương và đất nước thông qua đào tạo nguồn nhân lực có năng lực khởi nghiệp, nghiên cứu và chuyển giao tri thức, gắn kết và phục vụ cộng đồng. Đến năm 2045, Trường hướng tới trở thành đại học đổi mới sáng tạo,&nbsp;nằm trong nhóm các trường đại học hàng đầu châu Á”.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Tại Tọa đàm, PGS.TS Đinh Văn Châu cũng bày tỏ lòng cảm ơn sâu sắc tới các đại biểu đã tham dự và đóng góp những ý kiến tâm huyết, sâu sắc cho sự phát triển của Nhà trường. Trên cơ sở những ý kiến quý báu tại buổi Hội thảo, Ban soạn thảo sẽ tiếp tục nghiên cứu, hoàn thiện định hướng, xây dựng chiến lược và có các giải pháp triển khai mạnh mẽ các định hướng phát triển của Trường trong giai đoạn tới.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Phát biểu tổng kết tọa đàm, NGƯT.PGS.TS Vũ Đình Ngọ nhấn mạnh ý nghĩa quan trọng của buổi tọa đàm trong việc xác định những định hướng chiến lược nhằm đưa Nhà trường phát triển vững mạnh trong giai đoạn tới. Đồng thời khẳng định, những ý kiến đóng góp sâu sắc từ các chuyên gia, nhà khoa học sẽ là cơ sở quan trọng để hoàn thiện định hướng phát triển trường Đại học Điện lực đến năm 2030, tầm nhìn 2045.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;Một số hình ảnh tại Tọa đàm:&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image -->\n<figure class=\"wp-block-image\"><img src=\"https://lh7-rt.googleusercontent.com/docsz/AD_4nXffzfTG6q5XuGbAzIAlp0CJcGDOGy1ie53RJWEuhBMBan53NvOxfmRAlBYad9g2bO7UKFSZMJ7_-EeHZTHcXvNi-C5AiNnsTABytumZDZAwfJjCdgk5WFsM3xDGCPWxnarBPB0p?key=jNj_ugcM4ekIdfFW8UsBcBr6\" alt=\"\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p><em>NGƯT.PGS.TS Vũ Đình Ngọ – Bí thư Đảng ủy, Chủ tịch Hội đồng trường và PGS.TS Đinh Văn Châu – Phó Bí thư Đảng ủy, Hiệu trưởng Nhà trường chủ trì buổi Tọa đàm.</em></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image -->\n<figure class=\"wp-block-image\"><img src=\"https://lh7-rt.googleusercontent.com/docsz/AD_4nXda7Z6heVusQKNsDp1k2GhcVCkcg7JBrQVkvyE8ilsz_MeMC6YtVjyVW0M33U8O2CWhjwMZlGdCEQnlMr-f1bD-F4JJecgdLhOktWUQXydIQhFtikU-kf7Zws7SgFmDa9urSyOIFw?key=jNj_ugcM4ekIdfFW8UsBcBr6\" alt=\"\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image -->\n<figure class=\"wp-block-image\"><img src=\"https://lh7-rt.googleusercontent.com/docsz/AD_4nXfzppOf3QiwSt5U5xru9j6Vq1Ojsw4Bt3rh7r6i73YeIQuhrBexcKSEwID22eXKtpC4eomPFq-NEIIhcNKO4b33XYe4yFfsYJfci8DKEtgub8aP7Ex6s0LYzUbg09hCDS2TbSxv?key=jNj_ugcM4ekIdfFW8UsBcBr6\" alt=\"\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p><em>Toàn cảnh buổi Tọa đàm.</em></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image -->\n<figure class=\"wp-block-image\"><img src=\"https://lh7-rt.googleusercontent.com/docsz/AD_4nXf08CORNeDjv-MIaSM6mpTdAimmr5ePTzc1528xma00cpR5oaZmALGNceKWXgQXVOJx8Gh_raJ0JdZ_G-TOpPXQ3T1GIrEAabWRSLAoBsUC_x01IMrcVNhqtMbqISTdX-z94MKNvQ?key=jNj_ugcM4ekIdfFW8UsBcBr6\" alt=\"\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image -->\n<figure class=\"wp-block-image\"><img src=\"https://lh7-rt.googleusercontent.com/docsz/AD_4nXdqQG_PfYedNVBNoODlq2yjMy9fFZvjudp24ctR9mQ8PYyeoOyYPyzVi1BZH2ZF9HVlcIAtCQMByrsFOG8Ls9CD4v71PYQn-OObTf1W1Fgn1czh4RZ1CCr1VoYAVe9DB7o9goKa?key=jNj_ugcM4ekIdfFW8UsBcBr6\" alt=\"\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p><em>Các đại biểu đóng góp nhiều ý kiến thiết thực cho định hướng chiến lược phát triển của Nhà trường.</em></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image -->\n<figure class=\"wp-block-image\"><img src=\"https://lh7-rt.googleusercontent.com/docsz/AD_4nXczUZUhVGA-9PD5_5TpqOK87kV7kGmpwzSqlh5WMSEHkbPEic27uEWlkrm1wKwtxlh4PFnwVIZXb90T42Vtopl_VficdoK4vPi1HTuXnnH5N8K1EDVJtXluVBUb5LhBqOK-QTpD?key=jNj_ugcM4ekIdfFW8UsBcBr6\" alt=\"\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p><em>Các đại biểu chụp ảnh lưu niệm tại Tọa đàm.</em></p>\n<!-- /wp:paragraph -->', 'Tọa đàm \"Định hướng phát triển Trường Đại học Điện lực đến năm 2030, tầm nhìn đến năm 2045\"', '', 'publish', 'open', 'open', '', 'toa-dam-dinh-huong-phat-trien-truong-dai-hoc-dien-luc-den-nam-2030-tam-nhin-den-nam-2045', '', '', '2025-03-28 02:28:29', '2025-03-28 02:28:29', '', 0, 'http://localhost/tintucedu/?p=32', 0, 'post', '', 0),
(33, 1, '2025-03-28 02:28:15', '2025-03-28 02:28:15', '', 'TD', '', 'inherit', 'open', 'closed', '', 'td', '', '', '2025-03-28 02:28:15', '2025-03-28 02:28:15', '', 32, 'http://localhost/tintucedu/wp-content/uploads/2025/03/TD.jpg', 0, 'attachment', 'image/jpeg', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(34, 1, '2025-03-28 02:28:27', '2025-03-28 02:28:27', '<!-- wp:paragraph -->\n<p><strong>Tọa đàm \"Định hướng phát triển Trường Đại học Điện lực đến năm 2030, tầm nhìn đến năm 2045\"</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><em>Ngày 21/3/2025, Trường Đại học Điện lực tổ chức Tọa đàm với chủ đề \"Định hướng phát triển Trường Đại học Điện lực đến năm 2030, tầm nhìn đến năm 2045\".</em></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Tọa đàm là diễn đàn tổng kết, đánh giá các kết quả đạt được giai đoạn vừa qua của Trường Đại học Điện lực trước xu thế giáo dục thời đại mới, và làm rõ hơn nội dung tổng thể, mục tiêu cụ thể trong các lĩnh vực hoạt động. Qua đó, lắng nghe những đóng góp ý kiến xác đáng để triển khai định hướng phát triển Trường Đại học Điện lực đến năm 2030, tầm nhìn đến năm 2045.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Tham dự Tọa đàm&nbsp;về phía khách mời có NGND.GS.TS. Nguyễn Hữu Đức – Nguyên Phó Giám đốc Đại học Quốc gia Hà Nội. Về phía Trường Đại học Điện lực có NGƯT.PGS.TS Vũ Đình Ngọ – Bí thư Đảng ủy, Chủ tịch Hội đồng trường; PGS.TS Đinh Văn Châu – Phó Bí thư Đảng ủy, Hiệu trưởng Nhà trường; cùng các đồng chí trong BCH Đảng bộ; thành viên Hội đồng trường; thành viên Ban Giám hiệu; Bí thư, Phó Bí thư các Chi bộ; Trưởng, Phó các đơn vị trực thuộc Trường; các chuyên gia, các nhà khoa học, các giảng viên có học hàm Giáo sư, Phó Giáo sư; Tổ soạn thảo xây dựng Tọa đàm.&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image -->\n<figure class=\"wp-block-image\"><img src=\"https://lh7-rt.googleusercontent.com/docsz/AD_4nXe8SUkwtwXUe73FJ2xnUc31yEPQGLAFEDi_qziwm8Dhil3c689Dtz8MYpKUrl94TERA8Cy9yIFmSwX5ser9mABHblP0ijTGZYBEegJM4TTMjt5zKHumGxZVvUBBrgPrQ5az9zUNow?key=jNj_ugcM4ekIdfFW8UsBcBr6\" alt=\"\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p><em>NGƯT.PGS.TS Vũ Đình Ngọ – Bí thư Đảng ủy, Chủ tịch Hội đồng trường phát biểu khai mạc Tọa đàm.</em></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Phát biểu khai mạc Toạ đàm, NGƯT.PGS.TS Vũ Đình Ngọ nhấn mạnh: “Trong bối cảnh cuộc Cách mạng công nghiệp lần thứ tư đang diễn ra mạnh mẽ, sự chuyển dịch cơ cấu năng lượng và xu hướng phát triển giáo dục đại học đổi mới sáng tạo, Trường Đại học Điện lực cần xác định chiến lược phát triển rõ ràng, nhằm nâng cao chất lượng đào tạo, đẩy mạnh nghiên cứu khoa học, hợp tác quốc tế, đáp ứng yêu cầu phát triển kinh tế - xã hội của đất nước trong thời gian tới, phù hợp các Nghị Quyết của Đảng, các Quy định của Nhà nước và với xu thế giáo dục hiện đại…”.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Toạ đàm tập trung vào thảo luận định hướng phát triển trong bối cảnh nhà Trường đang quyết tâm thực hiện có hiệu quả Nghị Quyết 29-NQ/TW ngày 4/11/2023&nbsp; về đổi mới căn bản, toàn diện giáo dục và đào tạo, đáp ứng yêu cầu công nghiệp hóa, hiện đại hóa trong điều kiện kinh tế thị trường định hướng xã hội chủ nghĩa và hội nhập quốc tế; Nghị quyết 19-NQ/TW ngày 25/10/2017 về tiếp tục đổi mới hệ thống tổ chức và quản lý, nâng cao chất lượng và hiệu quả hoạt động của các đơn vị sự nghiệp công lập”; và đặc biệt Nghị quyết 57-NQ/TW ngày 22/12/2024 Bộ Chính trị về đột phá phát triển khoa học, công nghệ, đổi mới sáng tạo và chuyển đổi số quốc gia,… NGƯT.PGS.TS Vũ Đình Ngọ cũng bày tỏ mong muốn lắng nghe các ý kiến đóng góp tâm huyết từ các chuyên gia, nhà khoa học để xây dựng các giải pháp thiết thực và hiệu quả phát triển trường Đại học Điện lực trong thời gian tới.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image -->\n<figure class=\"wp-block-image\"><img src=\"https://lh7-rt.googleusercontent.com/docsz/AD_4nXfY47VO3iBOL9eEAjBX-EVR0fMDmrUmPU8Jx_LEB0sjeWu961rAjiaUpZEDI6nNuOCL0WzAPVCDvUiFcIO1eRK-zik59aBHLZ4BJK_QSrs7VvwMWazDjECBxLFWMWmw0I-cnl5a4Q?key=jNj_ugcM4ekIdfFW8UsBcBr6\" alt=\"\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p><em>PGS.TS Đinh Văn Châu – Phó Bí thư Đảng ủy, Hiệu trưởng Nhà trường báo cáo tại Hội nghị.</em></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>Định hướng phát triển đến 2030, tầm nhìn 2045 là cơ sở cho toàn bộ hoạt động của Trường</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Trong bài phát biểu của mình PGS.TS Đinh Văn Châu nêu một số mục tiêu phát triển của Trường, cụ thể: “Đến năm 2030, Trường Đại học Điện lực đặt mục tiêu trở thành trường đại học đa ngành theo định hướng nghiên cứu ứng dụng và đổi mới sáng tạo, tự chủ bền vững, có uy tín trong nước và quốc tế; trung tấm xuất sắc về công nghệ và kỹ thuật năng lượng; kiến tạo động lực phát triển mới cho ngành Công thương và đất nước thông qua đào tạo nguồn nhân lực có năng lực khởi nghiệp, nghiên cứu và chuyển giao tri thức, gắn kết và phục vụ cộng đồng. Đến năm 2045, Trường hướng tới trở thành đại học đổi mới sáng tạo,&nbsp;nằm trong nhóm các trường đại học hàng đầu châu Á”.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Tại Tọa đàm, PGS.TS Đinh Văn Châu cũng bày tỏ lòng cảm ơn sâu sắc tới các đại biểu đã tham dự và đóng góp những ý kiến tâm huyết, sâu sắc cho sự phát triển của Nhà trường. Trên cơ sở những ý kiến quý báu tại buổi Hội thảo, Ban soạn thảo sẽ tiếp tục nghiên cứu, hoàn thiện định hướng, xây dựng chiến lược và có các giải pháp triển khai mạnh mẽ các định hướng phát triển của Trường trong giai đoạn tới.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Phát biểu tổng kết tọa đàm, NGƯT.PGS.TS Vũ Đình Ngọ nhấn mạnh ý nghĩa quan trọng của buổi tọa đàm trong việc xác định những định hướng chiến lược nhằm đưa Nhà trường phát triển vững mạnh trong giai đoạn tới. Đồng thời khẳng định, những ý kiến đóng góp sâu sắc từ các chuyên gia, nhà khoa học sẽ là cơ sở quan trọng để hoàn thiện định hướng phát triển trường Đại học Điện lực đến năm 2030, tầm nhìn 2045.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;Một số hình ảnh tại Tọa đàm:&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image -->\n<figure class=\"wp-block-image\"><img src=\"https://lh7-rt.googleusercontent.com/docsz/AD_4nXffzfTG6q5XuGbAzIAlp0CJcGDOGy1ie53RJWEuhBMBan53NvOxfmRAlBYad9g2bO7UKFSZMJ7_-EeHZTHcXvNi-C5AiNnsTABytumZDZAwfJjCdgk5WFsM3xDGCPWxnarBPB0p?key=jNj_ugcM4ekIdfFW8UsBcBr6\" alt=\"\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p><em>NGƯT.PGS.TS Vũ Đình Ngọ – Bí thư Đảng ủy, Chủ tịch Hội đồng trường và PGS.TS Đinh Văn Châu – Phó Bí thư Đảng ủy, Hiệu trưởng Nhà trường chủ trì buổi Tọa đàm.</em></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image -->\n<figure class=\"wp-block-image\"><img src=\"https://lh7-rt.googleusercontent.com/docsz/AD_4nXda7Z6heVusQKNsDp1k2GhcVCkcg7JBrQVkvyE8ilsz_MeMC6YtVjyVW0M33U8O2CWhjwMZlGdCEQnlMr-f1bD-F4JJecgdLhOktWUQXydIQhFtikU-kf7Zws7SgFmDa9urSyOIFw?key=jNj_ugcM4ekIdfFW8UsBcBr6\" alt=\"\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image -->\n<figure class=\"wp-block-image\"><img src=\"https://lh7-rt.googleusercontent.com/docsz/AD_4nXfzppOf3QiwSt5U5xru9j6Vq1Ojsw4Bt3rh7r6i73YeIQuhrBexcKSEwID22eXKtpC4eomPFq-NEIIhcNKO4b33XYe4yFfsYJfci8DKEtgub8aP7Ex6s0LYzUbg09hCDS2TbSxv?key=jNj_ugcM4ekIdfFW8UsBcBr6\" alt=\"\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p><em>Toàn cảnh buổi Tọa đàm.</em></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image -->\n<figure class=\"wp-block-image\"><img src=\"https://lh7-rt.googleusercontent.com/docsz/AD_4nXf08CORNeDjv-MIaSM6mpTdAimmr5ePTzc1528xma00cpR5oaZmALGNceKWXgQXVOJx8Gh_raJ0JdZ_G-TOpPXQ3T1GIrEAabWRSLAoBsUC_x01IMrcVNhqtMbqISTdX-z94MKNvQ?key=jNj_ugcM4ekIdfFW8UsBcBr6\" alt=\"\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image -->\n<figure class=\"wp-block-image\"><img src=\"https://lh7-rt.googleusercontent.com/docsz/AD_4nXdqQG_PfYedNVBNoODlq2yjMy9fFZvjudp24ctR9mQ8PYyeoOyYPyzVi1BZH2ZF9HVlcIAtCQMByrsFOG8Ls9CD4v71PYQn-OObTf1W1Fgn1czh4RZ1CCr1VoYAVe9DB7o9goKa?key=jNj_ugcM4ekIdfFW8UsBcBr6\" alt=\"\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p><em>Các đại biểu đóng góp nhiều ý kiến thiết thực cho định hướng chiến lược phát triển của Nhà trường.</em></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image -->\n<figure class=\"wp-block-image\"><img src=\"https://lh7-rt.googleusercontent.com/docsz/AD_4nXczUZUhVGA-9PD5_5TpqOK87kV7kGmpwzSqlh5WMSEHkbPEic27uEWlkrm1wKwtxlh4PFnwVIZXb90T42Vtopl_VficdoK4vPi1HTuXnnH5N8K1EDVJtXluVBUb5LhBqOK-QTpD?key=jNj_ugcM4ekIdfFW8UsBcBr6\" alt=\"\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p><em>Các đại biểu chụp ảnh lưu niệm tại Tọa đàm.</em></p>\n<!-- /wp:paragraph -->', 'Tọa đàm \"Định hướng phát triển Trường Đại học Điện lực đến năm 2030, tầm nhìn đến năm 2045\"', '', 'inherit', 'closed', 'closed', '', '32-revision-v1', '', '', '2025-03-28 02:28:27', '2025-03-28 02:28:27', '', 32, 'http://localhost/tintucedu/?p=34', 0, 'revision', '', 0),
(35, 1, '2025-03-28 02:30:04', '2025-03-28 02:30:04', '<!-- wp:paragraph -->\n<p><em>Trường Đại học Điện lực công bố phương án tuyển sinh đại học chính quy năm 2025. Theo đó, năm nay, tổng chỉ tiêu tuyển sinh của nhà trường dự kiến là 6.800 chỉ tiêu cho 32 ngành học, tăng 13 ngành học và tăng khoảng 2.800 chỉ tiêu.</em></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Với khoảng 6.800 chỉ tiêu đại học chính quy, năm 2025 Trường Đại học Điện lực đã mở thêm nhiều ngành học mới về: Kỹ thuật hạt nhân, vật liệu bán dẫn và vi mạch…</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Theo đó, năm 2025, Trường Đại học Điện lực tuyển sinh đại học theo 4 phương thức: Xét tuyển dựa trên kết quả học tập THPT của thí sinh (xét tuyển học bạ); xét tuyển kết hợp dựa trên chứng chỉ tiếng Anh quốc tế kết hợp với kết quả học tập (học bạ) 2 môn còn lại trong tổ hợp xét tuyển; xét tuyển dựa vào kết quả của thí sinh trong kỳ thi tốt nghiệp THPT năm 2025 do Bộ Giáo dục và Đào tạo tổ chức; xét tuyển thẳng theo quy định trong quy chế tuyển sinh hiện hành của Bộ Giáo dục và Đào tạo.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Trường Đại học Điện lực là trường đại học công lập trực thuộc Bộ Công Thương. Nhà trường đề ra lộ trình và mục tiêu phát triển: Là trường đại học công lập đa ngành, đào tạo nguồn nhân lực chất lượng cao; nghiên cứu khoa học, phát triển công nghệ, tư vấn chính sách, chuyển giao tri thức, đặc biệt trong lĩnh vực năng lượng, góp phần xây dựng, phát triển đất nước và hội nhập quốc tế.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Những năm trước, nhà trường tập trung tuyển sinh cho 19 ngành đào tạo bậc đại học, trong đó, hơn 2/3 là chương trình đào tạo thuộc lĩnh vực công nghệ, kỹ thuật. Từ năm 2025, số ngành đào tạo của Trường Đại học Điện lực tăng lên 32 ngành, trong đó, có nhiều ngành mới đáp ứng yêu cầu phát triển của đất nước trong kỷ nguyên mới như: Khoa học dữ liệu, trí tuệ nhân tạo, robot, kỹ thuật máy tính, vật liệu bán dẫn và vi mạch, công nghệ ô tô... Đặc biệt, bắt đầu từ năm 2025, nhà trường mở lại ngành đào tạo kỹ thuật hạt nhân và tổ chức tuyển sinh.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Năm 2025, Trường Đại học Điện lực đã mở thêm 13 ngành đào tạo mới, trong đó, có nhiều ngành nghề đang được xã hội và người học quan tâm, nhu cầu thị trường lao động được dự báo sẽ tăng trong thời gian tới đối với những ngành học như: Công nghệ vậy liệu bán dẫn và vi mạch; kỹ thuật robot; công nghệ kỹ thuật hạt nhân; kỹ thuật nhiệt…</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Chi tiết phương án, ngành học, chỉ tiêu tuyển sinh xem&nbsp;<strong><a href=\"https://epu.edu.vn/Uploads/files/HCQT%20-%20File/654-%20Thong%20bao%20phuong%20an%20tuyen%20sinh%20Dai%20h%E1%BB%8Dc%20chinh%20quy%20nam%202025.pdf\">tại đây.</a></strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Thông tin liên lạc</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Phòng Quản lý&nbsp;Đào tạo, bộ phận tuyển sinh, tầng 1, nhà B, Trường Đại học Điện lực, số 235 Hoàng Quốc Việt, Phường Cổ Nhuế 1, Quận Bắc Từ Liêm, Hà Nội</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Điện thoại: 024 2245 2662</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Cổng thông tin tuyển sinh: www.tuyensinh.epu.edu.vn</p>\n<!-- /wp:paragraph -->', 'Trường Đại học Điện lực công bố phương án tuyển sinh năm 2025', '', 'publish', 'open', 'open', '', 'truong-dai-hoc-dien-luc-cong-bo-phuong-an-tuyen-sinh-nam-2025', '', '', '2025-03-28 02:30:06', '2025-03-28 02:30:06', '', 0, 'http://localhost/tintucedu/?p=35', 0, 'post', '', 0),
(36, 1, '2025-03-28 02:29:58', '2025-03-28 02:29:58', '', 'NAM05129(4)', '', 'inherit', 'open', 'closed', '', 'nam051294', '', '', '2025-03-28 02:29:58', '2025-03-28 02:29:58', '', 35, 'http://localhost/tintucedu/wp-content/uploads/2025/03/NAM051294.jpg', 0, 'attachment', 'image/jpeg', 0),
(37, 1, '2025-03-28 02:30:04', '2025-03-28 02:30:04', '<!-- wp:paragraph -->\n<p><em>Trường Đại học Điện lực công bố phương án tuyển sinh đại học chính quy năm 2025. Theo đó, năm nay, tổng chỉ tiêu tuyển sinh của nhà trường dự kiến là 6.800 chỉ tiêu cho 32 ngành học, tăng 13 ngành học và tăng khoảng 2.800 chỉ tiêu.</em></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Với khoảng 6.800 chỉ tiêu đại học chính quy, năm 2025 Trường Đại học Điện lực đã mở thêm nhiều ngành học mới về: Kỹ thuật hạt nhân, vật liệu bán dẫn và vi mạch…</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Theo đó, năm 2025, Trường Đại học Điện lực tuyển sinh đại học theo 4 phương thức: Xét tuyển dựa trên kết quả học tập THPT của thí sinh (xét tuyển học bạ); xét tuyển kết hợp dựa trên chứng chỉ tiếng Anh quốc tế kết hợp với kết quả học tập (học bạ) 2 môn còn lại trong tổ hợp xét tuyển; xét tuyển dựa vào kết quả của thí sinh trong kỳ thi tốt nghiệp THPT năm 2025 do Bộ Giáo dục và Đào tạo tổ chức; xét tuyển thẳng theo quy định trong quy chế tuyển sinh hiện hành của Bộ Giáo dục và Đào tạo.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Trường Đại học Điện lực là trường đại học công lập trực thuộc Bộ Công Thương. Nhà trường đề ra lộ trình và mục tiêu phát triển: Là trường đại học công lập đa ngành, đào tạo nguồn nhân lực chất lượng cao; nghiên cứu khoa học, phát triển công nghệ, tư vấn chính sách, chuyển giao tri thức, đặc biệt trong lĩnh vực năng lượng, góp phần xây dựng, phát triển đất nước và hội nhập quốc tế.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Những năm trước, nhà trường tập trung tuyển sinh cho 19 ngành đào tạo bậc đại học, trong đó, hơn 2/3 là chương trình đào tạo thuộc lĩnh vực công nghệ, kỹ thuật. Từ năm 2025, số ngành đào tạo của Trường Đại học Điện lực tăng lên 32 ngành, trong đó, có nhiều ngành mới đáp ứng yêu cầu phát triển của đất nước trong kỷ nguyên mới như: Khoa học dữ liệu, trí tuệ nhân tạo, robot, kỹ thuật máy tính, vật liệu bán dẫn và vi mạch, công nghệ ô tô... Đặc biệt, bắt đầu từ năm 2025, nhà trường mở lại ngành đào tạo kỹ thuật hạt nhân và tổ chức tuyển sinh.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Năm 2025, Trường Đại học Điện lực đã mở thêm 13 ngành đào tạo mới, trong đó, có nhiều ngành nghề đang được xã hội và người học quan tâm, nhu cầu thị trường lao động được dự báo sẽ tăng trong thời gian tới đối với những ngành học như: Công nghệ vậy liệu bán dẫn và vi mạch; kỹ thuật robot; công nghệ kỹ thuật hạt nhân; kỹ thuật nhiệt…</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Chi tiết phương án, ngành học, chỉ tiêu tuyển sinh xem&nbsp;<strong><a href=\"https://epu.edu.vn/Uploads/files/HCQT%20-%20File/654-%20Thong%20bao%20phuong%20an%20tuyen%20sinh%20Dai%20h%E1%BB%8Dc%20chinh%20quy%20nam%202025.pdf\">tại đây.</a></strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Thông tin liên lạc</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Phòng Quản lý&nbsp;Đào tạo, bộ phận tuyển sinh, tầng 1, nhà B, Trường Đại học Điện lực, số 235 Hoàng Quốc Việt, Phường Cổ Nhuế 1, Quận Bắc Từ Liêm, Hà Nội</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Điện thoại: 024 2245 2662</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Cổng thông tin tuyển sinh: www.tuyensinh.epu.edu.vn</p>\n<!-- /wp:paragraph -->', 'Trường Đại học Điện lực công bố phương án tuyển sinh năm 2025', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2025-03-28 02:30:04', '2025-03-28 02:30:04', '', 35, 'http://localhost/tintucedu/?p=37', 0, 'revision', '', 0),
(38, 1, '2025-04-04 10:46:04', '2025-04-04 10:46:04', '', 'Checkout', '', 'publish', 'closed', 'closed', '', 'lp-checkout', '', '', '2025-04-04 10:46:04', '2025-04-04 10:46:04', '', 0, 'http://localhost/tintucedu/lp-checkout/', 0, 'page', '', 0),
(39, 1, '2025-04-04 10:46:04', '2025-04-04 10:46:04', '<!-- wp:shortcode -->[learn_press_profile]<!-- /wp:shortcode -->', 'Profile', '', 'publish', 'closed', 'closed', '', 'lp-profile', '', '', '2025-04-04 10:46:04', '2025-04-04 10:46:04', '', 0, 'http://localhost/tintucedu/lp-profile/', 0, 'page', '', 0),
(40, 1, '2025-04-04 10:46:04', '2025-04-04 10:46:04', '', 'All Courses', '', 'publish', 'closed', 'closed', '', 'courses', '', '', '2025-04-04 10:46:04', '2025-04-04 10:46:04', '', 0, 'http://localhost/tintucedu/courses/', 0, 'page', '', 0),
(41, 1, '2025-04-04 10:46:04', '2025-04-04 10:46:04', '<!-- wp:shortcode -->[learn_press_instructors]<!-- /wp:shortcode -->', 'Instructors', '', 'publish', 'closed', 'closed', '', 'instructors', '', '', '2025-04-04 10:46:04', '2025-04-04 10:46:04', '', 0, 'http://localhost/tintucedu/instructors/', 0, 'page', '', 0),
(42, 1, '2025-04-04 10:46:04', '2025-04-04 10:46:04', '<!-- wp:shortcode -->[learn_press_single_instructor]<!-- /wp:shortcode -->', 'Instructor', '', 'publish', 'closed', 'closed', '', 'instructor', '', '', '2025-04-04 10:46:04', '2025-04-04 10:46:04', '', 0, 'http://localhost/tintucedu/instructor/', 0, 'page', '', 0),
(43, 1, '2025-04-04 10:46:04', '2025-04-04 10:46:04', '', 'Become A Teacher', '', 'publish', 'closed', 'closed', '', 'lp-become-a-teacher', '', '', '2025-04-04 10:46:04', '2025-04-04 10:46:04', '', 0, 'http://localhost/tintucedu/lp-become-a-teacher/', 0, 'page', '', 0),
(44, 1, '2025-04-04 10:46:04', '2025-04-04 10:46:04', '', 'Term Conditions', '', 'publish', 'closed', 'closed', '', 'lp-term-conditions', '', '', '2025-04-04 10:46:04', '2025-04-04 10:46:04', '', 0, 'http://localhost/tintucedu/lp-term-conditions/', 0, 'page', '', 0),
(45, 1, '2025-04-04 10:54:51', '2025-04-04 10:54:51', '<span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Phần mềm trợ giúp cài đặt học tập hiểu biết thêm về cấu hình trong trình cài đặt</span></span></span></span></span></span>', 'Cấu trúc dữ liệu giải thuật', '', 'publish', 'open', 'closed', '', 'cau-truc-du-lieu-giai-thuat', '', '', '2025-04-04 11:00:36', '2025-04-04 11:00:36', '', 0, 'http://localhost/tintucedu/?post_type=lp_course&#038;p=45', 0, 'lp_course', '', 0),
(46, 1, '2025-04-04 10:54:51', '2025-04-04 10:54:51', 'Khóa học giúp người học lập trình hiểu biết thêm về các cấu trúc trong lập trình', 'Cấu trúc dữ liệu giải thuật', '', 'inherit', 'closed', 'closed', '', '45-revision-v1', '', '', '2025-04-04 10:54:51', '2025-04-04 10:54:51', '', 45, 'http://localhost/tintucedu/?p=46', 0, 'revision', '', 0),
(47, 1, '2025-04-04 10:56:02', '2025-04-04 10:56:02', '', '', 'Định nghĩa cấu trúc dữ liệu', 'inherit', 'open', 'closed', '', 'dinh-nghia-cau-truc-du-lieu', '', '', '2025-04-04 10:59:01', '2025-04-04 10:59:01', '', 45, 'http://localhost/tintucedu/wp-content/uploads/2025/04/dinh-nghia-cau-truc-du-lieu.jpg', 0, 'attachment', 'image/jpeg', 0),
(48, 1, '2025-04-04 10:59:22', '2025-04-04 10:59:22', '<img class=\"size-full wp-image-47\" src=\"http://localhost/tintucedu/wp-content/uploads/2025/04/dinh-nghia-cau-truc-du-lieu.jpg\" alt=\"\" width=\"800\" height=\"600\" />\r\n\r\n<span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Phần mềm trợ giúp cài đặt học tập hiểu biết thêm về cấu hình trong trình cài đặt</span></span></span></span></span></span>', 'Cấu trúc dữ liệu giải thuật', '', 'inherit', 'closed', 'closed', '', '45-autosave-v1', '', '', '2025-04-04 10:59:22', '2025-04-04 10:59:22', '', 45, 'http://localhost/tintucedu/?p=48', 0, 'revision', '', 0),
(49, 1, '2025-04-04 10:57:13', '2025-04-04 10:57:13', '<span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Khóa học giúp người cài đặt hiểu biết thêm về các cấu hình trong trình cài đặt</span></span>', 'Cấu trúc dữ liệu giải thuật', '', 'inherit', 'closed', 'closed', '', '45-revision-v1', '', '', '2025-04-04 10:57:13', '2025-04-04 10:57:13', '', 45, 'http://localhost/tintucedu/?p=49', 0, 'revision', '', 0),
(50, 1, '2025-04-04 10:58:45', '2025-04-04 10:58:45', '<img class=\"size-full wp-image-47\" src=\"http://localhost/tintucedu/wp-content/uploads/2025/04/dinh-nghia-cau-truc-du-lieu.jpg\" alt=\"\" width=\"800\" height=\"600\" />\r\n\r\n<span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Phần trợ giúp cài đặt học tập hiểu biết thêm về các cấu hình trong trình cài đặt</span></span></span></span>', 'Cấu trúc dữ liệu giải thuật', '', 'inherit', 'closed', 'closed', '', '45-revision-v1', '', '', '2025-04-04 10:58:45', '2025-04-04 10:58:45', '', 45, 'http://localhost/tintucedu/?p=50', 0, 'revision', '', 0),
(51, 1, '2025-04-04 11:00:36', '2025-04-04 11:00:36', '<span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Phần mềm trợ giúp cài đặt học tập hiểu biết thêm về cấu hình trong trình cài đặt</span></span></span></span></span></span>', 'Cấu trúc dữ liệu giải thuật', '', 'inherit', 'closed', 'closed', '', '45-revision-v1', '', '', '2025-04-04 11:00:36', '2025-04-04 11:00:36', '', 45, 'http://localhost/tintucedu/?p=51', 0, 'revision', '', 0),
(52, 1, '2025-04-04 11:00:50', '2025-04-04 11:00:50', '', '#0000000052', '', 'lp-completed', 'closed', 'closed', '', 'order-on-friday-4th-april-2025-110050-am', '', '', '2025-04-04 11:00:51', '2025-04-04 11:00:51', '', 0, 'http://localhost/tintucedu/?post_type=lp_order&#038;p=52', 0, 'lp_order', '', 0),
(53, 1, '2025-04-04 11:08:32', '2025-04-04 11:08:32', '<span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">C# là một ngôn ngữ lập trình đơn giản, hiện đại, mục tiêu tổng thống, đối tượng hướng dẫn được phát triển bởi Microsoft trong phần khởi động .NET của họ, được phát triển chủ yếu bởi Anders Hejlsberg, một kiến ​​trúc sư phần mềm nổi tiếng với các sản phẩm Turbo Pascal, Delphi, J++, WFC. Khóa học này sẽ cung cấp cho bạn kiến ​​thức cơ bản về lập trình C# qua các khái niệm từ cơ bản và các bài tập thực tế bằng ngôn ngữ lập trình C#.</span></span>\r\n<h3><strong><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Đặc biệt của ngôn ngữ C#:</span></span></strong></h3>\r\n<ul>\r\n 	<li><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Là một đối tượng hướng ngôn ngữ tĩnh (đối tượng hướng là nội dung sẽ được trình bày trong khóa học C# Advance)</span></span></li>\r\n 	<li><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Ngôn ngữ khá đơn giản, chỉ có khoảng 80 từ khóa và hơn mười loại dữ liệu được cài đặt sẵn.</span></span></li>\r\n 	<li><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Cung cấp các thành phần đặc tính (hướng thành phần) như Thuộc tính, Sự kiện</span></span></li>\r\n 	<li><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">C# has a Garbage Collector sẽ tự động thu thập vùng nhớ khi không sử dụng nữa.</span></span></li>\r\n</ul>\r\n<h3><strong><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Ứng dụng của C#</span></span></strong></h3>\r\n<ul>\r\n 	<li><strong><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Ứng dụng trên Windows:</span></span>\r\n<img src=\"https://s3-sgn09.fptcloud.com/codelearnstorage/files/thumbnails/A2_4a0918575fdb4a598759686cec0620ab.png\" />\r\n</strong><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\"> Với sự trợ giúp của bộ khung .Net, “C#” được sử dụng để phát triển các ứng dụng dựa trên cửa sổ cho máy tính để bàn. Nhiều ứng dụng Windows phổ biến như các công cụ Microsoft Office, Skype, Photoshop và Visual Studio được phát triển bằng ngôn ngữ này.</span></span></li>\r\n 	<li><strong><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Các thành phần và điều khiển:</span></span>\r\n</strong><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\"> Các thành phần và điều khiển là các thư viện có thể được sử dụng để tạo ra một phân phối dễ dàng thứ hai và có thể chia sẻ được. Thư viện GPS là một ví dụ tuyệt vời cho một thư viện có thể được xây dựng và dễ dàng phân phối cho các thành viên khác trong các ứng dụng của họ để sử dụng. Nó cũng có thể được sử dụng để xây dựng các thành phần máy chủ và nhiều công việc khác.</span></span></li>\r\n 	<li><strong><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Web ứng dụng:</span></span>\r\n<img src=\"https://s3-sgn09.fptcloud.com/codelearnstorage/files/thumbnails/A1_8a4efcbe8355487ebe053fa1a6313020.png\" />\r\n</strong><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\"> Với sự trợ giúp của bộ .NET khung, C# có khả năng tạo nhiều web ứng dụng bằng cách sử dụng asp.net. Đó là một ngôn ngữ phổ biến khác mà ai có thể học ngay lập tức khi muốn làm ứng dụng web chạy trơn tru trên một trang web máy chủ. Các ứng dụng Windows chạy trên cả máy chủ cũng như trong trình duyệt của máy khách, tùy thuộc vào cách viết mã. Nếu C# được sử dụng bên dưới mã hóa công thức ở phần phụ trợ, thì mã hóa C# sẽ chạy trên máy chủ và giao diện người dùng HTML sẽ chạy trong trình duyệt của khách hàng.</span></span></li>\r\n</ul>\r\n\r\n<hr />\r\n\r\n<h3><strong><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Mục tiêu của khóa học.</span></span></strong></h3>\r\n<ul>\r\n 	<li><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Viết thành phần cơ bản của chương trình bằng ngôn ngữ C#.</span></span></li>\r\n 	<li><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Biết cách sử dụng loại dữ liệu của biến và sử dụng nó một cách hợp lý.</span></span></li>\r\n 	<li><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Sử dụng các toán tử trong C#.</span></span></li>\r\n 	<li><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Biết một số chất trong lệnh cũng như các lệnh trong C#:</span></span>\r\n<ul>\r\n 	<li><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Cấu trúc mảng.</span></span></li>\r\n 	<li><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Cấu trúc chuỗi.</span></span></li>\r\n 	<li><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Câu lệnh điều kiện.</span></span></li>\r\n 	<li><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Vòng lặp.</span></span></li>\r\n</ul>\r\n</li>\r\n 	<li><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Tìm hiểu về lớp DateTime trong C#.</span></span></li>\r\n 	<li><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Hiểu rõ và sử dụng cũng như viết các hàm trong C#.</span></span></li>\r\n</ul>\r\n\r\n<hr />\r\n\r\n<h3><strong><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Lời kết:</span></span></strong></h3>\r\n<span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Hướng tới trình cài đặt mục tiêu cho các đối tượng chưa biết, chưa tìm thấy về trình cài đặt. Trong khóa học này, chúng tôi sẽ chỉ tìm hiểu khái niệm cơ bản nhất về lập trình và thực thi trên ngôn ngữ C#.</span></span>', 'Lập trình C#', '', 'publish', 'open', 'closed', '', 'lap-trinh-c', '', '', '2025-04-04 11:20:25', '2025-04-04 11:20:25', '', 0, 'http://localhost/tintucedu/?post_type=lp_course&#038;p=53', 0, 'lp_course', '', 0),
(54, 1, '2025-04-04 11:08:18', '2025-04-04 11:08:18', '', 'c#', '', 'inherit', 'open', 'closed', '', 'c', '', '', '2025-04-04 11:08:18', '2025-04-04 11:08:18', '', 53, 'http://localhost/tintucedu/wp-content/uploads/2025/04/c.jpg', 0, 'attachment', 'image/jpeg', 0),
(55, 1, '2025-04-04 11:08:32', '2025-04-04 11:08:32', 'C# là một ngôn ngữ lập trình đơn giản, hiện đại, mục đích tổng quát, hướng đối tượng được phát triển bởi Microsoft bên trong phần khởi đầu .NET của họ, được phát triển chủ yếu bởi Anders Hejlsberg, một kiến trúc sư phần mềm nổi tiếng với các sản phẩm Turbo Pascal, Delphi, J++, WFC. Khóa học này sẽ cung cấp cho bạn kiến thức cơ bản về lập trình C# qua các khái niệm từ cơ bản và các bài tập thực tế bằng ngôn ngữ lập trình C#.\r\n<h3><strong>Đặc trưng cơ bản của ngôn ngữ C#:</strong></h3>\r\n<ul>\r\n 	<li>Là một ngôn ngữ thuần hướng đối tượng (hướng đối tượng là gì sẽ được trình bày trong khóa học C# Advance)</li>\r\n 	<li>Là ngôn ngữ khá đơn giản, chỉ có khoảng 80 từ khóa và hơn mười kiểu dữ liệu được dựng sẵn.</li>\r\n 	<li>Cung cấp những đặc tính hướng thành phần (component-oriented) như là Property, Event</li>\r\n 	<li>C# có bộ Garbage Collector sẽ tự động thu gom vùng nhớ khi không còn sử dụng nữa.</li>\r\n</ul>\r\n<h3><strong>Ứng dụng của C#</strong></h3>\r\n<ul>\r\n 	<li><strong>Ứng dụng trên Windows:\r\n<img src=\"https://s3-sgn09.fptcloud.com/codelearnstorage/files/thumbnails/A2_4a0918575fdb4a598759686cec0620ab.png\" />\r\n</strong>Với sự trợ giúp của bộ khung .Net, “C#” được sử dụng để phát triển các ứng dụng dựa trên các cửa sổ cho máy tính để bàn. Nhiều ứng dụng Windows phổ biến như các công cụ Microsoft Office, Skype, Photoshop và Visual Studio được phát triển bằng ngôn ngữ này.</li>\r\n 	<li><strong>Các thành phần và điều khiển:\r\n</strong>Các thành phần và điều khiển là các thư viện có thể được sử dụng để tạo ra một thứ dễ phân phối và có thể chia sẻ được. Thư viện GPS là một ví dụ tuyệt vời cho một thư viện có thể được một lập trình viên xây dựng và dễ dàng phân phối cho các lập trình viên khác để sử dụng trong các ứng dụng của họ. Nó cũng được sử dụng để xây dựng các thành phần máy chủ và nhiều công việc khác nữa.</li>\r\n 	<li><strong>Ứng dụng Web:\r\n<img src=\"https://s3-sgn09.fptcloud.com/codelearnstorage/files/thumbnails/A1_8a4efcbe8355487ebe053fa1a6313020.png\" />\r\n</strong>Với sự trợ giúp của bộ khung .NET, C# có khả năng tạo ra nhiều ứng dụng web bằng cách sử dụng asp.net. Đó là một ngôn ngữ phổ biến khác mà ai ai có thể học ngay lập tức khi muốn làm cho ứng dụng web chạy trơn tru trên một máy chủ web. Các ứng dụng Windows chạy trên cả máy chủ cũng như trong trình duyệt của máy khách, tùy thuộc vào cách viết mã. Nếu C# được sử dụng dưới hình thức mã hóa ở backend, thì mã C# chạy trên máy chủ và HTML frontend chạy trong trình duyệt của máy khách.</li>\r\n</ul>\r\n\r\n<hr />\r\n\r\n<h3><strong>Mục tiêu của khóa học.</strong></h3>\r\n<ul>\r\n 	<li>Viết thành thạo các chương trình cơ bản bằng ngôn ngữ C#.</li>\r\n 	<li>Hiểu rõ cách kiểu dữ liệu của biến và sử dụng nó một cách phù hợp.</li>\r\n 	<li>Sử dụng được các toán tử trong C#.</li>\r\n 	<li>Hiểu rõ bản chất một số các trong dữ lệnh cũng như các câu lệnh trong C#:\r\n<ul>\r\n 	<li>Cấu trúc mảng.</li>\r\n 	<li>Cấu trúc chuỗi.</li>\r\n 	<li>Câu lệnh điều kiện.</li>\r\n 	<li>Vòng lặp.</li>\r\n</ul>\r\n</li>\r\n 	<li>Tìm hiểu về class DateTime trong C#.</li>\r\n 	<li>Hiểu rõ và sử dụng cũng như viết được các hàm trong C#.</li>\r\n</ul>\r\n\r\n<hr />\r\n\r\n<h3><strong>Lời kết:</strong></h3>\r\nHướng tới mục đích dạy lập trình cho các đối tượng chưa biết, chưa tìm hiểu về lập trình. Trong khuôn khổ khóa học này, chúng ta sẽ chỉ tìm hiểu khái niệm cơ bản nhất về lập trình và thực hành trên ngôn ngữ C#.', 'Lập trình C#', '', 'inherit', 'closed', 'closed', '', '53-revision-v1', '', '', '2025-04-04 11:08:32', '2025-04-04 11:08:32', '', 53, 'http://localhost/tintucedu/?p=55', 0, 'revision', '', 0),
(56, 1, '2025-04-04 11:13:11', '2025-04-04 11:13:11', '<span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">C# là một ngôn ngữ lập trình đơn giản, hiện đại, mục tiêu tổng thống, đối tượng hướng dẫn được phát triển bởi Microsoft trong phần khởi động .NET của họ, được phát triển chủ yếu bởi Anders Hejlsberg, một kiến ​​trúc sư phần mềm nổi tiếng với các sản phẩm Turbo Pascal, Delphi, J++, WFC. Khóa học này sẽ cung cấp cho bạn kiến ​​thức cơ bản về lập trình C# qua các khái niệm từ cơ bản và các bài tập thực tế bằng ngôn ngữ lập trình C#.</span></span>\r\n<h3><strong><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Đặc biệt của ngôn ngữ C#:</span></span></strong></h3>\r\n<ul>\r\n 	<li><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Là một đối tượng hướng ngôn ngữ tĩnh (đối tượng hướng là nội dung sẽ được trình bày trong khóa học C# Advance)</span></span></li>\r\n 	<li><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Ngôn ngữ khá đơn giản, chỉ có khoảng 80 từ khóa và hơn mười loại dữ liệu được cài đặt sẵn.</span></span></li>\r\n 	<li><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Cung cấp các thành phần đặc tính (hướng thành phần) như Thuộc tính, Sự kiện</span></span></li>\r\n 	<li><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">C# has a Garbage Collector sẽ tự động thu thập vùng nhớ khi không sử dụng nữa.</span></span></li>\r\n</ul>\r\n<h3><strong><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Ứng dụng của C#</span></span></strong></h3>\r\n<ul>\r\n 	<li><strong><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Ứng dụng trên Windows:</span></span>\r\n<img src=\"https://s3-sgn09.fptcloud.com/codelearnstorage/files/thumbnails/A2_4a0918575fdb4a598759686cec0620ab.png\" />\r\n</strong><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\"> Với sự trợ giúp của bộ khung .Net, “C#” được sử dụng để phát triển các ứng dụng dựa trên cửa sổ cho máy tính để bàn. Nhiều ứng dụng Windows phổ biến như các công cụ Microsoft Office, Skype, Photoshop và Visual Studio được phát triển bằng ngôn ngữ này.</span></span></li>\r\n 	<li><strong><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Các thành phần và điều khiển:</span></span>\r\n</strong><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\"> Các thành phần và điều khiển là các thư viện có thể được sử dụng để tạo ra một phân phối dễ dàng thứ hai và có thể chia sẻ được. Thư viện GPS là một ví dụ tuyệt vời cho một thư viện có thể được xây dựng và dễ dàng phân phối cho các thành viên khác trong các ứng dụng của họ để sử dụng. Nó cũng có thể được sử dụng để xây dựng các thành phần máy chủ và nhiều công việc khác.</span></span></li>\r\n 	<li><strong><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Web ứng dụng:</span></span>\r\n<img src=\"https://s3-sgn09.fptcloud.com/codelearnstorage/files/thumbnails/A1_8a4efcbe8355487ebe053fa1a6313020.png\" />\r\n</strong><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\"> Với sự trợ giúp của bộ .NET khung, C# có khả năng tạo nhiều web ứng dụng bằng cách sử dụng asp.net. Đó là một ngôn ngữ phổ biến khác mà ai có thể học ngay lập tức khi muốn làm ứng dụng web chạy trơn tru trên một trang web máy chủ. Các ứng dụng Windows chạy trên cả máy chủ cũng như trong trình duyệt của máy khách, tùy thuộc vào cách viết mã. Nếu C# được sử dụng bên dưới mã hóa công thức ở phần phụ trợ, thì mã hóa C# sẽ chạy trên máy chủ và giao diện người dùng HTML sẽ chạy trong trình duyệt của khách hàng.</span></span></li>\r\n</ul>\r\n\r\n<hr />\r\n\r\n<h3><strong><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Mục tiêu của khóa học.</span></span></strong></h3>\r\n<ul>\r\n 	<li><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Viết thành phần cơ bản của chương trình bằng ngôn ngữ C#.</span></span></li>\r\n 	<li><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Biết cách sử dụng loại dữ liệu của biến và sử dụng nó một cách hợp lý.</span></span></li>\r\n 	<li><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Sử dụng các toán tử trong C#.</span></span></li>\r\n 	<li><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Biết một số chất trong lệnh cũng như các lệnh trong C#:</span></span>\r\n<ul>\r\n 	<li><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Cấu trúc mảng.</span></span></li>\r\n 	<li><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Cấu trúc chuỗi.</span></span></li>\r\n 	<li><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Câu lệnh điều kiện.</span></span></li>\r\n 	<li><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Vòng lặp.</span></span></li>\r\n</ul>\r\n</li>\r\n 	<li><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Tìm hiểu về lớp DateTime trong C#.</span></span></li>\r\n 	<li><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Hiểu rõ và sử dụng cũng như viết các hàm trong C#.</span></span></li>\r\n</ul>\r\n\r\n<hr />\r\n\r\n<h3><strong><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Lời kết:</span></span></strong></h3>\r\n<span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Hướng tới trình cài đặt mục tiêu cho các đối tượng chưa biết, chưa tìm thấy về trình cài đặt. Trong khóa học này, chúng tôi sẽ chỉ tìm hiểu khái niệm cơ bản nhất về lập trình và thực thi trên ngôn ngữ C#.</span></span>', 'Lập trình C#', '', 'inherit', 'closed', 'closed', '', '53-revision-v1', '', '', '2025-04-04 11:13:11', '2025-04-04 11:13:11', '', 53, 'http://localhost/tintucedu/?p=56', 0, 'revision', '', 0),
(57, 1, '2025-04-04 11:22:19', '2025-04-04 11:22:19', '', '#0000000057', '', 'lp-pending', 'closed', 'closed', '', 'order-on-friday-4th-april-2025-112219-am', '', '', '2025-04-04 11:22:19', '2025-04-04 11:22:19', '', 0, 'http://localhost/tintucedu/?post_type=lp_order&#038;p=57', 0, 'lp_order', '', 0),
(58, 1, '2025-04-04 11:25:27', '2025-04-04 11:25:27', '<span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">C# là một ngôn ngữ lập trình đơn giản, hiện đại, mục tiêu tổng thống, đối tượng hướng dẫn được phát triển bởi Microsoft trong phần khởi động .NET của họ, được phát triển chủ yếu bởi Anders Hejlsberg, một kiến ​​trúc sư phần mềm nổi tiếng với các sản phẩm Turbo Pascal, Delphi, J++, WFC. Khóa học này sẽ cung cấp cho bạn kiến ​​thức cơ bản về lập trình C# qua các khái niệm từ cơ bản và các bài tập thực tế bằng ngôn ngữ lập trình C#.</span></span>\r\n<h3><strong><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Đặc biệt của ngôn ngữ C#:</span></span></strong></h3>\r\n<ul>\r\n 	<li><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Là một đối tượng hướng ngôn ngữ tĩnh (đối tượng hướng là nội dung sẽ được trình bày trong khóa học C# Advance)</span></span></li>\r\n 	<li><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Ngôn ngữ khá đơn giản, chỉ có khoảng 80 từ khóa và hơn mười loại dữ liệu được cài đặt sẵn.</span></span></li>\r\n 	<li><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Cung cấp các thành phần đặc tính (hướng thành phần) như Thuộc tính, Sự kiện</span></span></li>\r\n 	<li><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">C# has a Garbage Collector sẽ tự động thu thập vùng nhớ khi không sử dụng nữa.</span></span></li>\r\n</ul>\r\n<h3><strong><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Ứng dụng của C#</span></span></strong></h3>\r\n<ul>\r\n 	<li><strong><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Ứng dụng trên Windows:</span></span>\r\n<img src=\"https://s3-sgn09.fptcloud.com/codelearnstorage/files/thumbnails/A2_4a0918575fdb4a598759686cec0620ab.png\" />\r\n</strong><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\"> Với sự trợ giúp của bộ khung .Net, “C#” được sử dụng để phát triển các ứng dụng dựa trên cửa sổ cho máy tính để bàn. Nhiều ứng dụng Windows phổ biến như các công cụ Microsoft Office, Skype, Photoshop và Visual Studio được phát triển bằng ngôn ngữ này.</span></span></li>\r\n 	<li><strong><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Các thành phần và điều khiển:</span></span>\r\n</strong><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\"> Các thành phần và điều khiển là các thư viện có thể được sử dụng để tạo ra một phân phối dễ dàng thứ hai và có thể chia sẻ được. Thư viện GPS là một ví dụ tuyệt vời cho một thư viện có thể được xây dựng và dễ dàng phân phối cho các thành viên khác trong các ứng dụng của họ để sử dụng. Nó cũng có thể được sử dụng để xây dựng các thành phần máy chủ và nhiều công việc khác.</span></span></li>\r\n 	<li><strong><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Web ứng dụng:</span></span>\r\n<img src=\"https://s3-sgn09.fptcloud.com/codelearnstorage/files/thumbnails/A1_8a4efcbe8355487ebe053fa1a6313020.png\" />\r\n</strong><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\"> Với sự trợ giúp của bộ .NET khung, C# có khả năng tạo nhiều web ứng dụng bằng cách sử dụng asp.net. Đó là một ngôn ngữ phổ biến khác mà ai có thể học ngay lập tức khi muốn làm ứng dụng web chạy trơn tru trên một trang web máy chủ. Các ứng dụng Windows chạy trên cả máy chủ cũng như trong trình duyệt của máy khách, tùy thuộc vào cách viết mã. Nếu C# được sử dụng bên dưới mã hóa công thức ở phần phụ trợ, thì mã hóa C# sẽ chạy trên máy chủ và giao diện người dùng HTML sẽ chạy trong trình duyệt của khách hàng.</span></span></li>\r\n</ul>\r\n\r\n<hr />\r\n\r\n<h3><strong><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Mục tiêu của khóa học.</span></span></strong></h3>\r\n<ul>\r\n 	<li><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Viết thành phần cơ bản của chương trình bằng ngôn ngữ C#.</span></span></li>\r\n 	<li><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Biết cách sử dụng loại dữ liệu của biến và sử dụng nó một cách hợp lý.</span></span></li>\r\n 	<li><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Sử dụng các toán tử trong C#.</span></span></li>\r\n 	<li><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Biết một số chất trong lệnh cũng như các lệnh trong C#:</span></span>\r\n<ul>\r\n 	<li><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Cấu trúc mảng.</span></span></li>\r\n 	<li><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Cấu trúc chuỗi.</span></span></li>\r\n 	<li><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Câu lệnh điều kiện.</span></span></li>\r\n 	<li><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Vòng lặp.</span></span></li>\r\n</ul>\r\n</li>\r\n 	<li><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Tìm hiểu về lớp DateTime trong C#.</span></span></li>\r\n 	<li><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Hiểu rõ và sử dụng cũng như viết các hàm trong C#.</span></span></li>\r\n</ul>\r\n\r\n<hr />\r\n\r\n<h3><strong><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Lời kết:</span></span></strong></h3>\r\n<span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Hướng tới trình cài đặt mục tiêu cho các đối tượng chưa biết, chưa tìm thấy về trình cài đặt. Trong khóa học này, chúng tôi sẽ chỉ tìm hiểu khái niệm cơ bản nhất về lập trình và thực thi trên ngôn ngữ C#.</span></span>', 'Lập trình C#', '', 'inherit', 'closed', 'closed', '', '53-autosave-v1', '', '', '2025-04-04 11:25:27', '2025-04-04 11:25:27', '', 53, 'http://localhost/tintucedu/?p=58', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Đào tạo', 'dao-tao', 0),
(2, 'Tuyển sinh', 'tuyen-sinh', 0),
(3, 'Nghiên cứu', 'nghien-cuu', 0),
(4, 'Hợp tác', 'hop-tac', 0),
(6, 'mainmenu', 'mainmenu', 0),
(7, 'Tin tức', 'tin-tuc', 0),
(8, 'Lập trình', 'lap-trinh', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(9, 6, 0),
(10, 6, 0),
(11, 6, 0),
(12, 6, 0),
(13, 6, 0),
(14, 1, 0),
(19, 1, 0),
(22, 6, 0),
(23, 7, 0),
(26, 7, 0),
(29, 7, 0),
(32, 7, 0),
(35, 7, 0),
(45, 8, 0),
(53, 8, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 2),
(2, 2, 'category', '', 0, 0),
(3, 3, 'category', '', 0, 0),
(4, 4, 'category', '', 0, 0),
(6, 6, 'nav_menu', '', 0, 6),
(7, 7, 'category', '', 0, 5),
(8, 8, 'course_category', '', 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `wp_thim_cache`
--

CREATE TABLE `wp_thim_cache` (
  `key_cache` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `expiration` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_thim_cache`
--

INSERT INTO `wp_thim_cache` (`key_cache`, `value`, `expiration`) VALUES
('learn_press/course/45/total-students-enrolled-or-purchased', '1', '0'),
('learn_press/course/53/total-students-enrolled-or-purchased', '0', '0'),
('learn_press/settings/lp_settings', '{\"learn_press_become_a_teacher_page_id\":\"43\",\"learn_press_check_tables\":\"yes\",\"learn_press_checkout_page_id\":\"38\",\"learn_press_courses_page_id\":\"40\",\"learn_press_currency\":\"VND\",\"learn_press_currency_pos\":\"left\",\"learn_press_decimals_separator\":\".\",\"learn_press_instructors_page_id\":\"41\",\"learn_press_layout_single_course\":\"modern\",\"learn_press_number_of_decimals\":\"2\",\"learn_press_paypal\":{\"paypal_email\":\"thainam2092004@gmail.com\",\"enable\":\"yes\"},\"learn_press_profile_page_id\":\"39\",\"learn_press_single_instructor_page_id\":\"42\",\"learn_press_term_conditions_page_id\":\"44\",\"learn_press_thousands_separator\":\",\"}', '0');

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:2:{s:64:\"c0b96f6e0f9716d8c19ff6202bd4be98ba9b48cef2555f54e640851c2b2de317\";a:4:{s:10:\"expiration\";i:1743298307;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36\";s:5:\"login\";i:1743125507;}s:64:\"2f5672a86d70ea4f54fd9c2c55b6a6bbc742da02af01f25cc9a5e3b3211bbe88\";a:4:{s:10:\"expiration\";i:1744335111;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36\";s:5:\"login\";i:1743125511;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '5'),
(18, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(19, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:12:\"add-post_tag\";i:1;s:15:\"add-post_format\";}'),
(20, 1, 'wp_persisted_preferences', 'a:5:{s:4:\"core\";a:4:{s:26:\"isComplementaryAreaVisible\";b:1;s:15:\"distractionFree\";b:0;s:12:\"fixedToolbar\";b:0;s:10:\"openPanels\";a:2:{i:0;s:11:\"post-status\";i:1;s:23:\"taxonomy-panel-category\";}}s:9:\"_modified\";s:24:\"2025-03-28T02:09:25.035Z\";s:14:\"core/edit-post\";a:2:{s:12:\"welcomeGuide\";b:0;s:23:\"metaBoxesMainOpenHeight\";i:155;}s:17:\"core/edit-widgets\";a:2:{s:26:\"isComplementaryAreaVisible\";b:1;s:12:\"welcomeGuide\";b:0;}s:22:\"core/customize-widgets\";a:1:{s:12:\"welcomeGuide\";b:0;}}'),
(21, 1, 'wp_user-settings', 'libraryContent=browse&editor=tinymce'),
(22, 1, 'wp_user-settings-time', '1743765187'),
(23, 1, 'nav_menu_recently_edited', '6'),
(24, 1, 'manageedit-lp_questioncolumnshidden', 'a:1:{i:0;s:21:\"taxonomy-question-tag\";}'),
(25, 1, 'meta-box-order_lp_course', 'a:3:{s:4:\"side\";s:9:\"submitdiv\";s:6:\"normal\";s:152:\"postimagediv,course_categorydiv,tagsdiv-course_tag,course-settings,course-editor,postexcerpt,commentstatusdiv,commentsdiv,slugdiv,authordiv,revisionsdiv\";s:8:\"advanced\";s:0:\"\";}'),
(26, 1, 'screen_layout_lp_course', '2'),
(27, 1, 'closedpostboxes_lp_course', 'a:2:{i:0;s:18:\"tagsdiv-course_tag\";i:1;s:11:\"postexcerpt\";}'),
(28, 1, 'metaboxhidden_lp_course', 'a:1:{i:0;s:7:\"slugdiv\";}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BDh1iSx68NJlrICaxK8PxNSSN.pN8a0', 'admin', 'n1@gmail.com', 'http://localhost/tintucedu', '2025-03-28 01:31:27', '', 0, 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_learnpress_courses`
--
ALTER TABLE `wp_learnpress_courses`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_title` (`post_title`(191)),
  ADD KEY `post_status` (`post_status`),
  ADD KEY `post_name` (`post_name`),
  ADD KEY `id_status` (`ID`,`post_status`);

--
-- Indexes for table `wp_learnpress_files`
--
ALTER TABLE `wp_learnpress_files`
  ADD PRIMARY KEY (`file_id`),
  ADD KEY `file_name` (`file_name`),
  ADD KEY `item_id` (`item_id`),
  ADD KEY `item_type` (`item_type`);

--
-- Indexes for table `wp_learnpress_order_itemmeta`
--
ALTER TABLE `wp_learnpress_order_itemmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `learnpress_order_item_id` (`learnpress_order_item_id`),
  ADD KEY `meta_key` (`meta_key`(191)),
  ADD KEY `meta_value` (`meta_value`(191));

--
-- Indexes for table `wp_learnpress_order_items`
--
ALTER TABLE `wp_learnpress_order_items`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `item_id` (`item_id`),
  ADD KEY `item_type` (`item_type`);

--
-- Indexes for table `wp_learnpress_question_answermeta`
--
ALTER TABLE `wp_learnpress_question_answermeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `question_answer_meta` (`learnpress_question_answer_id`,`meta_key`(150));

--
-- Indexes for table `wp_learnpress_question_answers`
--
ALTER TABLE `wp_learnpress_question_answers`
  ADD PRIMARY KEY (`question_answer_id`),
  ADD KEY `question_id` (`question_id`);

--
-- Indexes for table `wp_learnpress_quiz_questions`
--
ALTER TABLE `wp_learnpress_quiz_questions`
  ADD PRIMARY KEY (`quiz_question_id`),
  ADD KEY `quiz_id` (`quiz_id`),
  ADD KEY `question_id` (`question_id`);

--
-- Indexes for table `wp_learnpress_sections`
--
ALTER TABLE `wp_learnpress_sections`
  ADD PRIMARY KEY (`section_id`),
  ADD KEY `section_course_id` (`section_course_id`);

--
-- Indexes for table `wp_learnpress_section_items`
--
ALTER TABLE `wp_learnpress_section_items`
  ADD PRIMARY KEY (`section_item_id`),
  ADD KEY `section_item` (`section_id`,`item_id`);

--
-- Indexes for table `wp_learnpress_sessions`
--
ALTER TABLE `wp_learnpress_sessions`
  ADD PRIMARY KEY (`session_key`),
  ADD UNIQUE KEY `session_id` (`session_id`);

--
-- Indexes for table `wp_learnpress_user_itemmeta`
--
ALTER TABLE `wp_learnpress_user_itemmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `learnpress_user_item_id` (`learnpress_user_item_id`),
  ADD KEY `meta_key` (`meta_key`(191)),
  ADD KEY `meta_value` (`meta_value`(191));

--
-- Indexes for table `wp_learnpress_user_items`
--
ALTER TABLE `wp_learnpress_user_items`
  ADD PRIMARY KEY (`user_item_id`),
  ADD KEY `parent_id` (`parent_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `item_id` (`item_id`),
  ADD KEY `item_type` (`item_type`),
  ADD KEY `ref_id` (`ref_id`),
  ADD KEY `ref_type` (`ref_type`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `wp_learnpress_user_item_results`
--
ALTER TABLE `wp_learnpress_user_item_results`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_item_id` (`user_item_id`);

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_thim_cache`
--
ALTER TABLE `wp_thim_cache`
  ADD PRIMARY KEY (`key_cache`),
  ADD UNIQUE KEY `key_cache` (`key_cache`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_learnpress_files`
--
ALTER TABLE `wp_learnpress_files`
  MODIFY `file_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_learnpress_order_itemmeta`
--
ALTER TABLE `wp_learnpress_order_itemmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `wp_learnpress_order_items`
--
ALTER TABLE `wp_learnpress_order_items`
  MODIFY `order_item_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_learnpress_question_answermeta`
--
ALTER TABLE `wp_learnpress_question_answermeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_learnpress_question_answers`
--
ALTER TABLE `wp_learnpress_question_answers`
  MODIFY `question_answer_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_learnpress_quiz_questions`
--
ALTER TABLE `wp_learnpress_quiz_questions`
  MODIFY `quiz_question_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_learnpress_sections`
--
ALTER TABLE `wp_learnpress_sections`
  MODIFY `section_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_learnpress_section_items`
--
ALTER TABLE `wp_learnpress_section_items`
  MODIFY `section_item_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_learnpress_sessions`
--
ALTER TABLE `wp_learnpress_sessions`
  MODIFY `session_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_learnpress_user_itemmeta`
--
ALTER TABLE `wp_learnpress_user_itemmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_learnpress_user_items`
--
ALTER TABLE `wp_learnpress_user_items`
  MODIFY `user_item_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_learnpress_user_item_results`
--
ALTER TABLE `wp_learnpress_user_item_results`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=304;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=215;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
