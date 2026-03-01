-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 01, 2026 at 11:44 PM
-- Wersja serwera: 10.4.32-MariaDB
-- Wersja PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `samurai`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `artysta`
--

CREATE TABLE `artysta` (
  `id` int(11) NOT NULL,
  `nazwa` varchar(45) NOT NULL,
  `nazwa_skrot` varchar(45) NOT NULL,
  `biografia` text NOT NULL,
  `zdjecie` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `artysta`
--

INSERT INTO `artysta` (`id`, `nazwa`, `nazwa_skrot`, `biografia`, `zdjecie`) VALUES
(1, 'Johnny Silverhand', 'johnny', 'Johnny Silverhand był legendarnym rockerboyem i frontmanem w Samurai\'u. Jego muzyka była agresywnie antykorporacyjna i rewolucyjna. Samurai zyskał ogromną popularność, zanim rozpadł się w 2008 roku. Johnny później kontynuował karierę solową, wydając albumy o zabarwieniu politycznym. Utwory takie jak Chippin\' In i Never Fade Away stały się hymnami rebeliantów.', 'johnny.jpg'),
(2, 'Kerry Eurodyne', 'kerry', 'Kerry Eurodyne był rockerboyem, wokalistą i gitarzystą w Samurai\'u. Pomógł ukształtować wizję zespołu, by zmieniać świat za pomocą muzyki. Po rozpadzie Samurai\'a, kontynuował karierę solową, z wieloma hitami i platynowymi albumami. Intensywnie koncertował i przez całe życie wywierał wpływ na muzykę rockową.', 'kerry.jpg'),
(3, 'Nancy Hartley', 'nancy', 'Nancy Hartley była klawiszowcem w Samurai\'u przed 2008 rokiem. Grała w nim u boku Johnny\'ego Silverhanda i Kerry\'ego Eurodyne\'a. Zespół Samurai rozpadł się, gdy Nancy spędziła siedem miesięcy w więzieniu w 2008 roku. Po wyjściu na wolność przyjęła pseudonim Bes Isis i porzuciła muzykę na rzecz mediów.', 'nancy.jpg'),
(4, 'Denny', 'denny', 'Denny była perkusistką i rockerboyem w Samurai\'u. Grała w nim aż do rozpadu zespołu w 2008 roku. Po rozpadzie dołączyła do zespołu Mastermind. Jej kariera muzyczna koncentruje się na jej roli w Samurai\'u i późniejszych projektach.', 'denny.jpg'),
(5, 'Henry', 'henry', 'Henry był basistą i rockerem w Samurai\'u aż do jego rozpadu w 2008 roku. Grał na basie u boku Johnny\'ego Silverhanda i reszty zespołu Samurai. Po rozpadzie Samurai\'a porzucił muzykę, aby pracować nad prototypem, co uszkodziło mu mózg. Jego kariera muzyczna koncentruje się na czasie spędzonym w Samurai\'u.', 'henry.jpg');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `artysta_piosenka`
--

CREATE TABLE `artysta_piosenka` (
  `id` int(11) NOT NULL,
  `artysta_id` int(11) NOT NULL,
  `piosenka_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `artysta_piosenka`
--

INSERT INTO `artysta_piosenka` (`id`, `artysta_id`, `piosenka_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 2),
(4, 3, 2),
(5, 4, 2),
(6, 5, 2),
(7, 1, 3),
(8, 2, 3),
(9, 3, 3),
(10, 4, 3),
(11, 5, 3),
(12, 1, 4),
(13, 2, 4),
(14, 3, 4),
(15, 4, 4),
(16, 5, 4),
(17, 1, 5),
(18, 1, 6),
(19, 2, 6),
(20, 3, 6),
(21, 4, 6),
(22, 5, 6);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `newsletter`
--

CREATE TABLE `newsletter` (
  `id` int(11) NOT NULL,
  `email` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `piosenka`
--

CREATE TABLE `piosenka` (
  `id` int(11) NOT NULL,
  `nazwa` varchar(45) NOT NULL,
  `opis` text NOT NULL,
  `zdjecie` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `piosenka`
--

INSERT INTO `piosenka` (`id`, `nazwa`, `opis`, `zdjecie`) VALUES
(1, 'Never Fade Away', 'Napisany i skomponowany przez Johnny\'ego Silverhanda utwór „Never Fade Away” był częścią jego solowego albumu z 2013 roku, „A Cool Metal Fire”, wydanego przez wytwórnię Universal Media. Jakiś czas później wydał ten utwór ponownie na albumie zatytułowanym „Never Fade Away”. Ostatecznie, po reaktywacji Samurai\'a, nagrano kolejną wersję z resztą zespołu.', 'neverfadeaway.jpg'),
(2, 'Chippin\' in', 'Oryginalną wersję stworzył Samurai i wydał na albumie o tym samym tytule w 2005 roku. Inna wersja napisana i skomponowana przez Johnny\'ego Silverhanda – którą zaśpiewał w 2013 roku przed atakiem na wieżę Arasaka – „Chippin\' In” znalazła się na jego albumie z 2013 roku „A Cool Metal Fire”. W 2022 roku Kerry Eurodyne nagrał cover utworu Silverhanda, nadając melodii bardziej pop-punkowy charakter, stając się natychmiastowym hitem.', 'chippinin.jpg'),
(3, 'The Ballad Of Buck Ravers', 'Choć nie jest tak znana jak Never Fade Away czy Chippin\' In, wielu zagorzałych fanów Samurai uważa Ballad of Buck Ravers za najbardziej wściekłą i cyberpunkową piosenkę zespołu. Została wydana w 2007 roku jako część albumu The Ballad of Buck Ravers.', 'theballad.jpg'),
(4, 'Archangel', 'Brak danych', 'archangel.jpg'),
(5, 'Black Dog', 'Utwór nigdy nie został oficjalnie wydany z powodu zamachu bombowego na wieżę Arasaka, a większość nagrań uznano za zniszczoną w jego następstwie. Powrócił w latach 40. XXI wieku, kiedy odnaleziono ocalałą kopię, zyskując reputację zaginionej piosenki samurajskiej z ostatnich dni zespołu. Istnieje popularna teoria, że ​​Johnny Silverhand osobiście skomponował ten utwór, prawdopodobnie jako jedno z jego ostatnich dzieł przed atakiem w 2023 roku.', 'blackdog.jpg'),
(6, 'A Like Supreme', 'Brak danych', 'alikesupreme.jpg');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `artysta`
--
ALTER TABLE `artysta`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `artysta_piosenka`
--
ALTER TABLE `artysta_piosenka`
  ADD PRIMARY KEY (`id`),
  ADD KEY `artysta_id` (`artysta_id`),
  ADD KEY `piosenka_id` (`piosenka_id`);

--
-- Indeksy dla tabeli `newsletter`
--
ALTER TABLE `newsletter`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `piosenka`
--
ALTER TABLE `piosenka`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `artysta`
--
ALTER TABLE `artysta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `artysta_piosenka`
--
ALTER TABLE `artysta_piosenka`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `newsletter`
--
ALTER TABLE `newsletter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=143;

--
-- AUTO_INCREMENT for table `piosenka`
--
ALTER TABLE `piosenka`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `artysta_piosenka`
--
ALTER TABLE `artysta_piosenka`
  ADD CONSTRAINT `artysta_piosenka_ibfk_1` FOREIGN KEY (`artysta_id`) REFERENCES `artysta` (`id`),
  ADD CONSTRAINT `artysta_piosenka_ibfk_2` FOREIGN KEY (`piosenka_id`) REFERENCES `piosenka` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
