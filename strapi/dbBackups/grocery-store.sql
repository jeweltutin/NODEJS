-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 19, 2025 at 11:55 AM
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
-- Database: `grocery-store`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_pages`
--

CREATE TABLE `about_pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_id` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `body` longtext DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `about_pages`
--

INSERT INTO `about_pages` (`id`, `document_id`, `title`, `body`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`, `locale`) VALUES
(1, 'fnealcxgaj8kerdp1mjwi4dz', NULL, '  \n**What is Lorem Ipsum?**\n\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n\n**Why do we use it?**\n\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\n\n', '2024-11-18 16:59:14.068000', '2024-11-19 10:09:41.715000', NULL, 1, 1, NULL),
(7, 'fnealcxgaj8kerdp1mjwi4dz', NULL, '  \n**What is Lorem Ipsum?**\n\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n\n**Why do we use it?**\n\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\n\n', '2024-11-18 16:59:14.068000', '2024-11-19 10:09:41.715000', '2024-11-19 10:09:41.769000', 1, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_permissions`
--

CREATE TABLE `admin_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_id` varchar(255) DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `action_parameters` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`action_parameters`)),
  `subject` varchar(255) DEFAULT NULL,
  `properties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`properties`)),
  `conditions` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`conditions`)),
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_permissions`
--

INSERT INTO `admin_permissions` (`id`, `document_id`, `action`, `action_parameters`, `subject`, `properties`, `conditions`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`, `locale`) VALUES
(1, 'xpx482kmolhqaxjnk3i6qjkl', 'plugin::upload.read', '{}', NULL, '{}', '[]', '2024-09-25 13:42:08.491000', '2024-09-25 13:42:08.491000', '2024-09-25 13:42:08.491000', NULL, NULL, NULL),
(2, 'qdh9kw8eu358ri8rusb1y5qa', 'plugin::upload.configure-view', '{}', NULL, '{}', '[]', '2024-09-25 13:42:08.545000', '2024-09-25 13:42:08.545000', '2024-09-25 13:42:08.545000', NULL, NULL, NULL),
(3, 'ld0z2ezg9atgptvyb42kftdy', 'plugin::upload.assets.create', '{}', NULL, '{}', '[]', '2024-09-25 13:42:08.570000', '2024-09-25 13:42:08.570000', '2024-09-25 13:42:08.570000', NULL, NULL, NULL),
(4, 'tqa4dw24r54bsqwps2xf1ycf', 'plugin::upload.assets.update', '{}', NULL, '{}', '[]', '2024-09-25 13:42:08.582000', '2024-09-25 13:42:08.582000', '2024-09-25 13:42:08.582000', NULL, NULL, NULL),
(5, 'd9aawmt8l3qe0iae9vfvxkjn', 'plugin::upload.assets.download', '{}', NULL, '{}', '[]', '2024-09-25 13:42:08.596000', '2024-09-25 13:42:08.596000', '2024-09-25 13:42:08.596000', NULL, NULL, NULL),
(6, 'i817g95ta9qqycudm4jvx9mx', 'plugin::upload.assets.copy-link', '{}', NULL, '{}', '[]', '2024-09-25 13:42:08.609000', '2024-09-25 13:42:08.609000', '2024-09-25 13:42:08.609000', NULL, NULL, NULL),
(7, 'aaswfns72myu0qfqjczpinke', 'plugin::upload.read', '{}', NULL, '{}', '[\"admin::is-creator\"]', '2024-09-25 13:42:08.623000', '2024-09-25 13:42:08.623000', '2024-09-25 13:42:08.624000', NULL, NULL, NULL),
(8, 'ld1owh1lpfrxo3siwopxkl3h', 'plugin::upload.configure-view', '{}', NULL, '{}', '[]', '2024-09-25 13:42:08.635000', '2024-09-25 13:42:08.635000', '2024-09-25 13:42:08.636000', NULL, NULL, NULL),
(9, 'ij0kniwiwtu657odc87hdp0d', 'plugin::upload.assets.create', '{}', NULL, '{}', '[]', '2024-09-25 13:42:08.648000', '2024-09-25 13:42:08.648000', '2024-09-25 13:42:08.648000', NULL, NULL, NULL),
(10, 'rs76zpj0z9pgxy99k159git4', 'plugin::upload.assets.update', '{}', NULL, '{}', '[\"admin::is-creator\"]', '2024-09-25 13:42:08.662000', '2024-09-25 13:42:08.662000', '2024-09-25 13:42:08.663000', NULL, NULL, NULL),
(11, 'apc2bhn8530s7uu7c0m8b375', 'plugin::upload.assets.download', '{}', NULL, '{}', '[]', '2024-09-25 13:42:08.673000', '2024-09-25 13:42:08.673000', '2024-09-25 13:42:08.673000', NULL, NULL, NULL),
(12, 'zdenlzd3tnbydwh0ov2u0shm', 'plugin::upload.assets.copy-link', '{}', NULL, '{}', '[]', '2024-09-25 13:42:08.682000', '2024-09-25 13:42:08.682000', '2024-09-25 13:42:08.683000', NULL, NULL, NULL),
(16, 'pr6dlct5bu033gz4rig32zna', 'plugin::content-manager.explorer.delete', '{}', 'plugin::users-permissions.user', '{}', '[]', '2024-09-25 13:42:08.785000', '2024-09-25 13:42:08.785000', '2024-09-25 13:42:08.785000', NULL, NULL, NULL),
(17, 'nc02s3ut2ylz0m9rzke9okmr', 'plugin::content-manager.explorer.publish', '{}', 'plugin::users-permissions.user', '{}', '[]', '2024-09-25 13:42:08.797000', '2024-09-25 13:42:08.797000', '2024-09-25 13:42:08.797000', NULL, NULL, NULL),
(18, 'xkqarqypovybl5udj9jq03ic', 'plugin::content-manager.single-types.configure-view', '{}', NULL, '{}', '[]', '2024-09-25 13:42:08.808000', '2024-09-25 13:42:08.808000', '2024-09-25 13:42:08.809000', NULL, NULL, NULL),
(19, 'ql32dvrjdmgj6mn2pg0mquq2', 'plugin::content-manager.collection-types.configure-view', '{}', NULL, '{}', '[]', '2024-09-25 13:42:08.821000', '2024-09-25 13:42:08.821000', '2024-09-25 13:42:08.821000', NULL, NULL, NULL),
(20, 'u9lr8tyolqnu34upbwi97o3v', 'plugin::content-manager.components.configure-layout', '{}', NULL, '{}', '[]', '2024-09-25 13:42:08.833000', '2024-09-25 13:42:08.833000', '2024-09-25 13:42:08.833000', NULL, NULL, NULL),
(21, 'cij7omg0exrj0xufj3uhs7av', 'plugin::content-type-builder.read', '{}', NULL, '{}', '[]', '2024-09-25 13:42:08.847000', '2024-09-25 13:42:08.847000', '2024-09-25 13:42:08.847000', NULL, NULL, NULL),
(22, 'bfmhnmavzr3co858u0lxeh29', 'plugin::email.settings.read', '{}', NULL, '{}', '[]', '2024-09-25 13:42:08.876000', '2024-09-25 13:42:08.876000', '2024-09-25 13:42:08.876000', NULL, NULL, NULL),
(23, 'rq43oklkwgf0w7yaajlzcblb', 'plugin::upload.read', '{}', NULL, '{}', '[]', '2024-09-25 13:42:08.888000', '2024-09-25 13:42:08.888000', '2024-09-25 13:42:08.888000', NULL, NULL, NULL),
(24, 'z5b1en1hqqjah3yb8b9wv05a', 'plugin::upload.assets.create', '{}', NULL, '{}', '[]', '2024-09-25 13:42:08.899000', '2024-09-25 13:42:08.899000', '2024-09-25 13:42:08.899000', NULL, NULL, NULL),
(25, 'lxdmd5849ed1syeyizv9vs4k', 'plugin::upload.assets.update', '{}', NULL, '{}', '[]', '2024-09-25 13:42:08.918000', '2024-09-25 13:42:08.918000', '2024-09-25 13:42:08.918000', NULL, NULL, NULL),
(26, 'qsu0n3owtg348mdaennzcxlh', 'plugin::upload.assets.download', '{}', NULL, '{}', '[]', '2024-09-25 13:42:08.939000', '2024-09-25 13:42:08.939000', '2024-09-25 13:42:08.940000', NULL, NULL, NULL),
(27, 'p6m19ob29ktzoy1yvt55v30g', 'plugin::upload.assets.copy-link', '{}', NULL, '{}', '[]', '2024-09-25 13:42:08.950000', '2024-09-25 13:42:08.950000', '2024-09-25 13:42:08.950000', NULL, NULL, NULL),
(28, 'j3ooz6lzvb8lgzka33rzg5t1', 'plugin::upload.configure-view', '{}', NULL, '{}', '[]', '2024-09-25 13:42:08.961000', '2024-09-25 13:42:08.961000', '2024-09-25 13:42:08.961000', NULL, NULL, NULL),
(29, 'ovkn56hc95afl5vr8p5594xr', 'plugin::upload.settings.read', '{}', NULL, '{}', '[]', '2024-09-25 13:42:08.971000', '2024-09-25 13:42:08.971000', '2024-09-25 13:42:08.971000', NULL, NULL, NULL),
(30, 'rb6q8rz7mgcdbkp3fqcm5hq5', 'plugin::i18n.locale.create', '{}', NULL, '{}', '[]', '2024-09-25 13:42:08.981000', '2024-09-25 13:42:08.981000', '2024-09-25 13:42:08.981000', NULL, NULL, NULL),
(31, 'xt233xxoxy5ydo8bx1kj62m6', 'plugin::i18n.locale.read', '{}', NULL, '{}', '[]', '2024-09-25 13:42:08.992000', '2024-09-25 13:42:08.992000', '2024-09-25 13:42:08.992000', NULL, NULL, NULL),
(32, 'h1okczk0buiw3ovdc6phe4ix', 'plugin::i18n.locale.update', '{}', NULL, '{}', '[]', '2024-09-25 13:42:09.005000', '2024-09-25 13:42:09.005000', '2024-09-25 13:42:09.006000', NULL, NULL, NULL),
(33, 'pge6jwm7llndftg7q2w3724w', 'plugin::i18n.locale.delete', '{}', NULL, '{}', '[]', '2024-09-25 13:42:09.017000', '2024-09-25 13:42:09.017000', '2024-09-25 13:42:09.017000', NULL, NULL, NULL),
(34, 'qlzq6662mobbhrrhd7clgo7o', 'plugin::users-permissions.roles.create', '{}', NULL, '{}', '[]', '2024-09-25 13:42:09.055000', '2024-09-25 13:42:09.055000', '2024-09-25 13:42:09.055000', NULL, NULL, NULL),
(35, 'avygdggxd4beyc1x7jytn1c8', 'plugin::users-permissions.roles.read', '{}', NULL, '{}', '[]', '2024-09-25 13:42:09.066000', '2024-09-25 13:42:09.066000', '2024-09-25 13:42:09.066000', NULL, NULL, NULL),
(36, 'hvs5b0rsq8hfy7zietziytol', 'plugin::users-permissions.roles.update', '{}', NULL, '{}', '[]', '2024-09-25 13:42:09.077000', '2024-09-25 13:42:09.077000', '2024-09-25 13:42:09.077000', NULL, NULL, NULL),
(37, 'v7wkgzik1ck8b2kv1d00fu67', 'plugin::users-permissions.roles.delete', '{}', NULL, '{}', '[]', '2024-09-25 13:42:09.088000', '2024-09-25 13:42:09.088000', '2024-09-25 13:42:09.088000', NULL, NULL, NULL),
(38, 'pqrml9ak71npkypcrowhkmo1', 'plugin::users-permissions.providers.read', '{}', NULL, '{}', '[]', '2024-09-25 13:42:09.100000', '2024-09-25 13:42:09.100000', '2024-09-25 13:42:09.100000', NULL, NULL, NULL),
(39, 'fjso15dc43uvlo0g296awsro', 'plugin::users-permissions.providers.update', '{}', NULL, '{}', '[]', '2024-09-25 13:42:09.114000', '2024-09-25 13:42:09.114000', '2024-09-25 13:42:09.114000', NULL, NULL, NULL),
(40, 'leoyv1bpre7m40h85rpa40q7', 'plugin::users-permissions.email-templates.read', '{}', NULL, '{}', '[]', '2024-09-25 13:42:09.126000', '2024-09-25 13:42:09.126000', '2024-09-25 13:42:09.126000', NULL, NULL, NULL),
(41, 'qa7wkl33nt5inu1gncrswkyd', 'plugin::users-permissions.email-templates.update', '{}', NULL, '{}', '[]', '2024-09-25 13:42:09.136000', '2024-09-25 13:42:09.136000', '2024-09-25 13:42:09.136000', NULL, NULL, NULL),
(42, 'g6t9ly3d9fzo9i2eoolas2gu', 'plugin::users-permissions.advanced-settings.read', '{}', NULL, '{}', '[]', '2024-09-25 13:42:09.149000', '2024-09-25 13:42:09.149000', '2024-09-25 13:42:09.150000', NULL, NULL, NULL),
(43, 'ziasv5x3crgnbjjmvlllwk4h', 'plugin::users-permissions.advanced-settings.update', '{}', NULL, '{}', '[]', '2024-09-25 13:42:09.171000', '2024-09-25 13:42:09.171000', '2024-09-25 13:42:09.171000', NULL, NULL, NULL),
(44, 'gey1pg2g91fl9n7cccfy8jvx', 'admin::marketplace.read', '{}', NULL, '{}', '[]', '2024-09-25 13:42:09.197000', '2024-09-25 13:42:09.197000', '2024-09-25 13:42:09.198000', NULL, NULL, NULL),
(45, 'zecwou4qn8rsco1ifcelrwik', 'admin::webhooks.create', '{}', NULL, '{}', '[]', '2024-09-25 13:42:09.216000', '2024-09-25 13:42:09.216000', '2024-09-25 13:42:09.216000', NULL, NULL, NULL),
(46, 'pt3o5kfrho86xfg9tegb1p70', 'admin::webhooks.read', '{}', NULL, '{}', '[]', '2024-09-25 13:42:09.234000', '2024-09-25 13:42:09.234000', '2024-09-25 13:42:09.234000', NULL, NULL, NULL),
(47, 'vhuondlx1s4gm89mwiwmopvv', 'admin::webhooks.update', '{}', NULL, '{}', '[]', '2024-09-25 13:42:09.246000', '2024-09-25 13:42:09.246000', '2024-09-25 13:42:09.246000', NULL, NULL, NULL),
(48, 'fj823solgfin4ghy2zk1h0ub', 'admin::webhooks.delete', '{}', NULL, '{}', '[]', '2024-09-25 13:42:09.257000', '2024-09-25 13:42:09.257000', '2024-09-25 13:42:09.257000', NULL, NULL, NULL),
(49, 'l14kb2runqbluozo2yitn4db', 'admin::users.create', '{}', NULL, '{}', '[]', '2024-09-25 13:42:09.268000', '2024-09-25 13:42:09.268000', '2024-09-25 13:42:09.268000', NULL, NULL, NULL),
(50, 'o6ewrpsqpzku5cz6awzagc57', 'admin::users.read', '{}', NULL, '{}', '[]', '2024-09-25 13:42:09.277000', '2024-09-25 13:42:09.277000', '2024-09-25 13:42:09.277000', NULL, NULL, NULL),
(51, 'tpuoap8v97iw81igboj7kro6', 'admin::users.update', '{}', NULL, '{}', '[]', '2024-09-25 13:42:09.287000', '2024-09-25 13:42:09.287000', '2024-09-25 13:42:09.287000', NULL, NULL, NULL),
(52, 't7jwtamd6oduscpoh64tx2vj', 'admin::users.delete', '{}', NULL, '{}', '[]', '2024-09-25 13:42:09.296000', '2024-09-25 13:42:09.296000', '2024-09-25 13:42:09.296000', NULL, NULL, NULL),
(53, 'c8bkxbay925pa2qk3dcjlzcu', 'admin::roles.create', '{}', NULL, '{}', '[]', '2024-09-25 13:42:09.313000', '2024-09-25 13:42:09.313000', '2024-09-25 13:42:09.314000', NULL, NULL, NULL),
(54, 'st3eejprkecxbjhhx26u1j8d', 'admin::roles.read', '{}', NULL, '{}', '[]', '2024-09-25 13:42:09.330000', '2024-09-25 13:42:09.330000', '2024-09-25 13:42:09.331000', NULL, NULL, NULL),
(55, 'j8cqam06xsaubig3zyiqmttw', 'admin::roles.update', '{}', NULL, '{}', '[]', '2024-09-25 13:42:09.340000', '2024-09-25 13:42:09.340000', '2024-09-25 13:42:09.341000', NULL, NULL, NULL),
(56, 'io4h56oee20amrajkbyd8h5k', 'admin::roles.delete', '{}', NULL, '{}', '[]', '2024-09-25 13:42:09.350000', '2024-09-25 13:42:09.350000', '2024-09-25 13:42:09.350000', NULL, NULL, NULL),
(57, 'ku9qmlnd81qm41wo3vz37454', 'admin::api-tokens.access', '{}', NULL, '{}', '[]', '2024-09-25 13:42:09.359000', '2024-09-25 13:42:09.359000', '2024-09-25 13:42:09.359000', NULL, NULL, NULL),
(58, 't6crkdwsmm72znip6qy20k8u', 'admin::api-tokens.create', '{}', NULL, '{}', '[]', '2024-09-25 13:42:09.368000', '2024-09-25 13:42:09.368000', '2024-09-25 13:42:09.368000', NULL, NULL, NULL),
(59, 'p6apqfu32isffg3myopufpt7', 'admin::api-tokens.read', '{}', NULL, '{}', '[]', '2024-09-25 13:42:09.377000', '2024-09-25 13:42:09.377000', '2024-09-25 13:42:09.377000', NULL, NULL, NULL),
(60, 'v4pa9hrv2o8nccxnhq61ebuz', 'admin::api-tokens.update', '{}', NULL, '{}', '[]', '2024-09-25 13:42:09.388000', '2024-09-25 13:42:09.388000', '2024-09-25 13:42:09.388000', NULL, NULL, NULL),
(61, 'hfehnz5tjg2pl23su82yv96o', 'admin::api-tokens.regenerate', '{}', NULL, '{}', '[]', '2024-09-25 13:42:09.399000', '2024-09-25 13:42:09.399000', '2024-09-25 13:42:09.399000', NULL, NULL, NULL),
(62, 'w9039yfcn62qbqd5flzq94fq', 'admin::api-tokens.delete', '{}', NULL, '{}', '[]', '2024-09-25 13:42:09.410000', '2024-09-25 13:42:09.410000', '2024-09-25 13:42:09.411000', NULL, NULL, NULL),
(63, 'q17bp8ax0phqkl1uqmglbjho', 'admin::project-settings.update', '{}', NULL, '{}', '[]', '2024-09-25 13:42:09.439000', '2024-09-25 13:42:09.439000', '2024-09-25 13:42:09.439000', NULL, NULL, NULL),
(64, 'k51phdu7jrpk3m2j6xabdew7', 'admin::project-settings.read', '{}', NULL, '{}', '[]', '2024-09-25 13:42:09.450000', '2024-09-25 13:42:09.450000', '2024-09-25 13:42:09.450000', NULL, NULL, NULL),
(65, 'cdsl2c8hmet8xddz38aw76cg', 'admin::transfer.tokens.access', '{}', NULL, '{}', '[]', '2024-09-25 13:42:09.461000', '2024-09-25 13:42:09.461000', '2024-09-25 13:42:09.461000', NULL, NULL, NULL),
(66, 'qsgycmxje7hb0f576k74p2vb', 'admin::transfer.tokens.create', '{}', NULL, '{}', '[]', '2024-09-25 13:42:09.472000', '2024-09-25 13:42:09.472000', '2024-09-25 13:42:09.472000', NULL, NULL, NULL),
(67, 't01walav1fkbc5npo041ls0y', 'admin::transfer.tokens.read', '{}', NULL, '{}', '[]', '2024-09-25 13:42:09.482000', '2024-09-25 13:42:09.482000', '2024-09-25 13:42:09.483000', NULL, NULL, NULL),
(68, 'zjdvz1g4gv71kp6z0wp0zx2t', 'admin::transfer.tokens.update', '{}', NULL, '{}', '[]', '2024-09-25 13:42:09.491000', '2024-09-25 13:42:09.491000', '2024-09-25 13:42:09.492000', NULL, NULL, NULL),
(69, 'w3t6agasle6ce8r5j0xqlok6', 'admin::transfer.tokens.regenerate', '{}', NULL, '{}', '[]', '2024-09-25 13:42:09.500000', '2024-09-25 13:42:09.500000', '2024-09-25 13:42:09.500000', NULL, NULL, NULL),
(70, 'tparg3fk4jbkyondj1powwr3', 'admin::transfer.tokens.delete', '{}', NULL, '{}', '[]', '2024-09-25 13:42:09.509000', '2024-09-25 13:42:09.509000', '2024-09-25 13:42:09.510000', NULL, NULL, NULL),
(74, 'i9aav6o49ph27booli6mt291', 'plugin::content-manager.explorer.delete', '{}', 'api::category.category', '{}', '[]', '2024-09-25 14:02:36.296000', '2024-09-25 14:02:36.296000', '2024-09-25 14:02:36.297000', NULL, NULL, NULL),
(75, 'y7d2665t7u9om178ckq6en3n', 'plugin::content-manager.explorer.publish', '{}', 'api::category.category', '{}', '[]', '2024-09-25 14:02:36.335000', '2024-09-25 14:02:36.335000', '2024-09-25 14:02:36.336000', NULL, NULL, NULL),
(76, 'taj7hfh4ps29uehc8vdk9naf', 'plugin::content-manager.explorer.create', '{}', 'api::slider.slider', '{\"fields\":[\"name\",\"image\",\"type\",\"url\"]}', '[]', '2024-09-26 09:38:26.698000', '2024-09-26 09:38:26.698000', '2024-09-26 09:38:26.700000', NULL, NULL, NULL),
(77, 'd23ycs7it3yuqck3tz0tw3yy', 'plugin::content-manager.explorer.read', '{}', 'api::slider.slider', '{\"fields\":[\"name\",\"image\",\"type\",\"url\"]}', '[]', '2024-09-26 09:38:26.714000', '2024-09-26 09:38:26.714000', '2024-09-26 09:38:26.714000', NULL, NULL, NULL),
(78, 'y0va6j9xgvi2gn3nzmlr4po6', 'plugin::content-manager.explorer.update', '{}', 'api::slider.slider', '{\"fields\":[\"name\",\"image\",\"type\",\"url\"]}', '[]', '2024-09-26 09:38:26.726000', '2024-09-26 09:38:26.726000', '2024-09-26 09:38:26.727000', NULL, NULL, NULL),
(79, 'kkzakpsao1nbm27upmmlcznm', 'plugin::content-manager.explorer.delete', '{}', 'api::slider.slider', '{}', '[]', '2024-09-26 09:38:26.738000', '2024-09-26 09:38:26.738000', '2024-09-26 09:38:26.738000', NULL, NULL, NULL),
(80, 't8qouc36563uah80j0knexed', 'plugin::content-manager.explorer.publish', '{}', 'api::slider.slider', '{}', '[]', '2024-09-26 09:38:26.760000', '2024-09-26 09:38:26.760000', '2024-09-26 09:38:26.761000', NULL, NULL, NULL),
(84, 'j3b0oy4c8nbw11dcg6zb08w3', 'plugin::content-manager.explorer.delete', '{}', 'api::product.product', '{}', '[]', '2024-09-26 14:33:30.880000', '2024-09-26 14:33:30.880000', '2024-09-26 14:33:30.880000', NULL, NULL, NULL),
(85, 'w8o9rreqiji3orcyzk6dgqxz', 'plugin::content-manager.explorer.publish', '{}', 'api::product.product', '{}', '[]', '2024-09-26 14:33:30.892000', '2024-09-26 14:33:30.892000', '2024-09-26 14:33:30.892000', NULL, NULL, NULL),
(104, 'z2x0y8fp4f7iuqvzqqp8g3rm', 'plugin::content-manager.explorer.delete', '{}', 'api::user-cart.user-cart', '{}', '[]', '2024-10-02 14:41:34.641000', '2024-10-02 14:41:34.641000', '2024-10-02 14:41:34.641000', NULL, NULL, NULL),
(105, 'ks41d7gs7clnbueao4x16n82', 'plugin::content-manager.explorer.publish', '{}', 'api::user-cart.user-cart', '{}', '[]', '2024-10-02 14:41:34.653000', '2024-10-02 14:41:34.653000', '2024-10-02 14:41:34.653000', NULL, NULL, NULL),
(112, 'zdy7srm1njlg2irih21vyf5m', 'plugin::content-manager.explorer.delete', '{}', 'api::order.order', '{}', '[]', '2024-10-09 12:03:06.098000', '2024-10-09 12:03:06.098000', '2024-10-09 12:03:06.098000', NULL, NULL, NULL),
(113, 'w7ak5tpqmgv2mc5lhgo3opzr', 'plugin::content-manager.explorer.publish', '{}', 'api::order.order', '{}', '[]', '2024-10-09 12:03:06.111000', '2024-10-09 12:03:06.111000', '2024-10-09 12:03:06.111000', NULL, NULL, NULL),
(129, 'vbgjx35w3ee146dk5xshjsdo', 'plugin::content-manager.explorer.create', '{}', 'api::color.color', '{\"fields\":[\"name\",\"code\"]}', '[]', '2024-10-27 17:19:24.937000', '2024-10-27 17:19:24.937000', '2024-10-27 17:19:24.939000', NULL, NULL, NULL),
(130, 'mssiy3ye7hffqdrpzsab0pyp', 'plugin::content-manager.explorer.read', '{}', 'api::color.color', '{\"fields\":[\"name\",\"code\"]}', '[]', '2024-10-27 17:19:24.957000', '2024-10-27 17:19:24.957000', '2024-10-27 17:19:24.958000', NULL, NULL, NULL),
(131, 'unwdkeu446qe4tr44vgfatoi', 'plugin::content-manager.explorer.update', '{}', 'api::color.color', '{\"fields\":[\"name\",\"code\"]}', '[]', '2024-10-27 17:19:24.970000', '2024-10-27 17:19:24.970000', '2024-10-27 17:19:24.971000', NULL, NULL, NULL),
(132, 'xgpoxy717vhxg4f56d1kctvn', 'plugin::content-manager.explorer.delete', '{}', 'api::color.color', '{}', '[]', '2024-10-27 17:19:24.980000', '2024-10-27 17:19:24.980000', '2024-10-27 17:19:24.980000', NULL, NULL, NULL),
(133, 'n36fgzv7zw519ut252d8xdvq', 'plugin::content-manager.explorer.publish', '{}', 'api::color.color', '{}', '[]', '2024-10-27 17:19:24.990000', '2024-10-27 17:19:24.990000', '2024-10-27 17:19:24.991000', NULL, NULL, NULL),
(152, 'x5ud3xug0sz6almol5ji834i', 'plugin::content-manager.explorer.create', '{}', 'api::category.category', '{\"fields\":[\"name\",\"icon\",\"color\",\"products\",\"slug\",\"banner\"]}', '[]', '2024-10-31 10:35:11.833000', '2024-10-31 10:35:11.833000', '2024-10-31 10:35:11.835000', NULL, NULL, NULL),
(153, 'peyzmd28aaeoyxlgmmifw81z', 'plugin::content-manager.explorer.read', '{}', 'api::category.category', '{\"fields\":[\"name\",\"icon\",\"color\",\"products\",\"slug\",\"banner\"]}', '[]', '2024-10-31 10:35:11.850000', '2024-10-31 10:35:11.850000', '2024-10-31 10:35:11.851000', NULL, NULL, NULL),
(154, 'fnb6nhy9o1mzewm8n84d0can', 'plugin::content-manager.explorer.update', '{}', 'api::category.category', '{\"fields\":[\"name\",\"icon\",\"color\",\"products\",\"slug\",\"banner\"]}', '[]', '2024-10-31 10:35:11.864000', '2024-10-31 10:35:11.864000', '2024-10-31 10:35:11.864000', NULL, NULL, NULL),
(155, 'svh5d6ybgrfxtfzkhdane9d8', 'plugin::content-manager.explorer.create', '{}', 'api::brand.brand', '{\"fields\":[\"name\",\"logo\",\"banner\",\"products\",\"slug\"]}', '[]', '2024-11-06 15:52:54.289000', '2024-11-06 15:52:54.289000', '2024-11-06 15:52:54.290000', NULL, NULL, NULL),
(156, 'jme8cb5nqfqkls7fi3l37ckr', 'plugin::content-manager.explorer.read', '{}', 'api::brand.brand', '{\"fields\":[\"name\",\"logo\",\"banner\",\"products\",\"slug\"]}', '[]', '2024-11-06 15:52:54.307000', '2024-11-06 15:52:54.307000', '2024-11-06 15:52:54.309000', NULL, NULL, NULL),
(157, 'sd09xns7t3enbqe73k9riwf7', 'plugin::content-manager.explorer.update', '{}', 'api::brand.brand', '{\"fields\":[\"name\",\"logo\",\"banner\",\"products\",\"slug\"]}', '[]', '2024-11-06 15:52:54.319000', '2024-11-06 15:52:54.319000', '2024-11-06 15:52:54.319000', NULL, NULL, NULL),
(158, 'tshiul7x9tg7qoqk50svrlb6', 'plugin::content-manager.explorer.delete', '{}', 'api::brand.brand', '{}', '[]', '2024-11-06 15:52:54.331000', '2024-11-06 15:52:54.331000', '2024-11-06 15:52:54.331000', NULL, NULL, NULL),
(159, 'wcq6nxfnakao90yfbolvyipk', 'plugin::content-manager.explorer.publish', '{}', 'api::brand.brand', '{}', '[]', '2024-11-06 15:52:54.341000', '2024-11-06 15:52:54.341000', '2024-11-06 15:52:54.341000', NULL, NULL, NULL),
(166, 'cilml6rut6hi1dghfqjjgahl', 'plugin::content-manager.explorer.create', '{}', 'api::order.order', '{\"fields\":[\"username\",\"email\",\"phone\",\"zip\",\"address\",\"totalAmount\",\"userId\",\"paymentId\",\"orderItemList.product\",\"orderItemList.quantity\",\"orderItemList.amount\",\"orderItemList.name\",\"orderItemList.color\",\"orderStatus\",\"subTotal\"]}', '[]', '2024-11-13 15:56:57.506000', '2024-11-13 15:56:57.506000', '2024-11-13 15:56:57.508000', NULL, NULL, NULL),
(167, 'pplhsb5m31rivclqomxaiaxe', 'plugin::content-manager.explorer.read', '{}', 'api::order.order', '{\"fields\":[\"username\",\"email\",\"phone\",\"zip\",\"address\",\"totalAmount\",\"userId\",\"paymentId\",\"orderItemList.product\",\"orderItemList.quantity\",\"orderItemList.amount\",\"orderItemList.name\",\"orderItemList.color\",\"orderStatus\",\"subTotal\"]}', '[]', '2024-11-13 15:56:57.521000', '2024-11-13 15:56:57.521000', '2024-11-13 15:56:57.523000', NULL, NULL, NULL),
(168, 'jyie85wo2evf9rtzf36p6yo3', 'plugin::content-manager.explorer.update', '{}', 'api::order.order', '{\"fields\":[\"username\",\"email\",\"phone\",\"zip\",\"address\",\"totalAmount\",\"userId\",\"paymentId\",\"orderItemList.product\",\"orderItemList.quantity\",\"orderItemList.amount\",\"orderItemList.name\",\"orderItemList.color\",\"orderStatus\",\"subTotal\"]}', '[]', '2024-11-13 15:56:57.532000', '2024-11-13 15:56:57.532000', '2024-11-13 15:56:57.532000', NULL, NULL, NULL),
(169, 'kxnn7xe1gyobvfldy1n7vdy8', 'plugin::content-manager.explorer.create', '{}', 'api::user-cart.user-cart', '{\"fields\":[\"quantity\",\"amount\",\"products\",\"users_permissions_user\",\"userId\",\"productId\",\"color\",\"stock\"]}', '[]', '2024-11-13 15:57:50.408000', '2024-11-13 15:57:50.408000', '2024-11-13 15:57:50.410000', NULL, NULL, NULL),
(170, 'ti4pt8pegj8rhmrge2rrkraz', 'plugin::content-manager.explorer.read', '{}', 'api::user-cart.user-cart', '{\"fields\":[\"quantity\",\"amount\",\"products\",\"users_permissions_user\",\"userId\",\"productId\",\"color\",\"stock\"]}', '[]', '2024-11-13 15:57:50.422000', '2024-11-13 15:57:50.422000', '2024-11-13 15:57:50.423000', NULL, NULL, NULL),
(171, 'htojn85lglj52hit41ws6o4l', 'plugin::content-manager.explorer.update', '{}', 'api::user-cart.user-cart', '{\"fields\":[\"quantity\",\"amount\",\"products\",\"users_permissions_user\",\"userId\",\"productId\",\"color\",\"stock\"]}', '[]', '2024-11-13 15:57:50.432000', '2024-11-13 15:57:50.432000', '2024-11-13 15:57:50.433000', NULL, NULL, NULL),
(175, 'tc9mt2d2dz4wrqrpgsdvje9g', 'plugin::content-manager.explorer.delete', '{}', 'api::about-page.about-page', '{}', '[]', '2024-11-18 16:52:43.762000', '2024-11-18 16:52:43.762000', '2024-11-18 16:52:43.763000', NULL, NULL, NULL),
(176, 'iosl26m2ccm3sm2qq7ys0huh', 'plugin::content-manager.explorer.publish', '{}', 'api::about-page.about-page', '{}', '[]', '2024-11-18 16:52:43.784000', '2024-11-18 16:52:43.784000', '2024-11-18 16:52:43.785000', NULL, NULL, NULL),
(192, 'oma572udlk6172onhu53wu79', 'plugin::content-manager.explorer.create', '{}', 'api::about-page.about-page', '{\"fields\":[\"title\",\"banner\",\"body\"]}', '[]', '2024-11-25 11:59:02.246000', '2024-11-25 11:59:02.246000', '2024-11-25 11:59:02.248000', NULL, NULL, NULL),
(193, 'jcmzb9oedrpj0nxzi2nhj1rm', 'plugin::content-manager.explorer.read', '{}', 'api::about-page.about-page', '{\"fields\":[\"title\",\"banner\",\"body\"]}', '[]', '2024-11-25 11:59:02.265000', '2024-11-25 11:59:02.265000', '2024-11-25 11:59:02.265000', NULL, NULL, NULL),
(194, 'veetfjla4uxu9sdyl8nvb71k', 'plugin::content-manager.explorer.update', '{}', 'api::about-page.about-page', '{\"fields\":[\"title\",\"banner\",\"body\"]}', '[]', '2024-11-25 11:59:02.275000', '2024-11-25 11:59:02.275000', '2024-11-25 11:59:02.276000', NULL, NULL, NULL),
(195, 'ls72fensth89cqi8hz1nm2tg', 'plugin::content-manager.explorer.create', '{}', 'plugin::users-permissions.user', '{\"fields\":[\"username\",\"email\",\"provider\",\"password\",\"resetPasswordToken\",\"confirmationToken\",\"confirmed\",\"blocked\",\"role\",\"mobile\",\"name\",\"about\",\"profileImageOff\",\"profileImage\"]}', '[]', '2024-11-25 12:00:11.654000', '2024-11-25 12:00:11.654000', '2024-11-25 12:00:11.655000', NULL, NULL, NULL),
(196, 'jh2kdbboewh6s2npsuwmji3h', 'plugin::content-manager.explorer.read', '{}', 'plugin::users-permissions.user', '{\"fields\":[\"username\",\"email\",\"provider\",\"password\",\"resetPasswordToken\",\"confirmationToken\",\"confirmed\",\"blocked\",\"role\",\"mobile\",\"name\",\"about\",\"profileImageOff\",\"profileImage\"]}', '[]', '2024-11-25 12:00:11.670000', '2024-11-25 12:00:11.670000', '2024-11-25 12:00:11.670000', NULL, NULL, NULL),
(197, 'jbn4z6vny58f0yjqpnui8f89', 'plugin::content-manager.explorer.update', '{}', 'plugin::users-permissions.user', '{\"fields\":[\"username\",\"email\",\"provider\",\"password\",\"resetPasswordToken\",\"confirmationToken\",\"confirmed\",\"blocked\",\"role\",\"mobile\",\"name\",\"about\",\"profileImageOff\",\"profileImage\"]}', '[]', '2024-11-25 12:00:11.685000', '2024-11-25 12:00:11.685000', '2024-11-25 12:00:11.685000', NULL, NULL, NULL),
(198, 'nqawohv5tyjcozzfa6qjqauh', 'plugin::content-manager.explorer.create', '{}', 'api::product.product', '{\"fields\":[\"name\",\"description\",\"mrp\",\"sellingPrice\",\"itemQuantityType\",\"slug\",\"images\",\"categories\",\"stock\",\"colors\",\"brand\",\"details\",\"warranty\",\"wishlists\"]}', '[]', '2025-02-25 16:02:21.542000', '2025-02-25 16:02:21.542000', '2025-02-25 16:02:21.543000', NULL, NULL, NULL),
(199, 'u1y1wusk04kexyh24fv3afq0', 'plugin::content-manager.explorer.create', '{}', 'api::wishlist.wishlist', '{\"fields\":[\"users_permissions_user\",\"products\"]}', '[]', '2025-02-25 16:02:21.558000', '2025-02-25 16:02:21.558000', '2025-02-25 16:02:21.558000', NULL, NULL, NULL),
(200, 'phefhov32liz8df0b6l43h6p', 'plugin::content-manager.explorer.read', '{}', 'api::product.product', '{\"fields\":[\"name\",\"description\",\"mrp\",\"sellingPrice\",\"itemQuantityType\",\"slug\",\"images\",\"categories\",\"stock\",\"colors\",\"brand\",\"details\",\"warranty\",\"wishlists\"]}', '[]', '2025-02-25 16:02:21.570000', '2025-02-25 16:02:21.570000', '2025-02-25 16:02:21.570000', NULL, NULL, NULL),
(201, 'iufpqlzulck3irs3jj8f5jrf', 'plugin::content-manager.explorer.read', '{}', 'api::wishlist.wishlist', '{\"fields\":[\"users_permissions_user\",\"products\"]}', '[]', '2025-02-25 16:02:21.590000', '2025-02-25 16:02:21.590000', '2025-02-25 16:02:21.591000', NULL, NULL, NULL),
(202, 'znn4zpek610o5s3m8k7e9wba', 'plugin::content-manager.explorer.update', '{}', 'api::product.product', '{\"fields\":[\"name\",\"description\",\"mrp\",\"sellingPrice\",\"itemQuantityType\",\"slug\",\"images\",\"categories\",\"stock\",\"colors\",\"brand\",\"details\",\"warranty\",\"wishlists\"]}', '[]', '2025-02-25 16:02:21.606000', '2025-02-25 16:02:21.606000', '2025-02-25 16:02:21.606000', NULL, NULL, NULL),
(203, 'wdfnxijwmghsmyjgm1ku7bgf', 'plugin::content-manager.explorer.update', '{}', 'api::wishlist.wishlist', '{\"fields\":[\"users_permissions_user\",\"products\"]}', '[]', '2025-02-25 16:02:21.617000', '2025-02-25 16:02:21.617000', '2025-02-25 16:02:21.617000', NULL, NULL, NULL),
(204, 'khayc38dnjb4ynhuc0ezxdoz', 'plugin::content-manager.explorer.delete', '{}', 'api::wishlist.wishlist', '{}', '[]', '2025-02-25 16:02:21.626000', '2025-02-25 16:02:21.626000', '2025-02-25 16:02:21.626000', NULL, NULL, NULL),
(205, 'qti1ncwg533s2c6sy19hh8mc', 'plugin::content-manager.explorer.publish', '{}', 'api::wishlist.wishlist', '{}', '[]', '2025-02-25 16:02:21.635000', '2025-02-25 16:02:21.635000', '2025-02-25 16:02:21.636000', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_permissions_role_lnk`
--

CREATE TABLE `admin_permissions_role_lnk` (
  `id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED DEFAULT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `permission_ord` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_permissions_role_lnk`
--

INSERT INTO `admin_permissions_role_lnk` (`id`, `permission_id`, `role_id`, `permission_ord`) VALUES
(1, 1, 2, 1),
(2, 2, 2, 2),
(3, 3, 2, 3),
(4, 4, 2, 4),
(5, 5, 2, 5),
(6, 6, 2, 6),
(7, 7, 3, 1),
(8, 8, 3, 2),
(9, 9, 3, 3),
(10, 10, 3, 4),
(11, 11, 3, 5),
(12, 12, 3, 6),
(16, 16, 1, 4),
(17, 17, 1, 5),
(18, 18, 1, 6),
(19, 19, 1, 7),
(20, 20, 1, 8),
(21, 21, 1, 9),
(22, 22, 1, 10),
(23, 23, 1, 11),
(24, 24, 1, 12),
(25, 25, 1, 13),
(26, 26, 1, 14),
(27, 27, 1, 15),
(28, 28, 1, 16),
(29, 29, 1, 17),
(30, 30, 1, 18),
(31, 31, 1, 19),
(32, 32, 1, 20),
(33, 33, 1, 21),
(34, 34, 1, 22),
(35, 35, 1, 23),
(36, 36, 1, 24),
(37, 37, 1, 25),
(38, 38, 1, 26),
(39, 39, 1, 27),
(40, 40, 1, 28),
(41, 41, 1, 29),
(42, 42, 1, 30),
(43, 43, 1, 31),
(44, 44, 1, 32),
(45, 45, 1, 33),
(46, 46, 1, 34),
(47, 47, 1, 35),
(48, 48, 1, 36),
(49, 49, 1, 37),
(50, 50, 1, 38),
(51, 51, 1, 39),
(52, 52, 1, 40),
(53, 53, 1, 41),
(54, 54, 1, 42),
(55, 55, 1, 43),
(56, 56, 1, 44),
(57, 57, 1, 45),
(58, 58, 1, 46),
(59, 59, 1, 47),
(60, 60, 1, 48),
(61, 61, 1, 49),
(62, 62, 1, 50),
(63, 63, 1, 51),
(64, 64, 1, 52),
(65, 65, 1, 53),
(66, 66, 1, 54),
(67, 67, 1, 55),
(68, 68, 1, 56),
(69, 69, 1, 57),
(70, 70, 1, 58),
(74, 74, 1, 62),
(75, 75, 1, 63),
(76, 76, 1, 64),
(77, 77, 1, 65),
(78, 78, 1, 66),
(79, 79, 1, 67),
(80, 80, 1, 68),
(84, 84, 1, 72),
(85, 85, 1, 73),
(104, 104, 1, 89),
(105, 105, 1, 90),
(112, 112, 1, 97),
(113, 113, 1, 98),
(129, 129, 1, 108),
(130, 130, 1, 109),
(131, 131, 1, 110),
(132, 132, 1, 111),
(133, 133, 1, 112),
(152, 152, 1, 122),
(153, 153, 1, 123),
(154, 154, 1, 124),
(155, 155, 1, 125),
(156, 156, 1, 126),
(157, 157, 1, 127),
(158, 158, 1, 128),
(159, 159, 1, 129),
(166, 166, 1, 133),
(167, 167, 1, 134),
(168, 168, 1, 135),
(169, 169, 1, 136),
(170, 170, 1, 137),
(171, 171, 1, 138),
(175, 175, 1, 142),
(176, 176, 1, 143),
(192, 192, 1, 150),
(193, 193, 1, 151),
(194, 194, 1, 152),
(195, 195, 1, 153),
(196, 196, 1, 154),
(197, 197, 1, 155),
(198, 198, 1, 156),
(199, 199, 1, 157),
(200, 200, 1, 158),
(201, 201, 1, 159),
(202, 202, 1, 160),
(203, 203, 1, 161),
(204, 204, 1, 162),
(205, 205, 1, 163);

-- --------------------------------------------------------

--
-- Table structure for table `admin_roles`
--

CREATE TABLE `admin_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_roles`
--

INSERT INTO `admin_roles` (`id`, `document_id`, `name`, `code`, `description`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`, `locale`) VALUES
(1, 'ya7bcfv8f4c8rokq0mzbi64t', 'Super Admin', 'strapi-super-admin', 'Super Admins can access and manage all features and settings.', '2024-09-25 13:42:08.394000', '2024-09-25 13:42:08.394000', '2024-09-25 13:42:08.395000', NULL, NULL, NULL),
(2, 'f3gaddzqwwc2eczuxdr8m15h', 'Editor', 'strapi-editor', 'Editors can manage and publish contents including those of other users.', '2024-09-25 13:42:08.447000', '2024-09-25 13:42:08.447000', '2024-09-25 13:42:08.447000', NULL, NULL, NULL),
(3, 'gpnzgvy7nul6aqbc3nkatk3o', 'Author', 'strapi-author', 'Authors can manage the content they have created.', '2024-09-25 13:42:08.477000', '2024-09-25 13:42:08.477000', '2024-09-25 13:42:08.478000', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_id` varchar(255) DEFAULT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `reset_password_token` varchar(255) DEFAULT NULL,
  `registration_token` varchar(255) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `blocked` tinyint(1) DEFAULT NULL,
  `prefered_language` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `document_id`, `firstname`, `lastname`, `username`, `email`, `password`, `reset_password_token`, `registration_token`, `is_active`, `blocked`, `prefered_language`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`, `locale`) VALUES
(1, 'tal79txdczntgkjdsk2xsvba', 'Jewel', 'Tutin', NULL, 'jewel@dx360.com.bd', '$2a$10$5GwaGT9qJJGCGM10IgvU/uaFQPejfSBD0TCKljTmhyDPnrTJvjmUO', NULL, NULL, 1, 0, NULL, '2024-09-25 13:50:38.996000', '2024-09-25 13:50:38.996000', '2024-09-25 13:50:38.998000', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_users_roles_lnk`
--

CREATE TABLE `admin_users_roles_lnk` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `role_ord` double UNSIGNED DEFAULT NULL,
  `user_ord` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_users_roles_lnk`
--

INSERT INTO `admin_users_roles_lnk` (`id`, `user_id`, `role_id`, `role_ord`, `user_ord`) VALUES
(1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `document_id`, `name`, `slug`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`, `locale`) VALUES
(1, 'x15lvv190fbwdtkubz6zv5gs', 'No Brand', 'no-brand', '2024-11-06 16:17:06.715000', '2024-11-06 16:17:06.715000', NULL, 1, 1, NULL),
(2, 'x15lvv190fbwdtkubz6zv5gs', 'No Brand', 'no-brand', '2024-11-06 16:17:06.715000', '2024-11-06 16:17:06.715000', '2024-11-06 16:17:06.772000', 1, 1, NULL),
(3, 'qxe8x0dzdgxvtpg0w2b10t7v', 'Boat', 'boat', '2024-11-06 16:17:44.010000', '2024-11-06 16:17:59.893000', NULL, 1, 1, NULL),
(5, 'qxe8x0dzdgxvtpg0w2b10t7v', 'Boat', 'boat', '2024-11-06 16:17:44.010000', '2024-11-06 16:17:59.893000', '2024-11-06 16:17:59.956000', 1, 1, NULL),
(6, 'b2bj49seaz4zlvpu967hun5e', 'Promate', 'promate', '2024-11-06 16:40:15.453000', '2024-11-06 16:40:32.104000', NULL, 1, 1, NULL),
(8, 'b2bj49seaz4zlvpu967hun5e', 'Promate', 'promate', '2024-11-06 16:40:15.453000', '2024-11-06 16:40:32.104000', '2024-11-06 16:40:32.159000', 1, 1, NULL),
(9, 'qo5ulmgxnw0tp3wo0vbwyabh', 'Amazfit', NULL, '2024-11-07 09:48:13.452000', '2024-11-07 09:48:13.452000', NULL, 1, 1, NULL),
(10, 'qo5ulmgxnw0tp3wo0vbwyabh', 'Amazfit', NULL, '2024-11-07 09:48:13.452000', '2024-11-07 09:48:13.452000', '2024-11-07 09:48:13.553000', 1, 1, NULL),
(11, 'alvu4d4i88tkrp6f3w8wefxr', 'Kieslect', NULL, '2024-11-07 09:58:40.651000', '2024-11-07 09:58:40.651000', NULL, 1, 1, NULL),
(12, 'alvu4d4i88tkrp6f3w8wefxr', 'Kieslect', NULL, '2024-11-07 09:58:40.651000', '2024-11-07 09:58:40.651000', '2024-11-07 09:58:40.724000', 1, 1, NULL),
(13, 'syki2je5ztmrle2dpcly5j3m', 'Riversong', NULL, '2024-11-07 10:12:46.583000', '2024-11-07 10:12:46.583000', NULL, 1, 1, NULL),
(14, 'syki2je5ztmrle2dpcly5j3m', 'Riversong', NULL, '2024-11-07 10:12:46.583000', '2024-11-07 10:12:46.583000', '2024-11-07 10:12:46.637000', 1, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `brands_products_lnk`
--

CREATE TABLE `brands_products_lnk` (
  `id` int(10) UNSIGNED NOT NULL,
  `brand_id` int(10) UNSIGNED DEFAULT NULL,
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `product_ord` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `document_id`, `name`, `color`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`, `locale`, `slug`) VALUES
(1, 'e6psd07wddj8ct1exalkjcbs', 'Fruits', NULL, '2024-09-25 14:12:03.161000', '2024-11-05 17:14:59.664000', NULL, 1, 1, NULL, 'fruits'),
(3, 'o3ijst81g10m4t7hx17l292y', 'Vegetables', NULL, '2024-09-25 15:29:49.380000', '2024-11-05 17:15:38.710000', NULL, 1, 1, NULL, 'vegetables'),
(5, 'g8tlrteq6r8tstg94jby1ff0', 'Milk & Juice', NULL, '2024-09-25 15:32:29.023000', '2024-11-05 17:18:15.541000', NULL, 1, 1, NULL, 'milk-and-juice'),
(7, 'zasv52eef3z17kpp5cq3nzzr', 'Personal Care', NULL, '2024-09-25 15:33:36.441000', '2024-11-05 10:13:29.843000', NULL, 1, 1, NULL, 'personal-care'),
(9, 'whyw3fijt8grt90lgt0ku00r', 'Grains', NULL, '2024-09-25 15:34:21.185000', '2024-09-30 13:30:21.454000', NULL, 1, 1, NULL, 'grains'),
(11, 'b0oxiobzz9iluhu5d4jjudsz', 'Chicken & Egg', NULL, '2024-09-25 15:35:02.633000', '2024-11-05 17:21:23.159000', NULL, 1, 1, NULL, 'chicken-and-egg'),
(13, 'ry1eup2cgvtwrs0hvit1vsa1', 'Bakery', NULL, '2024-09-25 15:35:55.260000', '2024-11-05 17:30:41.784000', NULL, 1, 1, NULL, 'bakery'),
(18, 'whyw3fijt8grt90lgt0ku00r', 'Grains', NULL, '2024-09-25 15:34:21.185000', '2024-09-30 13:30:21.454000', '2024-09-30 13:30:21.502000', 1, 1, NULL, 'grains'),
(25, 'zasv52eef3z17kpp5cq3nzzr', 'Personal Care', NULL, '2024-09-25 15:33:36.441000', '2024-11-05 10:13:29.843000', '2024-11-05 10:13:29.958000', 1, 1, NULL, 'personal-care'),
(26, 'e6psd07wddj8ct1exalkjcbs', 'Fruits', NULL, '2024-09-25 14:12:03.161000', '2024-11-05 17:14:59.664000', '2024-11-05 17:14:59.739000', 1, 1, NULL, 'fruits'),
(27, 'o3ijst81g10m4t7hx17l292y', 'Vegetables', NULL, '2024-09-25 15:29:49.380000', '2024-11-05 17:15:38.710000', '2024-11-05 17:15:38.772000', 1, 1, NULL, 'vegetables'),
(28, 'g8tlrteq6r8tstg94jby1ff0', 'Milk & Juice', NULL, '2024-09-25 15:32:29.023000', '2024-11-05 17:18:15.541000', '2024-11-05 17:18:15.607000', 1, 1, NULL, 'milk-and-juice'),
(29, 'b0oxiobzz9iluhu5d4jjudsz', 'Chicken & Egg', NULL, '2024-09-25 15:35:02.633000', '2024-11-05 17:21:23.159000', '2024-11-05 17:21:23.224000', 1, 1, NULL, 'chicken-and-egg'),
(31, 'ry1eup2cgvtwrs0hvit1vsa1', 'Bakery', NULL, '2024-09-25 15:35:55.260000', '2024-11-05 17:30:41.784000', '2024-11-05 17:30:41.845000', 1, 1, NULL, 'bakery'),
(32, 'j5flxkcu2y4qyi9aw4jdyduw', 'Smart Watch', NULL, '2024-11-07 09:31:56.535000', '2024-11-07 09:31:56.535000', NULL, 1, 1, NULL, 'smart-watch'),
(33, 'j5flxkcu2y4qyi9aw4jdyduw', 'Smart Watch', NULL, '2024-11-07 09:31:56.535000', '2024-11-07 09:31:56.535000', '2024-11-07 09:31:56.631000', 1, 1, NULL, 'smart-watch');

-- --------------------------------------------------------

--
-- Table structure for table `colors`
--

CREATE TABLE `colors` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `colors`
--

INSERT INTO `colors` (`id`, `document_id`, `name`, `code`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`, `locale`) VALUES
(1, 'o1ud7sg5tvh8jl6zwh069huo', 'Red', '#FF0000', '2024-10-27 17:23:22.398000', '2024-10-27 17:23:22.398000', NULL, 1, 1, NULL),
(2, 'o1ud7sg5tvh8jl6zwh069huo', 'Red', '#FF0000', '2024-10-27 17:23:22.398000', '2024-10-27 17:23:22.398000', '2024-10-27 17:23:22.436000', 1, 1, NULL),
(3, 't0n4okfr1a5c6jmqxpyjsl9v', 'Green', '#008000', '2024-10-27 17:24:27.702000', '2024-10-27 17:24:27.702000', NULL, 1, 1, NULL),
(4, 't0n4okfr1a5c6jmqxpyjsl9v', 'Green', '#008000', '2024-10-27 17:24:27.702000', '2024-10-27 17:24:27.702000', '2024-10-27 17:24:27.720000', 1, 1, NULL),
(5, 'to11bp4eem3y90twkbso7fp3', 'Yellow', '#FFFF00', '2024-10-27 17:25:17.008000', '2024-10-27 17:25:17.008000', NULL, 1, 1, NULL),
(6, 'to11bp4eem3y90twkbso7fp3', 'Yellow', '#FFFF00', '2024-10-27 17:25:17.008000', '2024-10-27 17:25:17.008000', '2024-10-27 17:25:17.031000', 1, 1, NULL),
(7, 'b0qh1r13oez2ppunn8mg5mlp', 'Black', '#000000', '2024-10-27 17:26:00.060000', '2024-10-27 17:26:00.060000', NULL, 1, 1, NULL),
(8, 'b0qh1r13oez2ppunn8mg5mlp', 'Black', '#000000', '2024-10-27 17:26:00.060000', '2024-10-27 17:26:00.060000', '2024-10-27 17:26:00.080000', 1, 1, NULL),
(9, 'hzp3kos61yhftckpsnb830e2', 'Blue', '#0000FF', '2024-10-27 17:27:14.392000', '2024-10-27 17:27:14.392000', NULL, 1, 1, NULL),
(10, 'hzp3kos61yhftckpsnb830e2', 'Blue', '#0000FF', '2024-10-27 17:27:14.392000', '2024-10-27 17:27:14.392000', '2024-10-27 17:27:14.415000', 1, 1, NULL),
(11, 'pd48ucc99yckpt1a39pwji59', 'Light green', '#90EE90', '2024-10-27 17:28:27.044000', '2024-10-27 17:28:27.044000', NULL, 1, 1, NULL),
(12, 'pd48ucc99yckpt1a39pwji59', 'Light green', '#90EE90', '2024-10-27 17:28:27.044000', '2024-10-27 17:28:27.044000', '2024-10-27 17:28:27.066000', 1, 1, NULL),
(13, 'd6j1gjmafreuijaubciiqvou', 'Light Pink', '#FFB6C1', '2024-10-29 10:03:46.081000', '2024-10-29 10:04:12.444000', NULL, 1, 1, NULL),
(15, 'd6j1gjmafreuijaubciiqvou', 'Light Pink', '#FFB6C1', '2024-10-29 10:03:46.081000', '2024-10-29 10:04:12.444000', '2024-10-29 10:04:12.480000', 1, 1, NULL),
(16, 'lhjcro1pqxh0ha50v4gzq08i', 'Sky Blue', '#87CEEB', '2024-11-07 09:45:36.290000', '2024-11-07 09:45:36.290000', NULL, 1, 1, NULL),
(17, 'lhjcro1pqxh0ha50v4gzq08i', 'Sky Blue', '#87CEEB', '2024-11-07 09:45:36.290000', '2024-11-07 09:45:36.290000', '2024-11-07 09:45:36.311000', 1, 1, NULL),
(18, 'irhqng3df5ysclv37yzpdzp5', 'Pink', '#ffc0cb', '2024-11-07 09:54:21.123000', '2024-11-07 09:54:21.123000', NULL, 1, 1, NULL),
(19, 'irhqng3df5ysclv37yzpdzp5', 'Pink', '#ffc0cb', '2024-11-07 09:54:21.123000', '2024-11-07 09:54:21.123000', '2024-11-07 09:54:21.155000', 1, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `components_ordered_item_ordered_items`
--

CREATE TABLE `components_ordered_item_ordered_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `components_ordered_item_ordered_items`
--

INSERT INTO `components_ordered_item_ordered_items` (`id`, `quantity`, `amount`, `name`, `color`) VALUES
(39, 2, 80, NULL, NULL),
(40, 1, 70, NULL, NULL),
(41, 1, 45, NULL, NULL),
(42, 1, 450, NULL, NULL),
(43, 1, 160, NULL, NULL),
(44, 1, 600, NULL, NULL),
(45, 1, 75, NULL, NULL),
(53, 2, 80, NULL, NULL),
(54, 1, 70, NULL, NULL),
(55, 1, 45, NULL, NULL),
(56, 1, 450, NULL, NULL),
(57, 1, 160, NULL, NULL),
(58, 1, 600, NULL, NULL),
(59, 1, 75, NULL, NULL),
(67, 2, 80, NULL, NULL),
(68, 1, 70, NULL, NULL),
(69, 1, 45, NULL, NULL),
(70, 1, 450, NULL, NULL),
(71, 1, 160, NULL, NULL),
(72, 1, 600, NULL, NULL),
(73, 1, 75, NULL, NULL),
(81, 2, 80, NULL, NULL),
(82, 1, 70, NULL, NULL),
(83, 1, 45, NULL, NULL),
(84, 1, 450, NULL, NULL),
(85, 1, 160, NULL, NULL),
(86, 1, 600, NULL, NULL),
(87, 1, 75, NULL, NULL),
(109, 2, 80, NULL, NULL),
(110, 1, 70, NULL, NULL),
(111, 1, 45, NULL, NULL),
(112, 1, 450, NULL, NULL),
(113, 1, 160, NULL, NULL),
(114, 1, 600, NULL, NULL),
(115, 1, 75, NULL, NULL),
(123, 1, 600, NULL, NULL),
(124, 2, 320, NULL, NULL),
(131, 1, 40, NULL, NULL),
(132, 1, 70, NULL, NULL),
(135, 1, 40, NULL, NULL),
(136, 1, 45, NULL, NULL),
(139, 2, 80, NULL, NULL),
(140, 1, 70, NULL, NULL),
(141, 1, 45, NULL, NULL),
(142, 1, 450, NULL, NULL),
(143, 1, 160, NULL, NULL),
(144, 1, 600, NULL, NULL),
(145, 1, 75, NULL, NULL),
(146, 1, 40, NULL, NULL),
(147, 1, 70, NULL, NULL),
(148, 2, 80, NULL, NULL),
(149, 1, 70, NULL, NULL),
(150, 1, 45, NULL, NULL),
(151, 1, 450, NULL, NULL),
(152, 1, 160, NULL, NULL),
(153, 1, 600, NULL, NULL),
(154, 1, 75, NULL, NULL),
(155, 1, 600, NULL, NULL),
(156, 2, 320, NULL, NULL),
(157, 2, 80, NULL, NULL),
(158, 1, 70, NULL, NULL),
(159, 1, 45, NULL, NULL),
(160, 1, 450, NULL, NULL),
(161, 1, 160, NULL, NULL),
(162, 1, 600, NULL, NULL),
(163, 1, 75, NULL, NULL),
(164, 2, 80, NULL, NULL),
(165, 1, 70, NULL, NULL),
(166, 1, 45, NULL, NULL),
(167, 1, 450, NULL, NULL),
(168, 1, 160, NULL, NULL),
(169, 1, 600, NULL, NULL),
(170, 1, 75, NULL, NULL),
(171, 2, 80, NULL, NULL),
(172, 1, 70, NULL, NULL),
(173, 1, 45, NULL, NULL),
(174, 1, 450, NULL, NULL),
(175, 1, 160, NULL, NULL),
(176, 1, 600, NULL, NULL),
(177, 1, 75, NULL, NULL),
(178, 2, 90, NULL, NULL),
(179, 3, 210, NULL, NULL),
(180, 1, 40, NULL, NULL),
(181, 1, 450, NULL, NULL),
(182, 2, 90, NULL, NULL),
(183, 3, 210, NULL, NULL),
(184, 1, 40, NULL, NULL),
(185, 1, 450, NULL, NULL),
(186, 1, 40, NULL, NULL),
(187, 2, 90, NULL, NULL),
(188, 1, 40, NULL, NULL),
(189, 2, 90, NULL, NULL),
(190, 1, 40, NULL, NULL),
(191, 1, 45, NULL, NULL),
(192, 1, 110, NULL, NULL),
(194, 1, 110, NULL, NULL),
(227, 1, 45, 'Cauliflower 1 pc', 'Light green'),
(228, 2, 160, 'Dove', 'Light Pink'),
(231, 1, 45, 'Cauliflower 1 pc', 'Yellow'),
(232, 1, 80, 'Dove', 'Light Pink'),
(233, 1, 40, 'Cilantro (2 Pc)', NULL),
(237, 1, 45, 'Cauliflower 1 pc', 'Yellow'),
(238, 1, 80, 'Dove', 'Light Pink'),
(239, 1, 40, 'Cilantro (2 Pc)', NULL),
(240, 1, 45, 'Cauliflower 1 pc', 'Light green'),
(241, 2, 160, 'Dove', 'Light Pink'),
(242, 1, 450, 'Fresh Orange', NULL),
(243, 1, 110, 'Fresh Green Capsicum', NULL),
(244, 1, 450, 'Fresh Orange', NULL),
(245, 1, 110, 'Fresh Green Capsicum', NULL),
(386, 2, 220, 'Fresh Green Capsicum', NULL),
(387, 2, 320, 'Fresh Mango From Rajshahi', 'Green'),
(388, 3, 240, 'Irish Spring', NULL),
(389, 2, 220, 'Fresh Green Capsicum', NULL),
(390, 2, 320, 'Fresh Mango From Rajshahi', 'Green'),
(391, 3, 240, 'Irish Spring', NULL),
(392, 2, 24, 'Egg Loose', NULL),
(393, 1, 90, 'Cauliflower 1 pc', 'Light green'),
(394, 2, 24, 'Egg Loose', NULL),
(395, 1, 90, 'Cauliflower 1 pc', 'Light green');

-- --------------------------------------------------------

--
-- Table structure for table `components_ordered_item_ordered_items_product_lnk`
--

CREATE TABLE `components_ordered_item_ordered_items_product_lnk` (
  `id` int(10) UNSIGNED NOT NULL,
  `ordered_item_id` int(10) UNSIGNED DEFAULT NULL,
  `product_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `components_ordered_item_ordered_items_product_lnk`
--

INSERT INTO `components_ordered_item_ordered_items_product_lnk` (`id`, `ordered_item_id`, `product_id`) VALUES
(21, 39, 116),
(22, 40, 94),
(23, 41, 118),
(24, 42, 102),
(25, 43, 124),
(26, 44, 131),
(27, 45, 135),
(35, 53, 116),
(36, 54, 94),
(37, 55, 118),
(38, 56, 102),
(39, 57, 124),
(40, 58, 131),
(41, 59, 135),
(49, 67, 116),
(50, 68, 94),
(51, 69, 118),
(52, 70, 102),
(53, 71, 124),
(54, 72, 131),
(55, 73, 135),
(63, 81, 116),
(64, 82, 94),
(65, 83, 118),
(66, 84, 102),
(67, 85, 124),
(68, 86, 131),
(69, 87, 135),
(91, 109, 116),
(92, 110, 94),
(93, 111, 118),
(94, 112, 102),
(95, 113, 124),
(96, 114, 131),
(97, 115, 135),
(105, 123, 131),
(106, 124, 124),
(113, 131, 116),
(114, 132, 94),
(117, 135, 116),
(118, 136, 118),
(121, 139, 116),
(122, 140, 94),
(123, 141, 118),
(124, 142, 102),
(125, 143, 124),
(126, 144, 131),
(127, 145, 135),
(128, 146, 116),
(129, 147, 94),
(130, 148, 116),
(131, 149, 94),
(132, 150, 118),
(133, 151, 102),
(134, 152, 124),
(135, 153, 131),
(136, 154, 135),
(137, 155, 131),
(138, 156, 124),
(139, 157, 116),
(140, 158, 94),
(141, 159, 118),
(142, 160, 102),
(143, 161, 124),
(144, 162, 131),
(145, 163, 135),
(146, 164, 116),
(147, 165, 94),
(148, 166, 118),
(149, 167, 102),
(150, 168, 124),
(151, 169, 131),
(152, 170, 135),
(153, 171, 116),
(154, 172, 94),
(155, 173, 118),
(156, 174, 102),
(157, 175, 124),
(158, 176, 131),
(159, 177, 135),
(160, 178, 118),
(161, 179, 94),
(162, 180, 116),
(163, 181, 102),
(164, 182, 118),
(165, 183, 94),
(166, 184, 116),
(167, 185, 102),
(168, 186, 116),
(169, 187, 118),
(170, 188, 116),
(171, 189, 118),
(172, 190, 116),
(173, 191, 118),
(174, 192, 123),
(176, 194, 123),
(209, 227, 118),
(210, 228, 103),
(213, 231, 118),
(214, 232, 103),
(215, 233, 116),
(219, 237, 118),
(220, 238, 103),
(221, 239, 116),
(222, 240, 118),
(223, 241, 103),
(224, 242, 102),
(225, 243, 123),
(226, 244, 102),
(227, 245, 123),
(368, 386, 7),
(369, 387, 9),
(370, 388, 42),
(371, 389, 123),
(372, 390, 124),
(373, 391, 120),
(374, 392, 65),
(375, 393, 1),
(376, 394, 130),
(377, 395, 118);

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `alternative_text` varchar(255) DEFAULT NULL,
  `caption` varchar(255) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `formats` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`formats`)),
  `hash` varchar(255) DEFAULT NULL,
  `ext` varchar(255) DEFAULT NULL,
  `mime` varchar(255) DEFAULT NULL,
  `size` decimal(10,2) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `preview_url` varchar(255) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `provider_metadata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`provider_metadata`)),
  `folder_path` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`id`, `document_id`, `name`, `alternative_text`, `caption`, `width`, `height`, `formats`, `hash`, `ext`, `mime`, `size`, `url`, `preview_url`, `provider`, `provider_metadata`, `folder_path`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`, `locale`) VALUES
(1, 'r1lcm51apa7zlm279bbcwzr5', 'orange.png', NULL, NULL, 512, 512, '{\"thumbnail\":{\"name\":\"thumbnail_orange.png\",\"hash\":\"thumbnail_orange_0c3f56b862\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":156,\"height\":156,\"size\":16.32,\"sizeInBytes\":16317,\"url\":\"/uploads/thumbnail_orange_0c3f56b862.png\"},\"small\":{\"name\":\"small_orange.png\",\"hash\":\"small_orange_0c3f56b862\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":500,\"size\":61.85,\"sizeInBytes\":61854,\"url\":\"/uploads/small_orange_0c3f56b862.png\"}}', 'orange_0c3f56b862', '.png', 'image/png', 8.44, '/uploads/orange_0c3f56b862.png', NULL, 'local', NULL, '/', '2024-09-25 14:11:50.722000', '2024-09-25 14:11:50.722000', '2024-09-25 14:11:50.725000', 1, 1, NULL),
(2, 'clp4i5y8c6z6nzm2b68zeo7j', 'vegetables.png', NULL, NULL, 512, 512, '{\"thumbnail\":{\"name\":\"thumbnail_vegetables.png\",\"hash\":\"thumbnail_vegetables_1b2c01764b\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":156,\"height\":156,\"size\":26.83,\"sizeInBytes\":26831,\"url\":\"/uploads/thumbnail_vegetables_1b2c01764b.png\"},\"small\":{\"name\":\"small_vegetables.png\",\"hash\":\"small_vegetables_1b2c01764b\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":500,\"size\":97.26,\"sizeInBytes\":97263,\"url\":\"/uploads/small_vegetables_1b2c01764b.png\"}}', 'vegetables_1b2c01764b', '.png', 'image/png', 11.94, '/uploads/vegetables_1b2c01764b.png', NULL, 'local', NULL, '/', '2024-09-25 15:29:39.669000', '2024-09-25 15:29:39.669000', '2024-09-25 15:29:39.672000', 1, 1, NULL),
(3, 'ftgxc25lp4uy87jyy5q7bw29', 'milk.png', NULL, NULL, 512, 512, '{\"thumbnail\":{\"name\":\"thumbnail_milk.png\",\"hash\":\"thumbnail_milk_b885eca77f\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":156,\"height\":156,\"size\":12.35,\"sizeInBytes\":12348,\"url\":\"/uploads/thumbnail_milk_b885eca77f.png\"},\"small\":{\"name\":\"small_milk.png\",\"hash\":\"small_milk_b885eca77f\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":500,\"size\":37.91,\"sizeInBytes\":37909,\"url\":\"/uploads/small_milk_b885eca77f.png\"}}', 'milk_b885eca77f', '.png', 'image/png', 5.24, '/uploads/milk_b885eca77f.png', NULL, 'local', NULL, '/', '2024-09-25 15:31:40.711000', '2024-09-25 15:31:40.711000', '2024-09-25 15:31:40.711000', 1, 1, NULL),
(4, 'xxfbmku0b693k39w0iylfw2o', '001_shampoo_f4d431c96b.png', NULL, NULL, 512, 512, '{\"thumbnail\":{\"name\":\"thumbnail_001_shampoo_f4d431c96b.png\",\"hash\":\"thumbnail_001_shampoo_f4d431c96b_8ab0112f58\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":156,\"height\":156,\"size\":11.67,\"sizeInBytes\":11673,\"url\":\"/uploads/thumbnail_001_shampoo_f4d431c96b_8ab0112f58.png\"},\"small\":{\"name\":\"small_001_shampoo_f4d431c96b.png\",\"hash\":\"small_001_shampoo_f4d431c96b_8ab0112f58\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":500,\"size\":41.95,\"sizeInBytes\":41952,\"url\":\"/uploads/small_001_shampoo_f4d431c96b_8ab0112f58.png\"}}', '001_shampoo_f4d431c96b_8ab0112f58', '.png', 'image/png', 5.98, '/uploads/001_shampoo_f4d431c96b_8ab0112f58.png', NULL, 'local', NULL, '/', '2024-09-25 15:32:13.741000', '2024-09-25 15:32:13.741000', '2024-09-25 15:32:13.741000', 1, 1, NULL),
(5, 'e2kpmugtj68mtnrzpigwcvz6', '002_food_9d9b0af2bb.png', NULL, NULL, 512, 512, '{\"thumbnail\":{\"name\":\"thumbnail_002_food_9d9b0af2bb.png\",\"hash\":\"thumbnail_002_food_9d9b0af2bb_fdfa43c629\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":156,\"height\":156,\"size\":19.17,\"sizeInBytes\":19168,\"url\":\"/uploads/thumbnail_002_food_9d9b0af2bb_fdfa43c629.png\"},\"small\":{\"name\":\"small_002_food_9d9b0af2bb.png\",\"hash\":\"small_002_food_9d9b0af2bb_fdfa43c629\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":500,\"size\":75.04,\"sizeInBytes\":75040,\"url\":\"/uploads/small_002_food_9d9b0af2bb_fdfa43c629.png\"}}', '002_food_9d9b0af2bb_fdfa43c629', '.png', 'image/png', 8.84, '/uploads/002_food_9d9b0af2bb_fdfa43c629.png', NULL, 'local', NULL, '/', '2024-09-25 15:32:14.108000', '2024-09-25 15:32:14.108000', '2024-09-25 15:32:14.108000', 1, 1, NULL),
(6, 'egqqbix8kr05acptcydw3wb8', '006_wheat_sack_80f6f0f6db.png', NULL, NULL, 512, 512, '{\"thumbnail\":{\"name\":\"thumbnail_006_wheat_sack_80f6f0f6db.png\",\"hash\":\"thumbnail_006_wheat_sack_80f6f0f6db_aa9fec40b0\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":156,\"height\":156,\"size\":13.19,\"sizeInBytes\":13189,\"url\":\"/uploads/thumbnail_006_wheat_sack_80f6f0f6db_aa9fec40b0.png\"},\"small\":{\"name\":\"small_006_wheat_sack_80f6f0f6db.png\",\"hash\":\"small_006_wheat_sack_80f6f0f6db_aa9fec40b0\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":500,\"size\":55.25,\"sizeInBytes\":55247,\"url\":\"/uploads/small_006_wheat_sack_80f6f0f6db_aa9fec40b0.png\"}}', '006_wheat_sack_80f6f0f6db_aa9fec40b0', '.png', 'image/png', 7.03, '/uploads/006_wheat_sack_80f6f0f6db_aa9fec40b0.png', NULL, 'local', NULL, '/', '2024-09-25 15:32:14.204000', '2024-09-25 15:34:12.112000', '2024-09-25 15:32:14.204000', 1, 1, NULL),
(7, 'ryye2pczfqcpjbbroisglez0', 'basket_5056ef21f0.png', NULL, NULL, 512, 512, '{\"thumbnail\":{\"name\":\"thumbnail_basket_5056ef21f0.png\",\"hash\":\"thumbnail_basket_5056ef21f0_34cc3c6b19\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":156,\"height\":156,\"size\":29.47,\"sizeInBytes\":29472,\"url\":\"/uploads/thumbnail_basket_5056ef21f0_34cc3c6b19.png\"},\"small\":{\"name\":\"small_basket_5056ef21f0.png\",\"hash\":\"small_basket_5056ef21f0_34cc3c6b19\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":500,\"size\":218.42,\"sizeInBytes\":218417,\"url\":\"/uploads/small_basket_5056ef21f0_34cc3c6b19.png\"}}', 'basket_5056ef21f0_34cc3c6b19', '.png', 'image/png', 33.64, '/uploads/basket_5056ef21f0_34cc3c6b19.png', NULL, 'local', NULL, '/', '2024-09-25 15:32:14.265000', '2024-09-25 15:32:14.265000', '2024-09-25 15:32:14.265000', 1, 1, NULL),
(8, 'a2tl27d9c9t9u86bal6bziau', 'flat_design_supermarket_sale_facebook_cover_23_2149362989_bc1b508301.jpg', NULL, NULL, 1800, 833, '{\"thumbnail\":{\"name\":\"thumbnail_flat_design_supermarket_sale_facebook_cover_23_2149362989_bc1b508301.jpg\",\"hash\":\"thumbnail_flat_design_supermarket_sale_facebook_cover_23_2149362989_bc1b508301_2501b7e4be\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":245,\"height\":113,\"size\":6.74,\"sizeInBytes\":6740,\"url\":\"/uploads/thumbnail_flat_design_supermarket_sale_facebook_cover_23_2149362989_bc1b508301_2501b7e4be.jpg\"},\"small\":{\"name\":\"small_flat_design_supermarket_sale_facebook_cover_23_2149362989_bc1b508301.jpg\",\"hash\":\"small_flat_design_supermarket_sale_facebook_cover_23_2149362989_bc1b508301_2501b7e4be\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":500,\"height\":231,\"size\":18.73,\"sizeInBytes\":18729,\"url\":\"/uploads/small_flat_design_supermarket_sale_facebook_cover_23_2149362989_bc1b508301_2501b7e4be.jpg\"},\"medium\":{\"name\":\"medium_flat_design_supermarket_sale_facebook_cover_23_2149362989_bc1b508301.jpg\",\"hash\":\"medium_flat_design_supermarket_sale_facebook_cover_23_2149362989_bc1b508301_2501b7e4be\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":750,\"height\":347,\"size\":32.49,\"sizeInBytes\":32495,\"url\":\"/uploads/medium_flat_design_supermarket_sale_facebook_cover_23_2149362989_bc1b508301_2501b7e4be.jpg\"},\"large\":{\"name\":\"large_flat_design_supermarket_sale_facebook_cover_23_2149362989_bc1b508301.jpg\",\"hash\":\"large_flat_design_supermarket_sale_facebook_cover_23_2149362989_bc1b508301_2501b7e4be\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":1000,\"height\":463,\"size\":46.86,\"sizeInBytes\":46855,\"url\":\"/uploads/large_flat_design_supermarket_sale_facebook_cover_23_2149362989_bc1b508301_2501b7e4be.jpg\"}}', 'flat_design_supermarket_sale_facebook_cover_23_2149362989_bc1b508301_2501b7e4be', '.jpg', 'image/jpeg', 106.52, '/uploads/flat_design_supermarket_sale_facebook_cover_23_2149362989_bc1b508301_2501b7e4be.jpg', NULL, 'local', NULL, '/', '2024-09-26 09:40:12.620000', '2024-09-26 09:40:12.620000', '2024-09-26 09:40:12.623000', 1, 1, NULL),
(9, 'cosaf8w5r8h42u9qjvini1sh', 'banner.png', NULL, NULL, 1667, 617, '{\"thumbnail\":{\"name\":\"thumbnail_banner.png\",\"hash\":\"thumbnail_banner_8fdb779c48\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":245,\"height\":91,\"size\":47.74,\"sizeInBytes\":47736,\"url\":\"/uploads/thumbnail_banner_8fdb779c48.png\"},\"small\":{\"name\":\"small_banner.png\",\"hash\":\"small_banner_8fdb779c48\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":185,\"size\":176.86,\"sizeInBytes\":176859,\"url\":\"/uploads/small_banner_8fdb779c48.png\"},\"medium\":{\"name\":\"medium_banner.png\",\"hash\":\"medium_banner_8fdb779c48\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":750,\"height\":278,\"size\":370.05,\"sizeInBytes\":370052,\"url\":\"/uploads/medium_banner_8fdb779c48.png\"},\"large\":{\"name\":\"large_banner.png\",\"hash\":\"large_banner_8fdb779c48\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":1000,\"height\":370,\"size\":620.28,\"sizeInBytes\":620282,\"url\":\"/uploads/large_banner_8fdb779c48.png\"}}', 'banner_8fdb779c48', '.png', 'image/png', 321.63, '/uploads/banner_8fdb779c48.png', NULL, 'local', NULL, '/', '2024-09-26 09:40:13.337000', '2024-09-26 09:40:13.337000', '2024-09-26 09:40:13.339000', 1, 1, NULL),
(10, 'fqnql69wrr14wiov0j004xdy', 'pngtree-dynamic-red-background-picture-image_149101.jpg', NULL, NULL, 1200, 563, '{\"thumbnail\":{\"name\":\"thumbnail_pngtree-dynamic-red-background-picture-image_149101.jpg\",\"hash\":\"thumbnail_pngtree_dynamic_red_background_picture_image_149101_022fdf99a8\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":245,\"height\":115,\"size\":45.09,\"sizeInBytes\":45089,\"url\":\"/uploads/thumbnail_pngtree_dynamic_red_background_picture_image_149101_022fdf99a8.jpg\"},\"small\":{\"name\":\"small_pngtree-dynamic-red-background-picture-image_149101.jpg\",\"hash\":\"small_pngtree_dynamic_red_background_picture_image_149101_022fdf99a8\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":500,\"height\":235,\"size\":149.4,\"sizeInBytes\":149403,\"url\":\"/uploads/small_pngtree_dynamic_red_background_picture_image_149101_022fdf99a8.jpg\"},\"medium\":{\"name\":\"medium_pngtree-dynamic-red-background-picture-image_149101.jpg\",\"hash\":\"medium_pngtree_dynamic_red_background_picture_image_149101_022fdf99a8\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":750,\"height\":352,\"size\":305.15,\"sizeInBytes\":305146,\"url\":\"/uploads/medium_pngtree_dynamic_red_background_picture_image_149101_022fdf99a8.jpg\"},\"large\":{\"name\":\"large_pngtree-dynamic-red-background-picture-image_149101.jpg\",\"hash\":\"large_pngtree_dynamic_red_background_picture_image_149101_022fdf99a8\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":1000,\"height\":469,\"size\":504.17,\"sizeInBytes\":504170,\"url\":\"/uploads/large_pngtree_dynamic_red_background_picture_image_149101_022fdf99a8.jpg\"}}', 'pngtree_dynamic_red_background_picture_image_149101_022fdf99a8', '.jpg', 'image/jpeg', 164.08, '/uploads/pngtree_dynamic_red_background_picture_image_149101_022fdf99a8.jpg', NULL, 'local', NULL, '/', '2024-09-26 09:44:26.400000', '2024-09-26 09:44:26.400000', '2024-09-26 09:44:26.400000', 1, 1, NULL),
(11, 'jphbm1qr9xa5xyys9x5hd65k', 'images_1_9afed7af04.jpg', NULL, NULL, 205, 205, '{\"thumbnail\":{\"name\":\"thumbnail_images_1_9afed7af04.jpg\",\"hash\":\"thumbnail_images_1_9afed7af04_8c78b9f5d5\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":156,\"height\":156,\"size\":3.97,\"sizeInBytes\":3970,\"url\":\"/uploads/thumbnail_images_1_9afed7af04_8c78b9f5d5.jpg\"}}', 'images_1_9afed7af04_8c78b9f5d5', '.jpg', 'image/jpeg', 5.51, '/uploads/images_1_9afed7af04_8c78b9f5d5.jpg', NULL, 'local', NULL, '/', '2024-09-26 14:46:48.591000', '2024-09-26 14:46:48.591000', '2024-09-26 14:46:48.593000', 1, 1, NULL),
(12, 'b51e2qh6mi5zuuacc3bc8k2c', 'carrot_png_7crm54jnhoaaa46f_24b758a1ec.png', NULL, NULL, 900, 684, '{\"thumbnail\":{\"name\":\"thumbnail_carrot_png_7crm54jnhoaaa46f_24b758a1ec.png\",\"hash\":\"thumbnail_carrot_png_7crm54jnhoaaa46f_24b758a1ec_32ce09d65b\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":205,\"height\":156,\"size\":57.87,\"sizeInBytes\":57871,\"url\":\"/uploads/thumbnail_carrot_png_7crm54jnhoaaa46f_24b758a1ec_32ce09d65b.png\"},\"small\":{\"name\":\"small_carrot_png_7crm54jnhoaaa46f_24b758a1ec.png\",\"hash\":\"small_carrot_png_7crm54jnhoaaa46f_24b758a1ec_32ce09d65b\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":380,\"size\":302.8,\"sizeInBytes\":302801,\"url\":\"/uploads/small_carrot_png_7crm54jnhoaaa46f_24b758a1ec_32ce09d65b.png\"},\"medium\":{\"name\":\"medium_carrot_png_7crm54jnhoaaa46f_24b758a1ec.png\",\"hash\":\"medium_carrot_png_7crm54jnhoaaa46f_24b758a1ec_32ce09d65b\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":750,\"height\":570,\"size\":643.54,\"sizeInBytes\":643537,\"url\":\"/uploads/medium_carrot_png_7crm54jnhoaaa46f_24b758a1ec_32ce09d65b.png\"}}', 'carrot_png_7crm54jnhoaaa46f_24b758a1ec_32ce09d65b', '.png', 'image/png', 157.22, '/uploads/carrot_png_7crm54jnhoaaa46f_24b758a1ec_32ce09d65b.png', NULL, 'local', NULL, '/', '2024-09-26 14:50:47.545000', '2024-09-26 14:50:47.545000', '2024-09-26 14:50:47.546000', 1, 1, NULL),
(13, 'vg41duo5grvwh8hslme5r597', 'fresh_green_capsicum_500x500_881b7e9788.webp', NULL, NULL, 500, 500, '{\"thumbnail\":{\"name\":\"thumbnail_fresh_green_capsicum_500x500_881b7e9788.webp\",\"hash\":\"thumbnail_fresh_green_capsicum_500x500_881b7e9788_8e793e4511\",\"ext\":\".webp\",\"mime\":\"image/webp\",\"path\":null,\"width\":156,\"height\":156,\"size\":4.14,\"sizeInBytes\":4140,\"url\":\"/uploads/thumbnail_fresh_green_capsicum_500x500_881b7e9788_8e793e4511.webp\"}}', 'fresh_green_capsicum_500x500_881b7e9788_8e793e4511', '.webp', 'image/webp', 16.11, '/uploads/fresh_green_capsicum_500x500_881b7e9788_8e793e4511.webp', NULL, 'local', NULL, '/', '2024-09-26 14:50:47.796000', '2024-09-26 14:50:47.796000', '2024-09-26 14:50:47.797000', 1, 1, NULL),
(14, 'xkcjjxj912fmjuxtabfsde1u', 'Maaza_new_600ml_f_5721060a71.webp', NULL, NULL, 234, 700, '{\"thumbnail\":{\"name\":\"thumbnail_Maaza_new_600ml_f_5721060a71.webp\",\"hash\":\"thumbnail_Maaza_new_600ml_f_5721060a71_0652bc3cd6\",\"ext\":\".webp\",\"mime\":\"image/webp\",\"path\":null,\"width\":52,\"height\":156,\"size\":3.13,\"sizeInBytes\":3134,\"url\":\"/uploads/thumbnail_Maaza_new_600ml_f_5721060a71_0652bc3cd6.webp\"},\"small\":{\"name\":\"small_Maaza_new_600ml_f_5721060a71.webp\",\"hash\":\"small_Maaza_new_600ml_f_5721060a71_0652bc3cd6\",\"ext\":\".webp\",\"mime\":\"image/webp\",\"path\":null,\"width\":167,\"height\":500,\"size\":13.04,\"sizeInBytes\":13042,\"url\":\"/uploads/small_Maaza_new_600ml_f_5721060a71_0652bc3cd6.webp\"}}', 'Maaza_new_600ml_f_5721060a71_0652bc3cd6', '.webp', 'image/webp', 20.11, '/uploads/Maaza_new_600ml_f_5721060a71_0652bc3cd6.webp', NULL, 'local', NULL, '/', '2024-09-26 14:50:48.077000', '2024-09-26 14:50:48.077000', '2024-09-26 14:50:48.077000', 1, 1, NULL),
(15, 'es0x38astpgrvrp9g5fi527a', 'Pineapple_Free_Download_PNG_00d6089a14.png', NULL, NULL, 1080, 912, '{\"thumbnail\":{\"name\":\"thumbnail_Pineapple_Free_Download_PNG_00d6089a14.png\",\"hash\":\"thumbnail_Pineapple_Free_Download_PNG_00d6089a14_3359324de6\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":185,\"height\":156,\"size\":26.95,\"sizeInBytes\":26954,\"url\":\"/uploads/thumbnail_Pineapple_Free_Download_PNG_00d6089a14_3359324de6.png\"},\"small\":{\"name\":\"small_Pineapple_Free_Download_PNG_00d6089a14.png\",\"hash\":\"small_Pineapple_Free_Download_PNG_00d6089a14_3359324de6\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":422,\"size\":164.54,\"sizeInBytes\":164536,\"url\":\"/uploads/small_Pineapple_Free_Download_PNG_00d6089a14_3359324de6.png\"},\"medium\":{\"name\":\"medium_Pineapple_Free_Download_PNG_00d6089a14.png\",\"hash\":\"medium_Pineapple_Free_Download_PNG_00d6089a14_3359324de6\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":750,\"height\":633,\"size\":347.07,\"sizeInBytes\":347066,\"url\":\"/uploads/medium_Pineapple_Free_Download_PNG_00d6089a14_3359324de6.png\"},\"large\":{\"name\":\"large_Pineapple_Free_Download_PNG_00d6089a14.png\",\"hash\":\"large_Pineapple_Free_Download_PNG_00d6089a14_3359324de6\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":1000,\"height\":844,\"size\":582.62,\"sizeInBytes\":582616,\"url\":\"/uploads/large_Pineapple_Free_Download_PNG_00d6089a14_3359324de6.png\"}}', 'Pineapple_Free_Download_PNG_00d6089a14_3359324de6', '.png', 'image/png', 137.38, '/uploads/Pineapple_Free_Download_PNG_00d6089a14_3359324de6.png', NULL, 'local', NULL, '/', '2024-09-26 14:50:48.226000', '2024-09-26 14:50:48.226000', '2024-09-26 14:50:48.227000', 1, 1, NULL),
(16, 'h75o5iwtkazdeanuy2oj1ddj', 'coriander_with_ai_generated_free_png_33d0410868.webp', NULL, NULL, 1615, 980, '{\"thumbnail\":{\"name\":\"thumbnail_coriander_with_ai_generated_free_png_33d0410868.webp\",\"hash\":\"thumbnail_coriander_with_ai_generated_free_png_33d0410868_c7b974ef08\",\"ext\":\".webp\",\"mime\":\"image/webp\",\"path\":null,\"width\":245,\"height\":149,\"size\":11.14,\"sizeInBytes\":11136,\"url\":\"/uploads/thumbnail_coriander_with_ai_generated_free_png_33d0410868_c7b974ef08.webp\"},\"medium\":{\"name\":\"medium_coriander_with_ai_generated_free_png_33d0410868.webp\",\"hash\":\"medium_coriander_with_ai_generated_free_png_33d0410868_c7b974ef08\",\"ext\":\".webp\",\"mime\":\"image/webp\",\"path\":null,\"width\":750,\"height\":455,\"size\":53.2,\"sizeInBytes\":53204,\"url\":\"/uploads/medium_coriander_with_ai_generated_free_png_33d0410868_c7b974ef08.webp\"},\"small\":{\"name\":\"small_coriander_with_ai_generated_free_png_33d0410868.webp\",\"hash\":\"small_coriander_with_ai_generated_free_png_33d0410868_c7b974ef08\",\"ext\":\".webp\",\"mime\":\"image/webp\",\"path\":null,\"width\":500,\"height\":303,\"size\":30.03,\"sizeInBytes\":30030,\"url\":\"/uploads/small_coriander_with_ai_generated_free_png_33d0410868_c7b974ef08.webp\"},\"large\":{\"name\":\"large_coriander_with_ai_generated_free_png_33d0410868.webp\",\"hash\":\"large_coriander_with_ai_generated_free_png_33d0410868_c7b974ef08\",\"ext\":\".webp\",\"mime\":\"image/webp\",\"path\":null,\"width\":1000,\"height\":607,\"size\":77.79,\"sizeInBytes\":77788,\"url\":\"/uploads/large_coriander_with_ai_generated_free_png_33d0410868_c7b974ef08.webp\"}}', 'coriander_with_ai_generated_free_png_33d0410868_c7b974ef08', '.webp', 'image/webp', 149.18, '/uploads/coriander_with_ai_generated_free_png_33d0410868_c7b974ef08.webp', NULL, 'local', NULL, '/', '2024-09-26 14:50:49.088000', '2024-09-26 14:50:49.088000', '2024-09-26 14:50:49.088000', 1, 1, NULL),
(17, 'j9ahqfylgn1eaeke7kwg2p0r', 'purepng_com_orange_orangeorangefruitbitter_orangeorangesclip_art_17015273374288pjtg_08c2714871.png', NULL, NULL, 1222, 1061, '{\"thumbnail\":{\"name\":\"thumbnail_purepng_com_orange_orangeorangefruitbitter_orangeorangesclip_art_17015273374288pjtg_08c2714871.png\",\"hash\":\"thumbnail_purepng_com_orange_orangeorangefruitbitter_orangeorangesclip_art_17015273374288pjtg_08c2714871_8125bdfb0f\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":180,\"height\":156,\"size\":49.2,\"sizeInBytes\":49195,\"url\":\"/uploads/thumbnail_purepng_com_orange_orangeorangefruitbitter_orangeorangesclip_art_17015273374288pjtg_08c2714871_8125bdfb0f.png\"},\"small\":{\"name\":\"small_purepng_com_orange_orangeorangefruitbitter_orangeorangesclip_art_17015273374288pjtg_08c2714871.png\",\"hash\":\"small_purepng_com_orange_orangeorangefruitbitter_orangeorangesclip_art_17015273374288pjtg_08c2714871_8125bdfb0f\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":434,\"size\":318.98,\"sizeInBytes\":318984,\"url\":\"/uploads/small_purepng_com_orange_orangeorangefruitbitter_orangeorangesclip_art_17015273374288pjtg_08c2714871_8125bdfb0f.png\"},\"medium\":{\"name\":\"medium_purepng_com_orange_orangeorangefruitbitter_orangeorangesclip_art_17015273374288pjtg_08c2714871.png\",\"hash\":\"medium_purepng_com_orange_orangeorangefruitbitter_orangeorangesclip_art_17015273374288pjtg_08c2714871_8125bdfb0f\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":750,\"height\":651,\"size\":673.79,\"sizeInBytes\":673793,\"url\":\"/uploads/medium_purepng_com_orange_orangeorangefruitbitter_orangeorangesclip_art_17015273374288pjtg_08c2714871_8125bdfb0f.png\"},\"large\":{\"name\":\"large_purepng_com_orange_orangeorangefruitbitter_orangeorangesclip_art_17015273374288pjtg_08c2714871.png\",\"hash\":\"large_purepng_com_orange_orangeorangefruitbitter_orangeorangesclip_art_17015273374288pjtg_08c2714871_8125bdfb0f\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":1000,\"height\":868,\"size\":1141.09,\"sizeInBytes\":1141088,\"url\":\"/uploads/large_purepng_com_orange_orangeorangefruitbitter_orangeorangesclip_art_17015273374288pjtg_08c2714871_8125bdfb0f.png\"}}', 'purepng_com_orange_orangeorangefruitbitter_orangeorangesclip_art_17015273374288pjtg_08c2714871_8125bdfb0f', '.png', 'image/png', 427.73, '/uploads/purepng_com_orange_orangeorangefruitbitter_orangeorangesclip_art_17015273374288pjtg_08c2714871_8125bdfb0f.png', NULL, 'local', NULL, '/', '2024-09-26 14:50:49.710000', '2024-09-26 14:50:49.710000', '2024-09-26 14:50:49.711000', 1, 1, NULL),
(18, 'p7iaoyn4fkprqtmoyk4xyqxo', 'mango_transparent_background_free_png_d1c0cd690e.png', NULL, NULL, 1920, 1665, '{\"thumbnail\":{\"name\":\"thumbnail_mango_transparent_background_free_png_d1c0cd690e.png\",\"hash\":\"thumbnail_mango_transparent_background_free_png_d1c0cd690e_7146b72d1c\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":180,\"height\":156,\"size\":30.89,\"sizeInBytes\":30885,\"url\":\"/uploads/thumbnail_mango_transparent_background_free_png_d1c0cd690e_7146b72d1c.png\"},\"small\":{\"name\":\"small_mango_transparent_background_free_png_d1c0cd690e.png\",\"hash\":\"small_mango_transparent_background_free_png_d1c0cd690e_7146b72d1c\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":434,\"size\":200.24,\"sizeInBytes\":200236,\"url\":\"/uploads/small_mango_transparent_background_free_png_d1c0cd690e_7146b72d1c.png\"},\"medium\":{\"name\":\"medium_mango_transparent_background_free_png_d1c0cd690e.png\",\"hash\":\"medium_mango_transparent_background_free_png_d1c0cd690e_7146b72d1c\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":750,\"height\":650,\"size\":433.39,\"sizeInBytes\":433391,\"url\":\"/uploads/medium_mango_transparent_background_free_png_d1c0cd690e_7146b72d1c.png\"},\"large\":{\"name\":\"large_mango_transparent_background_free_png_d1c0cd690e.png\",\"hash\":\"large_mango_transparent_background_free_png_d1c0cd690e_7146b72d1c\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":1000,\"height\":867,\"size\":742.25,\"sizeInBytes\":742246,\"url\":\"/uploads/large_mango_transparent_background_free_png_d1c0cd690e_7146b72d1c.png\"}}', 'mango_transparent_background_free_png_d1c0cd690e_7146b72d1c', '.png', 'image/png', 556.71, '/uploads/mango_transparent_background_free_png_d1c0cd690e_7146b72d1c.png', NULL, 'local', NULL, '/', '2024-09-26 14:50:49.836000', '2024-09-26 14:50:49.836000', '2024-09-26 14:50:49.837000', 1, 1, NULL),
(19, 'efjh3564kes0iw4a4vdvqimc', 'soap01.jfif', NULL, NULL, 255, 197, '{\"thumbnail\":{\"name\":\"thumbnail_soap01.jfif\",\"hash\":\"thumbnail_soap01_77993f52a0\",\"ext\":\".jfif\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":202,\"height\":156,\"size\":2.92,\"sizeInBytes\":2924,\"url\":\"/uploads/thumbnail_soap01_77993f52a0.jfif\"}}', 'soap01_77993f52a0', '.jfif', 'image/jpeg', 3.66, '/uploads/soap01_77993f52a0.jfif', NULL, 'local', NULL, '/', '2024-10-29 09:39:16.148000', '2024-10-29 09:39:16.148000', '2024-10-29 09:39:16.152000', 1, 1, NULL),
(20, 'nastrnt3mu54bl023zi44qgf', 'irish-spring.jfif', NULL, NULL, 277, 182, '{\"thumbnail\":{\"name\":\"thumbnail_irish-spring.jfif\",\"hash\":\"thumbnail_irish_spring_6813099071\",\"ext\":\".jfif\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":237,\"height\":156,\"size\":4.31,\"sizeInBytes\":4311,\"url\":\"/uploads/thumbnail_irish_spring_6813099071.jfif\"}}', 'irish_spring_6813099071', '.jfif', 'image/jpeg', 4.11, '/uploads/irish_spring_6813099071.jfif', NULL, 'local', NULL, '/', '2024-10-29 09:44:15.969000', '2024-10-29 09:44:15.969000', '2024-10-29 09:44:15.970000', 1, 1, NULL),
(21, 'jfem6gyj9c7l6r68joev8qy1', 'dove.jpg', NULL, NULL, 500, 500, '{\"thumbnail\":{\"name\":\"thumbnail_dove.jpg\",\"hash\":\"thumbnail_dove_bc2d81d0c6\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":156,\"height\":156,\"size\":2.69,\"sizeInBytes\":2692,\"url\":\"/uploads/thumbnail_dove_bc2d81d0c6.jpg\"}}', 'dove_bc2d81d0c6', '.jpg', 'image/jpeg', 14.62, '/uploads/dove_bc2d81d0c6.jpg', NULL, 'local', NULL, '/', '2024-10-29 09:46:33.640000', '2024-10-29 09:46:33.640000', '2024-10-29 09:46:33.640000', 1, 1, NULL),
(23, 'ugfzvl230vparuw1axzgnd01', 'vegetableBanner.jpg', NULL, NULL, 612, 229, '{\"thumbnail\":{\"name\":\"thumbnail_vegetableBanner.jpg\",\"hash\":\"thumbnail_vegetable_Banner_a4cfd9d213\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":245,\"height\":92,\"size\":3.64,\"sizeInBytes\":3635,\"url\":\"/uploads/thumbnail_vegetable_Banner_a4cfd9d213.jpg\"},\"small\":{\"name\":\"small_vegetableBanner.jpg\",\"hash\":\"small_vegetable_Banner_a4cfd9d213\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":500,\"height\":187,\"size\":10.67,\"sizeInBytes\":10673,\"url\":\"/uploads/small_vegetable_Banner_a4cfd9d213.jpg\"}}', 'vegetable_Banner_a4cfd9d213', '.jpg', 'image/jpeg', 13.44, '/uploads/vegetable_Banner_a4cfd9d213.jpg', NULL, 'local', NULL, '/', '2024-10-31 12:31:40.735000', '2024-10-31 12:31:40.735000', '2024-10-31 12:31:40.738000', 1, 1, NULL),
(24, 'odsghphmeoqnjvljvcxdmixu', 'fruits-banner.jpg', NULL, NULL, 1600, 559, '{\"thumbnail\":{\"name\":\"thumbnail_fruits-banner.jpg\",\"hash\":\"thumbnail_fruits_banner_b8ca8caea9\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":245,\"height\":85,\"size\":4.77,\"sizeInBytes\":4774,\"url\":\"/uploads/thumbnail_fruits_banner_b8ca8caea9.jpg\"},\"large\":{\"name\":\"large_fruits-banner.jpg\",\"hash\":\"large_fruits_banner_b8ca8caea9\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":1000,\"height\":349,\"size\":46.78,\"sizeInBytes\":46777,\"url\":\"/uploads/large_fruits_banner_b8ca8caea9.jpg\"},\"medium\":{\"name\":\"medium_fruits-banner.jpg\",\"hash\":\"medium_fruits_banner_b8ca8caea9\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":750,\"height\":262,\"size\":29.16,\"sizeInBytes\":29159,\"url\":\"/uploads/medium_fruits_banner_b8ca8caea9.jpg\"},\"small\":{\"name\":\"small_fruits-banner.jpg\",\"hash\":\"small_fruits_banner_b8ca8caea9\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":500,\"height\":174,\"size\":15.06,\"sizeInBytes\":15061,\"url\":\"/uploads/small_fruits_banner_b8ca8caea9.jpg\"}}', 'fruits_banner_b8ca8caea9', '.jpg', 'image/jpeg', 80.96, '/uploads/fruits_banner_b8ca8caea9.jpg', NULL, 'local', NULL, '/', '2024-10-31 12:49:36.672000', '2024-10-31 12:49:36.672000', '2024-10-31 12:49:36.672000', 1, 1, NULL),
(25, 'o3o7r7gat7u848fi0wvvzjtd', 'Beauty & Health.png', NULL, NULL, 1536, 261, '{\"thumbnail\":{\"name\":\"thumbnail_Beauty & Health.png\",\"hash\":\"thumbnail_Beauty_and_Health_f4f34a0f86\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":245,\"height\":42,\"size\":15.22,\"sizeInBytes\":15219,\"url\":\"/uploads/thumbnail_Beauty_and_Health_f4f34a0f86.png\"},\"small\":{\"name\":\"small_Beauty & Health.png\",\"hash\":\"small_Beauty_and_Health_f4f34a0f86\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":85,\"size\":47.58,\"sizeInBytes\":47581,\"url\":\"/uploads/small_Beauty_and_Health_f4f34a0f86.png\"},\"medium\":{\"name\":\"medium_Beauty & Health.png\",\"hash\":\"medium_Beauty_and_Health_f4f34a0f86\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":750,\"height\":127,\"size\":94.67,\"sizeInBytes\":94668,\"url\":\"/uploads/medium_Beauty_and_Health_f4f34a0f86.png\"},\"large\":{\"name\":\"large_Beauty & Health.png\",\"hash\":\"large_Beauty_and_Health_f4f34a0f86\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":1000,\"height\":170,\"size\":154.58,\"sizeInBytes\":154579,\"url\":\"/uploads/large_Beauty_and_Health_f4f34a0f86.png\"}}', 'Beauty_and_Health_f4f34a0f86', '.png', 'image/png', 65.79, '/uploads/Beauty_and_Health_f4f34a0f86.png', NULL, 'local', NULL, '/', '2024-11-05 10:13:25.680000', '2024-11-05 10:13:25.680000', '2024-11-05 10:13:25.683000', 1, 1, NULL),
(26, 'kfvljp4ixr268sv58x0z87e4', 'Fruits & Vegetables.png', NULL, NULL, 1536, 261, '{\"thumbnail\":{\"name\":\"thumbnail_Fruits & Vegetables.png\",\"hash\":\"thumbnail_Fruits_and_Vegetables_4914ca559f\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":245,\"height\":42,\"size\":13.75,\"sizeInBytes\":13751,\"url\":\"/uploads/thumbnail_Fruits_and_Vegetables_4914ca559f.png\"},\"small\":{\"name\":\"small_Fruits & Vegetables.png\",\"hash\":\"small_Fruits_and_Vegetables_4914ca559f\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":85,\"size\":45.98,\"sizeInBytes\":45975,\"url\":\"/uploads/small_Fruits_and_Vegetables_4914ca559f.png\"},\"medium\":{\"name\":\"medium_Fruits & Vegetables.png\",\"hash\":\"medium_Fruits_and_Vegetables_4914ca559f\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":750,\"height\":127,\"size\":93.99,\"sizeInBytes\":93987,\"url\":\"/uploads/medium_Fruits_and_Vegetables_4914ca559f.png\"},\"large\":{\"name\":\"large_Fruits & Vegetables.png\",\"hash\":\"large_Fruits_and_Vegetables_4914ca559f\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":1000,\"height\":170,\"size\":158.52,\"sizeInBytes\":158518,\"url\":\"/uploads/large_Fruits_and_Vegetables_4914ca559f.png\"}}', 'Fruits_and_Vegetables_4914ca559f', '.png', 'image/png', 76.23, '/uploads/Fruits_and_Vegetables_4914ca559f.png', NULL, 'local', NULL, '/', '2024-11-05 17:14:53.304000', '2024-11-05 17:15:16.087000', '2024-11-05 17:14:53.307000', 1, 1, NULL),
(27, 'fysjrsa78xrqxh6b7eaoq208', 'Liquid & UHT.png', NULL, NULL, 1536, 261, '{\"thumbnail\":{\"name\":\"thumbnail_Liquid & UHT.png\",\"hash\":\"thumbnail_Liquid_and_UHT_9f89a53ffa\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":245,\"height\":42,\"size\":13.46,\"sizeInBytes\":13464,\"url\":\"/uploads/thumbnail_Liquid_and_UHT_9f89a53ffa.png\"},\"small\":{\"name\":\"small_Liquid & UHT.png\",\"hash\":\"small_Liquid_and_UHT_9f89a53ffa\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":85,\"size\":42.86,\"sizeInBytes\":42860,\"url\":\"/uploads/small_Liquid_and_UHT_9f89a53ffa.png\"},\"medium\":{\"name\":\"medium_Liquid & UHT.png\",\"hash\":\"medium_Liquid_and_UHT_9f89a53ffa\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":750,\"height\":127,\"size\":86.39,\"sizeInBytes\":86394,\"url\":\"/uploads/medium_Liquid_and_UHT_9f89a53ffa.png\"},\"large\":{\"name\":\"large_Liquid & UHT.png\",\"hash\":\"large_Liquid_and_UHT_9f89a53ffa\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":1000,\"height\":170,\"size\":145.17,\"sizeInBytes\":145174,\"url\":\"/uploads/large_Liquid_and_UHT_9f89a53ffa.png\"}}', 'Liquid_and_UHT_9f89a53ffa', '.png', 'image/png', 79.00, '/uploads/Liquid_and_UHT_9f89a53ffa.png', NULL, 'local', NULL, '/', '2024-11-05 17:18:11.896000', '2024-11-05 17:18:11.896000', '2024-11-05 17:18:11.897000', 1, 1, NULL),
(28, 'ybx1nn100t8zi14d8acvdh88', 'Chicken.png', NULL, NULL, 1536, 261, '{\"thumbnail\":{\"name\":\"thumbnail_Chicken.png\",\"hash\":\"thumbnail_Chicken_7bb3558e03\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":245,\"height\":42,\"size\":13.61,\"sizeInBytes\":13605,\"url\":\"/uploads/thumbnail_Chicken_7bb3558e03.png\"},\"small\":{\"name\":\"small_Chicken.png\",\"hash\":\"small_Chicken_7bb3558e03\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":85,\"size\":45.03,\"sizeInBytes\":45034,\"url\":\"/uploads/small_Chicken_7bb3558e03.png\"},\"medium\":{\"name\":\"medium_Chicken.png\",\"hash\":\"medium_Chicken_7bb3558e03\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":750,\"height\":127,\"size\":92.97,\"sizeInBytes\":92968,\"url\":\"/uploads/medium_Chicken_7bb3558e03.png\"},\"large\":{\"name\":\"large_Chicken.png\",\"hash\":\"large_Chicken_7bb3558e03\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":1000,\"height\":170,\"size\":161.38,\"sizeInBytes\":161378,\"url\":\"/uploads/large_Chicken_7bb3558e03.png\"}}', 'Chicken_7bb3558e03', '.png', 'image/png', 95.45, '/uploads/Chicken_7bb3558e03.png', NULL, 'local', NULL, '/', '2024-11-05 17:21:19.543000', '2024-11-05 17:21:19.543000', '2024-11-05 17:21:19.545000', 1, 1, NULL),
(30, 'nnavnglre4e04sjwwt2b4jpb', 'Snacks.png', NULL, NULL, 1536, 261, '{\"thumbnail\":{\"name\":\"thumbnail_Snacks.png\",\"hash\":\"thumbnail_Snacks_db888e7a22\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":245,\"height\":42,\"size\":17.5,\"sizeInBytes\":17496,\"url\":\"/uploads/thumbnail_Snacks_db888e7a22.png\"},\"small\":{\"name\":\"small_Snacks.png\",\"hash\":\"small_Snacks_db888e7a22\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":85,\"size\":60.09,\"sizeInBytes\":60091,\"url\":\"/uploads/small_Snacks_db888e7a22.png\"},\"medium\":{\"name\":\"medium_Snacks.png\",\"hash\":\"medium_Snacks_db888e7a22\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":750,\"height\":127,\"size\":123.23,\"sizeInBytes\":123227,\"url\":\"/uploads/medium_Snacks_db888e7a22.png\"},\"large\":{\"name\":\"large_Snacks.png\",\"hash\":\"large_Snacks_db888e7a22\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":1000,\"height\":170,\"size\":207.71,\"sizeInBytes\":207706,\"url\":\"/uploads/large_Snacks_db888e7a22.png\"}}', 'Snacks_db888e7a22', '.png', 'image/png', 97.12, '/uploads/Snacks_db888e7a22.png', NULL, 'local', NULL, '/', '2024-11-05 17:30:38.702000', '2024-11-05 17:30:38.702000', '2024-11-05 17:30:38.703000', 1, 1, NULL),
(33, 'kw4eqgurym4x9jszxk6873ot', 'Yan-Pure-Apple-100-Juice-946ml-AM_1.webp', NULL, NULL, 1000, 800, '{\"thumbnail\":{\"name\":\"thumbnail_Yan-Pure-Apple-100-Juice-946ml-AM_1.webp\",\"hash\":\"thumbnail_Yan_Pure_Apple_100_Juice_946ml_AM_1_4892c3dade\",\"ext\":\".webp\",\"mime\":\"image/webp\",\"path\":null,\"width\":195,\"height\":156,\"size\":2.21,\"sizeInBytes\":2206,\"url\":\"/uploads/thumbnail_Yan_Pure_Apple_100_Juice_946ml_AM_1_4892c3dade.webp\"},\"small\":{\"name\":\"small_Yan-Pure-Apple-100-Juice-946ml-AM_1.webp\",\"hash\":\"small_Yan_Pure_Apple_100_Juice_946ml_AM_1_4892c3dade\",\"ext\":\".webp\",\"mime\":\"image/webp\",\"path\":null,\"width\":500,\"height\":400,\"size\":8.31,\"sizeInBytes\":8306,\"url\":\"/uploads/small_Yan_Pure_Apple_100_Juice_946ml_AM_1_4892c3dade.webp\"},\"medium\":{\"name\":\"medium_Yan-Pure-Apple-100-Juice-946ml-AM_1.webp\",\"hash\":\"medium_Yan_Pure_Apple_100_Juice_946ml_AM_1_4892c3dade\",\"ext\":\".webp\",\"mime\":\"image/webp\",\"path\":null,\"width\":750,\"height\":600,\"size\":13.22,\"sizeInBytes\":13220,\"url\":\"/uploads/medium_Yan_Pure_Apple_100_Juice_946ml_AM_1_4892c3dade.webp\"}}', 'Yan_Pure_Apple_100_Juice_946ml_AM_1_4892c3dade', '.webp', 'image/webp', 18.73, '/uploads/Yan_Pure_Apple_100_Juice_946ml_AM_1_4892c3dade.webp', NULL, 'local', NULL, '/', '2024-11-06 16:45:08.910000', '2024-11-06 16:45:08.910000', '2024-11-06 16:45:08.911000', 1, 1, NULL),
(35, 'az3qcn3h2qwzgnmfcel989nr', '6728a07f3a11aefc405bb8fb_Aktive-Electrolyte-Lemon-Drink-200ml_1.webp', NULL, NULL, 1000, 800, '{\"thumbnail\":{\"name\":\"thumbnail_6728a07f3a11aefc405bb8fb_Aktive-Electrolyte-Lemon-Drink-200ml_1.webp\",\"hash\":\"thumbnail_6728a07f3a11aefc405bb8fb_Aktive_Electrolyte_Lemon_Drink_200ml_1_9e04c7547f\",\"ext\":\".webp\",\"mime\":\"image/webp\",\"path\":null,\"width\":195,\"height\":156,\"size\":1.93,\"sizeInBytes\":1926,\"url\":\"/uploads/thumbnail_6728a07f3a11aefc405bb8fb_Aktive_Electrolyte_Lemon_Drink_200ml_1_9e04c7547f.webp\"},\"small\":{\"name\":\"small_6728a07f3a11aefc405bb8fb_Aktive-Electrolyte-Lemon-Drink-200ml_1.webp\",\"hash\":\"small_6728a07f3a11aefc405bb8fb_Aktive_Electrolyte_Lemon_Drink_200ml_1_9e04c7547f\",\"ext\":\".webp\",\"mime\":\"image/webp\",\"path\":null,\"width\":500,\"height\":400,\"size\":7.77,\"sizeInBytes\":7770,\"url\":\"/uploads/small_6728a07f3a11aefc405bb8fb_Aktive_Electrolyte_Lemon_Drink_200ml_1_9e04c7547f.webp\"},\"medium\":{\"name\":\"medium_6728a07f3a11aefc405bb8fb_Aktive-Electrolyte-Lemon-Drink-200ml_1.webp\",\"hash\":\"medium_6728a07f3a11aefc405bb8fb_Aktive_Electrolyte_Lemon_Drink_200ml_1_9e04c7547f\",\"ext\":\".webp\",\"mime\":\"image/webp\",\"path\":null,\"width\":750,\"height\":600,\"size\":12.33,\"sizeInBytes\":12328,\"url\":\"/uploads/medium_6728a07f3a11aefc405bb8fb_Aktive_Electrolyte_Lemon_Drink_200ml_1_9e04c7547f.webp\"}}', '6728a07f3a11aefc405bb8fb_Aktive_Electrolyte_Lemon_Drink_200ml_1_9e04c7547f', '.webp', 'image/webp', 18.50, '/uploads/6728a07f3a11aefc405bb8fb_Aktive_Electrolyte_Lemon_Drink_200ml_1_9e04c7547f.webp', NULL, 'local', NULL, '/', '2024-11-06 16:54:46.832000', '2024-11-06 16:54:46.832000', '2024-11-06 16:54:46.832000', 1, 1, NULL),
(36, 'wnpnk4zf4bb5wctz6urzzfsk', '6605329955503b55855d83ae_Egg-Loose_1.webp', NULL, NULL, 1000, 800, '{\"thumbnail\":{\"name\":\"thumbnail_6605329955503b55855d83ae_Egg-Loose_1.webp\",\"hash\":\"thumbnail_6605329955503b55855d83ae_Egg_Loose_1_a823d0a008\",\"ext\":\".webp\",\"mime\":\"image/webp\",\"path\":null,\"width\":195,\"height\":156,\"size\":1.75,\"sizeInBytes\":1754,\"url\":\"/uploads/thumbnail_6605329955503b55855d83ae_Egg_Loose_1_a823d0a008.webp\"},\"small\":{\"name\":\"small_6605329955503b55855d83ae_Egg-Loose_1.webp\",\"hash\":\"small_6605329955503b55855d83ae_Egg_Loose_1_a823d0a008\",\"ext\":\".webp\",\"mime\":\"image/webp\",\"path\":null,\"width\":500,\"height\":400,\"size\":5.23,\"sizeInBytes\":5228,\"url\":\"/uploads/small_6605329955503b55855d83ae_Egg_Loose_1_a823d0a008.webp\"},\"medium\":{\"name\":\"medium_6605329955503b55855d83ae_Egg-Loose_1.webp\",\"hash\":\"medium_6605329955503b55855d83ae_Egg_Loose_1_a823d0a008\",\"ext\":\".webp\",\"mime\":\"image/webp\",\"path\":null,\"width\":750,\"height\":600,\"size\":8.29,\"sizeInBytes\":8286,\"url\":\"/uploads/medium_6605329955503b55855d83ae_Egg_Loose_1_a823d0a008.webp\"}}', '6605329955503b55855d83ae_Egg_Loose_1_a823d0a008', '.webp', 'image/webp', 12.55, '/uploads/6605329955503b55855d83ae_Egg_Loose_1_a823d0a008.webp', NULL, 'local', NULL, '/', '2024-11-06 16:58:15.024000', '2024-11-06 16:58:15.024000', '2024-11-06 16:58:15.024000', 1, 1, NULL),
(37, 'ikg8oedew4tn9kg7xor3khs5', '66377497211595380a8f1b85_KFK-Branded-Egg-12-Pcs-Pack_1.webp', NULL, NULL, 1000, 800, '{\"thumbnail\":{\"name\":\"thumbnail_66377497211595380a8f1b85_KFK-Branded-Egg-12-Pcs-Pack_1.webp\",\"hash\":\"thumbnail_66377497211595380a8f1b85_KFK_Branded_Egg_12_Pcs_Pack_1_5c9ab83c2c\",\"ext\":\".webp\",\"mime\":\"image/webp\",\"path\":null,\"width\":195,\"height\":156,\"size\":2.8,\"sizeInBytes\":2802,\"url\":\"/uploads/thumbnail_66377497211595380a8f1b85_KFK_Branded_Egg_12_Pcs_Pack_1_5c9ab83c2c.webp\"},\"medium\":{\"name\":\"medium_66377497211595380a8f1b85_KFK-Branded-Egg-12-Pcs-Pack_1.webp\",\"hash\":\"medium_66377497211595380a8f1b85_KFK_Branded_Egg_12_Pcs_Pack_1_5c9ab83c2c\",\"ext\":\".webp\",\"mime\":\"image/webp\",\"path\":null,\"width\":750,\"height\":600,\"size\":18.19,\"sizeInBytes\":18190,\"url\":\"/uploads/medium_66377497211595380a8f1b85_KFK_Branded_Egg_12_Pcs_Pack_1_5c9ab83c2c.webp\"},\"small\":{\"name\":\"small_66377497211595380a8f1b85_KFK-Branded-Egg-12-Pcs-Pack_1.webp\",\"hash\":\"small_66377497211595380a8f1b85_KFK_Branded_Egg_12_Pcs_Pack_1_5c9ab83c2c\",\"ext\":\".webp\",\"mime\":\"image/webp\",\"path\":null,\"width\":500,\"height\":400,\"size\":11.92,\"sizeInBytes\":11922,\"url\":\"/uploads/small_66377497211595380a8f1b85_KFK_Branded_Egg_12_Pcs_Pack_1_5c9ab83c2c.webp\"}}', '66377497211595380a8f1b85_KFK_Branded_Egg_12_Pcs_Pack_1_5c9ab83c2c', '.webp', 'image/webp', 26.67, '/uploads/66377497211595380a8f1b85_KFK_Branded_Egg_12_Pcs_Pack_1_5c9ab83c2c.webp', NULL, 'local', NULL, '/', '2024-11-06 17:04:37.290000', '2024-11-06 17:04:37.290000', '2024-11-06 17:04:37.291000', 1, 1, NULL),
(38, 'b1kjhbkazb0cdt8lii40ynds', '65fa98db115075f231ecdb21_Broiler-Chicken-Breast-Boneless_1.webp', NULL, NULL, 1000, 800, '{\"thumbnail\":{\"name\":\"thumbnail_65fa98db115075f231ecdb21_Broiler-Chicken-Breast-Boneless_1.webp\",\"hash\":\"thumbnail_65fa98db115075f231ecdb21_Broiler_Chicken_Breast_Boneless_1_062622a951\",\"ext\":\".webp\",\"mime\":\"image/webp\",\"path\":null,\"width\":195,\"height\":156,\"size\":2.58,\"sizeInBytes\":2578,\"url\":\"/uploads/thumbnail_65fa98db115075f231ecdb21_Broiler_Chicken_Breast_Boneless_1_062622a951.webp\"},\"small\":{\"name\":\"small_65fa98db115075f231ecdb21_Broiler-Chicken-Breast-Boneless_1.webp\",\"hash\":\"small_65fa98db115075f231ecdb21_Broiler_Chicken_Breast_Boneless_1_062622a951\",\"ext\":\".webp\",\"mime\":\"image/webp\",\"path\":null,\"width\":500,\"height\":400,\"size\":8.93,\"sizeInBytes\":8932,\"url\":\"/uploads/small_65fa98db115075f231ecdb21_Broiler_Chicken_Breast_Boneless_1_062622a951.webp\"},\"medium\":{\"name\":\"medium_65fa98db115075f231ecdb21_Broiler-Chicken-Breast-Boneless_1.webp\",\"hash\":\"medium_65fa98db115075f231ecdb21_Broiler_Chicken_Breast_Boneless_1_062622a951\",\"ext\":\".webp\",\"mime\":\"image/webp\",\"path\":null,\"width\":750,\"height\":600,\"size\":14.21,\"sizeInBytes\":14212,\"url\":\"/uploads/medium_65fa98db115075f231ecdb21_Broiler_Chicken_Breast_Boneless_1_062622a951.webp\"}}', '65fa98db115075f231ecdb21_Broiler_Chicken_Breast_Boneless_1_062622a951', '.webp', 'image/webp', 23.51, '/uploads/65fa98db115075f231ecdb21_Broiler_Chicken_Breast_Boneless_1_062622a951.webp', NULL, 'local', NULL, '/', '2024-11-06 17:12:35.539000', '2024-11-06 17:12:35.539000', '2024-11-06 17:12:35.541000', 1, 1, NULL),
(39, 'zwuhlab7pt73ni4ebxe0v46p', 'SmartWatch.png', NULL, NULL, 1125, 185, '{\"thumbnail\":{\"name\":\"thumbnail_SmartWatch.png\",\"hash\":\"thumbnail_Smart_Watch_94777280e1\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":245,\"height\":40,\"size\":15.81,\"sizeInBytes\":15808,\"url\":\"/uploads/thumbnail_Smart_Watch_94777280e1.png\"},\"small\":{\"name\":\"small_SmartWatch.png\",\"hash\":\"small_Smart_Watch_94777280e1\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":82,\"size\":50.52,\"sizeInBytes\":50517,\"url\":\"/uploads/small_Smart_Watch_94777280e1.png\"},\"medium\":{\"name\":\"medium_SmartWatch.png\",\"hash\":\"medium_Smart_Watch_94777280e1\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":750,\"height\":123,\"size\":97.86,\"sizeInBytes\":97863,\"url\":\"/uploads/medium_Smart_Watch_94777280e1.png\"},\"large\":{\"name\":\"large_SmartWatch.png\",\"hash\":\"large_Smart_Watch_94777280e1\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":1000,\"height\":164,\"size\":156.32,\"sizeInBytes\":156315,\"url\":\"/uploads/large_Smart_Watch_94777280e1.png\"}}', 'Smart_Watch_94777280e1', '.png', 'image/png', 47.33, '/uploads/Smart_Watch_94777280e1.png', NULL, 'local', NULL, '/', '2024-11-07 09:29:46.379000', '2024-11-07 09:29:46.379000', '2024-11-07 09:29:46.383000', 1, 1, NULL),
(40, 'sp4f532c4f9za5v969rjq2q8', 'For_Website-09_1.png', NULL, NULL, 500, 500, '{\"thumbnail\":{\"name\":\"thumbnail_For_Website-09_1.png\",\"hash\":\"thumbnail_For_Website_09_1_9b54c943a7\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":156,\"height\":156,\"size\":7.98,\"sizeInBytes\":7976,\"url\":\"/uploads/thumbnail_For_Website_09_1_9b54c943a7.png\"}}', 'For_Website_09_1_9b54c943a7', '.png', 'image/png', 7.38, '/uploads/For_Website_09_1_9b54c943a7.png', NULL, 'local', NULL, '/', '2024-11-07 09:31:49.357000', '2024-11-07 09:31:49.357000', '2024-11-07 09:31:49.358000', 1, 1, NULL),
(41, 'rshh3kz1adjr034qq9qveakz', 'boAt_Enigma_X400-min.png', NULL, NULL, 1080, 1080, '{\"thumbnail\":{\"name\":\"thumbnail_boAt_Enigma_X400-min.png\",\"hash\":\"thumbnail_bo_At_Enigma_X400_min_b3565bd291\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":156,\"height\":156,\"size\":16.9,\"sizeInBytes\":16895,\"url\":\"/uploads/thumbnail_bo_At_Enigma_X400_min_b3565bd291.png\"},\"small\":{\"name\":\"small_boAt_Enigma_X400-min.png\",\"hash\":\"small_bo_At_Enigma_X400_min_b3565bd291\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":500,\"size\":122.91,\"sizeInBytes\":122914,\"url\":\"/uploads/small_bo_At_Enigma_X400_min_b3565bd291.png\"},\"medium\":{\"name\":\"medium_boAt_Enigma_X400-min.png\",\"hash\":\"medium_bo_At_Enigma_X400_min_b3565bd291\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":750,\"height\":750,\"size\":252.92,\"sizeInBytes\":252924,\"url\":\"/uploads/medium_bo_At_Enigma_X400_min_b3565bd291.png\"},\"large\":{\"name\":\"large_boAt_Enigma_X400-min.png\",\"hash\":\"large_bo_At_Enigma_X400_min_b3565bd291\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":1000,\"height\":1000,\"size\":421.8,\"sizeInBytes\":421797,\"url\":\"/uploads/large_bo_At_Enigma_X400_min_b3565bd291.png\"}}', 'bo_At_Enigma_X400_min_b3565bd291', '.png', 'image/png', 108.63, '/uploads/bo_At_Enigma_X400_min_b3565bd291.png', NULL, 'local', NULL, '/', '2024-11-07 09:34:15.733000', '2024-11-07 09:34:15.733000', '2024-11-07 09:34:15.733000', 1, 1, NULL),
(42, 'xp673sd8174yhdn2zqazbrrp', 'boAt_Wave_Hype.png', NULL, NULL, 1080, 1080, '{\"thumbnail\":{\"name\":\"thumbnail_boAt_Wave_Hype.png\",\"hash\":\"thumbnail_bo_At_Wave_Hype_56328ed521\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":156,\"height\":156,\"size\":14.93,\"sizeInBytes\":14931,\"url\":\"/uploads/thumbnail_bo_At_Wave_Hype_56328ed521.png\"},\"small\":{\"name\":\"small_boAt_Wave_Hype.png\",\"hash\":\"small_bo_At_Wave_Hype_56328ed521\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":500,\"size\":100.35,\"sizeInBytes\":100348,\"url\":\"/uploads/small_bo_At_Wave_Hype_56328ed521.png\"},\"large\":{\"name\":\"large_boAt_Wave_Hype.png\",\"hash\":\"large_bo_At_Wave_Hype_56328ed521\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":1000,\"height\":1000,\"size\":322,\"sizeInBytes\":322000,\"url\":\"/uploads/large_bo_At_Wave_Hype_56328ed521.png\"},\"medium\":{\"name\":\"medium_boAt_Wave_Hype.png\",\"hash\":\"medium_bo_At_Wave_Hype_56328ed521\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":750,\"height\":750,\"size\":198.61,\"sizeInBytes\":198613,\"url\":\"/uploads/medium_bo_At_Wave_Hype_56328ed521.png\"}}', 'bo_At_Wave_Hype_56328ed521', '.png', 'image/png', 91.15, '/uploads/bo_At_Wave_Hype_56328ed521.png', NULL, 'local', NULL, '/', '2024-11-07 09:39:56.167000', '2024-11-07 09:39:56.167000', '2024-11-07 09:39:56.169000', 1, 1, NULL),
(43, 'b9f7fab9fer9lv0h7ykq34o7', 'Wave-Stride-Voice.jpg', NULL, NULL, 1080, 1080, '{\"thumbnail\":{\"name\":\"thumbnail_Wave-Stride-Voice.jpg\",\"hash\":\"thumbnail_Wave_Stride_Voice_8617d9aff8\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":156,\"height\":156,\"size\":4.26,\"sizeInBytes\":4259,\"url\":\"/uploads/thumbnail_Wave_Stride_Voice_8617d9aff8.jpg\"},\"large\":{\"name\":\"large_Wave-Stride-Voice.jpg\",\"hash\":\"large_Wave_Stride_Voice_8617d9aff8\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":1000,\"height\":1000,\"size\":50.63,\"sizeInBytes\":50631,\"url\":\"/uploads/large_Wave_Stride_Voice_8617d9aff8.jpg\"},\"medium\":{\"name\":\"medium_Wave-Stride-Voice.jpg\",\"hash\":\"medium_Wave_Stride_Voice_8617d9aff8\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":750,\"height\":750,\"size\":34.25,\"sizeInBytes\":34252,\"url\":\"/uploads/medium_Wave_Stride_Voice_8617d9aff8.jpg\"},\"small\":{\"name\":\"small_Wave-Stride-Voice.jpg\",\"hash\":\"small_Wave_Stride_Voice_8617d9aff8\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":500,\"height\":500,\"size\":20.82,\"sizeInBytes\":20822,\"url\":\"/uploads/small_Wave_Stride_Voice_8617d9aff8.jpg\"}}', 'Wave_Stride_Voice_8617d9aff8', '.jpg', 'image/jpeg', 55.01, '/uploads/Wave_Stride_Voice_8617d9aff8.jpg', NULL, 'local', NULL, '/', '2024-11-07 09:42:11.738000', '2024-11-07 09:42:11.738000', '2024-11-07 09:42:11.739000', 1, 1, NULL);
INSERT INTO `files` (`id`, `document_id`, `name`, `alternative_text`, `caption`, `width`, `height`, `formats`, `hash`, `ext`, `mime`, `size`, `url`, `preview_url`, `provider`, `provider_metadata`, `folder_path`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`, `locale`) VALUES
(44, 'd9qmb7bck1412f51zr88aa5n', 'Wave_Beat-Sky_Blue_-1.jpg', NULL, NULL, 1080, 1080, '{\"thumbnail\":{\"name\":\"thumbnail_Wave_Beat-Sky_Blue_-1.jpg\",\"hash\":\"thumbnail_Wave_Beat_Sky_Blue_1_01531a76b0\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":156,\"height\":156,\"size\":3.43,\"sizeInBytes\":3430,\"url\":\"/uploads/thumbnail_Wave_Beat_Sky_Blue_1_01531a76b0.jpg\"},\"large\":{\"name\":\"large_Wave_Beat-Sky_Blue_-1.jpg\",\"hash\":\"large_Wave_Beat_Sky_Blue_1_01531a76b0\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":1000,\"height\":1000,\"size\":42.12,\"sizeInBytes\":42121,\"url\":\"/uploads/large_Wave_Beat_Sky_Blue_1_01531a76b0.jpg\"},\"small\":{\"name\":\"small_Wave_Beat-Sky_Blue_-1.jpg\",\"hash\":\"small_Wave_Beat_Sky_Blue_1_01531a76b0\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":500,\"height\":500,\"size\":16.91,\"sizeInBytes\":16913,\"url\":\"/uploads/small_Wave_Beat_Sky_Blue_1_01531a76b0.jpg\"},\"medium\":{\"name\":\"medium_Wave_Beat-Sky_Blue_-1.jpg\",\"hash\":\"medium_Wave_Beat_Sky_Blue_1_01531a76b0\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":750,\"height\":750,\"size\":29.05,\"sizeInBytes\":29051,\"url\":\"/uploads/medium_Wave_Beat_Sky_Blue_1_01531a76b0.jpg\"}}', 'Wave_Beat_Sky_Blue_1_01531a76b0', '.jpg', 'image/jpeg', 47.00, '/uploads/Wave_Beat_Sky_Blue_1_01531a76b0.jpg', NULL, 'local', NULL, '/', '2024-11-07 09:44:03.919000', '2024-11-07 09:44:03.919000', '2024-11-07 09:44:03.920000', 1, 1, NULL),
(45, 'pbnynhcwtgamp4e8j4rx5xky', 'Amazfit_Bip_3_Pro_Smart_Watch_Global_Version-min.jpg', NULL, NULL, 400, 400, '{\"thumbnail\":{\"name\":\"thumbnail_Amazfit_Bip_3_Pro_Smart_Watch_Global_Version-min.jpg\",\"hash\":\"thumbnail_Amazfit_Bip_3_Pro_Smart_Watch_Global_Version_min_b1c519d5de\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":156,\"height\":156,\"size\":3.27,\"sizeInBytes\":3270,\"url\":\"/uploads/thumbnail_Amazfit_Bip_3_Pro_Smart_Watch_Global_Version_min_b1c519d5de.jpg\"}}', 'Amazfit_Bip_3_Pro_Smart_Watch_Global_Version_min_b1c519d5de', '.jpg', 'image/jpeg', 10.84, '/uploads/Amazfit_Bip_3_Pro_Smart_Watch_Global_Version_min_b1c519d5de.jpg', NULL, 'local', NULL, '/', '2024-11-07 09:51:47.105000', '2024-11-07 09:51:47.105000', '2024-11-07 09:51:47.106000', 1, 1, NULL),
(46, 't48ql87klzrigrnetlq3es3o', 'Kieslect_KR_Pro_LTD.jpg', NULL, NULL, 400, 400, '{\"thumbnail\":{\"name\":\"thumbnail_Kieslect_KR_Pro_LTD.jpg\",\"hash\":\"thumbnail_Kieslect_KR_Pro_LTD_0cb20e670d\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":156,\"height\":156,\"size\":2.9,\"sizeInBytes\":2895,\"url\":\"/uploads/thumbnail_Kieslect_KR_Pro_LTD_0cb20e670d.jpg\"}}', 'Kieslect_KR_Pro_LTD_0cb20e670d', '.jpg', 'image/jpeg', 10.69, '/uploads/Kieslect_KR_Pro_LTD_0cb20e670d.jpg', NULL, 'local', NULL, '/', '2024-11-07 10:00:24.383000', '2024-11-07 10:00:24.383000', '2024-11-07 10:00:24.384000', 1, 1, NULL),
(47, 'duriibnhm9dv68zzr3ryzr3m', 'lora-2--3.jpg', NULL, NULL, 1080, 1080, '{\"thumbnail\":{\"name\":\"thumbnail_lora-2--3.jpg\",\"hash\":\"thumbnail_lora_2_3_fad8858f7c\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":156,\"height\":156,\"size\":3.79,\"sizeInBytes\":3790,\"url\":\"/uploads/thumbnail_lora_2_3_fad8858f7c.jpg\"},\"large\":{\"name\":\"large_lora-2--3.jpg\",\"hash\":\"large_lora_2_3_fad8858f7c\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":1000,\"height\":1000,\"size\":57.42,\"sizeInBytes\":57419,\"url\":\"/uploads/large_lora_2_3_fad8858f7c.jpg\"},\"medium\":{\"name\":\"medium_lora-2--3.jpg\",\"hash\":\"medium_lora_2_3_fad8858f7c\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":750,\"height\":750,\"size\":38.32,\"sizeInBytes\":38324,\"url\":\"/uploads/medium_lora_2_3_fad8858f7c.jpg\"},\"small\":{\"name\":\"small_lora-2--3.jpg\",\"hash\":\"small_lora_2_3_fad8858f7c\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":500,\"height\":500,\"size\":21.88,\"sizeInBytes\":21881,\"url\":\"/uploads/small_lora_2_3_fad8858f7c.jpg\"}}', 'lora_2_3_fad8858f7c', '.jpg', 'image/jpeg', 50.98, '/uploads/lora_2_3_fad8858f7c.jpg', NULL, 'local', NULL, '/', '2024-11-07 10:07:31.399000', '2024-11-07 10:07:31.399000', '2024-11-07 10:07:31.399000', 1, 1, NULL),
(48, 'jpnohc21qy2tiza2ur528aut', 'black.jpg', NULL, NULL, 1000, 1000, '{\"thumbnail\":{\"name\":\"thumbnail_black.jpg\",\"hash\":\"thumbnail_black_42af0d040c\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":156,\"height\":156,\"size\":4.3,\"sizeInBytes\":4298,\"url\":\"/uploads/thumbnail_black_42af0d040c.jpg\"},\"medium\":{\"name\":\"medium_black.jpg\",\"hash\":\"medium_black_42af0d040c\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":750,\"height\":750,\"size\":34.16,\"sizeInBytes\":34158,\"url\":\"/uploads/medium_black_42af0d040c.jpg\"},\"small\":{\"name\":\"small_black.jpg\",\"hash\":\"small_black_42af0d040c\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":500,\"height\":500,\"size\":20.03,\"sizeInBytes\":20029,\"url\":\"/uploads/small_black_42af0d040c.jpg\"}}', 'black_42af0d040c', '.jpg', 'image/jpeg', 48.32, '/uploads/black_42af0d040c.jpg', NULL, 'local', NULL, '/', '2024-11-07 10:15:04.175000', '2024-11-07 10:15:04.175000', '2024-11-07 10:15:04.176000', 1, 1, NULL),
(49, 't6wf9ol4q6v1eaihbtv0h5we', 'Motive_9_pro_Titanium_Silver_edited.jpg', NULL, NULL, 1080, 1080, '{\"thumbnail\":{\"name\":\"thumbnail_Motive_9_pro_Titanium_Silver_edited.jpg\",\"hash\":\"thumbnail_Motive_9_pro_Titanium_Silver_edited_eb281fd791\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":156,\"height\":156,\"size\":4.05,\"sizeInBytes\":4045,\"url\":\"/uploads/thumbnail_Motive_9_pro_Titanium_Silver_edited_eb281fd791.jpg\"},\"small\":{\"name\":\"small_Motive_9_pro_Titanium_Silver_edited.jpg\",\"hash\":\"small_Motive_9_pro_Titanium_Silver_edited_eb281fd791\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":500,\"height\":500,\"size\":22.84,\"sizeInBytes\":22841,\"url\":\"/uploads/small_Motive_9_pro_Titanium_Silver_edited_eb281fd791.jpg\"},\"large\":{\"name\":\"large_Motive_9_pro_Titanium_Silver_edited.jpg\",\"hash\":\"large_Motive_9_pro_Titanium_Silver_edited_eb281fd791\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":1000,\"height\":1000,\"size\":58.73,\"sizeInBytes\":58729,\"url\":\"/uploads/large_Motive_9_pro_Titanium_Silver_edited_eb281fd791.jpg\"},\"medium\":{\"name\":\"medium_Motive_9_pro_Titanium_Silver_edited.jpg\",\"hash\":\"medium_Motive_9_pro_Titanium_Silver_edited_eb281fd791\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":750,\"height\":750,\"size\":39.29,\"sizeInBytes\":39291,\"url\":\"/uploads/medium_Motive_9_pro_Titanium_Silver_edited_eb281fd791.jpg\"}}', 'Motive_9_pro_Titanium_Silver_edited_eb281fd791', '.jpg', 'image/jpeg', 65.25, '/uploads/Motive_9_pro_Titanium_Silver_edited_eb281fd791.jpg', NULL, 'local', NULL, '/', '2024-11-07 10:19:23.564000', '2024-11-07 10:19:23.564000', '2024-11-07 10:19:23.565000', 1, 1, NULL),
(50, 'n48x21xrp8vc2kmrp930325n', 'MOtive_9_edited.jpg', NULL, NULL, 1080, 1080, '{\"thumbnail\":{\"name\":\"thumbnail_MOtive_9_edited.jpg\",\"hash\":\"thumbnail_M_Otive_9_edited_5a9443c5bf\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":156,\"height\":156,\"size\":4.32,\"sizeInBytes\":4321,\"url\":\"/uploads/thumbnail_M_Otive_9_edited_5a9443c5bf.jpg\"},\"large\":{\"name\":\"large_MOtive_9_edited.jpg\",\"hash\":\"large_M_Otive_9_edited_5a9443c5bf\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":1000,\"height\":1000,\"size\":60.44,\"sizeInBytes\":60440,\"url\":\"/uploads/large_M_Otive_9_edited_5a9443c5bf.jpg\"},\"medium\":{\"name\":\"medium_MOtive_9_edited.jpg\",\"hash\":\"medium_M_Otive_9_edited_5a9443c5bf\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":750,\"height\":750,\"size\":39.82,\"sizeInBytes\":39821,\"url\":\"/uploads/medium_M_Otive_9_edited_5a9443c5bf.jpg\"},\"small\":{\"name\":\"small_MOtive_9_edited.jpg\",\"hash\":\"small_M_Otive_9_edited_5a9443c5bf\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":500,\"height\":500,\"size\":22.93,\"sizeInBytes\":22926,\"url\":\"/uploads/small_M_Otive_9_edited_5a9443c5bf.jpg\"}}', 'M_Otive_9_edited_5a9443c5bf', '.jpg', 'image/jpeg', 66.91, '/uploads/M_Otive_9_edited_5a9443c5bf.jpg', NULL, 'local', NULL, '/', '2024-11-07 10:22:18.049000', '2024-11-07 10:22:18.049000', '2024-11-07 10:22:18.049000', 1, 1, NULL),
(51, 'qroc668iqlbwvb4pv2omb4k8', 'about.jpg', NULL, NULL, 1000, 333, '{\"thumbnail\":{\"name\":\"thumbnail_about.jpg\",\"hash\":\"thumbnail_about_c0bedd592f\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":245,\"height\":81,\"size\":5.4,\"sizeInBytes\":5396,\"url\":\"/uploads/thumbnail_about_c0bedd592f.jpg\"},\"small\":{\"name\":\"small_about.jpg\",\"hash\":\"small_about_c0bedd592f\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":500,\"height\":167,\"size\":15.73,\"sizeInBytes\":15729,\"url\":\"/uploads/small_about_c0bedd592f.jpg\"},\"medium\":{\"name\":\"medium_about.jpg\",\"hash\":\"medium_about_c0bedd592f\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":750,\"height\":250,\"size\":28.75,\"sizeInBytes\":28753,\"url\":\"/uploads/medium_about_c0bedd592f.jpg\"}}', 'about_c0bedd592f', '.jpg', 'image/jpeg', 42.55, '/uploads/about_c0bedd592f.jpg', NULL, 'local', NULL, '/', '2024-11-18 16:57:43.719000', '2024-11-18 16:57:43.719000', '2024-11-18 16:57:43.722000', 1, 1, NULL),
(52, 'lipc5vig2a18wrx290bvh94f', '1727947838.jpg', NULL, NULL, 1920, 670, '{\"thumbnail\":{\"name\":\"thumbnail_1727947838.jpg\",\"hash\":\"thumbnail_1727947838_d6e2e6c109\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":245,\"height\":85,\"size\":4.47,\"sizeInBytes\":4474,\"url\":\"/uploads/thumbnail_1727947838_d6e2e6c109.jpg\"},\"large\":{\"name\":\"large_1727947838.jpg\",\"hash\":\"large_1727947838_d6e2e6c109\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":1000,\"height\":349,\"size\":38.14,\"sizeInBytes\":38140,\"url\":\"/uploads/large_1727947838_d6e2e6c109.jpg\"},\"medium\":{\"name\":\"medium_1727947838.jpg\",\"hash\":\"medium_1727947838_d6e2e6c109\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":750,\"height\":262,\"size\":24.75,\"sizeInBytes\":24747,\"url\":\"/uploads/medium_1727947838_d6e2e6c109.jpg\"},\"small\":{\"name\":\"small_1727947838.jpg\",\"hash\":\"small_1727947838_d6e2e6c109\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":500,\"height\":174,\"size\":13.01,\"sizeInBytes\":13014,\"url\":\"/uploads/small_1727947838_d6e2e6c109.jpg\"}}', '1727947838_d6e2e6c109', '.jpg', 'image/jpeg', 98.64, '/uploads/1727947838_d6e2e6c109.jpg', NULL, 'local', NULL, '/', '2024-11-19 11:57:21.266000', '2024-11-19 11:57:21.266000', '2024-11-19 11:57:21.268000', 1, 1, NULL),
(53, 'ip3vz5hqc82z8j2mxrxwdfhc', '39223077_10216739405107650_3630018346109370368_n.jpg', NULL, NULL, 518, 600, '{\"thumbnail\":{\"name\":\"thumbnail_39223077_10216739405107650_3630018346109370368_n.jpg\",\"hash\":\"thumbnail_39223077_10216739405107650_3630018346109370368_n_577326f557\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":135,\"height\":156,\"size\":3.99,\"sizeInBytes\":3986,\"url\":\"/uploads/thumbnail_39223077_10216739405107650_3630018346109370368_n_577326f557.jpg\"},\"small\":{\"name\":\"small_39223077_10216739405107650_3630018346109370368_n.jpg\",\"hash\":\"small_39223077_10216739405107650_3630018346109370368_n_577326f557\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":432,\"height\":500,\"size\":23.67,\"sizeInBytes\":23668,\"url\":\"/uploads/small_39223077_10216739405107650_3630018346109370368_n_577326f557.jpg\"}}', '39223077_10216739405107650_3630018346109370368_n_577326f557', '.jpg', 'image/jpeg', 31.62, '/uploads/39223077_10216739405107650_3630018346109370368_n_577326f557.jpg', NULL, 'local', NULL, '/1', '2024-11-21 16:42:22.648000', '2024-11-21 16:42:22.648000', '2024-11-21 16:42:22.648000', NULL, NULL, NULL),
(54, 'qspnty5ubyq9yhp45xqqyxz2', '79950412.jpg', NULL, NULL, 585, 801, '{\"medium\":{\"name\":\"medium_79950412.jpg\",\"hash\":\"medium_79950412_7b272a13d6\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":548,\"height\":750,\"size\":40.07,\"sizeInBytes\":40074,\"url\":\"/uploads/medium_79950412_7b272a13d6.jpg\"},\"thumbnail\":{\"name\":\"thumbnail_79950412.jpg\",\"hash\":\"thumbnail_79950412_7b272a13d6\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":114,\"height\":156,\"size\":3.81,\"sizeInBytes\":3814,\"url\":\"/uploads/thumbnail_79950412_7b272a13d6.jpg\"},\"small\":{\"name\":\"small_79950412.jpg\",\"hash\":\"small_79950412_7b272a13d6\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":365,\"height\":500,\"size\":21.7,\"sizeInBytes\":21698,\"url\":\"/uploads/small_79950412_7b272a13d6.jpg\"}}', '79950412_7b272a13d6', '.jpg', 'image/jpeg', 44.99, '/uploads/79950412_7b272a13d6.jpg', NULL, 'local', NULL, '/1', '2024-11-21 16:43:10.124000', '2024-11-21 16:43:10.124000', '2024-11-21 16:43:10.125000', NULL, NULL, NULL),
(55, 'jtu450hacmz1762y95kn3i56', '39223077_10216739405107650_3630018346109370368_n.jpg', NULL, NULL, 518, 600, '{\"thumbnail\":{\"name\":\"thumbnail_39223077_10216739405107650_3630018346109370368_n.jpg\",\"hash\":\"thumbnail_39223077_10216739405107650_3630018346109370368_n_bfc76c513d\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":135,\"height\":156,\"size\":3.99,\"sizeInBytes\":3986,\"url\":\"/uploads/thumbnail_39223077_10216739405107650_3630018346109370368_n_bfc76c513d.jpg\"},\"small\":{\"name\":\"small_39223077_10216739405107650_3630018346109370368_n.jpg\",\"hash\":\"small_39223077_10216739405107650_3630018346109370368_n_bfc76c513d\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":432,\"height\":500,\"size\":23.67,\"sizeInBytes\":23668,\"url\":\"/uploads/small_39223077_10216739405107650_3630018346109370368_n_bfc76c513d.jpg\"}}', '39223077_10216739405107650_3630018346109370368_n_bfc76c513d', '.jpg', 'image/jpeg', 31.62, '/uploads/39223077_10216739405107650_3630018346109370368_n_bfc76c513d.jpg', NULL, 'local', NULL, '/1', '2024-11-21 16:47:51.032000', '2024-11-21 16:47:51.032000', '2024-11-21 16:47:51.033000', NULL, NULL, NULL),
(56, 'liahiej4mzlzndrhviv3pk1t', '39223077_10216739405107650_3630018346109370368_n.jpg', NULL, NULL, 518, 600, '{\"small\":{\"name\":\"small_39223077_10216739405107650_3630018346109370368_n.jpg\",\"hash\":\"small_39223077_10216739405107650_3630018346109370368_n_0097dea508\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":432,\"height\":500,\"size\":23.67,\"sizeInBytes\":23668,\"url\":\"/uploads/small_39223077_10216739405107650_3630018346109370368_n_0097dea508.jpg\"},\"thumbnail\":{\"name\":\"thumbnail_39223077_10216739405107650_3630018346109370368_n.jpg\",\"hash\":\"thumbnail_39223077_10216739405107650_3630018346109370368_n_0097dea508\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":135,\"height\":156,\"size\":3.99,\"sizeInBytes\":3986,\"url\":\"/uploads/thumbnail_39223077_10216739405107650_3630018346109370368_n_0097dea508.jpg\"}}', '39223077_10216739405107650_3630018346109370368_n_0097dea508', '.jpg', 'image/jpeg', 31.62, '/uploads/39223077_10216739405107650_3630018346109370368_n_0097dea508.jpg', NULL, 'local', NULL, '/1', '2024-11-21 16:56:08.858000', '2024-11-21 16:56:08.858000', '2024-11-21 16:56:08.858000', NULL, NULL, NULL),
(57, 'lvegiicfzp650xkdab1mzpng', '79950412.jpg', NULL, NULL, 585, 801, '{\"thumbnail\":{\"name\":\"thumbnail_79950412.jpg\",\"hash\":\"thumbnail_79950412_5b0f4d9f7c\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":114,\"height\":156,\"size\":3.81,\"sizeInBytes\":3814,\"url\":\"/uploads/thumbnail_79950412_5b0f4d9f7c.jpg\"},\"small\":{\"name\":\"small_79950412.jpg\",\"hash\":\"small_79950412_5b0f4d9f7c\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":365,\"height\":500,\"size\":21.7,\"sizeInBytes\":21698,\"url\":\"/uploads/small_79950412_5b0f4d9f7c.jpg\"},\"medium\":{\"name\":\"medium_79950412.jpg\",\"hash\":\"medium_79950412_5b0f4d9f7c\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":548,\"height\":750,\"size\":40.07,\"sizeInBytes\":40074,\"url\":\"/uploads/medium_79950412_5b0f4d9f7c.jpg\"}}', '79950412_5b0f4d9f7c', '.jpg', 'image/jpeg', 44.99, '/uploads/79950412_5b0f4d9f7c.jpg', NULL, 'local', NULL, '/1', '2024-11-21 16:58:28.210000', '2024-11-21 16:58:28.210000', '2024-11-21 16:58:28.211000', NULL, NULL, NULL),
(58, 'ythjtesdnhx8uv32j6q4r786', '39223077_10216739405107650_3630018346109370368_n.jpg', NULL, NULL, 518, 600, '{\"thumbnail\":{\"name\":\"thumbnail_39223077_10216739405107650_3630018346109370368_n.jpg\",\"hash\":\"thumbnail_39223077_10216739405107650_3630018346109370368_n_0e3ab78453\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":135,\"height\":156,\"size\":3.99,\"sizeInBytes\":3986,\"url\":\"/uploads/thumbnail_39223077_10216739405107650_3630018346109370368_n_0e3ab78453.jpg\"},\"small\":{\"name\":\"small_39223077_10216739405107650_3630018346109370368_n.jpg\",\"hash\":\"small_39223077_10216739405107650_3630018346109370368_n_0e3ab78453\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":432,\"height\":500,\"size\":23.67,\"sizeInBytes\":23668,\"url\":\"/uploads/small_39223077_10216739405107650_3630018346109370368_n_0e3ab78453.jpg\"}}', '39223077_10216739405107650_3630018346109370368_n_0e3ab78453', '.jpg', 'image/jpeg', 31.62, '/uploads/39223077_10216739405107650_3630018346109370368_n_0e3ab78453.jpg', NULL, 'local', NULL, '/1', '2024-11-21 18:01:29.830000', '2024-11-21 18:01:29.830000', '2024-11-21 18:01:29.831000', NULL, NULL, NULL),
(59, 'ffl6wsh8tmu7xg2f9m16q0a5', 'fnd.jpg', NULL, NULL, 518, 600, '{\"thumbnail\":{\"name\":\"thumbnail_fnd.jpg\",\"hash\":\"thumbnail_fnd_fe73c20898\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":135,\"height\":156,\"size\":3.99,\"sizeInBytes\":3986,\"url\":\"/uploads/thumbnail_fnd_fe73c20898.jpg\"},\"small\":{\"name\":\"small_fnd.jpg\",\"hash\":\"small_fnd_fe73c20898\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":432,\"height\":500,\"size\":23.67,\"sizeInBytes\":23668,\"url\":\"/uploads/small_fnd_fe73c20898.jpg\"}}', 'fnd_fe73c20898', '.jpg', 'image/jpeg', 31.62, '/uploads/fnd_fe73c20898.jpg', NULL, 'local', NULL, '/1', '2024-11-21 18:05:09.917000', '2024-11-21 18:05:09.917000', '2024-11-21 18:05:09.918000', NULL, NULL, NULL),
(60, 'csvy7e47u0c8gcjgavw5o9xh', 'DSC_0167.JPG', NULL, NULL, 4496, 3000, '{\"thumbnail\":{\"name\":\"thumbnail_DSC_0167.JPG\",\"hash\":\"thumbnail_DSC_0167_1b53fcb355\",\"ext\":\".JPG\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":234,\"height\":156,\"size\":8.13,\"sizeInBytes\":8127,\"url\":\"/uploads/thumbnail_DSC_0167_1b53fcb355.JPG\"},\"medium\":{\"name\":\"medium_DSC_0167.JPG\",\"hash\":\"medium_DSC_0167_1b53fcb355\",\"ext\":\".JPG\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":750,\"height\":500,\"size\":45.98,\"sizeInBytes\":45979,\"url\":\"/uploads/medium_DSC_0167_1b53fcb355.JPG\"},\"small\":{\"name\":\"small_DSC_0167.JPG\",\"hash\":\"small_DSC_0167_1b53fcb355\",\"ext\":\".JPG\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":500,\"height\":334,\"size\":25.06,\"sizeInBytes\":25061,\"url\":\"/uploads/small_DSC_0167_1b53fcb355.JPG\"},\"large\":{\"name\":\"large_DSC_0167.JPG\",\"hash\":\"large_DSC_0167_1b53fcb355\",\"ext\":\".JPG\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":1000,\"height\":667,\"size\":71.78,\"sizeInBytes\":71782,\"url\":\"/uploads/large_DSC_0167_1b53fcb355.JPG\"}}', 'DSC_0167_1b53fcb355', '.JPG', 'image/jpeg', 1076.64, '/uploads/DSC_0167_1b53fcb355.JPG', NULL, 'local', NULL, '/1', '2024-11-21 18:11:38.900000', '2024-11-21 18:11:38.900000', '2024-11-21 18:11:38.901000', NULL, NULL, NULL),
(61, 'et302q319baouyb3ffi81ias', '407134828_3988211771405577_486378135089521077_n.jpg', NULL, NULL, 525, 640, '{\"thumbnail\":{\"name\":\"thumbnail_407134828_3988211771405577_486378135089521077_n.jpg\",\"hash\":\"thumbnail_407134828_3988211771405577_486378135089521077_n_9d44001371\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":128,\"height\":156,\"size\":6.64,\"sizeInBytes\":6640,\"url\":\"/uploads/thumbnail_407134828_3988211771405577_486378135089521077_n_9d44001371.jpg\"},\"small\":{\"name\":\"small_407134828_3988211771405577_486378135089521077_n.jpg\",\"hash\":\"small_407134828_3988211771405577_486378135089521077_n_9d44001371\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":410,\"height\":500,\"size\":36.58,\"sizeInBytes\":36578,\"url\":\"/uploads/small_407134828_3988211771405577_486378135089521077_n_9d44001371.jpg\"}}', '407134828_3988211771405577_486378135089521077_n_9d44001371', '.jpg', 'image/jpeg', 49.63, '/uploads/407134828_3988211771405577_486378135089521077_n_9d44001371.jpg', NULL, 'local', NULL, '/1', '2024-11-21 18:16:23.639000', '2024-11-21 18:16:23.639000', '2024-11-21 18:16:23.640000', NULL, NULL, NULL),
(62, 'm4mm1osmfuv35wo7o54w23dp', 'aaaa.jpg', NULL, NULL, 525, 640, '{\"thumbnail\":{\"name\":\"thumbnail_aaaa.jpg\",\"hash\":\"thumbnail_aaaa_f75665b34b\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":128,\"height\":156,\"size\":6.64,\"sizeInBytes\":6640,\"url\":\"/uploads/thumbnail_aaaa_f75665b34b.jpg\"},\"small\":{\"name\":\"small_aaaa.jpg\",\"hash\":\"small_aaaa_f75665b34b\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":410,\"height\":500,\"size\":36.58,\"sizeInBytes\":36578,\"url\":\"/uploads/small_aaaa_f75665b34b.jpg\"}}', 'aaaa_f75665b34b', '.jpg', 'image/jpeg', 49.63, '/uploads/aaaa_f75665b34b.jpg', NULL, 'local', NULL, '/1', '2024-11-21 18:19:26.482000', '2024-11-21 18:19:26.482000', '2024-11-21 18:19:26.483000', NULL, NULL, NULL),
(63, 'tw6doanrsa831o8s8yjrn42v', 'aaaa.jpg', NULL, NULL, 525, 640, '{\"thumbnail\":{\"name\":\"thumbnail_aaaa.jpg\",\"hash\":\"thumbnail_aaaa_299efde2fc\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":128,\"height\":156,\"size\":6.64,\"sizeInBytes\":6640,\"url\":\"/uploads/thumbnail_aaaa_299efde2fc.jpg\"},\"small\":{\"name\":\"small_aaaa.jpg\",\"hash\":\"small_aaaa_299efde2fc\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":410,\"height\":500,\"size\":36.58,\"sizeInBytes\":36578,\"url\":\"/uploads/small_aaaa_299efde2fc.jpg\"}}', 'aaaa_299efde2fc', '.jpg', 'image/jpeg', 49.63, '/uploads/aaaa_299efde2fc.jpg', NULL, 'local', NULL, '/1', '2024-11-21 18:20:38.578000', '2024-11-21 18:20:38.578000', '2024-11-21 18:20:38.578000', NULL, NULL, NULL),
(64, 'ok3oo2galx14b048s71lku5f', 'aaaa.jpg', NULL, NULL, 525, 640, '{\"thumbnail\":{\"name\":\"thumbnail_aaaa.jpg\",\"hash\":\"thumbnail_aaaa_6ee7caec7c\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":128,\"height\":156,\"size\":6.64,\"sizeInBytes\":6640,\"url\":\"/uploads/thumbnail_aaaa_6ee7caec7c.jpg\"},\"small\":{\"name\":\"small_aaaa.jpg\",\"hash\":\"small_aaaa_6ee7caec7c\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":410,\"height\":500,\"size\":36.58,\"sizeInBytes\":36578,\"url\":\"/uploads/small_aaaa_6ee7caec7c.jpg\"}}', 'aaaa_6ee7caec7c', '.jpg', 'image/jpeg', 49.63, '/uploads/aaaa_6ee7caec7c.jpg', NULL, 'local', NULL, '/1', '2024-11-21 18:29:32.323000', '2024-11-21 18:29:32.323000', '2024-11-21 18:29:32.323000', NULL, NULL, NULL),
(65, 'lze7rn6ostxvmtzedg4lcsf2', 'aaaa.jpg', NULL, NULL, 525, 640, '{\"thumbnail\":{\"name\":\"thumbnail_aaaa.jpg\",\"hash\":\"thumbnail_aaaa_a1040ed7e1\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":128,\"height\":156,\"size\":6.64,\"sizeInBytes\":6640,\"url\":\"/uploads/thumbnail_aaaa_a1040ed7e1.jpg\"},\"small\":{\"name\":\"small_aaaa.jpg\",\"hash\":\"small_aaaa_a1040ed7e1\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":410,\"height\":500,\"size\":36.58,\"sizeInBytes\":36578,\"url\":\"/uploads/small_aaaa_a1040ed7e1.jpg\"}}', 'aaaa_a1040ed7e1', '.jpg', 'image/jpeg', 49.63, '/uploads/aaaa_a1040ed7e1.jpg', NULL, 'local', NULL, '/1', '2024-11-21 18:30:52.643000', '2024-11-21 18:30:52.643000', '2024-11-21 18:30:52.643000', NULL, NULL, NULL),
(68, 'ak2bi73gjwwxxto9u6mts112', 'aaaa.jpg', NULL, NULL, 525, 640, '{\"thumbnail\":{\"name\":\"thumbnail_aaaa.jpg\",\"hash\":\"thumbnail_aaaa_8462e15d6b\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":128,\"height\":156,\"size\":6.64,\"sizeInBytes\":6640,\"url\":\"/uploads/thumbnail_aaaa_8462e15d6b.jpg\"},\"small\":{\"name\":\"small_aaaa.jpg\",\"hash\":\"small_aaaa_8462e15d6b\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":410,\"height\":500,\"size\":36.58,\"sizeInBytes\":36578,\"url\":\"/uploads/small_aaaa_8462e15d6b.jpg\"}}', 'aaaa_8462e15d6b', '.jpg', 'image/jpeg', 49.63, '/uploads/aaaa_8462e15d6b.jpg', NULL, 'local', NULL, '/1', '2024-11-24 10:08:04.379000', '2024-11-24 10:08:04.379000', '2024-11-24 10:08:04.383000', NULL, NULL, NULL),
(69, 'dj3msj64ip4782qoiypqdeyu', 'aaaa.jpg', NULL, NULL, 525, 640, '{\"thumbnail\":{\"name\":\"thumbnail_aaaa.jpg\",\"hash\":\"thumbnail_aaaa_6a3d4e1c6c\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":128,\"height\":156,\"size\":6.64,\"sizeInBytes\":6640,\"url\":\"/uploads/thumbnail_aaaa_6a3d4e1c6c.jpg\"},\"small\":{\"name\":\"small_aaaa.jpg\",\"hash\":\"small_aaaa_6a3d4e1c6c\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":410,\"height\":500,\"size\":36.58,\"sizeInBytes\":36578,\"url\":\"/uploads/small_aaaa_6a3d4e1c6c.jpg\"}}', 'aaaa_6a3d4e1c6c', '.jpg', 'image/jpeg', 49.63, '/uploads/aaaa_6a3d4e1c6c.jpg', NULL, 'local', NULL, '/1', '2024-11-24 10:10:17.817000', '2024-11-24 10:10:17.817000', '2024-11-24 10:10:17.817000', NULL, NULL, NULL),
(70, 'zevhy05rz4zdp3yr65yzjumt', 'aaaa.jpg', NULL, NULL, 525, 640, '{\"thumbnail\":{\"name\":\"thumbnail_aaaa.jpg\",\"hash\":\"thumbnail_aaaa_bd5a800288\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":128,\"height\":156,\"size\":6.64,\"sizeInBytes\":6640,\"url\":\"/uploads/thumbnail_aaaa_bd5a800288.jpg\"},\"small\":{\"name\":\"small_aaaa.jpg\",\"hash\":\"small_aaaa_bd5a800288\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":410,\"height\":500,\"size\":36.58,\"sizeInBytes\":36578,\"url\":\"/uploads/small_aaaa_bd5a800288.jpg\"}}', 'aaaa_bd5a800288', '.jpg', 'image/jpeg', 49.63, '/uploads/aaaa_bd5a800288.jpg', NULL, 'local', NULL, '/1', '2024-11-24 10:13:01.280000', '2024-11-24 10:13:01.280000', '2024-11-24 10:13:01.280000', NULL, NULL, NULL),
(71, 'z6g4wztfn2zq7mtlj4isb64s', 'aaaa.jpg', NULL, NULL, 525, 640, '{\"thumbnail\":{\"name\":\"thumbnail_aaaa.jpg\",\"hash\":\"thumbnail_aaaa_74ba4d800d\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":128,\"height\":156,\"size\":6.64,\"sizeInBytes\":6640,\"url\":\"/uploads/thumbnail_aaaa_74ba4d800d.jpg\"},\"small\":{\"name\":\"small_aaaa.jpg\",\"hash\":\"small_aaaa_74ba4d800d\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":410,\"height\":500,\"size\":36.58,\"sizeInBytes\":36578,\"url\":\"/uploads/small_aaaa_74ba4d800d.jpg\"}}', 'aaaa_74ba4d800d', '.jpg', 'image/jpeg', 49.63, '/uploads/aaaa_74ba4d800d.jpg', NULL, 'local', NULL, '/1', '2024-11-24 10:14:01.833000', '2024-11-24 10:14:01.833000', '2024-11-24 10:14:01.833000', NULL, NULL, NULL),
(72, 'oq29veeihkfp448rx95pi8fi', '412743694_328187446770911_5334286669028352461_n.jpg', NULL, NULL, 526, 797, '{\"thumbnail\":{\"name\":\"thumbnail_412743694_328187446770911_5334286669028352461_n.jpg\",\"hash\":\"thumbnail_412743694_328187446770911_5334286669028352461_n_1b14d81d82\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":103,\"height\":156,\"size\":6.49,\"sizeInBytes\":6488,\"url\":\"/uploads/thumbnail_412743694_328187446770911_5334286669028352461_n_1b14d81d82.jpg\"},\"small\":{\"name\":\"small_412743694_328187446770911_5334286669028352461_n.jpg\",\"hash\":\"small_412743694_328187446770911_5334286669028352461_n_1b14d81d82\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":330,\"height\":500,\"size\":41.77,\"sizeInBytes\":41771,\"url\":\"/uploads/small_412743694_328187446770911_5334286669028352461_n_1b14d81d82.jpg\"},\"medium\":{\"name\":\"medium_412743694_328187446770911_5334286669028352461_n.jpg\",\"hash\":\"medium_412743694_328187446770911_5334286669028352461_n_1b14d81d82\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":495,\"height\":750,\"size\":75.69,\"sizeInBytes\":75693,\"url\":\"/uploads/medium_412743694_328187446770911_5334286669028352461_n_1b14d81d82.jpg\"}}', '412743694_328187446770911_5334286669028352461_n_1b14d81d82', '.jpg', 'image/jpeg', 82.74, '/uploads/412743694_328187446770911_5334286669028352461_n_1b14d81d82.jpg', NULL, 'local', NULL, '/1', '2024-11-24 10:16:35.889000', '2024-11-24 10:16:35.889000', '2024-11-24 10:16:35.890000', NULL, NULL, NULL),
(73, 'ppb977csgt68ttabamcf0l8n', 'aaaa.jpg', NULL, NULL, 525, 640, '{\"thumbnail\":{\"name\":\"thumbnail_aaaa.jpg\",\"hash\":\"thumbnail_aaaa_d6baa39d3d\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":128,\"height\":156,\"size\":6.64,\"sizeInBytes\":6640,\"url\":\"/uploads/thumbnail_aaaa_d6baa39d3d.jpg\"},\"small\":{\"name\":\"small_aaaa.jpg\",\"hash\":\"small_aaaa_d6baa39d3d\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":410,\"height\":500,\"size\":36.58,\"sizeInBytes\":36578,\"url\":\"/uploads/small_aaaa_d6baa39d3d.jpg\"}}', 'aaaa_d6baa39d3d', '.jpg', 'image/jpeg', 49.63, '/uploads/aaaa_d6baa39d3d.jpg', NULL, 'local', NULL, '/1', '2024-11-24 10:18:46.821000', '2024-11-24 10:18:46.821000', '2024-11-24 10:18:46.821000', NULL, NULL, NULL),
(74, 'hvd4u44ejd83ngdkpuyax76n', 'aaaa.jpg', NULL, NULL, 525, 640, '{\"thumbnail\":{\"name\":\"thumbnail_aaaa.jpg\",\"hash\":\"thumbnail_aaaa_64010be765\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":128,\"height\":156,\"size\":6.64,\"sizeInBytes\":6640,\"url\":\"/uploads/thumbnail_aaaa_64010be765.jpg\"},\"small\":{\"name\":\"small_aaaa.jpg\",\"hash\":\"small_aaaa_64010be765\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":410,\"height\":500,\"size\":36.58,\"sizeInBytes\":36578,\"url\":\"/uploads/small_aaaa_64010be765.jpg\"}}', 'aaaa_64010be765', '.jpg', 'image/jpeg', 49.63, '/uploads/aaaa_64010be765.jpg', NULL, 'local', NULL, '/1', '2024-11-24 10:27:46.943000', '2024-11-24 10:27:46.943000', '2024-11-24 10:27:46.946000', NULL, NULL, NULL),
(75, 'vgrc5hy45di84vi4fs9b1mbd', 'aaaa.jpg', NULL, NULL, 525, 640, '{\"thumbnail\":{\"name\":\"thumbnail_aaaa.jpg\",\"hash\":\"thumbnail_aaaa_63863db957\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":128,\"height\":156,\"size\":6.64,\"sizeInBytes\":6640,\"url\":\"/uploads/thumbnail_aaaa_63863db957.jpg\"},\"small\":{\"name\":\"small_aaaa.jpg\",\"hash\":\"small_aaaa_63863db957\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":410,\"height\":500,\"size\":36.58,\"sizeInBytes\":36578,\"url\":\"/uploads/small_aaaa_63863db957.jpg\"}}', 'aaaa_63863db957', '.jpg', 'image/jpeg', 49.63, '/uploads/aaaa_63863db957.jpg', NULL, 'local', NULL, '/1', '2024-11-25 09:22:27.413000', '2024-11-25 09:22:27.413000', '2024-11-25 09:22:27.419000', NULL, NULL, NULL),
(76, 'slwa5oi8c8z6l7sy28ht4clr', 'aaaa.jpg', NULL, NULL, 525, 640, '{\"thumbnail\":{\"name\":\"thumbnail_aaaa.jpg\",\"hash\":\"thumbnail_aaaa_8bb74a5a63\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":128,\"height\":156,\"size\":6.64,\"sizeInBytes\":6640,\"url\":\"/uploads/thumbnail_aaaa_8bb74a5a63.jpg\"},\"small\":{\"name\":\"small_aaaa.jpg\",\"hash\":\"small_aaaa_8bb74a5a63\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":410,\"height\":500,\"size\":36.58,\"sizeInBytes\":36578,\"url\":\"/uploads/small_aaaa_8bb74a5a63.jpg\"}}', 'aaaa_8bb74a5a63', '.jpg', 'image/jpeg', 49.63, '/uploads/aaaa_8bb74a5a63.jpg', NULL, 'local', NULL, '/1', '2024-11-25 09:26:19.536000', '2024-11-25 09:26:19.536000', '2024-11-25 09:26:19.537000', NULL, NULL, NULL),
(77, 'jkd20tuh98xwego7f4wbvf6c', '412743694_328187446770911_5334286669028352461_n.jpg', NULL, NULL, 526, 797, '{\"thumbnail\":{\"name\":\"thumbnail_412743694_328187446770911_5334286669028352461_n.jpg\",\"hash\":\"thumbnail_412743694_328187446770911_5334286669028352461_n_1099e05a7f\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":103,\"height\":156,\"size\":6.49,\"sizeInBytes\":6488,\"url\":\"/uploads/thumbnail_412743694_328187446770911_5334286669028352461_n_1099e05a7f.jpg\"},\"small\":{\"name\":\"small_412743694_328187446770911_5334286669028352461_n.jpg\",\"hash\":\"small_412743694_328187446770911_5334286669028352461_n_1099e05a7f\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":330,\"height\":500,\"size\":41.77,\"sizeInBytes\":41771,\"url\":\"/uploads/small_412743694_328187446770911_5334286669028352461_n_1099e05a7f.jpg\"},\"medium\":{\"name\":\"medium_412743694_328187446770911_5334286669028352461_n.jpg\",\"hash\":\"medium_412743694_328187446770911_5334286669028352461_n_1099e05a7f\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":495,\"height\":750,\"size\":75.69,\"sizeInBytes\":75693,\"url\":\"/uploads/medium_412743694_328187446770911_5334286669028352461_n_1099e05a7f.jpg\"}}', '412743694_328187446770911_5334286669028352461_n_1099e05a7f', '.jpg', 'image/jpeg', 82.74, '/uploads/412743694_328187446770911_5334286669028352461_n_1099e05a7f.jpg', NULL, 'local', NULL, '/1', '2024-11-25 09:30:03.101000', '2024-11-25 09:30:03.101000', '2024-11-25 09:30:03.102000', NULL, NULL, NULL),
(78, 'uo65784oeziqc9vdwqzc9tjx', 'aaaa.jpg', NULL, NULL, 525, 640, '{\"thumbnail\":{\"name\":\"thumbnail_aaaa.jpg\",\"hash\":\"thumbnail_aaaa_fba3b8282d\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":128,\"height\":156,\"size\":6.64,\"sizeInBytes\":6640,\"url\":\"/uploads/thumbnail_aaaa_fba3b8282d.jpg\"},\"small\":{\"name\":\"small_aaaa.jpg\",\"hash\":\"small_aaaa_fba3b8282d\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":410,\"height\":500,\"size\":36.58,\"sizeInBytes\":36578,\"url\":\"/uploads/small_aaaa_fba3b8282d.jpg\"}}', 'aaaa_fba3b8282d', '.jpg', 'image/jpeg', 49.63, '/uploads/aaaa_fba3b8282d.jpg', NULL, 'local', NULL, '/1', '2024-11-25 09:31:59.841000', '2024-11-25 09:31:59.841000', '2024-11-25 09:31:59.842000', NULL, NULL, NULL),
(79, 'ozsit08wewfncrqf603zt3hp', 'aaaa.jpg', NULL, NULL, 525, 640, '{\"thumbnail\":{\"name\":\"thumbnail_aaaa.jpg\",\"hash\":\"thumbnail_aaaa_9b6541bd65\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":128,\"height\":156,\"size\":6.64,\"sizeInBytes\":6640,\"url\":\"/uploads/thumbnail_aaaa_9b6541bd65.jpg\"},\"small\":{\"name\":\"small_aaaa.jpg\",\"hash\":\"small_aaaa_9b6541bd65\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":410,\"height\":500,\"size\":36.58,\"sizeInBytes\":36578,\"url\":\"/uploads/small_aaaa_9b6541bd65.jpg\"}}', 'aaaa_9b6541bd65', '.jpg', 'image/jpeg', 49.63, '/uploads/aaaa_9b6541bd65.jpg', NULL, 'local', NULL, '/1', '2024-11-25 09:33:05.720000', '2024-11-25 09:33:05.720000', '2024-11-25 09:33:05.721000', NULL, NULL, NULL),
(80, 'ul2e1sdf2aezw32zbdy56jac', 'aaaa.jpg', NULL, NULL, 525, 640, '{\"thumbnail\":{\"name\":\"thumbnail_aaaa.jpg\",\"hash\":\"thumbnail_aaaa_05aaa1ed64\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":128,\"height\":156,\"size\":6.64,\"sizeInBytes\":6640,\"url\":\"/uploads/thumbnail_aaaa_05aaa1ed64.jpg\"},\"small\":{\"name\":\"small_aaaa.jpg\",\"hash\":\"small_aaaa_05aaa1ed64\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":410,\"height\":500,\"size\":36.58,\"sizeInBytes\":36578,\"url\":\"/uploads/small_aaaa_05aaa1ed64.jpg\"}}', 'aaaa_05aaa1ed64', '.jpg', 'image/jpeg', 49.63, '/uploads/aaaa_05aaa1ed64.jpg', NULL, 'local', NULL, '/1', '2024-11-25 10:22:08.916000', '2024-11-25 10:22:08.916000', '2024-11-25 10:22:08.918000', NULL, NULL, NULL),
(81, 'yki6qq65zn4xcjdmo6y853fw', 'aaaa.jpg', NULL, NULL, 525, 640, '{\"thumbnail\":{\"name\":\"thumbnail_aaaa.jpg\",\"hash\":\"thumbnail_aaaa_f2b2c70ddf\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":128,\"height\":156,\"size\":6.64,\"sizeInBytes\":6640,\"url\":\"/uploads/thumbnail_aaaa_f2b2c70ddf.jpg\"},\"small\":{\"name\":\"small_aaaa.jpg\",\"hash\":\"small_aaaa_f2b2c70ddf\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":410,\"height\":500,\"size\":36.58,\"sizeInBytes\":36578,\"url\":\"/uploads/small_aaaa_f2b2c70ddf.jpg\"}}', 'aaaa_f2b2c70ddf', '.jpg', 'image/jpeg', 49.63, '/uploads/aaaa_f2b2c70ddf.jpg', NULL, 'local', NULL, '/1', '2024-11-25 10:27:16.825000', '2024-11-25 10:27:16.825000', '2024-11-25 10:27:16.825000', NULL, NULL, NULL),
(82, 'uwa0v4yalytaouo1di436zie', 'aaaa.jpg', NULL, NULL, 525, 640, '{\"thumbnail\":{\"name\":\"thumbnail_aaaa.jpg\",\"hash\":\"thumbnail_aaaa_441f62992d\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":128,\"height\":156,\"size\":6.64,\"sizeInBytes\":6640,\"url\":\"/uploads/thumbnail_aaaa_441f62992d.jpg\"},\"small\":{\"name\":\"small_aaaa.jpg\",\"hash\":\"small_aaaa_441f62992d\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":410,\"height\":500,\"size\":36.58,\"sizeInBytes\":36578,\"url\":\"/uploads/small_aaaa_441f62992d.jpg\"}}', 'aaaa_441f62992d', '.jpg', 'image/jpeg', 49.63, '/uploads/aaaa_441f62992d.jpg', NULL, 'local', NULL, '/1', '2024-11-25 10:27:42.232000', '2024-11-25 10:27:42.232000', '2024-11-25 10:27:42.233000', NULL, NULL, NULL),
(83, 's66ou5ou1g5z0n60c6j4ktat', 'aaaa.jpg', NULL, NULL, 525, 640, '{\"thumbnail\":{\"name\":\"thumbnail_aaaa.jpg\",\"hash\":\"thumbnail_aaaa_b08e78611e\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":128,\"height\":156,\"size\":6.64,\"sizeInBytes\":6640,\"url\":\"/uploads/thumbnail_aaaa_b08e78611e.jpg\"},\"small\":{\"name\":\"small_aaaa.jpg\",\"hash\":\"small_aaaa_b08e78611e\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":410,\"height\":500,\"size\":36.58,\"sizeInBytes\":36578,\"url\":\"/uploads/small_aaaa_b08e78611e.jpg\"}}', 'aaaa_b08e78611e', '.jpg', 'image/jpeg', 49.63, '/uploads/aaaa_b08e78611e.jpg', NULL, 'local', NULL, '/1', '2024-11-25 10:35:37.977000', '2024-11-25 10:35:37.977000', '2024-11-25 10:35:37.978000', NULL, NULL, NULL),
(84, 'bk91i1sqsdu1jdkhs4oqzqet', 'aaaa.jpg', NULL, NULL, 525, 640, '{\"thumbnail\":{\"name\":\"thumbnail_aaaa.jpg\",\"hash\":\"thumbnail_aaaa_7acd45b3b4\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":128,\"height\":156,\"size\":6.64,\"sizeInBytes\":6640,\"url\":\"/uploads/thumbnail_aaaa_7acd45b3b4.jpg\"},\"small\":{\"name\":\"small_aaaa.jpg\",\"hash\":\"small_aaaa_7acd45b3b4\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":410,\"height\":500,\"size\":36.58,\"sizeInBytes\":36578,\"url\":\"/uploads/small_aaaa_7acd45b3b4.jpg\"}}', 'aaaa_7acd45b3b4', '.jpg', 'image/jpeg', 49.63, '/uploads/aaaa_7acd45b3b4.jpg', NULL, 'local', NULL, '/1', '2024-11-25 10:45:40.890000', '2024-11-25 10:45:40.890000', '2024-11-25 10:45:40.891000', NULL, NULL, NULL),
(85, 'jbkmaq9fvcd0lytnr3z895z0', '412743694_328187446770911_5334286669028352461_n.jpg', NULL, NULL, 526, 797, '{\"thumbnail\":{\"name\":\"thumbnail_412743694_328187446770911_5334286669028352461_n.jpg\",\"hash\":\"thumbnail_412743694_328187446770911_5334286669028352461_n_915893b2d4\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":103,\"height\":156,\"size\":6.49,\"sizeInBytes\":6488,\"url\":\"/uploads/thumbnail_412743694_328187446770911_5334286669028352461_n_915893b2d4.jpg\"},\"small\":{\"name\":\"small_412743694_328187446770911_5334286669028352461_n.jpg\",\"hash\":\"small_412743694_328187446770911_5334286669028352461_n_915893b2d4\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":330,\"height\":500,\"size\":41.77,\"sizeInBytes\":41771,\"url\":\"/uploads/small_412743694_328187446770911_5334286669028352461_n_915893b2d4.jpg\"},\"medium\":{\"name\":\"medium_412743694_328187446770911_5334286669028352461_n.jpg\",\"hash\":\"medium_412743694_328187446770911_5334286669028352461_n_915893b2d4\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":495,\"height\":750,\"size\":75.69,\"sizeInBytes\":75693,\"url\":\"/uploads/medium_412743694_328187446770911_5334286669028352461_n_915893b2d4.jpg\"}}', '412743694_328187446770911_5334286669028352461_n_915893b2d4', '.jpg', 'image/jpeg', 82.74, '/uploads/412743694_328187446770911_5334286669028352461_n_915893b2d4.jpg', NULL, 'local', NULL, '/1', '2024-11-25 10:47:57.517000', '2024-11-25 10:47:57.517000', '2024-11-25 10:47:57.517000', NULL, NULL, NULL),
(86, 'p9faiwqfmkcbjgyg5ue7la6b', 'aaaa.jpg', NULL, NULL, 525, 640, '{\"thumbnail\":{\"name\":\"thumbnail_aaaa.jpg\",\"hash\":\"thumbnail_aaaa_37f71469f9\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":128,\"height\":156,\"size\":6.64,\"sizeInBytes\":6640,\"url\":\"/uploads/thumbnail_aaaa_37f71469f9.jpg\"},\"small\":{\"name\":\"small_aaaa.jpg\",\"hash\":\"small_aaaa_37f71469f9\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":410,\"height\":500,\"size\":36.58,\"sizeInBytes\":36578,\"url\":\"/uploads/small_aaaa_37f71469f9.jpg\"}}', 'aaaa_37f71469f9', '.jpg', 'image/jpeg', 49.63, '/uploads/aaaa_37f71469f9.jpg', NULL, 'local', NULL, '/1', '2024-11-25 10:58:53.240000', '2024-11-25 10:58:53.240000', '2024-11-25 10:58:53.240000', NULL, NULL, NULL),
(87, 'ac3g8r5o38yjwhd53g9rpema', 'aaaa.jpg', NULL, NULL, 525, 640, '{\"thumbnail\":{\"name\":\"thumbnail_aaaa.jpg\",\"hash\":\"thumbnail_aaaa_962c2a4c63\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":128,\"height\":156,\"size\":6.64,\"sizeInBytes\":6640,\"url\":\"/uploads/thumbnail_aaaa_962c2a4c63.jpg\"},\"small\":{\"name\":\"small_aaaa.jpg\",\"hash\":\"small_aaaa_962c2a4c63\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":410,\"height\":500,\"size\":36.58,\"sizeInBytes\":36578,\"url\":\"/uploads/small_aaaa_962c2a4c63.jpg\"}}', 'aaaa_962c2a4c63', '.jpg', 'image/jpeg', 49.63, '/uploads/aaaa_962c2a4c63.jpg', NULL, 'local', NULL, '/1', '2024-11-25 10:59:44.673000', '2024-11-25 10:59:44.673000', '2024-11-25 10:59:44.674000', NULL, NULL, NULL),
(88, 'nygazuve73c2wpn4rmq8equx', 'aaaa.jpg', NULL, NULL, 525, 640, '{\"thumbnail\":{\"name\":\"thumbnail_aaaa.jpg\",\"hash\":\"thumbnail_aaaa_e7e96aa5c3\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":128,\"height\":156,\"size\":6.64,\"sizeInBytes\":6640,\"url\":\"/uploads/thumbnail_aaaa_e7e96aa5c3.jpg\"},\"small\":{\"name\":\"small_aaaa.jpg\",\"hash\":\"small_aaaa_e7e96aa5c3\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":410,\"height\":500,\"size\":36.58,\"sizeInBytes\":36578,\"url\":\"/uploads/small_aaaa_e7e96aa5c3.jpg\"}}', 'aaaa_e7e96aa5c3', '.jpg', 'image/jpeg', 49.63, '/uploads/aaaa_e7e96aa5c3.jpg', NULL, 'local', NULL, '/1', '2024-11-25 11:03:08.512000', '2024-11-25 11:03:08.512000', '2024-11-25 11:03:08.513000', NULL, NULL, NULL),
(89, 'e4en2sff65xs78prs3kwn2el', '412743694_328187446770911_5334286669028352461_n.jpg', NULL, NULL, 526, 797, '{\"thumbnail\":{\"name\":\"thumbnail_412743694_328187446770911_5334286669028352461_n.jpg\",\"hash\":\"thumbnail_412743694_328187446770911_5334286669028352461_n_b136ecf5b5\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":103,\"height\":156,\"size\":6.49,\"sizeInBytes\":6488,\"url\":\"/uploads/thumbnail_412743694_328187446770911_5334286669028352461_n_b136ecf5b5.jpg\"},\"small\":{\"name\":\"small_412743694_328187446770911_5334286669028352461_n.jpg\",\"hash\":\"small_412743694_328187446770911_5334286669028352461_n_b136ecf5b5\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":330,\"height\":500,\"size\":41.77,\"sizeInBytes\":41771,\"url\":\"/uploads/small_412743694_328187446770911_5334286669028352461_n_b136ecf5b5.jpg\"},\"medium\":{\"name\":\"medium_412743694_328187446770911_5334286669028352461_n.jpg\",\"hash\":\"medium_412743694_328187446770911_5334286669028352461_n_b136ecf5b5\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":495,\"height\":750,\"size\":75.69,\"sizeInBytes\":75693,\"url\":\"/uploads/medium_412743694_328187446770911_5334286669028352461_n_b136ecf5b5.jpg\"}}', '412743694_328187446770911_5334286669028352461_n_b136ecf5b5', '.jpg', 'image/jpeg', 82.74, '/uploads/412743694_328187446770911_5334286669028352461_n_b136ecf5b5.jpg', NULL, 'local', NULL, '/1', '2024-11-25 11:06:57.290000', '2024-11-25 11:06:57.290000', '2024-11-25 11:06:57.291000', NULL, NULL, NULL),
(90, 'vrlertj9ks84ge3spaovsrtk', 'aaaa.jpg', NULL, NULL, 525, 640, '{\"small\":{\"name\":\"small_aaaa.jpg\",\"hash\":\"small_aaaa_ca5b459b2a\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":410,\"height\":500,\"size\":36.58,\"sizeInBytes\":36578,\"url\":\"/uploads/small_aaaa_ca5b459b2a.jpg\"},\"thumbnail\":{\"name\":\"thumbnail_aaaa.jpg\",\"hash\":\"thumbnail_aaaa_ca5b459b2a\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":128,\"height\":156,\"size\":6.64,\"sizeInBytes\":6640,\"url\":\"/uploads/thumbnail_aaaa_ca5b459b2a.jpg\"}}', 'aaaa_ca5b459b2a', '.jpg', 'image/jpeg', 49.63, '/uploads/aaaa_ca5b459b2a.jpg', NULL, 'local', NULL, '/1', '2024-11-25 11:08:33.881000', '2024-11-25 11:08:33.881000', '2024-11-25 11:08:33.881000', NULL, NULL, NULL),
(91, 'md0u4qu2jg8yxn9skg83rqte', '412743694_328187446770911_5334286669028352461_n.jpg', NULL, NULL, 526, 797, '{\"thumbnail\":{\"name\":\"thumbnail_412743694_328187446770911_5334286669028352461_n.jpg\",\"hash\":\"thumbnail_412743694_328187446770911_5334286669028352461_n_b97619d5ed\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":103,\"height\":156,\"size\":6.49,\"sizeInBytes\":6488,\"url\":\"/uploads/thumbnail_412743694_328187446770911_5334286669028352461_n_b97619d5ed.jpg\"},\"small\":{\"name\":\"small_412743694_328187446770911_5334286669028352461_n.jpg\",\"hash\":\"small_412743694_328187446770911_5334286669028352461_n_b97619d5ed\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":330,\"height\":500,\"size\":41.77,\"sizeInBytes\":41771,\"url\":\"/uploads/small_412743694_328187446770911_5334286669028352461_n_b97619d5ed.jpg\"},\"medium\":{\"name\":\"medium_412743694_328187446770911_5334286669028352461_n.jpg\",\"hash\":\"medium_412743694_328187446770911_5334286669028352461_n_b97619d5ed\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":495,\"height\":750,\"size\":75.69,\"sizeInBytes\":75693,\"url\":\"/uploads/medium_412743694_328187446770911_5334286669028352461_n_b97619d5ed.jpg\"}}', '412743694_328187446770911_5334286669028352461_n_b97619d5ed', '.jpg', 'image/jpeg', 82.74, '/uploads/412743694_328187446770911_5334286669028352461_n_b97619d5ed.jpg', NULL, 'local', NULL, '/1', '2024-11-25 11:13:21.585000', '2024-11-25 11:13:21.585000', '2024-11-25 11:13:21.586000', NULL, NULL, NULL),
(92, 'jg7k1imjnz5r3p9fx1g11fr0', '412743694_328187446770911_5334286669028352461_n.jpg', NULL, NULL, 526, 797, '{\"thumbnail\":{\"name\":\"thumbnail_412743694_328187446770911_5334286669028352461_n.jpg\",\"hash\":\"thumbnail_412743694_328187446770911_5334286669028352461_n_7051d6eefa\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":103,\"height\":156,\"size\":6.49,\"sizeInBytes\":6488,\"url\":\"/uploads/thumbnail_412743694_328187446770911_5334286669028352461_n_7051d6eefa.jpg\"},\"small\":{\"name\":\"small_412743694_328187446770911_5334286669028352461_n.jpg\",\"hash\":\"small_412743694_328187446770911_5334286669028352461_n_7051d6eefa\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":330,\"height\":500,\"size\":41.77,\"sizeInBytes\":41771,\"url\":\"/uploads/small_412743694_328187446770911_5334286669028352461_n_7051d6eefa.jpg\"},\"medium\":{\"name\":\"medium_412743694_328187446770911_5334286669028352461_n.jpg\",\"hash\":\"medium_412743694_328187446770911_5334286669028352461_n_7051d6eefa\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":495,\"height\":750,\"size\":75.69,\"sizeInBytes\":75693,\"url\":\"/uploads/medium_412743694_328187446770911_5334286669028352461_n_7051d6eefa.jpg\"}}', '412743694_328187446770911_5334286669028352461_n_7051d6eefa', '.jpg', 'image/jpeg', 82.74, '/uploads/412743694_328187446770911_5334286669028352461_n_7051d6eefa.jpg', NULL, 'local', NULL, '/1', '2024-11-25 11:13:49.126000', '2024-11-25 11:13:49.126000', '2024-11-25 11:13:49.126000', NULL, NULL, NULL);
INSERT INTO `files` (`id`, `document_id`, `name`, `alternative_text`, `caption`, `width`, `height`, `formats`, `hash`, `ext`, `mime`, `size`, `url`, `preview_url`, `provider`, `provider_metadata`, `folder_path`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`, `locale`) VALUES
(93, 'sgec9udan4a04kbnqy05nd2t', '412743694_328187446770911_5334286669028352461_n.jpg', NULL, NULL, 526, 797, '{\"thumbnail\":{\"name\":\"thumbnail_412743694_328187446770911_5334286669028352461_n.jpg\",\"hash\":\"thumbnail_412743694_328187446770911_5334286669028352461_n_839f03b4ca\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":103,\"height\":156,\"size\":6.49,\"sizeInBytes\":6488,\"url\":\"/uploads/thumbnail_412743694_328187446770911_5334286669028352461_n_839f03b4ca.jpg\"},\"small\":{\"name\":\"small_412743694_328187446770911_5334286669028352461_n.jpg\",\"hash\":\"small_412743694_328187446770911_5334286669028352461_n_839f03b4ca\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":330,\"height\":500,\"size\":41.77,\"sizeInBytes\":41771,\"url\":\"/uploads/small_412743694_328187446770911_5334286669028352461_n_839f03b4ca.jpg\"},\"medium\":{\"name\":\"medium_412743694_328187446770911_5334286669028352461_n.jpg\",\"hash\":\"medium_412743694_328187446770911_5334286669028352461_n_839f03b4ca\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":495,\"height\":750,\"size\":75.69,\"sizeInBytes\":75693,\"url\":\"/uploads/medium_412743694_328187446770911_5334286669028352461_n_839f03b4ca.jpg\"}}', '412743694_328187446770911_5334286669028352461_n_839f03b4ca', '.jpg', 'image/jpeg', 82.74, '/uploads/412743694_328187446770911_5334286669028352461_n_839f03b4ca.jpg', NULL, 'local', NULL, '/1', '2024-11-25 11:16:34.107000', '2024-11-25 11:16:34.107000', '2024-11-25 11:16:34.107000', NULL, NULL, NULL),
(94, 'd2crfifvmjtf14ssl8zvx91v', 'aaaa.jpg', NULL, NULL, 525, 640, '{\"thumbnail\":{\"name\":\"thumbnail_aaaa.jpg\",\"hash\":\"thumbnail_aaaa_1d2f04b904\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":128,\"height\":156,\"size\":6.64,\"sizeInBytes\":6640,\"url\":\"/uploads/thumbnail_aaaa_1d2f04b904.jpg\"},\"small\":{\"name\":\"small_aaaa.jpg\",\"hash\":\"small_aaaa_1d2f04b904\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":410,\"height\":500,\"size\":36.58,\"sizeInBytes\":36578,\"url\":\"/uploads/small_aaaa_1d2f04b904.jpg\"}}', 'aaaa_1d2f04b904', '.jpg', 'image/jpeg', 49.63, '/uploads/aaaa_1d2f04b904.jpg', NULL, 'local', NULL, '/1', '2024-11-25 11:17:55.912000', '2024-11-25 11:17:55.912000', '2024-11-25 11:17:55.913000', NULL, NULL, NULL),
(95, 'wn44l0e7y2wiwhngq6u0z9bv', 'aaaa.jpg', NULL, NULL, 525, 640, '{\"thumbnail\":{\"name\":\"thumbnail_aaaa.jpg\",\"hash\":\"thumbnail_aaaa_b786da0135\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":128,\"height\":156,\"size\":6.64,\"sizeInBytes\":6640,\"url\":\"/uploads/thumbnail_aaaa_b786da0135.jpg\"},\"small\":{\"name\":\"small_aaaa.jpg\",\"hash\":\"small_aaaa_b786da0135\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":410,\"height\":500,\"size\":36.58,\"sizeInBytes\":36578,\"url\":\"/uploads/small_aaaa_b786da0135.jpg\"}}', 'aaaa_b786da0135', '.jpg', 'image/jpeg', 49.63, '/uploads/aaaa_b786da0135.jpg', NULL, 'local', NULL, '/1', '2024-11-25 11:18:18.381000', '2024-11-25 11:18:18.381000', '2024-11-25 11:18:18.381000', NULL, NULL, NULL),
(96, 'vu0ypogxp1fq70aknhtuu5d8', 'aaaa.jpg', NULL, NULL, 525, 640, '{\"thumbnail\":{\"name\":\"thumbnail_aaaa.jpg\",\"hash\":\"thumbnail_aaaa_5b8b760905\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":128,\"height\":156,\"size\":6.64,\"sizeInBytes\":6640,\"url\":\"/uploads/thumbnail_aaaa_5b8b760905.jpg\"},\"small\":{\"name\":\"small_aaaa.jpg\",\"hash\":\"small_aaaa_5b8b760905\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":410,\"height\":500,\"size\":36.58,\"sizeInBytes\":36578,\"url\":\"/uploads/small_aaaa_5b8b760905.jpg\"}}', 'aaaa_5b8b760905', '.jpg', 'image/jpeg', 49.63, '/uploads/aaaa_5b8b760905.jpg', NULL, 'local', NULL, '/1', '2024-11-25 11:20:44.540000', '2024-11-25 11:20:44.540000', '2024-11-25 11:20:44.540000', NULL, NULL, NULL),
(97, 'rs4k9nyiupttpl1uf6kxwzly', '412743694_328187446770911_5334286669028352461_n.jpg', NULL, NULL, 526, 797, '{\"thumbnail\":{\"name\":\"thumbnail_412743694_328187446770911_5334286669028352461_n.jpg\",\"hash\":\"thumbnail_412743694_328187446770911_5334286669028352461_n_3839ffd006\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":103,\"height\":156,\"size\":6.49,\"sizeInBytes\":6488,\"url\":\"/uploads/thumbnail_412743694_328187446770911_5334286669028352461_n_3839ffd006.jpg\"},\"small\":{\"name\":\"small_412743694_328187446770911_5334286669028352461_n.jpg\",\"hash\":\"small_412743694_328187446770911_5334286669028352461_n_3839ffd006\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":330,\"height\":500,\"size\":41.77,\"sizeInBytes\":41771,\"url\":\"/uploads/small_412743694_328187446770911_5334286669028352461_n_3839ffd006.jpg\"},\"medium\":{\"name\":\"medium_412743694_328187446770911_5334286669028352461_n.jpg\",\"hash\":\"medium_412743694_328187446770911_5334286669028352461_n_3839ffd006\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":495,\"height\":750,\"size\":75.69,\"sizeInBytes\":75693,\"url\":\"/uploads/medium_412743694_328187446770911_5334286669028352461_n_3839ffd006.jpg\"}}', '412743694_328187446770911_5334286669028352461_n_3839ffd006', '.jpg', 'image/jpeg', 82.74, '/uploads/412743694_328187446770911_5334286669028352461_n_3839ffd006.jpg', NULL, 'local', NULL, '/1', '2024-11-25 11:23:27.227000', '2024-11-25 11:23:27.227000', '2024-11-25 11:23:27.228000', NULL, NULL, NULL),
(98, 'u479b7mqe4zzjxn1ue73stf1', '412743694_328187446770911_5334286669028352461_n.jpg', NULL, NULL, 526, 797, '{\"thumbnail\":{\"name\":\"thumbnail_412743694_328187446770911_5334286669028352461_n.jpg\",\"hash\":\"thumbnail_412743694_328187446770911_5334286669028352461_n_196e7b6bf6\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":103,\"height\":156,\"size\":6.49,\"sizeInBytes\":6488,\"url\":\"/uploads/thumbnail_412743694_328187446770911_5334286669028352461_n_196e7b6bf6.jpg\"},\"small\":{\"name\":\"small_412743694_328187446770911_5334286669028352461_n.jpg\",\"hash\":\"small_412743694_328187446770911_5334286669028352461_n_196e7b6bf6\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":330,\"height\":500,\"size\":41.77,\"sizeInBytes\":41771,\"url\":\"/uploads/small_412743694_328187446770911_5334286669028352461_n_196e7b6bf6.jpg\"},\"medium\":{\"name\":\"medium_412743694_328187446770911_5334286669028352461_n.jpg\",\"hash\":\"medium_412743694_328187446770911_5334286669028352461_n_196e7b6bf6\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":495,\"height\":750,\"size\":75.69,\"sizeInBytes\":75693,\"url\":\"/uploads/medium_412743694_328187446770911_5334286669028352461_n_196e7b6bf6.jpg\"}}', '412743694_328187446770911_5334286669028352461_n_196e7b6bf6', '.jpg', 'image/jpeg', 82.74, '/uploads/412743694_328187446770911_5334286669028352461_n_196e7b6bf6.jpg', NULL, 'local', NULL, '/1', '2024-11-25 11:25:10.388000', '2024-11-25 11:25:10.388000', '2024-11-25 11:25:10.389000', NULL, NULL, NULL),
(99, 'tmt7caecmwqv657tkuiov85n', '412743694_328187446770911_5334286669028352461_n.jpg', NULL, NULL, 526, 797, '{\"thumbnail\":{\"name\":\"thumbnail_412743694_328187446770911_5334286669028352461_n.jpg\",\"hash\":\"thumbnail_412743694_328187446770911_5334286669028352461_n_3db063167a\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":103,\"height\":156,\"size\":6.49,\"sizeInBytes\":6488,\"url\":\"/uploads/thumbnail_412743694_328187446770911_5334286669028352461_n_3db063167a.jpg\"},\"small\":{\"name\":\"small_412743694_328187446770911_5334286669028352461_n.jpg\",\"hash\":\"small_412743694_328187446770911_5334286669028352461_n_3db063167a\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":330,\"height\":500,\"size\":41.77,\"sizeInBytes\":41771,\"url\":\"/uploads/small_412743694_328187446770911_5334286669028352461_n_3db063167a.jpg\"},\"medium\":{\"name\":\"medium_412743694_328187446770911_5334286669028352461_n.jpg\",\"hash\":\"medium_412743694_328187446770911_5334286669028352461_n_3db063167a\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":495,\"height\":750,\"size\":75.69,\"sizeInBytes\":75693,\"url\":\"/uploads/medium_412743694_328187446770911_5334286669028352461_n_3db063167a.jpg\"}}', '412743694_328187446770911_5334286669028352461_n_3db063167a', '.jpg', 'image/jpeg', 82.74, '/uploads/412743694_328187446770911_5334286669028352461_n_3db063167a.jpg', NULL, 'local', NULL, '/1', '2024-11-25 11:26:27.900000', '2024-11-25 11:26:27.900000', '2024-11-25 11:26:27.901000', NULL, NULL, NULL),
(100, 'ehmnuu2ycs6wbsl5p6lkujxd', '412743694_328187446770911_5334286669028352461_n.jpg', NULL, NULL, 526, 797, '{\"thumbnail\":{\"name\":\"thumbnail_412743694_328187446770911_5334286669028352461_n.jpg\",\"hash\":\"thumbnail_412743694_328187446770911_5334286669028352461_n_e021e8d136\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":103,\"height\":156,\"size\":6.49,\"sizeInBytes\":6488,\"url\":\"/uploads/thumbnail_412743694_328187446770911_5334286669028352461_n_e021e8d136.jpg\"},\"small\":{\"name\":\"small_412743694_328187446770911_5334286669028352461_n.jpg\",\"hash\":\"small_412743694_328187446770911_5334286669028352461_n_e021e8d136\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":330,\"height\":500,\"size\":41.77,\"sizeInBytes\":41771,\"url\":\"/uploads/small_412743694_328187446770911_5334286669028352461_n_e021e8d136.jpg\"},\"medium\":{\"name\":\"medium_412743694_328187446770911_5334286669028352461_n.jpg\",\"hash\":\"medium_412743694_328187446770911_5334286669028352461_n_e021e8d136\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":495,\"height\":750,\"size\":75.69,\"sizeInBytes\":75693,\"url\":\"/uploads/medium_412743694_328187446770911_5334286669028352461_n_e021e8d136.jpg\"}}', '412743694_328187446770911_5334286669028352461_n_e021e8d136', '.jpg', 'image/jpeg', 82.74, '/uploads/412743694_328187446770911_5334286669028352461_n_e021e8d136.jpg', NULL, 'local', NULL, '/1', '2024-11-25 11:28:57.319000', '2024-11-25 11:28:57.319000', '2024-11-25 11:28:57.320000', NULL, NULL, NULL),
(101, 'a9hc4xy4124ljw8v6j7ibk7l', '412743694_328187446770911_5334286669028352461_n.jpg', NULL, NULL, 526, 797, '{\"thumbnail\":{\"name\":\"thumbnail_412743694_328187446770911_5334286669028352461_n.jpg\",\"hash\":\"thumbnail_412743694_328187446770911_5334286669028352461_n_059ce16c4f\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":103,\"height\":156,\"size\":6.49,\"sizeInBytes\":6488,\"url\":\"/uploads/thumbnail_412743694_328187446770911_5334286669028352461_n_059ce16c4f.jpg\"},\"small\":{\"name\":\"small_412743694_328187446770911_5334286669028352461_n.jpg\",\"hash\":\"small_412743694_328187446770911_5334286669028352461_n_059ce16c4f\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":330,\"height\":500,\"size\":41.77,\"sizeInBytes\":41771,\"url\":\"/uploads/small_412743694_328187446770911_5334286669028352461_n_059ce16c4f.jpg\"},\"medium\":{\"name\":\"medium_412743694_328187446770911_5334286669028352461_n.jpg\",\"hash\":\"medium_412743694_328187446770911_5334286669028352461_n_059ce16c4f\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":495,\"height\":750,\"size\":75.69,\"sizeInBytes\":75693,\"url\":\"/uploads/medium_412743694_328187446770911_5334286669028352461_n_059ce16c4f.jpg\"}}', '412743694_328187446770911_5334286669028352461_n_059ce16c4f', '.jpg', 'image/jpeg', 82.74, '/uploads/412743694_328187446770911_5334286669028352461_n_059ce16c4f.jpg', NULL, 'local', NULL, '/1', '2024-11-25 11:34:44.217000', '2024-11-25 11:34:44.217000', '2024-11-25 11:34:44.218000', NULL, NULL, NULL),
(102, 'scji6zkmk24t4b2avo51ekt8', 'aaaa.jpg', NULL, NULL, 525, 640, '{\"thumbnail\":{\"name\":\"thumbnail_aaaa.jpg\",\"hash\":\"thumbnail_aaaa_b336c72952\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":128,\"height\":156,\"size\":6.64,\"sizeInBytes\":6640,\"url\":\"/uploads/thumbnail_aaaa_b336c72952.jpg\"},\"small\":{\"name\":\"small_aaaa.jpg\",\"hash\":\"small_aaaa_b336c72952\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":410,\"height\":500,\"size\":36.58,\"sizeInBytes\":36578,\"url\":\"/uploads/small_aaaa_b336c72952.jpg\"}}', 'aaaa_b336c72952', '.jpg', 'image/jpeg', 49.63, '/uploads/aaaa_b336c72952.jpg', NULL, 'local', NULL, '/1', '2024-11-25 11:36:39.499000', '2024-11-25 11:36:39.499000', '2024-11-25 11:36:39.499000', NULL, NULL, NULL),
(103, 'kqjel34g0fh2v9stf7chpajy', '412743694_328187446770911_5334286669028352461_n.jpg', NULL, NULL, 526, 797, '{\"thumbnail\":{\"name\":\"thumbnail_412743694_328187446770911_5334286669028352461_n.jpg\",\"hash\":\"thumbnail_412743694_328187446770911_5334286669028352461_n_d09893ab54\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":103,\"height\":156,\"size\":6.49,\"sizeInBytes\":6488,\"url\":\"/uploads/thumbnail_412743694_328187446770911_5334286669028352461_n_d09893ab54.jpg\"},\"small\":{\"name\":\"small_412743694_328187446770911_5334286669028352461_n.jpg\",\"hash\":\"small_412743694_328187446770911_5334286669028352461_n_d09893ab54\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":330,\"height\":500,\"size\":41.77,\"sizeInBytes\":41771,\"url\":\"/uploads/small_412743694_328187446770911_5334286669028352461_n_d09893ab54.jpg\"},\"medium\":{\"name\":\"medium_412743694_328187446770911_5334286669028352461_n.jpg\",\"hash\":\"medium_412743694_328187446770911_5334286669028352461_n_d09893ab54\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":495,\"height\":750,\"size\":75.69,\"sizeInBytes\":75693,\"url\":\"/uploads/medium_412743694_328187446770911_5334286669028352461_n_d09893ab54.jpg\"}}', '412743694_328187446770911_5334286669028352461_n_d09893ab54', '.jpg', 'image/jpeg', 82.74, '/uploads/412743694_328187446770911_5334286669028352461_n_d09893ab54.jpg', NULL, 'local', NULL, '/1', '2024-11-25 11:39:39.240000', '2024-11-25 11:39:39.240000', '2024-11-25 11:39:39.241000', NULL, NULL, NULL),
(104, 'o37kzzgec5xqzv1mc4ech9po', '412743694_328187446770911_5334286669028352461_n.jpg', NULL, NULL, 526, 797, '{\"thumbnail\":{\"name\":\"thumbnail_412743694_328187446770911_5334286669028352461_n.jpg\",\"hash\":\"thumbnail_412743694_328187446770911_5334286669028352461_n_0a592d3ba4\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":103,\"height\":156,\"size\":6.49,\"sizeInBytes\":6488,\"url\":\"/uploads/thumbnail_412743694_328187446770911_5334286669028352461_n_0a592d3ba4.jpg\"},\"small\":{\"name\":\"small_412743694_328187446770911_5334286669028352461_n.jpg\",\"hash\":\"small_412743694_328187446770911_5334286669028352461_n_0a592d3ba4\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":330,\"height\":500,\"size\":41.77,\"sizeInBytes\":41771,\"url\":\"/uploads/small_412743694_328187446770911_5334286669028352461_n_0a592d3ba4.jpg\"},\"medium\":{\"name\":\"medium_412743694_328187446770911_5334286669028352461_n.jpg\",\"hash\":\"medium_412743694_328187446770911_5334286669028352461_n_0a592d3ba4\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":495,\"height\":750,\"size\":75.69,\"sizeInBytes\":75693,\"url\":\"/uploads/medium_412743694_328187446770911_5334286669028352461_n_0a592d3ba4.jpg\"}}', '412743694_328187446770911_5334286669028352461_n_0a592d3ba4', '.jpg', 'image/jpeg', 82.74, '/uploads/412743694_328187446770911_5334286669028352461_n_0a592d3ba4.jpg', NULL, 'local', NULL, '/1', '2024-11-25 11:40:17.774000', '2024-11-25 11:40:17.774000', '2024-11-25 11:40:17.774000', NULL, NULL, NULL),
(105, 'aasxiw0ysyhg71r2wx4gfa8g', 'aaaa.jpg', NULL, NULL, 525, 640, '{\"thumbnail\":{\"name\":\"thumbnail_aaaa.jpg\",\"hash\":\"thumbnail_aaaa_4878ffe655\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":128,\"height\":156,\"size\":6.64,\"sizeInBytes\":6640,\"url\":\"/uploads/thumbnail_aaaa_4878ffe655.jpg\"},\"small\":{\"name\":\"small_aaaa.jpg\",\"hash\":\"small_aaaa_4878ffe655\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":410,\"height\":500,\"size\":36.58,\"sizeInBytes\":36578,\"url\":\"/uploads/small_aaaa_4878ffe655.jpg\"}}', 'aaaa_4878ffe655', '.jpg', 'image/jpeg', 49.63, '/uploads/aaaa_4878ffe655.jpg', NULL, 'local', NULL, '/1', '2024-11-25 11:46:12.481000', '2024-11-25 11:46:12.481000', '2024-11-25 11:46:12.481000', NULL, NULL, NULL),
(106, 'izcyu9oeklw1ow5ihaxha5vo', '412743694_328187446770911_5334286669028352461_n.jpg', NULL, NULL, 526, 797, '{\"thumbnail\":{\"name\":\"thumbnail_412743694_328187446770911_5334286669028352461_n.jpg\",\"hash\":\"thumbnail_412743694_328187446770911_5334286669028352461_n_fc3a18594b\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":103,\"height\":156,\"size\":6.49,\"sizeInBytes\":6488,\"url\":\"/uploads/thumbnail_412743694_328187446770911_5334286669028352461_n_fc3a18594b.jpg\"},\"small\":{\"name\":\"small_412743694_328187446770911_5334286669028352461_n.jpg\",\"hash\":\"small_412743694_328187446770911_5334286669028352461_n_fc3a18594b\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":330,\"height\":500,\"size\":41.77,\"sizeInBytes\":41771,\"url\":\"/uploads/small_412743694_328187446770911_5334286669028352461_n_fc3a18594b.jpg\"},\"medium\":{\"name\":\"medium_412743694_328187446770911_5334286669028352461_n.jpg\",\"hash\":\"medium_412743694_328187446770911_5334286669028352461_n_fc3a18594b\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":495,\"height\":750,\"size\":75.69,\"sizeInBytes\":75693,\"url\":\"/uploads/medium_412743694_328187446770911_5334286669028352461_n_fc3a18594b.jpg\"}}', '412743694_328187446770911_5334286669028352461_n_fc3a18594b', '.jpg', 'image/jpeg', 82.74, '/uploads/412743694_328187446770911_5334286669028352461_n_fc3a18594b.jpg', NULL, 'local', NULL, '/1', '2024-11-25 11:48:27.481000', '2024-11-25 11:48:27.481000', '2024-11-25 11:48:27.481000', NULL, NULL, NULL),
(107, 'scsamm6b0m13mv36rrni4hli', 'aaaa.jpg', NULL, NULL, 525, 640, '{\"thumbnail\":{\"name\":\"thumbnail_aaaa.jpg\",\"hash\":\"thumbnail_aaaa_bd177400da\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":128,\"height\":156,\"size\":6.64,\"sizeInBytes\":6640,\"url\":\"/uploads/thumbnail_aaaa_bd177400da.jpg\"},\"small\":{\"name\":\"small_aaaa.jpg\",\"hash\":\"small_aaaa_bd177400da\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":410,\"height\":500,\"size\":36.58,\"sizeInBytes\":36578,\"url\":\"/uploads/small_aaaa_bd177400da.jpg\"}}', 'aaaa_bd177400da', '.jpg', 'image/jpeg', 49.63, '/uploads/aaaa_bd177400da.jpg', NULL, 'local', NULL, '/1', '2024-11-25 11:48:58.666000', '2024-11-25 11:48:58.666000', '2024-11-25 11:48:58.666000', NULL, NULL, NULL),
(108, 'xdtbb4ym34wz9fibhatt4khy', '412743694_328187446770911_5334286669028352461_n.jpg', NULL, NULL, 526, 797, '{\"thumbnail\":{\"name\":\"thumbnail_412743694_328187446770911_5334286669028352461_n.jpg\",\"hash\":\"thumbnail_412743694_328187446770911_5334286669028352461_n_8e822b22a3\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":103,\"height\":156,\"size\":6.49,\"sizeInBytes\":6488,\"url\":\"/uploads/thumbnail_412743694_328187446770911_5334286669028352461_n_8e822b22a3.jpg\"},\"small\":{\"name\":\"small_412743694_328187446770911_5334286669028352461_n.jpg\",\"hash\":\"small_412743694_328187446770911_5334286669028352461_n_8e822b22a3\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":330,\"height\":500,\"size\":41.77,\"sizeInBytes\":41771,\"url\":\"/uploads/small_412743694_328187446770911_5334286669028352461_n_8e822b22a3.jpg\"},\"medium\":{\"name\":\"medium_412743694_328187446770911_5334286669028352461_n.jpg\",\"hash\":\"medium_412743694_328187446770911_5334286669028352461_n_8e822b22a3\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":495,\"height\":750,\"size\":75.69,\"sizeInBytes\":75693,\"url\":\"/uploads/medium_412743694_328187446770911_5334286669028352461_n_8e822b22a3.jpg\"}}', '412743694_328187446770911_5334286669028352461_n_8e822b22a3', '.jpg', 'image/jpeg', 82.74, '/uploads/412743694_328187446770911_5334286669028352461_n_8e822b22a3.jpg', NULL, 'local', NULL, '/1', '2024-11-25 11:52:12.885000', '2024-11-25 11:52:12.885000', '2024-11-25 11:52:12.885000', NULL, NULL, NULL),
(109, 'pzj14i07028m9l00fepeu54j', 'aaaa.jpg', NULL, NULL, 525, 640, '{\"thumbnail\":{\"name\":\"thumbnail_aaaa.jpg\",\"hash\":\"thumbnail_aaaa_e3b3c30ecf\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":128,\"height\":156,\"size\":6.64,\"sizeInBytes\":6640,\"url\":\"/uploads/thumbnail_aaaa_e3b3c30ecf.jpg\"},\"small\":{\"name\":\"small_aaaa.jpg\",\"hash\":\"small_aaaa_e3b3c30ecf\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":410,\"height\":500,\"size\":36.58,\"sizeInBytes\":36578,\"url\":\"/uploads/small_aaaa_e3b3c30ecf.jpg\"}}', 'aaaa_e3b3c30ecf', '.jpg', 'image/jpeg', 49.63, '/uploads/aaaa_e3b3c30ecf.jpg', NULL, 'local', NULL, '/1', '2024-11-25 11:56:39.452000', '2024-11-25 11:56:39.452000', '2024-11-25 11:56:39.453000', NULL, NULL, NULL),
(110, 'm8j0agee1voq5dpbhpli4qq2', 'aaaa.jpg', NULL, NULL, 525, 640, '{\"thumbnail\":{\"name\":\"thumbnail_aaaa.jpg\",\"hash\":\"thumbnail_aaaa_42ce0a4310\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":128,\"height\":156,\"size\":6.64,\"sizeInBytes\":6640,\"url\":\"/uploads/thumbnail_aaaa_42ce0a4310.jpg\"},\"small\":{\"name\":\"small_aaaa.jpg\",\"hash\":\"small_aaaa_42ce0a4310\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":410,\"height\":500,\"size\":36.58,\"sizeInBytes\":36578,\"url\":\"/uploads/small_aaaa_42ce0a4310.jpg\"}}', 'aaaa_42ce0a4310', '.jpg', 'image/jpeg', 49.63, '/uploads/aaaa_42ce0a4310.jpg', NULL, 'local', NULL, '/1', '2024-11-25 12:01:33.185000', '2024-11-25 12:01:33.185000', '2024-11-25 12:01:33.188000', NULL, NULL, NULL),
(111, 'ova8h9y3j6rsrfsrvze88lrs', '412743694_328187446770911_5334286669028352461_n.jpg', NULL, NULL, 526, 797, '{\"thumbnail\":{\"name\":\"thumbnail_412743694_328187446770911_5334286669028352461_n.jpg\",\"hash\":\"thumbnail_412743694_328187446770911_5334286669028352461_n_8edcc0424a\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":103,\"height\":156,\"size\":6.49,\"sizeInBytes\":6488,\"url\":\"/uploads/thumbnail_412743694_328187446770911_5334286669028352461_n_8edcc0424a.jpg\"},\"small\":{\"name\":\"small_412743694_328187446770911_5334286669028352461_n.jpg\",\"hash\":\"small_412743694_328187446770911_5334286669028352461_n_8edcc0424a\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":330,\"height\":500,\"size\":41.77,\"sizeInBytes\":41771,\"url\":\"/uploads/small_412743694_328187446770911_5334286669028352461_n_8edcc0424a.jpg\"},\"medium\":{\"name\":\"medium_412743694_328187446770911_5334286669028352461_n.jpg\",\"hash\":\"medium_412743694_328187446770911_5334286669028352461_n_8edcc0424a\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":495,\"height\":750,\"size\":75.69,\"sizeInBytes\":75693,\"url\":\"/uploads/medium_412743694_328187446770911_5334286669028352461_n_8edcc0424a.jpg\"}}', '412743694_328187446770911_5334286669028352461_n_8edcc0424a', '.jpg', 'image/jpeg', 82.74, '/uploads/412743694_328187446770911_5334286669028352461_n_8edcc0424a.jpg', NULL, 'local', NULL, '/1', '2024-11-25 12:02:11.192000', '2024-11-25 12:02:11.192000', '2024-11-25 12:02:11.193000', NULL, NULL, NULL),
(112, 'dc7wt9yg5fiix53oszakt5ps', 'profile.jpg', NULL, NULL, 203, 194, '{\"thumbnail\":{\"name\":\"thumbnail_profile.jpg\",\"hash\":\"thumbnail_profile_7ba5d37c7c\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":163,\"height\":156,\"size\":5.25,\"sizeInBytes\":5253,\"url\":\"/uploads/thumbnail_profile_7ba5d37c7c.jpg\"}}', 'profile_7ba5d37c7c', '.jpg', 'image/jpeg', 6.45, '/uploads/profile_7ba5d37c7c.jpg', NULL, 'local', NULL, '/1', '2024-11-25 13:07:56.220000', '2024-11-25 13:07:56.220000', '2024-11-25 13:07:56.221000', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `files_folder_lnk`
--

CREATE TABLE `files_folder_lnk` (
  `id` int(10) UNSIGNED NOT NULL,
  `file_id` int(10) UNSIGNED DEFAULT NULL,
  `folder_id` int(10) UNSIGNED DEFAULT NULL,
  `file_ord` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `files_folder_lnk`
--

INSERT INTO `files_folder_lnk` (`id`, `file_id`, `folder_id`, `file_ord`) VALUES
(1, 53, 1, 1),
(2, 54, 1, 2),
(3, 55, 1, 3),
(4, 56, 1, 4),
(5, 57, 1, 5),
(6, 58, 1, 6),
(7, 59, 1, 7),
(8, 60, 1, 8),
(9, 61, 1, 9),
(10, 62, 1, 10),
(11, 63, 1, 11),
(12, 64, 1, 12),
(13, 65, 1, 13),
(16, 68, 1, 14),
(17, 69, 1, 15),
(18, 70, 1, 16),
(19, 71, 1, 17),
(20, 72, 1, 18),
(21, 73, 1, 19),
(22, 74, 1, 20),
(23, 75, 1, 21),
(24, 76, 1, 22),
(25, 77, 1, 23),
(26, 78, 1, 24),
(27, 79, 1, 25),
(28, 80, 1, 26),
(29, 81, 1, 27),
(30, 82, 1, 28),
(31, 83, 1, 29),
(32, 84, 1, 30),
(33, 85, 1, 31),
(34, 86, 1, 32),
(35, 87, 1, 33),
(36, 88, 1, 34),
(37, 89, 1, 35),
(38, 90, 1, 36),
(39, 91, 1, 37),
(40, 92, 1, 38),
(41, 93, 1, 39),
(42, 94, 1, 40),
(43, 95, 1, 41),
(44, 96, 1, 42),
(45, 97, 1, 43),
(46, 98, 1, 44),
(47, 99, 1, 45),
(48, 100, 1, 46),
(49, 101, 1, 47),
(50, 102, 1, 48),
(51, 103, 1, 49),
(52, 104, 1, 50),
(53, 105, 1, 51),
(54, 106, 1, 52),
(55, 107, 1, 53),
(56, 108, 1, 54),
(57, 109, 1, 55),
(58, 110, 1, 56),
(59, 111, 1, 57),
(60, 112, 1, 58);

-- --------------------------------------------------------

--
-- Table structure for table `files_related_mph`
--

CREATE TABLE `files_related_mph` (
  `id` int(10) UNSIGNED NOT NULL,
  `file_id` int(10) UNSIGNED DEFAULT NULL,
  `related_id` int(10) UNSIGNED DEFAULT NULL,
  `related_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `files_related_mph`
--

INSERT INTO `files_related_mph` (`id`, `file_id`, `related_id`, `related_type`, `field`, `order`) VALUES
(15, 9, 1, 'api::slider.slider', 'image', 1),
(16, 9, 2, 'api::slider.slider', 'image', 1),
(17, 8, 3, 'api::slider.slider', 'image', 1),
(18, 8, 4, 'api::slider.slider', 'image', 1),
(19, 10, 5, 'api::slider.slider', 'image', 1),
(20, 10, 6, 'api::slider.slider', 'image', 1),
(43, 6, 9, 'api::category.category', 'icon', 1),
(44, 6, 18, 'api::category.category', 'icon', 1),
(67, 13, 7, 'api::product.product', 'images', 1),
(69, 17, 11, 'api::product.product', 'images', 1),
(71, 14, 13, 'api::product.product', 'images', 1),
(73, 15, 15, 'api::product.product', 'images', 1),
(77, 18, 9, 'api::product.product', 'images', 1),
(81, 11, 1, 'api::product.product', 'images', 1),
(93, 20, 42, 'api::product.product', 'images', 1),
(95, 19, 40, 'api::product.product', 'images', 1),
(97, 21, 44, 'api::product.product', 'images', 1),
(106, 23, 23, 'api::category.category', 'banner', 1),
(110, 24, 24, 'api::category.category', 'banner', 1),
(121, 4, 7, 'api::category.category', 'icon', 1),
(122, 25, 7, 'api::category.category', 'banner', 1),
(123, 4, 25, 'api::category.category', 'icon', 1),
(124, 25, 25, 'api::category.category', 'banner', 1),
(125, 1, 1, 'api::category.category', 'icon', 1),
(126, 26, 1, 'api::category.category', 'banner', 1),
(127, 1, 26, 'api::category.category', 'icon', 1),
(128, 26, 26, 'api::category.category', 'banner', 1),
(129, 2, 3, 'api::category.category', 'icon', 1),
(130, 26, 3, 'api::category.category', 'banner', 1),
(131, 2, 27, 'api::category.category', 'icon', 1),
(132, 26, 27, 'api::category.category', 'banner', 1),
(133, 3, 5, 'api::category.category', 'icon', 1),
(134, 27, 5, 'api::category.category', 'banner', 1),
(135, 3, 28, 'api::category.category', 'icon', 1),
(136, 27, 28, 'api::category.category', 'banner', 1),
(137, 5, 11, 'api::category.category', 'icon', 1),
(138, 28, 11, 'api::category.category', 'banner', 1),
(139, 5, 29, 'api::category.category', 'icon', 1),
(140, 28, 29, 'api::category.category', 'banner', 1),
(145, 7, 13, 'api::category.category', 'icon', 1),
(146, 30, 13, 'api::category.category', 'banner', 1),
(147, 7, 31, 'api::category.category', 'icon', 1),
(148, 30, 31, 'api::category.category', 'banner', 1),
(150, 33, 61, 'api::product.product', 'images', 1),
(152, 35, 63, 'api::product.product', 'images', 1),
(154, 36, 65, 'api::product.product', 'images', 1),
(159, 37, 67, 'api::product.product', 'images', 1),
(163, 38, 70, 'api::product.product', 'images', 1),
(165, 40, 32, 'api::category.category', 'icon', 1),
(166, 39, 32, 'api::category.category', 'banner', 1),
(167, 40, 33, 'api::category.category', 'icon', 1),
(168, 39, 33, 'api::category.category', 'banner', 1),
(171, 41, 73, 'api::product.product', 'images', 1),
(206, 16, 5, 'api::product.product', 'images', 1),
(208, 12, 3, 'api::product.product', 'images', 1),
(209, 12, 94, 'api::product.product', 'images', 1),
(217, 17, 102, 'api::product.product', 'images', 1),
(218, 21, 103, 'api::product.product', 'images', 1),
(227, 35, 112, 'api::product.product', 'images', 1),
(228, 33, 113, 'api::product.product', 'images', 1),
(229, 19, 114, 'api::product.product', 'images', 1),
(230, 38, 115, 'api::product.product', 'images', 1),
(231, 16, 116, 'api::product.product', 'images', 1),
(233, 11, 118, 'api::product.product', 'images', 1),
(235, 20, 120, 'api::product.product', 'images', 1),
(238, 13, 123, 'api::product.product', 'images', 1),
(239, 18, 124, 'api::product.product', 'images', 1),
(245, 36, 130, 'api::product.product', 'images', 1),
(246, 14, 131, 'api::product.product', 'images', 1),
(248, 41, 133, 'api::product.product', 'images', 1),
(250, 15, 135, 'api::product.product', 'images', 1),
(251, 37, 136, 'api::product.product', 'images', 1),
(262, 51, 1, 'api::about-page.about-page', 'banner', 1),
(263, 51, 7, 'api::about-page.about-page', 'banner', 1),
(280, 50, 91, 'api::product.product', 'images', 1),
(281, 50, 145, 'api::product.product', 'images', 1),
(282, 49, 88, 'api::product.product', 'images', 1),
(283, 49, 146, 'api::product.product', 'images', 1),
(284, 47, 86, 'api::product.product', 'images', 1),
(285, 47, 147, 'api::product.product', 'images', 1),
(286, 46, 84, 'api::product.product', 'images', 1),
(287, 46, 148, 'api::product.product', 'images', 1),
(288, 45, 82, 'api::product.product', 'images', 1),
(289, 45, 149, 'api::product.product', 'images', 1),
(290, 44, 80, 'api::product.product', 'images', 1),
(291, 44, 150, 'api::product.product', 'images', 1),
(292, 43, 78, 'api::product.product', 'images', 1),
(293, 43, 151, 'api::product.product', 'images', 1),
(294, 42, 76, 'api::product.product', 'images', 1),
(295, 42, 152, 'api::product.product', 'images', 1),
(334, 108, 10, 'plugin::users-permissions.user', 'profileImage', 1);

-- --------------------------------------------------------

--
-- Table structure for table `i18n_locale`
--

CREATE TABLE `i18n_locale` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `i18n_locale`
--

INSERT INTO `i18n_locale` (`id`, `document_id`, `name`, `code`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`, `locale`) VALUES
(1, 'p5a5flxe03wwmq9fjpi2wmsz', 'English (en)', 'en', '2024-09-25 13:42:07.993000', '2024-09-25 13:42:07.993000', '2024-09-25 13:42:07.994000', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_id` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `zip` varchar(255) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `total_amount` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `payment_id` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL,
  `order_status` varchar(255) DEFAULT NULL,
  `sub_total` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `document_id`, `username`, `email`, `phone`, `zip`, `address`, `total_amount`, `user_id`, `payment_id`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`, `locale`, `order_status`, `sub_total`) VALUES
(45, 'w3stdvduxj032bpklrk164gd', 'Mr David', 'shakiren070@gmail.com', '01994558321', NULL, '37/2 baigertake ECB Chottor,Dhaka,Dhaka-1206', 1540, 9, 'pay00087', '2024-10-09 18:13:57.376000', '2024-10-15 13:36:21.224000', NULL, NULL, 1, NULL, 'Processing', NULL),
(47, 'mjmptywdiiepcwido9xq5jxi', 'Mr Badrul Pasha', 'shakiren070@gmail.com', '01994558321', NULL, '37/2 baigertake ECB Chottor,Dhaka,Dhaka-1206', 1540, 9, 'pay00087', '2024-10-10 10:54:41.363000', '2024-10-15 12:12:38.244000', NULL, NULL, 1, NULL, 'Completed', NULL),
(49, 'xes08eemfuzoxknza2kkiu3u', 'Md.Karim molla', 'shakiren070@gmail.com', '01994558321', NULL, '37/2 baigertake ECB Chottor,Dhaka,Dhaka-1206', 1540, 9, 'pay00087', '2024-10-10 11:04:04.086000', '2024-10-15 13:31:12.506000', NULL, NULL, 1, NULL, 'Processing', NULL),
(51, 'ud9ddbhfy22aotvrw8hqmoyi', 'Md. Majnu', 'shakiren070@gmail.com', '01994558321', NULL, '37/2 baigertake ECB Chottor,Dhaka,Dhaka-1206', 1540, 9, 'pay00087', '2024-10-10 11:06:14.088000', '2024-10-15 11:40:54.974000', NULL, NULL, 1, NULL, 'Completed', NULL),
(55, 'gwq7q873ou7r9j8ckyfoj1aa', 'Testing 001', 'shakiren070@gmail.com', '01994558321', NULL, '37/2 baigertake ECB Chottor,Dhaka,Dhaka-1206', 1540, 9, 'pay00087', '2024-10-10 11:09:47.250000', '2024-10-15 13:29:56.362000', NULL, NULL, 1, NULL, 'Canceled', NULL),
(57, 'fzxjoferpbmdzdjxojhdvnsa', 'Mina khan', 'shakiren070@gmail.com', '01994558321', NULL, '37/2 baigertake ECB Chottor,Dhaka,Dhaka-1206', 980, 9, 'pay00087', '2024-10-10 11:16:07.634000', '2024-10-15 13:27:43.700000', NULL, NULL, 1, NULL, 'Canceled', NULL),
(61, 'bm32p6fui82mftiqgriy3tdv', 'Md. SHAKIREN MOST0FA', 'shakiren070@gmail.com', '01994558321', NULL, '37/2 baigertake ECB Chottor,Dhaka,Dhaka-1206', 170, 9, 'pay00087', '2024-10-10 11:18:18.230000', '2024-10-15 11:41:22.432000', NULL, NULL, 1, NULL, 'On The Way', NULL),
(63, 'yg35jz87zhowkbcgbk71wxyu', 'Jewel', 'shakiren070@gmail.com', '01994558321', NULL, '37/2 baigertake ECB Chottor,Dhaka,Dhaka-1206', 145, 9, 'pay00087', '2024-10-15 11:39:18.607000', '2024-10-23 13:42:10.250000', NULL, NULL, 1, NULL, 'Processing', NULL),
(65, 'ud9ddbhfy22aotvrw8hqmoyi', 'Md. Majnu', 'shakiren070@gmail.com', '01994558321', NULL, '37/2 baigertake ECB Chottor,Dhaka,Dhaka-1206', 1540, 9, 'pay00087', '2024-10-10 11:06:14.088000', '2024-10-15 11:40:54.974000', '2024-10-15 11:40:55.052000', NULL, 1, NULL, 'Completed', NULL),
(66, 'bm32p6fui82mftiqgriy3tdv', 'Md. SHAKIREN MOST0FA', 'shakiren070@gmail.com', '01994558321', NULL, '37/2 baigertake ECB Chottor,Dhaka,Dhaka-1206', 170, 9, 'pay00087', '2024-10-10 11:18:18.230000', '2024-10-15 11:41:22.432000', '2024-10-15 11:41:22.468000', NULL, 1, NULL, 'On The Way', NULL),
(67, 'mjmptywdiiepcwido9xq5jxi', 'Mr Badrul Pasha', 'shakiren070@gmail.com', '01994558321', NULL, '37/2 baigertake ECB Chottor,Dhaka,Dhaka-1206', 1540, 9, 'pay00087', '2024-10-10 10:54:41.363000', '2024-10-15 12:12:38.244000', '2024-10-15 12:12:38.308000', NULL, 1, NULL, 'Completed', NULL),
(68, 'fzxjoferpbmdzdjxojhdvnsa', 'Mina khan', 'shakiren070@gmail.com', '01994558321', NULL, '37/2 baigertake ECB Chottor,Dhaka,Dhaka-1206', 980, 9, 'pay00087', '2024-10-10 11:16:07.634000', '2024-10-15 13:27:43.700000', '2024-10-15 13:27:43.742000', NULL, 1, NULL, 'Canceled', NULL),
(69, 'gwq7q873ou7r9j8ckyfoj1aa', 'Testing 001', 'shakiren070@gmail.com', '01994558321', NULL, '37/2 baigertake ECB Chottor,Dhaka,Dhaka-1206', 1540, 9, 'pay00087', '2024-10-10 11:09:47.250000', '2024-10-15 13:29:56.362000', '2024-10-15 13:29:56.419000', NULL, 1, NULL, 'Canceled', NULL),
(70, 'xes08eemfuzoxknza2kkiu3u', 'Md.Karim molla', 'shakiren070@gmail.com', '01994558321', NULL, '37/2 baigertake ECB Chottor,Dhaka,Dhaka-1206', 1540, 9, 'pay00087', '2024-10-10 11:04:04.086000', '2024-10-15 13:31:12.506000', '2024-10-15 13:31:12.556000', NULL, 1, NULL, 'Processing', NULL),
(71, 'w3stdvduxj032bpklrk164gd', 'Mr David', 'shakiren070@gmail.com', '01994558321', NULL, '37/2 baigertake ECB Chottor,Dhaka,Dhaka-1206', 1540, 9, 'pay00087', '2024-10-09 18:13:57.376000', '2024-10-15 13:36:21.224000', '2024-10-15 13:36:21.288000', NULL, 1, NULL, 'Processing', NULL),
(72, 'e54czmeyud76dgoed1dibvra', 'Miss Kamala khan', 'kamal@gmail.com', '01994558321', '1212', '37/2  baigertake ECB  Chottor, Motijhell gool chottor, Dhaka-1206', 850, 9, 'pay00087', '2024-10-16 16:46:07.024000', '2024-10-16 16:46:07.024000', NULL, NULL, NULL, NULL, 'Pending', 790),
(73, 'e54czmeyud76dgoed1dibvra', 'Miss Kamala khan', 'kamal@gmail.com', '01994558321', '1212', '37/2  baigertake ECB  Chottor, Motijhell gool chottor, Dhaka-1206', 850, 9, 'pay00087', '2024-10-16 16:46:07.024000', '2024-10-16 16:46:07.024000', '2024-10-16 16:46:07.041000', NULL, NULL, NULL, 'Pending', 790),
(74, 'o8a6hf58aaq9w788yqduhs40', 'Md. SHAKIREN MOST0FA', 'shakiren070@gmail.com', '01994558321', '1219', '37/2 baigertake ECB Chottor,Dhaka,Dhaka-1206', 190, 9, 'pay00087', '2024-10-21 16:47:13.882000', '2024-10-21 16:47:13.882000', NULL, NULL, NULL, NULL, 'Pending', 130),
(75, 'o8a6hf58aaq9w788yqduhs40', 'Md. SHAKIREN MOST0FA', 'shakiren070@gmail.com', '01994558321', '1219', '37/2 baigertake ECB Chottor,Dhaka,Dhaka-1206', 190, 9, 'pay00087', '2024-10-21 16:47:13.882000', '2024-10-21 16:47:13.882000', '2024-10-21 16:47:13.902000', NULL, NULL, NULL, 'Pending', 130),
(76, 'yg35jz87zhowkbcgbk71wxyu', 'Jewel', 'shakiren070@gmail.com', '01994558321', NULL, '37/2 baigertake ECB Chottor,Dhaka,Dhaka-1206', 145, 9, 'pay00087', '2024-10-15 11:39:18.607000', '2024-10-23 13:42:10.250000', '2024-10-23 13:42:10.294000', NULL, 1, NULL, 'Processing', NULL),
(77, 'd514kje9j0zf57jbb0x9nf0n', 'Md. SHAKIREN MOST0FA', 'shakiren070@gmail.com', '01994558321', NULL, '37/2 baigertake ECB Chottor,Dhaka,Dhaka-1206', 230, 9, 'pay00087', '2024-10-24 14:40:57.080000', '2024-10-24 14:42:52.101000', NULL, NULL, 1, NULL, 'Completed', 110),
(79, 'd514kje9j0zf57jbb0x9nf0n', 'Md. SHAKIREN MOST0FA', 'shakiren070@gmail.com', '01994558321', NULL, '37/2 baigertake ECB Chottor,Dhaka,Dhaka-1206', 230, 9, 'pay00087', '2024-10-24 14:40:57.080000', '2024-10-24 14:42:52.101000', '2024-10-24 14:42:52.152000', NULL, 1, NULL, 'Completed', 110),
(105, 'xujy3gadhn7q1i4fqkgp7d9b', 'Lima', 'shakiren070@gmail.com', '01994558321', NULL, 'asdas asdasd', 265, 10, 'pay00087', '2024-10-29 14:01:53.771000', '2024-10-29 16:43:42.339000', NULL, NULL, 1, NULL, 'Completed', 205),
(107, 'n7x5sqzc74ua5nvqsw6pkzh6', 'Mina', 'mina@gmail.com', '01994558321', '1212', 'asdasd asdasd qweqwe', 225, 10, 'pay00087', '2024-10-29 15:44:45.294000', '2024-10-29 15:46:09.686000', NULL, NULL, 1, NULL, 'Canceled', 165),
(109, 'n7x5sqzc74ua5nvqsw6pkzh6', 'Mina', 'mina@gmail.com', '01994558321', '1212', 'asdasd asdasd qweqwe', 225, 10, 'pay00087', '2024-10-29 15:44:45.294000', '2024-10-29 15:46:09.686000', '2024-10-29 15:46:09.736000', NULL, 1, NULL, 'Canceled', 165),
(110, 'xujy3gadhn7q1i4fqkgp7d9b', 'Lima', 'shakiren070@gmail.com', '01994558321', NULL, 'asdas asdasd', 265, 10, 'pay00087', '2024-10-29 14:01:53.771000', '2024-10-29 16:43:42.339000', '2024-10-29 16:43:42.375000', NULL, 1, NULL, 'Completed', 205),
(111, 'ncwhsbqo6obx3egltijzzxrt', 'rima', 'shakiren070@gmail.com', '01994558321', NULL, 'adas asdasd', 620, 10, 'pay00087', '2024-11-03 17:54:04.529000', '2024-11-03 17:54:04.529000', NULL, NULL, NULL, NULL, 'Pending', 560),
(112, 'ncwhsbqo6obx3egltijzzxrt', 'rima', 'shakiren070@gmail.com', '01994558321', NULL, 'adas asdasd', 620, 10, 'pay00087', '2024-11-03 17:54:04.529000', '2024-11-03 17:54:04.529000', '2024-11-03 17:54:04.550000', NULL, NULL, NULL, 'Pending', 560),
(195, 't1lyultzjc4iinrja0vshsxg', 'Md. SHAKIREN MOST0FA', 'shakiren070@gmail.com', '01994558321', NULL, 'sdfsdf ', 840, 10, 'pay00087', '2024-11-13 17:16:33.112000', '2024-11-13 17:16:33.112000', NULL, NULL, NULL, NULL, 'Pending', 780),
(196, 't1lyultzjc4iinrja0vshsxg', 'Md. SHAKIREN MOST0FA', 'shakiren070@gmail.com', '01994558321', NULL, 'sdfsdf ', 840, 10, 'pay00087', '2024-11-13 17:16:33.112000', '2024-11-13 17:16:33.112000', '2024-11-13 17:16:33.136000', NULL, NULL, NULL, 'Pending', 780),
(197, 'ntdx02xo7u95rdabuqu4sf4i', 'Sima khan', 'shakiren070@gmail.com', '01994558321', NULL, 'sdfsdf sdfsdfsd ', 198, 10, 'pay00087', '2024-11-14 14:14:11.989000', '2024-11-14 14:14:11.989000', NULL, NULL, NULL, NULL, 'Pending', 138),
(198, 'ntdx02xo7u95rdabuqu4sf4i', 'Sima khan', 'shakiren070@gmail.com', '01994558321', NULL, 'sdfsdf sdfsdfsd ', 198, 10, 'pay00087', '2024-11-14 14:14:11.989000', '2024-11-14 14:14:11.989000', '2024-11-14 14:14:12.014000', NULL, NULL, NULL, 'Pending', 138);

-- --------------------------------------------------------

--
-- Table structure for table `orders_cmps`
--

CREATE TABLE `orders_cmps` (
  `id` int(10) UNSIGNED NOT NULL,
  `entity_id` int(10) UNSIGNED DEFAULT NULL,
  `cmp_id` int(10) UNSIGNED DEFAULT NULL,
  `component_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders_cmps`
--

INSERT INTO `orders_cmps` (`id`, `entity_id`, `cmp_id`, `component_type`, `field`, `order`) VALUES
(39, 45, 39, 'ordered-item.ordered-item', 'orderItemList', 1),
(40, 45, 40, 'ordered-item.ordered-item', 'orderItemList', 2),
(41, 45, 41, 'ordered-item.ordered-item', 'orderItemList', 3),
(42, 45, 42, 'ordered-item.ordered-item', 'orderItemList', 4),
(43, 45, 43, 'ordered-item.ordered-item', 'orderItemList', 5),
(44, 45, 44, 'ordered-item.ordered-item', 'orderItemList', 6),
(45, 45, 45, 'ordered-item.ordered-item', 'orderItemList', 7),
(53, 47, 53, 'ordered-item.ordered-item', 'orderItemList', 1),
(54, 47, 54, 'ordered-item.ordered-item', 'orderItemList', 2),
(55, 47, 55, 'ordered-item.ordered-item', 'orderItemList', 3),
(56, 47, 56, 'ordered-item.ordered-item', 'orderItemList', 4),
(57, 47, 57, 'ordered-item.ordered-item', 'orderItemList', 5),
(58, 47, 58, 'ordered-item.ordered-item', 'orderItemList', 6),
(59, 47, 59, 'ordered-item.ordered-item', 'orderItemList', 7),
(67, 49, 67, 'ordered-item.ordered-item', 'orderItemList', 1),
(68, 49, 68, 'ordered-item.ordered-item', 'orderItemList', 2),
(69, 49, 69, 'ordered-item.ordered-item', 'orderItemList', 3),
(70, 49, 70, 'ordered-item.ordered-item', 'orderItemList', 4),
(71, 49, 71, 'ordered-item.ordered-item', 'orderItemList', 5),
(72, 49, 72, 'ordered-item.ordered-item', 'orderItemList', 6),
(73, 49, 73, 'ordered-item.ordered-item', 'orderItemList', 7),
(81, 51, 81, 'ordered-item.ordered-item', 'orderItemList', 1),
(82, 51, 82, 'ordered-item.ordered-item', 'orderItemList', 2),
(83, 51, 83, 'ordered-item.ordered-item', 'orderItemList', 3),
(84, 51, 84, 'ordered-item.ordered-item', 'orderItemList', 4),
(85, 51, 85, 'ordered-item.ordered-item', 'orderItemList', 5),
(86, 51, 86, 'ordered-item.ordered-item', 'orderItemList', 6),
(87, 51, 87, 'ordered-item.ordered-item', 'orderItemList', 7),
(109, 55, 109, 'ordered-item.ordered-item', 'orderItemList', 1),
(110, 55, 110, 'ordered-item.ordered-item', 'orderItemList', 2),
(111, 55, 111, 'ordered-item.ordered-item', 'orderItemList', 3),
(112, 55, 112, 'ordered-item.ordered-item', 'orderItemList', 4),
(113, 55, 113, 'ordered-item.ordered-item', 'orderItemList', 5),
(114, 55, 114, 'ordered-item.ordered-item', 'orderItemList', 6),
(115, 55, 115, 'ordered-item.ordered-item', 'orderItemList', 7),
(123, 57, 123, 'ordered-item.ordered-item', 'orderItemList', 1),
(124, 57, 124, 'ordered-item.ordered-item', 'orderItemList', 2),
(131, 61, 131, 'ordered-item.ordered-item', 'orderItemList', 1),
(132, 61, 132, 'ordered-item.ordered-item', 'orderItemList', 2),
(135, 63, 135, 'ordered-item.ordered-item', 'orderItemList', 1),
(136, 63, 136, 'ordered-item.ordered-item', 'orderItemList', 2),
(146, 65, 139, 'ordered-item.ordered-item', 'orderItemList', 1),
(147, 65, 140, 'ordered-item.ordered-item', 'orderItemList', 2),
(148, 65, 141, 'ordered-item.ordered-item', 'orderItemList', 3),
(149, 65, 142, 'ordered-item.ordered-item', 'orderItemList', 4),
(150, 65, 143, 'ordered-item.ordered-item', 'orderItemList', 5),
(151, 65, 144, 'ordered-item.ordered-item', 'orderItemList', 6),
(152, 65, 145, 'ordered-item.ordered-item', 'orderItemList', 7),
(155, 66, 146, 'ordered-item.ordered-item', 'orderItemList', 1),
(156, 66, 147, 'ordered-item.ordered-item', 'orderItemList', 2),
(164, 67, 148, 'ordered-item.ordered-item', 'orderItemList', 1),
(165, 67, 149, 'ordered-item.ordered-item', 'orderItemList', 2),
(166, 67, 150, 'ordered-item.ordered-item', 'orderItemList', 3),
(167, 67, 151, 'ordered-item.ordered-item', 'orderItemList', 4),
(168, 67, 152, 'ordered-item.ordered-item', 'orderItemList', 5),
(169, 67, 153, 'ordered-item.ordered-item', 'orderItemList', 6),
(170, 67, 154, 'ordered-item.ordered-item', 'orderItemList', 7),
(173, 68, 155, 'ordered-item.ordered-item', 'orderItemList', 1),
(174, 68, 156, 'ordered-item.ordered-item', 'orderItemList', 2),
(182, 69, 157, 'ordered-item.ordered-item', 'orderItemList', 1),
(183, 69, 158, 'ordered-item.ordered-item', 'orderItemList', 2),
(184, 69, 159, 'ordered-item.ordered-item', 'orderItemList', 3),
(185, 69, 160, 'ordered-item.ordered-item', 'orderItemList', 4),
(186, 69, 161, 'ordered-item.ordered-item', 'orderItemList', 5),
(187, 69, 162, 'ordered-item.ordered-item', 'orderItemList', 6),
(188, 69, 163, 'ordered-item.ordered-item', 'orderItemList', 7),
(196, 70, 164, 'ordered-item.ordered-item', 'orderItemList', 1),
(197, 70, 165, 'ordered-item.ordered-item', 'orderItemList', 2),
(198, 70, 166, 'ordered-item.ordered-item', 'orderItemList', 3),
(199, 70, 167, 'ordered-item.ordered-item', 'orderItemList', 4),
(200, 70, 168, 'ordered-item.ordered-item', 'orderItemList', 5),
(201, 70, 169, 'ordered-item.ordered-item', 'orderItemList', 6),
(202, 70, 170, 'ordered-item.ordered-item', 'orderItemList', 7),
(210, 71, 171, 'ordered-item.ordered-item', 'orderItemList', 1),
(211, 71, 172, 'ordered-item.ordered-item', 'orderItemList', 2),
(212, 71, 173, 'ordered-item.ordered-item', 'orderItemList', 3),
(213, 71, 174, 'ordered-item.ordered-item', 'orderItemList', 4),
(214, 71, 175, 'ordered-item.ordered-item', 'orderItemList', 5),
(215, 71, 176, 'ordered-item.ordered-item', 'orderItemList', 6),
(216, 71, 177, 'ordered-item.ordered-item', 'orderItemList', 7),
(217, 72, 178, 'ordered-item.ordered-item', 'orderItemList', 1),
(218, 72, 179, 'ordered-item.ordered-item', 'orderItemList', 2),
(219, 72, 180, 'ordered-item.ordered-item', 'orderItemList', 3),
(220, 72, 181, 'ordered-item.ordered-item', 'orderItemList', 4),
(221, 73, 182, 'ordered-item.ordered-item', 'orderItemList', 1),
(222, 73, 183, 'ordered-item.ordered-item', 'orderItemList', 2),
(223, 73, 184, 'ordered-item.ordered-item', 'orderItemList', 3),
(224, 73, 185, 'ordered-item.ordered-item', 'orderItemList', 4),
(225, 74, 186, 'ordered-item.ordered-item', 'orderItemList', 1),
(226, 74, 187, 'ordered-item.ordered-item', 'orderItemList', 2),
(227, 75, 188, 'ordered-item.ordered-item', 'orderItemList', 1),
(228, 75, 189, 'ordered-item.ordered-item', 'orderItemList', 2),
(231, 76, 190, 'ordered-item.ordered-item', 'orderItemList', 1),
(232, 76, 191, 'ordered-item.ordered-item', 'orderItemList', 2),
(233, 77, 192, 'ordered-item.ordered-item', 'orderItemList', 1),
(236, 79, 194, 'ordered-item.ordered-item', 'orderItemList', 1),
(274, 105, 227, 'ordered-item.ordered-item', 'orderItemList', 1),
(275, 105, 228, 'ordered-item.ordered-item', 'orderItemList', 2),
(278, 107, 231, 'ordered-item.ordered-item', 'orderItemList', 1),
(279, 107, 232, 'ordered-item.ordered-item', 'orderItemList', 2),
(280, 107, 233, 'ordered-item.ordered-item', 'orderItemList', 3),
(287, 109, 237, 'ordered-item.ordered-item', 'orderItemList', 1),
(288, 109, 238, 'ordered-item.ordered-item', 'orderItemList', 2),
(289, 109, 239, 'ordered-item.ordered-item', 'orderItemList', 3),
(292, 110, 240, 'ordered-item.ordered-item', 'orderItemList', 1),
(293, 110, 241, 'ordered-item.ordered-item', 'orderItemList', 2),
(294, 111, 242, 'ordered-item.ordered-item', 'orderItemList', 1),
(295, 111, 243, 'ordered-item.ordered-item', 'orderItemList', 2),
(296, 112, 244, 'ordered-item.ordered-item', 'orderItemList', 1),
(297, 112, 245, 'ordered-item.ordered-item', 'orderItemList', 2),
(438, 195, 386, 'ordered-item.ordered-item', 'orderItemList', 1),
(439, 195, 387, 'ordered-item.ordered-item', 'orderItemList', 2),
(440, 195, 388, 'ordered-item.ordered-item', 'orderItemList', 3),
(441, 196, 389, 'ordered-item.ordered-item', 'orderItemList', 1),
(442, 196, 390, 'ordered-item.ordered-item', 'orderItemList', 2),
(443, 196, 391, 'ordered-item.ordered-item', 'orderItemList', 3),
(444, 197, 392, 'ordered-item.ordered-item', 'orderItemList', 1),
(445, 197, 393, 'ordered-item.ordered-item', 'orderItemList', 2),
(446, 198, 394, 'ordered-item.ordered-item', 'orderItemList', 1),
(447, 198, 395, 'ordered-item.ordered-item', 'orderItemList', 2);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `mrp` int(11) DEFAULT NULL,
  `selling_price` int(11) DEFAULT NULL,
  `item_quantity_type` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `details` longtext DEFAULT NULL,
  `warranty` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `document_id`, `name`, `description`, `mrp`, `selling_price`, `item_quantity_type`, `slug`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`, `locale`, `stock`, `details`, `warranty`) VALUES
(1, 'j9pw3qsy6o1ekjfontqztuzs', 'Cauliflower 1 pc', 'Cauliflowers are annual plants that reach about 0.5 metre (1.5 feet) tall and bear large rounded leaves that resemble collards (Brassica oleracea, variety acephala). As desired for food, the terminal cluster forms a firm, succulent “curd,” or head, that i', 50, 45, '500gm', 'cauliflower', '2024-09-26 14:47:27.029000', '2024-11-14 17:19:05.879000', NULL, 1, 1, NULL, 1, NULL, NULL),
(3, 'e275g3hwfbkpsm0xazfeva73', 'Red Carrot ', ' Red Carrots are a unique and fun addition within the home garden. The tapered root resembles the classic carrot yet that it is a bold striking deep red toned colour. Sweet and Tender is are the key words which will be a welcomed edition to the salad and ', 80, 70, '1kg', 'red-carrot', '2024-09-26 14:51:54.280000', '2024-11-13 15:53:58.081000', NULL, 1, 1, NULL, 5, NULL, NULL),
(5, 'ecgsoc7erqa00y3dczmxu8wi', 'Cilantro (2 Pc)', 'The leaves resemble European parsley leaves in shape but this plant has a pungent, sweet-musky odor and taste that some people don\'t like. Descriptions of the flavor of the leaves vary from citrusy with a biting tang, to soapy, to that of crushed bed bugs', 40, NULL, '250gm', 'cilantro', '2024-09-26 14:55:31.382000', '2024-11-14 17:19:05.883000', NULL, 1, 1, NULL, 5, NULL, NULL),
(7, 'sh7rltw2m1jt1yv78tkhymf5', 'Fresh Green Capsicum', 'Green capsicum—known in other parts of the world as a bell pepper—has crisp, shiny, moist flesh and hollow with a seeded core. Green varieties are less sweet and slightly more bitter than other colours of capsicum', 120, 110, '500gm', 'fresh-green-capsicum', '2024-09-26 15:48:04.428000', '2024-11-14 17:43:42.222000', NULL, 1, 1, NULL, 17, NULL, NULL),
(9, 'qqhs91l4egh3a3maolufaeli', 'Fresh Mango From Rajshahi', 'Mature fruit has a characteristic fragrance and a smooth, thin, tough skin. The flesh of ripe mangos is pale yellow to orange. The flesh is juicy, sweet, and sometimes fibrous. Some undesirable seedlings or varieties are described as possessing a turpenti', 200, 160, '1kg', 'fresh-mango-from-rajshahi', '2024-09-26 15:50:05.227000', '2024-11-14 17:43:42.230000', NULL, 1, 1, NULL, 0, NULL, NULL),
(11, 'gb10fgy60pajjamtikujw8nw', 'Fresh Orange', 'This version of the juice consists of oranges that are squeezed and then bottled without having any additives or flavor packs inserted. The juice is not subjected to pasteurization. Depending on storage temperature, freshly squeezed, unpasteurized orange ', 450, NULL, '6pcs', 'fresh-orange', '2024-09-26 15:52:14.905000', '2024-11-14 16:34:44.516000', NULL, 1, 1, NULL, 46, NULL, NULL),
(13, 'at38wvbpzqny1vo31tbvbnbx', 'Mango Maza Juice', 'Maaza has a distinct pulpy taste as compared to Frooti and tastes slightly sweeter than Slice. Maaza claims to contain mango pulp of the Alphonso variety, which is known as the \"King of Mangoes\" in India. Maaza is a popular household name in Dubai.', 600, NULL, NULL, 'mango-maza-juice', '2024-09-26 15:53:48.091000', '2024-11-14 17:49:26.233000', NULL, 1, 1, NULL, 2, NULL, NULL),
(15, 'b9y35obpugwrnd74bphq4820', 'Pineapple Queen', 'A smaller pineapple than others, but the best eating variety in NZ. Bright, golden-yellow flesh with crisp texture and sweet flavour. Little to no tough core.', 85, 75, '1pcs', 'pineapple-queen', '2024-09-26 15:55:47.964000', '2024-11-14 17:51:29.967000', NULL, 1, 1, NULL, 11, NULL, NULL),
(40, 'scro5ikdkoxcxfgoo4pqj1ma', 'General Soap', 'Soap is a salt of a fatty acid (sometimes other carboxylic acids) used for cleaning and lubricating products as well as other applications. In a domestic setting, soaps, specifically \"toilet soaps\", are surfactants usually used for washing, bathing, and o', 70, NULL, NULL, 'general-soap', '2024-10-29 09:39:44.986000', '2024-11-14 17:16:25.656000', NULL, 1, 1, NULL, 46, NULL, NULL),
(42, 'v00m9ubrgcjsqb57k9mawnt5', 'Irish Spring', 'Soap is a salt of a fatty acid (sometimes other carboxylic acids) used for cleaning and lubricating products as well as other applications. In a domestic setting, soaps, specifically \"toilet soaps\", are surfactants usually used for washing, bathing, and o', 85, 80, NULL, 'irish-spring', '2024-10-29 09:39:44.986000', '2024-11-14 17:25:26.190000', NULL, 1, 1, NULL, 46, NULL, NULL),
(44, 'ar0hzfellz8vbkrqeqfefkxy', 'Dove', 'Soap is a salt of a fatty acid (sometimes other carboxylic acids) used for cleaning and lubricating products as well as other applications. In a domestic setting, soaps, specifically \"toilet soaps\", are surfactants usually used for washing, bathing, and o', 100, 80, NULL, 'dove', '2024-10-29 09:39:44.986000', '2024-11-14 16:34:44.519000', NULL, 1, 1, NULL, 43, NULL, NULL),
(61, 'm9mba1rowjtp8xdpnswe6wq0', 'Yan Pure Apple Juice', 'Juice is a drink made from the extraction or pressing of the natural liquid contained in fruit and vegetables. It can also refer to liquids that are flavored with concentrate or other biological food sources, such as meat or seafood, such as clam juice. J', 1095, NULL, '946ml ', 'yan-pure-apple-juice', '2024-11-06 16:51:16.466000', '2024-11-14 17:04:55.922000', NULL, 1, 1, NULL, 49, NULL, NULL),
(63, 'osldga1v9yphcdoid6afomam', 'Aktive + Electrolyte Lemon Drink ', 'Juice is a drink made from the extraction or pressing of the natural liquid contained in fruit and vegetables. It can also refer to liquids that are flavored with concentrate or other biological food sources, such as meat or seafood, such as clam juice. J', 25, NULL, '200ml', 'product', '2024-11-06 16:56:15.895000', '2024-11-14 17:04:55.925000', NULL, 1, 1, NULL, 49, NULL, NULL),
(65, 'nuxftojbewj19yswlkm8osk0', 'Egg Loose', 'Humans and their hominid relatives have consumed eggs for millions of years. The most widely consumed eggs are those of fowl, especially chickens.', 12, NULL, 'Min 12pcs', 'egg-loose', '2024-11-06 17:01:01.568000', '2024-11-14 17:48:33.772000', NULL, 1, 1, NULL, 41, NULL, NULL),
(67, 'wppc4srs8onn7vpjeqsg9t2p', 'Kazi Farm Branded Egg', 'Humans and their hominid relatives have consumed eggs for millions of years. The most widely consumed eggs are those of fowl, especially chickens.', 190, NULL, '2 Pcs Pack', 'kazi-farm-branded-egg', '2024-11-06 17:01:01.568000', '2024-11-14 17:51:29.970000', NULL, 1, 1, NULL, 44, NULL, NULL),
(70, 'll3qxxfqxk2zy6apgjzzma0y', 'Broiler Chicken', 'The chicken (Gallus domesticus) is a large and round short-winged bird, domesticated from the red junglefowl of Southeast Asia around 8,000 years ago', 645, 500, 'Breast Boneless', 'broiler-chicken', '2024-11-06 17:25:21.197000', '2024-11-14 17:16:25.659000', NULL, 1, 1, NULL, 49, NULL, NULL),
(73, 'b5so8scc6xb82psfabu2kl4r', 'boAt Enigma X400', '200+ Cloud Watch Faces Functional Crown Button Bluetooth Calling Technology 1.45\" Round AMOLED Display', 5499, NULL, NULL, 'bo-at-enigma-x400', '2024-11-07 09:35:09.803000', '2024-11-14 17:50:21.476000', NULL, 1, 1, NULL, 48, NULL, NULL),
(76, 'pkv3m7axxa3gevlcx9p1bt2o', 'boAt Wave Hype', '200+ Cloud Watch Faces Functional Crown Button Bluetooth Calling Technology 1.45\" Round AMOLED Display', 2449, NULL, NULL, 'bo-at-wave-hype', '2024-11-07 09:35:09.803000', '2024-11-19 12:52:55.986000', NULL, 1, 1, NULL, 49, NULL, '6 Months'),
(78, 'nzbzmahbq8jcixsq5r7iysjl', 'boAt Wave Stride Voice', '200+ Cloud Watch Faces Functional Crown Button Bluetooth Calling Technology 1.45\" Round AMOLED Display', 3999, NULL, NULL, 'bo-at-wave-stride-voice', '2024-11-07 09:35:09.803000', '2024-11-19 12:52:44.479000', NULL, 1, 1, NULL, 46, NULL, '1 Year'),
(80, 'mx1mx97h42oxi9s55b5ibkci', 'boAt Wave beat', '200+ Cloud Watch Faces Functional Crown Button Bluetooth Calling Technology 1.45\" Round AMOLED Display', 2000, NULL, NULL, 'bo-at-wave-beat', '2024-11-07 09:35:09.803000', '2024-11-19 12:52:29.042000', NULL, 1, 1, NULL, 49, '**Technical Specifications for the boAt Wave Beat Smartwatch**\n\n![1727947838.jpg](http://localhost:1337/uploads/1727947838_d6e2e6c109.jpg)\n\n**Physical Specification**\n\nBody Material: Polycarbonate\n \nStrap Info: Silicone\n\nButton: Single button on the right side\n\nWeight: 45 grams\n\nColor: Active Black, Deep Blue, Cool Grey, and Pink\n\nWaterproof Rating: IP67\n\n**Display**\n\nDisplay Type & Size: 1.69-inch square HD display\n\nTouchscreen: 2.5D curved glass\n\nDisplay Resolution: 240 x 280 pixels\n\nBrightness: 550 nits\n\nWatch Faces: Multiple customizable watch faces available\n\n**Advanced Sensor Features**\n\nOptical PPG Heart Rate Sensor, 3-axis Accelerometer, Proximity sensor, Ambient light sensor, SpO2 sensor.\n\n**Health Monitoring Features**\n\n24/7 Heart rate, Real-time SpO2 tracker, Stress Tracker, Guided Breathing, Menstrual Cycle Tracking, Sleep Monitor, sleep stages (light, deep, REM), Sedentary alerts, Activity Tracking.\n\n**Sports Modes**\n\nThe boAt Wave Beat boasts an impressive 17 sports modes catering to various activities.\n\n**Outdoor Sports:**\n\nRunning (indoor & outdoor), Cycling (indoor & outdoor), Walking, Climbing, Hiking, Badminton, Cricket, Football, Tennis, Swimming (pool & open water).\n\nIndoor Sports:\n\nYoga, Pilates, Zumba, HIIT, Elliptical, Treadmill, Stationary bike, Strength training\n\n**Useful Function**\n\nFlashlight, Find My Phone, Mobile Phone Camera Control, Phone & SMS Notifications, Music Control, Weather forecasts, DND Mood, Alarm Clock, Stopwatch, Timer, Sedentary Reminders, Breathing Exercise.\n\n**Battery**\n\nBattery Capacity: 200 mAh\n\nTypical Usage Time: Up to 7 days\n\nHeavy Usage: Up to 4 days\n\nCharging Time: About 2 hours\n\n**Others**\n\n\nApplication: boAt Crest \n\n**FAQ**\n\n**Is it possible to replace the belt on this smartwatch?**\n\nSure! You have the flexibility to utilize any belt with a 22mm size.\n\n \n\n**Does Wave Beat come with different watch faces?**\n\nYes, Wave Beat comes with support for multiple watch faces and themes.\n\n \n\n**How long does Wave Beat last on a single charge?**\n\nWave Beat has a battery backup of up to 15 days.\n\n \n\n**Does it support notifications for particular apps?**\n\nYes, Wave Beat supports notification alerts for multiple applications, including calls, texts, social media notifications, sedentary & hydration alerts, and alarms.\n\n \n\n**What is the price of the boAt Wave BeatSmartwatch in Bangladesh?**\n\nThe latest price of the BoAt Wave Beat Smartwatch in Bangladesh is 2499 Taka. You can buy the BoAt Wave Beat Smartwatch in Bangladesh at best the price from our Godxg Website / App or Outlets countrywide. You can avail of home or office delivery also.\n\n \n\n\nDisclaimer: DX Distribution LTD is the distributor of this brand in Bangladesh. The product information is provided from the Official website and different sources for informational purposes. ', '6 Months'),
(82, 'bijsk8dnbwepukbzsms5fod7', 'Amazfit BIP 3 Pro', '200+ Cloud Watch Faces Functional Crown Button Bluetooth Calling Technology 1.45\" Round AMOLED Display', 6199, NULL, NULL, 'amazfit-bip-3-pro', '2024-11-07 09:35:09.803000', '2024-11-19 12:52:11.914000', NULL, 1, 1, NULL, 50, NULL, '1 Year'),
(84, 'gx2jtr8abfjay58pp7dvrbho', 'Kieslect KR Pro', '200+ Cloud Watch Faces Functional Crown Button Bluetooth Calling Technology 1.45\" Round AMOLED Display', 6799, NULL, NULL, 'kieslect-kr-pro', '2024-11-07 09:35:09.803000', '2024-11-19 12:51:59.407000', NULL, 1, 1, NULL, 48, NULL, '1 Year'),
(86, 'luw0stl7vep4g59khbwfwqms', 'Kieslect Lora 2', '200+ Cloud Watch Faces Functional Crown Button Bluetooth Calling Technology 1.45\" Round AMOLED Display', 6999, NULL, NULL, 'kieslect-lora-2', '2024-11-07 09:35:09.803000', '2024-11-19 12:51:43.108000', NULL, 1, 1, NULL, 50, NULL, '6 Months'),
(88, 'bexj26k4p30br33xl5yirsu8', 'Riversong Motive 9 Pro', '200+ Cloud Watch Faces Functional Crown Button Bluetooth Calling Technology 1.45\" Round AMOLED Display', 3799, NULL, NULL, 'riversong-motive-9-pro', '2024-11-07 09:35:09.803000', '2024-11-19 12:50:39.431000', NULL, 1, 1, NULL, 50, NULL, '6 Months'),
(91, 'm1nf4j3i4negevs4l76ti0a4', 'Riversong Motive 9', '200+ Cloud Watch Faces Functional Crown Button Bluetooth Calling Technology 1.45\" Round AMOLED Display', 3799, 3000, NULL, 'riversong-motive-9', '2024-11-07 09:35:09.803000', '2024-11-19 12:39:50.108000', NULL, 1, 1, NULL, 50, NULL, '1 Year'),
(94, 'e275g3hwfbkpsm0xazfeva73', 'Red Carrot ', ' Red Carrots are a unique and fun addition within the home garden. The tapered root resembles the classic carrot yet that it is a bold striking deep red toned colour. Sweet and Tender is are the key words which will be a welcomed edition to the salad and ', 80, 70, '1kg', 'red-carrot', '2024-09-26 14:51:54.280000', '2024-11-13 15:53:58.081000', '2024-11-13 15:53:58.129000', 1, 1, NULL, 5, NULL, NULL),
(102, 'gb10fgy60pajjamtikujw8nw', 'Fresh Orange', 'This version of the juice consists of oranges that are squeezed and then bottled without having any additives or flavor packs inserted. The juice is not subjected to pasteurization. Depending on storage temperature, freshly squeezed, unpasteurized orange ', 450, NULL, '6pcs', 'fresh-orange', '2024-09-26 15:52:14.905000', '2024-11-14 16:34:44.516000', '2024-11-14 16:34:44.555000', 1, 1, NULL, 46, NULL, NULL),
(103, 'ar0hzfellz8vbkrqeqfefkxy', 'Dove', 'Soap is a salt of a fatty acid (sometimes other carboxylic acids) used for cleaning and lubricating products as well as other applications. In a domestic setting, soaps, specifically \"toilet soaps\", are surfactants usually used for washing, bathing, and o', 100, 80, NULL, 'dove', '2024-10-29 09:39:44.986000', '2024-11-14 16:34:44.519000', '2024-11-14 16:34:44.556000', 1, 1, NULL, 43, NULL, NULL),
(112, 'osldga1v9yphcdoid6afomam', 'Aktive + Electrolyte Lemon Drink ', 'Juice is a drink made from the extraction or pressing of the natural liquid contained in fruit and vegetables. It can also refer to liquids that are flavored with concentrate or other biological food sources, such as meat or seafood, such as clam juice. J', 25, NULL, '200ml', 'product', '2024-11-06 16:56:15.895000', '2024-11-14 17:04:55.925000', '2024-11-14 17:04:55.957000', 1, 1, NULL, 49, NULL, NULL),
(113, 'm9mba1rowjtp8xdpnswe6wq0', 'Yan Pure Apple Juice', 'Juice is a drink made from the extraction or pressing of the natural liquid contained in fruit and vegetables. It can also refer to liquids that are flavored with concentrate or other biological food sources, such as meat or seafood, such as clam juice. J', 1095, NULL, '946ml ', 'yan-pure-apple-juice', '2024-11-06 16:51:16.466000', '2024-11-14 17:04:55.922000', '2024-11-14 17:04:55.958000', 1, 1, NULL, 49, NULL, NULL),
(114, 'scro5ikdkoxcxfgoo4pqj1ma', 'General Soap', 'Soap is a salt of a fatty acid (sometimes other carboxylic acids) used for cleaning and lubricating products as well as other applications. In a domestic setting, soaps, specifically \"toilet soaps\", are surfactants usually used for washing, bathing, and o', 70, NULL, NULL, 'general-soap', '2024-10-29 09:39:44.986000', '2024-11-14 17:16:25.656000', '2024-11-14 17:16:25.696000', 1, 1, NULL, 46, NULL, NULL),
(115, 'll3qxxfqxk2zy6apgjzzma0y', 'Broiler Chicken', 'The chicken (Gallus domesticus) is a large and round short-winged bird, domesticated from the red junglefowl of Southeast Asia around 8,000 years ago', 645, 500, 'Breast Boneless', 'broiler-chicken', '2024-11-06 17:25:21.197000', '2024-11-14 17:16:25.659000', '2024-11-14 17:16:25.692000', 1, 1, NULL, 49, NULL, NULL),
(116, 'ecgsoc7erqa00y3dczmxu8wi', 'Cilantro (2 Pc)', 'The leaves resemble European parsley leaves in shape but this plant has a pungent, sweet-musky odor and taste that some people don\'t like. Descriptions of the flavor of the leaves vary from citrusy with a biting tang, to soapy, to that of crushed bed bugs', 40, NULL, '250gm', 'cilantro', '2024-09-26 14:55:31.382000', '2024-11-14 17:19:05.883000', '2024-11-14 17:19:05.935000', 1, 1, NULL, 5, NULL, NULL),
(118, 'j9pw3qsy6o1ekjfontqztuzs', 'Cauliflower 1 pc', 'Cauliflowers are annual plants that reach about 0.5 metre (1.5 feet) tall and bear large rounded leaves that resemble collards (Brassica oleracea, variety acephala). As desired for food, the terminal cluster forms a firm, succulent “curd,” or head, that i', 50, 45, '500gm', 'cauliflower', '2024-09-26 14:47:27.029000', '2024-11-14 17:19:05.879000', '2024-11-14 17:19:05.945000', 1, 1, NULL, 1, NULL, NULL),
(120, 'v00m9ubrgcjsqb57k9mawnt5', 'Irish Spring', 'Soap is a salt of a fatty acid (sometimes other carboxylic acids) used for cleaning and lubricating products as well as other applications. In a domestic setting, soaps, specifically \"toilet soaps\", are surfactants usually used for washing, bathing, and o', 85, 80, NULL, 'irish-spring', '2024-10-29 09:39:44.986000', '2024-11-14 17:25:26.190000', '2024-11-14 17:25:26.216000', 1, 1, NULL, 46, NULL, NULL),
(123, 'sh7rltw2m1jt1yv78tkhymf5', 'Fresh Green Capsicum', 'Green capsicum—known in other parts of the world as a bell pepper—has crisp, shiny, moist flesh and hollow with a seeded core. Green varieties are less sweet and slightly more bitter than other colours of capsicum', 120, 110, '500gm', 'fresh-green-capsicum', '2024-09-26 15:48:04.428000', '2024-11-14 17:43:42.222000', '2024-11-14 17:43:42.270000', 1, 1, NULL, 17, NULL, NULL),
(124, 'qqhs91l4egh3a3maolufaeli', 'Fresh Mango From Rajshahi', 'Mature fruit has a characteristic fragrance and a smooth, thin, tough skin. The flesh of ripe mangos is pale yellow to orange. The flesh is juicy, sweet, and sometimes fibrous. Some undesirable seedlings or varieties are described as possessing a turpenti', 200, 160, '1kg', 'fresh-mango-from-rajshahi', '2024-09-26 15:50:05.227000', '2024-11-14 17:43:42.230000', '2024-11-14 17:43:42.274000', 1, 1, NULL, 0, NULL, NULL),
(130, 'nuxftojbewj19yswlkm8osk0', 'Egg Loose', 'Humans and their hominid relatives have consumed eggs for millions of years. The most widely consumed eggs are those of fowl, especially chickens.', 12, NULL, 'Min 12pcs', 'egg-loose', '2024-11-06 17:01:01.568000', '2024-11-14 17:48:33.772000', '2024-11-14 17:48:33.818000', 1, 1, NULL, 41, NULL, NULL),
(131, 'at38wvbpzqny1vo31tbvbnbx', 'Mango Maza Juice', 'Maaza has a distinct pulpy taste as compared to Frooti and tastes slightly sweeter than Slice. Maaza claims to contain mango pulp of the Alphonso variety, which is known as the \"King of Mangoes\" in India. Maaza is a popular household name in Dubai.', 600, NULL, NULL, 'mango-maza-juice', '2024-09-26 15:53:48.091000', '2024-11-14 17:49:26.233000', '2024-11-14 17:49:26.289000', 1, 1, NULL, 2, NULL, NULL),
(133, 'b5so8scc6xb82psfabu2kl4r', 'boAt Enigma X400', '200+ Cloud Watch Faces Functional Crown Button Bluetooth Calling Technology 1.45\" Round AMOLED Display', 5499, NULL, NULL, 'bo-at-enigma-x400', '2024-11-07 09:35:09.803000', '2024-11-14 17:50:21.476000', '2024-11-14 17:50:21.509000', 1, 1, NULL, 48, NULL, NULL),
(135, 'b9y35obpugwrnd74bphq4820', 'Pineapple Queen', 'A smaller pineapple than others, but the best eating variety in NZ. Bright, golden-yellow flesh with crisp texture and sweet flavour. Little to no tough core.', 85, 75, '1pcs', 'pineapple-queen', '2024-09-26 15:55:47.964000', '2024-11-14 17:51:29.967000', '2024-11-14 17:51:30.007000', 1, 1, NULL, 11, NULL, NULL),
(136, 'wppc4srs8onn7vpjeqsg9t2p', 'Kazi Farm Branded Egg', 'Humans and their hominid relatives have consumed eggs for millions of years. The most widely consumed eggs are those of fowl, especially chickens.', 190, NULL, '2 Pcs Pack', 'kazi-farm-branded-egg', '2024-11-06 17:01:01.568000', '2024-11-14 17:51:29.970000', '2024-11-14 17:51:30.005000', 1, 1, NULL, 44, NULL, NULL),
(145, 'm1nf4j3i4negevs4l76ti0a4', 'Riversong Motive 9', '200+ Cloud Watch Faces Functional Crown Button Bluetooth Calling Technology 1.45\" Round AMOLED Display', 3799, 3000, NULL, 'riversong-motive-9', '2024-11-07 09:35:09.803000', '2024-11-19 12:39:50.108000', '2024-11-19 12:39:50.206000', 1, 1, NULL, 50, NULL, '1 Year'),
(146, 'bexj26k4p30br33xl5yirsu8', 'Riversong Motive 9 Pro', '200+ Cloud Watch Faces Functional Crown Button Bluetooth Calling Technology 1.45\" Round AMOLED Display', 3799, NULL, NULL, 'riversong-motive-9-pro', '2024-11-07 09:35:09.803000', '2024-11-19 12:50:39.431000', '2024-11-19 12:50:39.498000', 1, 1, NULL, 50, NULL, '6 Months'),
(147, 'luw0stl7vep4g59khbwfwqms', 'Kieslect Lora 2', '200+ Cloud Watch Faces Functional Crown Button Bluetooth Calling Technology 1.45\" Round AMOLED Display', 6999, NULL, NULL, 'kieslect-lora-2', '2024-11-07 09:35:09.803000', '2024-11-19 12:51:43.108000', '2024-11-19 12:51:43.178000', 1, 1, NULL, 50, NULL, '6 Months'),
(148, 'gx2jtr8abfjay58pp7dvrbho', 'Kieslect KR Pro', '200+ Cloud Watch Faces Functional Crown Button Bluetooth Calling Technology 1.45\" Round AMOLED Display', 6799, NULL, NULL, 'kieslect-kr-pro', '2024-11-07 09:35:09.803000', '2024-11-19 12:51:59.407000', '2024-11-19 12:51:59.456000', 1, 1, NULL, 48, NULL, '1 Year'),
(149, 'bijsk8dnbwepukbzsms5fod7', 'Amazfit BIP 3 Pro', '200+ Cloud Watch Faces Functional Crown Button Bluetooth Calling Technology 1.45\" Round AMOLED Display', 6199, NULL, NULL, 'amazfit-bip-3-pro', '2024-11-07 09:35:09.803000', '2024-11-19 12:52:11.914000', '2024-11-19 12:52:11.976000', 1, 1, NULL, 50, NULL, '1 Year'),
(150, 'mx1mx97h42oxi9s55b5ibkci', 'boAt Wave beat', '200+ Cloud Watch Faces Functional Crown Button Bluetooth Calling Technology 1.45\" Round AMOLED Display', 2000, NULL, NULL, 'bo-at-wave-beat', '2024-11-07 09:35:09.803000', '2024-11-19 12:52:29.042000', '2024-11-19 12:52:29.120000', 1, 1, NULL, 49, '**Technical Specifications for the boAt Wave Beat Smartwatch**\n\n![1727947838.jpg](http://localhost:1337/uploads/1727947838_d6e2e6c109.jpg)\n\n**Physical Specification**\n\nBody Material: Polycarbonate\n \nStrap Info: Silicone\n\nButton: Single button on the right side\n\nWeight: 45 grams\n\nColor: Active Black, Deep Blue, Cool Grey, and Pink\n\nWaterproof Rating: IP67\n\n**Display**\n\nDisplay Type & Size: 1.69-inch square HD display\n\nTouchscreen: 2.5D curved glass\n\nDisplay Resolution: 240 x 280 pixels\n\nBrightness: 550 nits\n\nWatch Faces: Multiple customizable watch faces available\n\n**Advanced Sensor Features**\n\nOptical PPG Heart Rate Sensor, 3-axis Accelerometer, Proximity sensor, Ambient light sensor, SpO2 sensor.\n\n**Health Monitoring Features**\n\n24/7 Heart rate, Real-time SpO2 tracker, Stress Tracker, Guided Breathing, Menstrual Cycle Tracking, Sleep Monitor, sleep stages (light, deep, REM), Sedentary alerts, Activity Tracking.\n\n**Sports Modes**\n\nThe boAt Wave Beat boasts an impressive 17 sports modes catering to various activities.\n\n**Outdoor Sports:**\n\nRunning (indoor & outdoor), Cycling (indoor & outdoor), Walking, Climbing, Hiking, Badminton, Cricket, Football, Tennis, Swimming (pool & open water).\n\nIndoor Sports:\n\nYoga, Pilates, Zumba, HIIT, Elliptical, Treadmill, Stationary bike, Strength training\n\n**Useful Function**\n\nFlashlight, Find My Phone, Mobile Phone Camera Control, Phone & SMS Notifications, Music Control, Weather forecasts, DND Mood, Alarm Clock, Stopwatch, Timer, Sedentary Reminders, Breathing Exercise.\n\n**Battery**\n\nBattery Capacity: 200 mAh\n\nTypical Usage Time: Up to 7 days\n\nHeavy Usage: Up to 4 days\n\nCharging Time: About 2 hours\n\n**Others**\n\n\nApplication: boAt Crest \n\n**FAQ**\n\n**Is it possible to replace the belt on this smartwatch?**\n\nSure! You have the flexibility to utilize any belt with a 22mm size.\n\n \n\n**Does Wave Beat come with different watch faces?**\n\nYes, Wave Beat comes with support for multiple watch faces and themes.\n\n \n\n**How long does Wave Beat last on a single charge?**\n\nWave Beat has a battery backup of up to 15 days.\n\n \n\n**Does it support notifications for particular apps?**\n\nYes, Wave Beat supports notification alerts for multiple applications, including calls, texts, social media notifications, sedentary & hydration alerts, and alarms.\n\n \n\n**What is the price of the boAt Wave BeatSmartwatch in Bangladesh?**\n\nThe latest price of the BoAt Wave Beat Smartwatch in Bangladesh is 2499 Taka. You can buy the BoAt Wave Beat Smartwatch in Bangladesh at best the price from our Godxg Website / App or Outlets countrywide. You can avail of home or office delivery also.\n\n \n\n\nDisclaimer: DX Distribution LTD is the distributor of this brand in Bangladesh. The product information is provided from the Official website and different sources for informational purposes. ', '6 Months'),
(151, 'nzbzmahbq8jcixsq5r7iysjl', 'boAt Wave Stride Voice', '200+ Cloud Watch Faces Functional Crown Button Bluetooth Calling Technology 1.45\" Round AMOLED Display', 3999, NULL, NULL, 'bo-at-wave-stride-voice', '2024-11-07 09:35:09.803000', '2024-11-19 12:52:44.479000', '2024-11-19 12:52:44.530000', 1, 1, NULL, 46, NULL, '1 Year'),
(152, 'pkv3m7axxa3gevlcx9p1bt2o', 'boAt Wave Hype', '200+ Cloud Watch Faces Functional Crown Button Bluetooth Calling Technology 1.45\" Round AMOLED Display', 2449, NULL, NULL, 'bo-at-wave-hype', '2024-11-07 09:35:09.803000', '2024-11-19 12:52:55.986000', '2024-11-19 12:52:56.052000', 1, 1, NULL, 49, NULL, '6 Months');

-- --------------------------------------------------------

--
-- Table structure for table `products_brand_lnk`
--

CREATE TABLE `products_brand_lnk` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `brand_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products_brand_lnk`
--

INSERT INTO `products_brand_lnk` (`id`, `product_id`, `brand_id`) VALUES
(1, 61, 1),
(3, 63, 1),
(5, 65, 1),
(7, 67, 1),
(10, 70, 1),
(13, 73, 3),
(16, 76, 3),
(18, 78, 3),
(20, 80, 3),
(23, 82, 9),
(26, 84, 11),
(28, 86, 11),
(31, 88, 13),
(34, 91, 13),
(45, 112, 2),
(46, 113, 2),
(47, 115, 2),
(55, 130, 2),
(58, 133, 5),
(60, 136, 2),
(69, 145, 14),
(70, 146, 14),
(71, 147, 12),
(72, 148, 12),
(73, 149, 10),
(74, 150, 5),
(75, 151, 5),
(76, 152, 5);

-- --------------------------------------------------------

--
-- Table structure for table `products_categories_lnk`
--

CREATE TABLE `products_categories_lnk` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `category_id` int(10) UNSIGNED DEFAULT NULL,
  `category_ord` double UNSIGNED DEFAULT NULL,
  `product_ord` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products_categories_lnk`
--

INSERT INTO `products_categories_lnk` (`id`, `product_id`, `category_id`, `category_ord`, `product_ord`) VALUES
(1, 1, 3, 0, 1),
(3, 3, 3, 0, 2),
(5, 5, 3, 0, 3),
(7, 7, 3, 0, 4),
(9, 9, 1, 0, 1),
(11, 11, 1, 0, 2),
(13, 13, 5, 0, 1),
(15, 15, 1, 0, 3),
(41, 40, 7, 0, 1),
(43, 42, 7, 1, 2),
(45, 44, 7, 1, 3),
(84, 61, 5, 0, 2),
(86, 63, 5, 0, 3),
(88, 65, 11, 0, 1),
(90, 67, 11, 1, 2),
(93, 70, 11, 1, 3),
(95, 73, 32, 1, 1),
(97, 76, 32, 1, 2),
(99, 78, 32, 1, 3),
(101, 80, 32, 1, 4),
(103, 82, 32, 1, 5),
(105, 84, 32, 1, 6),
(107, 86, 32, 1, 7),
(109, 88, 32, 1, 8),
(112, 91, 32, 1, 9),
(115, 94, 27, 1, 6),
(123, 102, 26, 1, 5),
(124, 103, 25, 1, 5),
(133, 112, 28, 1, 3),
(134, 113, 28, 1, 4),
(135, 115, 29, 1, 8),
(136, 114, 25, 1, 6),
(137, 116, 27, 1, 9),
(139, 118, 27, 1, 10),
(140, 120, 25, 1, 7),
(144, 123, 27, 1, 11),
(145, 124, 26, 1, 7),
(150, 130, 29, 1, 9),
(152, 131, 28, 1, 5),
(154, 133, 33, 1, 15),
(156, 135, 26, 1, 8),
(157, 136, 29, 1, 10),
(166, 145, 33, 1, 17),
(167, 146, 33, 1, 18),
(168, 147, 33, 1, 19),
(169, 148, 33, 1, 20),
(170, 149, 33, 1, 21),
(171, 150, 33, 1, 22),
(172, 151, 33, 1, 23),
(173, 152, 33, 1, 24);

-- --------------------------------------------------------

--
-- Table structure for table `products_colors_lnk`
--

CREATE TABLE `products_colors_lnk` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `color_id` int(10) UNSIGNED DEFAULT NULL,
  `color_ord` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products_colors_lnk`
--

INSERT INTO `products_colors_lnk` (`id`, `product_id`, `color_id`, `color_ord`) VALUES
(1, 1, 11, 1),
(2, 1, 5, 2),
(5, 9, 3, 1),
(7, 3, 1, 1),
(9, 1, 9, 3),
(13, 40, 3, 0),
(15, 42, 3, 1),
(22, 44, 13, 1),
(28, 82, 7, 1),
(29, 82, 18, 2),
(34, 86, 18, 1),
(35, 86, 5, 2),
(36, 86, 1, 3),
(43, 88, 7, 1),
(47, 91, 7, 1),
(49, 94, 2, 1),
(55, 103, 15, 1),
(56, 114, 4, 1),
(57, 118, 12, 1),
(58, 118, 6, 2),
(59, 118, 10, 3),
(60, 120, 4, 1),
(61, 124, 4, 1),
(62, 145, 8, 1),
(63, 146, 8, 1),
(64, 147, 19, 1),
(65, 147, 6, 2),
(66, 147, 2, 3),
(67, 149, 8, 1),
(68, 149, 19, 2);

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `document_id`, `name`, `type`, `url`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`, `locale`) VALUES
(1, 'yt2x2vfjw8ft54u4y1l8xrxz', 'slide 1', 'home', NULL, '2024-09-26 09:40:59.600000', '2024-09-26 09:40:59.600000', NULL, 1, 1, NULL),
(2, 'yt2x2vfjw8ft54u4y1l8xrxz', 'slide 1', 'home', NULL, '2024-09-26 09:40:59.600000', '2024-09-26 09:40:59.600000', '2024-09-26 09:40:59.680000', 1, 1, NULL),
(3, 'h1681s0urtsamv1lncqpffb9', 'slide 2', 'home', 'https://godxg.com/', '2024-09-26 09:41:42.559000', '2024-09-26 09:41:42.559000', NULL, 1, 1, NULL),
(4, 'h1681s0urtsamv1lncqpffb9', 'slide 2', 'home', 'https://godxg.com/', '2024-09-26 09:41:42.559000', '2024-09-26 09:41:42.559000', '2024-09-26 09:41:42.629000', 1, 1, NULL),
(5, 'hn1moplbl6pfsff4pmtr4dhq', 'slide 3', 'banner', 'https://numatrix.co/', '2024-09-26 09:44:49.081000', '2024-09-26 09:44:49.081000', NULL, 1, 1, NULL),
(6, 'hn1moplbl6pfsff4pmtr4dhq', 'slide 3', 'banner', 'https://numatrix.co/', '2024-09-26 09:44:49.081000', '2024-09-26 09:44:49.081000', '2024-09-26 09:44:49.132000', 1, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `strapi_api_tokens`
--

CREATE TABLE `strapi_api_tokens` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `access_key` varchar(255) DEFAULT NULL,
  `last_used_at` datetime(6) DEFAULT NULL,
  `expires_at` datetime(6) DEFAULT NULL,
  `lifespan` bigint(20) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `strapi_api_tokens`
--

INSERT INTO `strapi_api_tokens` (`id`, `document_id`, `name`, `description`, `type`, `access_key`, `last_used_at`, `expires_at`, `lifespan`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`, `locale`) VALUES
(1, 'f7zxwgoq2v2j09ea7150w331', 'jewel', '', 'custom', 'b922a0728edc2a384e397fa7c3d12b13b850593b0523785ff9459719269001d0f8d726c11fa92d9066215be85e969b69423adf47d5db172bac47be682ff9ba1b', NULL, '2024-10-14 10:05:55.665000', 604800000, '2024-10-07 10:05:55.665000', '2024-10-07 10:06:09.919000', '2024-10-07 10:05:55.674000', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `strapi_api_token_permissions`
--

CREATE TABLE `strapi_api_token_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_id` varchar(255) DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `strapi_api_token_permissions`
--

INSERT INTO `strapi_api_token_permissions` (`id`, `document_id`, `action`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`, `locale`) VALUES
(1, 'vzher9aun6yjqk7pv938acsm', 'api::category.category.find', '2024-10-07 10:05:55.694000', '2024-10-07 10:05:55.694000', '2024-10-07 10:05:55.695000', NULL, NULL, NULL),
(2, 'bnv6mukw4hfiw59w6hj6oiqi', 'api::category.category.findOne', '2024-10-07 10:05:55.694000', '2024-10-07 10:05:55.694000', '2024-10-07 10:05:55.696000', NULL, NULL, NULL),
(3, 'lzdwx49qqxsolri146kqluj9', 'api::product.product.find', '2024-10-07 10:05:55.694000', '2024-10-07 10:05:55.694000', '2024-10-07 10:05:55.696000', NULL, NULL, NULL),
(4, 'yc6clakppnwcagxg4xer0ea0', 'api::product.product.findOne', '2024-10-07 10:05:55.695000', '2024-10-07 10:05:55.695000', '2024-10-07 10:05:55.696000', NULL, NULL, NULL),
(5, 'vpa0tnoqcojdjlk1nc8hq7it', 'api::slider.slider.find', '2024-10-07 10:05:55.695000', '2024-10-07 10:05:55.695000', '2024-10-07 10:05:55.697000', NULL, NULL, NULL),
(6, 'q6ykbij3pyj8gz1a0wjzygee', 'api::slider.slider.findOne', '2024-10-07 10:05:55.695000', '2024-10-07 10:05:55.695000', '2024-10-07 10:05:55.697000', NULL, NULL, NULL),
(7, 'u97oycqvdpmrgk6pxlavp5w3', 'api::user-cart.user-cart.find', '2024-10-07 10:05:55.695000', '2024-10-07 10:05:55.695000', '2024-10-07 10:05:55.698000', NULL, NULL, NULL),
(8, 'c7igh173pjls1ifbwqc35wl1', 'api::user-cart.user-cart.findOne', '2024-10-07 10:05:55.695000', '2024-10-07 10:05:55.695000', '2024-10-07 10:05:55.699000', NULL, NULL, NULL),
(9, 'z65oos9y2dumwk0slzesypf3', 'api::product.product.create', '2024-10-07 10:05:55.695000', '2024-10-07 10:05:55.695000', '2024-10-07 10:05:55.699000', NULL, NULL, NULL),
(10, 'ss35dyxy5hjpxxbb2w0ppnbh', 'api::product.product.delete', '2024-10-07 10:05:55.695000', '2024-10-07 10:05:55.695000', '2024-10-07 10:05:55.701000', NULL, NULL, NULL),
(11, 'cad8iar17ci25d1p3vgjp2xi', 'api::product.product.update', '2024-10-07 10:05:55.695000', '2024-10-07 10:05:55.695000', '2024-10-07 10:05:55.702000', NULL, NULL, NULL),
(12, 'j1axn4ncmk3ecanmadqmceq0', 'api::user-cart.user-cart.create', '2024-10-07 10:05:55.695000', '2024-10-07 10:05:55.695000', '2024-10-07 10:05:55.702000', NULL, NULL, NULL),
(13, 'mpawvjpvttf9ii5q62avsgb3', 'api::user-cart.user-cart.update', '2024-10-07 10:05:55.695000', '2024-10-07 10:05:55.695000', '2024-10-07 10:05:55.703000', NULL, NULL, NULL),
(14, 'rorcth8gd4rh0xofyjmzxtf0', 'api::user-cart.user-cart.delete', '2024-10-07 10:05:55.695000', '2024-10-07 10:05:55.695000', '2024-10-07 10:05:55.703000', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `strapi_api_token_permissions_token_lnk`
--

CREATE TABLE `strapi_api_token_permissions_token_lnk` (
  `id` int(10) UNSIGNED NOT NULL,
  `api_token_permission_id` int(10) UNSIGNED DEFAULT NULL,
  `api_token_id` int(10) UNSIGNED DEFAULT NULL,
  `api_token_permission_ord` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `strapi_api_token_permissions_token_lnk`
--

INSERT INTO `strapi_api_token_permissions_token_lnk` (`id`, `api_token_permission_id`, `api_token_id`, `api_token_permission_ord`) VALUES
(1, 5, 1, 1),
(2, 1, 1, 1),
(3, 2, 1, 1),
(4, 4, 1, 1),
(5, 3, 1, 1),
(6, 6, 1, 1),
(7, 8, 1, 1),
(8, 7, 1, 1),
(9, 9, 1, 1),
(10, 10, 1, 1),
(11, 13, 1, 2),
(12, 11, 1, 2),
(13, 12, 1, 2),
(14, 14, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `strapi_core_store_settings`
--

CREATE TABLE `strapi_core_store_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) DEFAULT NULL,
  `value` longtext DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `environment` varchar(255) DEFAULT NULL,
  `tag` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `strapi_core_store_settings`
--

INSERT INTO `strapi_core_store_settings` (`id`, `key`, `value`, `type`, `environment`, `tag`) VALUES
(1, 'strapi_content_types_schema', '{\"plugin::upload.file\":{\"collectionName\":\"files\",\"info\":{\"singularName\":\"file\",\"pluralName\":\"files\",\"displayName\":\"File\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"alternativeText\":{\"type\":\"string\",\"configurable\":false},\"caption\":{\"type\":\"string\",\"configurable\":false},\"width\":{\"type\":\"integer\",\"configurable\":false},\"height\":{\"type\":\"integer\",\"configurable\":false},\"formats\":{\"type\":\"json\",\"configurable\":false},\"hash\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"ext\":{\"type\":\"string\",\"configurable\":false},\"mime\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"size\":{\"type\":\"decimal\",\"configurable\":false,\"required\":true},\"url\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"previewUrl\":{\"type\":\"string\",\"configurable\":false},\"provider\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"provider_metadata\":{\"type\":\"json\",\"configurable\":false},\"related\":{\"type\":\"relation\",\"relation\":\"morphToMany\",\"configurable\":false},\"folder\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::upload.folder\",\"inversedBy\":\"files\",\"private\":true},\"folderPath\":{\"type\":\"string\",\"minLength\":1,\"required\":true,\"private\":true,\"searchable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::upload.file\",\"writable\":false,\"private\":false,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"files\"}}},\"indexes\":[{\"name\":\"upload_files_folder_path_index\",\"columns\":[\"folder_path\"],\"type\":null},{\"name\":\"upload_files_created_at_index\",\"columns\":[\"created_at\"],\"type\":null},{\"name\":\"upload_files_updated_at_index\",\"columns\":[\"updated_at\"],\"type\":null},{\"name\":\"upload_files_name_index\",\"columns\":[\"name\"],\"type\":null},{\"name\":\"upload_files_size_index\",\"columns\":[\"size\"],\"type\":null},{\"name\":\"upload_files_ext_index\",\"columns\":[\"ext\"],\"type\":null}],\"plugin\":\"upload\",\"globalId\":\"UploadFile\",\"uid\":\"plugin::upload.file\",\"modelType\":\"contentType\",\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"files\",\"info\":{\"singularName\":\"file\",\"pluralName\":\"files\",\"displayName\":\"File\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"alternativeText\":{\"type\":\"string\",\"configurable\":false},\"caption\":{\"type\":\"string\",\"configurable\":false},\"width\":{\"type\":\"integer\",\"configurable\":false},\"height\":{\"type\":\"integer\",\"configurable\":false},\"formats\":{\"type\":\"json\",\"configurable\":false},\"hash\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"ext\":{\"type\":\"string\",\"configurable\":false},\"mime\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"size\":{\"type\":\"decimal\",\"configurable\":false,\"required\":true},\"url\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"previewUrl\":{\"type\":\"string\",\"configurable\":false},\"provider\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"provider_metadata\":{\"type\":\"json\",\"configurable\":false},\"related\":{\"type\":\"relation\",\"relation\":\"morphToMany\",\"configurable\":false},\"folder\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::upload.folder\",\"inversedBy\":\"files\",\"private\":true},\"folderPath\":{\"type\":\"string\",\"minLength\":1,\"required\":true,\"private\":true,\"searchable\":false}},\"kind\":\"collectionType\"},\"modelName\":\"file\"},\"plugin::upload.folder\":{\"collectionName\":\"upload_folders\",\"info\":{\"singularName\":\"folder\",\"pluralName\":\"folders\",\"displayName\":\"Folder\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"required\":true},\"pathId\":{\"type\":\"integer\",\"unique\":true,\"required\":true},\"parent\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::upload.folder\",\"inversedBy\":\"children\"},\"children\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::upload.folder\",\"mappedBy\":\"parent\"},\"files\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::upload.file\",\"mappedBy\":\"folder\"},\"path\":{\"type\":\"string\",\"minLength\":1,\"required\":true},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::upload.folder\",\"writable\":false,\"private\":false,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"upload_folders\"}}},\"indexes\":[{\"name\":\"upload_folders_path_id_index\",\"columns\":[\"path_id\"],\"type\":\"unique\"},{\"name\":\"upload_folders_path_index\",\"columns\":[\"path\"],\"type\":\"unique\"}],\"plugin\":\"upload\",\"globalId\":\"UploadFolder\",\"uid\":\"plugin::upload.folder\",\"modelType\":\"contentType\",\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"upload_folders\",\"info\":{\"singularName\":\"folder\",\"pluralName\":\"folders\",\"displayName\":\"Folder\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"required\":true},\"pathId\":{\"type\":\"integer\",\"unique\":true,\"required\":true},\"parent\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::upload.folder\",\"inversedBy\":\"children\"},\"children\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::upload.folder\",\"mappedBy\":\"parent\"},\"files\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::upload.file\",\"mappedBy\":\"folder\"},\"path\":{\"type\":\"string\",\"minLength\":1,\"required\":true}},\"kind\":\"collectionType\"},\"modelName\":\"folder\"},\"plugin::i18n.locale\":{\"info\":{\"singularName\":\"locale\",\"pluralName\":\"locales\",\"collectionName\":\"locales\",\"displayName\":\"Locale\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"min\":1,\"max\":50,\"configurable\":false},\"code\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::i18n.locale\",\"writable\":false,\"private\":false,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"i18n_locale\"}}},\"plugin\":\"i18n\",\"collectionName\":\"i18n_locale\",\"globalId\":\"I18NLocale\",\"uid\":\"plugin::i18n.locale\",\"modelType\":\"contentType\",\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"i18n_locale\",\"info\":{\"singularName\":\"locale\",\"pluralName\":\"locales\",\"collectionName\":\"locales\",\"displayName\":\"Locale\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"min\":1,\"max\":50,\"configurable\":false},\"code\":{\"type\":\"string\",\"unique\":true,\"configurable\":false}},\"kind\":\"collectionType\"},\"modelName\":\"locale\"},\"plugin::content-releases.release\":{\"collectionName\":\"strapi_releases\",\"info\":{\"singularName\":\"release\",\"pluralName\":\"releases\",\"displayName\":\"Release\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"required\":true},\"releasedAt\":{\"type\":\"datetime\"},\"scheduledAt\":{\"type\":\"datetime\"},\"timezone\":{\"type\":\"string\"},\"status\":{\"type\":\"enumeration\",\"enum\":[\"ready\",\"blocked\",\"failed\",\"done\",\"empty\"],\"required\":true},\"actions\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::content-releases.release-action\",\"mappedBy\":\"release\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::content-releases.release\",\"writable\":false,\"private\":false,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"strapi_releases\"}}},\"plugin\":\"content-releases\",\"globalId\":\"ContentReleasesRelease\",\"uid\":\"plugin::content-releases.release\",\"modelType\":\"contentType\",\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"strapi_releases\",\"info\":{\"singularName\":\"release\",\"pluralName\":\"releases\",\"displayName\":\"Release\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"required\":true},\"releasedAt\":{\"type\":\"datetime\"},\"scheduledAt\":{\"type\":\"datetime\"},\"timezone\":{\"type\":\"string\"},\"status\":{\"type\":\"enumeration\",\"enum\":[\"ready\",\"blocked\",\"failed\",\"done\",\"empty\"],\"required\":true},\"actions\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::content-releases.release-action\",\"mappedBy\":\"release\"}},\"kind\":\"collectionType\"},\"modelName\":\"release\"},\"plugin::content-releases.release-action\":{\"collectionName\":\"strapi_release_actions\",\"info\":{\"singularName\":\"release-action\",\"pluralName\":\"release-actions\",\"displayName\":\"Release Action\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"type\":{\"type\":\"enumeration\",\"enum\":[\"publish\",\"unpublish\"],\"required\":true},\"contentType\":{\"type\":\"string\",\"required\":true},\"entryDocumentId\":{\"type\":\"string\"},\"locale\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"release\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::content-releases.release\",\"inversedBy\":\"actions\"},\"isEntryValid\":{\"type\":\"boolean\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::content-releases.release-action\",\"writable\":false,\"private\":false,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"strapi_release_actions\"}}},\"plugin\":\"content-releases\",\"globalId\":\"ContentReleasesReleaseAction\",\"uid\":\"plugin::content-releases.release-action\",\"modelType\":\"contentType\",\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"strapi_release_actions\",\"info\":{\"singularName\":\"release-action\",\"pluralName\":\"release-actions\",\"displayName\":\"Release Action\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"type\":{\"type\":\"enumeration\",\"enum\":[\"publish\",\"unpublish\"],\"required\":true},\"contentType\":{\"type\":\"string\",\"required\":true},\"entryDocumentId\":{\"type\":\"string\"},\"locale\":{\"type\":\"string\"},\"release\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::content-releases.release\",\"inversedBy\":\"actions\"},\"isEntryValid\":{\"type\":\"boolean\"}},\"kind\":\"collectionType\"},\"modelName\":\"release-action\"},\"plugin::review-workflows.workflow\":{\"collectionName\":\"strapi_workflows\",\"info\":{\"name\":\"Workflow\",\"description\":\"\",\"singularName\":\"workflow\",\"pluralName\":\"workflows\",\"displayName\":\"Workflow\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"required\":true,\"unique\":true},\"stages\":{\"type\":\"relation\",\"target\":\"plugin::review-workflows.workflow-stage\",\"relation\":\"oneToMany\",\"mappedBy\":\"workflow\"},\"contentTypes\":{\"type\":\"json\",\"required\":true,\"default\":\"[]\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::review-workflows.workflow\",\"writable\":false,\"private\":false,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"strapi_workflows\"}}},\"plugin\":\"review-workflows\",\"globalId\":\"ReviewWorkflowsWorkflow\",\"uid\":\"plugin::review-workflows.workflow\",\"modelType\":\"contentType\",\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"strapi_workflows\",\"info\":{\"name\":\"Workflow\",\"description\":\"\",\"singularName\":\"workflow\",\"pluralName\":\"workflows\",\"displayName\":\"Workflow\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"required\":true,\"unique\":true},\"stages\":{\"type\":\"relation\",\"target\":\"plugin::review-workflows.workflow-stage\",\"relation\":\"oneToMany\",\"mappedBy\":\"workflow\"},\"contentTypes\":{\"type\":\"json\",\"required\":true,\"default\":\"[]\"}},\"kind\":\"collectionType\"},\"modelName\":\"workflow\"},\"plugin::review-workflows.workflow-stage\":{\"collectionName\":\"strapi_workflows_stages\",\"info\":{\"name\":\"Workflow Stage\",\"description\":\"\",\"singularName\":\"workflow-stage\",\"pluralName\":\"workflow-stages\",\"displayName\":\"Stages\"},\"options\":{\"version\":\"1.1.0\",\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"configurable\":false},\"color\":{\"type\":\"string\",\"configurable\":false,\"default\":\"#4945FF\"},\"workflow\":{\"type\":\"relation\",\"target\":\"plugin::review-workflows.workflow\",\"relation\":\"manyToOne\",\"inversedBy\":\"stages\",\"configurable\":false},\"permissions\":{\"type\":\"relation\",\"target\":\"admin::permission\",\"relation\":\"manyToMany\",\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::review-workflows.workflow-stage\",\"writable\":false,\"private\":false,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"strapi_workflows_stages\"}}},\"plugin\":\"review-workflows\",\"globalId\":\"ReviewWorkflowsWorkflowStage\",\"uid\":\"plugin::review-workflows.workflow-stage\",\"modelType\":\"contentType\",\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"strapi_workflows_stages\",\"info\":{\"name\":\"Workflow Stage\",\"description\":\"\",\"singularName\":\"workflow-stage\",\"pluralName\":\"workflow-stages\",\"displayName\":\"Stages\"},\"options\":{\"version\":\"1.1.0\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"configurable\":false},\"color\":{\"type\":\"string\",\"configurable\":false,\"default\":\"#4945FF\"},\"workflow\":{\"type\":\"relation\",\"target\":\"plugin::review-workflows.workflow\",\"relation\":\"manyToOne\",\"inversedBy\":\"stages\",\"configurable\":false},\"permissions\":{\"type\":\"relation\",\"target\":\"admin::permission\",\"relation\":\"manyToMany\",\"configurable\":false}},\"kind\":\"collectionType\"},\"modelName\":\"workflow-stage\"},\"plugin::users-permissions.permission\":{\"collectionName\":\"up_permissions\",\"info\":{\"name\":\"permission\",\"description\":\"\",\"singularName\":\"permission\",\"pluralName\":\"permissions\",\"displayName\":\"Permission\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"role\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.role\",\"inversedBy\":\"permissions\",\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.permission\",\"writable\":false,\"private\":false,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"up_permissions\"}}},\"plugin\":\"users-permissions\",\"globalId\":\"UsersPermissionsPermission\",\"uid\":\"plugin::users-permissions.permission\",\"modelType\":\"contentType\",\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"up_permissions\",\"info\":{\"name\":\"permission\",\"description\":\"\",\"singularName\":\"permission\",\"pluralName\":\"permissions\",\"displayName\":\"Permission\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"role\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.role\",\"inversedBy\":\"permissions\",\"configurable\":false}},\"kind\":\"collectionType\"},\"modelName\":\"permission\",\"options\":{\"draftAndPublish\":false}},\"plugin::users-permissions.role\":{\"collectionName\":\"up_roles\",\"info\":{\"name\":\"role\",\"description\":\"\",\"singularName\":\"role\",\"pluralName\":\"roles\",\"displayName\":\"Role\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":3,\"required\":true,\"configurable\":false},\"description\":{\"type\":\"string\",\"configurable\":false},\"type\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"permissions\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.permission\",\"mappedBy\":\"role\",\"configurable\":false},\"users\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.user\",\"mappedBy\":\"role\",\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.role\",\"writable\":false,\"private\":false,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"up_roles\"}}},\"plugin\":\"users-permissions\",\"globalId\":\"UsersPermissionsRole\",\"uid\":\"plugin::users-permissions.role\",\"modelType\":\"contentType\",\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"up_roles\",\"info\":{\"name\":\"role\",\"description\":\"\",\"singularName\":\"role\",\"pluralName\":\"roles\",\"displayName\":\"Role\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":3,\"required\":true,\"configurable\":false},\"description\":{\"type\":\"string\",\"configurable\":false},\"type\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"permissions\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.permission\",\"mappedBy\":\"role\",\"configurable\":false},\"users\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.user\",\"mappedBy\":\"role\",\"configurable\":false}},\"kind\":\"collectionType\"},\"modelName\":\"role\",\"options\":{\"draftAndPublish\":false}},\"plugin::users-permissions.user\":{\"collectionName\":\"up_users\",\"info\":{\"name\":\"user\",\"description\":\"\",\"singularName\":\"user\",\"pluralName\":\"users\",\"displayName\":\"User\"},\"options\":{\"draftAndPublish\":false},\"attributes\":{\"username\":{\"type\":\"string\",\"minLength\":3,\"unique\":true,\"configurable\":false,\"required\":true},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true},\"provider\":{\"type\":\"string\",\"configurable\":false},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"private\":true,\"searchable\":false},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"confirmationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"confirmed\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"role\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.role\",\"inversedBy\":\"users\",\"configurable\":false},\"mobile\":{\"type\":\"string\"},\"name\":{\"type\":\"string\"},\"about\":{\"type\":\"text\"},\"profileImageOff\":{\"type\":\"media\",\"multiple\":false,\"required\":false,\"allowedTypes\":[\"images\"]},\"profileImage\":{\"type\":\"string\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.user\",\"writable\":false,\"private\":false,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"up_users\"}}},\"config\":{\"attributes\":{\"resetPasswordToken\":{\"hidden\":true},\"confirmationToken\":{\"hidden\":true},\"provider\":{\"hidden\":true}}},\"plugin\":\"users-permissions\",\"globalId\":\"UsersPermissionsUser\",\"kind\":\"collectionType\",\"__filename__\":\"schema.json\",\"uid\":\"plugin::users-permissions.user\",\"modelType\":\"contentType\",\"__schema__\":{\"collectionName\":\"up_users\",\"info\":{\"name\":\"user\",\"description\":\"\",\"singularName\":\"user\",\"pluralName\":\"users\",\"displayName\":\"User\"},\"options\":{\"draftAndPublish\":false},\"attributes\":{\"username\":{\"type\":\"string\",\"minLength\":3,\"unique\":true,\"configurable\":false,\"required\":true},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true},\"provider\":{\"type\":\"string\",\"configurable\":false},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"private\":true,\"searchable\":false},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"confirmationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"confirmed\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"role\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.role\",\"inversedBy\":\"users\",\"configurable\":false},\"mobile\":{\"type\":\"string\"},\"name\":{\"type\":\"string\"},\"about\":{\"type\":\"text\"},\"profileImageOff\":{\"type\":\"media\",\"multiple\":false,\"required\":false,\"allowedTypes\":[\"images\"]},\"profileImage\":{\"type\":\"string\"}},\"kind\":\"collectionType\"},\"modelName\":\"user\"},\"api::about-page.about-page\":{\"kind\":\"singleType\",\"collectionName\":\"about_pages\",\"info\":{\"singularName\":\"about-page\",\"pluralName\":\"about-pages\",\"displayName\":\"About Page\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"title\":{\"type\":\"string\"},\"banner\":{\"type\":\"media\",\"multiple\":false,\"required\":false,\"allowedTypes\":[\"images\",\"files\"]},\"body\":{\"type\":\"richtext\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::about-page.about-page\",\"writable\":false,\"private\":false,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"about_pages\"}}},\"apiName\":\"about-page\",\"globalId\":\"AboutPage\",\"uid\":\"api::about-page.about-page\",\"modelType\":\"contentType\",\"__schema__\":{\"collectionName\":\"about_pages\",\"info\":{\"singularName\":\"about-page\",\"pluralName\":\"about-pages\",\"displayName\":\"About Page\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"title\":{\"type\":\"string\"},\"banner\":{\"type\":\"media\",\"multiple\":false,\"required\":false,\"allowedTypes\":[\"images\",\"files\"]},\"body\":{\"type\":\"richtext\"}},\"kind\":\"singleType\"},\"modelName\":\"about-page\",\"actions\":{},\"lifecycles\":{}},\"api::brand.brand\":{\"kind\":\"collectionType\",\"collectionName\":\"brands\",\"info\":{\"singularName\":\"brand\",\"pluralName\":\"brands\",\"displayName\":\"Brand\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"name\":{\"type\":\"string\",\"required\":true},\"logo\":{\"allowedTypes\":[\"images\",\"files\",\"videos\",\"audios\"],\"type\":\"media\",\"multiple\":false},\"banner\":{\"allowedTypes\":[\"images\",\"files\",\"videos\",\"audios\"],\"type\":\"media\",\"multiple\":false},\"products\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::product.product\"},\"slug\":{\"type\":\"uid\",\"targetField\":\"name\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::brand.brand\",\"writable\":false,\"private\":false,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"brands\"}}},\"apiName\":\"brand\",\"globalId\":\"Brand\",\"uid\":\"api::brand.brand\",\"modelType\":\"contentType\",\"__schema__\":{\"collectionName\":\"brands\",\"info\":{\"singularName\":\"brand\",\"pluralName\":\"brands\",\"displayName\":\"Brand\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"name\":{\"type\":\"string\",\"required\":true},\"logo\":{\"allowedTypes\":[\"images\",\"files\",\"videos\",\"audios\"],\"type\":\"media\",\"multiple\":false},\"banner\":{\"allowedTypes\":[\"images\",\"files\",\"videos\",\"audios\"],\"type\":\"media\",\"multiple\":false},\"products\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::product.product\"},\"slug\":{\"type\":\"uid\",\"targetField\":\"name\"}},\"kind\":\"collectionType\"},\"modelName\":\"brand\",\"actions\":{},\"lifecycles\":{}},\"api::category.category\":{\"kind\":\"collectionType\",\"collectionName\":\"categories\",\"info\":{\"singularName\":\"category\",\"pluralName\":\"categories\",\"displayName\":\"Category\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"name\":{\"type\":\"string\",\"required\":true},\"icon\":{\"type\":\"media\",\"multiple\":true,\"required\":false,\"allowedTypes\":[\"images\",\"files\",\"videos\",\"audios\"]},\"color\":{\"type\":\"string\"},\"products\":{\"type\":\"relation\",\"relation\":\"manyToMany\",\"target\":\"api::product.product\",\"mappedBy\":\"categories\"},\"slug\":{\"type\":\"uid\",\"targetField\":\"name\"},\"banner\":{\"type\":\"media\",\"multiple\":false,\"required\":false,\"allowedTypes\":[\"images\",\"files\"]},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::category.category\",\"writable\":false,\"private\":false,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"categories\"}}},\"apiName\":\"category\",\"globalId\":\"Category\",\"uid\":\"api::category.category\",\"modelType\":\"contentType\",\"__schema__\":{\"collectionName\":\"categories\",\"info\":{\"singularName\":\"category\",\"pluralName\":\"categories\",\"displayName\":\"Category\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"name\":{\"type\":\"string\",\"required\":true},\"icon\":{\"type\":\"media\",\"multiple\":true,\"required\":false,\"allowedTypes\":[\"images\",\"files\",\"videos\",\"audios\"]},\"color\":{\"type\":\"string\"},\"products\":{\"type\":\"relation\",\"relation\":\"manyToMany\",\"target\":\"api::product.product\",\"mappedBy\":\"categories\"},\"slug\":{\"type\":\"uid\",\"targetField\":\"name\"},\"banner\":{\"type\":\"media\",\"multiple\":false,\"required\":false,\"allowedTypes\":[\"images\",\"files\"]}},\"kind\":\"collectionType\"},\"modelName\":\"category\",\"actions\":{},\"lifecycles\":{}},\"api::color.color\":{\"kind\":\"collectionType\",\"collectionName\":\"colors\",\"info\":{\"singularName\":\"color\",\"pluralName\":\"colors\",\"displayName\":\"Color\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"name\":{\"type\":\"string\",\"required\":true},\"code\":{\"type\":\"string\",\"required\":true},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::color.color\",\"writable\":false,\"private\":false,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"colors\"}}},\"apiName\":\"color\",\"globalId\":\"Color\",\"uid\":\"api::color.color\",\"modelType\":\"contentType\",\"__schema__\":{\"collectionName\":\"colors\",\"info\":{\"singularName\":\"color\",\"pluralName\":\"colors\",\"displayName\":\"Color\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"name\":{\"type\":\"string\",\"required\":true},\"code\":{\"type\":\"string\",\"required\":true}},\"kind\":\"collectionType\"},\"modelName\":\"color\",\"actions\":{},\"lifecycles\":{}},\"api::order.order\":{\"kind\":\"collectionType\",\"collectionName\":\"orders\",\"info\":{\"singularName\":\"order\",\"pluralName\":\"orders\",\"displayName\":\"Order\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"username\":{\"type\":\"string\"},\"email\":{\"type\":\"string\"},\"phone\":{\"type\":\"string\"},\"zip\":{\"type\":\"string\"},\"address\":{\"type\":\"text\"},\"totalAmount\":{\"type\":\"integer\"},\"userId\":{\"type\":\"integer\"},\"paymentId\":{\"type\":\"string\"},\"orderItemList\":{\"type\":\"component\",\"repeatable\":true,\"component\":\"ordered-item.ordered-item\"},\"orderStatus\":{\"type\":\"enumeration\",\"enum\":[\"Pending\",\"Processing\",\"On The Way\",\"Completed\",\"Failed\",\"Canceled\",\"On hold\"],\"default\":\"Pending\"},\"subTotal\":{\"type\":\"integer\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::order.order\",\"writable\":false,\"private\":false,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"orders\"}}},\"apiName\":\"order\",\"globalId\":\"Order\",\"uid\":\"api::order.order\",\"modelType\":\"contentType\",\"__schema__\":{\"collectionName\":\"orders\",\"info\":{\"singularName\":\"order\",\"pluralName\":\"orders\",\"displayName\":\"Order\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"username\":{\"type\":\"string\"},\"email\":{\"type\":\"string\"},\"phone\":{\"type\":\"string\"},\"zip\":{\"type\":\"string\"},\"address\":{\"type\":\"text\"},\"totalAmount\":{\"type\":\"integer\"},\"userId\":{\"type\":\"integer\"},\"paymentId\":{\"type\":\"string\"},\"orderItemList\":{\"type\":\"component\",\"repeatable\":true,\"component\":\"ordered-item.ordered-item\"},\"orderStatus\":{\"type\":\"enumeration\",\"enum\":[\"Pending\",\"Processing\",\"On The Way\",\"Completed\",\"Failed\",\"Canceled\",\"On hold\"],\"default\":\"Pending\"},\"subTotal\":{\"type\":\"integer\"}},\"kind\":\"collectionType\"},\"modelName\":\"order\",\"actions\":{},\"lifecycles\":{}},\"api::product.product\":{\"kind\":\"collectionType\",\"collectionName\":\"products\",\"info\":{\"singularName\":\"product\",\"pluralName\":\"products\",\"displayName\":\"Product\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"name\":{\"type\":\"string\",\"required\":true},\"description\":{\"type\":\"string\"},\"mrp\":{\"type\":\"integer\",\"required\":true},\"sellingPrice\":{\"type\":\"integer\"},\"itemQuantityType\":{\"type\":\"string\"},\"slug\":{\"type\":\"uid\",\"targetField\":\"name\",\"required\":true},\"images\":{\"type\":\"media\",\"multiple\":true,\"required\":true,\"allowedTypes\":[\"images\",\"files\"]},\"categories\":{\"type\":\"relation\",\"relation\":\"manyToMany\",\"target\":\"api::category.category\",\"inversedBy\":\"products\"},\"stock\":{\"type\":\"integer\",\"default\":50},\"colors\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::color.color\"},\"brand\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::brand.brand\"},\"details\":{\"type\":\"richtext\"},\"warranty\":{\"type\":\"string\"},\"wishlists\":{\"type\":\"relation\",\"relation\":\"manyToMany\",\"target\":\"api::wishlist.wishlist\",\"mappedBy\":\"products\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::product.product\",\"writable\":false,\"private\":false,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"products\"}}},\"apiName\":\"product\",\"globalId\":\"Product\",\"uid\":\"api::product.product\",\"modelType\":\"contentType\",\"__schema__\":{\"collectionName\":\"products\",\"info\":{\"singularName\":\"product\",\"pluralName\":\"products\",\"displayName\":\"Product\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"name\":{\"type\":\"string\",\"required\":true},\"description\":{\"type\":\"string\"},\"mrp\":{\"type\":\"integer\",\"required\":true},\"sellingPrice\":{\"type\":\"integer\"},\"itemQuantityType\":{\"type\":\"string\"},\"slug\":{\"type\":\"uid\",\"targetField\":\"name\",\"required\":true},\"images\":{\"type\":\"media\",\"multiple\":true,\"required\":true,\"allowedTypes\":[\"images\",\"files\"]},\"categories\":{\"type\":\"relation\",\"relation\":\"manyToMany\",\"target\":\"api::category.category\",\"inversedBy\":\"products\"},\"stock\":{\"type\":\"integer\",\"default\":50},\"colors\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::color.color\"},\"brand\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::brand.brand\"},\"details\":{\"type\":\"richtext\"},\"warranty\":{\"type\":\"string\"},\"wishlists\":{\"type\":\"relation\",\"relation\":\"manyToMany\",\"target\":\"api::wishlist.wishlist\",\"mappedBy\":\"products\"}},\"kind\":\"collectionType\"},\"modelName\":\"product\",\"actions\":{},\"lifecycles\":{}},\"api::slider.slider\":{\"kind\":\"collectionType\",\"collectionName\":\"sliders\",\"info\":{\"singularName\":\"slider\",\"pluralName\":\"sliders\",\"displayName\":\"Slider\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"name\":{\"type\":\"string\",\"required\":true},\"image\":{\"allowedTypes\":[\"images\",\"files\",\"videos\",\"audios\"],\"type\":\"media\",\"multiple\":true},\"type\":{\"type\":\"enumeration\",\"enum\":[\"home\",\"banner\"]},\"url\":{\"type\":\"string\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::slider.slider\",\"writable\":false,\"private\":false,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"sliders\"}}},\"apiName\":\"slider\",\"globalId\":\"Slider\",\"uid\":\"api::slider.slider\",\"modelType\":\"contentType\",\"__schema__\":{\"collectionName\":\"sliders\",\"info\":{\"singularName\":\"slider\",\"pluralName\":\"sliders\",\"displayName\":\"Slider\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"name\":{\"type\":\"string\",\"required\":true},\"image\":{\"allowedTypes\":[\"images\",\"files\",\"videos\",\"audios\"],\"type\":\"media\",\"multiple\":true},\"type\":{\"type\":\"enumeration\",\"enum\":[\"home\",\"banner\"]},\"url\":{\"type\":\"string\"}},\"kind\":\"collectionType\"},\"modelName\":\"slider\",\"actions\":{},\"lifecycles\":{}},\"api::user-cart.user-cart\":{\"kind\":\"collectionType\",\"collectionName\":\"user_carts\",\"info\":{\"singularName\":\"user-cart\",\"pluralName\":\"user-carts\",\"displayName\":\"User Cart\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"quantity\":{\"type\":\"integer\"},\"amount\":{\"type\":\"integer\"},\"products\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::product.product\"},\"users_permissions_user\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"plugin::users-permissions.user\"},\"userId\":{\"type\":\"integer\"},\"productId\":{\"type\":\"integer\"},\"color\":{\"type\":\"string\"},\"stock\":{\"type\":\"integer\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::user-cart.user-cart\",\"writable\":false,\"private\":false,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"user_carts\"}}},\"apiName\":\"user-cart\",\"globalId\":\"UserCart\",\"uid\":\"api::user-cart.user-cart\",\"modelType\":\"contentType\",\"__schema__\":{\"collectionName\":\"user_carts\",\"info\":{\"singularName\":\"user-cart\",\"pluralName\":\"user-carts\",\"displayName\":\"User Cart\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"quantity\":{\"type\":\"integer\"},\"amount\":{\"type\":\"integer\"},\"products\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::product.product\"},\"users_permissions_user\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"plugin::users-permissions.user\"},\"userId\":{\"type\":\"integer\"},\"productId\":{\"type\":\"integer\"},\"color\":{\"type\":\"string\"},\"stock\":{\"type\":\"integer\"}},\"kind\":\"collectionType\"},\"modelName\":\"user-cart\",\"actions\":{},\"lifecycles\":{}},\"api::wishlist.wishlist\":{\"kind\":\"collectionType\",\"collectionName\":\"wishlists\",\"info\":{\"singularName\":\"wishlist\",\"pluralName\":\"wishlists\",\"displayName\":\"Wishlist\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"users_permissions_user\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"plugin::users-permissions.user\"},\"products\":{\"type\":\"relation\",\"relation\":\"manyToMany\",\"target\":\"api::product.product\",\"inversedBy\":\"wishlists\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::wishlist.wishlist\",\"writable\":false,\"private\":false,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"wishlists\"}}},\"apiName\":\"wishlist\",\"globalId\":\"Wishlist\",\"uid\":\"api::wishlist.wishlist\",\"modelType\":\"contentType\",\"__schema__\":{\"collectionName\":\"wishlists\",\"info\":{\"singularName\":\"wishlist\",\"pluralName\":\"wishlists\",\"displayName\":\"Wishlist\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"users_permissions_user\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"plugin::users-permissions.user\"},\"products\":{\"type\":\"relation\",\"relation\":\"manyToMany\",\"target\":\"api::product.product\",\"inversedBy\":\"wishlists\"}},\"kind\":\"collectionType\"},\"modelName\":\"wishlist\",\"actions\":{},\"lifecycles\":{}},\"admin::permission\":{\"collectionName\":\"admin_permissions\",\"info\":{\"name\":\"Permission\",\"description\":\"\",\"singularName\":\"permission\",\"pluralName\":\"permissions\",\"displayName\":\"Permission\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"actionParameters\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":{}},\"subject\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false},\"properties\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":{}},\"conditions\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":[]},\"role\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::role\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"admin::permission\",\"writable\":false,\"private\":false,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"admin_permissions\"}}},\"plugin\":\"admin\",\"globalId\":\"AdminPermission\",\"uid\":\"admin::permission\",\"modelType\":\"contentType\",\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"admin_permissions\",\"info\":{\"name\":\"Permission\",\"description\":\"\",\"singularName\":\"permission\",\"pluralName\":\"permissions\",\"displayName\":\"Permission\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"actionParameters\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":{}},\"subject\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false},\"properties\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":{}},\"conditions\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":[]},\"role\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::role\"}},\"kind\":\"collectionType\"},\"modelName\":\"permission\"},\"admin::user\":{\"collectionName\":\"admin_users\",\"info\":{\"name\":\"User\",\"description\":\"\",\"singularName\":\"user\",\"pluralName\":\"users\",\"displayName\":\"User\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"firstname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"lastname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"username\":{\"type\":\"string\",\"unique\":false,\"configurable\":false,\"required\":false},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true,\"unique\":true,\"private\":true},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"required\":false,\"private\":true,\"searchable\":false},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"registrationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"isActive\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"roles\":{\"configurable\":false,\"private\":true,\"type\":\"relation\",\"relation\":\"manyToMany\",\"inversedBy\":\"users\",\"target\":\"admin::role\",\"collectionName\":\"strapi_users_roles\"},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"preferedLanguage\":{\"type\":\"string\",\"configurable\":false,\"required\":false,\"searchable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"admin::user\",\"writable\":false,\"private\":false,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"admin_users\"}}},\"config\":{\"attributes\":{\"resetPasswordToken\":{\"hidden\":true},\"registrationToken\":{\"hidden\":true}}},\"plugin\":\"admin\",\"globalId\":\"AdminUser\",\"uid\":\"admin::user\",\"modelType\":\"contentType\",\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"admin_users\",\"info\":{\"name\":\"User\",\"description\":\"\",\"singularName\":\"user\",\"pluralName\":\"users\",\"displayName\":\"User\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"firstname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"lastname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"username\":{\"type\":\"string\",\"unique\":false,\"configurable\":false,\"required\":false},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true,\"unique\":true,\"private\":true},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"required\":false,\"private\":true,\"searchable\":false},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"registrationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"isActive\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"roles\":{\"configurable\":false,\"private\":true,\"type\":\"relation\",\"relation\":\"manyToMany\",\"inversedBy\":\"users\",\"target\":\"admin::role\",\"collectionName\":\"strapi_users_roles\"},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"preferedLanguage\":{\"type\":\"string\",\"configurable\":false,\"required\":false,\"searchable\":false}},\"kind\":\"collectionType\"},\"modelName\":\"user\",\"options\":{\"draftAndPublish\":false}},\"admin::role\":{\"collectionName\":\"admin_roles\",\"info\":{\"name\":\"Role\",\"description\":\"\",\"singularName\":\"role\",\"pluralName\":\"roles\",\"displayName\":\"Role\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"code\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"description\":{\"type\":\"string\",\"configurable\":false},\"users\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToMany\",\"mappedBy\":\"roles\",\"target\":\"admin::user\"},\"permissions\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"oneToMany\",\"mappedBy\":\"role\",\"target\":\"admin::permission\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"admin::role\",\"writable\":false,\"private\":false,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"admin_roles\"}}},\"plugin\":\"admin\",\"globalId\":\"AdminRole\",\"uid\":\"admin::role\",\"modelType\":\"contentType\",\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"admin_roles\",\"info\":{\"name\":\"Role\",\"description\":\"\",\"singularName\":\"role\",\"pluralName\":\"roles\",\"displayName\":\"Role\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"code\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"description\":{\"type\":\"string\",\"configurable\":false},\"users\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToMany\",\"mappedBy\":\"roles\",\"target\":\"admin::user\"},\"permissions\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"oneToMany\",\"mappedBy\":\"role\",\"target\":\"admin::permission\"}},\"kind\":\"collectionType\"},\"modelName\":\"role\"},\"admin::api-token\":{\"collectionName\":\"strapi_api_tokens\",\"info\":{\"name\":\"Api Token\",\"singularName\":\"api-token\",\"pluralName\":\"api-tokens\",\"displayName\":\"Api Token\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true,\"unique\":true},\"description\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false,\"default\":\"\"},\"type\":{\"type\":\"enumeration\",\"enum\":[\"read-only\",\"full-access\",\"custom\"],\"configurable\":false,\"required\":true,\"default\":\"read-only\"},\"accessKey\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true,\"searchable\":false},\"lastUsedAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"permissions\":{\"type\":\"relation\",\"target\":\"admin::api-token-permission\",\"relation\":\"oneToMany\",\"mappedBy\":\"token\",\"configurable\":false,\"required\":false},\"expiresAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"lifespan\":{\"type\":\"biginteger\",\"configurable\":false,\"required\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"admin::api-token\",\"writable\":false,\"private\":false,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"strapi_api_tokens\"}}},\"plugin\":\"admin\",\"globalId\":\"AdminApiToken\",\"uid\":\"admin::api-token\",\"modelType\":\"contentType\",\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"strapi_api_tokens\",\"info\":{\"name\":\"Api Token\",\"singularName\":\"api-token\",\"pluralName\":\"api-tokens\",\"displayName\":\"Api Token\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true,\"unique\":true},\"description\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false,\"default\":\"\"},\"type\":{\"type\":\"enumeration\",\"enum\":[\"read-only\",\"full-access\",\"custom\"],\"configurable\":false,\"required\":true,\"default\":\"read-only\"},\"accessKey\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true,\"searchable\":false},\"lastUsedAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"permissions\":{\"type\":\"relation\",\"target\":\"admin::api-token-permission\",\"relation\":\"oneToMany\",\"mappedBy\":\"token\",\"configurable\":false,\"required\":false},\"expiresAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"lifespan\":{\"type\":\"biginteger\",\"configurable\":false,\"required\":false}},\"kind\":\"collectionType\"},\"modelName\":\"api-token\"},\"admin::api-token-permission\":{\"collectionName\":\"strapi_api_token_permissions\",\"info\":{\"name\":\"API Token Permission\",\"description\":\"\",\"singularName\":\"api-token-permission\",\"pluralName\":\"api-token-permissions\",\"displayName\":\"API Token Permission\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"token\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::api-token\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"admin::api-token-permission\",\"writable\":false,\"private\":false,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"strapi_api_token_permissions\"}}},\"plugin\":\"admin\",\"globalId\":\"AdminApiTokenPermission\",\"uid\":\"admin::api-token-permission\",\"modelType\":\"contentType\",\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"strapi_api_token_permissions\",\"info\":{\"name\":\"API Token Permission\",\"description\":\"\",\"singularName\":\"api-token-permission\",\"pluralName\":\"api-token-permissions\",\"displayName\":\"API Token Permission\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"token\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::api-token\"}},\"kind\":\"collectionType\"},\"modelName\":\"api-token-permission\"},\"admin::transfer-token\":{\"collectionName\":\"strapi_transfer_tokens\",\"info\":{\"name\":\"Transfer Token\",\"singularName\":\"transfer-token\",\"pluralName\":\"transfer-tokens\",\"displayName\":\"Transfer Token\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true,\"unique\":true},\"description\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false,\"default\":\"\"},\"accessKey\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"lastUsedAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"permissions\":{\"type\":\"relation\",\"target\":\"admin::transfer-token-permission\",\"relation\":\"oneToMany\",\"mappedBy\":\"token\",\"configurable\":false,\"required\":false},\"expiresAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"lifespan\":{\"type\":\"biginteger\",\"configurable\":false,\"required\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"admin::transfer-token\",\"writable\":false,\"private\":false,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"strapi_transfer_tokens\"}}},\"plugin\":\"admin\",\"globalId\":\"AdminTransferToken\",\"uid\":\"admin::transfer-token\",\"modelType\":\"contentType\",\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"strapi_transfer_tokens\",\"info\":{\"name\":\"Transfer Token\",\"singularName\":\"transfer-token\",\"pluralName\":\"transfer-tokens\",\"displayName\":\"Transfer Token\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true,\"unique\":true},\"description\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false,\"default\":\"\"},\"accessKey\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"lastUsedAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"permissions\":{\"type\":\"relation\",\"target\":\"admin::transfer-token-permission\",\"relation\":\"oneToMany\",\"mappedBy\":\"token\",\"configurable\":false,\"required\":false},\"expiresAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"lifespan\":{\"type\":\"biginteger\",\"configurable\":false,\"required\":false}},\"kind\":\"collectionType\"},\"modelName\":\"transfer-token\"},\"admin::transfer-token-permission\":{\"collectionName\":\"strapi_transfer_token_permissions\",\"info\":{\"name\":\"Transfer Token Permission\",\"description\":\"\",\"singularName\":\"transfer-token-permission\",\"pluralName\":\"transfer-token-permissions\",\"displayName\":\"Transfer Token Permission\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"token\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::transfer-token\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"admin::transfer-token-permission\",\"writable\":false,\"private\":false,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"strapi_transfer_token_permissions\"}}},\"plugin\":\"admin\",\"globalId\":\"AdminTransferTokenPermission\",\"uid\":\"admin::transfer-token-permission\",\"modelType\":\"contentType\",\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"strapi_transfer_token_permissions\",\"info\":{\"name\":\"Transfer Token Permission\",\"description\":\"\",\"singularName\":\"transfer-token-permission\",\"pluralName\":\"transfer-token-permissions\",\"displayName\":\"Transfer Token Permission\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"token\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::transfer-token\"}},\"kind\":\"collectionType\"},\"modelName\":\"transfer-token-permission\"}}', 'object', NULL, NULL);
INSERT INTO `strapi_core_store_settings` (`id`, `key`, `value`, `type`, `environment`, `tag`) VALUES
(2, 'plugin_content_manager_configuration_content_types::plugin::i18n.locale', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"code\":{\"edit\":{\"label\":\"code\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"code\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"code\",\"createdAt\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"code\",\"size\":6}]]},\"uid\":\"plugin::i18n.locale\"}', 'object', NULL, NULL),
(3, 'plugin_content_manager_configuration_content_types::plugin::upload.folder', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"pathId\":{\"edit\":{\"label\":\"pathId\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"pathId\",\"searchable\":true,\"sortable\":true}},\"parent\":{\"edit\":{\"label\":\"parent\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"parent\",\"searchable\":true,\"sortable\":true}},\"children\":{\"edit\":{\"label\":\"children\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"children\",\"searchable\":false,\"sortable\":false}},\"files\":{\"edit\":{\"label\":\"files\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"files\",\"searchable\":false,\"sortable\":false}},\"path\":{\"edit\":{\"label\":\"path\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"path\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"pathId\",\"parent\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"pathId\",\"size\":4}],[{\"name\":\"parent\",\"size\":6},{\"name\":\"children\",\"size\":6}],[{\"name\":\"files\",\"size\":6},{\"name\":\"path\",\"size\":6}]]},\"uid\":\"plugin::upload.folder\"}', 'object', NULL, NULL),
(4, 'plugin_content_manager_configuration_content_types::plugin::content-releases.release', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"releasedAt\":{\"edit\":{\"label\":\"releasedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"releasedAt\",\"searchable\":true,\"sortable\":true}},\"scheduledAt\":{\"edit\":{\"label\":\"scheduledAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"scheduledAt\",\"searchable\":true,\"sortable\":true}},\"timezone\":{\"edit\":{\"label\":\"timezone\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"timezone\",\"searchable\":true,\"sortable\":true}},\"status\":{\"edit\":{\"label\":\"status\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"status\",\"searchable\":true,\"sortable\":true}},\"actions\":{\"edit\":{\"label\":\"actions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"contentType\"},\"list\":{\"label\":\"actions\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"releasedAt\",\"scheduledAt\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"releasedAt\",\"size\":6}],[{\"name\":\"scheduledAt\",\"size\":6},{\"name\":\"timezone\",\"size\":6}],[{\"name\":\"status\",\"size\":6},{\"name\":\"actions\",\"size\":6}]]},\"uid\":\"plugin::content-releases.release\"}', 'object', NULL, NULL),
(5, 'plugin_content_manager_configuration_content_types::plugin::review-workflows.workflow', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"stages\":{\"edit\":{\"label\":\"stages\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"stages\",\"searchable\":false,\"sortable\":false}},\"contentTypes\":{\"edit\":{\"label\":\"contentTypes\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"contentTypes\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"stages\",\"createdAt\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"stages\",\"size\":6}],[{\"name\":\"contentTypes\",\"size\":12}]]},\"uid\":\"plugin::review-workflows.workflow\"}', 'object', NULL, NULL),
(6, 'plugin_content_manager_configuration_content_types::plugin::content-releases.release-action', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"contentType\",\"defaultSortBy\":\"contentType\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"type\",\"searchable\":true,\"sortable\":true}},\"contentType\":{\"edit\":{\"label\":\"contentType\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"contentType\",\"searchable\":true,\"sortable\":true}},\"entryDocumentId\":{\"edit\":{\"label\":\"entryDocumentId\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"entryDocumentId\",\"searchable\":true,\"sortable\":true}},\"release\":{\"edit\":{\"label\":\"release\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"release\",\"searchable\":true,\"sortable\":true}},\"isEntryValid\":{\"edit\":{\"label\":\"isEntryValid\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"isEntryValid\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"type\",\"contentType\",\"entryDocumentId\"],\"edit\":[[{\"name\":\"type\",\"size\":6},{\"name\":\"contentType\",\"size\":6}],[{\"name\":\"entryDocumentId\",\"size\":6},{\"name\":\"release\",\"size\":6}],[{\"name\":\"isEntryValid\",\"size\":4}]]},\"uid\":\"plugin::content-releases.release-action\"}', 'object', NULL, NULL),
(7, 'plugin_content_manager_configuration_content_types::plugin::upload.file', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"alternativeText\":{\"edit\":{\"label\":\"alternativeText\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"alternativeText\",\"searchable\":true,\"sortable\":true}},\"caption\":{\"edit\":{\"label\":\"caption\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"caption\",\"searchable\":true,\"sortable\":true}},\"width\":{\"edit\":{\"label\":\"width\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"width\",\"searchable\":true,\"sortable\":true}},\"height\":{\"edit\":{\"label\":\"height\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"height\",\"searchable\":true,\"sortable\":true}},\"formats\":{\"edit\":{\"label\":\"formats\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"formats\",\"searchable\":false,\"sortable\":false}},\"hash\":{\"edit\":{\"label\":\"hash\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"hash\",\"searchable\":true,\"sortable\":true}},\"ext\":{\"edit\":{\"label\":\"ext\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"ext\",\"searchable\":true,\"sortable\":true}},\"mime\":{\"edit\":{\"label\":\"mime\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"mime\",\"searchable\":true,\"sortable\":true}},\"size\":{\"edit\":{\"label\":\"size\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"size\",\"searchable\":true,\"sortable\":true}},\"url\":{\"edit\":{\"label\":\"url\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"url\",\"searchable\":true,\"sortable\":true}},\"previewUrl\":{\"edit\":{\"label\":\"previewUrl\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"previewUrl\",\"searchable\":true,\"sortable\":true}},\"provider\":{\"edit\":{\"label\":\"provider\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"provider\",\"searchable\":true,\"sortable\":true}},\"provider_metadata\":{\"edit\":{\"label\":\"provider_metadata\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"provider_metadata\",\"searchable\":false,\"sortable\":false}},\"folder\":{\"edit\":{\"label\":\"folder\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"folder\",\"searchable\":true,\"sortable\":true}},\"folderPath\":{\"edit\":{\"label\":\"folderPath\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"folderPath\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"alternativeText\",\"caption\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"alternativeText\",\"size\":6}],[{\"name\":\"caption\",\"size\":6},{\"name\":\"width\",\"size\":4}],[{\"name\":\"height\",\"size\":4}],[{\"name\":\"formats\",\"size\":12}],[{\"name\":\"hash\",\"size\":6},{\"name\":\"ext\",\"size\":6}],[{\"name\":\"mime\",\"size\":6},{\"name\":\"size\",\"size\":4}],[{\"name\":\"url\",\"size\":6},{\"name\":\"previewUrl\",\"size\":6}],[{\"name\":\"provider\",\"size\":6}],[{\"name\":\"provider_metadata\",\"size\":12}],[{\"name\":\"folder\",\"size\":6},{\"name\":\"folderPath\",\"size\":6}]]},\"uid\":\"plugin::upload.file\"}', 'object', NULL, NULL),
(8, 'plugin_content_manager_configuration_content_types::admin::permission', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"action\",\"defaultSortBy\":\"action\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"action\",\"searchable\":true,\"sortable\":true}},\"actionParameters\":{\"edit\":{\"label\":\"actionParameters\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"actionParameters\",\"searchable\":false,\"sortable\":false}},\"subject\":{\"edit\":{\"label\":\"subject\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"subject\",\"searchable\":true,\"sortable\":true}},\"properties\":{\"edit\":{\"label\":\"properties\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"properties\",\"searchable\":false,\"sortable\":false}},\"conditions\":{\"edit\":{\"label\":\"conditions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"conditions\",\"searchable\":false,\"sortable\":false}},\"role\":{\"edit\":{\"label\":\"role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"role\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"action\",\"subject\",\"role\"],\"edit\":[[{\"name\":\"action\",\"size\":6}],[{\"name\":\"actionParameters\",\"size\":12}],[{\"name\":\"subject\",\"size\":6}],[{\"name\":\"properties\",\"size\":12}],[{\"name\":\"conditions\",\"size\":12}],[{\"name\":\"role\",\"size\":6}]]},\"uid\":\"admin::permission\"}', 'object', NULL, NULL),
(9, 'plugin_content_manager_configuration_content_types::plugin::review-workflows.workflow-stage', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"color\":{\"edit\":{\"label\":\"color\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"color\",\"searchable\":true,\"sortable\":true}},\"workflow\":{\"edit\":{\"label\":\"workflow\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"workflow\",\"searchable\":true,\"sortable\":true}},\"permissions\":{\"edit\":{\"label\":\"permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"action\"},\"list\":{\"label\":\"permissions\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"color\",\"workflow\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"color\",\"size\":6}],[{\"name\":\"workflow\",\"size\":6},{\"name\":\"permissions\",\"size\":6}]]},\"uid\":\"plugin::review-workflows.workflow-stage\"}', 'object', NULL, NULL),
(10, 'plugin_content_manager_configuration_content_types::admin::user', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"firstname\",\"defaultSortBy\":\"firstname\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"firstname\":{\"edit\":{\"label\":\"firstname\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"firstname\",\"searchable\":true,\"sortable\":true}},\"lastname\":{\"edit\":{\"label\":\"lastname\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lastname\",\"searchable\":true,\"sortable\":true}},\"username\":{\"edit\":{\"label\":\"username\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"username\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"email\",\"searchable\":true,\"sortable\":true}},\"password\":{\"edit\":{\"label\":\"password\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"password\",\"searchable\":true,\"sortable\":true}},\"resetPasswordToken\":{\"edit\":{\"label\":\"resetPasswordToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"resetPasswordToken\",\"searchable\":true,\"sortable\":true}},\"registrationToken\":{\"edit\":{\"label\":\"registrationToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"registrationToken\",\"searchable\":true,\"sortable\":true}},\"isActive\":{\"edit\":{\"label\":\"isActive\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"isActive\",\"searchable\":true,\"sortable\":true}},\"roles\":{\"edit\":{\"label\":\"roles\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"roles\",\"searchable\":false,\"sortable\":false}},\"blocked\":{\"edit\":{\"label\":\"blocked\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"blocked\",\"searchable\":true,\"sortable\":true}},\"preferedLanguage\":{\"edit\":{\"label\":\"preferedLanguage\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"preferedLanguage\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"firstname\",\"lastname\",\"username\"],\"edit\":[[{\"name\":\"firstname\",\"size\":6},{\"name\":\"lastname\",\"size\":6}],[{\"name\":\"username\",\"size\":6},{\"name\":\"email\",\"size\":6}],[{\"name\":\"password\",\"size\":6},{\"name\":\"isActive\",\"size\":4}],[{\"name\":\"roles\",\"size\":6},{\"name\":\"blocked\",\"size\":4}],[{\"name\":\"preferedLanguage\",\"size\":6}]]},\"uid\":\"admin::user\"}', 'object', NULL, NULL),
(11, 'plugin_content_manager_configuration_content_types::plugin::users-permissions.role', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"type\",\"searchable\":true,\"sortable\":true}},\"permissions\":{\"edit\":{\"label\":\"permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"action\"},\"list\":{\"label\":\"permissions\",\"searchable\":false,\"sortable\":false}},\"users\":{\"edit\":{\"label\":\"users\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"username\"},\"list\":{\"label\":\"users\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"description\",\"type\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"type\",\"size\":6},{\"name\":\"permissions\",\"size\":6}],[{\"name\":\"users\",\"size\":6}]]},\"uid\":\"plugin::users-permissions.role\"}', 'object', NULL, NULL),
(12, 'plugin_content_manager_configuration_content_types::plugin::users-permissions.permission', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"action\",\"defaultSortBy\":\"action\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"action\",\"searchable\":true,\"sortable\":true}},\"role\":{\"edit\":{\"label\":\"role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"role\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"action\",\"role\",\"createdAt\"],\"edit\":[[{\"name\":\"action\",\"size\":6},{\"name\":\"role\",\"size\":6}]]},\"uid\":\"plugin::users-permissions.permission\"}', 'object', NULL, NULL),
(13, 'plugin_content_manager_configuration_content_types::plugin::users-permissions.user', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"username\",\"defaultSortBy\":\"username\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"username\":{\"edit\":{\"label\":\"username\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"username\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"email\",\"searchable\":true,\"sortable\":true}},\"provider\":{\"edit\":{\"label\":\"provider\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"provider\",\"searchable\":true,\"sortable\":true}},\"password\":{\"edit\":{\"label\":\"password\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"password\",\"searchable\":true,\"sortable\":true}},\"resetPasswordToken\":{\"edit\":{\"label\":\"resetPasswordToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"resetPasswordToken\",\"searchable\":true,\"sortable\":true}},\"confirmationToken\":{\"edit\":{\"label\":\"confirmationToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"confirmationToken\",\"searchable\":true,\"sortable\":true}},\"confirmed\":{\"edit\":{\"label\":\"confirmed\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"confirmed\",\"searchable\":true,\"sortable\":true}},\"blocked\":{\"edit\":{\"label\":\"blocked\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"blocked\",\"searchable\":true,\"sortable\":true}},\"role\":{\"edit\":{\"label\":\"role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"role\",\"searchable\":true,\"sortable\":true}},\"mobile\":{\"edit\":{\"label\":\"mobile\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"mobile\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"about\":{\"edit\":{\"label\":\"about\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"about\",\"searchable\":true,\"sortable\":true}},\"profileImageOff\":{\"edit\":{\"label\":\"profileImageOff\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"profileImageOff\",\"searchable\":false,\"sortable\":false}},\"profileImage\":{\"edit\":{\"label\":\"profileImage\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"profileImage\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"username\",\"email\",\"confirmed\"],\"edit\":[[{\"name\":\"username\",\"size\":6},{\"name\":\"email\",\"size\":6}],[{\"name\":\"password\",\"size\":6},{\"name\":\"confirmed\",\"size\":4}],[{\"name\":\"blocked\",\"size\":4},{\"name\":\"role\",\"size\":6}],[{\"name\":\"mobile\",\"size\":6},{\"name\":\"name\",\"size\":6}],[{\"name\":\"about\",\"size\":6},{\"name\":\"profileImage\",\"size\":6}],[{\"name\":\"profileImageOff\",\"size\":6}]]},\"uid\":\"plugin::users-permissions.user\"}', 'object', NULL, NULL),
(14, 'plugin_content_manager_configuration_content_types::admin::api-token', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"type\",\"searchable\":true,\"sortable\":true}},\"accessKey\":{\"edit\":{\"label\":\"accessKey\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"accessKey\",\"searchable\":true,\"sortable\":true}},\"lastUsedAt\":{\"edit\":{\"label\":\"lastUsedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lastUsedAt\",\"searchable\":true,\"sortable\":true}},\"permissions\":{\"edit\":{\"label\":\"permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"action\"},\"list\":{\"label\":\"permissions\",\"searchable\":false,\"sortable\":false}},\"expiresAt\":{\"edit\":{\"label\":\"expiresAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"expiresAt\",\"searchable\":true,\"sortable\":true}},\"lifespan\":{\"edit\":{\"label\":\"lifespan\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lifespan\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"description\",\"type\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"type\",\"size\":6},{\"name\":\"accessKey\",\"size\":6}],[{\"name\":\"lastUsedAt\",\"size\":6},{\"name\":\"permissions\",\"size\":6}],[{\"name\":\"expiresAt\",\"size\":6},{\"name\":\"lifespan\",\"size\":4}]]},\"uid\":\"admin::api-token\"}', 'object', NULL, NULL),
(15, 'plugin_content_manager_configuration_content_types::admin::role', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"code\":{\"edit\":{\"label\":\"code\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"code\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"users\":{\"edit\":{\"label\":\"users\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"users\",\"searchable\":false,\"sortable\":false}},\"permissions\":{\"edit\":{\"label\":\"permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"action\"},\"list\":{\"label\":\"permissions\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"code\",\"description\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"code\",\"size\":6}],[{\"name\":\"description\",\"size\":6},{\"name\":\"users\",\"size\":6}],[{\"name\":\"permissions\",\"size\":6}]]},\"uid\":\"admin::role\"}', 'object', NULL, NULL),
(16, 'plugin_content_manager_configuration_content_types::admin::api-token-permission', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"action\",\"defaultSortBy\":\"action\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"action\",\"searchable\":true,\"sortable\":true}},\"token\":{\"edit\":{\"label\":\"token\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"token\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"action\",\"token\",\"createdAt\"],\"edit\":[[{\"name\":\"action\",\"size\":6},{\"name\":\"token\",\"size\":6}]]},\"uid\":\"admin::api-token-permission\"}', 'object', NULL, NULL),
(17, 'plugin_content_manager_configuration_content_types::admin::transfer-token', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"accessKey\":{\"edit\":{\"label\":\"accessKey\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"accessKey\",\"searchable\":true,\"sortable\":true}},\"lastUsedAt\":{\"edit\":{\"label\":\"lastUsedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lastUsedAt\",\"searchable\":true,\"sortable\":true}},\"permissions\":{\"edit\":{\"label\":\"permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"action\"},\"list\":{\"label\":\"permissions\",\"searchable\":false,\"sortable\":false}},\"expiresAt\":{\"edit\":{\"label\":\"expiresAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"expiresAt\",\"searchable\":true,\"sortable\":true}},\"lifespan\":{\"edit\":{\"label\":\"lifespan\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lifespan\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"description\",\"accessKey\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"accessKey\",\"size\":6},{\"name\":\"lastUsedAt\",\"size\":6}],[{\"name\":\"permissions\",\"size\":6},{\"name\":\"expiresAt\",\"size\":6}],[{\"name\":\"lifespan\",\"size\":4}]]},\"uid\":\"admin::transfer-token\"}', 'object', NULL, NULL),
(18, 'plugin_content_manager_configuration_content_types::admin::transfer-token-permission', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"action\",\"defaultSortBy\":\"action\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"action\",\"searchable\":true,\"sortable\":true}},\"token\":{\"edit\":{\"label\":\"token\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"token\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"action\",\"token\",\"createdAt\"],\"edit\":[[{\"name\":\"action\",\"size\":6},{\"name\":\"token\",\"size\":6}]]},\"uid\":\"admin::transfer-token-permission\"}', 'object', NULL, NULL),
(19, 'plugin_upload_settings', '{\"sizeOptimization\":true,\"responsiveDimensions\":true,\"autoOrientation\":false}', 'object', NULL, NULL),
(20, 'plugin_upload_view_configuration', '{\"pageSize\":10,\"sort\":\"createdAt:DESC\"}', 'object', NULL, NULL),
(21, 'plugin_upload_metrics', '{\"weeklySchedule\":\"31 2 12 * * 1\",\"lastWeeklyUpdate\":1747634551055}', 'object', NULL, NULL),
(22, 'plugin_i18n_default_locale', '\"en\"', 'string', NULL, NULL);
INSERT INTO `strapi_core_store_settings` (`id`, `key`, `value`, `type`, `environment`, `tag`) VALUES
(23, 'plugin_users-permissions_grant', '{\"email\":{\"icon\":\"envelope\",\"enabled\":true},\"discord\":{\"icon\":\"discord\",\"enabled\":false,\"key\":\"\",\"secret\":\"\",\"callbackUrl\":\"api/auth/discord/callback\",\"scope\":[\"identify\",\"email\"]},\"facebook\":{\"icon\":\"facebook-square\",\"enabled\":false,\"key\":\"\",\"secret\":\"\",\"callbackUrl\":\"api/auth/facebook/callback\",\"scope\":[\"email\"]},\"google\":{\"icon\":\"google\",\"enabled\":false,\"key\":\"\",\"secret\":\"\",\"callbackUrl\":\"api/auth/google/callback\",\"scope\":[\"email\"]},\"github\":{\"icon\":\"github\",\"enabled\":false,\"key\":\"\",\"secret\":\"\",\"callbackUrl\":\"api/auth/github/callback\",\"scope\":[\"user\",\"user:email\"]},\"microsoft\":{\"icon\":\"windows\",\"enabled\":false,\"key\":\"\",\"secret\":\"\",\"callbackUrl\":\"api/auth/microsoft/callback\",\"scope\":[\"user.read\"]},\"twitter\":{\"icon\":\"twitter\",\"enabled\":false,\"key\":\"\",\"secret\":\"\",\"callbackUrl\":\"api/auth/twitter/callback\"},\"instagram\":{\"icon\":\"instagram\",\"enabled\":false,\"key\":\"\",\"secret\":\"\",\"callbackUrl\":\"api/auth/instagram/callback\",\"scope\":[\"user_profile\"]},\"vk\":{\"icon\":\"vk\",\"enabled\":false,\"key\":\"\",\"secret\":\"\",\"callbackUrl\":\"api/auth/vk/callback\",\"scope\":[\"email\"]},\"twitch\":{\"icon\":\"twitch\",\"enabled\":false,\"key\":\"\",\"secret\":\"\",\"callbackUrl\":\"api/auth/twitch/callback\",\"scope\":[\"user:read:email\"]},\"linkedin\":{\"icon\":\"linkedin\",\"enabled\":false,\"key\":\"\",\"secret\":\"\",\"callbackUrl\":\"api/auth/linkedin/callback\",\"scope\":[\"r_liteprofile\",\"r_emailaddress\"]},\"cognito\":{\"icon\":\"aws\",\"enabled\":false,\"key\":\"\",\"secret\":\"\",\"subdomain\":\"my.subdomain.com\",\"callback\":\"api/auth/cognito/callback\",\"scope\":[\"email\",\"openid\",\"profile\"]},\"reddit\":{\"icon\":\"reddit\",\"enabled\":false,\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/reddit/callback\",\"scope\":[\"identity\"]},\"auth0\":{\"icon\":\"\",\"enabled\":false,\"key\":\"\",\"secret\":\"\",\"subdomain\":\"my-tenant.eu\",\"callback\":\"api/auth/auth0/callback\",\"scope\":[\"openid\",\"email\",\"profile\"]},\"cas\":{\"icon\":\"book\",\"enabled\":false,\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/cas/callback\",\"scope\":[\"openid email\"],\"subdomain\":\"my.subdomain.com/cas\"},\"patreon\":{\"icon\":\"\",\"enabled\":false,\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/patreon/callback\",\"scope\":[\"identity\",\"identity[email]\"]},\"keycloack\":{\"icon\":\"\",\"enabled\":false,\"key\":\"\",\"secret\":\"\",\"subdomain\":\"myKeycloakProvider.com/realms/myrealm\",\"callback\":\"api/auth/keycloak/callback\",\"scope\":[\"openid\",\"email\",\"profile\"]}}', 'object', NULL, NULL),
(24, 'plugin_users-permissions_email', '{\"reset_password\":{\"display\":\"Email.template.reset_password\",\"icon\":\"sync\",\"options\":{\"from\":{\"name\":\"Administration Panel\",\"email\":\"no-reply@strapi.io\"},\"response_email\":\"\",\"object\":\"Reset password\",\"message\":\"<p>We heard that you lost your password. Sorry about that!</p>\\n\\n<p>But don’t worry! You can use the following link to reset your password:</p>\\n<p><%= URL %>?code=<%= TOKEN %></p>\\n\\n<p>Thanks.</p>\"}},\"email_confirmation\":{\"display\":\"Email.template.email_confirmation\",\"icon\":\"check-square\",\"options\":{\"from\":{\"name\":\"Administration Panel\",\"email\":\"no-reply@strapi.io\"},\"response_email\":\"\",\"object\":\"Account confirmation\",\"message\":\"<p>Thank you for registering!</p>\\n\\n<p>You have to confirm your email address. Please click on the link below.</p>\\n\\n<p><%= URL %>?confirmation=<%= CODE %></p>\\n\\n<p>Thanks.</p>\"}}}', 'object', NULL, NULL),
(25, 'plugin_users-permissions_advanced', '{\"unique_email\":true,\"allow_register\":true,\"email_confirmation\":false,\"email_reset_password\":null,\"email_confirmation_redirection\":null,\"default_role\":\"authenticated\"}', 'object', NULL, NULL),
(26, 'core_admin_auth', '{\"providers\":{\"autoRegister\":false,\"defaultRole\":null,\"ssoLockedRoles\":null}}', 'object', NULL, NULL),
(27, 'plugin_content_manager_configuration_content_types::api::category.category', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"icon\":{\"edit\":{\"label\":\"icon\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"icon\",\"searchable\":false,\"sortable\":false}},\"color\":{\"edit\":{\"label\":\"color\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"color\",\"searchable\":true,\"sortable\":true}},\"products\":{\"edit\":{\"label\":\"products\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"products\",\"searchable\":false,\"sortable\":false}},\"slug\":{\"edit\":{\"label\":\"slug\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"slug\",\"searchable\":true,\"sortable\":true}},\"banner\":{\"edit\":{\"label\":\"banner\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"banner\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"icon\",\"color\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"icon\",\"size\":6}],[{\"name\":\"color\",\"size\":6},{\"name\":\"products\",\"size\":6}],[{\"name\":\"slug\",\"size\":6},{\"name\":\"banner\",\"size\":6}]]},\"uid\":\"api::category.category\"}', 'object', NULL, NULL),
(28, 'plugin_content_manager_configuration_content_types::api::slider.slider', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"image\":{\"edit\":{\"label\":\"image\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"image\",\"searchable\":false,\"sortable\":false}},\"type\":{\"edit\":{\"label\":\"type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"type\",\"searchable\":true,\"sortable\":true}},\"url\":{\"edit\":{\"label\":\"url\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"url\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"image\",\"type\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"image\",\"size\":6}],[{\"name\":\"type\",\"size\":6},{\"name\":\"url\",\"size\":6}]]},\"uid\":\"api::slider.slider\"}', 'object', NULL, NULL),
(29, 'plugin_content_manager_configuration_content_types::api::product.product', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"mrp\":{\"edit\":{\"label\":\"mrp\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"mrp\",\"searchable\":true,\"sortable\":true}},\"sellingPrice\":{\"edit\":{\"label\":\"sellingPrice\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"sellingPrice\",\"searchable\":true,\"sortable\":true}},\"itemQuantityType\":{\"edit\":{\"label\":\"itemQuantityType\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"itemQuantityType\",\"searchable\":true,\"sortable\":true}},\"slug\":{\"edit\":{\"label\":\"slug\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"slug\",\"searchable\":true,\"sortable\":true}},\"images\":{\"edit\":{\"label\":\"images\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"images\",\"searchable\":false,\"sortable\":false}},\"categories\":{\"edit\":{\"label\":\"categories\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"categories\",\"searchable\":false,\"sortable\":false}},\"stock\":{\"edit\":{\"label\":\"stock\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"stock\",\"searchable\":true,\"sortable\":true}},\"colors\":{\"edit\":{\"label\":\"colors\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"colors\",\"searchable\":false,\"sortable\":false}},\"brand\":{\"edit\":{\"label\":\"brand\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"brand\",\"searchable\":true,\"sortable\":true}},\"details\":{\"edit\":{\"label\":\"details\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"details\",\"searchable\":false,\"sortable\":false}},\"warranty\":{\"edit\":{\"label\":\"warranty\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"warranty\",\"searchable\":true,\"sortable\":true}},\"wishlists\":{\"edit\":{\"label\":\"wishlists\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"id\"},\"list\":{\"label\":\"wishlists\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"images\",\"sellingPrice\",\"mrp\",\"stock\",\"categories\"],\"edit\":[[{\"name\":\"name\",\"size\":6}],[{\"name\":\"mrp\",\"size\":4},{\"name\":\"sellingPrice\",\"size\":4}],[{\"name\":\"images\",\"size\":6},{\"name\":\"warranty\",\"size\":6}],[{\"name\":\"brand\",\"size\":6},{\"name\":\"categories\",\"size\":6}],[{\"name\":\"slug\",\"size\":6},{\"name\":\"stock\",\"size\":4}],[{\"name\":\"description\",\"size\":6}],[{\"name\":\"colors\",\"size\":6}],[{\"name\":\"itemQuantityType\",\"size\":6}],[{\"name\":\"details\",\"size\":12}],[{\"name\":\"wishlists\",\"size\":6}]]},\"uid\":\"api::product.product\"}', 'object', NULL, NULL),
(30, 'plugin_content_manager_configuration_content_types::api::user-cart.user-cart', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"quantity\":{\"edit\":{\"label\":\"quantity\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"quantity\",\"searchable\":true,\"sortable\":true}},\"amount\":{\"edit\":{\"label\":\"amount\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"amount\",\"searchable\":true,\"sortable\":true}},\"products\":{\"edit\":{\"label\":\"products\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"products\",\"searchable\":false,\"sortable\":false}},\"users_permissions_user\":{\"edit\":{\"label\":\"users_permissions_user\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"username\"},\"list\":{\"label\":\"users_permissions_user\",\"searchable\":true,\"sortable\":true}},\"userId\":{\"edit\":{\"label\":\"userId\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"userId\",\"searchable\":true,\"sortable\":true}},\"productId\":{\"edit\":{\"label\":\"productId\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"productId\",\"searchable\":true,\"sortable\":true}},\"color\":{\"edit\":{\"label\":\"color\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"color\",\"searchable\":true,\"sortable\":true}},\"stock\":{\"edit\":{\"label\":\"stock\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"stock\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"edit\":[[{\"name\":\"quantity\",\"size\":4},{\"name\":\"amount\",\"size\":4}],[{\"name\":\"products\",\"size\":6},{\"name\":\"users_permissions_user\",\"size\":6}],[{\"name\":\"userId\",\"size\":4},{\"name\":\"productId\",\"size\":4}],[{\"name\":\"color\",\"size\":6},{\"name\":\"stock\",\"size\":4}]],\"list\":[\"id\",\"products\",\"color\",\"amount\",\"quantity\"]},\"uid\":\"api::user-cart.user-cart\"}', 'object', NULL, NULL),
(31, 'plugin_content_manager_configuration_components::ordered-item.ordered-item', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"product\":{\"edit\":{\"label\":\"product\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"product\",\"searchable\":true,\"sortable\":true}},\"quantity\":{\"edit\":{\"label\":\"quantity\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"quantity\",\"searchable\":true,\"sortable\":true}},\"amount\":{\"edit\":{\"label\":\"amount\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"amount\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"color\":{\"edit\":{\"label\":\"color\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"color\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"product\",\"quantity\",\"amount\"],\"edit\":[[{\"name\":\"product\",\"size\":6},{\"name\":\"quantity\",\"size\":4}],[{\"name\":\"amount\",\"size\":4}],[{\"name\":\"name\",\"size\":6},{\"name\":\"color\",\"size\":6}]]},\"uid\":\"ordered-item.ordered-item\",\"isComponent\":true}', 'object', NULL, NULL),
(32, 'plugin_content_manager_configuration_content_types::api::order.order', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"username\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"DESC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"username\":{\"edit\":{\"label\":\"username\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"username\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"email\",\"searchable\":true,\"sortable\":true}},\"phone\":{\"edit\":{\"label\":\"phone\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"phone\",\"searchable\":true,\"sortable\":true}},\"zip\":{\"edit\":{\"label\":\"zip\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"zip\",\"searchable\":true,\"sortable\":true}},\"address\":{\"edit\":{\"label\":\"address\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"address\",\"searchable\":true,\"sortable\":true}},\"totalAmount\":{\"edit\":{\"label\":\"totalAmount\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"totalAmount\",\"searchable\":true,\"sortable\":true}},\"userId\":{\"edit\":{\"label\":\"userId\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"userId\",\"searchable\":true,\"sortable\":true}},\"paymentId\":{\"edit\":{\"label\":\"paymentId\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"paymentId\",\"searchable\":true,\"sortable\":true}},\"orderItemList\":{\"edit\":{\"label\":\"orderItemList\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"orderItemList\",\"searchable\":false,\"sortable\":false}},\"orderStatus\":{\"edit\":{\"label\":\"orderStatus\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"orderStatus\",\"searchable\":true,\"sortable\":true}},\"subTotal\":{\"edit\":{\"label\":\"subTotal\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"subTotal\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"edit\":[[{\"name\":\"username\",\"size\":6},{\"name\":\"email\",\"size\":6}],[{\"name\":\"phone\",\"size\":6},{\"name\":\"zip\",\"size\":6}],[{\"name\":\"address\",\"size\":6},{\"name\":\"totalAmount\",\"size\":4}],[{\"name\":\"userId\",\"size\":4},{\"name\":\"paymentId\",\"size\":6}],[{\"name\":\"orderItemList\",\"size\":12}],[{\"name\":\"orderStatus\",\"size\":6},{\"name\":\"subTotal\",\"size\":4}]],\"list\":[\"id\",\"username\",\"email\",\"phone\",\"totalAmount\"]},\"uid\":\"api::order.order\"}', 'object', NULL, NULL),
(33, 'plugin_content_manager_configuration_content_types::api::color.color', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"code\":{\"edit\":{\"label\":\"code\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"code\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"code\",\"createdAt\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"code\",\"size\":6}]]},\"uid\":\"api::color.color\"}', 'object', NULL, NULL),
(34, 'plugin_content_manager_configuration_content_types::api::brand.brand', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"logo\":{\"edit\":{\"label\":\"logo\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"logo\",\"searchable\":false,\"sortable\":false}},\"banner\":{\"edit\":{\"label\":\"banner\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"banner\",\"searchable\":false,\"sortable\":false}},\"products\":{\"edit\":{\"label\":\"products\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"products\",\"searchable\":false,\"sortable\":false}},\"slug\":{\"edit\":{\"label\":\"slug\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"slug\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"logo\",\"banner\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"logo\",\"size\":6}],[{\"name\":\"banner\",\"size\":6},{\"name\":\"products\",\"size\":6}],[{\"name\":\"slug\",\"size\":6}]]},\"uid\":\"api::brand.brand\"}', 'object', NULL, NULL),
(35, 'plugin_content_manager_configuration_content_types::api::about-page.about-page', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"title\",\"defaultSortBy\":\"title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"title\":{\"edit\":{\"label\":\"title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"title\",\"searchable\":true,\"sortable\":true}},\"banner\":{\"edit\":{\"label\":\"banner\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"banner\",\"searchable\":false,\"sortable\":false}},\"body\":{\"edit\":{\"label\":\"body\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"body\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"title\",\"banner\",\"createdAt\"],\"edit\":[[{\"name\":\"banner\",\"size\":6}],[{\"name\":\"title\",\"size\":6}],[{\"name\":\"body\",\"size\":12}]]},\"uid\":\"api::about-page.about-page\"}', 'object', NULL, NULL),
(36, 'plugin_upload_api-folder', '{\"id\":1}', 'object', NULL, NULL),
(37, 'plugin_content_manager_configuration_content_types::api::wishlist.wishlist', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"users_permissions_user\":{\"edit\":{\"label\":\"users_permissions_user\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"username\"},\"list\":{\"label\":\"users_permissions_user\",\"searchable\":true,\"sortable\":true}},\"products\":{\"edit\":{\"label\":\"products\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"products\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"users_permissions_user\",\"products\",\"createdAt\"],\"edit\":[[{\"name\":\"users_permissions_user\",\"size\":6},{\"name\":\"products\",\"size\":6}]]},\"uid\":\"api::wishlist.wishlist\"}', 'object', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `strapi_database_schema`
--

CREATE TABLE `strapi_database_schema` (
  `id` int(10) UNSIGNED NOT NULL,
  `schema` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`schema`)),
  `time` datetime DEFAULT NULL,
  `hash` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `strapi_database_schema`
--

INSERT INTO `strapi_database_schema` (`id`, `schema`, `time`, `hash`) VALUES
(41, '{\"tables\":[{\"name\":\"files\",\"indexes\":[{\"name\":\"upload_files_folder_path_index\",\"columns\":[\"folder_path\"],\"type\":null},{\"name\":\"upload_files_created_at_index\",\"columns\":[\"created_at\"],\"type\":null},{\"name\":\"upload_files_updated_at_index\",\"columns\":[\"updated_at\"],\"type\":null},{\"name\":\"upload_files_name_index\",\"columns\":[\"name\"],\"type\":null},{\"name\":\"upload_files_size_index\",\"columns\":[\"size\"],\"type\":null},{\"name\":\"upload_files_ext_index\",\"columns\":[\"ext\"],\"type\":null},{\"name\":\"files_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"files_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"files_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"files_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"files_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"alternative_text\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"caption\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"width\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"height\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"formats\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"hash\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"ext\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"mime\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"size\",\"type\":\"decimal\",\"args\":[10,2],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"url\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"preview_url\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"provider\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"provider_metadata\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"folder_path\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"upload_folders\",\"indexes\":[{\"name\":\"upload_folders_path_id_index\",\"columns\":[\"path_id\"],\"type\":\"unique\"},{\"name\":\"upload_folders_path_index\",\"columns\":[\"path\"],\"type\":\"unique\"},{\"name\":\"upload_folders_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"upload_folders_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"upload_folders_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"upload_folders_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"upload_folders_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"path_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"path\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"i18n_locale\",\"indexes\":[{\"name\":\"i18n_locale_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"i18n_locale_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"i18n_locale_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"i18n_locale_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"i18n_locale_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"code\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"strapi_releases\",\"indexes\":[{\"name\":\"strapi_releases_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"strapi_releases_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"strapi_releases_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"strapi_releases_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"strapi_releases_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"released_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"scheduled_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"timezone\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"status\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"strapi_release_actions\",\"indexes\":[{\"name\":\"strapi_release_actions_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"strapi_release_actions_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"strapi_release_actions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"strapi_release_actions_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"strapi_release_actions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"content_type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"entry_document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"is_entry_valid\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"strapi_workflows\",\"indexes\":[{\"name\":\"strapi_workflows_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"strapi_workflows_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"strapi_workflows_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"strapi_workflows_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"strapi_workflows_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"content_types\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"strapi_workflows_stages\",\"indexes\":[{\"name\":\"strapi_workflows_stages_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"strapi_workflows_stages_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"strapi_workflows_stages_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"strapi_workflows_stages_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"strapi_workflows_stages_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"color\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"up_permissions\",\"indexes\":[{\"name\":\"up_permissions_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"up_permissions_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"up_permissions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"up_permissions_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"up_permissions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"action\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"up_roles\",\"indexes\":[{\"name\":\"up_roles_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"up_roles_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"up_roles_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"up_roles_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"up_roles_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"description\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"up_users\",\"indexes\":[{\"name\":\"up_users_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"up_users_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"up_users_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"up_users_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"up_users_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"username\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"email\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"provider\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"password\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"reset_password_token\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"confirmation_token\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"confirmed\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"blocked\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"mobile\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"about\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"profile_image\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"about_pages\",\"indexes\":[{\"name\":\"about_pages_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"about_pages_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"about_pages_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"about_pages_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"about_pages_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"title\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"body\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"brands\",\"indexes\":[{\"name\":\"brands_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"brands_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"brands_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"brands_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"brands_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"slug\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"categories\",\"indexes\":[{\"name\":\"categories_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"categories_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"categories_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"categories_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"categories_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"color\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"slug\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"colors\",\"indexes\":[{\"name\":\"colors_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"colors_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"colors_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"colors_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"colors_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"code\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"orders_cmps\",\"indexes\":[{\"name\":\"orders_field_idx\",\"columns\":[\"field\"]},{\"name\":\"orders_component_type_idx\",\"columns\":[\"component_type\"]},{\"name\":\"orders_entity_fk\",\"columns\":[\"entity_id\"]},{\"name\":\"orders_uq\",\"columns\":[\"entity_id\",\"cmp_id\",\"field\",\"component_type\"],\"type\":\"unique\"}],\"foreignKeys\":[{\"name\":\"orders_entity_fk\",\"columns\":[\"entity_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"orders\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"entity_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"cmp_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"component_type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"field\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"order\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"orders\",\"indexes\":[{\"name\":\"orders_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"orders_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"orders_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"orders_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"orders_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"username\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"email\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"phone\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"zip\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"address\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"total_amount\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"user_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"payment_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"order_status\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"sub_total\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"products\",\"indexes\":[{\"name\":\"products_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"products_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"products_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"products_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"products_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"description\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"mrp\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"selling_price\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"item_quantity_type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"slug\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"stock\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"details\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"warranty\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"sliders\",\"indexes\":[{\"name\":\"sliders_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"sliders_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"sliders_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"sliders_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"sliders_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"url\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"user_carts\",\"indexes\":[{\"name\":\"user_carts_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"user_carts_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"user_carts_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"user_carts_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"user_carts_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"quantity\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"amount\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"user_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"product_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"color\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"stock\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"wishlists\",\"indexes\":[{\"name\":\"wishlists_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"wishlists_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"wishlists_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"wishlists_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"wishlists_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"admin_permissions\",\"indexes\":[{\"name\":\"admin_permissions_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"admin_permissions_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"admin_permissions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"admin_permissions_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"admin_permissions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"action\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"action_parameters\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"subject\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"properties\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"conditions\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"admin_users\",\"indexes\":[{\"name\":\"admin_users_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"admin_users_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"admin_users_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"admin_users_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"admin_users_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"firstname\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"lastname\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"username\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"email\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"password\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"reset_password_token\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"registration_token\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"is_active\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"blocked\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"prefered_language\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"admin_roles\",\"indexes\":[{\"name\":\"admin_roles_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"admin_roles_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"admin_roles_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"admin_roles_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"admin_roles_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"code\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"description\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"strapi_api_tokens\",\"indexes\":[{\"name\":\"strapi_api_tokens_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"strapi_api_tokens_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"strapi_api_tokens_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"strapi_api_tokens_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"strapi_api_tokens_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"description\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"access_key\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"last_used_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"expires_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"lifespan\",\"type\":\"bigInteger\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"strapi_api_token_permissions\",\"indexes\":[{\"name\":\"strapi_api_token_permissions_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"strapi_api_token_permissions_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"strapi_api_token_permissions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"strapi_api_token_permissions_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"strapi_api_token_permissions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"action\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"strapi_transfer_tokens\",\"indexes\":[{\"name\":\"strapi_transfer_tokens_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"strapi_transfer_tokens_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"strapi_transfer_tokens_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"strapi_transfer_tokens_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"strapi_transfer_tokens_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"description\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"access_key\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"last_used_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"expires_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"lifespan\",\"type\":\"bigInteger\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"strapi_transfer_token_permissions\",\"indexes\":[{\"name\":\"strapi_transfer_token_permissions_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"strapi_transfer_token_permissions_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"strapi_transfer_token_permissions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"strapi_transfer_token_permissions_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"strapi_transfer_token_permissions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"action\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"components_ordered_item_ordered_items\",\"indexes\":[],\"foreignKeys\":[],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"quantity\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"amount\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"color\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"strapi_core_store_settings\",\"indexes\":[],\"foreignKeys\":[],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"key\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"value\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"environment\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"tag\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"strapi_webhooks\",\"indexes\":[],\"foreignKeys\":[],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"url\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"headers\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"events\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"enabled\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"strapi_history_versions\",\"indexes\":[{\"name\":\"strapi_history_versions_created_by_id_fk\",\"columns\":[\"created_by_id\"]}],\"foreignKeys\":[{\"name\":\"strapi_history_versions_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"content_type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"related_document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"status\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"data\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"schema\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"files_related_mph\",\"indexes\":[{\"name\":\"files_related_mph_fk\",\"columns\":[\"file_id\"]},{\"name\":\"files_related_mph_oidx\",\"columns\":[\"order\"]},{\"name\":\"files_related_mph_idix\",\"columns\":[\"related_id\"]}],\"foreignKeys\":[{\"name\":\"files_related_mph_fk\",\"columns\":[\"file_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"files\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"file_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"related_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"related_type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"field\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"order\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"files_folder_lnk\",\"indexes\":[{\"name\":\"files_folder_lnk_fk\",\"columns\":[\"file_id\"]},{\"name\":\"files_folder_lnk_ifk\",\"columns\":[\"folder_id\"]},{\"name\":\"files_folder_lnk_uq\",\"columns\":[\"file_id\",\"folder_id\"],\"type\":\"unique\"},{\"name\":\"files_folder_lnk_oifk\",\"columns\":[\"file_ord\"]}],\"foreignKeys\":[{\"name\":\"files_folder_lnk_fk\",\"columns\":[\"file_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"files\",\"onDelete\":\"CASCADE\"},{\"name\":\"files_folder_lnk_ifk\",\"columns\":[\"folder_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"upload_folders\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"file_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"folder_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"file_ord\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"upload_folders_parent_lnk\",\"indexes\":[{\"name\":\"upload_folders_parent_lnk_fk\",\"columns\":[\"folder_id\"]},{\"name\":\"upload_folders_parent_lnk_ifk\",\"columns\":[\"inv_folder_id\"]},{\"name\":\"upload_folders_parent_lnk_uq\",\"columns\":[\"folder_id\",\"inv_folder_id\"],\"type\":\"unique\"},{\"name\":\"upload_folders_parent_lnk_oifk\",\"columns\":[\"folder_ord\"]}],\"foreignKeys\":[{\"name\":\"upload_folders_parent_lnk_fk\",\"columns\":[\"folder_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"upload_folders\",\"onDelete\":\"CASCADE\"},{\"name\":\"upload_folders_parent_lnk_ifk\",\"columns\":[\"inv_folder_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"upload_folders\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"folder_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"inv_folder_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"folder_ord\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"strapi_release_actions_release_lnk\",\"indexes\":[{\"name\":\"strapi_release_actions_release_lnk_fk\",\"columns\":[\"release_action_id\"]},{\"name\":\"strapi_release_actions_release_lnk_ifk\",\"columns\":[\"release_id\"]},{\"name\":\"strapi_release_actions_release_lnk_uq\",\"columns\":[\"release_action_id\",\"release_id\"],\"type\":\"unique\"},{\"name\":\"strapi_release_actions_release_lnk_oifk\",\"columns\":[\"release_action_ord\"]}],\"foreignKeys\":[{\"name\":\"strapi_release_actions_release_lnk_fk\",\"columns\":[\"release_action_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"strapi_release_actions\",\"onDelete\":\"CASCADE\"},{\"name\":\"strapi_release_actions_release_lnk_ifk\",\"columns\":[\"release_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"strapi_releases\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"release_action_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"release_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"release_action_ord\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"strapi_workflows_stages_workflow_lnk\",\"indexes\":[{\"name\":\"strapi_workflows_stages_workflow_lnk_fk\",\"columns\":[\"workflow_stage_id\"]},{\"name\":\"strapi_workflows_stages_workflow_lnk_ifk\",\"columns\":[\"workflow_id\"]},{\"name\":\"strapi_workflows_stages_workflow_lnk_uq\",\"columns\":[\"workflow_stage_id\",\"workflow_id\"],\"type\":\"unique\"},{\"name\":\"strapi_workflows_stages_workflow_lnk_oifk\",\"columns\":[\"workflow_stage_ord\"]}],\"foreignKeys\":[{\"name\":\"strapi_workflows_stages_workflow_lnk_fk\",\"columns\":[\"workflow_stage_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"strapi_workflows_stages\",\"onDelete\":\"CASCADE\"},{\"name\":\"strapi_workflows_stages_workflow_lnk_ifk\",\"columns\":[\"workflow_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"strapi_workflows\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"workflow_stage_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"workflow_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"workflow_stage_ord\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"strapi_workflows_stages_permissions_lnk\",\"indexes\":[{\"name\":\"strapi_workflows_stages_permissions_lnk_fk\",\"columns\":[\"workflow_stage_id\"]},{\"name\":\"strapi_workflows_stages_permissions_lnk_ifk\",\"columns\":[\"permission_id\"]},{\"name\":\"strapi_workflows_stages_permissions_lnk_uq\",\"columns\":[\"workflow_stage_id\",\"permission_id\"],\"type\":\"unique\"},{\"name\":\"strapi_workflows_stages_permissions_lnk_ofk\",\"columns\":[\"permission_ord\"]}],\"foreignKeys\":[{\"name\":\"strapi_workflows_stages_permissions_lnk_fk\",\"columns\":[\"workflow_stage_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"strapi_workflows_stages\",\"onDelete\":\"CASCADE\"},{\"name\":\"strapi_workflows_stages_permissions_lnk_ifk\",\"columns\":[\"permission_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"admin_permissions\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"workflow_stage_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"permission_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"permission_ord\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"up_permissions_role_lnk\",\"indexes\":[{\"name\":\"up_permissions_role_lnk_fk\",\"columns\":[\"permission_id\"]},{\"name\":\"up_permissions_role_lnk_ifk\",\"columns\":[\"role_id\"]},{\"name\":\"up_permissions_role_lnk_uq\",\"columns\":[\"permission_id\",\"role_id\"],\"type\":\"unique\"},{\"name\":\"up_permissions_role_lnk_oifk\",\"columns\":[\"permission_ord\"]}],\"foreignKeys\":[{\"name\":\"up_permissions_role_lnk_fk\",\"columns\":[\"permission_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"up_permissions\",\"onDelete\":\"CASCADE\"},{\"name\":\"up_permissions_role_lnk_ifk\",\"columns\":[\"role_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"up_roles\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"permission_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"role_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"permission_ord\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"up_users_role_lnk\",\"indexes\":[{\"name\":\"up_users_role_lnk_fk\",\"columns\":[\"user_id\"]},{\"name\":\"up_users_role_lnk_ifk\",\"columns\":[\"role_id\"]},{\"name\":\"up_users_role_lnk_uq\",\"columns\":[\"user_id\",\"role_id\"],\"type\":\"unique\"},{\"name\":\"up_users_role_lnk_oifk\",\"columns\":[\"user_ord\"]}],\"foreignKeys\":[{\"name\":\"up_users_role_lnk_fk\",\"columns\":[\"user_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"up_users\",\"onDelete\":\"CASCADE\"},{\"name\":\"up_users_role_lnk_ifk\",\"columns\":[\"role_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"up_roles\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"user_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"role_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"user_ord\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"brands_products_lnk\",\"indexes\":[{\"name\":\"brands_products_lnk_fk\",\"columns\":[\"brand_id\"]},{\"name\":\"brands_products_lnk_ifk\",\"columns\":[\"product_id\"]},{\"name\":\"brands_products_lnk_uq\",\"columns\":[\"brand_id\",\"product_id\"],\"type\":\"unique\"},{\"name\":\"brands_products_lnk_ofk\",\"columns\":[\"product_ord\"]}],\"foreignKeys\":[{\"name\":\"brands_products_lnk_fk\",\"columns\":[\"brand_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"brands\",\"onDelete\":\"CASCADE\"},{\"name\":\"brands_products_lnk_ifk\",\"columns\":[\"product_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"products\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"brand_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"product_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"product_ord\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"products_categories_lnk\",\"indexes\":[{\"name\":\"products_categories_lnk_fk\",\"columns\":[\"product_id\"]},{\"name\":\"products_categories_lnk_ifk\",\"columns\":[\"category_id\"]},{\"name\":\"products_categories_lnk_uq\",\"columns\":[\"product_id\",\"category_id\"],\"type\":\"unique\"},{\"name\":\"products_categories_lnk_ofk\",\"columns\":[\"category_ord\"]},{\"name\":\"products_categories_lnk_oifk\",\"columns\":[\"product_ord\"]}],\"foreignKeys\":[{\"name\":\"products_categories_lnk_fk\",\"columns\":[\"product_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"products\",\"onDelete\":\"CASCADE\"},{\"name\":\"products_categories_lnk_ifk\",\"columns\":[\"category_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"categories\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"product_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"category_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"category_ord\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"product_ord\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"products_colors_lnk\",\"indexes\":[{\"name\":\"products_colors_lnk_fk\",\"columns\":[\"product_id\"]},{\"name\":\"products_colors_lnk_ifk\",\"columns\":[\"color_id\"]},{\"name\":\"products_colors_lnk_uq\",\"columns\":[\"product_id\",\"color_id\"],\"type\":\"unique\"},{\"name\":\"products_colors_lnk_ofk\",\"columns\":[\"color_ord\"]}],\"foreignKeys\":[{\"name\":\"products_colors_lnk_fk\",\"columns\":[\"product_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"products\",\"onDelete\":\"CASCADE\"},{\"name\":\"products_colors_lnk_ifk\",\"columns\":[\"color_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"colors\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"product_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"color_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"color_ord\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"products_brand_lnk\",\"indexes\":[{\"name\":\"products_brand_lnk_fk\",\"columns\":[\"product_id\"]},{\"name\":\"products_brand_lnk_ifk\",\"columns\":[\"brand_id\"]},{\"name\":\"products_brand_lnk_uq\",\"columns\":[\"product_id\",\"brand_id\"],\"type\":\"unique\"}],\"foreignKeys\":[{\"name\":\"products_brand_lnk_fk\",\"columns\":[\"product_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"products\",\"onDelete\":\"CASCADE\"},{\"name\":\"products_brand_lnk_ifk\",\"columns\":[\"brand_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"brands\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"product_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"brand_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"user_carts_products_lnk\",\"indexes\":[{\"name\":\"user_carts_products_lnk_fk\",\"columns\":[\"user_cart_id\"]},{\"name\":\"user_carts_products_lnk_ifk\",\"columns\":[\"product_id\"]},{\"name\":\"user_carts_products_lnk_uq\",\"columns\":[\"user_cart_id\",\"product_id\"],\"type\":\"unique\"},{\"name\":\"user_carts_products_lnk_ofk\",\"columns\":[\"product_ord\"]}],\"foreignKeys\":[{\"name\":\"user_carts_products_lnk_fk\",\"columns\":[\"user_cart_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"user_carts\",\"onDelete\":\"CASCADE\"},{\"name\":\"user_carts_products_lnk_ifk\",\"columns\":[\"product_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"products\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"user_cart_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"product_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"product_ord\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"user_carts_users_permissions_user_lnk\",\"indexes\":[{\"name\":\"user_carts_users_permissions_user_lnk_fk\",\"columns\":[\"user_cart_id\"]},{\"name\":\"user_carts_users_permissions_user_lnk_ifk\",\"columns\":[\"user_id\"]},{\"name\":\"user_carts_users_permissions_user_lnk_uq\",\"columns\":[\"user_cart_id\",\"user_id\"],\"type\":\"unique\"}],\"foreignKeys\":[{\"name\":\"user_carts_users_permissions_user_lnk_fk\",\"columns\":[\"user_cart_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"user_carts\",\"onDelete\":\"CASCADE\"},{\"name\":\"user_carts_users_permissions_user_lnk_ifk\",\"columns\":[\"user_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"up_users\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"user_cart_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"user_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"wishlists_users_permissions_user_lnk\",\"indexes\":[{\"name\":\"wishlists_users_permissions_user_lnk_fk\",\"columns\":[\"wishlist_id\"]},{\"name\":\"wishlists_users_permissions_user_lnk_ifk\",\"columns\":[\"user_id\"]},{\"name\":\"wishlists_users_permissions_user_lnk_uq\",\"columns\":[\"wishlist_id\",\"user_id\"],\"type\":\"unique\"}],\"foreignKeys\":[{\"name\":\"wishlists_users_permissions_user_lnk_fk\",\"columns\":[\"wishlist_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"wishlists\",\"onDelete\":\"CASCADE\"},{\"name\":\"wishlists_users_permissions_user_lnk_ifk\",\"columns\":[\"user_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"up_users\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"wishlist_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"user_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"wishlists_products_lnk\",\"indexes\":[{\"name\":\"wishlists_products_lnk_fk\",\"columns\":[\"wishlist_id\"]},{\"name\":\"wishlists_products_lnk_ifk\",\"columns\":[\"product_id\"]},{\"name\":\"wishlists_products_lnk_uq\",\"columns\":[\"wishlist_id\",\"product_id\"],\"type\":\"unique\"},{\"name\":\"wishlists_products_lnk_ofk\",\"columns\":[\"product_ord\"]},{\"name\":\"wishlists_products_lnk_oifk\",\"columns\":[\"wishlist_ord\"]}],\"foreignKeys\":[{\"name\":\"wishlists_products_lnk_fk\",\"columns\":[\"wishlist_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"wishlists\",\"onDelete\":\"CASCADE\"},{\"name\":\"wishlists_products_lnk_ifk\",\"columns\":[\"product_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"products\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"wishlist_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"product_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"product_ord\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"wishlist_ord\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"admin_permissions_role_lnk\",\"indexes\":[{\"name\":\"admin_permissions_role_lnk_fk\",\"columns\":[\"permission_id\"]},{\"name\":\"admin_permissions_role_lnk_ifk\",\"columns\":[\"role_id\"]},{\"name\":\"admin_permissions_role_lnk_uq\",\"columns\":[\"permission_id\",\"role_id\"],\"type\":\"unique\"},{\"name\":\"admin_permissions_role_lnk_oifk\",\"columns\":[\"permission_ord\"]}],\"foreignKeys\":[{\"name\":\"admin_permissions_role_lnk_fk\",\"columns\":[\"permission_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"admin_permissions\",\"onDelete\":\"CASCADE\"},{\"name\":\"admin_permissions_role_lnk_ifk\",\"columns\":[\"role_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"admin_roles\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"permission_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"role_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"permission_ord\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"admin_users_roles_lnk\",\"indexes\":[{\"name\":\"admin_users_roles_lnk_fk\",\"columns\":[\"user_id\"]},{\"name\":\"admin_users_roles_lnk_ifk\",\"columns\":[\"role_id\"]},{\"name\":\"admin_users_roles_lnk_uq\",\"columns\":[\"user_id\",\"role_id\"],\"type\":\"unique\"},{\"name\":\"admin_users_roles_lnk_ofk\",\"columns\":[\"role_ord\"]},{\"name\":\"admin_users_roles_lnk_oifk\",\"columns\":[\"user_ord\"]}],\"foreignKeys\":[{\"name\":\"admin_users_roles_lnk_fk\",\"columns\":[\"user_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"admin_users\",\"onDelete\":\"CASCADE\"},{\"name\":\"admin_users_roles_lnk_ifk\",\"columns\":[\"role_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"admin_roles\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"user_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"role_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"role_ord\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"user_ord\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"strapi_api_token_permissions_token_lnk\",\"indexes\":[{\"name\":\"strapi_api_token_permissions_token_lnk_fk\",\"columns\":[\"api_token_permission_id\"]},{\"name\":\"strapi_api_token_permissions_token_lnk_ifk\",\"columns\":[\"api_token_id\"]},{\"name\":\"strapi_api_token_permissions_token_lnk_uq\",\"columns\":[\"api_token_permission_id\",\"api_token_id\"],\"type\":\"unique\"},{\"name\":\"strapi_api_token_permissions_token_lnk_oifk\",\"columns\":[\"api_token_permission_ord\"]}],\"foreignKeys\":[{\"name\":\"strapi_api_token_permissions_token_lnk_fk\",\"columns\":[\"api_token_permission_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"strapi_api_token_permissions\",\"onDelete\":\"CASCADE\"},{\"name\":\"strapi_api_token_permissions_token_lnk_ifk\",\"columns\":[\"api_token_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"strapi_api_tokens\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"api_token_permission_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"api_token_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"api_token_permission_ord\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"strapi_transfer_token_permissions_token_lnk\",\"indexes\":[{\"name\":\"strapi_transfer_token_permissions_token_lnk_fk\",\"columns\":[\"transfer_token_permission_id\"]},{\"name\":\"strapi_transfer_token_permissions_token_lnk_ifk\",\"columns\":[\"transfer_token_id\"]},{\"name\":\"strapi_transfer_token_permissions_token_lnk_uq\",\"columns\":[\"transfer_token_permission_id\",\"transfer_token_id\"],\"type\":\"unique\"},{\"name\":\"strapi_transfer_token_permissions_token_lnk_oifk\",\"columns\":[\"transfer_token_permission_ord\"]}],\"foreignKeys\":[{\"name\":\"strapi_transfer_token_permissions_token_lnk_fk\",\"columns\":[\"transfer_token_permission_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"strapi_transfer_token_permissions\",\"onDelete\":\"CASCADE\"},{\"name\":\"strapi_transfer_token_permissions_token_lnk_ifk\",\"columns\":[\"transfer_token_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"strapi_transfer_tokens\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"transfer_token_permission_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"transfer_token_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"transfer_token_permission_ord\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"components_ordered_item_ordered_items_product_lnk\",\"indexes\":[{\"name\":\"components_ordered_item_ordered_items_product_lnk_fk\",\"columns\":[\"ordered_item_id\"]},{\"name\":\"components_ordered_item_ordered_items_product_lnk_ifk\",\"columns\":[\"product_id\"]},{\"name\":\"components_ordered_item_ordered_items_product_lnk_uq\",\"columns\":[\"ordered_item_id\",\"product_id\"],\"type\":\"unique\"}],\"foreignKeys\":[{\"name\":\"components_ordered_item_ordered_items_product_lnk_fk\",\"columns\":[\"ordered_item_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"components_ordered_item_ordered_items\",\"onDelete\":\"CASCADE\"},{\"name\":\"components_ordered_item_ordered_items_product_lnk_ifk\",\"columns\":[\"product_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"products\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"ordered_item_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"product_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]}]}', '2025-02-25 16:02:20', 'd10e39d66ece6e3ad5ac08c8f30641fc');

-- --------------------------------------------------------

--
-- Table structure for table `strapi_history_versions`
--

CREATE TABLE `strapi_history_versions` (
  `id` int(10) UNSIGNED NOT NULL,
  `content_type` varchar(255) NOT NULL,
  `related_document_id` varchar(255) DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`data`)),
  `schema` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`schema`)),
  `created_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `strapi_migrations`
--

CREATE TABLE `strapi_migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `strapi_migrations_internal`
--

CREATE TABLE `strapi_migrations_internal` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `strapi_migrations_internal`
--

INSERT INTO `strapi_migrations_internal` (`id`, `name`, `time`) VALUES
(1, '5.0.0-rename-identifiers-longer-than-max-length', '2024-09-25 13:42:03'),
(2, '5.0.0-02-created-document-id', '2024-09-25 13:42:03'),
(3, '5.0.0-03-created-locale', '2024-09-25 13:42:03'),
(4, '5.0.0-04-created-published-at', '2024-09-25 13:42:03'),
(5, '5.0.0-05-drop-slug-fields-index', '2024-09-25 13:42:04'),
(6, 'core::5.0.0-discard-drafts', '2024-09-25 13:42:04');

-- --------------------------------------------------------

--
-- Table structure for table `strapi_releases`
--

CREATE TABLE `strapi_releases` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `released_at` datetime(6) DEFAULT NULL,
  `scheduled_at` datetime(6) DEFAULT NULL,
  `timezone` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `strapi_release_actions`
--

CREATE TABLE `strapi_release_actions` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_id` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `content_type` varchar(255) DEFAULT NULL,
  `entry_document_id` varchar(255) DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL,
  `is_entry_valid` tinyint(1) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `strapi_release_actions_release_lnk`
--

CREATE TABLE `strapi_release_actions_release_lnk` (
  `id` int(10) UNSIGNED NOT NULL,
  `release_action_id` int(10) UNSIGNED DEFAULT NULL,
  `release_id` int(10) UNSIGNED DEFAULT NULL,
  `release_action_ord` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `strapi_transfer_tokens`
--

CREATE TABLE `strapi_transfer_tokens` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `access_key` varchar(255) DEFAULT NULL,
  `last_used_at` datetime(6) DEFAULT NULL,
  `expires_at` datetime(6) DEFAULT NULL,
  `lifespan` bigint(20) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `strapi_transfer_token_permissions`
--

CREATE TABLE `strapi_transfer_token_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_id` varchar(255) DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `strapi_transfer_token_permissions_token_lnk`
--

CREATE TABLE `strapi_transfer_token_permissions_token_lnk` (
  `id` int(10) UNSIGNED NOT NULL,
  `transfer_token_permission_id` int(10) UNSIGNED DEFAULT NULL,
  `transfer_token_id` int(10) UNSIGNED DEFAULT NULL,
  `transfer_token_permission_ord` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `strapi_webhooks`
--

CREATE TABLE `strapi_webhooks` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `url` longtext DEFAULT NULL,
  `headers` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`headers`)),
  `events` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`events`)),
  `enabled` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `strapi_workflows`
--

CREATE TABLE `strapi_workflows` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `content_types` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`content_types`)),
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `strapi_workflows_stages`
--

CREATE TABLE `strapi_workflows_stages` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `strapi_workflows_stages_permissions_lnk`
--

CREATE TABLE `strapi_workflows_stages_permissions_lnk` (
  `id` int(10) UNSIGNED NOT NULL,
  `workflow_stage_id` int(10) UNSIGNED DEFAULT NULL,
  `permission_id` int(10) UNSIGNED DEFAULT NULL,
  `permission_ord` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `strapi_workflows_stages_workflow_lnk`
--

CREATE TABLE `strapi_workflows_stages_workflow_lnk` (
  `id` int(10) UNSIGNED NOT NULL,
  `workflow_stage_id` int(10) UNSIGNED DEFAULT NULL,
  `workflow_id` int(10) UNSIGNED DEFAULT NULL,
  `workflow_stage_ord` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `upload_folders`
--

CREATE TABLE `upload_folders` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `path_id` int(11) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `upload_folders`
--

INSERT INTO `upload_folders` (`id`, `document_id`, `name`, `path_id`, `path`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`, `locale`) VALUES
(1, 'vc0l9udy2ng5d5l320z9zmr5', 'API Uploads', 1, '/1', '2024-11-21 16:42:22.028000', '2024-11-21 16:42:22.028000', '2024-11-21 16:42:22.028000', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `upload_folders_parent_lnk`
--

CREATE TABLE `upload_folders_parent_lnk` (
  `id` int(10) UNSIGNED NOT NULL,
  `folder_id` int(10) UNSIGNED DEFAULT NULL,
  `inv_folder_id` int(10) UNSIGNED DEFAULT NULL,
  `folder_ord` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `up_permissions`
--

CREATE TABLE `up_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_id` varchar(255) DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `up_permissions`
--

INSERT INTO `up_permissions` (`id`, `document_id`, `action`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`, `locale`) VALUES
(1, 'wyv0gynph6x8dpjmvdynqmzm', 'plugin::users-permissions.user.me', '2024-09-25 13:42:08.269000', '2024-09-25 13:42:08.269000', '2024-09-25 13:42:08.270000', NULL, NULL, NULL),
(2, 'jjmomcq57wfnv85tsbpy3110', 'plugin::users-permissions.auth.changePassword', '2024-09-25 13:42:08.269000', '2024-09-25 13:42:08.269000', '2024-09-25 13:42:08.270000', NULL, NULL, NULL),
(3, 'lcnvn48cnzewhcy388z9sx0d', 'plugin::users-permissions.auth.callback', '2024-09-25 13:42:08.301000', '2024-09-25 13:42:08.301000', '2024-09-25 13:42:08.301000', NULL, NULL, NULL),
(4, 'akmtxs42g0f4ipqu8i5k09fm', 'plugin::users-permissions.auth.connect', '2024-09-25 13:42:08.301000', '2024-09-25 13:42:08.301000', '2024-09-25 13:42:08.302000', NULL, NULL, NULL),
(5, 'mtftapiv0aotqem2us4jltve', 'plugin::users-permissions.auth.resetPassword', '2024-09-25 13:42:08.301000', '2024-09-25 13:42:08.301000', '2024-09-25 13:42:08.303000', NULL, NULL, NULL),
(6, 'jzkkt3k7rtf71ath9lcftctz', 'plugin::users-permissions.auth.forgotPassword', '2024-09-25 13:42:08.301000', '2024-09-25 13:42:08.301000', '2024-09-25 13:42:08.302000', NULL, NULL, NULL),
(7, 'y6btnjahmsi5q1l1v04sod2e', 'plugin::users-permissions.auth.register', '2024-09-25 13:42:08.301000', '2024-09-25 13:42:08.301000', '2024-09-25 13:42:08.303000', NULL, NULL, NULL),
(8, 'hk1qgsr6nsf61nec6f3qvzzx', 'plugin::users-permissions.auth.emailConfirmation', '2024-09-25 13:42:08.301000', '2024-09-25 13:42:08.301000', '2024-09-25 13:42:08.303000', NULL, NULL, NULL),
(9, 'yccebe4walbrtfe892wproh8', 'plugin::users-permissions.auth.sendEmailConfirmation', '2024-09-25 13:42:08.301000', '2024-09-25 13:42:08.301000', '2024-09-25 13:42:08.304000', NULL, NULL, NULL),
(10, 'fxmsj6sijv9aajisqy26awxm', 'api::category.category.find', '2024-09-25 15:43:15.362000', '2024-09-25 15:43:15.362000', '2024-09-25 15:43:15.363000', NULL, NULL, NULL),
(11, 'vsvsw4181hugk6gyp1jqawx3', 'api::category.category.findOne', '2024-09-25 15:43:15.362000', '2024-09-25 15:43:15.362000', '2024-09-25 15:43:15.363000', NULL, NULL, NULL),
(12, 'yrd6j2q0001j5s9eroq8ywfe', 'api::slider.slider.find', '2024-09-26 09:46:30.018000', '2024-09-26 09:46:30.018000', '2024-09-26 09:46:30.018000', NULL, NULL, NULL),
(13, 'j3t4gtl6oxm3q32vb45smvlf', 'api::product.product.find', '2024-09-26 15:57:40.135000', '2024-09-26 15:57:40.135000', '2024-09-26 15:57:40.135000', NULL, NULL, NULL),
(14, 'hu1smmogbghk9am41g6q0a0q', 'api::product.product.findOne', '2024-09-26 15:57:40.135000', '2024-09-26 15:57:40.135000', '2024-09-26 15:57:40.136000', NULL, NULL, NULL),
(15, 'sj1jb3w8qba95dut3bod8lh0', 'api::product.product.find', '2024-10-02 14:43:58.518000', '2024-10-02 14:43:58.518000', '2024-10-02 14:43:58.521000', NULL, NULL, NULL),
(16, 'naf2ilrwfuxraqfjykjlqpfs', 'api::product.product.findOne', '2024-10-02 14:43:58.518000', '2024-10-02 14:43:58.518000', '2024-10-02 14:43:58.522000', NULL, NULL, NULL),
(17, 'bjhslv6i8dl6pv4ofc0t3ohc', 'api::product.product.create', '2024-10-02 14:43:58.518000', '2024-10-02 14:43:58.518000', '2024-10-02 14:43:58.523000', NULL, NULL, NULL),
(18, 'tpnc5vgswnpv0vgsrpwckphn', 'api::product.product.update', '2024-10-02 14:43:58.518000', '2024-10-02 14:43:58.518000', '2024-10-02 14:43:58.525000', NULL, NULL, NULL),
(19, 'e2rc4g7c3n6rm67v77ruwzg4', 'api::product.product.delete', '2024-10-02 14:43:58.518000', '2024-10-02 14:43:58.518000', '2024-10-02 14:43:58.526000', NULL, NULL, NULL),
(20, 'fq6oiyukuogvj3iw55eh4pia', 'api::user-cart.user-cart.find', '2024-10-02 14:43:58.518000', '2024-10-02 14:43:58.518000', '2024-10-02 14:43:58.527000', NULL, NULL, NULL),
(21, 'tyvawklwbjyxlf07j63oejeh', 'api::user-cart.user-cart.findOne', '2024-10-02 14:43:58.518000', '2024-10-02 14:43:58.518000', '2024-10-02 14:43:58.528000', NULL, NULL, NULL),
(22, 'dzcskglvcwm61onivnh2fykg', 'api::user-cart.user-cart.create', '2024-10-02 14:43:58.518000', '2024-10-02 14:43:58.518000', '2024-10-02 14:43:58.529000', NULL, NULL, NULL),
(23, 'ag0bs1jcurnnx4qes9qbgqja', 'api::user-cart.user-cart.update', '2024-10-02 14:43:58.518000', '2024-10-02 14:43:58.518000', '2024-10-02 14:43:58.530000', NULL, NULL, NULL),
(24, 'm71twd1e7j2c4kgngjnsvlpg', 'api::user-cart.user-cart.delete', '2024-10-02 14:43:58.518000', '2024-10-02 14:43:58.518000', '2024-10-02 14:43:58.530000', NULL, NULL, NULL),
(25, 'htht3h41nz7dok2vlk4c7pwj', 'plugin::users-permissions.user.create', '2024-10-02 14:46:16.409000', '2024-10-02 14:46:16.409000', '2024-10-02 14:46:16.410000', NULL, NULL, NULL),
(26, 'sncll7xm7bnt1in7te405gid', 'plugin::users-permissions.user.update', '2024-10-02 14:46:16.410000', '2024-10-02 14:46:16.410000', '2024-10-02 14:46:16.410000', NULL, NULL, NULL),
(27, 'gywkvtu6hqg5edtz37se4q8u', 'plugin::users-permissions.user.find', '2024-10-02 14:46:16.410000', '2024-10-02 14:46:16.410000', '2024-10-02 14:46:16.411000', NULL, NULL, NULL),
(28, 'j59ueyckuikug00jz50w9wqm', 'plugin::users-permissions.user.findOne', '2024-10-02 14:46:16.410000', '2024-10-02 14:46:16.410000', '2024-10-02 14:46:16.411000', NULL, NULL, NULL),
(29, 'g26cih4igie2ejojhwr76duu', 'plugin::users-permissions.user.count', '2024-10-02 14:46:16.410000', '2024-10-02 14:46:16.410000', '2024-10-02 14:46:16.411000', NULL, NULL, NULL),
(30, 'lkabx6oplrv3az16s1boemow', 'plugin::users-permissions.user.destroy', '2024-10-02 14:46:16.410000', '2024-10-02 14:46:16.410000', '2024-10-02 14:46:16.411000', NULL, NULL, NULL),
(31, 'g1c3q00wsg75h276r67z5swi', 'api::user-cart.user-cart.find', '2024-10-02 17:31:13.928000', '2024-10-02 17:31:13.928000', '2024-10-02 17:31:13.929000', NULL, NULL, NULL),
(33, 'wedzfh35gipmof3wgqe9yn65', 'api::user-cart.user-cart.findOne', '2024-10-06 17:49:04.313000', '2024-10-06 17:49:04.313000', '2024-10-06 17:49:04.313000', NULL, NULL, NULL),
(36, 'i9lvpv35ropfoeu6zc2l8w95', 'api::order.order.find', '2024-10-09 13:07:36.826000', '2024-10-09 13:07:36.826000', '2024-10-09 13:07:36.827000', NULL, NULL, NULL),
(37, 'qvxp3dfx6wyjzsxnwwi90zyp', 'api::order.order.findOne', '2024-10-09 13:07:36.826000', '2024-10-09 13:07:36.826000', '2024-10-09 13:07:36.828000', NULL, NULL, NULL),
(38, 'upk18tw6ik24me90yovo1dcx', 'api::order.order.create', '2024-10-09 13:07:36.826000', '2024-10-09 13:07:36.826000', '2024-10-09 13:07:36.830000', NULL, NULL, NULL),
(39, 'arp8h2r5py1qt2309wtqsckw', 'api::order.order.update', '2024-10-09 13:07:36.826000', '2024-10-09 13:07:36.826000', '2024-10-09 13:07:36.831000', NULL, NULL, NULL),
(40, 'h4i4771s0al6lqy11gtagc2h', 'api::order.order.delete', '2024-10-09 13:07:36.826000', '2024-10-09 13:07:36.826000', '2024-10-09 13:07:36.833000', NULL, NULL, NULL),
(41, 'xnzn4fmm6izjr5887grgvywb', 'api::color.color.find', '2024-10-27 18:13:07.991000', '2024-10-27 18:13:07.991000', '2024-10-27 18:13:07.991000', NULL, NULL, NULL),
(42, 'e4n0o8apuxsbc7l04ak4gbu2', 'api::color.color.findOne', '2024-10-27 18:13:07.991000', '2024-10-27 18:13:07.991000', '2024-10-27 18:13:07.992000', NULL, NULL, NULL),
(43, 'm8ok014gag33gacjystxubf6', 'api::color.color.find', '2024-10-27 18:36:16.216000', '2024-10-27 18:36:16.216000', '2024-10-27 18:36:16.217000', NULL, NULL, NULL),
(44, 'ga5ca1uubk3q8x2o26m46b68', 'api::color.color.findOne', '2024-10-27 18:36:16.216000', '2024-10-27 18:36:16.216000', '2024-10-27 18:36:16.218000', NULL, NULL, NULL),
(45, 'to32j8zloxtrp2ir3hb5kxkx', 'api::brand.brand.find', '2024-11-07 10:56:32.163000', '2024-11-07 10:56:32.163000', '2024-11-07 10:56:32.163000', NULL, NULL, NULL),
(46, 'twgqlsxxd87gt2sjcxr7mhik', 'api::brand.brand.findOne', '2024-11-07 10:56:32.163000', '2024-11-07 10:56:32.163000', '2024-11-07 10:56:32.164000', NULL, NULL, NULL),
(47, 'ppugvphu8g7qlawdfcqa3u14', 'api::about-page.about-page.find', '2024-11-18 17:00:43.254000', '2024-11-18 17:00:43.254000', '2024-11-18 17:00:43.256000', NULL, NULL, NULL),
(48, 'zsvb2g5gmr48bjnumdqci2qt', 'plugin::upload.content-api.upload', '2024-11-21 16:42:06.922000', '2024-11-21 16:42:06.922000', '2024-11-21 16:42:06.923000', NULL, NULL, NULL),
(49, 'qbn9cy49zo0e9vqve1eylimq', 'plugin::upload.content-api.find', '2024-11-21 16:46:20.190000', '2024-11-21 16:46:20.190000', '2024-11-21 16:46:20.190000', NULL, NULL, NULL),
(50, 'fyprfc59jltda5f8krqzleol', 'plugin::upload.content-api.findOne', '2024-11-21 16:46:20.190000', '2024-11-21 16:46:20.190000', '2024-11-21 16:46:20.190000', NULL, NULL, NULL),
(51, 'yfff853gokujlextp0i395pt', 'api::wishlist.wishlist.find', '2025-02-25 17:29:44.864000', '2025-02-25 17:29:44.864000', '2025-02-25 17:29:44.868000', NULL, NULL, NULL),
(52, 'mioyo5oja2z8o91zi6dc0swk', 'api::wishlist.wishlist.findOne', '2025-02-25 17:29:44.865000', '2025-02-25 17:29:44.865000', '2025-02-25 17:29:44.869000', NULL, NULL, NULL),
(53, 'f1i71hzyc1granqb0xhcg8zb', 'api::wishlist.wishlist.create', '2025-02-25 17:29:44.865000', '2025-02-25 17:29:44.865000', '2025-02-25 17:29:44.870000', NULL, NULL, NULL),
(54, 'y3r9jfq8hqtroxba2hlffwan', 'api::wishlist.wishlist.update', '2025-02-25 17:29:44.865000', '2025-02-25 17:29:44.865000', '2025-02-25 17:29:44.872000', NULL, NULL, NULL),
(55, 'cx8cgrmo9vsr3og0eh9t9bgm', 'api::wishlist.wishlist.delete', '2025-02-25 17:29:44.865000', '2025-02-25 17:29:44.865000', '2025-02-25 17:29:44.872000', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `up_permissions_role_lnk`
--

CREATE TABLE `up_permissions_role_lnk` (
  `id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED DEFAULT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `permission_ord` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `up_permissions_role_lnk`
--

INSERT INTO `up_permissions_role_lnk` (`id`, `permission_id`, `role_id`, `permission_ord`) VALUES
(1, 1, 1, 1),
(2, 2, 1, 1),
(3, 3, 2, 1),
(4, 4, 2, 1),
(5, 6, 2, 2),
(6, 7, 2, 2),
(7, 5, 2, 2),
(8, 8, 2, 2),
(9, 9, 2, 2),
(10, 10, 2, 3),
(11, 11, 2, 3),
(12, 12, 2, 4),
(13, 13, 2, 5),
(14, 14, 2, 5),
(15, 15, 1, 2),
(16, 16, 1, 2),
(17, 17, 1, 2),
(18, 18, 1, 2),
(19, 19, 1, 2),
(20, 20, 1, 2),
(21, 21, 1, 2),
(22, 22, 1, 3),
(23, 23, 1, 3),
(24, 24, 1, 3),
(25, 25, 1, 4),
(26, 26, 1, 4),
(27, 27, 1, 4),
(28, 28, 1, 4),
(29, 29, 1, 4),
(30, 30, 1, 4),
(31, 31, 2, 6),
(33, 33, 2, 8),
(36, 37, 1, 5),
(37, 36, 1, 5),
(38, 38, 1, 5),
(39, 39, 1, 5),
(40, 40, 1, 5),
(41, 41, 1, 6),
(42, 42, 1, 6),
(43, 43, 2, 9),
(44, 44, 2, 9),
(45, 46, 2, 10),
(46, 45, 2, 10),
(47, 47, 2, 11),
(48, 48, 1, 7),
(49, 49, 1, 8),
(50, 50, 1, 8),
(51, 51, 1, 9),
(52, 52, 1, 9),
(53, 53, 1, 9),
(54, 55, 1, 9),
(55, 54, 1, 9);

-- --------------------------------------------------------

--
-- Table structure for table `up_roles`
--

CREATE TABLE `up_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `up_roles`
--

INSERT INTO `up_roles` (`id`, `document_id`, `name`, `description`, `type`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`, `locale`) VALUES
(1, 'z0q13g2cram73da2uhxeplxr', 'Authenticated', 'Default role given to authenticated user.', 'authenticated', '2024-09-25 13:42:08.249000', '2025-02-25 17:29:44.851000', '2024-09-25 13:42:08.249000', NULL, NULL, NULL),
(2, 'tym65tnq9izfbjfr04t8gfie', 'Public', 'Default role given to unauthenticated user.', 'public', '2024-09-25 13:42:08.256000', '2024-11-18 17:00:43.244000', '2024-09-25 13:42:08.256000', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `up_users`
--

CREATE TABLE `up_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_id` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `reset_password_token` varchar(255) DEFAULT NULL,
  `confirmation_token` varchar(255) DEFAULT NULL,
  `confirmed` tinyint(1) DEFAULT NULL,
  `blocked` tinyint(1) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `about` longtext DEFAULT NULL,
  `profile_image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `up_users`
--

INSERT INTO `up_users` (`id`, `document_id`, `username`, `email`, `provider`, `password`, `reset_password_token`, `confirmation_token`, `confirmed`, `blocked`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`, `locale`, `mobile`, `name`, `about`, `profile_image`) VALUES
(7, 'u5zk4xkhnyloxvy11m7lbdf6', 'testuser', 'test01@exp.com', 'local', '$2a$10$9QIDPQANGBMzE3GIVVrJ/.2VNcaBVI7MSGP.j3K4jA6USdfpgxUKG', NULL, NULL, 1, 0, '2024-10-02 10:04:50.343000', '2024-10-02 10:04:50.343000', '2024-10-02 10:04:50.347000', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 'wihjfiu5jpucfkwr3vs80izr', 'newuser', 'new@tst.com', 'local', '$2a$10$vZaV1IWR5aWrvJy8C.V5YekVL53opXqs.bUJsssH.LwDBO0R0SZFa', NULL, NULL, 1, 0, '2024-10-02 10:31:34.597000', '2024-10-02 10:31:34.597000', '2024-10-02 10:31:34.598000', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 'z9fcrgy6xjq33wm0l74dhr1k', 'jewel', 'jewel@admin.com', 'local', '$2a$10$SyXjTf6ImVXvcj9PVjWvS.60QimVNd5YlCNd6NxJmbFJONiXKrk3.', NULL, NULL, 1, 0, '2024-10-02 13:23:29.638000', '2024-10-02 13:23:29.638000', '2024-10-02 13:23:29.640000', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 'ge5zqi5xeoftvatxxgltqsbk', 'sima', 'sima@gmail.com', 'local', '$2a$10$IpN8IIq2DMmdM6Uivv9DauiyxG.HipDicHeG8LATjWK6jZjKFJwc.', NULL, NULL, 1, 0, '2024-10-29 11:29:25.544000', '2024-11-25 13:08:01.186000', '2024-11-21 15:34:30.759000', NULL, 1, NULL, '0199999993', 'Sima Khan', 'Testing bio updated man. This is my bio', 'http://localhost:1337/uploads/profile_7ba5d37c7c.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `up_users_role_lnk`
--

CREATE TABLE `up_users_role_lnk` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `user_ord` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `up_users_role_lnk`
--

INSERT INTO `up_users_role_lnk` (`id`, `user_id`, `role_id`, `user_ord`) VALUES
(7, 7, 1, 1),
(8, 8, 1, 2),
(9, 9, 1, 3),
(10, 10, 1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `user_carts`
--

CREATE TABLE `user_carts` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_id` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `stock` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_carts`
--

INSERT INTO `user_carts` (`id`, `document_id`, `quantity`, `amount`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`, `locale`, `user_id`, `product_id`, `color`, `stock`) VALUES
(719, 'pfbjipsjsaziin88ibrifm23', 1, 70, '2025-02-24 15:40:55.177000', '2025-02-24 15:40:55.177000', NULL, NULL, NULL, NULL, 10, 114, 'Green', 46),
(720, 'pfbjipsjsaziin88ibrifm23', 1, 70, '2025-02-24 15:40:55.177000', '2025-02-24 15:40:55.177000', '2025-02-24 15:40:55.212000', NULL, NULL, NULL, 10, 114, 'Green', 46),
(755, 'n141a35hlth4wod9h0zcld65', 1, 2000, '2025-03-04 15:08:19.801000', '2025-03-04 15:08:19.801000', NULL, NULL, NULL, NULL, 10, 150, NULL, 49),
(756, 'n141a35hlth4wod9h0zcld65', 1, 2000, '2025-03-04 15:08:19.801000', '2025-03-04 15:08:19.801000', '2025-03-04 15:08:19.833000', NULL, NULL, NULL, 10, 150, NULL, 49);

-- --------------------------------------------------------

--
-- Table structure for table `user_carts_products_lnk`
--

CREATE TABLE `user_carts_products_lnk` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_cart_id` int(10) UNSIGNED DEFAULT NULL,
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `product_ord` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_carts_products_lnk`
--

INSERT INTO `user_carts_products_lnk` (`id`, `user_cart_id`, `product_id`, `product_ord`) VALUES
(709, 719, 40, 1),
(710, 720, 114, 1),
(745, 755, 80, 1),
(746, 756, 150, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_carts_users_permissions_user_lnk`
--

CREATE TABLE `user_carts_users_permissions_user_lnk` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_cart_id` int(10) UNSIGNED DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_carts_users_permissions_user_lnk`
--

INSERT INTO `user_carts_users_permissions_user_lnk` (`id`, `user_cart_id`, `user_id`) VALUES
(719, 719, 10),
(720, 720, 10),
(755, 755, 10),
(756, 756, 10);

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_id` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `document_id`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`, `locale`) VALUES
(33, 'pjhflan6erb8m4frdmz15im4', '2025-02-27 14:18:44.195000', '2025-02-27 14:18:44.195000', NULL, NULL, NULL, NULL),
(34, 'pjhflan6erb8m4frdmz15im4', '2025-02-27 14:18:44.195000', '2025-02-27 14:18:44.195000', '2025-02-27 14:18:44.208000', NULL, NULL, NULL),
(35, 'yg2c7s4bcvmb8cxvtkcza4eb', '2025-02-27 14:18:49.905000', '2025-02-27 14:18:49.905000', NULL, NULL, NULL, NULL),
(36, 'yg2c7s4bcvmb8cxvtkcza4eb', '2025-02-27 14:18:49.905000', '2025-02-27 14:18:49.905000', '2025-02-27 14:18:49.920000', NULL, NULL, NULL),
(45, 'wvd123zzo7cb66ffmshtm58o', '2025-02-27 15:54:38.893000', '2025-02-27 15:54:38.893000', NULL, NULL, NULL, NULL),
(46, 'wvd123zzo7cb66ffmshtm58o', '2025-02-27 15:54:38.893000', '2025-02-27 15:54:38.893000', '2025-02-27 15:54:38.915000', NULL, NULL, NULL),
(47, 'm9w9jkedbo36nus0dd6oa5xd', '2025-02-27 15:54:46.531000', '2025-02-27 15:54:46.531000', NULL, NULL, NULL, NULL),
(48, 'm9w9jkedbo36nus0dd6oa5xd', '2025-02-27 15:54:46.531000', '2025-02-27 15:54:46.531000', '2025-02-27 15:54:46.546000', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wishlists_products_lnk`
--

CREATE TABLE `wishlists_products_lnk` (
  `id` int(10) UNSIGNED NOT NULL,
  `wishlist_id` int(10) UNSIGNED DEFAULT NULL,
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `product_ord` double UNSIGNED DEFAULT NULL,
  `wishlist_ord` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `wishlists_products_lnk`
--

INSERT INTO `wishlists_products_lnk` (`id`, `wishlist_id`, `product_id`, `product_ord`, `wishlist_ord`) VALUES
(33, 33, 102, 1, 1),
(34, 34, 102, 1, 2),
(35, 35, 124, 1, 1),
(36, 36, 124, 1, 2),
(45, 45, 130, 1, 1),
(46, 46, 130, 1, 2),
(47, 47, 115, 1, 1),
(48, 48, 115, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `wishlists_users_permissions_user_lnk`
--

CREATE TABLE `wishlists_users_permissions_user_lnk` (
  `id` int(10) UNSIGNED NOT NULL,
  `wishlist_id` int(10) UNSIGNED DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `wishlists_users_permissions_user_lnk`
--

INSERT INTO `wishlists_users_permissions_user_lnk` (`id`, `wishlist_id`, `user_id`) VALUES
(33, 33, 10),
(34, 34, 10),
(35, 35, 10),
(36, 36, 10),
(45, 45, 10),
(46, 46, 10),
(47, 47, 10),
(48, 48, 10);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about_pages`
--
ALTER TABLE `about_pages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `about_pages_documents_idx` (`document_id`,`locale`,`published_at`),
  ADD KEY `about_pages_created_by_id_fk` (`created_by_id`),
  ADD KEY `about_pages_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_permissions_documents_idx` (`document_id`,`locale`,`published_at`),
  ADD KEY `admin_permissions_created_by_id_fk` (`created_by_id`),
  ADD KEY `admin_permissions_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `admin_permissions_role_lnk`
--
ALTER TABLE `admin_permissions_role_lnk`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_permissions_role_lnk_uq` (`permission_id`,`role_id`),
  ADD KEY `admin_permissions_role_lnk_fk` (`permission_id`),
  ADD KEY `admin_permissions_role_lnk_ifk` (`role_id`),
  ADD KEY `admin_permissions_role_lnk_oifk` (`permission_ord`);

--
-- Indexes for table `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_roles_documents_idx` (`document_id`,`locale`,`published_at`),
  ADD KEY `admin_roles_created_by_id_fk` (`created_by_id`),
  ADD KEY `admin_roles_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_users_documents_idx` (`document_id`,`locale`,`published_at`),
  ADD KEY `admin_users_created_by_id_fk` (`created_by_id`),
  ADD KEY `admin_users_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `admin_users_roles_lnk`
--
ALTER TABLE `admin_users_roles_lnk`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_users_roles_lnk_uq` (`user_id`,`role_id`),
  ADD KEY `admin_users_roles_lnk_fk` (`user_id`),
  ADD KEY `admin_users_roles_lnk_ifk` (`role_id`),
  ADD KEY `admin_users_roles_lnk_ofk` (`role_ord`),
  ADD KEY `admin_users_roles_lnk_oifk` (`user_ord`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`),
  ADD KEY `brands_documents_idx` (`document_id`,`locale`,`published_at`),
  ADD KEY `brands_created_by_id_fk` (`created_by_id`),
  ADD KEY `brands_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `brands_products_lnk`
--
ALTER TABLE `brands_products_lnk`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `brands_products_lnk_uq` (`brand_id`,`product_id`),
  ADD KEY `brands_products_lnk_fk` (`brand_id`),
  ADD KEY `brands_products_lnk_ifk` (`product_id`),
  ADD KEY `brands_products_lnk_ofk` (`product_ord`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_documents_idx` (`document_id`,`locale`,`published_at`),
  ADD KEY `categories_created_by_id_fk` (`created_by_id`),
  ADD KEY `categories_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `colors_documents_idx` (`document_id`,`locale`,`published_at`),
  ADD KEY `colors_created_by_id_fk` (`created_by_id`),
  ADD KEY `colors_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `components_ordered_item_ordered_items`
--
ALTER TABLE `components_ordered_item_ordered_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `components_ordered_item_ordered_items_product_lnk`
--
ALTER TABLE `components_ordered_item_ordered_items_product_lnk`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `components_ordered_item_ordered_items_product_lnk_uq` (`ordered_item_id`,`product_id`),
  ADD KEY `components_ordered_item_ordered_items_product_lnk_fk` (`ordered_item_id`),
  ADD KEY `components_ordered_item_ordered_items_product_lnk_ifk` (`product_id`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `upload_files_folder_path_index` (`folder_path`),
  ADD KEY `upload_files_created_at_index` (`created_at`),
  ADD KEY `upload_files_updated_at_index` (`updated_at`),
  ADD KEY `upload_files_name_index` (`name`),
  ADD KEY `upload_files_size_index` (`size`),
  ADD KEY `upload_files_ext_index` (`ext`),
  ADD KEY `files_documents_idx` (`document_id`,`locale`,`published_at`),
  ADD KEY `files_created_by_id_fk` (`created_by_id`),
  ADD KEY `files_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `files_folder_lnk`
--
ALTER TABLE `files_folder_lnk`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `files_folder_lnk_uq` (`file_id`,`folder_id`),
  ADD KEY `files_folder_lnk_fk` (`file_id`),
  ADD KEY `files_folder_lnk_ifk` (`folder_id`),
  ADD KEY `files_folder_lnk_oifk` (`file_ord`);

--
-- Indexes for table `files_related_mph`
--
ALTER TABLE `files_related_mph`
  ADD PRIMARY KEY (`id`),
  ADD KEY `files_related_mph_fk` (`file_id`),
  ADD KEY `files_related_mph_oidx` (`order`),
  ADD KEY `files_related_mph_idix` (`related_id`);

--
-- Indexes for table `i18n_locale`
--
ALTER TABLE `i18n_locale`
  ADD PRIMARY KEY (`id`),
  ADD KEY `i18n_locale_documents_idx` (`document_id`,`locale`,`published_at`),
  ADD KEY `i18n_locale_created_by_id_fk` (`created_by_id`),
  ADD KEY `i18n_locale_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_documents_idx` (`document_id`,`locale`,`published_at`),
  ADD KEY `orders_created_by_id_fk` (`created_by_id`),
  ADD KEY `orders_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `orders_cmps`
--
ALTER TABLE `orders_cmps`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `orders_uq` (`entity_id`,`cmp_id`,`field`,`component_type`),
  ADD KEY `orders_field_idx` (`field`),
  ADD KEY `orders_component_type_idx` (`component_type`),
  ADD KEY `orders_entity_fk` (`entity_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_documents_idx` (`document_id`,`locale`,`published_at`),
  ADD KEY `products_created_by_id_fk` (`created_by_id`),
  ADD KEY `products_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `products_brand_lnk`
--
ALTER TABLE `products_brand_lnk`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_brand_lnk_uq` (`product_id`,`brand_id`),
  ADD KEY `products_brand_lnk_fk` (`product_id`),
  ADD KEY `products_brand_lnk_ifk` (`brand_id`);

--
-- Indexes for table `products_categories_lnk`
--
ALTER TABLE `products_categories_lnk`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_categories_lnk_uq` (`product_id`,`category_id`),
  ADD KEY `products_categories_lnk_fk` (`product_id`),
  ADD KEY `products_categories_lnk_ifk` (`category_id`),
  ADD KEY `products_categories_lnk_ofk` (`category_ord`),
  ADD KEY `products_categories_lnk_oifk` (`product_ord`);

--
-- Indexes for table `products_colors_lnk`
--
ALTER TABLE `products_colors_lnk`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_colors_lnk_uq` (`product_id`,`color_id`),
  ADD KEY `products_colors_lnk_fk` (`product_id`),
  ADD KEY `products_colors_lnk_ifk` (`color_id`),
  ADD KEY `products_colors_lnk_ofk` (`color_ord`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sliders_documents_idx` (`document_id`,`locale`,`published_at`),
  ADD KEY `sliders_created_by_id_fk` (`created_by_id`),
  ADD KEY `sliders_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `strapi_api_tokens`
--
ALTER TABLE `strapi_api_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `strapi_api_tokens_documents_idx` (`document_id`,`locale`,`published_at`),
  ADD KEY `strapi_api_tokens_created_by_id_fk` (`created_by_id`),
  ADD KEY `strapi_api_tokens_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `strapi_api_token_permissions`
--
ALTER TABLE `strapi_api_token_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `strapi_api_token_permissions_documents_idx` (`document_id`,`locale`,`published_at`),
  ADD KEY `strapi_api_token_permissions_created_by_id_fk` (`created_by_id`),
  ADD KEY `strapi_api_token_permissions_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `strapi_api_token_permissions_token_lnk`
--
ALTER TABLE `strapi_api_token_permissions_token_lnk`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `strapi_api_token_permissions_token_lnk_uq` (`api_token_permission_id`,`api_token_id`),
  ADD KEY `strapi_api_token_permissions_token_lnk_fk` (`api_token_permission_id`),
  ADD KEY `strapi_api_token_permissions_token_lnk_ifk` (`api_token_id`),
  ADD KEY `strapi_api_token_permissions_token_lnk_oifk` (`api_token_permission_ord`);

--
-- Indexes for table `strapi_core_store_settings`
--
ALTER TABLE `strapi_core_store_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `strapi_database_schema`
--
ALTER TABLE `strapi_database_schema`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `strapi_history_versions`
--
ALTER TABLE `strapi_history_versions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `strapi_history_versions_created_by_id_fk` (`created_by_id`);

--
-- Indexes for table `strapi_migrations`
--
ALTER TABLE `strapi_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `strapi_migrations_internal`
--
ALTER TABLE `strapi_migrations_internal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `strapi_releases`
--
ALTER TABLE `strapi_releases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `strapi_releases_documents_idx` (`document_id`,`locale`,`published_at`),
  ADD KEY `strapi_releases_created_by_id_fk` (`created_by_id`),
  ADD KEY `strapi_releases_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `strapi_release_actions`
--
ALTER TABLE `strapi_release_actions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `strapi_release_actions_documents_idx` (`document_id`,`locale`,`published_at`),
  ADD KEY `strapi_release_actions_created_by_id_fk` (`created_by_id`),
  ADD KEY `strapi_release_actions_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `strapi_release_actions_release_lnk`
--
ALTER TABLE `strapi_release_actions_release_lnk`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `strapi_release_actions_release_lnk_uq` (`release_action_id`,`release_id`),
  ADD KEY `strapi_release_actions_release_lnk_fk` (`release_action_id`),
  ADD KEY `strapi_release_actions_release_lnk_ifk` (`release_id`),
  ADD KEY `strapi_release_actions_release_lnk_oifk` (`release_action_ord`);

--
-- Indexes for table `strapi_transfer_tokens`
--
ALTER TABLE `strapi_transfer_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `strapi_transfer_tokens_documents_idx` (`document_id`,`locale`,`published_at`),
  ADD KEY `strapi_transfer_tokens_created_by_id_fk` (`created_by_id`),
  ADD KEY `strapi_transfer_tokens_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `strapi_transfer_token_permissions`
--
ALTER TABLE `strapi_transfer_token_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `strapi_transfer_token_permissions_documents_idx` (`document_id`,`locale`,`published_at`),
  ADD KEY `strapi_transfer_token_permissions_created_by_id_fk` (`created_by_id`),
  ADD KEY `strapi_transfer_token_permissions_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `strapi_transfer_token_permissions_token_lnk`
--
ALTER TABLE `strapi_transfer_token_permissions_token_lnk`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `strapi_transfer_token_permissions_token_lnk_uq` (`transfer_token_permission_id`,`transfer_token_id`),
  ADD KEY `strapi_transfer_token_permissions_token_lnk_fk` (`transfer_token_permission_id`),
  ADD KEY `strapi_transfer_token_permissions_token_lnk_ifk` (`transfer_token_id`),
  ADD KEY `strapi_transfer_token_permissions_token_lnk_oifk` (`transfer_token_permission_ord`);

--
-- Indexes for table `strapi_webhooks`
--
ALTER TABLE `strapi_webhooks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `strapi_workflows`
--
ALTER TABLE `strapi_workflows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `strapi_workflows_documents_idx` (`document_id`,`locale`,`published_at`),
  ADD KEY `strapi_workflows_created_by_id_fk` (`created_by_id`),
  ADD KEY `strapi_workflows_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `strapi_workflows_stages`
--
ALTER TABLE `strapi_workflows_stages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `strapi_workflows_stages_documents_idx` (`document_id`,`locale`,`published_at`),
  ADD KEY `strapi_workflows_stages_created_by_id_fk` (`created_by_id`),
  ADD KEY `strapi_workflows_stages_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `strapi_workflows_stages_permissions_lnk`
--
ALTER TABLE `strapi_workflows_stages_permissions_lnk`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `strapi_workflows_stages_permissions_lnk_uq` (`workflow_stage_id`,`permission_id`),
  ADD KEY `strapi_workflows_stages_permissions_lnk_fk` (`workflow_stage_id`),
  ADD KEY `strapi_workflows_stages_permissions_lnk_ifk` (`permission_id`),
  ADD KEY `strapi_workflows_stages_permissions_lnk_ofk` (`permission_ord`);

--
-- Indexes for table `strapi_workflows_stages_workflow_lnk`
--
ALTER TABLE `strapi_workflows_stages_workflow_lnk`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `strapi_workflows_stages_workflow_lnk_uq` (`workflow_stage_id`,`workflow_id`),
  ADD KEY `strapi_workflows_stages_workflow_lnk_fk` (`workflow_stage_id`),
  ADD KEY `strapi_workflows_stages_workflow_lnk_ifk` (`workflow_id`),
  ADD KEY `strapi_workflows_stages_workflow_lnk_oifk` (`workflow_stage_ord`);

--
-- Indexes for table `upload_folders`
--
ALTER TABLE `upload_folders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `upload_folders_path_id_index` (`path_id`),
  ADD UNIQUE KEY `upload_folders_path_index` (`path`),
  ADD KEY `upload_folders_documents_idx` (`document_id`,`locale`,`published_at`),
  ADD KEY `upload_folders_created_by_id_fk` (`created_by_id`),
  ADD KEY `upload_folders_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `upload_folders_parent_lnk`
--
ALTER TABLE `upload_folders_parent_lnk`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `upload_folders_parent_lnk_uq` (`folder_id`,`inv_folder_id`),
  ADD KEY `upload_folders_parent_lnk_fk` (`folder_id`),
  ADD KEY `upload_folders_parent_lnk_ifk` (`inv_folder_id`),
  ADD KEY `upload_folders_parent_lnk_oifk` (`folder_ord`);

--
-- Indexes for table `up_permissions`
--
ALTER TABLE `up_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `up_permissions_documents_idx` (`document_id`,`locale`,`published_at`),
  ADD KEY `up_permissions_created_by_id_fk` (`created_by_id`),
  ADD KEY `up_permissions_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `up_permissions_role_lnk`
--
ALTER TABLE `up_permissions_role_lnk`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `up_permissions_role_lnk_uq` (`permission_id`,`role_id`),
  ADD KEY `up_permissions_role_lnk_fk` (`permission_id`),
  ADD KEY `up_permissions_role_lnk_ifk` (`role_id`),
  ADD KEY `up_permissions_role_lnk_oifk` (`permission_ord`);

--
-- Indexes for table `up_roles`
--
ALTER TABLE `up_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `up_roles_documents_idx` (`document_id`,`locale`,`published_at`),
  ADD KEY `up_roles_created_by_id_fk` (`created_by_id`),
  ADD KEY `up_roles_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `up_users`
--
ALTER TABLE `up_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `up_users_documents_idx` (`document_id`,`locale`,`published_at`),
  ADD KEY `up_users_created_by_id_fk` (`created_by_id`),
  ADD KEY `up_users_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `up_users_role_lnk`
--
ALTER TABLE `up_users_role_lnk`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `up_users_role_lnk_uq` (`user_id`,`role_id`),
  ADD KEY `up_users_role_lnk_fk` (`user_id`),
  ADD KEY `up_users_role_lnk_ifk` (`role_id`),
  ADD KEY `up_users_role_lnk_oifk` (`user_ord`);

--
-- Indexes for table `user_carts`
--
ALTER TABLE `user_carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_carts_documents_idx` (`document_id`,`locale`,`published_at`),
  ADD KEY `user_carts_created_by_id_fk` (`created_by_id`),
  ADD KEY `user_carts_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `user_carts_products_lnk`
--
ALTER TABLE `user_carts_products_lnk`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_carts_products_lnk_uq` (`user_cart_id`,`product_id`),
  ADD KEY `user_carts_products_lnk_fk` (`user_cart_id`),
  ADD KEY `user_carts_products_lnk_ifk` (`product_id`),
  ADD KEY `user_carts_products_lnk_ofk` (`product_ord`);

--
-- Indexes for table `user_carts_users_permissions_user_lnk`
--
ALTER TABLE `user_carts_users_permissions_user_lnk`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_carts_users_permissions_user_lnk_uq` (`user_cart_id`,`user_id`),
  ADD KEY `user_carts_users_permissions_user_lnk_fk` (`user_cart_id`),
  ADD KEY `user_carts_users_permissions_user_lnk_ifk` (`user_id`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wishlists_documents_idx` (`document_id`,`locale`,`published_at`),
  ADD KEY `wishlists_created_by_id_fk` (`created_by_id`),
  ADD KEY `wishlists_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `wishlists_products_lnk`
--
ALTER TABLE `wishlists_products_lnk`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `wishlists_products_lnk_uq` (`wishlist_id`,`product_id`),
  ADD KEY `wishlists_products_lnk_fk` (`wishlist_id`),
  ADD KEY `wishlists_products_lnk_ifk` (`product_id`),
  ADD KEY `wishlists_products_lnk_ofk` (`product_ord`),
  ADD KEY `wishlists_products_lnk_oifk` (`wishlist_ord`);

--
-- Indexes for table `wishlists_users_permissions_user_lnk`
--
ALTER TABLE `wishlists_users_permissions_user_lnk`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `wishlists_users_permissions_user_lnk_uq` (`wishlist_id`,`user_id`),
  ADD KEY `wishlists_users_permissions_user_lnk_fk` (`wishlist_id`),
  ADD KEY `wishlists_users_permissions_user_lnk_ifk` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about_pages`
--
ALTER TABLE `about_pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=206;

--
-- AUTO_INCREMENT for table `admin_permissions_role_lnk`
--
ALTER TABLE `admin_permissions_role_lnk`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=206;

--
-- AUTO_INCREMENT for table `admin_roles`
--
ALTER TABLE `admin_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admin_users_roles_lnk`
--
ALTER TABLE `admin_users_roles_lnk`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `brands_products_lnk`
--
ALTER TABLE `brands_products_lnk`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `colors`
--
ALTER TABLE `colors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `components_ordered_item_ordered_items`
--
ALTER TABLE `components_ordered_item_ordered_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=470;

--
-- AUTO_INCREMENT for table `components_ordered_item_ordered_items_product_lnk`
--
ALTER TABLE `components_ordered_item_ordered_items_product_lnk`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=452;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT for table `files_folder_lnk`
--
ALTER TABLE `files_folder_lnk`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `files_related_mph`
--
ALTER TABLE `files_related_mph`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=336;

--
-- AUTO_INCREMENT for table `i18n_locale`
--
ALTER TABLE `i18n_locale`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=235;

--
-- AUTO_INCREMENT for table `orders_cmps`
--
ALTER TABLE `orders_cmps`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=522;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=153;

--
-- AUTO_INCREMENT for table `products_brand_lnk`
--
ALTER TABLE `products_brand_lnk`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `products_categories_lnk`
--
ALTER TABLE `products_categories_lnk`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=174;

--
-- AUTO_INCREMENT for table `products_colors_lnk`
--
ALTER TABLE `products_colors_lnk`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `strapi_api_tokens`
--
ALTER TABLE `strapi_api_tokens`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `strapi_api_token_permissions`
--
ALTER TABLE `strapi_api_token_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `strapi_api_token_permissions_token_lnk`
--
ALTER TABLE `strapi_api_token_permissions_token_lnk`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `strapi_core_store_settings`
--
ALTER TABLE `strapi_core_store_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `strapi_database_schema`
--
ALTER TABLE `strapi_database_schema`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `strapi_history_versions`
--
ALTER TABLE `strapi_history_versions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `strapi_migrations`
--
ALTER TABLE `strapi_migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `strapi_migrations_internal`
--
ALTER TABLE `strapi_migrations_internal`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `strapi_releases`
--
ALTER TABLE `strapi_releases`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `strapi_release_actions`
--
ALTER TABLE `strapi_release_actions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `strapi_release_actions_release_lnk`
--
ALTER TABLE `strapi_release_actions_release_lnk`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `strapi_transfer_tokens`
--
ALTER TABLE `strapi_transfer_tokens`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `strapi_transfer_token_permissions`
--
ALTER TABLE `strapi_transfer_token_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `strapi_transfer_token_permissions_token_lnk`
--
ALTER TABLE `strapi_transfer_token_permissions_token_lnk`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `strapi_webhooks`
--
ALTER TABLE `strapi_webhooks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `strapi_workflows`
--
ALTER TABLE `strapi_workflows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `strapi_workflows_stages`
--
ALTER TABLE `strapi_workflows_stages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `strapi_workflows_stages_permissions_lnk`
--
ALTER TABLE `strapi_workflows_stages_permissions_lnk`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `strapi_workflows_stages_workflow_lnk`
--
ALTER TABLE `strapi_workflows_stages_workflow_lnk`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `upload_folders`
--
ALTER TABLE `upload_folders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `upload_folders_parent_lnk`
--
ALTER TABLE `upload_folders_parent_lnk`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `up_permissions`
--
ALTER TABLE `up_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `up_permissions_role_lnk`
--
ALTER TABLE `up_permissions_role_lnk`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `up_roles`
--
ALTER TABLE `up_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `up_users`
--
ALTER TABLE `up_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `up_users_role_lnk`
--
ALTER TABLE `up_users_role_lnk`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `user_carts`
--
ALTER TABLE `user_carts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=757;

--
-- AUTO_INCREMENT for table `user_carts_products_lnk`
--
ALTER TABLE `user_carts_products_lnk`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=747;

--
-- AUTO_INCREMENT for table `user_carts_users_permissions_user_lnk`
--
ALTER TABLE `user_carts_users_permissions_user_lnk`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=757;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `wishlists_products_lnk`
--
ALTER TABLE `wishlists_products_lnk`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `wishlists_users_permissions_user_lnk`
--
ALTER TABLE `wishlists_users_permissions_user_lnk`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `about_pages`
--
ALTER TABLE `about_pages`
  ADD CONSTRAINT `about_pages_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `about_pages_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  ADD CONSTRAINT `admin_permissions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `admin_permissions_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `admin_permissions_role_lnk`
--
ALTER TABLE `admin_permissions_role_lnk`
  ADD CONSTRAINT `admin_permissions_role_lnk_fk` FOREIGN KEY (`permission_id`) REFERENCES `admin_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `admin_permissions_role_lnk_ifk` FOREIGN KEY (`role_id`) REFERENCES `admin_roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD CONSTRAINT `admin_roles_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `admin_roles_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD CONSTRAINT `admin_users_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `admin_users_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `admin_users_roles_lnk`
--
ALTER TABLE `admin_users_roles_lnk`
  ADD CONSTRAINT `admin_users_roles_lnk_fk` FOREIGN KEY (`user_id`) REFERENCES `admin_users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `admin_users_roles_lnk_ifk` FOREIGN KEY (`role_id`) REFERENCES `admin_roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `brands`
--
ALTER TABLE `brands`
  ADD CONSTRAINT `brands_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `brands_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `brands_products_lnk`
--
ALTER TABLE `brands_products_lnk`
  ADD CONSTRAINT `brands_products_lnk_fk` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `brands_products_lnk_ifk` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `categories_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `colors`
--
ALTER TABLE `colors`
  ADD CONSTRAINT `colors_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `colors_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `components_ordered_item_ordered_items_product_lnk`
--
ALTER TABLE `components_ordered_item_ordered_items_product_lnk`
  ADD CONSTRAINT `components_ordered_item_ordered_items_product_lnk_fk` FOREIGN KEY (`ordered_item_id`) REFERENCES `components_ordered_item_ordered_items` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `components_ordered_item_ordered_items_product_lnk_ifk` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `files`
--
ALTER TABLE `files`
  ADD CONSTRAINT `files_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `files_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `files_folder_lnk`
--
ALTER TABLE `files_folder_lnk`
  ADD CONSTRAINT `files_folder_lnk_fk` FOREIGN KEY (`file_id`) REFERENCES `files` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `files_folder_lnk_ifk` FOREIGN KEY (`folder_id`) REFERENCES `upload_folders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `files_related_mph`
--
ALTER TABLE `files_related_mph`
  ADD CONSTRAINT `files_related_mph_fk` FOREIGN KEY (`file_id`) REFERENCES `files` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `i18n_locale`
--
ALTER TABLE `i18n_locale`
  ADD CONSTRAINT `i18n_locale_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `i18n_locale_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `orders_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `orders_cmps`
--
ALTER TABLE `orders_cmps`
  ADD CONSTRAINT `orders_entity_fk` FOREIGN KEY (`entity_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `products_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `products_brand_lnk`
--
ALTER TABLE `products_brand_lnk`
  ADD CONSTRAINT `products_brand_lnk_fk` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_brand_lnk_ifk` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products_categories_lnk`
--
ALTER TABLE `products_categories_lnk`
  ADD CONSTRAINT `products_categories_lnk_fk` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_categories_lnk_ifk` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products_colors_lnk`
--
ALTER TABLE `products_colors_lnk`
  ADD CONSTRAINT `products_colors_lnk_fk` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_colors_lnk_ifk` FOREIGN KEY (`color_id`) REFERENCES `colors` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sliders`
--
ALTER TABLE `sliders`
  ADD CONSTRAINT `sliders_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `sliders_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `strapi_api_tokens`
--
ALTER TABLE `strapi_api_tokens`
  ADD CONSTRAINT `strapi_api_tokens_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `strapi_api_tokens_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `strapi_api_token_permissions`
--
ALTER TABLE `strapi_api_token_permissions`
  ADD CONSTRAINT `strapi_api_token_permissions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `strapi_api_token_permissions_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `strapi_api_token_permissions_token_lnk`
--
ALTER TABLE `strapi_api_token_permissions_token_lnk`
  ADD CONSTRAINT `strapi_api_token_permissions_token_lnk_fk` FOREIGN KEY (`api_token_permission_id`) REFERENCES `strapi_api_token_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `strapi_api_token_permissions_token_lnk_ifk` FOREIGN KEY (`api_token_id`) REFERENCES `strapi_api_tokens` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `strapi_history_versions`
--
ALTER TABLE `strapi_history_versions`
  ADD CONSTRAINT `strapi_history_versions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `strapi_releases`
--
ALTER TABLE `strapi_releases`
  ADD CONSTRAINT `strapi_releases_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `strapi_releases_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `strapi_release_actions`
--
ALTER TABLE `strapi_release_actions`
  ADD CONSTRAINT `strapi_release_actions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `strapi_release_actions_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `strapi_release_actions_release_lnk`
--
ALTER TABLE `strapi_release_actions_release_lnk`
  ADD CONSTRAINT `strapi_release_actions_release_lnk_fk` FOREIGN KEY (`release_action_id`) REFERENCES `strapi_release_actions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `strapi_release_actions_release_lnk_ifk` FOREIGN KEY (`release_id`) REFERENCES `strapi_releases` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `strapi_transfer_tokens`
--
ALTER TABLE `strapi_transfer_tokens`
  ADD CONSTRAINT `strapi_transfer_tokens_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `strapi_transfer_tokens_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `strapi_transfer_token_permissions`
--
ALTER TABLE `strapi_transfer_token_permissions`
  ADD CONSTRAINT `strapi_transfer_token_permissions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `strapi_transfer_token_permissions_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `strapi_transfer_token_permissions_token_lnk`
--
ALTER TABLE `strapi_transfer_token_permissions_token_lnk`
  ADD CONSTRAINT `strapi_transfer_token_permissions_token_lnk_fk` FOREIGN KEY (`transfer_token_permission_id`) REFERENCES `strapi_transfer_token_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `strapi_transfer_token_permissions_token_lnk_ifk` FOREIGN KEY (`transfer_token_id`) REFERENCES `strapi_transfer_tokens` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `strapi_workflows`
--
ALTER TABLE `strapi_workflows`
  ADD CONSTRAINT `strapi_workflows_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `strapi_workflows_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `strapi_workflows_stages`
--
ALTER TABLE `strapi_workflows_stages`
  ADD CONSTRAINT `strapi_workflows_stages_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `strapi_workflows_stages_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `strapi_workflows_stages_permissions_lnk`
--
ALTER TABLE `strapi_workflows_stages_permissions_lnk`
  ADD CONSTRAINT `strapi_workflows_stages_permissions_lnk_fk` FOREIGN KEY (`workflow_stage_id`) REFERENCES `strapi_workflows_stages` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `strapi_workflows_stages_permissions_lnk_ifk` FOREIGN KEY (`permission_id`) REFERENCES `admin_permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `strapi_workflows_stages_workflow_lnk`
--
ALTER TABLE `strapi_workflows_stages_workflow_lnk`
  ADD CONSTRAINT `strapi_workflows_stages_workflow_lnk_fk` FOREIGN KEY (`workflow_stage_id`) REFERENCES `strapi_workflows_stages` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `strapi_workflows_stages_workflow_lnk_ifk` FOREIGN KEY (`workflow_id`) REFERENCES `strapi_workflows` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `upload_folders`
--
ALTER TABLE `upload_folders`
  ADD CONSTRAINT `upload_folders_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `upload_folders_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `upload_folders_parent_lnk`
--
ALTER TABLE `upload_folders_parent_lnk`
  ADD CONSTRAINT `upload_folders_parent_lnk_fk` FOREIGN KEY (`folder_id`) REFERENCES `upload_folders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `upload_folders_parent_lnk_ifk` FOREIGN KEY (`inv_folder_id`) REFERENCES `upload_folders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `up_permissions`
--
ALTER TABLE `up_permissions`
  ADD CONSTRAINT `up_permissions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `up_permissions_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `up_permissions_role_lnk`
--
ALTER TABLE `up_permissions_role_lnk`
  ADD CONSTRAINT `up_permissions_role_lnk_fk` FOREIGN KEY (`permission_id`) REFERENCES `up_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `up_permissions_role_lnk_ifk` FOREIGN KEY (`role_id`) REFERENCES `up_roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `up_roles`
--
ALTER TABLE `up_roles`
  ADD CONSTRAINT `up_roles_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `up_roles_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `up_users`
--
ALTER TABLE `up_users`
  ADD CONSTRAINT `up_users_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `up_users_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `up_users_role_lnk`
--
ALTER TABLE `up_users_role_lnk`
  ADD CONSTRAINT `up_users_role_lnk_fk` FOREIGN KEY (`user_id`) REFERENCES `up_users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `up_users_role_lnk_ifk` FOREIGN KEY (`role_id`) REFERENCES `up_roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_carts`
--
ALTER TABLE `user_carts`
  ADD CONSTRAINT `user_carts_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `user_carts_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `user_carts_products_lnk`
--
ALTER TABLE `user_carts_products_lnk`
  ADD CONSTRAINT `user_carts_products_lnk_fk` FOREIGN KEY (`user_cart_id`) REFERENCES `user_carts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_carts_products_lnk_ifk` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_carts_users_permissions_user_lnk`
--
ALTER TABLE `user_carts_users_permissions_user_lnk`
  ADD CONSTRAINT `user_carts_users_permissions_user_lnk_fk` FOREIGN KEY (`user_cart_id`) REFERENCES `user_carts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_carts_users_permissions_user_lnk_ifk` FOREIGN KEY (`user_id`) REFERENCES `up_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD CONSTRAINT `wishlists_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `wishlists_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `wishlists_products_lnk`
--
ALTER TABLE `wishlists_products_lnk`
  ADD CONSTRAINT `wishlists_products_lnk_fk` FOREIGN KEY (`wishlist_id`) REFERENCES `wishlists` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `wishlists_products_lnk_ifk` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `wishlists_users_permissions_user_lnk`
--
ALTER TABLE `wishlists_users_permissions_user_lnk`
  ADD CONSTRAINT `wishlists_users_permissions_user_lnk_fk` FOREIGN KEY (`wishlist_id`) REFERENCES `wishlists` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `wishlists_users_permissions_user_lnk_ifk` FOREIGN KEY (`user_id`) REFERENCES `up_users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
