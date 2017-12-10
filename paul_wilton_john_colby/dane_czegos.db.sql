-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Czas generowania: 09 Gru 2017, 19:02
-- Wersja serwera: 5.7.16
-- Wersja PHP: 5.6.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `szybka_powtorka`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `dane_czegos`
--

CREATE TABLE `dane_czegos` (
  `id` int(11) NOT NULL,
  `dane_1_f` float DEFAULT '0',
  `dane_2_f` float DEFAULT '0',
  `dane_1_i` int(11) DEFAULT '0',
  `dane_2_i` int(11) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Zrzut danych tabeli `dane_czegos`
--

INSERT INTO `dane_czegos` (`id`, `dane_1_f`, `dane_2_f`, `dane_1_i`, `dane_2_i`) VALUES
(1, 1, 12, 32, 234),
(2, 2.5, 8.9, 789, 552),
(3, 8.9, 0, 0, 0),
(4, 0, 0, 2, 0),
(5, 0, 0, -996, 5),
(6, 0, 0, 0, 44),
(7, 0, 0, 42, 0),
(8, 0.6, 0, 0, 2),
(9, 0, 0, 2, 0);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indexes for table `dane_czegos`
--
ALTER TABLE `dane_czegos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `dane_czegos`
--
ALTER TABLE `dane_czegos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
