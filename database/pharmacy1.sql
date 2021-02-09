-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 05 feb 2021 om 19:43
-- Serverversie: 10.4.17-MariaDB
-- PHP-versie: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pharmacy`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `contactform`
--

CREATE TABLE `contactform` (
  `Firstname` varchar(100) NOT NULL,
  `Lastname` varchar(100) NOT NULL,
  `Phonenumber` varchar(50) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `ContactformID` int(11) NOT NULL,
  `message` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `login`
--

CREATE TABLE `login` (
  `Salutation` varchar(100) NOT NULL,
  `Firstname` varchar(100) NOT NULL,
  `Lastname` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Phonenumber` int(50) NOT NULL,
  `City` varchar(100) NOT NULL,
  `Street` varchar(100) NOT NULL,
  `Housenumber` int(11) NOT NULL,
  `Postalcode` varchar(100) NOT NULL,
  `LoginID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `medicine`
--

CREATE TABLE `medicine` (
  `MedicineName` varchar(30) NOT NULL,
  `MedicineStock` int(11) NOT NULL,
  `MedicineID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `news`
--

CREATE TABLE `news` (
  `NewsName` varchar(256) NOT NULL,
  `NewsArticle` varchar(1000) NOT NULL,
  `NewsDate` date NOT NULL,
  `NewsID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Gegevens worden geëxporteerd voor tabel `news`
--

INSERT INTO `news` (`NewsName`, `NewsArticle`, `NewsDate`, `NewsID`) VALUES
('Nieuws artikel 1 week 5, 2021', 'week 5', '2021-02-05', 1),
('Nieuws artikel 2 week 6, 2021', 'week 6', '2021-02-12', 2),
('Nieuws artikel 3 week 7, 2021', 'week 7', '2021-02-19', 5),
('nieuws artikel 4, week 8 2021', 'week 8', '2021-02-26', 6);

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `contactform`
--
ALTER TABLE `contactform`
  ADD PRIMARY KEY (`ContactformID`);

--
-- Indexen voor tabel `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`LoginID`);

--
-- Indexen voor tabel `medicine`
--
ALTER TABLE `medicine`
  ADD PRIMARY KEY (`MedicineID`);

--
-- Indexen voor tabel `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`NewsID`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `contactform`
--
ALTER TABLE `contactform`
  MODIFY `ContactformID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT voor een tabel `login`
--
ALTER TABLE `login`
  MODIFY `LoginID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `medicine`
--
ALTER TABLE `medicine`
  MODIFY `MedicineID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `news`
--
ALTER TABLE `news`
  MODIFY `NewsID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
