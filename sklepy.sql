-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Czas generowania: 13 Maj 2019, 14:40
-- Wersja serwera: 10.1.38-MariaDB
-- Wersja PHP: 7.3.2

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
(33, '2019-05-13 12:38:23', '::1', 'Logowanie na konto: admin');

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
(1, 'Uniwersytet Śląski', 'ul. Będzińska, Sosnowiec', 50.288738, 19.129940, 'restaurant'),
(2, 'Lorem Ipsum ', 'ul. Będzińska, Sosnowiec', 50.287739, 19.128941, 'bar'),
(3, 'Lorem Ipsum ', 'ul. Będzińska, Sosnowiec', 50.287739, 18.128941, 'bar'),
(4, 'Lorem Ipsum ', 'ul. Będzińska, Sosnowiec', 51.287739, 19.128941, 'bar'),
(5, 'Lorem Ipsum ', 'ul. Będzińska, Sosnowiec', 52.287739, 23.128941, 'bar');

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
(2, 'user');

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
(2, 'user', 'ee11cbb19052e40b07aac0ca060c23ee', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user@user.pl', 2),
(3, 'user3', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user3@localhost.pl', 2),
(4, 'user4', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user4@localhost.pl', 2),
(5, 'user5', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user5@localhost.pl', 2),
(6, 'user6', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user6@localhost.pl', 2),
(7, 'user7', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user7@localhost.pl', 2),
(8, 'user8', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user8@localhost.pl', 2),
(9, 'user9', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user9@localhost.pl', 2),
(10, 'user10', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user10@localhost.pl', 2),
(11, 'user11', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user11@localhost.pl', 2),
(12, 'user12', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user12@localhost.pl', 2),
(13, 'user13', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user13@localhost.pl', 2),
(14, 'user14', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user14@localhost.pl', 2),
(15, 'user15', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user15@localhost.pl', 2),
(16, 'user16', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user16@localhost.pl', 2),
(17, 'user17', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user17@localhost.pl', 2),
(18, 'user18', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user18@localhost.pl', 2),
(19, 'user19', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user19@localhost.pl', 2),
(20, 'user20', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user20@localhost.pl', 2),
(21, 'user21', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user21@localhost.pl', 2),
(22, 'user22', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user22@localhost.pl', 2),
(23, 'user23', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user23@localhost.pl', 2),
(24, 'user24', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user24@localhost.pl', 2),
(25, 'user25', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user25@localhost.pl', 2),
(26, 'user26', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user26@localhost.pl', 2),
(27, 'user27', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user27@localhost.pl', 2),
(28, 'user28', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user28@localhost.pl', 2),
(29, 'user29', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user29@localhost.pl', 2),
(30, 'user30', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user30@localhost.pl', 2),
(31, 'user31', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user31@localhost.pl', 2),
(32, 'user32', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user32@localhost.pl', 2),
(33, 'user33', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user33@localhost.pl', 2),
(34, 'user34', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user34@localhost.pl', 2),
(35, 'user35', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user35@localhost.pl', 2),
(36, 'user36', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user36@localhost.pl', 2),
(37, 'user37', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user37@localhost.pl', 2),
(38, 'user38', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user38@localhost.pl', 2),
(39, 'user39', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user39@localhost.pl', 2),
(40, 'user40', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user40@localhost.pl', 2),
(41, 'user41', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user41@localhost.pl', 2),
(42, 'user42', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user42@localhost.pl', 2),
(43, 'user43', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user43@localhost.pl', 2),
(44, 'user44', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user44@localhost.pl', 2),
(45, 'user45', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user45@localhost.pl', 2),
(46, 'user46', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user46@localhost.pl', 2),
(47, 'user47', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user47@localhost.pl', 2),
(48, 'user48', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user48@localhost.pl', 2),
(49, 'user49', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user49@localhost.pl', 2),
(50, 'user50', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user50@localhost.pl', 2),
(51, 'user51', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user51@localhost.pl', 2),
(52, 'user52', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user52@localhost.pl', 2),
(53, 'user53', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user53@localhost.pl', 2),
(54, 'user54', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user54@localhost.pl', 2),
(55, 'user55', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user55@localhost.pl', 2),
(56, 'user56', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user56@localhost.pl', 2),
(57, 'user57', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user57@localhost.pl', 2),
(58, 'user58', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user58@localhost.pl', 2),
(59, 'user59', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user59@localhost.pl', 2),
(60, 'user60', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user60@localhost.pl', 2),
(61, 'user61', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user61@localhost.pl', 2),
(62, 'user62', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user62@localhost.pl', 2),
(63, 'user63', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user63@localhost.pl', 2),
(64, 'user64', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user64@localhost.pl', 2),
(65, 'user65', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user65@localhost.pl', 2),
(66, 'user66', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user66@localhost.pl', 2),
(67, 'user67', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user67@localhost.pl', 2),
(68, 'user68', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user68@localhost.pl', 2),
(69, 'user69', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user69@localhost.pl', 2),
(70, 'user70', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user70@localhost.pl', 2),
(71, 'user71', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user71@localhost.pl', 2),
(72, 'user72', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user72@localhost.pl', 2),
(73, 'user73', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user73@localhost.pl', 2),
(74, 'user74', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user74@localhost.pl', 2),
(75, 'user75', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user75@localhost.pl', 2),
(76, 'user76', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user76@localhost.pl', 2),
(77, 'user77', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user77@localhost.pl', 2),
(78, 'user78', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user78@localhost.pl', 2),
(79, 'user79', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user79@localhost.pl', 2),
(80, 'user80', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user80@localhost.pl', 2),
(81, 'user81', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user81@localhost.pl', 2),
(82, 'user82', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user82@localhost.pl', 2),
(83, 'user83', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user83@localhost.pl', 2),
(84, 'user84', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user84@localhost.pl', 2),
(85, 'user85', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user85@localhost.pl', 2),
(86, 'user86', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user86@localhost.pl', 2),
(87, 'user87', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user87@localhost.pl', 2),
(88, 'user88', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user88@localhost.pl', 2),
(89, 'user89', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user89@localhost.pl', 2),
(90, 'user90', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user90@localhost.pl', 2),
(91, 'user91', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user91@localhost.pl', 2),
(92, 'user92', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user92@localhost.pl', 2),
(93, 'user93', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user93@localhost.pl', 2),
(94, 'user94', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user94@localhost.pl', 2),
(95, 'user95', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user95@localhost.pl', 2),
(96, 'user96', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user96@localhost.pl', 2),
(97, 'user97', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user97@localhost.pl', 2),
(98, 'user98', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user98@localhost.pl', 2),
(99, 'user99', '21232f297a57a5a743894a0e4a801fc3', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'user99@localhost.pl', 2);


--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `action_log`
--
ALTER TABLE `action_log`
  ADD PRIMARY KEY (`id_log`);

--
-- Indeksy dla tabeli `markers`
--
ALTER TABLE `markers`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id_role`);

--
-- Indeksy dla tabeli `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rola` (`id_role`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `action_log`
--
ALTER TABLE `action_log`
  MODIFY `id_log` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT dla tabeli `markers`
--
ALTER TABLE `markers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT dla tabeli `role`
--
ALTER TABLE `role`
  MODIFY `id_role` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT dla tabeli `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

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
