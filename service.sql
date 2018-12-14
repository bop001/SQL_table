-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Дек 14 2018 г., 15:20
-- Версия сервера: 5.7.20
-- Версия PHP: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `service`
--

-- --------------------------------------------------------

--
-- Структура таблицы `appliances`
--

CREATE TABLE `appliances` (
  `id` int(10) NOT NULL,
  `title` varchar(255) NOT NULL,
  `manufacturers_id` int(10) NOT NULL,
  `model` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `appliances`
--

INSERT INTO `appliances` (`id`, `title`, `manufacturers_id`, `model`) VALUES
(1, 'Мультиварка-скороварка ', 1, 'CE500E32'),
(2, 'Пылесос без мешка', 2, 'VC2102BCYIV'),
(3, 'Утюг', 3, 'Easygliss FV3930'),
(4, 'Вытяжка', 4, 'DNS 9862 BL LED'),
(5, 'микроволновая печь', 5, ' FW77SR-W'),
(6, 'Электрокамин', 6, 'EFP/C-1000RC'),
(7, '', 7, 'Mate 10 Lite 4/64GB Blue'),
(8, '', 8, 'AJ6000/12'),
(9, '', 9, 'SC-PM250EE-S'),
(10, 'Бойлер ', 10, 'ABS PRO R 80V Slim'),
(11, 'Пылесос', 11, 'TWIN XT'),
(12, 'Отпариватель', 12, 'MGS-4003'),
(13, 'Швейная машина', 13, 'TC 1214'),
(14, 'Кофемашина', 14, 'ECAM 650.75'),
(15, 'Мультиварка', 8, 'Viva Collection HD4734/03'),
(16, '', 9, 'Lumix DMC-FZ300'),
(17, 'Мясорубка', 8, 'Viva Collection HR2723/20'),
(18, 'Стиральная машина узкая', 15, 'IWSC 61253 C ECO EU'),
(19, '', 9, 'SC-UX100EE-К'),
(20, 'Утюг', 3, 'ULTIMATE ANTI-CALC FV9787'),
(21, 'Кофемолка ', 16, 'ST-CM1033 Black'),
(22, 'Кофеварка', 17, 'SCM-2948 ELECTRIC COFFEE POT'),
(23, 'Бойлер', 10, 'BLU EVO R 10/3'),
(24, '', 18, 'Cyber-shot DSC-HX400'),
(25, 'Утюг', 3, 'Turbo Pro Anti-calc FV5655');

-- --------------------------------------------------------

--
-- Структура таблицы `clients`
--

CREATE TABLE `clients` (
  `id` int(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `clients`
--

INSERT INTO `clients` (`id`, `name`, `phone`) VALUES
(1, 'Фролова Алиса Олеговна', '8 (907) 520-72-43'),
(2, 'Фролова Алиса Олеговна', '8 (907) 520-72-43'),
(3, 'Егорова Станислава Викторовна', '8 (965) 322-54-86'),
(4, 'Сидорова Наталья Львовна', '8 (971) 299-61-55'),
(5, 'Петрова Нина Николаевна', '8 (978) 240-55-92'),
(6, 'Гаврилова Милена Ильинична ', '8 (965) 964-79-63'),
(7, 'Богданов Гаврила', '8 (953) 367-99-61'),
(8, 'Пешнин Елизар Михайлович', '8 (940) 767-82-70'),
(9, 'Куколевская Таисия Павловна ', '8 (965) 663-58-38'),
(10, 'Васильев Гостомысл Ярославович', '8 (914) 903-39-91');

-- --------------------------------------------------------

--
-- Структура таблицы `managers`
--

CREATE TABLE `managers` (
  `id` int(10) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `managers`
--

INSERT INTO `managers` (`id`, `name`) VALUES
(1, 'Кудрявцева Александра Юрьевна '),
(2, 'Фролова Олимпиада Егоровна ');

-- --------------------------------------------------------

--
-- Структура таблицы `manufacturers`
--

CREATE TABLE `manufacturers` (
  `id` int(10) NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `manufacturers`
--

INSERT INTO `manufacturers` (`id`, `title`) VALUES
(1, 'MOULINEX'),
(2, 'GORENJE'),
(3, 'Tefal'),
(4, 'PERFELLI'),
(5, 'SAMSUNG'),
(6, 'Electrolux'),
(7, 'Huawei'),
(8, 'Philips'),
(9, 'Panasonic'),
(10, 'ARISTON'),
(11, 'THOMAS'),
(12, 'Mystery'),
(13, 'JANOME'),
(14, 'DELONGH'),
(15, 'INDESIT'),
(16, 'SATURN'),
(17, 'SINBO'),
(18, 'Sony ');

-- --------------------------------------------------------

--
-- Структура таблицы `masters`
--

CREATE TABLE `masters` (
  `id` int(10) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `masters`
--

INSERT INTO `masters` (`id`, `name`) VALUES
(1, 'Назаров Вениамин Федорович'),
(2, 'Андреев Фирс Матвеевич'),
(3, 'Беляев Фёдор Павлович'),
(4, 'Тихомиров Леонтий Григорьевич'),
(5, 'Марков Моисей Егорович'),
(6, 'Щербаков Авдей Ярославович'),
(7, 'Шашков Боголюб Тимофеевич'),
(8, 'Трофимов Никанор Макарович'),
(9, 'Сорокин Андроник Филиппович');

-- --------------------------------------------------------

--
-- Структура таблицы `orders`
--

CREATE TABLE `orders` (
  `id` int(10) NOT NULL,
  `client_id` int(10) NOT NULL,
  `manager_id` int(10) NOT NULL,
  `master_id` int(10) NOT NULL,
  `appliance_id` int(10) NOT NULL,
  `price` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `orders`
--

INSERT INTO `orders` (`id`, `client_id`, `manager_id`, `master_id`, `appliance_id`, `price`) VALUES
(1, 1, 1, 1, 1, 3257),
(2, 1, 1, 1, 2, 1205),
(3, 1, 1, 1, 3, 8930),
(4, 2, 2, 2, 4, 5260),
(5, 2, 2, 2, 5, 5696),
(6, 3, 1, 3, 6, 123),
(7, 3, 1, 3, 7, 8053),
(8, 3, 1, 3, 8, 1380),
(9, 4, 1, 4, 9, 3940),
(10, 4, 1, 4, 10, 2129),
(11, 4, 1, 4, 11, 1144),
(12, 5, 1, 5, 12, 1945),
(13, 5, 1, 5, 13, 5693),
(14, 5, 1, 5, 14, 8767),
(15, 6, 1, 6, 15, 5171),
(16, 6, 1, 6, 16, 2252),
(17, 6, 1, 6, 17, 3883),
(18, 7, 1, 7, 18, 5055),
(19, 7, 1, 7, 19, 1500),
(20, 7, 1, 7, 20, 4426),
(21, 8, 2, 8, 21, 1123),
(22, 8, 2, 8, 22, 879),
(23, 9, 2, 9, 23, 1250),
(24, 9, 2, 9, 24, 3637),
(25, 9, 2, 9, 25, 800);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `appliances`
--
ALTER TABLE `appliances`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `managers`
--
ALTER TABLE `managers`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `manufacturers`
--
ALTER TABLE `manufacturers`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `masters`
--
ALTER TABLE `masters`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `appliances`
--
ALTER TABLE `appliances`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT для таблицы `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `managers`
--
ALTER TABLE `managers`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `manufacturers`
--
ALTER TABLE `manufacturers`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT для таблицы `masters`
--
ALTER TABLE `masters`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7245;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
