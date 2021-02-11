-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 11 feb 2021 om 15:43
-- Serverversie: 10.4.17-MariaDB
-- PHP-versie: 8.0.0

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
  `contmessage` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Gegevens worden geëxporteerd voor tabel `contactform`
--

INSERT INTO `contactform` (`Firstname`, `Lastname`, `Phonenumber`, `Email`, `ContactformID`, `contmessage`) VALUES
('Jelle', 'Wolf', '0615240373', 'jellewolf3@gmail.com', 4, 'reewrwe');

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
  `NewsImages` varchar(256) NOT NULL,
  `NewsName` varchar(256) NOT NULL,
  `NewsArticle` varchar(1000) NOT NULL,
  `NewsDate` date NOT NULL,
  `NewsID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Gegevens worden geëxporteerd voor tabel `news`
--

INSERT INTO `news` (`NewsImages`, `NewsName`, `NewsArticle`, `NewsDate`, `NewsID`) VALUES
('placeholder1.png', 'Nieuws artikel 1 week 5, 2021', 'week 5', '2021-02-05', 1),
('placeholder1.png', 'Nieuws artikel 2 week 6, 2021', 'week 6', '2021-02-12', 2),
('placeholder1.png', 'Nieuws artikel 3 week 7, 2021', 'week 7', '2021-02-19', 5),
('placeholder1.png', 'nieuws artikel 4, week 8 2021', 'week 8', '2021-02-26', 6);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `signup`
--

CREATE TABLE `signup` (
  `Salutation` varchar(100) DEFAULT NULL,
  `Firstname` varchar(100) NOT NULL,
  `Lastname` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Userpass` varchar(20) NOT NULL,
  `Phonenumber` varchar(50) NOT NULL,
  `City` varchar(100) DEFAULT NULL,
  `Street` varchar(100) DEFAULT NULL,
  `Housenumber` varchar(11) NOT NULL,
  `Postalcode` varchar(100) NOT NULL,
  `LoginID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Gegevens worden geëxporteerd voor tabel `signup`
--

INSERT INTO `signup` (`Salutation`, `Firstname`, `Lastname`, `Email`, `Userpass`, `Phonenumber`, `City`, `Street`, `Housenumber`, `Postalcode`, `LoginID`) VALUES
('Dhr', 'Jelle', 'Wolf', 'jellewolf3@gmail.com', 'test', '06354354345', 'Den Hoorn', 'Zouteland', '9', '1797BA', 23),
('Dhr', 'Jelle', 'Wolf', 'jellewolf3@gmail.com', 'test', '06354354345', 'Den Hoorn', 'Zouteland', '9', '1797BA', 24),
('Dhr', 'Jelle', 'Wolf', 'jellewolf3@gmail.com', 'test4', '0615240373', 'Den Hoorn', 'Zouteland', 'Zouteland', '1797BA', 25),
('aanhef hier', 'Arjan', 'Roodenburg', 'spuurmaann3@gmail.com', '110011', '110011', 'ANNA PAULOWNA', 'STATIONSWEG', 'STATIONSWEG', '1761EB', 26),
('', 'Arjan', 'Roodenburg', 'spuurmaann3@gmail.com', '110011', '110011', 'ANNA PAULOWNA', 'STATIONSWEG', 'STATIONSWEG', '1761EB', 27),
('', '', '', '', '', '', '', '', '', '', 28),
('', '', '', '', '', '', '', '', '', '', 29);

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `contactform`
--
ALTER TABLE `contactform`
  ADD PRIMARY KEY (`ContactformID`);

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
-- Indexen voor tabel `signup`
--
ALTER TABLE `signup`
  ADD PRIMARY KEY (`LoginID`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `contactform`
--
ALTER TABLE `contactform`
  MODIFY `ContactformID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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

--
-- AUTO_INCREMENT voor een tabel `signup`
--
ALTER TABLE `signup`
  MODIFY `LoginID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `contactform`
--
ALTER TABLE `contactform`
  MODIFY `ContactformID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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

--
-- AUTO_INCREMENT voor een tabel `signup`
--
ALTER TABLE `signup`
  MODIFY `LoginID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
