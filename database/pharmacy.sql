-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 17 mrt 2021 om 22:43
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
  `medicinename` varchar(30) NOT NULL,
  `medicineimage` varchar(30) NOT NULL,
  `medicinestock` int(11) NOT NULL,
  `medicineID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Gegevens worden geëxporteerd voor tabel `medicine`
--

INSERT INTO `medicine` (`medicinename`, `medicineimage`, `medicinestock`, `medicineID`) VALUES
('yyyyyyyyyyyyyyyyyyyyyyyyyyyyyy', 'placeholder1.png', 3, 9),
('bb', 'placeholder1.png', 5, 10),
('cc', 'placeholder1.png', 0, 11),
('aa', 'placeholder1.png', 0, 12),
('d', 'placeholder1.png', 0, 13);

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
  `newsmessage` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Gegevens worden geëxporteerd voor tabel `news`
--

INSERT INTO `news` (`newsimages`, `newsname`, `newsarticle`, `newsdate`, `newsID`, `newslinks`, `newsmessage`) VALUES
('week5.jpg', 'Nieuws artikel 1 week 5, 2021', 'week 5', '2021-02-05', 1, 'news1.php', 'qwertyuiop'),
('websitelaunch.png', 'Nieuws artikel 2 week 6, 2021', 'Nieuwe website gelaunched', '2021-02-12', 2, 'news1.php', 'asdfghjkl'),
('location.png', 'Nieuws artikel 3 week 7, 2021', 'Wij zitten nu op een nieuwe locatie', '2021-02-19', 5, 'news2.php', 'zxcvbnm'),
('vaccines.jpg', 'nieuws artikel 4, week 8 2021', 'Het vaccine is nu af te halen', '2021-02-26', 6, 'news3.php', 'qwertyuiop');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `signup`
--

CREATE TABLE `signup` (
  `salutation` varchar(100) DEFAULT NULL,
  `useruid` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `userpass` varchar(20) NOT NULL,
  `city` varchar(100) DEFAULT NULL,
  `street` varchar(100) DEFAULT NULL,
  `housenumber` varchar(11) NOT NULL,
  `postalcode` varchar(100) NOT NULL,
  `userID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Gegevens worden geëxporteerd voor tabel `signup`
--

INSERT INTO `signup` (`salutation`, `useruid`, `lastname`, `email`, `userpass`, `city`, `street`, `housenumber`, `postalcode`, `userID`) VALUES
('Dhr', 'Jelle', 'de Wolf', 'jellewolf3@gmail.com', '$2y$10$hG4GDXnnOABFE', '123', 'Den Hoorn', 'Zouteland', '9', 1),
('Dhr', 'Jan', 'gekke man', 'jan@gmail.com', '$2y$10$Znp0bimxAanTC', '1234', 'appelstraat', 'appel1', '10', 2),
('Dhr', 'gekkie', 'aap', 'aap@gmail.com', '$2y$10$XQQx8bzs.jJXM', 'lollol', 'dwadwadwa', 'dawdwad', 'wadwadwa', 3),
('Dhr', 'Jelle', 'klaas', 'yolo@gmail.com', '$2y$10$rI2bcj1JdKgjX', '123456', 'okkk', 'kikiki', '9', 4),
('Dhr', 'Jaap', 'dawd', 'jaap@gmail.com', '$2y$10$s0xTNyPOxXRLv', 'hoi', 'gdrgrdg', 'drgrdgrdg', '9', 5);

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
  ADD PRIMARY KEY (`userID`);

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
  MODIFY `medicineID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT voor een tabel `news`
--
ALTER TABLE `news`
  MODIFY `newsID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT voor een tabel `signup`
--
ALTER TABLE `signup`
  MODIFY `userID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
