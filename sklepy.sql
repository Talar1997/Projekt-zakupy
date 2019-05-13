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
(25, 'Talar', '12e5078007b0759c373d29f4b75a2979', 'Serwer', '421aa90e079fa326b6494f812ad13e79', 'talar1997@mail.com', 2);

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
