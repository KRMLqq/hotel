-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 03 Kwi 2023, 22:33
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
-- Baza danych: `hotel`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `reservations`
--

CREATE TABLE `reservations` (
  `reservation_id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `reservations`
--

INSERT INTO `reservations` (`reservation_id`, `room_id`, `user_id`, `service_id`, `start_date`, `end_date`) VALUES
(1, 2, 25, 2, '2023-04-10', '2023-04-12');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `rooms`
--

CREATE TABLE `rooms` (
  `room_id` int(11) NOT NULL,
  `room_name` text NOT NULL,
  `room_persons` int(11) NOT NULL,
  `room_description` text NOT NULL,
  `room_price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `rooms`
--

INSERT INTO `rooms` (`room_id`, `room_name`, `room_persons`, `room_description`, `room_price`) VALUES
(1, 'Pokój Klasyczny', 2, 'Elegancki wystrój tworzą starannie dobrane drewniane meble i subtelne oświetlenie oraz materiały o ciepłych odcieniach, co sprzyja zarówno pracy jak i wypoczynkowi. Łazienki są wyposażone w wannę oraz oddzielną kabinę prysznicową.', 700),
(2, 'Pokój z widokiem na Pałac Kultury i Nauki', 2, 'Przestronne i eleganckie pokoje stanowią idealną przestrzeń do wypoczynku i pracy. Z panoramicznych okien roztacza się widok na centrum Warszawy. Łazienki są wyposażone w wannę oraz oddzielną kabinę prysznicową. W sypialniach znajduje się zestaw do przygotowania herbaty, mini bar, sejf oraz telewizor LED. W pokojach dostępny jest Internet przewodowy i bezprzewodowy.', 1000),
(3, 'Pokój Premium', 2, 'Komfortowe i przestronne pokoje o eleganckich wnętrzach. Zaprojektowano je tak, aby idealnie łączyły przestrzeń do pracy i wypoczynku. We wszystkich łazienkach znajduje się kabina prysznicowa i oddzielna wanna', 1500),
(4, 'Apartament Junior', 4, 'Przestronny i elegancki apartament jednopokojowy, w którym znajduje się rozkładana sofa i wygodne biurko do pracy oraz wygodne łóżko typu king. Łazienki są wyposażone w wannę oraz oddzielną kabinę prysznicową. W apartamencie do dyspozycji Gości znajduje się zestaw do przygotowania herbaty, mini bar, sejf oraz telewizor LED. W apartamentach dostępny jest Internet przewodowy i bezprzewodowy.', 1500),
(5, 'Apartament z Jedną Sypialnią', 2, 'Apartamenty te podzielone są na dwie części. W części wypoczynkowej znajduje się sofa i wygodne biurko do pracy, drugą część stanowi sypialnia z wygodnym łóżkiem typu king. Łazienki są wyposażone w wannę oraz oddzielną kabinę prysznicową, a w salonie dostępna jest osobna toaleta. W salonie do dyspozycji Gości znajduje się zestaw do przygotowania herbaty, mini bar, sejf oraz telewizor LED. W pokojach dostępny jest Internet przewodowy i bezprzewodowy. Apartament można zarezerwować z dostępem do Club Lounge – miejsca idealnie łączącego atmosferę dyskretnego, biznesowego klubu z możliwością relaksu.', 1300),
(6, 'Apartament Senior', 4, 'Poczuj dreszczyk emocji, jaki daje życie w wielkim mieście. Okna tego apartamentu oferują widok na panoramę Warszawy. Apartament posiada dwa pokoje, które zapewnią gościom odpowiednią przestrzeń do pracy i odpoczynku w trakcie przerw w zwiedzaniu miasta. Klasyczny wystrój został przełamany niebanalnymi elementami. Spektakularne żyrandole wykonane z kryształów Swarovskiego sprawiają, że przestronne wnętrza skąpane są w ciepłym świetle odbitym w kryształach. W przestrzeni dziennej znajduje się m.in. kanapa i szerokie biurko oraz wydzieloną część jadalnianą, natomiast sypialnię\r\nwyposażono w podwójne łóżko. Apartament posiada łazienkę z wanną i osobną kabiną prysznicową oraz dodatkową toaletę. W cenie apartamentu zawiera się również dostęp do Club Lounge.', 2000),
(7, 'Apartament Prezydencki', 4, 'Znajdujący się na 40-tym piętrze, z oknami wychodzącymi na Pałac Kultury i Nauki, luksusowy\r\nApartament Prezydencki. W Apartamencie znajduje się rozległa część wypoczynkowa, oddzielna część biurowa, szafa, jadalnia z aneksem kuchennym, prywatna przestrzeń konferencyjna, przestronna sypialnia z elegancką łazienką oraz dodatkowa toaleta w salonie. Łazienka wyposażona jest w wannę oraz oddzielną kabinę prysznicową. W apartamencie znajduje się zestaw do przygotowania herbaty i ekspres do kawy, mini bar, sejf oraz dwa telewizory typu LED HD. Dostępny jest Internet przewodowy i bezprzewodowy. Z apartamentu rozciąga się piękny widok na panoramę Warszawy. Apartament posiada dostępem do Club Lounge.', 3000);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `services`
--

CREATE TABLE `services` (
  `service_id` int(11) NOT NULL,
  `service_name` varchar(32) NOT NULL,
  `service_price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `services`
--

INSERT INTO `services` (`service_id`, `service_name`, `service_price`) VALUES
(1, 'Śniadania', 50),
(2, 'Śniadania + Kolacje', 80),
(3, 'All inclusive', 120);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_firstname` varchar(32) NOT NULL,
  `user_lastname` varchar(32) NOT NULL,
  `user_email` varchar(128) NOT NULL,
  `user_password` varchar(32) NOT NULL,
  `user_phonenumber` int(12) NOT NULL,
  `token` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `users`
--

INSERT INTO `users` (`user_id`, `user_firstname`, `user_lastname`, `user_email`, `user_password`, `user_phonenumber`, `token`) VALUES
(5, 'test', 'general', 'test@gmail.com', 'testpass', 345678909, NULL),
(6, 'Krzysztof', 'Malec', 'krmlqq@gmail.com', 'testpass', 345453678, NULL),
(7, 'Jan', 'Kowalski', 'kowalskijan@gmail.com', 'zaq12wsx', 675434689, NULL),
(8, 'Piotr', 'Kozieł', 'piotrkoziel@gmail.com', 'pietrula123', 564354678, NULL),
(9, 'wqeewr', 'dadadasda', 'sdfsaf@sdad.dad', 'kdasdax', 654345678, NULL),
(10, 'Krzysztof', 'Malec', 'krmlqq@gmail.com', 'null', 345543678, NULL),
(11, 'Łukasz', 'Kroczek', 'lubiedzieci13@gmail.com', 'null', 345543345, NULL),
(12, 'Beniamin', 'Ociepka', 'robielacheresetowi@gmail.com', 'null', 890986547, NULL),
(13, 'Grzesiek', 'Kądziołka', 'jebacgrzeska@gmail.com', 'null', 576865498, NULL),
(14, 'Jan', 'Kowalski', 'jkowal@gmail.com', 'null', 345678907, NULL),
(15, 'Natan', 'Nowak', 'natannowak@gmail.com', 'null', 897654345, NULL),
(16, 'Wiktor', 'Pec', 'wikpec@gmail.com', 'null', 568893045, NULL),
(17, 'Zygmunt', 'Stary', 'zygmuntS@gmail.com', 'null', 666888547, NULL),
(18, 'Bartek', 'Żak', 'bartekzak@gmail.com', 'null', 999666888, NULL),
(19, 'Józef', 'Stalin', 'jStalin@gmail.com', 'null', 454878962, NULL),
(20, 'Adolf', 'Hitler', 'adolfHitler@gmail.com', 'null', 123432154, NULL),
(21, 'Ferdynand', 'Kiepski', 'ferdekkiepski@gmail.com', 'null', 453687908, NULL),
(22, 'Arnold', 'Boczek', 'arnoldzik@gmail.com', 'null', 345674576, NULL),
(23, 'Marian', 'Paździoch', 'marianek@gmail.com', 'null', 123456789, NULL),
(24, 'Adam', 'Gacal', 'adamgacal@gmail.com', 'null', 767858494, NULL),
(25, 'Kamil', 'Babroń', 'Kamilmecedes@gmail.com', 'null', 123435678, NULL);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `reservations`
--
ALTER TABLE `reservations`
  ADD PRIMARY KEY (`reservation_id`),
  ADD KEY `room_id` (`room_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `service_id` (`service_id`);

--
-- Indeksy dla tabeli `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`room_id`);

--
-- Indeksy dla tabeli `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`service_id`);

--
-- Indeksy dla tabeli `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `reservations`
--
ALTER TABLE `reservations`
  MODIFY `reservation_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT dla tabeli `rooms`
--
ALTER TABLE `rooms`
  MODIFY `room_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT dla tabeli `services`
--
ALTER TABLE `services`
  MODIFY `service_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT dla tabeli `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `reservations`
--
ALTER TABLE `reservations`
  ADD CONSTRAINT `reservations_ibfk_1` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`room_id`),
  ADD CONSTRAINT `reservations_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `reservations_ibfk_3` FOREIGN KEY (`service_id`) REFERENCES `services` (`service_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
