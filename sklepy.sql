-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 03 Cze 2019, 07:10
-- Wersja serwera: 10.1.26-MariaDB
-- Wersja PHP: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `sklepy`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `action_log`
--

CREATE TABLE `action_log` (
  `id_log` int(11) NOT NULL,
  `datetime` datetime NOT NULL,
  `ip` varchar(20) COLLATE utf8_polish_ci NOT NULL,
  `log` varchar(512) COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `action_log`
--

INSERT INTO `action_log` (`id_log`, `datetime`, `ip`, `log`) VALUES
(1, '2019-05-08 18:43:54', '::1', 'Logowanie na konto: admin'),
(2, '2019-05-08 19:17:26', '::1', 'Logowanie na konto: admin'),
(3, '2019-05-09 20:28:17', '::1', 'Logowanie na konto: admin'),
(4, '2019-05-09 21:48:00', '::1', 'Użytkownik (9) został usunięty przez admin'),
(5, '2019-05-09 21:48:15', '::1', 'Użytkownik (5) został usunięty przez admin'),
(6, '2019-05-09 21:48:16', '::1', 'Użytkownik (5) został usunięty przez admin'),
(7, '2019-05-09 21:50:18', '::1', 'Utworzenie nowego konta: user2'),
(8, '2019-05-09 21:50:34', '::1', 'Utworzenie nowego konta: user3'),
(9, '2019-05-09 21:50:37', '::1', 'Logowanie na konto: admin'),
(10, '2019-05-09 21:50:43', '::1', 'Użytkownik (12) został usunięty przez admin'),
(11, '2019-05-09 22:35:43', '::1', 'Utworzenie nowego konta: Chrupek2137'),
(12, '2019-05-09 22:36:02', '::1', 'Utworzenie nowego konta: AdminissstratorPrawie'),
(13, '2019-05-09 22:36:03', '::1', 'Logowanie na konto: admin'),
(14, '2019-05-09 22:50:26', '::1', 'Logowanie na konto: user'),
(15, '2019-05-09 22:50:27', '::1', 'Logowanie na konto: '),
(16, '2019-05-09 22:50:35', '::1', 'Logowanie na konto: admin'),
(17, '2019-05-09 22:51:17', '::1', 'Logowanie na konto: admin'),
(18, '2019-05-12 21:32:21', '::1', 'Logowanie na konto: admin'),
(19, '2019-05-12 21:52:05', '::1', 'Logowanie na konto: admin'),
(20, '2019-05-13 11:18:43', '::1', 'Logowanie na konto: admin'),
(21, '2019-05-13 11:34:42', '::1', 'Użytkownik (14) został usunięty przez admin'),
(22, '2019-05-13 12:08:08', '::1', 'Logowanie na konto: admin'),
(23, '2019-05-13 12:17:30', '::1', 'Logowanie na konto: admin'),
(24, '2019-05-13 12:22:43', '::1', 'Logowanie na konto: admin'),
(25, '2019-05-13 12:35:09', '::1', 'Utworzenie nowego konta: Dupa'),
(26, '2019-05-13 12:36:00', '::1', 'Utworzenie nowego konta: Talar'),
(27, '2019-05-13 12:36:04', '::1', 'Logowanie na konto: Talar'),
(28, '2019-05-13 12:36:11', '::1', 'Logowanie na konto: admin'),
(29, '2019-05-13 12:36:26', '::1', 'Użytkownik (24) został usunięty przez admin'),
(30, '2019-05-13 12:36:48', '::1', 'Utworzenie nowego konta: Talar'),
(31, '2019-05-13 12:37:29', '::1', 'Udana zmiana hasła: Talar1997@mail.com'),
(32, '2019-05-13 12:38:16', '::1', 'Logowanie na konto: Talar'),
(33, '2019-05-13 12:38:23', '::1', 'Logowanie na konto: admin'),
(34, '2019-05-13 18:56:34', '::1', 'Logowanie na konto: admin'),
(35, '2019-05-16 16:47:49', '::1', 'Logowanie na konto: admin'),
(36, '2019-05-16 19:28:27', '::1', 'Logowanie na konto: userXD10'),
(37, '2019-05-16 19:35:22', '::1', 'Edycja użytkownika 10 przez administratora: userXD10'),
(38, '2019-05-16 19:36:37', '::1', 'Edycja użytkownika 2 przez administratora: userXD10'),
(39, '2019-05-16 19:44:47', '::1', 'Logowanie na konto: admin'),
(40, '2019-05-16 20:41:34', '::1', 'Logowanie na konto: admin'),
(41, '2019-05-16 20:48:21', '::1', 'Logowanie na konto: admin'),
(42, '2019-05-16 20:48:33', '::1', 'Edycja użytkownika 9 przez administratora: admin'),
(43, '2019-05-16 20:48:40', '::1', 'Logowanie na konto: user9'),
(44, '2019-05-16 20:49:35', '::1', 'Logowanie na konto: admin'),
(45, '2019-05-16 20:49:51', '::1', 'Edycja użytkownika 6 przez administratora: admin'),
(46, '2019-05-16 20:49:56', '::1', 'Edycja użytkownika 6 przez administratora: admin'),
(47, '2019-05-16 20:50:10', '::1', 'Logowanie na konto: moderator6'),
(48, '2019-05-16 20:50:13', '::1', 'Logowanie na konto: '),
(49, '2019-05-16 20:50:14', '::1', 'Logowanie na konto: '),
(50, '2019-05-16 20:50:19', '::1', 'Logowanie na konto: '),
(51, '2019-05-16 20:51:05', '::1', 'Logowanie na konto: '),
(52, '2019-05-16 20:52:14', '::1', 'Logowanie na konto: '),
(53, '2019-05-16 20:54:46', '::1', 'Logowanie na konto: admin'),
(54, '2019-05-16 20:55:33', '::1', 'Użytkownik (8) został usunięty przez admin'),
(55, '2019-05-16 20:59:24', '::1', 'Logowanie na konto: moderator6'),
(56, '2019-05-16 20:59:33', '::1', 'Edycja użytkownika 2 przez administratora: moderator6'),
(57, '2019-05-16 20:59:45', '::1', 'Edycja użytkownika 2 przez administratora: moderator6'),
(58, '2019-05-16 21:01:39', '::1', 'Edycja użytkownika 2 przez administratora: moderator6'),
(59, '2019-05-16 21:01:53', '::1', 'Edycja użytkownika 2 przez administratora: moderator6'),
(60, '2019-05-16 21:09:53', '::1', 'Edycja użytkownika 2 przez administratora: moderator6'),
(61, '2019-05-16 21:09:55', '::1', 'Edycja użytkownika 2 przez administratora: moderator6'),
(62, '2019-05-16 21:10:16', '::1', 'Edycja użytkownika 3 przez administratora: moderator6'),
(63, '2019-05-16 21:10:20', '::1', 'Edycja użytkownika 3 przez administratora: moderator6'),
(64, '2019-05-16 21:11:12', '::1', 'Edycja użytkownika 3 przez administratora: moderator6'),
(65, '2019-05-16 21:11:15', '::1', 'Edycja użytkownika 3 przez administratora: moderator6'),
(66, '2019-05-16 21:12:20', '::1', 'Edycja użytkownika 3 przez administratora: moderator6'),
(67, '2019-05-16 21:13:09', '::1', 'Logowanie na konto: admin'),
(68, '2019-05-16 21:14:07', '::1', 'Edycja użytkownika 2 przez admin: admin'),
(69, '2019-05-16 21:14:12', '::1', 'Edycja użytkownika 4 przez admin: admin'),
(70, '2019-05-16 21:14:18', '::1', 'Edycja użytkownika 5 przez admin: admin'),
(71, '2019-05-16 21:14:22', '::1', 'Edycja użytkownika 6 przez admin: admin'),
(72, '2019-05-16 21:14:28', '::1', 'Edycja użytkownika 7 przez admin: admin'),
(73, '2019-05-16 21:22:17', '::1', 'Edycja użytkownika 2 przez admin: admin'),
(74, '2019-05-16 21:22:23', '::1', 'Edycja użytkownika 3 przez admin: admin'),
(75, '2019-05-16 21:22:29', '::1', 'Edycja użytkownika 4 przez admin: admin'),
(76, '2019-05-16 21:22:35', '::1', 'Edycja użytkownika 7 przez admin: admin'),
(77, '2019-05-16 21:22:42', '::1', 'Edycja użytkownika 5 przez admin: admin'),
(78, '2019-05-16 21:22:48', '::1', 'Edycja użytkownika 6 przez admin: admin'),
(79, '2019-05-16 21:22:56', '::1', 'Edycja użytkownika 10 przez admin: admin'),
(80, '2019-05-16 21:23:26', '::1', 'Logowanie na konto: admin'),
(81, '2019-05-16 21:30:46', '::1', 'Logowanie na konto: admin'),
(82, '2019-05-18 13:09:48', '::1', 'Logowanie na konto: admin'),
(83, '2019-05-18 13:15:19', '::1', 'Edycja użytkownika 50 przez admin: admin'),
(84, '2019-05-18 13:15:25', '::1', 'Użytkownik (50) został usunięty przez admin'),
(85, '2019-05-18 13:56:32', '::1', 'Edycja użytkownika 1 przez admin: admin'),
(86, '2019-05-18 13:56:39', '::1', 'Logowanie na konto: admin'),
(87, '2019-05-18 13:57:34', '::1', 'Utworzenie nowego konta: user'),
(88, '2019-05-18 13:57:41', '::1', 'Logowanie na konto: user'),
(89, '2019-05-18 14:52:30', '::1', 'Logowanie na konto: admin'),
(90, '2019-05-18 19:47:25', '::1', 'Utworzenie nowego konta: adsasda'),
(91, '2019-05-18 19:48:53', '::1', 'Logowanie na konto: admin'),
(92, '2019-05-18 19:56:50', '::1', 'Logowanie na konto: admin'),
(93, '2019-05-18 19:57:45', '::1', 'Logowanie na konto: admin'),
(94, '2019-05-18 20:46:18', '::1', 'Logowanie na konto: admin'),
(95, '2019-05-18 20:52:11', '::1', 'Edycja użytkownika 2 przez admin: admin'),
(96, '2019-05-18 20:52:15', '::1', 'Edycja użytkownika 2 przez admin: admin'),
(97, '2019-05-18 20:54:30', '::1', 'Edycja użytkownika 2 przez admin: admin'),
(98, '2019-05-18 20:55:45', '::1', 'Utworzenie nowego konta: nowyAdmin'),
(99, '2019-05-18 20:55:49', '::1', 'Logowanie na konto: admin'),
(100, '2019-05-18 20:56:12', '::1', 'Edycja użytkownika 100 przez admin: admin'),
(101, '2019-05-18 20:56:15', '::1', 'Edycja użytkownika 100 przez admin: admin'),
(102, '2019-05-30 16:00:09', '::1', 'Logowanie na konto: admin'),
(103, '2019-05-30 16:04:43', '::1', 'Edycja użytkownika 6 przez admin: admin'),
(104, '2019-06-02 13:55:13', '::1', 'Logowanie na konto: admin'),
(105, '2019-06-02 17:17:44', '::1', 'Logowanie na konto: admin'),
(106, '2019-06-02 18:59:51', '::1', 'Logowanie na konto: admin');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `markers`
--

CREATE TABLE `markers` (
  `id` int(11) NOT NULL,
  `name` varchar(60) COLLATE utf8_polish_ci NOT NULL,
  `address` varchar(80) COLLATE utf8_polish_ci NOT NULL,
  `lat` float(10,6) NOT NULL,
  `lng` float(10,6) NOT NULL,
  `type` varchar(30) COLLATE utf8_polish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `markers`
--

INSERT INTO `markers` (`id`, `name`, `address`, `lat`, `lng`, `type`) VALUES
(1, 'E. Leclerc', 'Braci Miroszewskich 2H Sosnowiec', 50.292431, 19.183718, 'shop'),
(2, 'Stacja BP', 'Braci Miroszewskich 2H Sosnowiec', 50.292328, 19.182644, 'gas_station'),
(3, 'Biedronka', 'Generała Tadeusza Bora-Komorowskiego 3', 50.287571, 19.173782, 'shop'),
(4, '\"SILVA-TOP\" Bolesław Bolek', 'Radzionkowska 34A 42-622 Świerklaniec Polska', 50.433716, 18.924637, 'gas_station'),
(5, 'Salex', 'Racławicka 17 41-205 Sosnowiec', 50.292618, 19.140018, 'gas_station');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `marker_details`
--

CREATE TABLE `marker_details` (
  `id_details` int(11) NOT NULL,
  `id_marker` int(11) NOT NULL,
  `description` text COLLATE utf8_polish_ci NOT NULL,
  `category` varchar(1024) COLLATE utf8_polish_ci NOT NULL,
  `open_hour` time NOT NULL,
  `close_hour` time NOT NULL,
  `added_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `author` int(11) NOT NULL,
  `votes` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `marker_details`
--

INSERT INTO `marker_details` (`id_details`, `id_marker`, `description`, `category`, `open_hour`, `close_hour`, `added_time`, `author`, `votes`) VALUES
(1, 1, '', '[\"alcohol\",\"bread\",\"cosmetics\",\"fruits\",\"meats\"]', '10:00:00', '21:00:00', '2019-06-02 16:27:23', 1, 0),
(2, 2, 'Całodobowy', '[\"alcohol\"]', '00:00:00', '00:00:00', '2019-06-02 17:14:23', 1, 0),
(3, 3, 'Brudno tam jest', '[\"alcohol\",\"bread\",\"cosmetics\",\"fruits\",\"meats\"]', '07:00:00', '21:00:00', '2019-06-02 17:15:12', 1, 0),
(4, 4, '', '[\"bread\"]', '06:00:00', '21:00:00', '2019-06-02 17:19:10', 1, 0),
(5, 5, 'Śmierdzi', '[\"alcohol\",\"bread\",\"cosmetics\",\"fruits\",\"meats\"]', '00:00:00', '21:37:00', '2019-06-02 17:28:42', 1, 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `role`
--

CREATE TABLE `role` (
  `id_role` int(11) NOT NULL,
  `name` varchar(20) COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `role`
--

INSERT INTO `role` (`id_role`, `name`) VALUES
(1, 'admin'),
(2, 'moderator'),
(3, 'user'),
(4, 'zbanowany');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `login` varchar(32) COLLATE utf8_polish_ci NOT NULL,
  `password` varchar(64) COLLATE utf8_polish_ci NOT NULL,
  `security_question` varchar(1024) COLLATE utf8_polish_ci NOT NULL,
  `security_answer` varchar(256) COLLATE utf8_polish_ci NOT NULL,
  `email` varchar(128) COLLATE utf8_polish_ci NOT NULL,
  `id_role` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `user`
--

INSERT INTO `user` (`id`, `login`, `password`, `security_question`, `security_answer`, `email`, `id_role`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'admin@admin.pl', 1),
(2, 'PierwszyUser', 'ee11cbb19052e40b07aac0ca060c23ee', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user@local.pl', 3),
(3, 'DrugiUser', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user3@localhost.pl', 3),
(4, 'TrzeciUser', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user4@localhost.pl', 3),
(5, 'Moderator1', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user5@localhost.pl', 2),
(6, 'ZbanowanyZbyszekhshshs', 'a1e03cf022862126dabb2b06e3223521', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user6@localhost.pl', 4),
(7, 'user', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user7@localhost.pl', 3),
(9, 'user9', 'a1e03cf022862126dabb2b06e3223521', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user9@localhost.pl', 3),
(10, 'DrugiAdmin', '64a4e327e97c1e7926f9240edb937362', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user18x0@localhost.pl', 1),
(11, 'user11', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user11@localhost.pl', 3),
(12, 'user12', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user12@localhost.pl', 4),
(13, 'user13', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user13@localhost.pl', 3),
(14, 'user14', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user14@localhost.pl', 3),
(15, 'user15', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user15@localhost.pl', 2),
(16, 'user16', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user16@localhost.pl', 3),
(17, 'user17', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user17@localhost.pl', 3),
(18, 'user18', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user18@localhost.pl', 4),
(19, 'user19', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user19@localhost.pl', 3),
(20, 'user20', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user20@localhost.pl', 1),
(21, 'user21', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user21@localhost.pl', 3),
(22, 'user22', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user22@localhost.pl', 3),
(23, 'user23', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user23@localhost.pl', 3),
(24, 'user24', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user24@localhost.pl', 4),
(25, 'user25', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user25@localhost.pl', 2),
(26, 'user26', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user26@localhost.pl', 3),
(27, 'user27', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user27@localhost.pl', 3),
(28, 'user28', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user28@localhost.pl', 3),
(29, 'user29', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user29@localhost.pl', 3),
(30, 'user30', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user30@localhost.pl', 1),
(31, 'user31', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user31@localhost.pl', 3),
(32, 'user32', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user32@localhost.pl', 3),
(33, 'user33', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user33@localhost.pl', 3),
(34, 'user34', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user34@localhost.pl', 3),
(35, 'user35', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user35@localhost.pl', 2),
(36, 'user36', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user36@localhost.pl', 4),
(37, 'user37', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user37@localhost.pl', 3),
(38, 'user38', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user38@localhost.pl', 3),
(39, 'user39', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user39@localhost.pl', 3),
(40, 'user40', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user40@localhost.pl', 1),
(41, 'user41', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user41@localhost.pl', 3),
(42, 'user42', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user42@localhost.pl', 4),
(43, 'user43', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user43@localhost.pl', 3),
(44, 'user44', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user44@localhost.pl', 3),
(45, 'user45', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user45@localhost.pl', 2),
(46, 'user46', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user46@localhost.pl', 3),
(47, 'user47', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user47@localhost.pl', 3),
(48, 'user48', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user48@localhost.pl', 4),
(49, 'user49', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user49@localhost.pl', 3),
(50, 'user50', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user50@localhost.pl', 1),
(51, 'user51', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user51@localhost.pl', 3),
(52, 'user52', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user52@localhost.pl', 3),
(53, 'user53', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user53@localhost.pl', 3),
(54, 'user54', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user54@localhost.pl', 4),
(55, 'user55', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user55@localhost.pl', 2),
(56, 'user56', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user56@localhost.pl', 3),
(57, 'user57', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user57@localhost.pl', 3),
(58, 'user58', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user58@localhost.pl', 3),
(59, 'user59', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user59@localhost.pl', 3),
(60, 'user60', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user60@localhost.pl', 1),
(61, 'user61', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user61@localhost.pl', 3),
(62, 'user62', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user62@localhost.pl', 3),
(63, 'user63', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user63@localhost.pl', 3),
(64, 'user64', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user64@localhost.pl', 3),
(65, 'user65', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user65@localhost.pl', 2),
(66, 'user66', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user66@localhost.pl', 4),
(67, 'user67', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user67@localhost.pl', 3),
(68, 'user68', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user68@localhost.pl', 3),
(69, 'user69', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user69@localhost.pl', 3),
(70, 'user70', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user70@localhost.pl', 1),
(71, 'user71', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user71@localhost.pl', 3),
(72, 'user72', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user72@localhost.pl', 4),
(73, 'user73', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user73@localhost.pl', 3),
(74, 'user74', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user74@localhost.pl', 3),
(75, 'user75', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user75@localhost.pl', 2),
(76, 'user76', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user76@localhost.pl', 3),
(77, 'user77', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user77@localhost.pl', 3),
(78, 'user78', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user78@localhost.pl', 4),
(79, 'user79', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user79@localhost.pl', 3),
(80, 'user80', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user80@localhost.pl', 1),
(81, 'user81', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user81@localhost.pl', 3),
(82, 'user82', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user82@localhost.pl', 3),
(83, 'user83', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user83@localhost.pl', 3),
(84, 'user84', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user84@localhost.pl', 4),
(85, 'user85', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user85@localhost.pl', 2),
(86, 'user86', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user86@localhost.pl', 3),
(87, 'user87', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user87@localhost.pl', 3),
(88, 'user88', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user88@localhost.pl', 3),
(89, 'user89', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user89@localhost.pl', 3),
(90, 'user90', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user90@localhost.pl', 1),
(91, 'user91', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user91@localhost.pl', 3),
(92, 'user92', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user92@localhost.pl', 3),
(93, 'user93', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user93@localhost.pl', 3),
(94, 'user94', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user94@localhost.pl', 3),
(95, 'user95', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user95@localhost.pl', 2),
(96, 'user96', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user96@localhost.pl', 4),
(97, 'user97', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user97@localhost.pl', 3),
(98, 'user98', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user98@localhost.pl', 3),
(99, 'user99', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user99@localhost.pl', 3),
(100, 'nowyAdmin', 'a1e03cf022862126dabb2b06e3223521', 'test', '098f6bcd4621d373cade4e832627b4f6', 'admin@pl.admin', 3);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `user_details`
--

CREATE TABLE `user_details` (
  `id_details` int(11) NOT NULL,
  `avatar_ref` varchar(128) COLLATE utf8_polish_ci NOT NULL DEFAULT 'default.jpg',
  `reputation` int(11) NOT NULL DEFAULT '0',
  `description` text COLLATE utf8_polish_ci NOT NULL,
  `last_login` datetime NOT NULL,
  `register_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `user_details`
--

INSERT INTO `user_details` (`id_details`, `avatar_ref`, `reputation`, `description`, `last_login`, `register_date`) VALUES
(1, 'default.jpg', 1, 'Lorem ipsum', '2019-06-02 18:59:51', '2019-05-18 20:26:19'),
(2, 'default.jpg', 20, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(3, 'default.jpg', 3, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(4, 'default.jpg', 4, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(5, 'default.jpg', 5, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(6, 'default.jpg', 6, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(7, 'default.jpg', 7, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(8, 'default.jpg', 8, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(9, 'default.jpg', 9, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(10, 'default.jpg', 10, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(11, 'default.jpg', 11, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(12, 'default.jpg', 12, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(13, 'default.jpg', 13, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(14, 'default.jpg', 14, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(15, 'default.jpg', 15, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(16, 'default.jpg', 16, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(17, 'default.jpg', 17, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(18, 'default.jpg', 18, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(19, 'default.jpg', 19, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(20, 'default.jpg', 20, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(21, 'default.jpg', 21, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(22, 'default.jpg', 22, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(23, 'default.jpg', 23, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(24, 'default.jpg', 24, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(25, 'default.jpg', 25, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(26, 'default.jpg', 26, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(27, 'default.jpg', 27, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(28, 'default.jpg', 28, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(29, 'default.jpg', 29, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(30, 'default.jpg', 30, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(31, 'default.jpg', 31, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(32, 'default.jpg', 32, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(33, 'default.jpg', 33, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(34, 'default.jpg', 34, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(35, 'default.jpg', 35, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(36, 'default.jpg', 36, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(37, 'default.jpg', 37, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(38, 'default.jpg', 38, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(39, 'default.jpg', 39, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(40, 'default.jpg', 40, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(41, 'default.jpg', 41, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(42, 'default.jpg', 42, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(43, 'default.jpg', 43, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(44, 'default.jpg', 44, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(45, 'default.jpg', 45, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(46, 'default.jpg', 46, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(47, 'default.jpg', 47, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(48, 'default.jpg', 48, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(49, 'default.jpg', 49, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(50, 'default.jpg', 50, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(51, 'default.jpg', 51, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(52, 'default.jpg', 52, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(53, 'default.jpg', 53, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(54, 'default.jpg', 54, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(55, 'default.jpg', 55, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(56, 'default.jpg', 56, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(57, 'default.jpg', 57, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(58, 'default.jpg', 58, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(59, 'default.jpg', 59, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(60, 'default.jpg', 60, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(61, 'default.jpg', 61, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(62, 'default.jpg', 62, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(63, 'default.jpg', 63, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(64, 'default.jpg', 64, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(65, 'default.jpg', 65, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(66, 'default.jpg', 66, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(67, 'default.jpg', 67, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(68, 'default.jpg', 68, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(69, 'default.jpg', 69, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(70, 'default.jpg', 70, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(71, 'default.jpg', 71, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(72, 'default.jpg', 72, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(73, 'default.jpg', 73, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(74, 'default.jpg', 74, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(75, 'default.jpg', 75, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(76, 'default.jpg', 76, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(77, 'default.jpg', 77, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(78, 'default.jpg', 78, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(79, 'default.jpg', 79, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(80, 'default.jpg', 80, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(81, 'default.jpg', 81, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(82, 'default.jpg', 82, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(83, 'default.jpg', 83, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(84, 'default.jpg', 84, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(85, 'default.jpg', 85, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(86, 'default.jpg', 86, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(87, 'default.jpg', 87, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(88, 'default.jpg', 88, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(89, 'default.jpg', 89, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(90, 'default.jpg', 90, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(91, 'default.jpg', 91, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(92, 'default.jpg', 92, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(93, 'default.jpg', 93, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(94, 'default.jpg', 94, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(95, 'default.jpg', 95, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(96, 'default.jpg', 96, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(97, 'default.jpg', 97, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(98, 'default.jpg', 98, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(99, 'default.jpg', 99, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(100, 'default.jpg', 150, '', '0000-00-00 00:00:00', '2019-05-18 20:55:45');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indexes for table `action_log`
--
ALTER TABLE `action_log`
  ADD PRIMARY KEY (`id_log`);

--
-- Indexes for table `markers`
--
ALTER TABLE `markers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `marker_details`
--
ALTER TABLE `marker_details`
  ADD PRIMARY KEY (`id_details`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id_role`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rola` (`id_role`) USING BTREE;

--
-- Indexes for table `user_details`
--
ALTER TABLE `user_details`
  ADD PRIMARY KEY (`id_details`),
  ADD KEY `id_details` (`id_details`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `action_log`
--
ALTER TABLE `action_log`
  MODIFY `id_log` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;
--
-- AUTO_INCREMENT dla tabeli `markers`
--
ALTER TABLE `markers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT dla tabeli `marker_details`
--
ALTER TABLE `marker_details`
  MODIFY `id_details` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT dla tabeli `role`
--
ALTER TABLE `role`
  MODIFY `id_role` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT dla tabeli `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
--
-- AUTO_INCREMENT dla tabeli `user_details`
--
ALTER TABLE `user_details`
  MODIFY `id_details` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`id_role`) REFERENCES `role` (`id_role`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
