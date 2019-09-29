-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: localhost
-- Üretim Zamanı: 29 Eyl 2019, 17:39:26
-- Sunucu sürümü: 10.4.6-MariaDB
-- PHP Sürümü: 7.1.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `foodtown`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `admin`
--

CREATE TABLE `admin` (
  `aid` int(11) NOT NULL,
  `aname` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `amail` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `apass` varchar(32) COLLATE utf8_turkish_ci NOT NULL,
  `status` varchar(11) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `admin`
--

INSERT INTO `admin` (`aid`, `aname`, `amail`, `apass`, `status`) VALUES
(1, 'Ali', 'admin@mail.com', '827ccb0eea8a706c4c34a16891f84e7b', ''),
(3, 'Erkan Bilsin', 'erkan@mail.com', '827ccb0eea8a706c4c34a16891f84e7b', '');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `basket`
--

CREATE TABLE `basket` (
  `id` int(11) NOT NULL,
  `total_price` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `basket`
--

INSERT INTO `basket` (`id`, `total_price`) VALUES
(6, '23.30'),
(7, '23.30'),
(8, '46.60'),
(9, '46.60'),
(10, '69.00'),
(11, '23.30');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `basket_item`
--

CREATE TABLE `basket_item` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `basket_id` int(11) NOT NULL,
  `amount` int(11) DEFAULT NULL,
  `total_price` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `basket_item`
--

INSERT INTO `basket_item` (`id`, `product_id`, `basket_id`, `amount`, `total_price`) VALUES
(6, 15, 6, 1, '23.30'),
(7, 15, 7, 1, '23.30'),
(8, 15, 8, 1, '23.30'),
(9, 15, 8, 1, '23.30'),
(10, 15, 9, 2, '46.60'),
(11, 14, 10, 3, '69.00'),
(12, 15, 11, 1, '23.30');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `customer`
--

CREATE TABLE `customer` (
  `cid` int(11) NOT NULL,
  `cname` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `csurname` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `cmail` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `caddress` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `cpass` int(11) NOT NULL,
  `cstatus` varchar(11) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `customer`
--

INSERT INTO `customer` (`cid`, `cname`, `csurname`, `cmail`, `caddress`, `cpass`, `cstatus`) VALUES
(1, 'Semih', 'Gecer', 'semih@mail.com', 'Sütlüce Mah. Özgür Sk. Birlik Apt. No:6/11', 123, 'user'),
(2, 'kadir', 'sen', 'kadir@mail.com', 'Sütlüce Mah. Özgür Sok. Birlik Ap. No:6/11 Beyoğlu/İST', 123, 'user');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `product`
--

CREATE TABLE `product` (
  `pid` int(11) NOT NULL,
  `ptitle` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `pdesc` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `pphoto` varchar(500) COLLATE utf8_turkish_ci NOT NULL,
  `pprice` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `product`
--

INSERT INTO `product` (`pid`, `ptitle`, `pdesc`, `pphoto`, `pprice`) VALUES
(12, 'Daily Burger', 'Lorem Ipsum, adı bilinmeyen bir matbaacının bir hurufat numune kitabı oluşturmak üzere bir yazı galerisini alarak karıştırdığı 1500\'lerden beri endüstri', 'https://www.seriouseats.com/recipes/images/2015/07/20150702-sous-vide-hamburger-anova-primary-1500x1125.jpg', '45.00'),
(13, 'Daily Burger2', 'Professional photograph machine new', 'https://www.seriouseats.com/recipes/images/2015/07/20150702-sous-vide-hamburger-anova-primary-1500x1125.jpg', '22.00'),
(14, 'Whopper', 'Enfes Burger King lezzetiyle Whopper®! Tüm malzemelerine besin değerlerine göz atın.', 'https://bk-ca-prd.s3.amazonaws.com/sites/burgerking.ca/files/03299-89_BK_Web_Triple%2520Whopper_500x540_CR.png', '23.00'),
(15, 'Extra Big King', 'Yeni Burger King® size her zaman farklı fırsat ve tekliflerle gelmeye devam ediyor. Birbirinden lezzetli Burger King® ürünleri ile harmanlanmış, değişik fırsatlar sizleri bekliyor...', 'http://bk-latam-prod.s3.amazonaws.com/sites/burgerking.com.mx/files/BIG-KING-500X540-GRILLED.png', '23.30'),
(16, 'Big King', 'Burger King® size her zaman farklı fırsat ve tekliflerle gelmeye devam ediyor. Birbirinden lezzetli Burger King® ürünleri ile harmanlanmış, değişik fırsatlar sizleri bekliyor...', 'http://bk-latam-prod.s3.amazonaws.com/sites/burgerking.com.mx/files/BIG-KING-500X540-GRILLED.png', '12.90');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `torder`
--

CREATE TABLE `torder` (
  `id` int(11) NOT NULL,
  `basket_id` int(11) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `order_status` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `customer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `torder`
--

INSERT INTO `torder` (`id`, `basket_id`, `create_date`, `order_status`, `customer_id`) VALUES
(6, 6, '2019-09-29 15:28:48', 'ON_THE_WAY', 2),
(7, 7, '2019-09-29 15:33:41', 'DELIVERED', 2),
(8, 8, '2019-09-29 11:41:09', 'IN_PROGRESS', 1),
(9, 9, '2019-09-29 15:22:25', 'ON_THE_WAY', 1),
(10, 10, '2019-09-29 15:18:50', 'ON_THE_WAY', 1),
(11, 11, '2019-09-29 15:10:58', 'DELIVERED', 1);

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`aid`);

--
-- Tablo için indeksler `basket`
--
ALTER TABLE `basket`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `basket_item`
--
ALTER TABLE `basket_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `basket_id` (`basket_id`);

--
-- Tablo için indeksler `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`cid`);

--
-- Tablo için indeksler `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`pid`);

--
-- Tablo için indeksler `torder`
--
ALTER TABLE `torder`
  ADD PRIMARY KEY (`id`),
  ADD KEY `basket_id` (`basket_id`),
  ADD KEY `torder_customer` (`customer_id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `admin`
--
ALTER TABLE `admin`
  MODIFY `aid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Tablo için AUTO_INCREMENT değeri `basket`
--
ALTER TABLE `basket`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Tablo için AUTO_INCREMENT değeri `basket_item`
--
ALTER TABLE `basket_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Tablo için AUTO_INCREMENT değeri `customer`
--
ALTER TABLE `customer`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Tablo için AUTO_INCREMENT değeri `product`
--
ALTER TABLE `product`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Tablo için AUTO_INCREMENT değeri `torder`
--
ALTER TABLE `torder`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Dökümü yapılmış tablolar için kısıtlamalar
--

--
-- Tablo kısıtlamaları `basket_item`
--
ALTER TABLE `basket_item`
  ADD CONSTRAINT `basket_item_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`pid`),
  ADD CONSTRAINT `basket_item_ibfk_2` FOREIGN KEY (`basket_id`) REFERENCES `basket` (`id`);

--
-- Tablo kısıtlamaları `torder`
--
ALTER TABLE `torder`
  ADD CONSTRAINT `torder_customer` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`cid`),
  ADD CONSTRAINT `torder_ibfk_1` FOREIGN KEY (`basket_id`) REFERENCES `basket` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
