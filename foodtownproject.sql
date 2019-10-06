-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 06 Eki 2019, 16:10:22
-- Sunucu sürümü: 10.4.6-MariaDB
-- PHP Sürümü: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `foodtownproject`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `admin`
--

CREATE TABLE `admin` (
  `adminid` int(11) NOT NULL,
  `adminname` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `adminmail` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `adminpassword` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `adminpasscode` varchar(255) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `admin`
--

INSERT INTO `admin` (`adminid`, `adminname`, `adminmail`, `adminpassword`, `adminpasscode`) VALUES
(1, 'Admin', 'admin@mail.com', '12345', ''),
(15, 'Admin-2', 'admin2@mail.com', '12345', '');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `blog`
--

CREATE TABLE `blog` (
  `blogid` int(11) NOT NULL,
  `blogtitle` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `blogtext` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `blogimage` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `blogauthorimage` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `blogauthor` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `blogtextparagraph` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `blog`
--

INSERT INTO `blog` (`blogid`, `blogtitle`, `blogtext`, `blogimage`, `blogauthorimage`, `blogauthor`, `blogtextparagraph`) VALUES
(1, 'Simple Macaroni and Cheese', '\"A very quick and easy fix to a tasty side-dish. Fancy, designer mac and cheese often costs forty or fifty dollars to prepare when you have so many exotic and expensive cheeses, but they aren\'t always the best tasting. This recipe is cheap and tasty.\"\r\n\r\n', 'https://images.media-allrecipes.com/userphotos/720x405/5445825.jpg', 'https://pbs.twimg.com/profile_images/378800000536961438/56b3a93250f5fd475f1c7eee27a9f389_400x400.jpeg', 'Serdar Sanu', 'Bring a large pot of lightly salted water to a boil. Cook elbow macaroni in the boiling water, stirring occasionally until cooked through but firm to the bite, 8 minutes. Drain.\r\n\r\n\r\nMelt butter in a saucepan over medium heat; stir in flour, salt, and pep'),
(2, 'Slow Cooker Salisbury Steak', '\"This recipe goes together quickly and does not need a lot of time in the slow cooker. It\'s a delicious way to add flavor to ground beef and the children love it! The gravy is delightful served over mashed potatoes.\"', 'https://i.imgyukle.com/2019/09/23/oe3kBc.jpg', 'https://pbs.twimg.com/profile_images/378800000536961438/56b3a93250f5fd475f1c7eee27a9f389_400x400.jpeg', 'Serdar Sanu', 'In a large bowl, mix together the ground beef, onion soup mix, bread crumbs, and milk using your hands. Shape into 8 patties.\r\nHeat the oil in a large skillet over medium-high heat. Dredge the patties in flour just to coat, and quickly brown on both sides'),
(3, 'Mushroom Slow Cooker Roast Beef', '\"This is tender, fall-off-the-bone roast beef with mushrooms. It\'s perfect as-is. Shred the leftovers for cheese steak sandwiches.\"', 'https://i.imgyukle.com/2019/09/23/oeW470.jpg', 'https://pbs.twimg.com/profile_images/378800000536961438/56b3a93250f5fd475f1c7eee27a9f389_400x400.jpeg', 'Serdar Sanu', 'Place the mushrooms in the bottom of a slow cooker; set the roast atop the mushrooms; sprinkle the onion soup mix over the beef and pour the beer over everything; season with black pepper. Set slow cooker to LOW; cook 9 to 10 hours until the meat is easil');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `cart`
--

CREATE TABLE `cart` (
  `cartid` int(11) NOT NULL,
  `productname` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `productprice` double NOT NULL,
  `orderstatus` varchar(255) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `category`
--

CREATE TABLE `category` (
  `categoryid` int(11) NOT NULL,
  `categoryname` varchar(255) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `category`
--

INSERT INTO `category` (`categoryid`, `categoryname`) VALUES
(1, 'Burger'),
(2, 'Pizza'),
(3, 'Vegetarian'),
(4, 'Drink'),
(5, 'Dessert');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `contact`
--

CREATE TABLE `contact` (
  `contactid` int(11) NOT NULL,
  `contactname` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `contactmail` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `contacttext` varchar(255) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `contact`
--

INSERT INTO `contact` (`contactid`, `contactname`, `contactmail`, `contacttext`) VALUES
(7, 'User', 'user@mail.com', 'New Contact');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `neworder`
--

CREATE TABLE `neworder` (
  `orderid` int(11) NOT NULL,
  `ordername` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `productname` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `orderstatus` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `orderprice` double NOT NULL,
  `ordernote` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `orderphone` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `orderaddress` varchar(255) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `neworder`
--

INSERT INTO `neworder` (`orderid`, `ordername`, `productname`, `orderstatus`, `orderprice`, `ordernote`, `orderphone`, `orderaddress`) VALUES
(21, 'User', 'Strawberry Cake', 'Ready to Deliver', 15, 'New Order\r\n', '05554443322', 'Ankara');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `product`
--

CREATE TABLE `product` (
  `productid` int(11) NOT NULL,
  `categoryid` int(11) NOT NULL,
  `productname` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `productprice` double NOT NULL,
  `producttext` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `productimage` varchar(255) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `product`
--

INSERT INTO `product` (`productid`, `categoryid`, `productname`, `productprice`, `producttext`, `productimage`) VALUES
(1, 1, 'Double Animal Style', 13, 'Double Animal Style Burger with 260gr beef and cheddar. Serves with french fries.', 'https://i.imgyukle.com/2019/09/23/oetPuo.jpg'),
(2, 1, 'Le Pigeon Burger', 13, 'Le Pigeon Burger with lettuce and chicken beef inside. Serves with french fries.', 'https://i.imgyukle.com/2019/09/23/oe9smN.jpg'),
(3, 2, 'Pizza Alla Napolitana', 16, 'Pizza with red pepper, lettuce and mushroom.', 'https://i.imgyukle.com/2019/09/23/oefQ9N.jpg'),
(4, 2, 'Pizza Marinara', 17, 'Pizza Marinara with red pepper, tomato and bacon.', 'https://i.imgyukle.com/2019/09/23/oef5jv.jpg'),
(5, 3, 'Pilachu Fruit', 12, 'Salad with cheese, mushroom and pineapple.', 'https://i.imgyukle.com/2019/09/23/oefaYp.jpg'),
(6, 3, 'Choloride', 13, 'Salad with corn, lemon and onion.', 'https://i.imgyukle.com/2019/09/23/oefL9M.jpg'),
(7, 5, 'Oreo Cake', 16, 'Cake with oreo chocolate and orange.', 'https://i.imgyukle.com/2019/09/23/oefXF8.jpg'),
(8, 5, 'Strawberry Cake', 15, 'Cake with cream and strawberry', 'https://i.imgyukle.com/2019/09/23/oefBPH.jpg'),
(9, 4, 'Orange Juice', 7, '', 'https://i.imgyukle.com/2019/09/23/oefpYA.jpg'),
(10, 4, 'Lemonade', 6, '', 'https://i.imgyukle.com/2019/09/23/oefGfI.jpg');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `user`
--

CREATE TABLE `user` (
  `userid` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `usermail` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `userpassword` varchar(255) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `user`
--

INSERT INTO `user` (`userid`, `username`, `usermail`, `userpassword`) VALUES
(7, 'User', 'user@mail.com', '12345'),
(10, 'User-2', 'user2@mail.com', '12345');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adminid`);

--
-- Tablo için indeksler `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`blogid`);

--
-- Tablo için indeksler `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cartid`);

--
-- Tablo için indeksler `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`categoryid`);

--
-- Tablo için indeksler `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`contactid`);

--
-- Tablo için indeksler `neworder`
--
ALTER TABLE `neworder`
  ADD PRIMARY KEY (`orderid`);

--
-- Tablo için indeksler `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`productid`);

--
-- Tablo için indeksler `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userid`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `admin`
--
ALTER TABLE `admin`
  MODIFY `adminid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Tablo için AUTO_INCREMENT değeri `blog`
--
ALTER TABLE `blog`
  MODIFY `blogid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Tablo için AUTO_INCREMENT değeri `cart`
--
ALTER TABLE `cart`
  MODIFY `cartid` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `category`
--
ALTER TABLE `category`
  MODIFY `categoryid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Tablo için AUTO_INCREMENT değeri `contact`
--
ALTER TABLE `contact`
  MODIFY `contactid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Tablo için AUTO_INCREMENT değeri `neworder`
--
ALTER TABLE `neworder`
  MODIFY `orderid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Tablo için AUTO_INCREMENT değeri `product`
--
ALTER TABLE `product`
  MODIFY `productid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Tablo için AUTO_INCREMENT değeri `user`
--
ALTER TABLE `user`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
