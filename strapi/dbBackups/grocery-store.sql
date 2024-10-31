-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 31, 2024 at 01:13 PM
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
(98, 'u16uqudakb6ce3obqvodb250', 'plugin::content-manager.explorer.create', '{}', 'plugin::users-permissions.user', '{\"fields\":[\"username\",\"email\",\"provider\",\"password\",\"resetPasswordToken\",\"confirmationToken\",\"confirmed\",\"blocked\",\"role\",\"mobile\"]}', '[]', '2024-10-02 09:38:46.524000', '2024-10-02 09:38:46.524000', '2024-10-02 09:38:46.526000', NULL, NULL, NULL),
(99, 'xktzol00p1j881hqdo4aeasj', 'plugin::content-manager.explorer.read', '{}', 'plugin::users-permissions.user', '{\"fields\":[\"username\",\"email\",\"provider\",\"password\",\"resetPasswordToken\",\"confirmationToken\",\"confirmed\",\"blocked\",\"role\",\"mobile\"]}', '[]', '2024-10-02 09:38:46.542000', '2024-10-02 09:38:46.542000', '2024-10-02 09:38:46.544000', NULL, NULL, NULL),
(100, 'bhv3i9nv1b0rdem3etul1xde', 'plugin::content-manager.explorer.update', '{}', 'plugin::users-permissions.user', '{\"fields\":[\"username\",\"email\",\"provider\",\"password\",\"resetPasswordToken\",\"confirmationToken\",\"confirmed\",\"blocked\",\"role\",\"mobile\"]}', '[]', '2024-10-02 09:38:46.560000', '2024-10-02 09:38:46.560000', '2024-10-02 09:38:46.561000', NULL, NULL, NULL),
(104, 'z2x0y8fp4f7iuqvzqqp8g3rm', 'plugin::content-manager.explorer.delete', '{}', 'api::user-cart.user-cart', '{}', '[]', '2024-10-02 14:41:34.641000', '2024-10-02 14:41:34.641000', '2024-10-02 14:41:34.641000', NULL, NULL, NULL),
(105, 'ks41d7gs7clnbueao4x16n82', 'plugin::content-manager.explorer.publish', '{}', 'api::user-cart.user-cart', '{}', '[]', '2024-10-02 14:41:34.653000', '2024-10-02 14:41:34.653000', '2024-10-02 14:41:34.653000', NULL, NULL, NULL),
(112, 'zdy7srm1njlg2irih21vyf5m', 'plugin::content-manager.explorer.delete', '{}', 'api::order.order', '{}', '[]', '2024-10-09 12:03:06.098000', '2024-10-09 12:03:06.098000', '2024-10-09 12:03:06.098000', NULL, NULL, NULL),
(113, 'w7ak5tpqmgv2mc5lhgo3opzr', 'plugin::content-manager.explorer.publish', '{}', 'api::order.order', '{}', '[]', '2024-10-09 12:03:06.111000', '2024-10-09 12:03:06.111000', '2024-10-09 12:03:06.111000', NULL, NULL, NULL),
(129, 'vbgjx35w3ee146dk5xshjsdo', 'plugin::content-manager.explorer.create', '{}', 'api::color.color', '{\"fields\":[\"name\",\"code\"]}', '[]', '2024-10-27 17:19:24.937000', '2024-10-27 17:19:24.937000', '2024-10-27 17:19:24.939000', NULL, NULL, NULL),
(130, 'mssiy3ye7hffqdrpzsab0pyp', 'plugin::content-manager.explorer.read', '{}', 'api::color.color', '{\"fields\":[\"name\",\"code\"]}', '[]', '2024-10-27 17:19:24.957000', '2024-10-27 17:19:24.957000', '2024-10-27 17:19:24.958000', NULL, NULL, NULL),
(131, 'unwdkeu446qe4tr44vgfatoi', 'plugin::content-manager.explorer.update', '{}', 'api::color.color', '{\"fields\":[\"name\",\"code\"]}', '[]', '2024-10-27 17:19:24.970000', '2024-10-27 17:19:24.970000', '2024-10-27 17:19:24.971000', NULL, NULL, NULL),
(132, 'xgpoxy717vhxg4f56d1kctvn', 'plugin::content-manager.explorer.delete', '{}', 'api::color.color', '{}', '[]', '2024-10-27 17:19:24.980000', '2024-10-27 17:19:24.980000', '2024-10-27 17:19:24.980000', NULL, NULL, NULL),
(133, 'n36fgzv7zw519ut252d8xdvq', 'plugin::content-manager.explorer.publish', '{}', 'api::color.color', '{}', '[]', '2024-10-27 17:19:24.990000', '2024-10-27 17:19:24.990000', '2024-10-27 17:19:24.991000', NULL, NULL, NULL),
(134, 'x9eqqkp4co0ghl20kkkwgul8', 'plugin::content-manager.explorer.create', '{}', 'api::product.product', '{\"fields\":[\"name\",\"description\",\"mrp\",\"sellingPrice\",\"itemQuantityType\",\"slug\",\"images\",\"categories\",\"stock\",\"colors\"]}', '[]', '2024-10-27 17:22:18.275000', '2024-10-27 17:22:18.275000', '2024-10-27 17:22:18.276000', NULL, NULL, NULL),
(135, 'er6vygc00isn6vfga2d32c4r', 'plugin::content-manager.explorer.read', '{}', 'api::product.product', '{\"fields\":[\"name\",\"description\",\"mrp\",\"sellingPrice\",\"itemQuantityType\",\"slug\",\"images\",\"categories\",\"stock\",\"colors\"]}', '[]', '2024-10-27 17:22:18.293000', '2024-10-27 17:22:18.293000', '2024-10-27 17:22:18.294000', NULL, NULL, NULL),
(136, 'm4v0mu7grtam7tbcwymguo1n', 'plugin::content-manager.explorer.update', '{}', 'api::product.product', '{\"fields\":[\"name\",\"description\",\"mrp\",\"sellingPrice\",\"itemQuantityType\",\"slug\",\"images\",\"categories\",\"stock\",\"colors\"]}', '[]', '2024-10-27 17:22:18.308000', '2024-10-27 17:22:18.308000', '2024-10-27 17:22:18.309000', NULL, NULL, NULL),
(146, 'voiuv9ja6ei4b49mmnuibm6z', 'plugin::content-manager.explorer.create', '{}', 'api::order.order', '{\"fields\":[\"username\",\"email\",\"phone\",\"zip\",\"address\",\"totalAmount\",\"userId\",\"paymentId\",\"orderItemList.product\",\"orderItemList.quantity\",\"orderItemList.amount\",\"orderItemList.name\",\"orderItemList.color\",\"orderStatus\",\"subTotal\"]}', '[]', '2024-10-29 14:00:01.456000', '2024-10-29 14:00:01.456000', '2024-10-29 14:00:01.457000', NULL, NULL, NULL),
(147, 'lufyscufppl9fblsu9j1olru', 'plugin::content-manager.explorer.read', '{}', 'api::order.order', '{\"fields\":[\"username\",\"email\",\"phone\",\"zip\",\"address\",\"totalAmount\",\"userId\",\"paymentId\",\"orderItemList.product\",\"orderItemList.quantity\",\"orderItemList.amount\",\"orderItemList.name\",\"orderItemList.color\",\"orderStatus\",\"subTotal\"]}', '[]', '2024-10-29 14:00:01.471000', '2024-10-29 14:00:01.471000', '2024-10-29 14:00:01.473000', NULL, NULL, NULL),
(148, 'x8spyblbyjla7smoogkjkes5', 'plugin::content-manager.explorer.update', '{}', 'api::order.order', '{\"fields\":[\"username\",\"email\",\"phone\",\"zip\",\"address\",\"totalAmount\",\"userId\",\"paymentId\",\"orderItemList.product\",\"orderItemList.quantity\",\"orderItemList.amount\",\"orderItemList.name\",\"orderItemList.color\",\"orderStatus\",\"subTotal\"]}', '[]', '2024-10-29 14:00:01.487000', '2024-10-29 14:00:01.487000', '2024-10-29 14:00:01.488000', NULL, NULL, NULL),
(149, 'e9wz9ryy0cv0mxii1d25udvx', 'plugin::content-manager.explorer.create', '{}', 'api::user-cart.user-cart', '{\"fields\":[\"quantity\",\"amount\",\"products\",\"users_permissions_user\",\"userId\",\"productId\",\"color\"]}', '[]', '2024-10-29 14:36:29.402000', '2024-10-29 14:36:29.402000', '2024-10-29 14:36:29.404000', NULL, NULL, NULL),
(150, 'waeay3fop3c8mzzn5oxldb84', 'plugin::content-manager.explorer.read', '{}', 'api::user-cart.user-cart', '{\"fields\":[\"quantity\",\"amount\",\"products\",\"users_permissions_user\",\"userId\",\"productId\",\"color\"]}', '[]', '2024-10-29 14:36:29.434000', '2024-10-29 14:36:29.434000', '2024-10-29 14:36:29.435000', NULL, NULL, NULL),
(151, 'nb33ry4mgii4qwu431vz1fpu', 'plugin::content-manager.explorer.update', '{}', 'api::user-cart.user-cart', '{\"fields\":[\"quantity\",\"amount\",\"products\",\"users_permissions_user\",\"userId\",\"productId\",\"color\"]}', '[]', '2024-10-29 14:36:29.446000', '2024-10-29 14:36:29.446000', '2024-10-29 14:36:29.447000', NULL, NULL, NULL),
(152, 'x5ud3xug0sz6almol5ji834i', 'plugin::content-manager.explorer.create', '{}', 'api::category.category', '{\"fields\":[\"name\",\"icon\",\"color\",\"products\",\"slug\",\"banner\"]}', '[]', '2024-10-31 10:35:11.833000', '2024-10-31 10:35:11.833000', '2024-10-31 10:35:11.835000', NULL, NULL, NULL),
(153, 'peyzmd28aaeoyxlgmmifw81z', 'plugin::content-manager.explorer.read', '{}', 'api::category.category', '{\"fields\":[\"name\",\"icon\",\"color\",\"products\",\"slug\",\"banner\"]}', '[]', '2024-10-31 10:35:11.850000', '2024-10-31 10:35:11.850000', '2024-10-31 10:35:11.851000', NULL, NULL, NULL),
(154, 'fnb6nhy9o1mzewm8n84d0can', 'plugin::content-manager.explorer.update', '{}', 'api::category.category', '{\"fields\":[\"name\",\"icon\",\"color\",\"products\",\"slug\",\"banner\"]}', '[]', '2024-10-31 10:35:11.864000', '2024-10-31 10:35:11.864000', '2024-10-31 10:35:11.864000', NULL, NULL, NULL);

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
(98, 98, 1, 83),
(99, 99, 1, 84),
(100, 100, 1, 85),
(104, 104, 1, 89),
(105, 105, 1, 90),
(112, 112, 1, 97),
(113, 113, 1, 98),
(129, 129, 1, 108),
(130, 130, 1, 109),
(131, 131, 1, 110),
(132, 132, 1, 111),
(133, 133, 1, 112),
(134, 134, 1, 113),
(135, 135, 1, 114),
(136, 136, 1, 115),
(146, 146, 1, 116),
(147, 147, 1, 117),
(148, 148, 1, 118),
(149, 149, 1, 119),
(150, 150, 1, 120),
(151, 151, 1, 121),
(152, 152, 1, 122),
(153, 153, 1, 123),
(154, 154, 1, 124);

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
(1, 'e6psd07wddj8ct1exalkjcbs', 'Fruits', NULL, '2024-09-25 14:12:03.161000', '2024-10-31 12:49:40.167000', NULL, 1, 1, NULL, 'fruits'),
(3, 'o3ijst81g10m4t7hx17l292y', 'Vegetables', NULL, '2024-09-25 15:29:49.380000', '2024-10-31 12:31:44.162000', NULL, 1, 1, NULL, 'vegetables'),
(5, 'g8tlrteq6r8tstg94jby1ff0', 'Milk & Juice', NULL, '2024-09-25 15:32:29.023000', '2024-09-30 13:30:30.615000', NULL, 1, 1, NULL, 'milk-and-juice'),
(7, 'zasv52eef3z17kpp5cq3nzzr', 'Personal Care', NULL, '2024-09-25 15:33:36.441000', '2024-09-30 13:30:46.786000', NULL, 1, 1, NULL, 'personal-care'),
(9, 'whyw3fijt8grt90lgt0ku00r', 'Grains', NULL, '2024-09-25 15:34:21.185000', '2024-09-30 13:30:21.454000', NULL, 1, 1, NULL, 'grains'),
(11, 'b0oxiobzz9iluhu5d4jjudsz', 'Chicken & Egg', NULL, '2024-09-25 15:35:02.633000', '2024-09-30 13:29:59.366000', NULL, 1, 1, NULL, 'chicken-and-egg'),
(13, 'ry1eup2cgvtwrs0hvit1vsa1', 'Bakery', NULL, '2024-09-25 15:35:55.260000', '2024-09-30 13:29:40.133000', NULL, 1, 1, NULL, 'bakery'),
(15, 'ry1eup2cgvtwrs0hvit1vsa1', 'Bakery', NULL, '2024-09-25 15:35:55.260000', '2024-09-30 13:29:40.133000', '2024-09-30 13:29:40.185000', 1, 1, NULL, 'bakery'),
(16, 'b0oxiobzz9iluhu5d4jjudsz', 'Chicken & Egg', NULL, '2024-09-25 15:35:02.633000', '2024-09-30 13:29:59.366000', '2024-09-30 13:29:59.415000', 1, 1, NULL, 'chicken-and-egg'),
(18, 'whyw3fijt8grt90lgt0ku00r', 'Grains', NULL, '2024-09-25 15:34:21.185000', '2024-09-30 13:30:21.454000', '2024-09-30 13:30:21.502000', 1, 1, NULL, 'grains'),
(19, 'g8tlrteq6r8tstg94jby1ff0', 'Milk & Juice', NULL, '2024-09-25 15:32:29.023000', '2024-09-30 13:30:30.615000', '2024-09-30 13:30:30.657000', 1, 1, NULL, 'milk-and-juice'),
(20, 'zasv52eef3z17kpp5cq3nzzr', 'Personal Care', NULL, '2024-09-25 15:33:36.441000', '2024-09-30 13:30:46.786000', '2024-09-30 13:30:46.828000', 1, 1, NULL, 'personal-care'),
(23, 'o3ijst81g10m4t7hx17l292y', 'Vegetables', NULL, '2024-09-25 15:29:49.380000', '2024-10-31 12:31:44.162000', '2024-10-31 12:31:44.235000', 1, 1, NULL, 'vegetables'),
(24, 'e6psd07wddj8ct1exalkjcbs', 'Fruits', NULL, '2024-09-25 14:12:03.161000', '2024-10-31 12:49:40.167000', '2024-10-31 12:49:40.235000', 1, 1, NULL, 'fruits');

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
(15, 'd6j1gjmafreuijaubciiqvou', 'Light Pink', '#FFB6C1', '2024-10-29 10:03:46.081000', '2024-10-29 10:04:12.444000', '2024-10-29 10:04:12.480000', 1, 1, NULL);

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
(241, 2, 160, 'Dove', 'Light Pink');

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
(21, 39, 31),
(22, 40, 38),
(23, 41, 39),
(24, 42, 33),
(25, 43, 37),
(26, 44, 34),
(27, 45, 35),
(35, 53, 31),
(36, 54, 38),
(37, 55, 39),
(38, 56, 33),
(39, 57, 37),
(40, 58, 34),
(41, 59, 35),
(49, 67, 31),
(50, 68, 38),
(51, 69, 39),
(52, 70, 33),
(53, 71, 37),
(54, 72, 34),
(55, 73, 35),
(63, 81, 31),
(64, 82, 38),
(65, 83, 39),
(66, 84, 33),
(67, 85, 37),
(68, 86, 34),
(69, 87, 35),
(91, 109, 31),
(92, 110, 38),
(93, 111, 39),
(94, 112, 33),
(95, 113, 37),
(96, 114, 34),
(97, 115, 35),
(105, 123, 34),
(106, 124, 37),
(113, 131, 31),
(114, 132, 38),
(117, 135, 31),
(118, 136, 39),
(121, 139, 31),
(122, 140, 38),
(123, 141, 39),
(124, 142, 33),
(125, 143, 37),
(126, 144, 34),
(127, 145, 35),
(128, 146, 31),
(129, 147, 38),
(130, 148, 31),
(131, 149, 38),
(132, 150, 39),
(133, 151, 33),
(134, 152, 37),
(135, 153, 34),
(136, 154, 35),
(137, 155, 34),
(138, 156, 37),
(139, 157, 31),
(140, 158, 38),
(141, 159, 39),
(142, 160, 33),
(143, 161, 37),
(144, 162, 34),
(145, 163, 35),
(146, 164, 31),
(147, 165, 38),
(148, 166, 39),
(149, 167, 33),
(150, 168, 37),
(151, 169, 34),
(152, 170, 35),
(153, 171, 31),
(154, 172, 38),
(155, 173, 39),
(156, 174, 33),
(157, 175, 37),
(158, 176, 34),
(159, 177, 35),
(160, 178, 39),
(161, 179, 38),
(162, 180, 31),
(163, 181, 33),
(164, 182, 39),
(165, 183, 38),
(166, 184, 31),
(167, 185, 33),
(168, 186, 31),
(169, 187, 39),
(170, 188, 31),
(171, 189, 39),
(172, 190, 31),
(173, 191, 39),
(174, 192, 32),
(176, 194, 32),
(209, 227, 39),
(210, 228, 49),
(213, 231, 39),
(214, 232, 49),
(215, 233, 31),
(219, 237, 39),
(220, 238, 49),
(221, 239, 31),
(222, 240, 39),
(223, 241, 49);

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
(24, 'odsghphmeoqnjvljvcxdmixu', 'fruits-banner.jpg', NULL, NULL, 1600, 559, '{\"thumbnail\":{\"name\":\"thumbnail_fruits-banner.jpg\",\"hash\":\"thumbnail_fruits_banner_b8ca8caea9\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":245,\"height\":85,\"size\":4.77,\"sizeInBytes\":4774,\"url\":\"/uploads/thumbnail_fruits_banner_b8ca8caea9.jpg\"},\"large\":{\"name\":\"large_fruits-banner.jpg\",\"hash\":\"large_fruits_banner_b8ca8caea9\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":1000,\"height\":349,\"size\":46.78,\"sizeInBytes\":46777,\"url\":\"/uploads/large_fruits_banner_b8ca8caea9.jpg\"},\"medium\":{\"name\":\"medium_fruits-banner.jpg\",\"hash\":\"medium_fruits_banner_b8ca8caea9\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":750,\"height\":262,\"size\":29.16,\"sizeInBytes\":29159,\"url\":\"/uploads/medium_fruits_banner_b8ca8caea9.jpg\"},\"small\":{\"name\":\"small_fruits-banner.jpg\",\"hash\":\"small_fruits_banner_b8ca8caea9\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":500,\"height\":174,\"size\":15.06,\"sizeInBytes\":15061,\"url\":\"/uploads/small_fruits_banner_b8ca8caea9.jpg\"}}', 'fruits_banner_b8ca8caea9', '.jpg', 'image/jpeg', 80.96, '/uploads/fruits_banner_b8ca8caea9.jpg', NULL, 'local', NULL, '/', '2024-10-31 12:49:36.672000', '2024-10-31 12:49:36.672000', '2024-10-31 12:49:36.672000', 1, 1, NULL);

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
(37, 7, 13, 'api::category.category', 'icon', 1),
(38, 7, 15, 'api::category.category', 'icon', 1),
(39, 5, 11, 'api::category.category', 'icon', 1),
(40, 5, 16, 'api::category.category', 'icon', 1),
(43, 6, 9, 'api::category.category', 'icon', 1),
(44, 6, 18, 'api::category.category', 'icon', 1),
(45, 3, 5, 'api::category.category', 'icon', 1),
(46, 3, 19, 'api::category.category', 'icon', 1),
(47, 4, 7, 'api::category.category', 'icon', 1),
(48, 4, 20, 'api::category.category', 'icon', 1),
(65, 16, 5, 'api::product.product', 'images', 1),
(66, 16, 31, 'api::product.product', 'images', 1),
(67, 13, 7, 'api::product.product', 'images', 1),
(68, 13, 32, 'api::product.product', 'images', 1),
(69, 17, 11, 'api::product.product', 'images', 1),
(70, 17, 33, 'api::product.product', 'images', 1),
(71, 14, 13, 'api::product.product', 'images', 1),
(72, 14, 34, 'api::product.product', 'images', 1),
(73, 15, 15, 'api::product.product', 'images', 1),
(74, 15, 35, 'api::product.product', 'images', 1),
(77, 18, 9, 'api::product.product', 'images', 1),
(78, 18, 37, 'api::product.product', 'images', 1),
(79, 12, 3, 'api::product.product', 'images', 1),
(80, 12, 38, 'api::product.product', 'images', 1),
(81, 11, 1, 'api::product.product', 'images', 1),
(82, 11, 39, 'api::product.product', 'images', 1),
(93, 20, 42, 'api::product.product', 'images', 1),
(94, 20, 47, 'api::product.product', 'images', 1),
(95, 19, 40, 'api::product.product', 'images', 1),
(96, 19, 48, 'api::product.product', 'images', 1),
(97, 21, 44, 'api::product.product', 'images', 1),
(98, 21, 49, 'api::product.product', 'images', 1),
(103, 2, 3, 'api::category.category', 'icon', 1),
(104, 23, 3, 'api::category.category', 'banner', 1),
(105, 2, 23, 'api::category.category', 'icon', 1),
(106, 23, 23, 'api::category.category', 'banner', 1),
(107, 1, 1, 'api::category.category', 'icon', 1),
(108, 24, 1, 'api::category.category', 'banner', 1),
(109, 1, 24, 'api::category.category', 'icon', 1),
(110, 24, 24, 'api::category.category', 'banner', 1);

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
(110, 'xujy3gadhn7q1i4fqkgp7d9b', 'Lima', 'shakiren070@gmail.com', '01994558321', NULL, 'asdas asdasd', 265, 10, 'pay00087', '2024-10-29 14:01:53.771000', '2024-10-29 16:43:42.339000', '2024-10-29 16:43:42.375000', NULL, 1, NULL, 'Completed', 205);

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
(293, 110, 241, 'ordered-item.ordered-item', 'orderItemList', 2);

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
  `stock` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `document_id`, `name`, `description`, `mrp`, `selling_price`, `item_quantity_type`, `slug`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`, `locale`, `stock`) VALUES
(1, 'j9pw3qsy6o1ekjfontqztuzs', 'Cauliflower 1 pc', 'Cauliflowers are annual plants that reach about 0.5 metre (1.5 feet) tall and bear large rounded leaves that resemble collards (Brassica oleracea, variety acephala). As desired for food, the terminal cluster forms a firm, succulent “curd,” or head, that i', 50, 45, '500gm', 'cauliflower', '2024-09-26 14:47:27.029000', '2024-10-28 12:12:00.306000', NULL, 1, 1, NULL, 3),
(3, 'e275g3hwfbkpsm0xazfeva73', 'Red Carrot ', ' Red Carrots are a unique and fun addition within the home garden. The tapered root resembles the classic carrot yet that it is a bold striking deep red toned colour. Sweet and Tender is are the key words which will be a welcomed edition to the salad and ', 80, 70, '1kg', 'red-carrot', '2024-09-26 14:51:54.280000', '2024-10-27 18:31:09.171000', NULL, 1, 1, NULL, 0),
(5, 'ecgsoc7erqa00y3dczmxu8wi', 'Cilantro (2 Pc)', 'The leaves resemble European parsley leaves in shape but this plant has a pungent, sweet-musky odor and taste that some people don\'t like. Descriptions of the flavor of the leaves vary from citrusy with a biting tang, to soapy, to that of crushed bed bugs', 40, NULL, '250gm', 'cilantro', '2024-09-26 14:55:31.382000', '2024-10-22 15:35:24.729000', NULL, 1, 1, NULL, 2),
(7, 'sh7rltw2m1jt1yv78tkhymf5', 'Fresh Green Capsicum', 'Green capsicum—known in other parts of the world as a bell pepper—has crisp, shiny, moist flesh and hollow with a seeded core. Green varieties are less sweet and slightly more bitter than other colours of capsicum', 120, 110, '500gm', 'fresh-green-capsicum', '2024-09-26 15:48:04.428000', '2024-10-22 15:35:45.670000', NULL, 1, 1, NULL, 20),
(9, 'qqhs91l4egh3a3maolufaeli', 'Fresh Mango From Rajshahi', 'Mature fruit has a characteristic fragrance and a smooth, thin, tough skin. The flesh of ripe mangos is pale yellow to orange. The flesh is juicy, sweet, and sometimes fibrous. Some undesirable seedlings or varieties are described as possessing a turpenti', 200, 160, '1kg', 'fresh-mango-from-rajshahi', '2024-09-26 15:50:05.227000', '2024-10-27 18:15:41.084000', NULL, 1, 1, NULL, 3),
(11, 'gb10fgy60pajjamtikujw8nw', 'Fresh Orange', 'This version of the juice consists of oranges that are squeezed and then bottled without having any additives or flavor packs inserted. The juice is not subjected to pasteurization. Depending on storage temperature, freshly squeezed, unpasteurized orange ', 450, NULL, '6pcs', 'fresh-orange', '2024-09-26 15:52:14.905000', '2024-10-22 15:36:14.357000', NULL, 1, 1, NULL, 50),
(13, 'at38wvbpzqny1vo31tbvbnbx', 'Mango Maza Juice', 'Maaza has a distinct pulpy taste as compared to Frooti and tastes slightly sweeter than Slice. Maaza claims to contain mango pulp of the Alphonso variety, which is known as the \"King of Mangoes\" in India. Maaza is a popular household name in Dubai.', 600, NULL, NULL, 'mango-maza-juice', '2024-09-26 15:53:48.091000', '2024-10-22 15:36:27.718000', NULL, 1, 1, NULL, 4),
(15, 'b9y35obpugwrnd74bphq4820', 'Pineapple Queen', 'A smaller pineapple than others, but the best eating variety in NZ. Bright, golden-yellow flesh with crisp texture and sweet flavour. Little to no tough core.', 85, 75, '1pcs', 'pineapple-queen', '2024-09-26 15:55:47.964000', '2024-10-22 15:36:47.292000', NULL, 1, 1, NULL, 16),
(31, 'ecgsoc7erqa00y3dczmxu8wi', 'Cilantro (2 Pc)', 'The leaves resemble European parsley leaves in shape but this plant has a pungent, sweet-musky odor and taste that some people don\'t like. Descriptions of the flavor of the leaves vary from citrusy with a biting tang, to soapy, to that of crushed bed bugs', 40, NULL, '250gm', 'cilantro', '2024-09-26 14:55:31.382000', '2024-10-22 15:35:24.729000', '2024-10-22 15:35:24.792000', 1, 1, NULL, 2),
(32, 'sh7rltw2m1jt1yv78tkhymf5', 'Fresh Green Capsicum', 'Green capsicum—known in other parts of the world as a bell pepper—has crisp, shiny, moist flesh and hollow with a seeded core. Green varieties are less sweet and slightly more bitter than other colours of capsicum', 120, 110, '500gm', 'fresh-green-capsicum', '2024-09-26 15:48:04.428000', '2024-10-22 15:35:45.670000', '2024-10-22 15:35:45.717000', 1, 1, NULL, 20),
(33, 'gb10fgy60pajjamtikujw8nw', 'Fresh Orange', 'This version of the juice consists of oranges that are squeezed and then bottled without having any additives or flavor packs inserted. The juice is not subjected to pasteurization. Depending on storage temperature, freshly squeezed, unpasteurized orange ', 450, NULL, '6pcs', 'fresh-orange', '2024-09-26 15:52:14.905000', '2024-10-22 15:36:14.357000', '2024-10-22 15:36:14.409000', 1, 1, NULL, 50),
(34, 'at38wvbpzqny1vo31tbvbnbx', 'Mango Maza Juice', 'Maaza has a distinct pulpy taste as compared to Frooti and tastes slightly sweeter than Slice. Maaza claims to contain mango pulp of the Alphonso variety, which is known as the \"King of Mangoes\" in India. Maaza is a popular household name in Dubai.', 600, NULL, NULL, 'mango-maza-juice', '2024-09-26 15:53:48.091000', '2024-10-22 15:36:27.718000', '2024-10-22 15:36:27.767000', 1, 1, NULL, 4),
(35, 'b9y35obpugwrnd74bphq4820', 'Pineapple Queen', 'A smaller pineapple than others, but the best eating variety in NZ. Bright, golden-yellow flesh with crisp texture and sweet flavour. Little to no tough core.', 85, 75, '1pcs', 'pineapple-queen', '2024-09-26 15:55:47.964000', '2024-10-22 15:36:47.292000', '2024-10-22 15:36:47.347000', 1, 1, NULL, 16),
(37, 'qqhs91l4egh3a3maolufaeli', 'Fresh Mango From Rajshahi', 'Mature fruit has a characteristic fragrance and a smooth, thin, tough skin. The flesh of ripe mangos is pale yellow to orange. The flesh is juicy, sweet, and sometimes fibrous. Some undesirable seedlings or varieties are described as possessing a turpenti', 200, 160, '1kg', 'fresh-mango-from-rajshahi', '2024-09-26 15:50:05.227000', '2024-10-27 18:15:41.084000', '2024-10-27 18:15:41.155000', 1, 1, NULL, 3),
(38, 'e275g3hwfbkpsm0xazfeva73', 'Red Carrot ', ' Red Carrots are a unique and fun addition within the home garden. The tapered root resembles the classic carrot yet that it is a bold striking deep red toned colour. Sweet and Tender is are the key words which will be a welcomed edition to the salad and ', 80, 70, '1kg', 'red-carrot', '2024-09-26 14:51:54.280000', '2024-10-27 18:31:09.171000', '2024-10-27 18:31:09.237000', 1, 1, NULL, 0),
(39, 'j9pw3qsy6o1ekjfontqztuzs', 'Cauliflower 1 pc', 'Cauliflowers are annual plants that reach about 0.5 metre (1.5 feet) tall and bear large rounded leaves that resemble collards (Brassica oleracea, variety acephala). As desired for food, the terminal cluster forms a firm, succulent “curd,” or head, that i', 50, 45, '500gm', 'cauliflower', '2024-09-26 14:47:27.029000', '2024-10-28 12:12:00.306000', '2024-10-28 12:12:00.405000', 1, 1, NULL, 3),
(40, 'scro5ikdkoxcxfgoo4pqj1ma', 'General Soap', 'Soap is a salt of a fatty acid (sometimes other carboxylic acids) used for cleaning and lubricating products as well as other applications. In a domestic setting, soaps, specifically \"toilet soaps\", are surfactants usually used for washing, bathing, and o', 70, NULL, NULL, 'general-soap', '2024-10-29 09:39:44.986000', '2024-10-29 09:49:12.240000', NULL, 1, 1, NULL, 50),
(42, 'v00m9ubrgcjsqb57k9mawnt5', 'Irish Spring', 'Soap is a salt of a fatty acid (sometimes other carboxylic acids) used for cleaning and lubricating products as well as other applications. In a domestic setting, soaps, specifically \"toilet soaps\", are surfactants usually used for washing, bathing, and o', 85, 80, NULL, 'irish-spring', '2024-10-29 09:39:44.986000', '2024-10-29 09:48:52.901000', NULL, 1, 1, NULL, 50),
(44, 'ar0hzfellz8vbkrqeqfefkxy', 'Dove', 'Soap is a salt of a fatty acid (sometimes other carboxylic acids) used for cleaning and lubricating products as well as other applications. In a domestic setting, soaps, specifically \"toilet soaps\", are surfactants usually used for washing, bathing, and o', 100, 80, NULL, 'dove', '2024-10-29 09:39:44.986000', '2024-10-29 10:05:15.348000', NULL, 1, 1, NULL, 50),
(47, 'v00m9ubrgcjsqb57k9mawnt5', 'Irish Spring', 'Soap is a salt of a fatty acid (sometimes other carboxylic acids) used for cleaning and lubricating products as well as other applications. In a domestic setting, soaps, specifically \"toilet soaps\", are surfactants usually used for washing, bathing, and o', 85, 80, NULL, 'irish-spring', '2024-10-29 09:39:44.986000', '2024-10-29 09:48:52.901000', '2024-10-29 09:48:53.000000', 1, 1, NULL, 50),
(48, 'scro5ikdkoxcxfgoo4pqj1ma', 'General Soap', 'Soap is a salt of a fatty acid (sometimes other carboxylic acids) used for cleaning and lubricating products as well as other applications. In a domestic setting, soaps, specifically \"toilet soaps\", are surfactants usually used for washing, bathing, and o', 70, NULL, NULL, 'general-soap', '2024-10-29 09:39:44.986000', '2024-10-29 09:49:12.240000', '2024-10-29 09:49:12.314000', 1, 1, NULL, 50),
(49, 'ar0hzfellz8vbkrqeqfefkxy', 'Dove', 'Soap is a salt of a fatty acid (sometimes other carboxylic acids) used for cleaning and lubricating products as well as other applications. In a domestic setting, soaps, specifically \"toilet soaps\", are surfactants usually used for washing, bathing, and o', 100, 80, NULL, 'dove', '2024-10-29 09:39:44.986000', '2024-10-29 10:05:15.348000', '2024-10-29 10:05:15.449000', 1, 1, NULL, 50);

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
(35, 34, 19, 1, 1),
(41, 40, 7, 0, 1),
(43, 42, 7, 1, 2),
(45, 44, 7, 1, 3),
(48, 47, 20, 1, 4),
(49, 48, 20, 1, 5),
(50, 49, 20, 1, 6),
(55, 39, 23, 1, 1),
(56, 38, 23, 1, 2),
(57, 31, 23, 1, 3),
(58, 32, 23, 1, 4),
(59, 37, 24, 1, 1),
(60, 33, 24, 1, 2),
(61, 35, 24, 1, 3);

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
(6, 37, 4, 1),
(7, 3, 1, 1),
(8, 38, 2, 1),
(9, 1, 9, 3),
(10, 39, 12, 1),
(11, 39, 6, 2),
(12, 39, 10, 3),
(13, 40, 3, 0),
(15, 42, 3, 1),
(20, 47, 4, 1),
(21, 48, 4, 1),
(22, 44, 13, 1),
(23, 49, 15, 1);

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
(1, 'strapi_content_types_schema', '{\"plugin::upload.file\":{\"collectionName\":\"files\",\"info\":{\"singularName\":\"file\",\"pluralName\":\"files\",\"displayName\":\"File\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"alternativeText\":{\"type\":\"string\",\"configurable\":false},\"caption\":{\"type\":\"string\",\"configurable\":false},\"width\":{\"type\":\"integer\",\"configurable\":false},\"height\":{\"type\":\"integer\",\"configurable\":false},\"formats\":{\"type\":\"json\",\"configurable\":false},\"hash\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"ext\":{\"type\":\"string\",\"configurable\":false},\"mime\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"size\":{\"type\":\"decimal\",\"configurable\":false,\"required\":true},\"url\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"previewUrl\":{\"type\":\"string\",\"configurable\":false},\"provider\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"provider_metadata\":{\"type\":\"json\",\"configurable\":false},\"related\":{\"type\":\"relation\",\"relation\":\"morphToMany\",\"configurable\":false},\"folder\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::upload.folder\",\"inversedBy\":\"files\",\"private\":true},\"folderPath\":{\"type\":\"string\",\"minLength\":1,\"required\":true,\"private\":true,\"searchable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::upload.file\",\"writable\":false,\"private\":false,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"files\"}}},\"indexes\":[{\"name\":\"upload_files_folder_path_index\",\"columns\":[\"folder_path\"],\"type\":null},{\"name\":\"upload_files_created_at_index\",\"columns\":[\"created_at\"],\"type\":null},{\"name\":\"upload_files_updated_at_index\",\"columns\":[\"updated_at\"],\"type\":null},{\"name\":\"upload_files_name_index\",\"columns\":[\"name\"],\"type\":null},{\"name\":\"upload_files_size_index\",\"columns\":[\"size\"],\"type\":null},{\"name\":\"upload_files_ext_index\",\"columns\":[\"ext\"],\"type\":null}],\"plugin\":\"upload\",\"globalId\":\"UploadFile\",\"uid\":\"plugin::upload.file\",\"modelType\":\"contentType\",\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"files\",\"info\":{\"singularName\":\"file\",\"pluralName\":\"files\",\"displayName\":\"File\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"alternativeText\":{\"type\":\"string\",\"configurable\":false},\"caption\":{\"type\":\"string\",\"configurable\":false},\"width\":{\"type\":\"integer\",\"configurable\":false},\"height\":{\"type\":\"integer\",\"configurable\":false},\"formats\":{\"type\":\"json\",\"configurable\":false},\"hash\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"ext\":{\"type\":\"string\",\"configurable\":false},\"mime\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"size\":{\"type\":\"decimal\",\"configurable\":false,\"required\":true},\"url\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"previewUrl\":{\"type\":\"string\",\"configurable\":false},\"provider\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"provider_metadata\":{\"type\":\"json\",\"configurable\":false},\"related\":{\"type\":\"relation\",\"relation\":\"morphToMany\",\"configurable\":false},\"folder\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::upload.folder\",\"inversedBy\":\"files\",\"private\":true},\"folderPath\":{\"type\":\"string\",\"minLength\":1,\"required\":true,\"private\":true,\"searchable\":false}},\"kind\":\"collectionType\"},\"modelName\":\"file\"},\"plugin::upload.folder\":{\"collectionName\":\"upload_folders\",\"info\":{\"singularName\":\"folder\",\"pluralName\":\"folders\",\"displayName\":\"Folder\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"required\":true},\"pathId\":{\"type\":\"integer\",\"unique\":true,\"required\":true},\"parent\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::upload.folder\",\"inversedBy\":\"children\"},\"children\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::upload.folder\",\"mappedBy\":\"parent\"},\"files\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::upload.file\",\"mappedBy\":\"folder\"},\"path\":{\"type\":\"string\",\"minLength\":1,\"required\":true},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::upload.folder\",\"writable\":false,\"private\":false,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"upload_folders\"}}},\"indexes\":[{\"name\":\"upload_folders_path_id_index\",\"columns\":[\"path_id\"],\"type\":\"unique\"},{\"name\":\"upload_folders_path_index\",\"columns\":[\"path\"],\"type\":\"unique\"}],\"plugin\":\"upload\",\"globalId\":\"UploadFolder\",\"uid\":\"plugin::upload.folder\",\"modelType\":\"contentType\",\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"upload_folders\",\"info\":{\"singularName\":\"folder\",\"pluralName\":\"folders\",\"displayName\":\"Folder\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"required\":true},\"pathId\":{\"type\":\"integer\",\"unique\":true,\"required\":true},\"parent\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::upload.folder\",\"inversedBy\":\"children\"},\"children\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::upload.folder\",\"mappedBy\":\"parent\"},\"files\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::upload.file\",\"mappedBy\":\"folder\"},\"path\":{\"type\":\"string\",\"minLength\":1,\"required\":true}},\"kind\":\"collectionType\"},\"modelName\":\"folder\"},\"plugin::i18n.locale\":{\"info\":{\"singularName\":\"locale\",\"pluralName\":\"locales\",\"collectionName\":\"locales\",\"displayName\":\"Locale\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"min\":1,\"max\":50,\"configurable\":false},\"code\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::i18n.locale\",\"writable\":false,\"private\":false,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"i18n_locale\"}}},\"plugin\":\"i18n\",\"collectionName\":\"i18n_locale\",\"globalId\":\"I18NLocale\",\"uid\":\"plugin::i18n.locale\",\"modelType\":\"contentType\",\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"i18n_locale\",\"info\":{\"singularName\":\"locale\",\"pluralName\":\"locales\",\"collectionName\":\"locales\",\"displayName\":\"Locale\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"min\":1,\"max\":50,\"configurable\":false},\"code\":{\"type\":\"string\",\"unique\":true,\"configurable\":false}},\"kind\":\"collectionType\"},\"modelName\":\"locale\"},\"plugin::content-releases.release\":{\"collectionName\":\"strapi_releases\",\"info\":{\"singularName\":\"release\",\"pluralName\":\"releases\",\"displayName\":\"Release\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"required\":true},\"releasedAt\":{\"type\":\"datetime\"},\"scheduledAt\":{\"type\":\"datetime\"},\"timezone\":{\"type\":\"string\"},\"status\":{\"type\":\"enumeration\",\"enum\":[\"ready\",\"blocked\",\"failed\",\"done\",\"empty\"],\"required\":true},\"actions\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::content-releases.release-action\",\"mappedBy\":\"release\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::content-releases.release\",\"writable\":false,\"private\":false,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"strapi_releases\"}}},\"plugin\":\"content-releases\",\"globalId\":\"ContentReleasesRelease\",\"uid\":\"plugin::content-releases.release\",\"modelType\":\"contentType\",\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"strapi_releases\",\"info\":{\"singularName\":\"release\",\"pluralName\":\"releases\",\"displayName\":\"Release\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"required\":true},\"releasedAt\":{\"type\":\"datetime\"},\"scheduledAt\":{\"type\":\"datetime\"},\"timezone\":{\"type\":\"string\"},\"status\":{\"type\":\"enumeration\",\"enum\":[\"ready\",\"blocked\",\"failed\",\"done\",\"empty\"],\"required\":true},\"actions\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::content-releases.release-action\",\"mappedBy\":\"release\"}},\"kind\":\"collectionType\"},\"modelName\":\"release\"},\"plugin::content-releases.release-action\":{\"collectionName\":\"strapi_release_actions\",\"info\":{\"singularName\":\"release-action\",\"pluralName\":\"release-actions\",\"displayName\":\"Release Action\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"type\":{\"type\":\"enumeration\",\"enum\":[\"publish\",\"unpublish\"],\"required\":true},\"contentType\":{\"type\":\"string\",\"required\":true},\"entryDocumentId\":{\"type\":\"string\"},\"locale\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"release\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::content-releases.release\",\"inversedBy\":\"actions\"},\"isEntryValid\":{\"type\":\"boolean\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::content-releases.release-action\",\"writable\":false,\"private\":false,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"strapi_release_actions\"}}},\"plugin\":\"content-releases\",\"globalId\":\"ContentReleasesReleaseAction\",\"uid\":\"plugin::content-releases.release-action\",\"modelType\":\"contentType\",\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"strapi_release_actions\",\"info\":{\"singularName\":\"release-action\",\"pluralName\":\"release-actions\",\"displayName\":\"Release Action\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"type\":{\"type\":\"enumeration\",\"enum\":[\"publish\",\"unpublish\"],\"required\":true},\"contentType\":{\"type\":\"string\",\"required\":true},\"entryDocumentId\":{\"type\":\"string\"},\"locale\":{\"type\":\"string\"},\"release\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::content-releases.release\",\"inversedBy\":\"actions\"},\"isEntryValid\":{\"type\":\"boolean\"}},\"kind\":\"collectionType\"},\"modelName\":\"release-action\"},\"plugin::review-workflows.workflow\":{\"collectionName\":\"strapi_workflows\",\"info\":{\"name\":\"Workflow\",\"description\":\"\",\"singularName\":\"workflow\",\"pluralName\":\"workflows\",\"displayName\":\"Workflow\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"required\":true,\"unique\":true},\"stages\":{\"type\":\"relation\",\"target\":\"plugin::review-workflows.workflow-stage\",\"relation\":\"oneToMany\",\"mappedBy\":\"workflow\"},\"contentTypes\":{\"type\":\"json\",\"required\":true,\"default\":\"[]\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::review-workflows.workflow\",\"writable\":false,\"private\":false,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"strapi_workflows\"}}},\"plugin\":\"review-workflows\",\"globalId\":\"ReviewWorkflowsWorkflow\",\"uid\":\"plugin::review-workflows.workflow\",\"modelType\":\"contentType\",\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"strapi_workflows\",\"info\":{\"name\":\"Workflow\",\"description\":\"\",\"singularName\":\"workflow\",\"pluralName\":\"workflows\",\"displayName\":\"Workflow\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"required\":true,\"unique\":true},\"stages\":{\"type\":\"relation\",\"target\":\"plugin::review-workflows.workflow-stage\",\"relation\":\"oneToMany\",\"mappedBy\":\"workflow\"},\"contentTypes\":{\"type\":\"json\",\"required\":true,\"default\":\"[]\"}},\"kind\":\"collectionType\"},\"modelName\":\"workflow\"},\"plugin::review-workflows.workflow-stage\":{\"collectionName\":\"strapi_workflows_stages\",\"info\":{\"name\":\"Workflow Stage\",\"description\":\"\",\"singularName\":\"workflow-stage\",\"pluralName\":\"workflow-stages\",\"displayName\":\"Stages\"},\"options\":{\"version\":\"1.1.0\",\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"configurable\":false},\"color\":{\"type\":\"string\",\"configurable\":false,\"default\":\"#4945FF\"},\"workflow\":{\"type\":\"relation\",\"target\":\"plugin::review-workflows.workflow\",\"relation\":\"manyToOne\",\"inversedBy\":\"stages\",\"configurable\":false},\"permissions\":{\"type\":\"relation\",\"target\":\"admin::permission\",\"relation\":\"manyToMany\",\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::review-workflows.workflow-stage\",\"writable\":false,\"private\":false,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"strapi_workflows_stages\"}}},\"plugin\":\"review-workflows\",\"globalId\":\"ReviewWorkflowsWorkflowStage\",\"uid\":\"plugin::review-workflows.workflow-stage\",\"modelType\":\"contentType\",\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"strapi_workflows_stages\",\"info\":{\"name\":\"Workflow Stage\",\"description\":\"\",\"singularName\":\"workflow-stage\",\"pluralName\":\"workflow-stages\",\"displayName\":\"Stages\"},\"options\":{\"version\":\"1.1.0\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"configurable\":false},\"color\":{\"type\":\"string\",\"configurable\":false,\"default\":\"#4945FF\"},\"workflow\":{\"type\":\"relation\",\"target\":\"plugin::review-workflows.workflow\",\"relation\":\"manyToOne\",\"inversedBy\":\"stages\",\"configurable\":false},\"permissions\":{\"type\":\"relation\",\"target\":\"admin::permission\",\"relation\":\"manyToMany\",\"configurable\":false}},\"kind\":\"collectionType\"},\"modelName\":\"workflow-stage\"},\"plugin::users-permissions.permission\":{\"collectionName\":\"up_permissions\",\"info\":{\"name\":\"permission\",\"description\":\"\",\"singularName\":\"permission\",\"pluralName\":\"permissions\",\"displayName\":\"Permission\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"role\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.role\",\"inversedBy\":\"permissions\",\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.permission\",\"writable\":false,\"private\":false,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"up_permissions\"}}},\"plugin\":\"users-permissions\",\"globalId\":\"UsersPermissionsPermission\",\"uid\":\"plugin::users-permissions.permission\",\"modelType\":\"contentType\",\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"up_permissions\",\"info\":{\"name\":\"permission\",\"description\":\"\",\"singularName\":\"permission\",\"pluralName\":\"permissions\",\"displayName\":\"Permission\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"role\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.role\",\"inversedBy\":\"permissions\",\"configurable\":false}},\"kind\":\"collectionType\"},\"modelName\":\"permission\",\"options\":{\"draftAndPublish\":false}},\"plugin::users-permissions.role\":{\"collectionName\":\"up_roles\",\"info\":{\"name\":\"role\",\"description\":\"\",\"singularName\":\"role\",\"pluralName\":\"roles\",\"displayName\":\"Role\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":3,\"required\":true,\"configurable\":false},\"description\":{\"type\":\"string\",\"configurable\":false},\"type\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"permissions\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.permission\",\"mappedBy\":\"role\",\"configurable\":false},\"users\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.user\",\"mappedBy\":\"role\",\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.role\",\"writable\":false,\"private\":false,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"up_roles\"}}},\"plugin\":\"users-permissions\",\"globalId\":\"UsersPermissionsRole\",\"uid\":\"plugin::users-permissions.role\",\"modelType\":\"contentType\",\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"up_roles\",\"info\":{\"name\":\"role\",\"description\":\"\",\"singularName\":\"role\",\"pluralName\":\"roles\",\"displayName\":\"Role\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":3,\"required\":true,\"configurable\":false},\"description\":{\"type\":\"string\",\"configurable\":false},\"type\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"permissions\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.permission\",\"mappedBy\":\"role\",\"configurable\":false},\"users\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.user\",\"mappedBy\":\"role\",\"configurable\":false}},\"kind\":\"collectionType\"},\"modelName\":\"role\",\"options\":{\"draftAndPublish\":false}},\"plugin::users-permissions.user\":{\"collectionName\":\"up_users\",\"info\":{\"name\":\"user\",\"description\":\"\",\"singularName\":\"user\",\"pluralName\":\"users\",\"displayName\":\"User\"},\"options\":{\"draftAndPublish\":false},\"attributes\":{\"username\":{\"type\":\"string\",\"minLength\":3,\"unique\":true,\"configurable\":false,\"required\":true},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true},\"provider\":{\"type\":\"string\",\"configurable\":false},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"private\":true,\"searchable\":false},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"confirmationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"confirmed\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"role\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.role\",\"inversedBy\":\"users\",\"configurable\":false},\"mobile\":{\"type\":\"string\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.user\",\"writable\":false,\"private\":false,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"up_users\"}}},\"config\":{\"attributes\":{\"resetPasswordToken\":{\"hidden\":true},\"confirmationToken\":{\"hidden\":true},\"provider\":{\"hidden\":true}}},\"plugin\":\"users-permissions\",\"globalId\":\"UsersPermissionsUser\",\"kind\":\"collectionType\",\"__filename__\":\"schema.json\",\"uid\":\"plugin::users-permissions.user\",\"modelType\":\"contentType\",\"__schema__\":{\"collectionName\":\"up_users\",\"info\":{\"name\":\"user\",\"description\":\"\",\"singularName\":\"user\",\"pluralName\":\"users\",\"displayName\":\"User\"},\"options\":{\"draftAndPublish\":false},\"attributes\":{\"username\":{\"type\":\"string\",\"minLength\":3,\"unique\":true,\"configurable\":false,\"required\":true},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true},\"provider\":{\"type\":\"string\",\"configurable\":false},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"private\":true,\"searchable\":false},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"confirmationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"confirmed\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"role\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.role\",\"inversedBy\":\"users\",\"configurable\":false},\"mobile\":{\"type\":\"string\"}},\"kind\":\"collectionType\"},\"modelName\":\"user\"},\"api::category.category\":{\"kind\":\"collectionType\",\"collectionName\":\"categories\",\"info\":{\"singularName\":\"category\",\"pluralName\":\"categories\",\"displayName\":\"Category\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"name\":{\"type\":\"string\",\"required\":true},\"icon\":{\"type\":\"media\",\"multiple\":true,\"required\":false,\"allowedTypes\":[\"images\",\"files\",\"videos\",\"audios\"]},\"color\":{\"type\":\"string\"},\"products\":{\"type\":\"relation\",\"relation\":\"manyToMany\",\"target\":\"api::product.product\",\"mappedBy\":\"categories\"},\"slug\":{\"type\":\"uid\",\"targetField\":\"name\"},\"banner\":{\"type\":\"media\",\"multiple\":false,\"required\":false,\"allowedTypes\":[\"images\",\"files\"]},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::category.category\",\"writable\":false,\"private\":false,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"categories\"}}},\"apiName\":\"category\",\"globalId\":\"Category\",\"uid\":\"api::category.category\",\"modelType\":\"contentType\",\"__schema__\":{\"collectionName\":\"categories\",\"info\":{\"singularName\":\"category\",\"pluralName\":\"categories\",\"displayName\":\"Category\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"name\":{\"type\":\"string\",\"required\":true},\"icon\":{\"type\":\"media\",\"multiple\":true,\"required\":false,\"allowedTypes\":[\"images\",\"files\",\"videos\",\"audios\"]},\"color\":{\"type\":\"string\"},\"products\":{\"type\":\"relation\",\"relation\":\"manyToMany\",\"target\":\"api::product.product\",\"mappedBy\":\"categories\"},\"slug\":{\"type\":\"uid\",\"targetField\":\"name\"},\"banner\":{\"type\":\"media\",\"multiple\":false,\"required\":false,\"allowedTypes\":[\"images\",\"files\"]}},\"kind\":\"collectionType\"},\"modelName\":\"category\",\"actions\":{},\"lifecycles\":{}},\"api::color.color\":{\"kind\":\"collectionType\",\"collectionName\":\"colors\",\"info\":{\"singularName\":\"color\",\"pluralName\":\"colors\",\"displayName\":\"Color\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"name\":{\"type\":\"string\",\"required\":true},\"code\":{\"type\":\"string\",\"required\":true},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::color.color\",\"writable\":false,\"private\":false,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"colors\"}}},\"apiName\":\"color\",\"globalId\":\"Color\",\"uid\":\"api::color.color\",\"modelType\":\"contentType\",\"__schema__\":{\"collectionName\":\"colors\",\"info\":{\"singularName\":\"color\",\"pluralName\":\"colors\",\"displayName\":\"Color\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"name\":{\"type\":\"string\",\"required\":true},\"code\":{\"type\":\"string\",\"required\":true}},\"kind\":\"collectionType\"},\"modelName\":\"color\",\"actions\":{},\"lifecycles\":{}},\"api::order.order\":{\"kind\":\"collectionType\",\"collectionName\":\"orders\",\"info\":{\"singularName\":\"order\",\"pluralName\":\"orders\",\"displayName\":\"Order\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"username\":{\"type\":\"string\"},\"email\":{\"type\":\"string\"},\"phone\":{\"type\":\"string\"},\"zip\":{\"type\":\"string\"},\"address\":{\"type\":\"text\"},\"totalAmount\":{\"type\":\"integer\"},\"userId\":{\"type\":\"integer\"},\"paymentId\":{\"type\":\"string\"},\"orderItemList\":{\"type\":\"component\",\"repeatable\":true,\"component\":\"ordered-item.ordered-item\"},\"orderStatus\":{\"type\":\"enumeration\",\"enum\":[\"Pending\",\"Processing\",\"On The Way\",\"Completed\",\"Failed\",\"Canceled\",\"On hold\"],\"default\":\"Pending\"},\"subTotal\":{\"type\":\"integer\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::order.order\",\"writable\":false,\"private\":false,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"orders\"}}},\"apiName\":\"order\",\"globalId\":\"Order\",\"uid\":\"api::order.order\",\"modelType\":\"contentType\",\"__schema__\":{\"collectionName\":\"orders\",\"info\":{\"singularName\":\"order\",\"pluralName\":\"orders\",\"displayName\":\"Order\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"username\":{\"type\":\"string\"},\"email\":{\"type\":\"string\"},\"phone\":{\"type\":\"string\"},\"zip\":{\"type\":\"string\"},\"address\":{\"type\":\"text\"},\"totalAmount\":{\"type\":\"integer\"},\"userId\":{\"type\":\"integer\"},\"paymentId\":{\"type\":\"string\"},\"orderItemList\":{\"type\":\"component\",\"repeatable\":true,\"component\":\"ordered-item.ordered-item\"},\"orderStatus\":{\"type\":\"enumeration\",\"enum\":[\"Pending\",\"Processing\",\"On The Way\",\"Completed\",\"Failed\",\"Canceled\",\"On hold\"],\"default\":\"Pending\"},\"subTotal\":{\"type\":\"integer\"}},\"kind\":\"collectionType\"},\"modelName\":\"order\",\"actions\":{},\"lifecycles\":{}},\"api::product.product\":{\"kind\":\"collectionType\",\"collectionName\":\"products\",\"info\":{\"singularName\":\"product\",\"pluralName\":\"products\",\"displayName\":\"Product\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"name\":{\"type\":\"string\"},\"description\":{\"type\":\"string\"},\"mrp\":{\"type\":\"integer\"},\"sellingPrice\":{\"type\":\"integer\"},\"itemQuantityType\":{\"type\":\"string\"},\"slug\":{\"type\":\"uid\",\"targetField\":\"name\"},\"images\":{\"type\":\"media\",\"multiple\":true,\"required\":false,\"allowedTypes\":[\"images\",\"files\",\"videos\",\"audios\"]},\"categories\":{\"type\":\"relation\",\"relation\":\"manyToMany\",\"target\":\"api::category.category\",\"inversedBy\":\"products\"},\"stock\":{\"type\":\"integer\",\"default\":50},\"colors\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::color.color\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::product.product\",\"writable\":false,\"private\":false,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"products\"}}},\"apiName\":\"product\",\"globalId\":\"Product\",\"uid\":\"api::product.product\",\"modelType\":\"contentType\",\"__schema__\":{\"collectionName\":\"products\",\"info\":{\"singularName\":\"product\",\"pluralName\":\"products\",\"displayName\":\"Product\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"name\":{\"type\":\"string\"},\"description\":{\"type\":\"string\"},\"mrp\":{\"type\":\"integer\"},\"sellingPrice\":{\"type\":\"integer\"},\"itemQuantityType\":{\"type\":\"string\"},\"slug\":{\"type\":\"uid\",\"targetField\":\"name\"},\"images\":{\"type\":\"media\",\"multiple\":true,\"required\":false,\"allowedTypes\":[\"images\",\"files\",\"videos\",\"audios\"]},\"categories\":{\"type\":\"relation\",\"relation\":\"manyToMany\",\"target\":\"api::category.category\",\"inversedBy\":\"products\"},\"stock\":{\"type\":\"integer\",\"default\":50},\"colors\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::color.color\"}},\"kind\":\"collectionType\"},\"modelName\":\"product\",\"actions\":{},\"lifecycles\":{}},\"api::slider.slider\":{\"kind\":\"collectionType\",\"collectionName\":\"sliders\",\"info\":{\"singularName\":\"slider\",\"pluralName\":\"sliders\",\"displayName\":\"Slider\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"name\":{\"type\":\"string\",\"required\":true},\"image\":{\"allowedTypes\":[\"images\",\"files\",\"videos\",\"audios\"],\"type\":\"media\",\"multiple\":true},\"type\":{\"type\":\"enumeration\",\"enum\":[\"home\",\"banner\"]},\"url\":{\"type\":\"string\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::slider.slider\",\"writable\":false,\"private\":false,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"sliders\"}}},\"apiName\":\"slider\",\"globalId\":\"Slider\",\"uid\":\"api::slider.slider\",\"modelType\":\"contentType\",\"__schema__\":{\"collectionName\":\"sliders\",\"info\":{\"singularName\":\"slider\",\"pluralName\":\"sliders\",\"displayName\":\"Slider\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"name\":{\"type\":\"string\",\"required\":true},\"image\":{\"allowedTypes\":[\"images\",\"files\",\"videos\",\"audios\"],\"type\":\"media\",\"multiple\":true},\"type\":{\"type\":\"enumeration\",\"enum\":[\"home\",\"banner\"]},\"url\":{\"type\":\"string\"}},\"kind\":\"collectionType\"},\"modelName\":\"slider\",\"actions\":{},\"lifecycles\":{}},\"api::user-cart.user-cart\":{\"kind\":\"collectionType\",\"collectionName\":\"user_carts\",\"info\":{\"singularName\":\"user-cart\",\"pluralName\":\"user-carts\",\"displayName\":\"User Cart\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"quantity\":{\"type\":\"integer\"},\"amount\":{\"type\":\"integer\"},\"products\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::product.product\"},\"users_permissions_user\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"plugin::users-permissions.user\"},\"userId\":{\"type\":\"integer\"},\"productId\":{\"type\":\"integer\"},\"color\":{\"type\":\"string\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::user-cart.user-cart\",\"writable\":false,\"private\":false,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"user_carts\"}}},\"apiName\":\"user-cart\",\"globalId\":\"UserCart\",\"uid\":\"api::user-cart.user-cart\",\"modelType\":\"contentType\",\"__schema__\":{\"collectionName\":\"user_carts\",\"info\":{\"singularName\":\"user-cart\",\"pluralName\":\"user-carts\",\"displayName\":\"User Cart\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"quantity\":{\"type\":\"integer\"},\"amount\":{\"type\":\"integer\"},\"products\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::product.product\"},\"users_permissions_user\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"plugin::users-permissions.user\"},\"userId\":{\"type\":\"integer\"},\"productId\":{\"type\":\"integer\"},\"color\":{\"type\":\"string\"}},\"kind\":\"collectionType\"},\"modelName\":\"user-cart\",\"actions\":{},\"lifecycles\":{}},\"admin::permission\":{\"collectionName\":\"admin_permissions\",\"info\":{\"name\":\"Permission\",\"description\":\"\",\"singularName\":\"permission\",\"pluralName\":\"permissions\",\"displayName\":\"Permission\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"actionParameters\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":{}},\"subject\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false},\"properties\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":{}},\"conditions\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":[]},\"role\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::role\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"admin::permission\",\"writable\":false,\"private\":false,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"admin_permissions\"}}},\"plugin\":\"admin\",\"globalId\":\"AdminPermission\",\"uid\":\"admin::permission\",\"modelType\":\"contentType\",\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"admin_permissions\",\"info\":{\"name\":\"Permission\",\"description\":\"\",\"singularName\":\"permission\",\"pluralName\":\"permissions\",\"displayName\":\"Permission\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"actionParameters\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":{}},\"subject\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false},\"properties\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":{}},\"conditions\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":[]},\"role\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::role\"}},\"kind\":\"collectionType\"},\"modelName\":\"permission\"},\"admin::user\":{\"collectionName\":\"admin_users\",\"info\":{\"name\":\"User\",\"description\":\"\",\"singularName\":\"user\",\"pluralName\":\"users\",\"displayName\":\"User\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"firstname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"lastname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"username\":{\"type\":\"string\",\"unique\":false,\"configurable\":false,\"required\":false},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true,\"unique\":true,\"private\":true},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"required\":false,\"private\":true,\"searchable\":false},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"registrationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"isActive\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"roles\":{\"configurable\":false,\"private\":true,\"type\":\"relation\",\"relation\":\"manyToMany\",\"inversedBy\":\"users\",\"target\":\"admin::role\",\"collectionName\":\"strapi_users_roles\"},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"preferedLanguage\":{\"type\":\"string\",\"configurable\":false,\"required\":false,\"searchable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"admin::user\",\"writable\":false,\"private\":false,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"admin_users\"}}},\"config\":{\"attributes\":{\"resetPasswordToken\":{\"hidden\":true},\"registrationToken\":{\"hidden\":true}}},\"plugin\":\"admin\",\"globalId\":\"AdminUser\",\"uid\":\"admin::user\",\"modelType\":\"contentType\",\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"admin_users\",\"info\":{\"name\":\"User\",\"description\":\"\",\"singularName\":\"user\",\"pluralName\":\"users\",\"displayName\":\"User\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"firstname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"lastname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"username\":{\"type\":\"string\",\"unique\":false,\"configurable\":false,\"required\":false},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true,\"unique\":true,\"private\":true},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"required\":false,\"private\":true,\"searchable\":false},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"registrationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"isActive\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"roles\":{\"configurable\":false,\"private\":true,\"type\":\"relation\",\"relation\":\"manyToMany\",\"inversedBy\":\"users\",\"target\":\"admin::role\",\"collectionName\":\"strapi_users_roles\"},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"preferedLanguage\":{\"type\":\"string\",\"configurable\":false,\"required\":false,\"searchable\":false}},\"kind\":\"collectionType\"},\"modelName\":\"user\",\"options\":{\"draftAndPublish\":false}},\"admin::role\":{\"collectionName\":\"admin_roles\",\"info\":{\"name\":\"Role\",\"description\":\"\",\"singularName\":\"role\",\"pluralName\":\"roles\",\"displayName\":\"Role\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"code\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"description\":{\"type\":\"string\",\"configurable\":false},\"users\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToMany\",\"mappedBy\":\"roles\",\"target\":\"admin::user\"},\"permissions\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"oneToMany\",\"mappedBy\":\"role\",\"target\":\"admin::permission\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"admin::role\",\"writable\":false,\"private\":false,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"admin_roles\"}}},\"plugin\":\"admin\",\"globalId\":\"AdminRole\",\"uid\":\"admin::role\",\"modelType\":\"contentType\",\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"admin_roles\",\"info\":{\"name\":\"Role\",\"description\":\"\",\"singularName\":\"role\",\"pluralName\":\"roles\",\"displayName\":\"Role\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"code\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"description\":{\"type\":\"string\",\"configurable\":false},\"users\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToMany\",\"mappedBy\":\"roles\",\"target\":\"admin::user\"},\"permissions\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"oneToMany\",\"mappedBy\":\"role\",\"target\":\"admin::permission\"}},\"kind\":\"collectionType\"},\"modelName\":\"role\"},\"admin::api-token\":{\"collectionName\":\"strapi_api_tokens\",\"info\":{\"name\":\"Api Token\",\"singularName\":\"api-token\",\"pluralName\":\"api-tokens\",\"displayName\":\"Api Token\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true,\"unique\":true},\"description\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false,\"default\":\"\"},\"type\":{\"type\":\"enumeration\",\"enum\":[\"read-only\",\"full-access\",\"custom\"],\"configurable\":false,\"required\":true,\"default\":\"read-only\"},\"accessKey\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true,\"searchable\":false},\"lastUsedAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"permissions\":{\"type\":\"relation\",\"target\":\"admin::api-token-permission\",\"relation\":\"oneToMany\",\"mappedBy\":\"token\",\"configurable\":false,\"required\":false},\"expiresAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"lifespan\":{\"type\":\"biginteger\",\"configurable\":false,\"required\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"admin::api-token\",\"writable\":false,\"private\":false,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"strapi_api_tokens\"}}},\"plugin\":\"admin\",\"globalId\":\"AdminApiToken\",\"uid\":\"admin::api-token\",\"modelType\":\"contentType\",\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"strapi_api_tokens\",\"info\":{\"name\":\"Api Token\",\"singularName\":\"api-token\",\"pluralName\":\"api-tokens\",\"displayName\":\"Api Token\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true,\"unique\":true},\"description\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false,\"default\":\"\"},\"type\":{\"type\":\"enumeration\",\"enum\":[\"read-only\",\"full-access\",\"custom\"],\"configurable\":false,\"required\":true,\"default\":\"read-only\"},\"accessKey\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true,\"searchable\":false},\"lastUsedAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"permissions\":{\"type\":\"relation\",\"target\":\"admin::api-token-permission\",\"relation\":\"oneToMany\",\"mappedBy\":\"token\",\"configurable\":false,\"required\":false},\"expiresAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"lifespan\":{\"type\":\"biginteger\",\"configurable\":false,\"required\":false}},\"kind\":\"collectionType\"},\"modelName\":\"api-token\"},\"admin::api-token-permission\":{\"collectionName\":\"strapi_api_token_permissions\",\"info\":{\"name\":\"API Token Permission\",\"description\":\"\",\"singularName\":\"api-token-permission\",\"pluralName\":\"api-token-permissions\",\"displayName\":\"API Token Permission\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"token\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::api-token\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"admin::api-token-permission\",\"writable\":false,\"private\":false,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"strapi_api_token_permissions\"}}},\"plugin\":\"admin\",\"globalId\":\"AdminApiTokenPermission\",\"uid\":\"admin::api-token-permission\",\"modelType\":\"contentType\",\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"strapi_api_token_permissions\",\"info\":{\"name\":\"API Token Permission\",\"description\":\"\",\"singularName\":\"api-token-permission\",\"pluralName\":\"api-token-permissions\",\"displayName\":\"API Token Permission\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"token\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::api-token\"}},\"kind\":\"collectionType\"},\"modelName\":\"api-token-permission\"},\"admin::transfer-token\":{\"collectionName\":\"strapi_transfer_tokens\",\"info\":{\"name\":\"Transfer Token\",\"singularName\":\"transfer-token\",\"pluralName\":\"transfer-tokens\",\"displayName\":\"Transfer Token\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true,\"unique\":true},\"description\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false,\"default\":\"\"},\"accessKey\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"lastUsedAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"permissions\":{\"type\":\"relation\",\"target\":\"admin::transfer-token-permission\",\"relation\":\"oneToMany\",\"mappedBy\":\"token\",\"configurable\":false,\"required\":false},\"expiresAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"lifespan\":{\"type\":\"biginteger\",\"configurable\":false,\"required\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"admin::transfer-token\",\"writable\":false,\"private\":false,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"strapi_transfer_tokens\"}}},\"plugin\":\"admin\",\"globalId\":\"AdminTransferToken\",\"uid\":\"admin::transfer-token\",\"modelType\":\"contentType\",\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"strapi_transfer_tokens\",\"info\":{\"name\":\"Transfer Token\",\"singularName\":\"transfer-token\",\"pluralName\":\"transfer-tokens\",\"displayName\":\"Transfer Token\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true,\"unique\":true},\"description\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false,\"default\":\"\"},\"accessKey\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"lastUsedAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"permissions\":{\"type\":\"relation\",\"target\":\"admin::transfer-token-permission\",\"relation\":\"oneToMany\",\"mappedBy\":\"token\",\"configurable\":false,\"required\":false},\"expiresAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"lifespan\":{\"type\":\"biginteger\",\"configurable\":false,\"required\":false}},\"kind\":\"collectionType\"},\"modelName\":\"transfer-token\"},\"admin::transfer-token-permission\":{\"collectionName\":\"strapi_transfer_token_permissions\",\"info\":{\"name\":\"Transfer Token Permission\",\"description\":\"\",\"singularName\":\"transfer-token-permission\",\"pluralName\":\"transfer-token-permissions\",\"displayName\":\"Transfer Token Permission\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"token\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::transfer-token\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"admin::transfer-token-permission\",\"writable\":false,\"private\":false,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"strapi_transfer_token_permissions\"}}},\"plugin\":\"admin\",\"globalId\":\"AdminTransferTokenPermission\",\"uid\":\"admin::transfer-token-permission\",\"modelType\":\"contentType\",\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"strapi_transfer_token_permissions\",\"info\":{\"name\":\"Transfer Token Permission\",\"description\":\"\",\"singularName\":\"transfer-token-permission\",\"pluralName\":\"transfer-token-permissions\",\"displayName\":\"Transfer Token Permission\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"token\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::transfer-token\"}},\"kind\":\"collectionType\"},\"modelName\":\"transfer-token-permission\"}}', 'object', NULL, NULL);
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
(13, 'plugin_content_manager_configuration_content_types::plugin::users-permissions.user', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"username\",\"defaultSortBy\":\"username\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"username\":{\"edit\":{\"label\":\"username\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"username\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"email\",\"searchable\":true,\"sortable\":true}},\"provider\":{\"edit\":{\"label\":\"provider\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"provider\",\"searchable\":true,\"sortable\":true}},\"password\":{\"edit\":{\"label\":\"password\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"password\",\"searchable\":true,\"sortable\":true}},\"resetPasswordToken\":{\"edit\":{\"label\":\"resetPasswordToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"resetPasswordToken\",\"searchable\":true,\"sortable\":true}},\"confirmationToken\":{\"edit\":{\"label\":\"confirmationToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"confirmationToken\",\"searchable\":true,\"sortable\":true}},\"confirmed\":{\"edit\":{\"label\":\"confirmed\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"confirmed\",\"searchable\":true,\"sortable\":true}},\"blocked\":{\"edit\":{\"label\":\"blocked\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"blocked\",\"searchable\":true,\"sortable\":true}},\"role\":{\"edit\":{\"label\":\"role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"role\",\"searchable\":true,\"sortable\":true}},\"mobile\":{\"edit\":{\"label\":\"mobile\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"mobile\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"username\",\"email\",\"confirmed\"],\"edit\":[[{\"name\":\"username\",\"size\":6},{\"name\":\"email\",\"size\":6}],[{\"name\":\"password\",\"size\":6},{\"name\":\"confirmed\",\"size\":4}],[{\"name\":\"blocked\",\"size\":4},{\"name\":\"role\",\"size\":6}],[{\"name\":\"mobile\",\"size\":6}]]},\"uid\":\"plugin::users-permissions.user\"}', 'object', NULL, NULL),
(14, 'plugin_content_manager_configuration_content_types::admin::api-token', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"type\",\"searchable\":true,\"sortable\":true}},\"accessKey\":{\"edit\":{\"label\":\"accessKey\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"accessKey\",\"searchable\":true,\"sortable\":true}},\"lastUsedAt\":{\"edit\":{\"label\":\"lastUsedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lastUsedAt\",\"searchable\":true,\"sortable\":true}},\"permissions\":{\"edit\":{\"label\":\"permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"action\"},\"list\":{\"label\":\"permissions\",\"searchable\":false,\"sortable\":false}},\"expiresAt\":{\"edit\":{\"label\":\"expiresAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"expiresAt\",\"searchable\":true,\"sortable\":true}},\"lifespan\":{\"edit\":{\"label\":\"lifespan\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lifespan\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"description\",\"type\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"type\",\"size\":6},{\"name\":\"accessKey\",\"size\":6}],[{\"name\":\"lastUsedAt\",\"size\":6},{\"name\":\"permissions\",\"size\":6}],[{\"name\":\"expiresAt\",\"size\":6},{\"name\":\"lifespan\",\"size\":4}]]},\"uid\":\"admin::api-token\"}', 'object', NULL, NULL),
(15, 'plugin_content_manager_configuration_content_types::admin::role', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"code\":{\"edit\":{\"label\":\"code\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"code\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"users\":{\"edit\":{\"label\":\"users\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"users\",\"searchable\":false,\"sortable\":false}},\"permissions\":{\"edit\":{\"label\":\"permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"action\"},\"list\":{\"label\":\"permissions\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"code\",\"description\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"code\",\"size\":6}],[{\"name\":\"description\",\"size\":6},{\"name\":\"users\",\"size\":6}],[{\"name\":\"permissions\",\"size\":6}]]},\"uid\":\"admin::role\"}', 'object', NULL, NULL),
(16, 'plugin_content_manager_configuration_content_types::admin::api-token-permission', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"action\",\"defaultSortBy\":\"action\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"action\",\"searchable\":true,\"sortable\":true}},\"token\":{\"edit\":{\"label\":\"token\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"token\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"action\",\"token\",\"createdAt\"],\"edit\":[[{\"name\":\"action\",\"size\":6},{\"name\":\"token\",\"size\":6}]]},\"uid\":\"admin::api-token-permission\"}', 'object', NULL, NULL),
(17, 'plugin_content_manager_configuration_content_types::admin::transfer-token', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"accessKey\":{\"edit\":{\"label\":\"accessKey\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"accessKey\",\"searchable\":true,\"sortable\":true}},\"lastUsedAt\":{\"edit\":{\"label\":\"lastUsedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lastUsedAt\",\"searchable\":true,\"sortable\":true}},\"permissions\":{\"edit\":{\"label\":\"permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"action\"},\"list\":{\"label\":\"permissions\",\"searchable\":false,\"sortable\":false}},\"expiresAt\":{\"edit\":{\"label\":\"expiresAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"expiresAt\",\"searchable\":true,\"sortable\":true}},\"lifespan\":{\"edit\":{\"label\":\"lifespan\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lifespan\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"description\",\"accessKey\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"accessKey\",\"size\":6},{\"name\":\"lastUsedAt\",\"size\":6}],[{\"name\":\"permissions\",\"size\":6},{\"name\":\"expiresAt\",\"size\":6}],[{\"name\":\"lifespan\",\"size\":4}]]},\"uid\":\"admin::transfer-token\"}', 'object', NULL, NULL),
(18, 'plugin_content_manager_configuration_content_types::admin::transfer-token-permission', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"action\",\"defaultSortBy\":\"action\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"action\",\"searchable\":true,\"sortable\":true}},\"token\":{\"edit\":{\"label\":\"token\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"token\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"action\",\"token\",\"createdAt\"],\"edit\":[[{\"name\":\"action\",\"size\":6},{\"name\":\"token\",\"size\":6}]]},\"uid\":\"admin::transfer-token-permission\"}', 'object', NULL, NULL),
(19, 'plugin_upload_settings', '{\"sizeOptimization\":true,\"responsiveDimensions\":true,\"autoOrientation\":false}', 'object', NULL, NULL),
(20, 'plugin_upload_view_configuration', '{\"pageSize\":10,\"sort\":\"createdAt:DESC\"}', 'object', NULL, NULL),
(21, 'plugin_upload_metrics', '{\"weeklySchedule\":\"33 21 9 * * 4\",\"lastWeeklyUpdate\":1730344893104}', 'object', NULL, NULL),
(22, 'plugin_i18n_default_locale', '\"en\"', 'string', NULL, NULL);
INSERT INTO `strapi_core_store_settings` (`id`, `key`, `value`, `type`, `environment`, `tag`) VALUES
(23, 'plugin_users-permissions_grant', '{\"email\":{\"icon\":\"envelope\",\"enabled\":true},\"discord\":{\"icon\":\"discord\",\"enabled\":false,\"key\":\"\",\"secret\":\"\",\"callbackUrl\":\"api/auth/discord/callback\",\"scope\":[\"identify\",\"email\"]},\"facebook\":{\"icon\":\"facebook-square\",\"enabled\":false,\"key\":\"\",\"secret\":\"\",\"callbackUrl\":\"api/auth/facebook/callback\",\"scope\":[\"email\"]},\"google\":{\"icon\":\"google\",\"enabled\":false,\"key\":\"\",\"secret\":\"\",\"callbackUrl\":\"api/auth/google/callback\",\"scope\":[\"email\"]},\"github\":{\"icon\":\"github\",\"enabled\":false,\"key\":\"\",\"secret\":\"\",\"callbackUrl\":\"api/auth/github/callback\",\"scope\":[\"user\",\"user:email\"]},\"microsoft\":{\"icon\":\"windows\",\"enabled\":false,\"key\":\"\",\"secret\":\"\",\"callbackUrl\":\"api/auth/microsoft/callback\",\"scope\":[\"user.read\"]},\"twitter\":{\"icon\":\"twitter\",\"enabled\":false,\"key\":\"\",\"secret\":\"\",\"callbackUrl\":\"api/auth/twitter/callback\"},\"instagram\":{\"icon\":\"instagram\",\"enabled\":false,\"key\":\"\",\"secret\":\"\",\"callbackUrl\":\"api/auth/instagram/callback\",\"scope\":[\"user_profile\"]},\"vk\":{\"icon\":\"vk\",\"enabled\":false,\"key\":\"\",\"secret\":\"\",\"callbackUrl\":\"api/auth/vk/callback\",\"scope\":[\"email\"]},\"twitch\":{\"icon\":\"twitch\",\"enabled\":false,\"key\":\"\",\"secret\":\"\",\"callbackUrl\":\"api/auth/twitch/callback\",\"scope\":[\"user:read:email\"]},\"linkedin\":{\"icon\":\"linkedin\",\"enabled\":false,\"key\":\"\",\"secret\":\"\",\"callbackUrl\":\"api/auth/linkedin/callback\",\"scope\":[\"r_liteprofile\",\"r_emailaddress\"]},\"cognito\":{\"icon\":\"aws\",\"enabled\":false,\"key\":\"\",\"secret\":\"\",\"subdomain\":\"my.subdomain.com\",\"callback\":\"api/auth/cognito/callback\",\"scope\":[\"email\",\"openid\",\"profile\"]},\"reddit\":{\"icon\":\"reddit\",\"enabled\":false,\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/reddit/callback\",\"scope\":[\"identity\"]},\"auth0\":{\"icon\":\"\",\"enabled\":false,\"key\":\"\",\"secret\":\"\",\"subdomain\":\"my-tenant.eu\",\"callback\":\"api/auth/auth0/callback\",\"scope\":[\"openid\",\"email\",\"profile\"]},\"cas\":{\"icon\":\"book\",\"enabled\":false,\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/cas/callback\",\"scope\":[\"openid email\"],\"subdomain\":\"my.subdomain.com/cas\"},\"patreon\":{\"icon\":\"\",\"enabled\":false,\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/patreon/callback\",\"scope\":[\"identity\",\"identity[email]\"]},\"keycloack\":{\"icon\":\"\",\"enabled\":false,\"key\":\"\",\"secret\":\"\",\"subdomain\":\"myKeycloakProvider.com/realms/myrealm\",\"callback\":\"api/auth/keycloak/callback\",\"scope\":[\"openid\",\"email\",\"profile\"]}}', 'object', NULL, NULL),
(24, 'plugin_users-permissions_email', '{\"reset_password\":{\"display\":\"Email.template.reset_password\",\"icon\":\"sync\",\"options\":{\"from\":{\"name\":\"Administration Panel\",\"email\":\"no-reply@strapi.io\"},\"response_email\":\"\",\"object\":\"Reset password\",\"message\":\"<p>We heard that you lost your password. Sorry about that!</p>\\n\\n<p>But don’t worry! You can use the following link to reset your password:</p>\\n<p><%= URL %>?code=<%= TOKEN %></p>\\n\\n<p>Thanks.</p>\"}},\"email_confirmation\":{\"display\":\"Email.template.email_confirmation\",\"icon\":\"check-square\",\"options\":{\"from\":{\"name\":\"Administration Panel\",\"email\":\"no-reply@strapi.io\"},\"response_email\":\"\",\"object\":\"Account confirmation\",\"message\":\"<p>Thank you for registering!</p>\\n\\n<p>You have to confirm your email address. Please click on the link below.</p>\\n\\n<p><%= URL %>?confirmation=<%= CODE %></p>\\n\\n<p>Thanks.</p>\"}}}', 'object', NULL, NULL),
(25, 'plugin_users-permissions_advanced', '{\"unique_email\":true,\"allow_register\":true,\"email_confirmation\":false,\"email_reset_password\":null,\"email_confirmation_redirection\":null,\"default_role\":\"authenticated\"}', 'object', NULL, NULL),
(26, 'core_admin_auth', '{\"providers\":{\"autoRegister\":false,\"defaultRole\":null,\"ssoLockedRoles\":null}}', 'object', NULL, NULL),
(27, 'plugin_content_manager_configuration_content_types::api::category.category', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"icon\":{\"edit\":{\"label\":\"icon\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"icon\",\"searchable\":false,\"sortable\":false}},\"color\":{\"edit\":{\"label\":\"color\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"color\",\"searchable\":true,\"sortable\":true}},\"products\":{\"edit\":{\"label\":\"products\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"products\",\"searchable\":false,\"sortable\":false}},\"slug\":{\"edit\":{\"label\":\"slug\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"slug\",\"searchable\":true,\"sortable\":true}},\"banner\":{\"edit\":{\"label\":\"banner\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"banner\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"icon\",\"color\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"icon\",\"size\":6}],[{\"name\":\"color\",\"size\":6},{\"name\":\"products\",\"size\":6}],[{\"name\":\"slug\",\"size\":6},{\"name\":\"banner\",\"size\":6}]]},\"uid\":\"api::category.category\"}', 'object', NULL, NULL),
(28, 'plugin_content_manager_configuration_content_types::api::slider.slider', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"image\":{\"edit\":{\"label\":\"image\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"image\",\"searchable\":false,\"sortable\":false}},\"type\":{\"edit\":{\"label\":\"type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"type\",\"searchable\":true,\"sortable\":true}},\"url\":{\"edit\":{\"label\":\"url\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"url\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"image\",\"type\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"image\",\"size\":6}],[{\"name\":\"type\",\"size\":6},{\"name\":\"url\",\"size\":6}]]},\"uid\":\"api::slider.slider\"}', 'object', NULL, NULL),
(29, 'plugin_content_manager_configuration_content_types::api::product.product', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"mrp\":{\"edit\":{\"label\":\"mrp\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"mrp\",\"searchable\":true,\"sortable\":true}},\"sellingPrice\":{\"edit\":{\"label\":\"sellingPrice\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"sellingPrice\",\"searchable\":true,\"sortable\":true}},\"itemQuantityType\":{\"edit\":{\"label\":\"itemQuantityType\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"itemQuantityType\",\"searchable\":true,\"sortable\":true}},\"slug\":{\"edit\":{\"label\":\"slug\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"slug\",\"searchable\":true,\"sortable\":true}},\"images\":{\"edit\":{\"label\":\"images\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"images\",\"searchable\":false,\"sortable\":false}},\"categories\":{\"edit\":{\"label\":\"categories\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"categories\",\"searchable\":false,\"sortable\":false}},\"stock\":{\"edit\":{\"label\":\"stock\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"stock\",\"searchable\":true,\"sortable\":true}},\"colors\":{\"edit\":{\"label\":\"colors\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"colors\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"mrp\",\"sellingPrice\",\"images\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"mrp\",\"size\":4},{\"name\":\"sellingPrice\",\"size\":4}],[{\"name\":\"itemQuantityType\",\"size\":6},{\"name\":\"slug\",\"size\":6}],[{\"name\":\"images\",\"size\":6},{\"name\":\"categories\",\"size\":6}],[{\"name\":\"stock\",\"size\":4},{\"name\":\"colors\",\"size\":6}]]},\"uid\":\"api::product.product\"}', 'object', NULL, NULL),
(30, 'plugin_content_manager_configuration_content_types::api::user-cart.user-cart', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"quantity\":{\"edit\":{\"label\":\"quantity\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"quantity\",\"searchable\":true,\"sortable\":true}},\"amount\":{\"edit\":{\"label\":\"amount\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"amount\",\"searchable\":true,\"sortable\":true}},\"products\":{\"edit\":{\"label\":\"products\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"products\",\"searchable\":false,\"sortable\":false}},\"users_permissions_user\":{\"edit\":{\"label\":\"users_permissions_user\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"username\"},\"list\":{\"label\":\"users_permissions_user\",\"searchable\":true,\"sortable\":true}},\"userId\":{\"edit\":{\"label\":\"userId\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"userId\",\"searchable\":true,\"sortable\":true}},\"productId\":{\"edit\":{\"label\":\"productId\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"productId\",\"searchable\":true,\"sortable\":true}},\"color\":{\"edit\":{\"label\":\"color\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"color\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"edit\":[[{\"name\":\"quantity\",\"size\":4},{\"name\":\"amount\",\"size\":4}],[{\"name\":\"products\",\"size\":6},{\"name\":\"users_permissions_user\",\"size\":6}],[{\"name\":\"userId\",\"size\":4},{\"name\":\"productId\",\"size\":4}],[{\"name\":\"color\",\"size\":6}]],\"list\":[\"id\",\"userId\",\"amount\",\"products\",\"quantity\",\"color\"]},\"uid\":\"api::user-cart.user-cart\"}', 'object', NULL, NULL),
(31, 'plugin_content_manager_configuration_components::ordered-item.ordered-item', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"product\":{\"edit\":{\"label\":\"product\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"product\",\"searchable\":true,\"sortable\":true}},\"quantity\":{\"edit\":{\"label\":\"quantity\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"quantity\",\"searchable\":true,\"sortable\":true}},\"amount\":{\"edit\":{\"label\":\"amount\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"amount\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"color\":{\"edit\":{\"label\":\"color\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"color\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"product\",\"quantity\",\"amount\"],\"edit\":[[{\"name\":\"product\",\"size\":6},{\"name\":\"quantity\",\"size\":4}],[{\"name\":\"amount\",\"size\":4}],[{\"name\":\"name\",\"size\":6},{\"name\":\"color\",\"size\":6}]]},\"uid\":\"ordered-item.ordered-item\",\"isComponent\":true}', 'object', NULL, NULL),
(32, 'plugin_content_manager_configuration_content_types::api::order.order', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"username\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"DESC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"username\":{\"edit\":{\"label\":\"username\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"username\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"email\",\"searchable\":true,\"sortable\":true}},\"phone\":{\"edit\":{\"label\":\"phone\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"phone\",\"searchable\":true,\"sortable\":true}},\"zip\":{\"edit\":{\"label\":\"zip\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"zip\",\"searchable\":true,\"sortable\":true}},\"address\":{\"edit\":{\"label\":\"address\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"address\",\"searchable\":true,\"sortable\":true}},\"totalAmount\":{\"edit\":{\"label\":\"totalAmount\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"totalAmount\",\"searchable\":true,\"sortable\":true}},\"userId\":{\"edit\":{\"label\":\"userId\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"userId\",\"searchable\":true,\"sortable\":true}},\"paymentId\":{\"edit\":{\"label\":\"paymentId\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"paymentId\",\"searchable\":true,\"sortable\":true}},\"orderItemList\":{\"edit\":{\"label\":\"orderItemList\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"orderItemList\",\"searchable\":false,\"sortable\":false}},\"orderStatus\":{\"edit\":{\"label\":\"orderStatus\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"orderStatus\",\"searchable\":true,\"sortable\":true}},\"subTotal\":{\"edit\":{\"label\":\"subTotal\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"subTotal\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"edit\":[[{\"name\":\"username\",\"size\":6},{\"name\":\"email\",\"size\":6}],[{\"name\":\"phone\",\"size\":6},{\"name\":\"zip\",\"size\":6}],[{\"name\":\"address\",\"size\":6},{\"name\":\"totalAmount\",\"size\":4}],[{\"name\":\"userId\",\"size\":4},{\"name\":\"paymentId\",\"size\":6}],[{\"name\":\"orderItemList\",\"size\":12}],[{\"name\":\"orderStatus\",\"size\":6},{\"name\":\"subTotal\",\"size\":4}]],\"list\":[\"id\",\"username\",\"email\",\"phone\",\"totalAmount\"]},\"uid\":\"api::order.order\"}', 'object', NULL, NULL),
(33, 'plugin_content_manager_configuration_content_types::api::color.color', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"code\":{\"edit\":{\"label\":\"code\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"code\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"code\",\"createdAt\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"code\",\"size\":6}]]},\"uid\":\"api::color.color\"}', 'object', NULL, NULL);

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
(27, '{\"tables\":[{\"name\":\"files\",\"indexes\":[{\"name\":\"upload_files_folder_path_index\",\"columns\":[\"folder_path\"],\"type\":null},{\"name\":\"upload_files_created_at_index\",\"columns\":[\"created_at\"],\"type\":null},{\"name\":\"upload_files_updated_at_index\",\"columns\":[\"updated_at\"],\"type\":null},{\"name\":\"upload_files_name_index\",\"columns\":[\"name\"],\"type\":null},{\"name\":\"upload_files_size_index\",\"columns\":[\"size\"],\"type\":null},{\"name\":\"upload_files_ext_index\",\"columns\":[\"ext\"],\"type\":null},{\"name\":\"files_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"files_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"files_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"files_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"files_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"alternative_text\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"caption\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"width\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"height\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"formats\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"hash\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"ext\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"mime\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"size\",\"type\":\"decimal\",\"args\":[10,2],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"url\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"preview_url\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"provider\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"provider_metadata\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"folder_path\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"upload_folders\",\"indexes\":[{\"name\":\"upload_folders_path_id_index\",\"columns\":[\"path_id\"],\"type\":\"unique\"},{\"name\":\"upload_folders_path_index\",\"columns\":[\"path\"],\"type\":\"unique\"},{\"name\":\"upload_folders_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"upload_folders_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"upload_folders_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"upload_folders_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"upload_folders_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"path_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"path\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"i18n_locale\",\"indexes\":[{\"name\":\"i18n_locale_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"i18n_locale_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"i18n_locale_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"i18n_locale_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"i18n_locale_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"code\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"strapi_releases\",\"indexes\":[{\"name\":\"strapi_releases_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"strapi_releases_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"strapi_releases_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"strapi_releases_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"strapi_releases_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"released_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"scheduled_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"timezone\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"status\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"strapi_release_actions\",\"indexes\":[{\"name\":\"strapi_release_actions_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"strapi_release_actions_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"strapi_release_actions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"strapi_release_actions_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"strapi_release_actions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"content_type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"entry_document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"is_entry_valid\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"strapi_workflows\",\"indexes\":[{\"name\":\"strapi_workflows_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"strapi_workflows_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"strapi_workflows_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"strapi_workflows_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"strapi_workflows_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"content_types\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"strapi_workflows_stages\",\"indexes\":[{\"name\":\"strapi_workflows_stages_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"strapi_workflows_stages_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"strapi_workflows_stages_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"strapi_workflows_stages_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"strapi_workflows_stages_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"color\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"up_permissions\",\"indexes\":[{\"name\":\"up_permissions_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"up_permissions_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"up_permissions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"up_permissions_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"up_permissions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"action\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"up_roles\",\"indexes\":[{\"name\":\"up_roles_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"up_roles_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"up_roles_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"up_roles_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"up_roles_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"description\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"up_users\",\"indexes\":[{\"name\":\"up_users_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"up_users_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"up_users_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"up_users_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"up_users_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"username\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"email\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"provider\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"password\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"reset_password_token\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"confirmation_token\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"confirmed\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"blocked\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"mobile\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"categories\",\"indexes\":[{\"name\":\"categories_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"categories_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"categories_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"categories_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"categories_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"color\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"slug\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"colors\",\"indexes\":[{\"name\":\"colors_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"colors_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"colors_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"colors_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"colors_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"code\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"orders_cmps\",\"indexes\":[{\"name\":\"orders_field_idx\",\"columns\":[\"field\"]},{\"name\":\"orders_component_type_idx\",\"columns\":[\"component_type\"]},{\"name\":\"orders_entity_fk\",\"columns\":[\"entity_id\"]},{\"name\":\"orders_uq\",\"columns\":[\"entity_id\",\"cmp_id\",\"field\",\"component_type\"],\"type\":\"unique\"}],\"foreignKeys\":[{\"name\":\"orders_entity_fk\",\"columns\":[\"entity_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"orders\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"entity_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"cmp_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"component_type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"field\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"order\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"orders\",\"indexes\":[{\"name\":\"orders_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"orders_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"orders_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"orders_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"orders_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"username\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"email\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"phone\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"zip\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"address\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"total_amount\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"user_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"payment_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"order_status\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"sub_total\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"products\",\"indexes\":[{\"name\":\"products_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"products_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"products_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"products_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"products_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"description\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"mrp\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"selling_price\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"item_quantity_type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"slug\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"stock\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"sliders\",\"indexes\":[{\"name\":\"sliders_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"sliders_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"sliders_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"sliders_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"sliders_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"url\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"user_carts\",\"indexes\":[{\"name\":\"user_carts_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"user_carts_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"user_carts_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"user_carts_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"user_carts_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"quantity\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"amount\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"user_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"product_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"color\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"admin_permissions\",\"indexes\":[{\"name\":\"admin_permissions_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"admin_permissions_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"admin_permissions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"admin_permissions_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"admin_permissions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"action\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"action_parameters\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"subject\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"properties\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"conditions\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"admin_users\",\"indexes\":[{\"name\":\"admin_users_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"admin_users_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"admin_users_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"admin_users_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"admin_users_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"firstname\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"lastname\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"username\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"email\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"password\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"reset_password_token\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"registration_token\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"is_active\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"blocked\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"prefered_language\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"admin_roles\",\"indexes\":[{\"name\":\"admin_roles_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"admin_roles_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"admin_roles_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"admin_roles_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"admin_roles_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"code\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"description\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"strapi_api_tokens\",\"indexes\":[{\"name\":\"strapi_api_tokens_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"strapi_api_tokens_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"strapi_api_tokens_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"strapi_api_tokens_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"strapi_api_tokens_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"description\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"access_key\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"last_used_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"expires_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"lifespan\",\"type\":\"bigInteger\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"strapi_api_token_permissions\",\"indexes\":[{\"name\":\"strapi_api_token_permissions_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"strapi_api_token_permissions_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"strapi_api_token_permissions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"strapi_api_token_permissions_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"strapi_api_token_permissions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"action\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"strapi_transfer_tokens\",\"indexes\":[{\"name\":\"strapi_transfer_tokens_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"strapi_transfer_tokens_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"strapi_transfer_tokens_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"strapi_transfer_tokens_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"strapi_transfer_tokens_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"description\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"access_key\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"last_used_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"expires_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"lifespan\",\"type\":\"bigInteger\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"strapi_transfer_token_permissions\",\"indexes\":[{\"name\":\"strapi_transfer_token_permissions_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"strapi_transfer_token_permissions_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"strapi_transfer_token_permissions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"strapi_transfer_token_permissions_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"strapi_transfer_token_permissions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"action\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"components_ordered_item_ordered_items\",\"indexes\":[],\"foreignKeys\":[],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"quantity\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"amount\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"color\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"strapi_core_store_settings\",\"indexes\":[],\"foreignKeys\":[],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"key\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"value\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"environment\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"tag\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"strapi_webhooks\",\"indexes\":[],\"foreignKeys\":[],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"url\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"headers\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"events\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"enabled\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"strapi_history_versions\",\"indexes\":[{\"name\":\"strapi_history_versions_created_by_id_fk\",\"columns\":[\"created_by_id\"]}],\"foreignKeys\":[{\"name\":\"strapi_history_versions_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"content_type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"related_document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"status\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"data\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"schema\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"files_related_mph\",\"indexes\":[{\"name\":\"files_related_mph_fk\",\"columns\":[\"file_id\"]},{\"name\":\"files_related_mph_oidx\",\"columns\":[\"order\"]},{\"name\":\"files_related_mph_idix\",\"columns\":[\"related_id\"]}],\"foreignKeys\":[{\"name\":\"files_related_mph_fk\",\"columns\":[\"file_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"files\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"file_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"related_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"related_type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"field\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"order\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"files_folder_lnk\",\"indexes\":[{\"name\":\"files_folder_lnk_fk\",\"columns\":[\"file_id\"]},{\"name\":\"files_folder_lnk_ifk\",\"columns\":[\"folder_id\"]},{\"name\":\"files_folder_lnk_uq\",\"columns\":[\"file_id\",\"folder_id\"],\"type\":\"unique\"},{\"name\":\"files_folder_lnk_oifk\",\"columns\":[\"file_ord\"]}],\"foreignKeys\":[{\"name\":\"files_folder_lnk_fk\",\"columns\":[\"file_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"files\",\"onDelete\":\"CASCADE\"},{\"name\":\"files_folder_lnk_ifk\",\"columns\":[\"folder_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"upload_folders\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"file_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"folder_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"file_ord\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"upload_folders_parent_lnk\",\"indexes\":[{\"name\":\"upload_folders_parent_lnk_fk\",\"columns\":[\"folder_id\"]},{\"name\":\"upload_folders_parent_lnk_ifk\",\"columns\":[\"inv_folder_id\"]},{\"name\":\"upload_folders_parent_lnk_uq\",\"columns\":[\"folder_id\",\"inv_folder_id\"],\"type\":\"unique\"},{\"name\":\"upload_folders_parent_lnk_oifk\",\"columns\":[\"folder_ord\"]}],\"foreignKeys\":[{\"name\":\"upload_folders_parent_lnk_fk\",\"columns\":[\"folder_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"upload_folders\",\"onDelete\":\"CASCADE\"},{\"name\":\"upload_folders_parent_lnk_ifk\",\"columns\":[\"inv_folder_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"upload_folders\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"folder_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"inv_folder_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"folder_ord\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"strapi_release_actions_release_lnk\",\"indexes\":[{\"name\":\"strapi_release_actions_release_lnk_fk\",\"columns\":[\"release_action_id\"]},{\"name\":\"strapi_release_actions_release_lnk_ifk\",\"columns\":[\"release_id\"]},{\"name\":\"strapi_release_actions_release_lnk_uq\",\"columns\":[\"release_action_id\",\"release_id\"],\"type\":\"unique\"},{\"name\":\"strapi_release_actions_release_lnk_oifk\",\"columns\":[\"release_action_ord\"]}],\"foreignKeys\":[{\"name\":\"strapi_release_actions_release_lnk_fk\",\"columns\":[\"release_action_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"strapi_release_actions\",\"onDelete\":\"CASCADE\"},{\"name\":\"strapi_release_actions_release_lnk_ifk\",\"columns\":[\"release_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"strapi_releases\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"release_action_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"release_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"release_action_ord\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"strapi_workflows_stages_workflow_lnk\",\"indexes\":[{\"name\":\"strapi_workflows_stages_workflow_lnk_fk\",\"columns\":[\"workflow_stage_id\"]},{\"name\":\"strapi_workflows_stages_workflow_lnk_ifk\",\"columns\":[\"workflow_id\"]},{\"name\":\"strapi_workflows_stages_workflow_lnk_uq\",\"columns\":[\"workflow_stage_id\",\"workflow_id\"],\"type\":\"unique\"},{\"name\":\"strapi_workflows_stages_workflow_lnk_oifk\",\"columns\":[\"workflow_stage_ord\"]}],\"foreignKeys\":[{\"name\":\"strapi_workflows_stages_workflow_lnk_fk\",\"columns\":[\"workflow_stage_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"strapi_workflows_stages\",\"onDelete\":\"CASCADE\"},{\"name\":\"strapi_workflows_stages_workflow_lnk_ifk\",\"columns\":[\"workflow_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"strapi_workflows\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"workflow_stage_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"workflow_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"workflow_stage_ord\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"strapi_workflows_stages_permissions_lnk\",\"indexes\":[{\"name\":\"strapi_workflows_stages_permissions_lnk_fk\",\"columns\":[\"workflow_stage_id\"]},{\"name\":\"strapi_workflows_stages_permissions_lnk_ifk\",\"columns\":[\"permission_id\"]},{\"name\":\"strapi_workflows_stages_permissions_lnk_uq\",\"columns\":[\"workflow_stage_id\",\"permission_id\"],\"type\":\"unique\"},{\"name\":\"strapi_workflows_stages_permissions_lnk_ofk\",\"columns\":[\"permission_ord\"]}],\"foreignKeys\":[{\"name\":\"strapi_workflows_stages_permissions_lnk_fk\",\"columns\":[\"workflow_stage_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"strapi_workflows_stages\",\"onDelete\":\"CASCADE\"},{\"name\":\"strapi_workflows_stages_permissions_lnk_ifk\",\"columns\":[\"permission_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"admin_permissions\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"workflow_stage_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"permission_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"permission_ord\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"up_permissions_role_lnk\",\"indexes\":[{\"name\":\"up_permissions_role_lnk_fk\",\"columns\":[\"permission_id\"]},{\"name\":\"up_permissions_role_lnk_ifk\",\"columns\":[\"role_id\"]},{\"name\":\"up_permissions_role_lnk_uq\",\"columns\":[\"permission_id\",\"role_id\"],\"type\":\"unique\"},{\"name\":\"up_permissions_role_lnk_oifk\",\"columns\":[\"permission_ord\"]}],\"foreignKeys\":[{\"name\":\"up_permissions_role_lnk_fk\",\"columns\":[\"permission_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"up_permissions\",\"onDelete\":\"CASCADE\"},{\"name\":\"up_permissions_role_lnk_ifk\",\"columns\":[\"role_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"up_roles\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"permission_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"role_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"permission_ord\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"up_users_role_lnk\",\"indexes\":[{\"name\":\"up_users_role_lnk_fk\",\"columns\":[\"user_id\"]},{\"name\":\"up_users_role_lnk_ifk\",\"columns\":[\"role_id\"]},{\"name\":\"up_users_role_lnk_uq\",\"columns\":[\"user_id\",\"role_id\"],\"type\":\"unique\"},{\"name\":\"up_users_role_lnk_oifk\",\"columns\":[\"user_ord\"]}],\"foreignKeys\":[{\"name\":\"up_users_role_lnk_fk\",\"columns\":[\"user_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"up_users\",\"onDelete\":\"CASCADE\"},{\"name\":\"up_users_role_lnk_ifk\",\"columns\":[\"role_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"up_roles\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"user_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"role_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"user_ord\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"products_categories_lnk\",\"indexes\":[{\"name\":\"products_categories_lnk_fk\",\"columns\":[\"product_id\"]},{\"name\":\"products_categories_lnk_ifk\",\"columns\":[\"category_id\"]},{\"name\":\"products_categories_lnk_uq\",\"columns\":[\"product_id\",\"category_id\"],\"type\":\"unique\"},{\"name\":\"products_categories_lnk_ofk\",\"columns\":[\"category_ord\"]},{\"name\":\"products_categories_lnk_oifk\",\"columns\":[\"product_ord\"]}],\"foreignKeys\":[{\"name\":\"products_categories_lnk_fk\",\"columns\":[\"product_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"products\",\"onDelete\":\"CASCADE\"},{\"name\":\"products_categories_lnk_ifk\",\"columns\":[\"category_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"categories\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"product_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"category_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"category_ord\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"product_ord\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"products_colors_lnk\",\"indexes\":[{\"name\":\"products_colors_lnk_fk\",\"columns\":[\"product_id\"]},{\"name\":\"products_colors_lnk_ifk\",\"columns\":[\"color_id\"]},{\"name\":\"products_colors_lnk_uq\",\"columns\":[\"product_id\",\"color_id\"],\"type\":\"unique\"},{\"name\":\"products_colors_lnk_ofk\",\"columns\":[\"color_ord\"]}],\"foreignKeys\":[{\"name\":\"products_colors_lnk_fk\",\"columns\":[\"product_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"products\",\"onDelete\":\"CASCADE\"},{\"name\":\"products_colors_lnk_ifk\",\"columns\":[\"color_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"colors\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"product_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"color_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"color_ord\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"user_carts_products_lnk\",\"indexes\":[{\"name\":\"user_carts_products_lnk_fk\",\"columns\":[\"user_cart_id\"]},{\"name\":\"user_carts_products_lnk_ifk\",\"columns\":[\"product_id\"]},{\"name\":\"user_carts_products_lnk_uq\",\"columns\":[\"user_cart_id\",\"product_id\"],\"type\":\"unique\"},{\"name\":\"user_carts_products_lnk_ofk\",\"columns\":[\"product_ord\"]}],\"foreignKeys\":[{\"name\":\"user_carts_products_lnk_fk\",\"columns\":[\"user_cart_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"user_carts\",\"onDelete\":\"CASCADE\"},{\"name\":\"user_carts_products_lnk_ifk\",\"columns\":[\"product_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"products\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"user_cart_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"product_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"product_ord\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"user_carts_users_permissions_user_lnk\",\"indexes\":[{\"name\":\"user_carts_users_permissions_user_lnk_fk\",\"columns\":[\"user_cart_id\"]},{\"name\":\"user_carts_users_permissions_user_lnk_ifk\",\"columns\":[\"user_id\"]},{\"name\":\"user_carts_users_permissions_user_lnk_uq\",\"columns\":[\"user_cart_id\",\"user_id\"],\"type\":\"unique\"}],\"foreignKeys\":[{\"name\":\"user_carts_users_permissions_user_lnk_fk\",\"columns\":[\"user_cart_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"user_carts\",\"onDelete\":\"CASCADE\"},{\"name\":\"user_carts_users_permissions_user_lnk_ifk\",\"columns\":[\"user_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"up_users\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"user_cart_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"user_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"admin_permissions_role_lnk\",\"indexes\":[{\"name\":\"admin_permissions_role_lnk_fk\",\"columns\":[\"permission_id\"]},{\"name\":\"admin_permissions_role_lnk_ifk\",\"columns\":[\"role_id\"]},{\"name\":\"admin_permissions_role_lnk_uq\",\"columns\":[\"permission_id\",\"role_id\"],\"type\":\"unique\"},{\"name\":\"admin_permissions_role_lnk_oifk\",\"columns\":[\"permission_ord\"]}],\"foreignKeys\":[{\"name\":\"admin_permissions_role_lnk_fk\",\"columns\":[\"permission_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"admin_permissions\",\"onDelete\":\"CASCADE\"},{\"name\":\"admin_permissions_role_lnk_ifk\",\"columns\":[\"role_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"admin_roles\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"permission_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"role_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"permission_ord\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"admin_users_roles_lnk\",\"indexes\":[{\"name\":\"admin_users_roles_lnk_fk\",\"columns\":[\"user_id\"]},{\"name\":\"admin_users_roles_lnk_ifk\",\"columns\":[\"role_id\"]},{\"name\":\"admin_users_roles_lnk_uq\",\"columns\":[\"user_id\",\"role_id\"],\"type\":\"unique\"},{\"name\":\"admin_users_roles_lnk_ofk\",\"columns\":[\"role_ord\"]},{\"name\":\"admin_users_roles_lnk_oifk\",\"columns\":[\"user_ord\"]}],\"foreignKeys\":[{\"name\":\"admin_users_roles_lnk_fk\",\"columns\":[\"user_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"admin_users\",\"onDelete\":\"CASCADE\"},{\"name\":\"admin_users_roles_lnk_ifk\",\"columns\":[\"role_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"admin_roles\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"user_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"role_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"role_ord\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"user_ord\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"strapi_api_token_permissions_token_lnk\",\"indexes\":[{\"name\":\"strapi_api_token_permissions_token_lnk_fk\",\"columns\":[\"api_token_permission_id\"]},{\"name\":\"strapi_api_token_permissions_token_lnk_ifk\",\"columns\":[\"api_token_id\"]},{\"name\":\"strapi_api_token_permissions_token_lnk_uq\",\"columns\":[\"api_token_permission_id\",\"api_token_id\"],\"type\":\"unique\"},{\"name\":\"strapi_api_token_permissions_token_lnk_oifk\",\"columns\":[\"api_token_permission_ord\"]}],\"foreignKeys\":[{\"name\":\"strapi_api_token_permissions_token_lnk_fk\",\"columns\":[\"api_token_permission_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"strapi_api_token_permissions\",\"onDelete\":\"CASCADE\"},{\"name\":\"strapi_api_token_permissions_token_lnk_ifk\",\"columns\":[\"api_token_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"strapi_api_tokens\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"api_token_permission_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"api_token_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"api_token_permission_ord\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"strapi_transfer_token_permissions_token_lnk\",\"indexes\":[{\"name\":\"strapi_transfer_token_permissions_token_lnk_fk\",\"columns\":[\"transfer_token_permission_id\"]},{\"name\":\"strapi_transfer_token_permissions_token_lnk_ifk\",\"columns\":[\"transfer_token_id\"]},{\"name\":\"strapi_transfer_token_permissions_token_lnk_uq\",\"columns\":[\"transfer_token_permission_id\",\"transfer_token_id\"],\"type\":\"unique\"},{\"name\":\"strapi_transfer_token_permissions_token_lnk_oifk\",\"columns\":[\"transfer_token_permission_ord\"]}],\"foreignKeys\":[{\"name\":\"strapi_transfer_token_permissions_token_lnk_fk\",\"columns\":[\"transfer_token_permission_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"strapi_transfer_token_permissions\",\"onDelete\":\"CASCADE\"},{\"name\":\"strapi_transfer_token_permissions_token_lnk_ifk\",\"columns\":[\"transfer_token_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"strapi_transfer_tokens\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"transfer_token_permission_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"transfer_token_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"transfer_token_permission_ord\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"components_ordered_item_ordered_items_product_lnk\",\"indexes\":[{\"name\":\"components_ordered_item_ordered_items_product_lnk_fk\",\"columns\":[\"ordered_item_id\"]},{\"name\":\"components_ordered_item_ordered_items_product_lnk_ifk\",\"columns\":[\"product_id\"]},{\"name\":\"components_ordered_item_ordered_items_product_lnk_uq\",\"columns\":[\"ordered_item_id\",\"product_id\"],\"type\":\"unique\"}],\"foreignKeys\":[{\"name\":\"components_ordered_item_ordered_items_product_lnk_fk\",\"columns\":[\"ordered_item_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"components_ordered_item_ordered_items\",\"onDelete\":\"CASCADE\"},{\"name\":\"components_ordered_item_ordered_items_product_lnk_ifk\",\"columns\":[\"product_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"products\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"ordered_item_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"product_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]}]}', '2024-10-29 14:36:28', 'f155a01545384c04c5982c34c5e4a06d');

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
(44, 'ga5ca1uubk3q8x2o26m46b68', 'api::color.color.findOne', '2024-10-27 18:36:16.216000', '2024-10-27 18:36:16.216000', '2024-10-27 18:36:16.218000', NULL, NULL, NULL);

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
(44, 44, 2, 9);

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
(1, 'z0q13g2cram73da2uhxeplxr', 'Authenticated', 'Default role given to authenticated user.', 'authenticated', '2024-09-25 13:42:08.249000', '2024-10-27 18:13:07.981000', '2024-09-25 13:42:08.249000', NULL, NULL, NULL),
(2, 'tym65tnq9izfbjfr04t8gfie', 'Public', 'Default role given to unauthenticated user.', 'public', '2024-09-25 13:42:08.256000', '2024-10-27 18:36:16.208000', '2024-09-25 13:42:08.256000', NULL, NULL, NULL);

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
  `mobile` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `up_users`
--

INSERT INTO `up_users` (`id`, `document_id`, `username`, `email`, `provider`, `password`, `reset_password_token`, `confirmation_token`, `confirmed`, `blocked`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`, `locale`, `mobile`) VALUES
(7, 'u5zk4xkhnyloxvy11m7lbdf6', 'testuser', 'test01@exp.com', 'local', '$2a$10$9QIDPQANGBMzE3GIVVrJ/.2VNcaBVI7MSGP.j3K4jA6USdfpgxUKG', NULL, NULL, 1, 0, '2024-10-02 10:04:50.343000', '2024-10-02 10:04:50.343000', '2024-10-02 10:04:50.347000', NULL, NULL, NULL, NULL),
(8, 'wihjfiu5jpucfkwr3vs80izr', 'newuser', 'new@tst.com', 'local', '$2a$10$vZaV1IWR5aWrvJy8C.V5YekVL53opXqs.bUJsssH.LwDBO0R0SZFa', NULL, NULL, 1, 0, '2024-10-02 10:31:34.597000', '2024-10-02 10:31:34.597000', '2024-10-02 10:31:34.598000', NULL, NULL, NULL, NULL),
(9, 'z9fcrgy6xjq33wm0l74dhr1k', 'jewel', 'jewel@admin.com', 'local', '$2a$10$SyXjTf6ImVXvcj9PVjWvS.60QimVNd5YlCNd6NxJmbFJONiXKrk3.', NULL, NULL, 1, 0, '2024-10-02 13:23:29.638000', '2024-10-02 13:23:29.638000', '2024-10-02 13:23:29.640000', NULL, NULL, NULL, NULL),
(10, 'ge5zqi5xeoftvatxxgltqsbk', 'sima', 'sima@gmail.com', 'local', '$2a$10$IpN8IIq2DMmdM6Uivv9DauiyxG.HipDicHeG8LATjWK6jZjKFJwc.', NULL, NULL, 1, 0, '2024-10-29 11:29:25.544000', '2024-10-29 11:29:25.544000', '2024-10-29 11:29:25.545000', NULL, NULL, NULL, NULL);

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
  `color` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_carts`
--

INSERT INTO `user_carts` (`id`, `document_id`, `quantity`, `amount`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`, `locale`, `user_id`, `product_id`, `color`) VALUES
(391, 'bsquafv8beekaugb3cqqfpsi', 1, 80, '2024-10-29 11:23:59.662000', '2024-10-29 11:23:59.662000', NULL, NULL, NULL, NULL, 9, 49, NULL),
(392, 'bsquafv8beekaugb3cqqfpsi', 1, 80, '2024-10-29 11:23:59.662000', '2024-10-29 11:23:59.662000', '2024-10-29 11:23:59.676000', NULL, NULL, NULL, 9, 49, NULL),
(396, 'w3gy88ejnr302qj01cv7v6kb', 2, 80, '2024-10-29 11:24:32.605000', '2024-10-29 11:24:32.605000', NULL, NULL, NULL, NULL, 9, 31, NULL),
(397, 'w3gy88ejnr302qj01cv7v6kb', 2, 80, '2024-10-29 11:24:32.605000', '2024-10-29 11:24:32.605000', '2024-10-29 11:24:32.621000', NULL, NULL, NULL, 9, 31, NULL);

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
(381, 391, 44, 1),
(382, 392, 49, 1),
(386, 396, 5, 1),
(387, 397, 31, 1);

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
(391, 391, 9),
(392, 392, 9),
(396, 396, 9),
(397, 397, 9);

--
-- Indexes for dumped tables
--

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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=155;

--
-- AUTO_INCREMENT for table `admin_permissions_role_lnk`
--
ALTER TABLE `admin_permissions_role_lnk`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=155;

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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `colors`
--
ALTER TABLE `colors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `components_ordered_item_ordered_items`
--
ALTER TABLE `components_ordered_item_ordered_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=242;

--
-- AUTO_INCREMENT for table `components_ordered_item_ordered_items_product_lnk`
--
ALTER TABLE `components_ordered_item_ordered_items_product_lnk`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=224;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `files_folder_lnk`
--
ALTER TABLE `files_folder_lnk`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `files_related_mph`
--
ALTER TABLE `files_related_mph`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT for table `i18n_locale`
--
ALTER TABLE `i18n_locale`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT for table `orders_cmps`
--
ALTER TABLE `orders_cmps`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=294;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `products_categories_lnk`
--
ALTER TABLE `products_categories_lnk`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `products_colors_lnk`
--
ALTER TABLE `products_colors_lnk`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `strapi_database_schema`
--
ALTER TABLE `strapi_database_schema`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `upload_folders_parent_lnk`
--
ALTER TABLE `upload_folders_parent_lnk`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `up_permissions`
--
ALTER TABLE `up_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `up_permissions_role_lnk`
--
ALTER TABLE `up_permissions_role_lnk`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=443;

--
-- AUTO_INCREMENT for table `user_carts_products_lnk`
--
ALTER TABLE `user_carts_products_lnk`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=433;

--
-- AUTO_INCREMENT for table `user_carts_users_permissions_user_lnk`
--
ALTER TABLE `user_carts_users_permissions_user_lnk`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=443;

--
-- Constraints for dumped tables
--

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
