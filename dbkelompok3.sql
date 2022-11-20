-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 21, 2022 at 07:16 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbkelompok3`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add post', 7, 'add_post'),
(26, 'Can change post', 7, 'change_post'),
(27, 'Can delete post', 7, 'delete_post'),
(28, 'Can view post', 7, 'view_post'),
(29, 'Can add guest', 8, 'add_guest'),
(30, 'Can change guest', 8, 'change_guest'),
(31, 'Can delete guest', 8, 'delete_guest'),
(32, 'Can view guest', 8, 'view_guest'),
(33, 'Can add kategori', 9, 'add_kategori'),
(34, 'Can change kategori', 9, 'change_kategori'),
(35, 'Can delete kategori', 9, 'delete_kategori'),
(36, 'Can view kategori', 9, 'view_kategori');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$390000$4yJjOVEJSQD2EGPuIQ0GS4$cITw3oc3perT9oQsTToDto2oaQXDZ2/AC0GkBL77Nes=', '2022-11-21 03:56:02.697151', 1, 'asri', '', '', 'asri@gmail.com', 1, 1, '2022-11-21 03:53:41.144415'),
(2, 'pbkdf2_sha256$390000$CD0nka4HNtr3a760ig017m$XZHnzLhbiX7lLuqC+LpNVDjkNoKpz9WY7t6wyViF5HQ=', NULL, 1, 'lusi', '', '', 'lusi@gmail.com', 1, 1, '2022-11-21 03:54:07.166687'),
(3, 'pbkdf2_sha256$390000$fatIWb6H7ENPlPz8fUEBkU$cxfNQS9xV+gEizBeti9S+gny2+i11oTF4WB2SuEdIfI=', NULL, 1, 'baharun', '', '', 'baharun@gmail.com', 1, 1, '2022-11-21 03:54:29.206785'),
(4, 'pbkdf2_sha256$390000$YFFw4wocUkHtvFzOGCiNV7$l5L4ajR3KyOETv59qLwt3zRn8kZcT5EWZa8FovqiYms=', NULL, 1, 'rika', '', '', 'rika@gmail.com', 1, 1, '2022-11-21 03:54:50.537542'),
(5, 'pbkdf2_sha256$390000$qvoLUhUAD45GsUIHY8NeHn$k1k5bNW+x0+Q6b8N9SSrdLwpH+iTQ39+CIYPQIE8sDE=', NULL, 1, 'reynal', '', '', 'reynal@gmail.com', 1, 1, '2022-11-21 03:55:23.367700');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2022-11-21 04:11:30.577161', '1', 'Post object (1)', 1, '[{\"added\": {}}]', 7, 1),
(2, '2022-11-21 04:12:03.570893', '2', 'Post object (2)', 1, '[{\"added\": {}}]', 7, 1),
(3, '2022-11-21 06:04:04.010355', '1', 'Bahasa Pemrograman', 1, '[{\"added\": {}}]', 9, 1),
(4, '2022-11-21 06:04:16.250431', '2', 'Bahasa Indonesia', 1, '[{\"added\": {}}]', 9, 1),
(5, '2022-11-21 06:07:29.654680', '2', 'Sains Data', 2, '[{\"changed\": {\"fields\": [\"Kategori\"]}}]', 7, 1),
(6, '2022-11-21 06:07:36.281062', '1', 'Pemrograman Python', 2, '[{\"changed\": {\"fields\": [\"Kategori\"]}}]', 7, 1),
(7, '2022-11-21 06:08:09.905223', '3', 'Kalkulus', 1, '[{\"added\": {}}]', 7, 1),
(8, '2022-11-21 06:12:17.405539', '3', 'Kalkulus', 2, '[]', 7, 1),
(9, '2022-11-21 06:12:24.452799', '3', 'Kalkulus', 2, '[]', 7, 1),
(10, '2022-11-21 06:12:27.931641', '2', 'Sains Data', 2, '[]', 7, 1),
(11, '2022-11-21 06:12:31.705640', '1', 'Pemrograman Python', 2, '[]', 7, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(8, 'mahasiswa', 'guest'),
(9, 'Mk', 'kategori'),
(7, 'Mk', 'post'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-11-21 03:50:34.462986'),
(2, 'auth', '0001_initial', '2022-11-21 03:50:35.040925'),
(3, 'admin', '0001_initial', '2022-11-21 03:50:35.197125'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-11-21 03:50:35.212747'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-11-21 03:50:35.259651'),
(6, 'contenttypes', '0002_remove_content_type_name', '2022-11-21 03:50:35.368946'),
(7, 'auth', '0002_alter_permission_name_max_length', '2022-11-21 03:50:35.415805'),
(8, 'auth', '0003_alter_user_email_max_length', '2022-11-21 03:50:35.447049'),
(9, 'auth', '0004_alter_user_username_opts', '2022-11-21 03:50:35.462665'),
(10, 'auth', '0005_alter_user_last_login_null', '2022-11-21 03:50:35.525145'),
(11, 'auth', '0006_require_contenttypes_0002', '2022-11-21 03:50:35.525145'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2022-11-21 03:50:35.540764'),
(13, 'auth', '0008_alter_user_username_max_length', '2022-11-21 03:50:35.572005'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2022-11-21 03:50:35.603286'),
(15, 'auth', '0010_alter_group_name_max_length', '2022-11-21 03:50:35.634486'),
(16, 'auth', '0011_update_proxy_permissions', '2022-11-21 03:50:35.650105'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2022-11-21 03:50:35.681348'),
(18, 'sessions', '0001_initial', '2022-11-21 03:50:35.728206'),
(19, 'Mk', '0001_initial', '2022-11-21 04:03:37.621447'),
(20, 'mahasiswa', '0001_initial', '2022-11-21 05:28:40.664439'),
(21, 'Mk', '0002_kategori', '2022-11-21 05:59:29.754114'),
(22, 'Mk', '0003_post_kategori', '2022-11-21 06:06:07.044196');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('gya3404mlscw3a8pr0z6jnxztj89noyw', '.eJxVjMsOwiAQRf-FtSFTyjDUpXu_oRkGkKqBpI-V8d-1SRe6veec-1Ijb2sZtyXN4xTVWXXq9LsFlkeqO4h3rrempdV1noLeFX3QRV9bTM_L4f4dFF7Kt5be-SEl52HATOQ7AIaE0YFkIDKCA2HIEix3PhCilR6cIY-QLVij3h_G0za8:1owxuc:FnD53uv4mhqjE0e1ngzqm6rH3dGo9OAIvXcJV8AjEA4', '2022-12-05 03:56:02.705247');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa_guest`
--

CREATE TABLE `mahasiswa_guest` (
  `id` bigint(20) NOT NULL,
  `nim` varchar(10) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `kegiatan` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mahasiswa_guest`
--

INSERT INTO `mahasiswa_guest` (`id`, `nim`, `nama`, `kegiatan`) VALUES
(1, '1901013034', 'Asri Ramdani', 'Membaca'),
(2, '1901013036', 'Syifa', 'Membaca');

-- --------------------------------------------------------

--
-- Table structure for table `mk_kategori`
--

CREATE TABLE `mk_kategori` (
  `id` bigint(20) NOT NULL,
  `kategori` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mk_kategori`
--

INSERT INTO `mk_kategori` (`id`, `kategori`) VALUES
(1, 'Bahasa Pemrograman'),
(2, 'Bahasa Indonesia');

-- --------------------------------------------------------

--
-- Table structure for table `mk_post`
--

CREATE TABLE `mk_post` (
  `id` bigint(20) NOT NULL,
  `nama_mk` varchar(255) NOT NULL,
  `deskripsi` longtext NOT NULL,
  `kategori_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mk_post`
--

INSERT INTO `mk_post` (`id`, `nama_mk`, `deskripsi`, `kategori_id`) VALUES
(1, 'Pemrograman Python', 'Merupakan salah satu mata kuliah wajib', 1),
(2, 'Sains Data', 'Merupakan mata kuliah Wajib', 2),
(3, 'Kalkulus', 'Berhitung', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `mahasiswa_guest`
--
ALTER TABLE `mahasiswa_guest`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mk_kategori`
--
ALTER TABLE `mk_kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mk_post`
--
ALTER TABLE `mk_post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Mk_post_kategori_id_1fd1c8b9_fk_Mk_kategori_id` (`kategori_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `mahasiswa_guest`
--
ALTER TABLE `mahasiswa_guest`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mk_kategori`
--
ALTER TABLE `mk_kategori`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mk_post`
--
ALTER TABLE `mk_post`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `mk_post`
--
ALTER TABLE `mk_post`
  ADD CONSTRAINT `Mk_post_kategori_id_1fd1c8b9_fk_Mk_kategori_id` FOREIGN KEY (`kategori_id`) REFERENCES `mk_kategori` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
