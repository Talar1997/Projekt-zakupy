-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 12 Maj 2019, 21:46
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
  `id` int(11) NOT NULL,
  `datetime` datetime NOT NULL,
  `ip` varchar(20) COLLATE utf8_polish_ci NOT NULL,
  `log` varchar(512) COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `action_log`
--

INSERT INTO `action_log` (`id`, `datetime`, `ip`, `log`) VALUES
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
(18, '2019-05-12 21:32:21', '::1', 'Logowanie na konto: admin');

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
-- Struktura tabeli dla tabeli `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `login` varchar(32) COLLATE utf8_polish_ci NOT NULL,
  `password` varchar(64) COLLATE utf8_polish_ci NOT NULL,
  `role` varchar(16) COLLATE utf8_polish_ci NOT NULL,
  `security_question` varchar(1024) COLLATE utf8_polish_ci NOT NULL,
  `security_answer` varchar(256) COLLATE utf8_polish_ci NOT NULL,
  `email` varchar(128) COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `user`
--

INSERT INTO `user` (`id`, `login`, `password`, `role`, `security_question`, `security_answer`, `email`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin', '2+2', 'a87ff679a2f3e71d9181a67b7542122c', 'admin@admin.pl'),
(4, 'user', 'ee11cbb19052e40b07aac0ca060c23ee', 'user', '2x10', '98f13708210194c475687be6106a3b84', 'user@user.pl'),
(11, 'user2', 'a1e03cf022862126dabb2b06e3223521', 'user', 'dupa', '9743a66f914cc249efca164485a19c5c', 'user2@user.pl'),
(13, 'Chrupek2137', 'a1e03cf022862126dabb2b06e3223521', 'user', 'Dżejson', '8c01efe025e2933e1684867c9f0249a0', 'gunwo@gunwo.pll'),
(14, 'AdminissstratorPrawie', 'a1e03cf022862126dabb2b06e3223521', 'user', 'asdasdasd', '31d2101c79a61ce5ccac29834141d3a2', 'admin2@2222.pl');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indexes for table `action_log`
--
ALTER TABLE `action_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `markers`
--
ALTER TABLE `markers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `action_log`
--
ALTER TABLE `action_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT dla tabeli `markers`
--
ALTER TABLE `markers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT dla tabeli `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
