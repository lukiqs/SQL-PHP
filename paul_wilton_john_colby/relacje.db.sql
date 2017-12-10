-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Czas generowania: 09 Gru 2017, 21:31
-- Wersja serwera: 5.7.16
-- Wersja PHP: 5.6.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `relacje`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `dzialy`
--

CREATE TABLE `dzialy` (
  `id_dzialu` int(11) NOT NULL,
  `Nazwa` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Zrzut danych tabeli `dzialy`
--

INSERT INTO `dzialy` (`id_dzialu`, `Nazwa`) VALUES
(1, 'Developerzy'),
(2, 'QA'),
(3, 'innny'),
(4, 'jeszcze iiny');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `kordynacja`
--

CREATE TABLE `kordynacja` (
  `id_dzialu` int(11) NOT NULL,
  `id_p` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Zrzut danych tabeli `kordynacja`
--

INSERT INTO `kordynacja` (`id_dzialu`, `id_p`) VALUES
(1, 2),
(2, 1),
(2, 3),
(2, 4);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pracownicy`
--

CREATE TABLE `pracownicy` (
  `id_p` int(11) NOT NULL,
  `Imie` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Nazwisko` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Zrzut danych tabeli `pracownicy`
--

INSERT INTO `pracownicy` (`id_p`, `Imie`, `Nazwisko`) VALUES
(1, 'Michal', 'Kusy'),
(2, 'Łukasz', 'Kusy'),
(3, 'Rafal', 'Kusy'),
(4, 'Witold', 'Kusy'),
(5, '', ''),
(6, 'magda', 'kusy');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `zarobki`
--

CREATE TABLE `zarobki` (
  `id_p` int(11) NOT NULL,
  `zarobek` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- Zrzut danych tabeli `zarobki`
--

INSERT INTO `zarobki` (`id_p`, `zarobek`) VALUES
(1, 500),
(2, 6000),
(3, 85554),
(4, 79844);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indexes for table `dzialy`
--
ALTER TABLE `dzialy`
  ADD PRIMARY KEY (`id_dzialu`);

--
-- Indexes for table `kordynacja`
--
ALTER TABLE `kordynacja`
  ADD KEY `id_p` (`id_p`),
  ADD KEY `id_dzialu` (`id_dzialu`);

--
-- Indexes for table `pracownicy`
--
ALTER TABLE `pracownicy`
  ADD PRIMARY KEY (`id_p`);

--
-- Indexes for table `zarobki`
--
ALTER TABLE `zarobki`
  ADD PRIMARY KEY (`id_p`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `dzialy`
--
ALTER TABLE `dzialy`
  MODIFY `id_dzialu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT dla tabeli `pracownicy`
--
ALTER TABLE `pracownicy`
  MODIFY `id_p` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `kordynacja`
--
ALTER TABLE `kordynacja`
  ADD CONSTRAINT `kordynacja_ibfk_1` FOREIGN KEY (`id_p`) REFERENCES `pracownicy` (`id_p`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `kordynacja_ibfk_2` FOREIGN KEY (`id_dzialu`) REFERENCES `dzialy` (`id_dzialu`);

--
-- Ograniczenia dla tabeli `zarobki`
--
ALTER TABLE `zarobki`
  ADD CONSTRAINT `zarobki_ibfk_1` FOREIGN KEY (`id_p`) REFERENCES `pracownicy` (`id_p`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
