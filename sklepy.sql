-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 18 Kwi 2019, 18:35
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
(5, 'Consuch', 'a1e03cf022862126dabb2b06e3223521', 'user', 'Nazwa serwera', '421aa90e079fa326b6494f812ad13e79', 'Consuch@interia.pl');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
