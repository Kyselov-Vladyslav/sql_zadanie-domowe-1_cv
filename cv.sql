-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 01 Gru 2022, 20:49
-- Wersja serwera: 10.4.24-MariaDB
-- Wersja PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `cv`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `cv_courses`
--

CREATE TABLE `cv_courses` (
  `id_ courses` int(11) NOT NULL,
  `courses` varchar(150) COLLATE utf8mb4_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Zrzut danych tabeli `cv_courses`
--

INSERT INTO `cv_courses` (`id_ courses`, `courses`) VALUES
(1, 'Web-Coders.pl Kursy programowania, Szkoła programowania w Krakowie'),
(2, 'Certyfikowane kursy księgowości - Warszawa'),
(3, 'Kursy księgowości Akademia Biznesu'),
(4, 'Kursy online ABC');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `cv_experience`
--

CREATE TABLE `cv_experience` (
  `id_ experience` int(11) NOT NULL,
  `experience` varchar(150) COLLATE utf8mb4_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Zrzut danych tabeli `cv_experience`
--

INSERT INTO `cv_experience` (`id_ experience`, `experience`) VALUES
(1, 'FIRMA A'),
(2, 'FIRMA B'),
(3, 'FIRMA C'),
(4, 'FIRMA Z'),
(5, 'FIRMA X'),
(6, 'FIRMA V');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `cv_school`
--

CREATE TABLE `cv_school` (
  `id_ school` int(11) NOT NULL,
  `school` varchar(150) COLLATE utf8mb4_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Zrzut danych tabeli `cv_school`
--

INSERT INTO `cv_school` (`id_ school`, `school`) VALUES
(1, 'Szkoła Języka i Kultury Polskiej przy PMK Bielefeld'),
(2, 'Szkoła Św. Marii'),
(3, 'Szkoła Stowarzyszenia Polsko Kanaryjskiego ARKA'),
(4, 'Gimnazjum im. św. Rafała Kalinowskiego w Niemieżu'),
(5, 'Boratyński Liceum'),
(6, 'Polska Szkola w Charlotte');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `cv_universities`
--

CREATE TABLE `cv_universities` (
  `id_universities` int(11) NOT NULL,
  `universities` varchar(150) COLLATE utf8mb4_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Zrzut danych tabeli `cv_universities`
--

INSERT INTO `cv_universities` (`id_universities`, `universities`) VALUES
(1, 'Uniwersytet Jagielloński'),
(2, 'Uniwersytet Wrocławski'),
(3, 'Uniwersytet Warszawski'),
(4, 'Uniwersytet im. Adama Mickiewicza w Poznaniu'),
(5, 'Uniwersytet Marii Curie-Skłodowskiej w Lublinie'),
(6, 'Uniwersytet Łódzki'),
(7, 'Uniwersytet Mikołaja Kopernika w Toruniu'),
(8, 'Uniwersytet Śląski w Katowicach');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `cv_users`
--

CREATE TABLE `cv_users` (
  `id_cv` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `firstname` varchar(50) COLLATE utf8mb4_polish_ci NOT NULL,
  `surename` varchar(50) COLLATE utf8mb4_polish_ci NOT NULL,
  `id_phonecode` int(11) NOT NULL,
  `telephone` int(9) NOT NULL,
  `email` varchar(80) COLLATE utf8mb4_polish_ci NOT NULL,
  `picture` varchar(60) COLLATE utf8mb4_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Zrzut danych tabeli `cv_users`
--

INSERT INTO `cv_users` (`id_cv`, `id_user`, `firstname`, `surename`, `id_phonecode`, `telephone`, `email`, `picture`) VALUES
(1, 1, 'Anna', 'Nowak', 1, 777888999, 'anna.nowak@nowak.pl', 'nowak1.jpg'),
(2, 2, 'Jan', 'Nowak', 3, 555444666, 'jan.nowak@janow.pl', 'jan2.png'),
(3, 3, 'Paweł', 'Kowalski', 2, 789456123, 'kowalski123@qwe.ua', 'pk.jpg');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `cv_users_courses`
--

CREATE TABLE `cv_users_courses` (
  `id_user` int(11) NOT NULL,
  `cv_courses` int(11) NOT NULL,
  `date_start_courses` date NOT NULL,
  `date_end_courses` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Zrzut danych tabeli `cv_users_courses`
--

INSERT INTO `cv_users_courses` (`id_user`, `cv_courses`, `date_start_courses`, `date_end_courses`) VALUES
(1, 3, '2016-12-01', '2017-01-31'),
(1, 4, '2021-05-01', '2022-06-04'),
(3, 1, '2020-05-06', '2021-07-08');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `cv_users_experience`
--

CREATE TABLE `cv_users_experience` (
  `id_user` int(11) NOT NULL,
  `id_experience` int(11) NOT NULL,
  `date_start_experience` date NOT NULL,
  `date_end_experience` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Zrzut danych tabeli `cv_users_experience`
--

INSERT INTO `cv_users_experience` (`id_user`, `id_experience`, `date_start_experience`, `date_end_experience`) VALUES
(1, 1, '2021-10-05', '2022-11-02'),
(1, 2, '2017-05-06', '2021-06-05'),
(2, 5, '2005-10-15', '2008-01-02'),
(3, 4, '2015-08-06', '2017-09-15'),
(3, 6, '2018-12-05', '2020-10-12');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `cv_users_school`
--

CREATE TABLE `cv_users_school` (
  `id_user` int(11) NOT NULL,
  `id_school` int(11) NOT NULL,
  `date_start_school` date NOT NULL,
  `date_end_school` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Zrzut danych tabeli `cv_users_school`
--

INSERT INTO `cv_users_school` (`id_user`, `id_school`, `date_start_school`, `date_end_school`) VALUES
(1, 6, '1997-11-01', '2004-11-01'),
(2, 6, '1998-11-08', '2003-04-13'),
(3, 2, '1990-05-05', '1998-06-07');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `cv_users_universities`
--

CREATE TABLE `cv_users_universities` (
  `id_user` int(11) NOT NULL,
  `id_universities` int(11) NOT NULL,
  `date_start_universities` date NOT NULL,
  `date_end_universities` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Zrzut danych tabeli `cv_users_universities`
--

INSERT INTO `cv_users_universities` (`id_user`, `id_universities`, `date_start_universities`, `date_end_universities`) VALUES
(1, 3, '2012-11-01', '2015-11-12'),
(1, 2, '2018-10-01', '2020-10-23');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `phone_code`
--

CREATE TABLE `phone_code` (
  `id_phonecode` int(11) NOT NULL,
  `phone_code` varchar(10) COLLATE utf8mb4_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Zrzut danych tabeli `phone_code`
--

INSERT INTO `phone_code` (`id_phonecode`, `phone_code`) VALUES
(1, '+48'),
(2, '+380'),
(3, '+420'),
(4, '+375');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `login` varchar(20) COLLATE utf8mb4_polish_ci NOT NULL,
  `pass` varchar(40) COLLATE utf8mb4_polish_ci NOT NULL,
  `admin` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Zrzut danych tabeli `users`
--

INSERT INTO `users` (`id_user`, `login`, `pass`, `admin`) VALUES
(1, 'anowak', 'b339e4c3714e30b5c55d004eced16ac80f1dff9e', 1),
(2, 'jnowak', 'f1b699cc9af3eeb98e5de244ca7802ae38e77bae', 0),
(3, 'pkowalski', '20d75fe135fc3abc15aee2f6e4657c3107899d6a', 0);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `cv_courses`
--
ALTER TABLE `cv_courses`
  ADD PRIMARY KEY (`id_ courses`);

--
-- Indeksy dla tabeli `cv_experience`
--
ALTER TABLE `cv_experience`
  ADD PRIMARY KEY (`id_ experience`);

--
-- Indeksy dla tabeli `cv_school`
--
ALTER TABLE `cv_school`
  ADD PRIMARY KEY (`id_ school`);

--
-- Indeksy dla tabeli `cv_universities`
--
ALTER TABLE `cv_universities`
  ADD PRIMARY KEY (`id_universities`);

--
-- Indeksy dla tabeli `cv_users`
--
ALTER TABLE `cv_users`
  ADD PRIMARY KEY (`id_cv`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_phonecode` (`id_phonecode`);

--
-- Indeksy dla tabeli `cv_users_courses`
--
ALTER TABLE `cv_users_courses`
  ADD KEY `cv_courses` (`cv_courses`),
  ADD KEY `id_user` (`id_user`);

--
-- Indeksy dla tabeli `cv_users_experience`
--
ALTER TABLE `cv_users_experience`
  ADD KEY `id_experience` (`id_experience`),
  ADD KEY `id_user` (`id_user`);

--
-- Indeksy dla tabeli `cv_users_school`
--
ALTER TABLE `cv_users_school`
  ADD KEY `id_school` (`id_school`),
  ADD KEY `id_user` (`id_user`);

--
-- Indeksy dla tabeli `cv_users_universities`
--
ALTER TABLE `cv_users_universities`
  ADD KEY `id_universities` (`id_universities`),
  ADD KEY `id_user` (`id_user`);

--
-- Indeksy dla tabeli `phone_code`
--
ALTER TABLE `phone_code`
  ADD PRIMARY KEY (`id_phonecode`);

--
-- Indeksy dla tabeli `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `cv_courses`
--
ALTER TABLE `cv_courses`
  MODIFY `id_ courses` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT dla tabeli `cv_experience`
--
ALTER TABLE `cv_experience`
  MODIFY `id_ experience` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT dla tabeli `cv_school`
--
ALTER TABLE `cv_school`
  MODIFY `id_ school` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT dla tabeli `cv_universities`
--
ALTER TABLE `cv_universities`
  MODIFY `id_universities` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT dla tabeli `cv_users`
--
ALTER TABLE `cv_users`
  MODIFY `id_cv` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT dla tabeli `phone_code`
--
ALTER TABLE `phone_code`
  MODIFY `id_phonecode` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT dla tabeli `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `cv_users`
--
ALTER TABLE `cv_users`
  ADD CONSTRAINT `cv_users_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`),
  ADD CONSTRAINT `cv_users_ibfk_2` FOREIGN KEY (`id_phonecode`) REFERENCES `phone_code` (`id_phonecode`);

--
-- Ograniczenia dla tabeli `cv_users_courses`
--
ALTER TABLE `cv_users_courses`
  ADD CONSTRAINT `cv_users_courses_ibfk_2` FOREIGN KEY (`cv_courses`) REFERENCES `cv_courses` (`id_ courses`),
  ADD CONSTRAINT `cv_users_courses_ibfk_3` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`);

--
-- Ograniczenia dla tabeli `cv_users_experience`
--
ALTER TABLE `cv_users_experience`
  ADD CONSTRAINT `cv_users_experience_ibfk_2` FOREIGN KEY (`id_experience`) REFERENCES `cv_experience` (`id_ experience`),
  ADD CONSTRAINT `cv_users_experience_ibfk_3` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`);

--
-- Ograniczenia dla tabeli `cv_users_school`
--
ALTER TABLE `cv_users_school`
  ADD CONSTRAINT `cv_users_school_ibfk_1` FOREIGN KEY (`id_school`) REFERENCES `cv_school` (`id_ school`),
  ADD CONSTRAINT `cv_users_school_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`);

--
-- Ograniczenia dla tabeli `cv_users_universities`
--
ALTER TABLE `cv_users_universities`
  ADD CONSTRAINT `cv_users_universities_ibfk_2` FOREIGN KEY (`id_universities`) REFERENCES `cv_universities` (`id_universities`),
  ADD CONSTRAINT `cv_users_universities_ibfk_3` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
