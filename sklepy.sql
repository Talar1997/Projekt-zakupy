-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 24 Cze 2019, 13:00
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
(106, '2019-06-02 18:59:51', '::1', 'Logowanie na konto: admin'),
(107, '2019-06-03 17:54:21', '::1', 'Logowanie na konto: admin'),
(108, '2019-06-03 18:05:19', '::1', 'Logowanie na konto: admin'),
(109, '2019-06-03 21:55:20', '::1', 'Logowanie na konto: admin'),
(110, '2019-06-03 21:55:39', '::1', 'Logowanie na konto: admin'),
(111, '2019-06-03 22:31:14', '::1', 'Edycja użytkownika 2 przez admin: admin'),
(112, '2019-06-03 22:31:21', '::1', 'Logowanie na konto: PierwszyUser'),
(113, '2019-06-03 22:32:16', '::1', 'Logowanie na konto: admin'),
(114, '2019-06-04 12:12:46', '::1', 'Logowanie na konto: admin'),
(115, '2019-06-04 17:41:10', '::1', 'Logowanie na konto: admin'),
(116, '2019-06-04 18:35:50', '::1', 'Logowanie na konto: PierwszyUser'),
(117, '2019-06-04 18:50:00', '::1', 'Logowanie na konto: admin'),
(118, '2019-06-04 22:17:05', '::1', 'Logowanie na konto: admin'),
(119, '2019-06-05 13:06:41', '::1', 'Logowanie na konto: admin'),
(120, '2019-06-05 13:56:20', '::1', 'Edycja użytkownika 1 przez admin: admin'),
(121, '2019-06-05 23:05:23', '::1', 'Logowanie na konto: Talar'),
(122, '2019-06-05 23:17:18', '::1', 'Logowanie na konto: Talar'),
(123, '2019-06-05 23:18:09', '::1', 'Logowanie na konto: Talar'),
(124, '2019-06-05 23:18:36', '::1', 'Logowanie na konto: Talar'),
(125, '2019-06-05 23:27:59', '::1', 'Logowanie na konto: Talar'),
(126, '2019-06-05 23:29:03', '::1', 'Logowanie na konto: Talar'),
(127, '2019-06-05 23:30:07', '::1', 'Logowanie na konto: Talar'),
(128, '2019-06-05 23:31:41', '::1', 'Logowanie na konto: Talar'),
(129, '2019-06-05 23:33:13', '::1', 'Logowanie na konto: Talar'),
(130, '2019-06-05 23:33:23', '::1', 'Logowanie na konto: Talar'),
(131, '2019-06-05 23:40:42', '::1', 'Utworzenie nowego konta: Testowy'),
(132, '2019-06-05 23:40:49', '::1', 'Logowanie na konto: Testowy'),
(133, '2019-06-05 23:41:09', '::1', 'Logowanie na konto: Talar'),
(134, '2019-06-05 23:44:08', '::1', 'Logowanie na konto: Talar'),
(135, '2019-06-05 23:48:16', '::1', 'Nieudana próba zmiany hasła: Talarczyk@cz.pl'),
(136, '2019-06-05 23:48:41', '::1', 'Udana zmiana hasła: admin@admin.pl'),
(137, '2019-06-05 23:48:46', '::1', 'Logowanie na konto: Talar'),
(138, '2019-06-05 23:52:25', '::1', 'Nieudana próba zmiany hasła: admin@admin.pl'),
(139, '2019-06-05 23:52:51', '::1', 'Udana zmiana hasła: admin@admin.pl'),
(140, '2019-06-05 23:52:53', '::1', 'Logowanie na konto: Talar'),
(141, '2019-06-05 23:53:30', '::1', 'Nieudana próba zmiany hasła: admin@admin.pl'),
(142, '2019-06-05 23:53:35', '::1', 'Nieudana próba zmiany hasła: admin@admin.pl'),
(143, '2019-06-05 23:53:46', '::1', 'Nieudana próba zmiany hasła: admin@admin.pl'),
(144, '2019-06-05 23:53:53', '::1', 'Logowanie na konto: Talar'),
(145, '2019-06-06 00:06:04', '::1', 'Edycja użytkownika 2 przez : '),
(146, '2019-06-06 00:06:07', '::1', 'Edycja użytkownika 2 przez : '),
(147, '2019-06-06 00:07:19', '::1', 'Edycja użytkownika 2 przez : '),
(148, '2019-06-06 00:08:57', '::1', 'Edycja użytkownika 2 przez admin: Talar'),
(149, '2019-06-06 00:09:00', '::1', 'Edycja użytkownika 2 przez admin: Talar'),
(150, '2019-06-06 00:14:47', '::1', 'Edycja użytkownika 2 przez admin: Talar'),
(151, '2019-06-06 00:36:52', '::1', 'Użytkownik (102) został usunięty przez '),
(152, '2019-06-06 00:42:10', '::1', 'Edycja użytkownika 2 przez admin: Talar'),
(153, '2019-06-06 00:43:47', '::1', 'Edycja użytkownika 2 przez admin: Talar'),
(154, '2019-06-06 00:43:51', '::1', 'Edycja użytkownika 2 przez admin: Talar'),
(155, '2019-06-06 00:43:55', '::1', 'Edycja użytkownika 2 przez admin: Talar'),
(156, '2019-06-06 00:44:00', '::1', 'Edycja użytkownika 2 przez admin: Talar'),
(157, '2019-06-06 00:51:02', '::1', 'Edycja użytkownika 2 przez admin: Talar'),
(158, '2019-06-06 00:51:05', '::1', 'Edycja użytkownika 2 przez admin: Talar'),
(159, '2019-06-06 00:51:10', '::1', 'Użytkownik (11) został usunięty przez Talar'),
(160, '2019-06-06 00:56:30', '::1', 'Edycja użytkownika 1 przez admin: Talar'),
(161, '2019-06-06 00:56:34', '::1', 'Edycja użytkownika 1 przez admin: Talar'),
(162, '2019-06-06 00:56:45', '::1', 'Edycja użytkownika 5 przez admin: Talar'),
(163, '2019-06-06 00:56:52', '::1', 'Logowanie na konto: Moderator1'),
(164, '2019-06-06 00:57:13', '::1', 'Logowanie na konto: Talar'),
(165, '2019-06-06 18:50:03', '::1', 'Logowanie na konto: Talar'),
(166, '2019-06-06 20:44:07', '::1', 'Edycja użytkownika 4 przez admin: Talar'),
(167, '2019-06-06 20:44:10', '::1', 'Edycja użytkownika 4 przez admin: Talar'),
(168, '2019-06-07 23:59:00', '::1', 'Logowanie na konto: Talar'),
(169, '2019-06-08 00:02:25', '::1', 'Logowanie na konto: Talar'),
(170, '2019-06-10 22:55:30', '::1', 'Logowanie na konto: Talar'),
(171, '2019-06-10 23:49:42', '::1', 'Logowanie na konto: Talar'),
(172, '2019-06-11 00:25:48', '::1', 'Edycja użytkownika 1 przez admin: Talar'),
(173, '2019-06-11 00:58:22', '::1', 'Edycja użytkownika 1 przez admin: Talar'),
(174, '2019-06-11 01:02:01', '::1', 'Edycja użytkownika 6 przez admin: Talar'),
(175, '2019-06-11 01:02:08', '::1', 'Logowanie na konto: banned'),
(176, '2019-06-11 01:02:08', '::1', 'Logowanie na konto: '),
(177, '2019-06-11 01:02:08', '::1', 'Logowanie na konto: '),
(178, '2019-06-11 01:02:08', '::1', 'Logowanie na konto: '),
(179, '2019-06-11 01:02:08', '::1', 'Logowanie na konto: '),
(180, '2019-06-11 01:02:08', '::1', 'Logowanie na konto: '),
(181, '2019-06-11 01:02:08', '::1', 'Logowanie na konto: '),
(182, '2019-06-11 01:02:08', '::1', 'Logowanie na konto: '),
(183, '2019-06-11 01:02:08', '::1', 'Logowanie na konto: '),
(184, '2019-06-11 01:02:08', '::1', 'Logowanie na konto: '),
(185, '2019-06-11 01:02:08', '::1', 'Logowanie na konto: '),
(186, '2019-06-11 01:02:08', '::1', 'Logowanie na konto: '),
(187, '2019-06-11 01:02:08', '::1', 'Logowanie na konto: '),
(188, '2019-06-11 01:02:08', '::1', 'Logowanie na konto: '),
(189, '2019-06-11 01:02:08', '::1', 'Logowanie na konto: '),
(190, '2019-06-11 01:02:08', '::1', 'Logowanie na konto: '),
(191, '2019-06-11 01:02:08', '::1', 'Logowanie na konto: '),
(192, '2019-06-11 01:02:08', '::1', 'Logowanie na konto: '),
(193, '2019-06-11 01:02:08', '::1', 'Logowanie na konto: '),
(194, '2019-06-11 01:02:08', '::1', 'Logowanie na konto: '),
(195, '2019-06-11 01:02:11', '::1', 'Logowanie na konto: '),
(196, '2019-06-11 01:02:11', '::1', 'Logowanie na konto: '),
(197, '2019-06-11 01:02:11', '::1', 'Logowanie na konto: '),
(198, '2019-06-11 01:02:11', '::1', 'Logowanie na konto: '),
(199, '2019-06-11 01:02:11', '::1', 'Logowanie na konto: '),
(200, '2019-06-11 01:02:12', '::1', 'Logowanie na konto: '),
(201, '2019-06-11 01:02:12', '::1', 'Logowanie na konto: '),
(202, '2019-06-11 01:02:12', '::1', 'Logowanie na konto: '),
(203, '2019-06-11 01:02:12', '::1', 'Logowanie na konto: '),
(204, '2019-06-11 01:02:12', '::1', 'Logowanie na konto: '),
(205, '2019-06-11 01:02:12', '::1', 'Logowanie na konto: '),
(206, '2019-06-11 01:02:12', '::1', 'Logowanie na konto: '),
(207, '2019-06-11 01:02:12', '::1', 'Logowanie na konto: '),
(208, '2019-06-11 01:02:12', '::1', 'Logowanie na konto: '),
(209, '2019-06-11 01:02:12', '::1', 'Logowanie na konto: '),
(210, '2019-06-11 01:02:12', '::1', 'Logowanie na konto: '),
(211, '2019-06-11 01:02:12', '::1', 'Logowanie na konto: '),
(212, '2019-06-11 01:02:12', '::1', 'Logowanie na konto: '),
(213, '2019-06-11 01:02:12', '::1', 'Logowanie na konto: '),
(214, '2019-06-11 01:02:12', '::1', 'Logowanie na konto: '),
(215, '2019-06-11 01:02:13', '::1', 'Logowanie na konto: '),
(216, '2019-06-11 01:02:13', '::1', 'Logowanie na konto: '),
(217, '2019-06-11 01:02:14', '::1', 'Logowanie na konto: '),
(218, '2019-06-11 01:02:14', '::1', 'Logowanie na konto: '),
(219, '2019-06-11 01:02:14', '::1', 'Logowanie na konto: '),
(220, '2019-06-11 01:02:14', '::1', 'Logowanie na konto: '),
(221, '2019-06-11 01:02:14', '::1', 'Logowanie na konto: '),
(222, '2019-06-11 01:02:14', '::1', 'Logowanie na konto: '),
(223, '2019-06-11 01:02:14', '::1', 'Logowanie na konto: '),
(224, '2019-06-11 01:02:14', '::1', 'Logowanie na konto: '),
(225, '2019-06-11 01:02:14', '::1', 'Logowanie na konto: '),
(226, '2019-06-11 01:02:14', '::1', 'Logowanie na konto: '),
(227, '2019-06-11 01:02:14', '::1', 'Logowanie na konto: '),
(228, '2019-06-11 01:02:14', '::1', 'Logowanie na konto: '),
(229, '2019-06-11 01:02:14', '::1', 'Logowanie na konto: '),
(230, '2019-06-11 01:02:14', '::1', 'Logowanie na konto: '),
(231, '2019-06-11 01:02:14', '::1', 'Logowanie na konto: '),
(232, '2019-06-11 01:02:14', '::1', 'Logowanie na konto: '),
(233, '2019-06-11 01:02:14', '::1', 'Logowanie na konto: '),
(234, '2019-06-11 01:02:14', '::1', 'Logowanie na konto: '),
(235, '2019-06-11 01:02:14', '::1', 'Logowanie na konto: '),
(236, '2019-06-11 01:02:14', '::1', 'Logowanie na konto: '),
(237, '2019-06-11 01:02:14', '::1', 'Logowanie na konto: '),
(238, '2019-06-11 01:02:15', '::1', 'Logowanie na konto: '),
(239, '2019-06-11 01:02:15', '::1', 'Logowanie na konto: '),
(240, '2019-06-11 01:02:15', '::1', 'Logowanie na konto: '),
(241, '2019-06-11 01:02:15', '::1', 'Logowanie na konto: '),
(242, '2019-06-11 01:02:15', '::1', 'Logowanie na konto: '),
(243, '2019-06-11 01:02:15', '::1', 'Logowanie na konto: '),
(244, '2019-06-11 01:02:15', '::1', 'Logowanie na konto: '),
(245, '2019-06-11 01:02:15', '::1', 'Logowanie na konto: '),
(246, '2019-06-11 01:02:15', '::1', 'Logowanie na konto: '),
(247, '2019-06-11 01:02:15', '::1', 'Logowanie na konto: '),
(248, '2019-06-11 01:02:15', '::1', 'Logowanie na konto: '),
(249, '2019-06-11 01:02:15', '::1', 'Logowanie na konto: '),
(250, '2019-06-11 01:02:15', '::1', 'Logowanie na konto: '),
(251, '2019-06-11 01:02:15', '::1', 'Logowanie na konto: '),
(252, '2019-06-11 01:02:15', '::1', 'Logowanie na konto: '),
(253, '2019-06-11 01:02:15', '::1', 'Logowanie na konto: '),
(254, '2019-06-11 01:02:15', '::1', 'Logowanie na konto: '),
(255, '2019-06-11 01:02:15', '::1', 'Logowanie na konto: '),
(256, '2019-06-11 01:02:16', '::1', 'Logowanie na konto: '),
(257, '2019-06-11 01:02:16', '::1', 'Logowanie na konto: '),
(258, '2019-06-11 01:02:16', '::1', 'Logowanie na konto: '),
(259, '2019-06-11 01:02:16', '::1', 'Logowanie na konto: '),
(260, '2019-06-11 01:02:16', '::1', 'Logowanie na konto: '),
(261, '2019-06-11 01:02:16', '::1', 'Logowanie na konto: '),
(262, '2019-06-11 01:02:16', '::1', 'Logowanie na konto: '),
(263, '2019-06-11 01:02:16', '::1', 'Logowanie na konto: '),
(264, '2019-06-11 01:02:16', '::1', 'Logowanie na konto: '),
(265, '2019-06-11 01:02:16', '::1', 'Logowanie na konto: '),
(266, '2019-06-11 01:02:16', '::1', 'Logowanie na konto: '),
(267, '2019-06-11 01:02:16', '::1', 'Logowanie na konto: '),
(268, '2019-06-11 01:02:16', '::1', 'Logowanie na konto: '),
(269, '2019-06-11 01:02:16', '::1', 'Logowanie na konto: '),
(270, '2019-06-11 01:02:16', '::1', 'Logowanie na konto: '),
(271, '2019-06-11 01:02:16', '::1', 'Logowanie na konto: '),
(272, '2019-06-11 01:02:16', '::1', 'Logowanie na konto: '),
(273, '2019-06-11 01:02:16', '::1', 'Logowanie na konto: '),
(274, '2019-06-11 01:02:16', '::1', 'Logowanie na konto: '),
(275, '2019-06-11 01:02:16', '::1', 'Logowanie na konto: '),
(276, '2019-06-11 01:02:17', '::1', 'Logowanie na konto: '),
(277, '2019-06-11 01:02:17', '::1', 'Logowanie na konto: '),
(278, '2019-06-11 01:02:17', '::1', 'Logowanie na konto: '),
(279, '2019-06-11 01:02:17', '::1', 'Logowanie na konto: '),
(280, '2019-06-11 01:02:17', '::1', 'Logowanie na konto: '),
(281, '2019-06-11 01:02:17', '::1', 'Logowanie na konto: '),
(282, '2019-06-11 01:02:17', '::1', 'Logowanie na konto: '),
(283, '2019-06-11 01:02:17', '::1', 'Logowanie na konto: '),
(284, '2019-06-11 01:02:17', '::1', 'Logowanie na konto: '),
(285, '2019-06-11 01:02:17', '::1', 'Logowanie na konto: '),
(286, '2019-06-11 01:02:24', '::1', 'Logowanie na konto: '),
(287, '2019-06-11 01:02:24', '::1', 'Logowanie na konto: '),
(288, '2019-06-11 01:02:24', '::1', 'Logowanie na konto: '),
(289, '2019-06-11 01:02:24', '::1', 'Logowanie na konto: '),
(290, '2019-06-11 01:02:24', '::1', 'Logowanie na konto: '),
(291, '2019-06-11 01:02:24', '::1', 'Logowanie na konto: '),
(292, '2019-06-11 01:02:24', '::1', 'Logowanie na konto: '),
(293, '2019-06-11 01:02:24', '::1', 'Logowanie na konto: '),
(294, '2019-06-11 01:02:24', '::1', 'Logowanie na konto: '),
(295, '2019-06-11 01:02:24', '::1', 'Logowanie na konto: '),
(296, '2019-06-11 01:02:24', '::1', 'Logowanie na konto: '),
(297, '2019-06-11 01:02:24', '::1', 'Logowanie na konto: '),
(298, '2019-06-11 01:02:24', '::1', 'Logowanie na konto: '),
(299, '2019-06-11 01:02:24', '::1', 'Logowanie na konto: '),
(300, '2019-06-11 01:02:24', '::1', 'Logowanie na konto: '),
(301, '2019-06-11 01:02:24', '::1', 'Logowanie na konto: '),
(302, '2019-06-11 01:02:24', '::1', 'Logowanie na konto: '),
(303, '2019-06-11 01:02:24', '::1', 'Logowanie na konto: '),
(304, '2019-06-11 01:02:24', '::1', 'Logowanie na konto: '),
(305, '2019-06-11 01:02:25', '::1', 'Logowanie na konto: '),
(306, '2019-06-11 01:02:25', '::1', 'Logowanie na konto: '),
(307, '2019-06-11 01:02:25', '::1', 'Logowanie na konto: '),
(308, '2019-06-11 01:02:25', '::1', 'Logowanie na konto: '),
(309, '2019-06-11 01:02:25', '::1', 'Logowanie na konto: '),
(310, '2019-06-11 01:02:25', '::1', 'Logowanie na konto: '),
(311, '2019-06-11 01:02:25', '::1', 'Logowanie na konto: '),
(312, '2019-06-11 01:02:25', '::1', 'Logowanie na konto: '),
(313, '2019-06-11 01:02:25', '::1', 'Logowanie na konto: '),
(314, '2019-06-11 01:02:25', '::1', 'Logowanie na konto: '),
(315, '2019-06-11 01:02:25', '::1', 'Logowanie na konto: '),
(316, '2019-06-11 01:02:25', '::1', 'Logowanie na konto: '),
(317, '2019-06-11 01:02:25', '::1', 'Logowanie na konto: '),
(318, '2019-06-11 01:02:25', '::1', 'Logowanie na konto: '),
(319, '2019-06-11 01:02:25', '::1', 'Logowanie na konto: '),
(320, '2019-06-11 01:02:25', '::1', 'Logowanie na konto: '),
(321, '2019-06-11 01:02:25', '::1', 'Logowanie na konto: '),
(322, '2019-06-11 01:02:25', '::1', 'Logowanie na konto: '),
(323, '2019-06-11 01:02:25', '::1', 'Logowanie na konto: '),
(324, '2019-06-11 01:02:25', '::1', 'Logowanie na konto: '),
(325, '2019-06-11 01:02:26', '::1', 'Logowanie na konto: '),
(326, '2019-06-11 01:02:28', '::1', 'Logowanie na konto: '),
(327, '2019-06-11 01:02:28', '::1', 'Logowanie na konto: '),
(328, '2019-06-11 01:02:28', '::1', 'Logowanie na konto: '),
(329, '2019-06-11 01:02:28', '::1', 'Logowanie na konto: '),
(330, '2019-06-11 01:02:28', '::1', 'Logowanie na konto: '),
(331, '2019-06-11 01:02:28', '::1', 'Logowanie na konto: '),
(332, '2019-06-11 01:02:28', '::1', 'Logowanie na konto: '),
(333, '2019-06-11 01:02:28', '::1', 'Logowanie na konto: '),
(334, '2019-06-11 01:02:28', '::1', 'Logowanie na konto: '),
(335, '2019-06-11 01:02:28', '::1', 'Logowanie na konto: '),
(336, '2019-06-11 01:02:28', '::1', 'Logowanie na konto: '),
(337, '2019-06-11 01:02:28', '::1', 'Logowanie na konto: '),
(338, '2019-06-11 01:02:28', '::1', 'Logowanie na konto: '),
(339, '2019-06-11 01:02:28', '::1', 'Logowanie na konto: '),
(340, '2019-06-11 01:02:28', '::1', 'Logowanie na konto: '),
(341, '2019-06-11 01:02:29', '::1', 'Logowanie na konto: '),
(342, '2019-06-11 01:02:29', '::1', 'Logowanie na konto: '),
(343, '2019-06-11 01:02:29', '::1', 'Logowanie na konto: '),
(344, '2019-06-11 01:02:29', '::1', 'Logowanie na konto: '),
(345, '2019-06-11 01:02:29', '::1', 'Logowanie na konto: '),
(346, '2019-06-11 01:02:29', '::1', 'Logowanie na konto: '),
(347, '2019-06-11 01:02:29', '::1', 'Logowanie na konto: '),
(348, '2019-06-11 01:02:29', '::1', 'Logowanie na konto: '),
(349, '2019-06-11 01:02:29', '::1', 'Logowanie na konto: '),
(350, '2019-06-11 01:02:29', '::1', 'Logowanie na konto: '),
(351, '2019-06-11 01:02:29', '::1', 'Logowanie na konto: '),
(352, '2019-06-11 01:02:29', '::1', 'Logowanie na konto: '),
(353, '2019-06-11 01:02:29', '::1', 'Logowanie na konto: '),
(354, '2019-06-11 01:02:29', '::1', 'Logowanie na konto: '),
(355, '2019-06-11 01:02:29', '::1', 'Logowanie na konto: '),
(356, '2019-06-11 01:02:29', '::1', 'Logowanie na konto: '),
(357, '2019-06-11 01:02:29', '::1', 'Logowanie na konto: '),
(358, '2019-06-11 01:02:29', '::1', 'Logowanie na konto: '),
(359, '2019-06-11 01:02:30', '::1', 'Logowanie na konto: '),
(360, '2019-06-11 01:02:30', '::1', 'Logowanie na konto: '),
(361, '2019-06-11 01:02:30', '::1', 'Logowanie na konto: '),
(362, '2019-06-11 01:02:30', '::1', 'Logowanie na konto: '),
(363, '2019-06-11 01:02:30', '::1', 'Logowanie na konto: '),
(364, '2019-06-11 01:02:30', '::1', 'Logowanie na konto: '),
(365, '2019-06-11 01:02:30', '::1', 'Logowanie na konto: '),
(366, '2019-06-11 01:02:34', '::1', 'Logowanie na konto: Talar'),
(367, '2019-06-11 01:03:53', '::1', 'Logowanie na konto: banned'),
(368, '2019-06-11 01:05:52', '::1', 'Logowanie na konto: Talar'),
(369, '2019-06-11 18:41:07', '::1', 'Logowanie na konto: Talar'),
(370, '2019-06-11 19:06:35', '::1', 'Logowanie na konto: banned'),
(371, '2019-06-11 19:07:05', '::1', 'Logowanie na konto: Talar'),
(372, '2019-06-11 19:09:35', '::1', 'Logowanie na konto: banned'),
(373, '2019-06-11 19:14:35', '::1', 'Logowanie na konto: Talar'),
(374, '2019-06-11 22:58:10', '::1', 'Użytkownik (9) został usunięty przez Talar'),
(375, '2019-06-11 23:29:55', '::1', 'Miejsce (21) zostało usunięte przez Talar'),
(376, '2019-06-14 22:11:58', '::1', 'Logowanie na konto: Talar'),
(377, '2019-06-20 21:57:10', '::1', 'Logowanie na konto: Talar'),
(378, '2019-06-21 00:18:21', '::1', 'Edycja miejsca: 1 przez admin: Talar'),
(379, '2019-06-21 00:18:54', '::1', 'Edycja miejsca: 1 przez admin: Talar'),
(380, '2019-06-21 00:20:00', '::1', 'Edycja miejsca: 1 przez admin: Talar'),
(381, '2019-06-21 00:20:06', '::1', 'Edycja miejsca: 1 przez admin: Talar'),
(382, '2019-06-21 00:21:41', '::1', 'Edycja miejsca: 1 przez admin: Talar'),
(383, '2019-06-21 00:21:48', '::1', 'Edycja miejsca: 1 przez admin: Talar'),
(384, '2019-06-21 00:22:02', '::1', 'Edycja miejsca: 1 przez admin: Talar'),
(385, '2019-06-21 00:23:20', '::1', 'Edycja miejsca: 1 przez admin: Talar'),
(386, '2019-06-21 00:23:32', '::1', 'Edycja miejsca: 1 przez admin: Talar'),
(387, '2019-06-21 00:23:38', '::1', 'Edycja miejsca: 1 przez admin: Talar'),
(388, '2019-06-21 00:23:41', '::1', 'Edycja miejsca: 1 przez admin: Talar'),
(389, '2019-06-21 00:23:46', '::1', 'Edycja miejsca: 1 przez admin: Talar'),
(390, '2019-06-21 00:23:49', '::1', 'Edycja miejsca: 1 przez admin: Talar'),
(391, '2019-06-21 00:26:19', '::1', 'Edycja miejsca: 1 przez admin: Talar'),
(392, '2019-06-21 00:26:22', '::1', 'Edycja miejsca: 1 przez admin: Talar'),
(393, '2019-06-21 00:26:33', '::1', 'Edycja miejsca: 1 przez admin: Talar'),
(394, '2019-06-21 00:26:36', '::1', 'Edycja miejsca: 1 przez admin: Talar'),
(395, '2019-06-21 00:26:39', '::1', 'Edycja miejsca: 1 przez admin: Talar'),
(396, '2019-06-21 00:26:43', '::1', 'Edycja miejsca: 1 przez admin: Talar'),
(397, '2019-06-21 00:26:46', '::1', 'Edycja miejsca: 1 przez admin: Talar'),
(398, '2019-06-21 00:26:50', '::1', 'Edycja miejsca: 1 przez admin: Talar'),
(399, '2019-06-21 00:27:40', '::1', 'Edycja miejsca: 1 przez admin: Talar'),
(400, '2019-06-21 00:27:59', '::1', 'Edycja miejsca: 1 przez admin: Talar'),
(401, '2019-06-21 00:46:13', '::1', 'Edycja miejsca: 22 przez admin: Talar'),
(402, '2019-06-21 00:47:12', '::1', 'Edycja miejsca: 22 przez admin: Talar'),
(403, '2019-06-21 00:47:50', '::1', 'Edycja miejsca: 22 przez admin: Talar'),
(404, '2019-06-21 00:48:09', '::1', 'Edycja miejsca: 22 przez admin: Talar'),
(405, '2019-06-21 00:48:21', '::1', 'Edycja miejsca: 22 przez admin: Talar'),
(406, '2019-06-21 00:48:33', '::1', 'Edycja miejsca: 22 przez admin: Talar'),
(407, '2019-06-21 00:48:40', '::1', 'Edycja miejsca: 22 przez admin: Talar'),
(408, '2019-06-21 00:49:04', '::1', 'Edycja miejsca: 22 przez admin: Talar'),
(409, '2019-06-21 00:49:08', '::1', 'Edycja miejsca: 22 przez admin: Talar'),
(410, '2019-06-22 16:09:01', '::1', 'Logowanie na konto: Talar'),
(411, '2019-06-23 00:10:12', '::1', 'Edycja miejsca: 18 przez admin: Talar'),
(412, '2019-06-23 13:22:00', '::1', 'Logowanie na konto: Talar'),
(413, '2019-06-24 10:50:48', '::1', 'Logowanie na konto: Talar');

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
(1, 'E. Leclerc', 'Braci Miroszewskich 2H Sosnowiec', 50.292431, 19.183718, 'bar'),
(2, 'Stacja BP', 'Braci Miroszewskich 2H Sosnowiec', 50.292328, 19.182644, 'gas_station'),
(3, 'Biedronka', 'Generała Tadeusza Bora-Komorowskiego 3', 50.287571, 19.173782, 'shop'),
(4, '\"SILVA-TOP\" Bolesław Bolek', 'Radzionkowska 34A 42-622 Świerklaniec Polska', 50.433716, 18.924637, 'gas_station'),
(5, 'Salex', 'Racławicka 17 41-205 Sosnowiec', 50.292618, 19.140018, 'gas_station'),
(6, 'PEPCO', 'Koszalińska 1A, Sosnowiec', 50.284733, 19.176334, 'shop'),
(7, 'Biedronka', 'Teofila Lenartowicza 39C', 50.295013, 19.191097, 'gas_station'),
(8, 'Lidl', 'Romana Dmowskiego 24', 50.303158, 19.191097, 'shop'),
(9, 'Inter Cars S.A', 'Cypriana Kamila Norwida 2, Sosnowiec', 50.290932, 19.155993, 'gas_station'),
(10, 'Castorama', 'Jana Długosza 82, Sosnowiec', 50.310886, 19.183203, 'gas_station'),
(11, 'Żabka', 'Będzińska 39A, Sosnowiec', 50.295918, 19.134117, 'shop'),
(12, 'Kiosk Ruch', 'Będzińska, Sosnowiec', 50.295319, 19.134102, 'shop'),
(13, 'Skalar', 'Tatrzańska, Sosnowiec', 50.277615, 19.152355, 'gastronomy'),
(15, 'Auchan', 'Zuzanny 20, Sosnowiec', 50.302799, 19.161228, 'shop'),
(17, 'Stacja Paliw Orlen', '11-go Listopada 112', 50.281429, 19.174898, 'gas_station'),
(18, 'Fashion Outlet', '11-go Listopada 145/152, Sosnowiec', 50.281467, 19.178181, 'gas_station'),
(19, 'Apteka Blisko Ciebie', 'Piłsudskiego 25a', 50.321190, 19.130116, 'shop'),
(23, 'Piekarnia Ciastkarnia KŁOS 24H', 'Bolesława Prusa 255 Sosnowiec', 50.294712, 19.161743, 'shop'),
(22, 'Metal-Gum 2', 'Zagórska 61, Będzin', 50.312008, 19.145823, 'shop');

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
(1, 1, 'Fajny sklep', '[\"alkohol\",\"pieczywo\",\"chemia\",\"mi\\u0119so\",\"prasa\"]', '10:00:00', '21:00:00', '2019-06-02 16:27:23', 1, 1),
(2, 2, 'Całodobowy', '[\"alkohol\"]', '00:00:00', '00:00:00', '2019-06-02 17:14:23', 1, 1),
(3, 3, 'Brudno tam jest', '[\"alkohol\",\"pieczywo\",\"chemia\",\"owoce\",\"mięso\"]', '07:00:00', '21:00:00', '2019-06-02 17:15:12', 1, 1),
(4, 4, '', '[\"pieczywo\"]', '06:00:00', '21:00:00', '2019-06-02 17:19:10', 1, 1),
(5, 5, 'Śmierdzi', '[\"alkohol\",\"pieczywo\",\"chemia\",\"owoce\",\"mięso\"]', '00:00:00', '21:37:00', '2019-06-02 17:28:42', 1, 1),
(6, 6, 'Nic ciekawego', '[\"chemia\"]', '06:00:00', '23:00:00', '2019-06-03 20:32:00', 2, 1),
(7, 7, '', '[\"prasa\"]', '05:00:00', '21:00:00', '2019-06-03 20:57:52', 1, 0),
(8, 8, '', '[\"alkohol\",\"pieczywo\",\"chemia\",\"owoce\",\"mięso\",\"prasa\"]', '06:00:00', '21:00:00', '2019-06-04 16:36:52', 2, 1),
(9, 9, '', '[\"alkohol\",\"pieczywo\"]', '05:00:00', '15:00:00', '2019-06-05 20:59:06', 0, 1),
(10, 10, '', '[\"alkohol\",\"pieczywo\"]', '05:00:00', '15:00:00', '2019-06-05 20:59:06', 3, 0),
(11, 11, 'Zielony liptonek mmm', '[\"alkohol\",\"pieczywo\",\"chemia\",\"owoce\",\"mięso\",\"prasa\"]', '06:00:00', '23:00:00', '2019-06-05 21:03:47', 5, 0),
(12, 12, 'Tylko stare baby kupują w kiosku', '[\"alkohol\",\"chemia\",\"prasa\"]', '05:00:00', '21:00:00', '2019-06-05 21:06:03', 1, 0),
(13, 13, '', '[\"owoce\",\"mięso\"]', '17:00:00', '04:30:00', '2019-06-05 21:13:09', 1, 0),
(15, 15, '', '[\"alkohol\"]', '05:00:00', '21:00:00', '2019-06-05 21:14:18', 1, 0),
(16, 17, 'Po 23:45 nie sprzedają alkoholu', '[\"mięso\"]', '00:00:00', '00:00:00', '2019-06-06 18:31:40', 1, 0),
(17, 18, '', '[\"pieczywo\",\"prasa\"]', '15:00:00', '21:00:00', '2019-06-06 18:34:24', 1, 0),
(18, 19, '', '[\"alkohol\",\"pieczywo\",\"chemia\",\"mięso\"]', '13:00:00', '04:00:00', '2019-06-06 18:41:01', 1, 0),
(20, 22, '', '[\"alkohol\",\"pieczywo\",\"mi\\u0119so\"]', '05:00:00', '07:00:00', '2019-06-11 17:06:26', 1, 0),
(21, 23, 'Całodobowe!', '[\"pieczywo\"]', '00:00:00', '00:00:00', '2019-06-24 09:49:43', 1, 0);

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
(1, 'Talar', 'a1e03cf022862126dabb2b06e3223521', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'admin@admin.pl', 1),
(2, 'PierwszyUser', 'a1e03cf022862126dabb2b06e3223521', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user4@local.pl', 3),
(3, 'DrugiUser', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user3@localhost.pl', 3),
(4, 'TrzeciUser', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user4@localhost.pl', 3),
(5, 'Moderator1', 'a1e03cf022862126dabb2b06e3223521', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user5@localhost.pl', 2),
(6, 'banned', 'a1e03cf022862126dabb2b06e3223521', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user6@localhost.pl', 4),
(7, 'user', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user7@localhost.pl', 3),
(10, 'DrugiAdmin', '64a4e327e97c1e7926f9240edb937362', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user18x0@localhost.pl', 1),
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
(1, 'default.png', 5, 'Lorem ipsum', '2019-06-24 10:50:48', '2019-05-18 20:26:19'),
(2, 'default.png', 2, 'Lorem ipsum', '2019-06-04 18:35:50', '2019-05-18 20:26:19'),
(3, 'default.png', 0, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(4, 'default.png', 0, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(5, 'default.png', 0, 'Lorem ipsum', '2019-06-06 00:56:52', '2019-05-18 20:26:19'),
(6, 'default.png', 1, 'Lorem ipsum', '2019-06-11 19:09:35', '2019-05-18 20:26:19'),
(7, 'default.png', 0, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(8, 'default.png', 0, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(10, 'default.png', 0, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(11, 'default.png', 0, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(12, 'default.png', 0, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(13, 'default.png', 0, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(14, 'default.png', 0, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(15, 'default.png', 0, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(16, 'default.png', 0, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(17, 'default.png', 0, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(18, 'default.png', 0, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(19, 'default.png', 0, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(20, 'default.png', 0, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(21, 'default.png', 0, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(22, 'default.png', 0, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(23, 'default.png', 0, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(24, 'default.png', 0, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(25, 'default.png', 0, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(26, 'default.png', 0, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(27, 'default.png', 0, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(28, 'default.png', 0, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(29, 'default.png', 0, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(30, 'default.png', 0, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(31, 'default.png', 0, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(32, 'default.png', 0, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(33, 'default.png', 0, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(34, 'default.png', 0, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(35, 'default.png', 0, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(36, 'default.png', 0, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(37, 'default.png', 0, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(38, 'default.png', 0, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(39, 'default.png', 0, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(40, 'default.png', 0, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(41, 'default.png', 0, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(42, 'default.png', 0, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(43, 'default.png', 0, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(44, 'default.png', 0, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(45, 'default.png', 0, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(46, 'default.png', 0, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(47, 'default.png', 0, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(48, 'default.png', 0, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(49, 'default.png', 0, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(50, 'default.png', 0, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(51, 'default.png', 0, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(52, 'default.png', 0, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(53, 'default.png', 0, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(54, 'default.png', 0, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(55, 'default.png', 0, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(56, 'default.png', 0, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(57, 'default.png', 0, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(58, 'default.png', 0, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(59, 'default.png', 0, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(60, 'default.png', 0, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(61, 'default.png', 0, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(62, 'default.png', 0, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(63, 'default.png', 0, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(64, 'default.png', 0, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(65, 'default.png', 0, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(66, 'default.png', 0, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(67, 'default.png', 0, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(68, 'default.png', 0, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(69, 'default.png', 0, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(70, 'default.png', 0, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(71, 'default.png', 0, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(72, 'default.png', 0, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(73, 'default.png', 0, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(74, 'default.png', 0, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(75, 'default.png', 0, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(76, 'default.png', 0, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(77, 'default.png', 0, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(78, 'default.png', 0, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(79, 'default.png', 0, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(80, 'default.png', 0, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(81, 'default.png', 0, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(82, 'default.png', 0, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(83, 'default.png', 0, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(84, 'default.png', 0, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(85, 'default.png', 0, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(86, 'default.png', 0, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(87, 'default.png', 0, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(88, 'default.png', 0, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(89, 'default.png', 0, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(90, 'default.png', 0, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(91, 'default.png', 0, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(92, 'default.png', 0, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(93, 'default.png', 0, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(94, 'default.png', 0, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(95, 'default.png', 0, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(96, 'default.png', 0, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(97, 'default.png', 0, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(98, 'default.png', 0, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(99, 'default.png', 0, 'Lorem ipsum', '2019-05-18 20:26:19', '2019-05-18 20:26:19'),
(100, 'default.png', 0, '', '0000-00-00 00:00:00', '2019-05-18 20:55:45'),
(102, 'default.png', 0, '', '2019-06-05 23:40:49', '2019-06-05 23:40:42');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `vote`
--

CREATE TABLE `vote` (
  `id_vote` int(11) NOT NULL,
  `id_marker` int(11) NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `vote`
--

INSERT INTO `vote` (`id_vote`, `id_marker`, `id_user`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 5, 1),
(25, 21, 1),
(35, 9, 1),
(36, 8, 1),
(37, 6, 1);

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
  ADD PRIMARY KEY (`id_details`),
  ADD KEY `id_marker` (`id_marker`);

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
-- Indexes for table `vote`
--
ALTER TABLE `vote`
  ADD PRIMARY KEY (`id_vote`),
  ADD KEY `marker` (`id_marker`),
  ADD KEY `user` (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `action_log`
--
ALTER TABLE `action_log`
  MODIFY `id_log` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=414;
--
-- AUTO_INCREMENT dla tabeli `markers`
--
ALTER TABLE `markers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT dla tabeli `marker_details`
--
ALTER TABLE `marker_details`
  MODIFY `id_details` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
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
  MODIFY `id_details` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;
--
-- AUTO_INCREMENT dla tabeli `vote`
--
ALTER TABLE `vote`
  MODIFY `id_vote` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`id_role`) REFERENCES `role` (`id_role`),
  ADD CONSTRAINT `user_ibfk_2` FOREIGN KEY (`id`) REFERENCES `user_details` (`id_details`);

--
-- Ograniczenia dla tabeli `vote`
--
ALTER TABLE `vote`
  ADD CONSTRAINT `vote_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
