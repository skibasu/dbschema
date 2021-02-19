-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Czas generowania: 19 Lut 2021, 02:44
-- Wersja serwera: 5.7.31-34
-- Wersja PHP: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `31372248_cincin`
--
CREATE DATABASE IF NOT EXISTS `31372248_cincin` DEFAULT CHARACTER SET latin2 COLLATE latin2_general_ci;
USE `31372248_cincin`;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `batches`
--

CREATE TABLE `batches` (
  `batch_id` int(11) NOT NULL,
  `batch_weight` decimal(10,0) NOT NULL,
  `batch_left` decimal(10,0) NOT NULL,
  `batch_name` varchar(200) NOT NULL,
  `batch_price` decimal(10,0) NOT NULL,
  `batch_single_price` decimal(10,0) NOT NULL,
  `batch_date_in` timestamp NOT NULL,
  `batch_lost` decimal(10,0) NOT NULL,
  `is_archive` tinyint(1) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin2;

--
-- Zrzut danych tabeli `batches`
--

INSERT INTO `batches` (`batch_id`, `batch_weight`, `batch_left`, `batch_name`, `batch_price`, `batch_single_price`, `batch_date_in`, `batch_lost`, `is_archive`, `user_id`) VALUES
(2, '200', '0', 'Test', '5000', '40', '2021-02-13 16:00:51', '100', 1, 5),
(3, '300', '300', 'Nowy', '3000', '10', '2021-02-13 16:20:41', '0', 0, 5);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `transactions`
--

CREATE TABLE `transactions` (
  `transaction_id` int(11) NOT NULL,
  `transaction_price` decimal(10,0) NOT NULL,
  `transaction_pieces` decimal(10,0) NOT NULL,
  `transaction_time_in` timestamp NOT NULL,
  `user_id` int(11) NOT NULL,
  `batch_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin2;

--
-- Zrzut danych tabeli `transactions`
--

INSERT INTO `transactions` (`transaction_id`, `transaction_price`, `transaction_pieces`, `transaction_time_in`, `user_id`, `batch_id`) VALUES
(10, '8000', '100', '2021-02-13 16:01:38', 5, 2);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `user_name` varchar(30) NOT NULL,
  `pass` char(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin2;

--
-- Zrzut danych tabeli `users`
--

INSERT INTO `users` (`id`, `user_name`, `pass`) VALUES
(5, 'suman', '$2b$10$OL.q9Jn0yoa4L/oQByj6iuI3/.h4n0m40lq/FaMEoM3/0/56SiuGi');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `batches`
--
ALTER TABLE `batches`
  ADD PRIMARY KEY (`batch_id`);

--
-- Indeksy dla tabeli `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`transaction_id`);

--
-- Indeksy dla tabeli `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `batches`
--
ALTER TABLE `batches`
  MODIFY `batch_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT dla tabeli `transactions`
--
ALTER TABLE `transactions`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT dla tabeli `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
