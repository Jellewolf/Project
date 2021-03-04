-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 04 mrt 2021 om 14:07
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
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `phonenumber` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `contactformID` int(11) NOT NULL,
  `contmessage` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Gegevens worden geëxporteerd voor tabel `contactform`
--

INSERT INTO `contactform` (`firstname`, `lastname`, `phonenumber`, `email`, `contactformID`, `contmessage`) VALUES
('Jelle', 'Wolf', '0615240373', 'jellewolf3@gmail.com', 4, 'reewrwe'),
('Jelle de Wolf', 'Wolf', '0615240373', 'jellewolf3@gmail.com', 5, 'klikklik'),
('', '', '', '', 6, ''),
('', '', '', '', 7, ''),
('', '', '67675675765756', '', 8, '');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `medicine`
--

CREATE TABLE `medicine` (
  `medicineName` varchar(30) NOT NULL,
  `medicineStock` int(11) NOT NULL,
  `medicineID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Gegevens worden geëxporteerd voor tabel `medicine`
--

INSERT INTO `medicine` (`medicineName`, `medicineStock`, `medicineID`) VALUES
('Doxepine', 10, 0),
('Carvedilol', 10, 1),
('Citalopram', 10, 2),
('Abacavir', 10, 11),
('Acenocoumarol', 10, 12);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `news`
--

CREATE TABLE `news` (
  `newsimages` varchar(256) NOT NULL,
  `newsname` varchar(256) NOT NULL,
  `newsarticle` varchar(1000) NOT NULL,
  `newsdate` date NOT NULL,
  `newsID` int(11) NOT NULL,
  `newslinks` varchar(100) NOT NULL,
  `newsmessage` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Gegevens worden geëxporteerd voor tabel `news`
--

INSERT INTO `news` (`newsimages`, `newsname`, `newsarticle`, `newsdate`, `newsID`, `newslinks`, `newsmessage`) VALUES
('placeholder1.png', 'Nieuws artikel 1 week 5, 2021', 'week 5', '2021-02-05', 1, 'news1.php', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various '),
('placeholder1.png', 'Nieuws artikel 2 week 6, 2021', 'Nieuwe website gelaunched', '2021-02-12', 2, 'news1.php', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various '),
('placeholder1.png', 'Nieuws artikel 3 week 7, 2021', 'Wij zitten nu op een nieuwe locatie', '2021-02-19', 5, 'news2.php', 'testesteteteteteetetete'),
('placeholder1.png', 'nieuws artikel 4, week 8 2021', 'Het vaccine is nu af te halen', '2021-02-26', 6, 'news3.php', 'oioioioioioioioioioioi');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `signup`
--

CREATE TABLE `signup` (
  `salutation` varchar(100) DEFAULT NULL,
  `firstname` varchar(100) NOT NULL,
  `fastname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `userpass` varchar(20) NOT NULL,
  `phonenumber` varchar(50) NOT NULL,
  `city` varchar(100) DEFAULT NULL,
  `street` varchar(100) DEFAULT NULL,
  `housenumber` varchar(11) NOT NULL,
  `postalcode` varchar(100) NOT NULL,
  `loginID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Gegevens worden geëxporteerd voor tabel `signup`
--

INSERT INTO `signup` (`salutation`, `firstname`, `fastname`, `email`, `userpass`, `phonenumber`, `city`, `street`, `housenumber`, `postalcode`, `loginID`) VALUES
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
  ADD PRIMARY KEY (`contactformID`);

--
-- Indexen voor tabel `medicine`
--
ALTER TABLE `medicine`
  ADD PRIMARY KEY (`medicineID`);

--
-- Indexen voor tabel `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`newsID`);

--
-- Indexen voor tabel `signup`
--
ALTER TABLE `signup`
  ADD PRIMARY KEY (`loginID`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `contactform`
--
ALTER TABLE `contactform`
  MODIFY `contactformID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT voor een tabel `medicine`
--
ALTER TABLE `medicine`
  MODIFY `medicineID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT voor een tabel `news`
--
ALTER TABLE `news`
  MODIFY `newsID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT voor een tabel `signup`
--
ALTER TABLE `signup`
  MODIFY `loginID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
