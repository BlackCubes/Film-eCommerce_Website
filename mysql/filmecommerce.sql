-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 19, 2019 at 11:06 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `filmecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `actors`
--

CREATE TABLE `actors` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `middle_name` varchar(40) DEFAULT NULL,
  `last_name` varchar(40) NOT NULL,
  `gender` char(1) NOT NULL,
  `about` text NOT NULL,
  `img` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `actors`
--

INSERT INTO `actors` (`id`, `first_name`, `middle_name`, `last_name`, `gender`, `about`, `img`) VALUES
(1, 'Aaron', '', 'Paul', 'M', '<p>Aaron Paul Sturtevant was born in Emmett, Idaho, on August 27, 1979, the youngest of four children born to Darla (<i>née</i>) and Robert Sturtevant, a Baptist minister. He was born a month premature in his parents\' bathroom. Paul attended Centennial High School in Boise, Idaho, graduating in 1997. After graduation, he drove to Los Angeles in his 1982 Toyota Corolla with his mother and $6,000 in savings. Prior to gaining fame, he appeared on an episode of <i>The Price is Right</i>, which aired on January 3, 2000. Appearing under his real name, he played and lost Dice Game and overbid $132 on the Showcase. He also worked as a movie theater usher at Universal Studios in Hollywood.</p>\r\n<p>Mr. Paul is best known for portraying Jesse Pinkman in the AMC series <i>Breaking Bad</i>, for which he won several awards, including the Critics\' Choice Television Award for Best Supporting Actor in a Drama Series (2014), the Satellite Award for Best Supporting Actor - Series, Miniseries, or Television Film (2013), and the Primetime Emmy Award for Outstanding Supporting Actor in a Drama Series. This made him one of only two actors to win the latter category three times (2010, 2012, 2014), since its separation into drama and comedy. He has also won the Saturn Award for Best Supporting Actor on Television three times (2009, 2011, 2013), more than any other actor in that category.</p>', 'actors/aaron-paul_Cover.jpg'),
(2, 'Alec', '', 'Baldwin', 'M', '<p>Alexander Rae \"Alec\" Baldwin III was born April 3, 1958, in Amityville, New York, and raised in the Nassau Shores neighborhood of nearby Massapequa, the eldest son of Carol Newcomb (née Martineau; born 1930) and Alexander Rae Baldwin Jr. (October 26, 1927 - April 15, 1983), a high school history/social studies teacher and football coach. He has three younger brothers, Daniel (born 1960), William (born 1963), and Stephen (born 1966), who also became actors. He also has two sisters, Elizabeth \"Beth\" Baldwin Keuchler (born 1955) and Jane Ann Baldwin Sasso (born 1965).<p>\r\n<p>Alec and his siblings were raised as Roman Catholics. They are of Irish, French, and English ancestry. Through his father, Baldwin is descended from <i>Mayflower</i> passenger John Howland, and through this line, is the 13th generation of his family born in North America and the 14th generation to live in North America.</p>\r\n<p>Mr. Baldwin attended Alfred G. Berner High School in Massapequa and played football there under Coach Bob Reifsnyder. In New York City, Baldwin worked as a busboy at the disco Studio 54. From 1976 to 1979, he attended George Washington University. In 1979, he lost the election for student body president and received a personal letter from former U.S. president Richard Nixon (with whom he had a common friend) encouraging him to use the loss as a learning experience.</p>\r\n<p>Afterward, he transferred to New York University\'s Tisch School of the Arts where he studied with, among others, Geoffrey Horne and Mira Rostova at the Lee Strasberg Theatre Institute. Later, he was accepted as a member of the Actors Studio. In 1994, he completed his Bachelor of Fine Arts degree at NYU.</p>\r\n<p>From 2006 to 2013, Baldwin starred as Jack Donaghy on the NBC sitcom <i>30 Rock</i>, winning two Emmy Awards, three Golden Globe Awards, and seven Screen Actors Guild Awards for his work on the show, making him the male performer with the most SAG Awards. Baldwin co-starred in <i>Mission: Impossible - Rogue Nation</i> and <i>Mission: Impossible - Fallout</i>, the fifth and sixth installments of the <i>Mission: Impossible</i> series, released in 2015 and 2018, respectively. He is also a columnist for <i>The Huffington Post</i>. Since 2016, he has been the host of <i>Match Game</i>. He has received worldwide attention and acclaim for his portrayal of Donald Trump on the long-running sketch series <i>Saturday Night Live</i>, both during the latter part of the 2016 U.S. presidential election campaign and following the inauguration, a role that won him his third Primetime Emmy in 2017. He was nominated again in 2018.</p>', 'actors/alec-baldwin_Cover.jpg'),
(3, 'Alexander', '', 'Skarsgård', 'M', '<p>Alexander Johan Hjalmar Skarsgård was born in Stockholm, Sweden. He is the eldest son of actor Stellan Skarsgård and his first wife, My Skarsgård, a physician. He has five younger siblings: Gustaf, Sam, Bill, Eija and Valter, and two half-brothers from his father\'s second wife, Megan Everett. Gustaf, Bill, and Valter are also actors.</p>\r\n<p>A friend of his father, who was a director, gave Skarsgård his first film role when he was seven years old. He played Kalle Nubb in <i>Åke och hans värld</i> (<i>Åke and His World</i>). In 1989, the lead role in the Swedish television production <i>Hunden som log</i> (<i>The Dog That Smiled</i>) made him famous in Sweden at the age of 13. Uncomfortable with being recognized, he quit acting for the next seven years.</p>\r\n<p>At age 19, he applied to do his national service. He served in the Swedish military for 18 months, in the <i>SäkJakt</i> (\"protect and hunt\") unit that dealt with anti-sabotage and anti-terrorism in the Stockholm archipelago. After completing his service in 1996 he left Sweden and attended Leeds Beckett University in England for six months. He enrolled to study English but admits he did not study much and \"had a blast\" instead.</p>\r\n<p>After seven years away from acting, he started to consider it again. In 1997, he enrolled in a theater course at Marymount Manhattan College and moved to New York City. He returned to Stockholm after six months, but the time he spent studying theater showed him that he wanted to act.</p>\r\n<p>Mr. Skarsgård is best known for his roles as vampire Eric Northman on the HBO series <i>True Blood</i>, Meekus in <i>Zoolander</i>, the title character in <i>The Legend of Tarzan</i>, Brad Colbert in the HBO miniseries <i>Generation Kill</i>, and Perry Wright in the HBO series <i>Big Little Lies</i>, for which he won a Primetime Emmy Award for Outstanding Supporting Actor in a Limited Series or Movie, a Screen Actors Guild Award for Outstanding Performance by a Male Actor in a Miniseries or Television Movie, and a Golden Globe Award for Best Supporting Actor - Series, Miniseries, or Television Film.</p>', 'actors/alexander-skarsgard_Cover.jpg'),
(4, 'Alex', '', 'Borstein', 'F', '<p>Alexandrea Borstein was born in Highland Park, Illinois, a city north of Chicago. She spent her childhood in Deerfield, Illinois, a suburb of Chicago, before moving with her family to Northridge, California, a neighborhood of Los Angeles. She graduated from Chatsworth High School in 1989. Borstein has two older brothers. Her parents, Irv and Judy Borstein, are both mental health professionals. Borstein is Jewish. Her father is from Atlanta, Georgia. Her mother, a Holocaust survivor, was born and raised in Budapest, Hungary, and moved to the United States after the Hungarian Revolution of 1956.</p>\r\n<p>Ms. Borstein attended and graduated at San Francisco State University where she studied rhetoric. She was trained in improvisational comedy at the ACME Comedy Theatre, near Hollywood, California, and was selected to join the cast of <i>MADtv</i> after being scouted by talent agents. Borstein was also a writer and voice actor for several television shows, including <i>Casper</i>, <i>Pinky and the Brain</i>, and <i>Power Rangers Zeo</i>, before joining the cast of <i>MADtv</i> in 1997 as a featured player, becoming a repertory player mid-season.</p>\r\n<p>Borstein also had lead roles as various characters on the sketch comedy series <i>MADtv</i> (1997-2009), Dawn Forchette in the medical comedy series <i>Getting On</i> (2013-15), and Susie Myerson in the historical comedy-drama series <i>The Marvelous Mrs. Maisel</i> (2017-present), the latter of which earned her a Primetime Emmy Award. She had supporting roles in numerous films, including <i>The Lizzie McGuire Movie</i> (2003), <i>Catwoman</i> (2004), <i>Good Night, and Good Luck</i> (2005), <i>Dinner for Schmucks</i> (2010), <i>Ted</i> (2012), <i>ParaNorman</i> (2012), and <i>A Million Ways to Die in the West</i> (2014). She is known for voicing Lois Griffin on the animated comedy series <i>Family Guy</i> (1999-present).</p>', 'actors/alex-borstein_Cover.jpg'),
(5, 'Alicia', '', 'Vikander', 'F', '<p>Alicia Amanda Vikander was born in Gothenburg, the daughter of Maria Fahl Vikander, a stage actress, and Svante Vikander, a psychiatrist. Her parents are from small villages in the north and south of Sweden, respectively. They separated when Vikander was two months old, and she was mostly raised by her single mother. She has five half-siblings on her father\'s side. Vikander has said that she had the best of both worlds growing up, being an only child to her mother and being surrounded by a big family when she went to her father\'s house every second week. Her ancestry is Swedish and one quarter Finnish.</p>\r\n<p>Vikander started her career as an actor at the age of seven, starring in a production of <i>Kristina från Duvemåla</i> at The Göteborg Opera, which was written by Björn Ulvaeus and Benny Andersson from ABBA, performing in the play for three-and-a-half years. She appeared in several musicals at the Opera, such as <i>The Sound of Music</i> and <i>Les Misérables</i>. In 1997 she participated in the TV4 kids\' singing show <i>Småstjärnorna</i>; she performed the Helen Sjöholms song \"Du måste finnas\". She won her episode with praise by the judges for her stage presence.</p>\r\n<p>Vikander trained in ballet from the age of nine with the <i>Svenska Balettskolan i Göteborg</i> (1998-2004). At the age of 15, Vikander moved from Gothenburg to train at the ballet\'s upper school (Royal Swedish Ballet School) in Stockholm and she lived on her own, working to become a principal dancer. She travelled around the world for summer courses, training one summer at the School of American Ballet in New York City.</p>\r\n<p>At the age of 16, she almost left school to commit fully to the television series she worked on with director Tomas Alfredson, realizing her passion for acting. Her dance career was sidelined by injuries in her late teens. She auditioned for drama school but was turned down twice. At one point, Vikander was admitted to law school but she never attended, following her dreams to become an actress instead.</p>\r\n<p>She began her professional acting career by appearing in Swedish short films and television series and first gained recognition for her role as Josefin Björn-Tegebrandt in the drama series <i>Andra Avenyn</i> (2008-2010). Vikander made her feature film debut in <i>Pure</i> (2010), for which she won the Guldbagge Award for Best Actress. She gained wider recognition in 2012 for playing Kitty in Joe Wright\'s adaptation of <i>Anna Karenina</i> and Queen Caroline Mathilde in the Danish film <i>A Royal Affair</i>.</p>\r\n<p>In 2014 and 2015, Ms. Vikander achieved global recognition for her roles as activist Vera Brittain in <i>Testament of Youth</i>, a humanoid robot in <i>Ex Machina</i>, for which she was nominated for the Golden Globe Award and BAFTA Award for Best Supporting Actress, and painter Gerda Wegener in <i>The Danish Girl</i>, for which she received the Academy Award, Screen Actors Guild Award, and Critics\' Choice Movie Award for Best Supporting Actress. In 2016, Vikander was listed by <i>Forbes</i> in its 30 Under 30 list. She has since held a supporting role in the action film <i>Jason Bourne</i> (2016) and starred as Lara Croft in the adventure film <i>Tomb Raider</i> (2018).</p>', 'actors/alicia-vikander_Cover.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` mediumint(8) UNSIGNED NOT NULL,
  `product_department` varchar(35) NOT NULL,
  `product_format` varchar(10) NOT NULL,
  `quantity` tinyint(3) UNSIGNED NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_modified` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `department` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `directors`
--

CREATE TABLE `directors` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `middle_name` varchar(40) DEFAULT NULL,
  `last_name` varchar(40) NOT NULL,
  `gender` char(1) NOT NULL,
  `about` text NOT NULL,
  `img` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `dps`
--

CREATE TABLE `dps` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `middle_name` varchar(40) DEFAULT NULL,
  `last_name` varchar(40) NOT NULL,
  `gender` char(1) NOT NULL,
  `about` text NOT NULL,
  `img` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `formats`
--

CREATE TABLE `formats` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `format` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `genres`
--

CREATE TABLE `genres` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `genre` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `orderdetails`
--

CREATE TABLE `orderdetails` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` mediumint(8) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `product_department` varchar(35) NOT NULL,
  `product_format` varchar(10) NOT NULL,
  `quantity` tinyint(3) UNSIGNED NOT NULL,
  `unit_price` decimal(5,2) UNSIGNED NOT NULL,
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `shipper_id` int(10) UNSIGNED NOT NULL,
  `ordered_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `total` decimal(5,2) UNSIGNED DEFAULT NULL,
  `credit_card_num` mediumint(4) UNSIGNED ZEROFILL NOT NULL,
  `shipping` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `producers`
--

CREATE TABLE `producers` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `middle_name` varchar(40) DEFAULT NULL,
  `last_name` varchar(40) NOT NULL,
  `gender` char(1) NOT NULL,
  `about` text NOT NULL,
  `img` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `productdetails`
--

CREATE TABLE `productdetails` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `rated_id` tinyint(3) UNSIGNED NOT NULL,
  `spec_id` tinyint(3) UNSIGNED NOT NULL,
  `edition` varchar(30) DEFAULT NULL,
  `discs` tinyint(3) UNSIGNED DEFAULT NULL,
  `runtime` smallint(5) UNSIGNED NOT NULL,
  `media_date` varchar(10) DEFAULT NULL,
  `more_description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `department_id` tinyint(3) UNSIGNED NOT NULL,
  `format_id` tinyint(3) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `year` varchar(4) NOT NULL,
  `release_date` varchar(10) NOT NULL,
  `description` varchar(1100) NOT NULL,
  `isd` varchar(10) NOT NULL,
  `sku` varchar(15) NOT NULL,
  `unit_price` decimal(4,2) UNSIGNED NOT NULL DEFAULT '0.00',
  `stock` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `image_1` varchar(50) NOT NULL,
  `image_2` varchar(50) DEFAULT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `products_actors`
--

CREATE TABLE `products_actors` (
  `product_id` mediumint(8) UNSIGNED NOT NULL,
  `actor_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `products_directors`
--

CREATE TABLE `products_directors` (
  `product_id` mediumint(8) UNSIGNED NOT NULL,
  `director_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `products_dps`
--

CREATE TABLE `products_dps` (
  `product_id` mediumint(8) UNSIGNED NOT NULL,
  `dp_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `products_genres`
--

CREATE TABLE `products_genres` (
  `product_id` mediumint(8) UNSIGNED NOT NULL,
  `genre_id` tinyint(3) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `products_producers`
--

CREATE TABLE `products_producers` (
  `product_id` mediumint(8) UNSIGNED NOT NULL,
  `producer_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `products_studios`
--

CREATE TABLE `products_studios` (
  `product_id` mediumint(8) UNSIGNED NOT NULL,
  `studio_id` smallint(5) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `products_writers`
--

CREATE TABLE `products_writers` (
  `product_id` mediumint(8) UNSIGNED NOT NULL,
  `writer_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `rated` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `shippers`
--

CREATE TABLE `shippers` (
  `id` int(10) UNSIGNED NOT NULL,
  `shipper_name` varchar(55) NOT NULL,
  `contact_name` varchar(100) NOT NULL,
  `phone_num` varchar(15) NOT NULL,
  `email` varchar(80) NOT NULL,
  `ship_date` date DEFAULT NULL,
  `tracking_num` varchar(20) DEFAULT NULL,
  `confirmation_num` varchar(34) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `shippingaddress`
--

CREATE TABLE `shippingaddress` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `address_1` varchar(46) NOT NULL,
  `address_2` varchar(46) DEFAULT NULL,
  `city` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `zip` varchar(10) NOT NULL,
  `country` varchar(27) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `specs`
--

CREATE TABLE `specs` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `spec_format_type` varchar(30) NOT NULL,
  `video_desc` varchar(35) NOT NULL,
  `audio_desc` tinytext NOT NULL,
  `subtitles_desc` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `studios`
--

CREATE TABLE `studios` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `studio_name` varchar(55) NOT NULL,
  `about` text NOT NULL,
  `img` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `supplieraddress`
--

CREATE TABLE `supplieraddress` (
  `id` int(10) UNSIGNED NOT NULL,
  `supplier_id` int(10) UNSIGNED NOT NULL,
  `address_1` varchar(46) NOT NULL,
  `address_2` varchar(46) DEFAULT NULL,
  `city` varchar(50) NOT NULL,
  `zip` varchar(10) NOT NULL,
  `state` varchar(50) NOT NULL,
  `country` varchar(27) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` int(10) UNSIGNED NOT NULL,
  `legal_name` varchar(150) NOT NULL,
  `company_name` varchar(55) NOT NULL,
  `website_url` varchar(2083) DEFAULT NULL,
  `phone_num` varchar(15) NOT NULL,
  `email` varchar(80) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `verify_code` char(32) DEFAULT NULL,
  `company_logo_img` varchar(50) DEFAULT NULL,
  `registration_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `suppliers_products`
--

CREATE TABLE `suppliers_products` (
  `supplier_id` int(10) UNSIGNED NOT NULL,
  `product_id` mediumint(8) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `type` varchar(18) NOT NULL,
  `amount` decimal(5,2) UNSIGNED NOT NULL,
  `response_code` tinyint(1) UNSIGNED NOT NULL,
  `response_reason` tinytext,
  `transaction_id` bigint(20) UNSIGNED NOT NULL,
  `response` text NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `middle_name` varchar(40) DEFAULT NULL,
  `last_name` varchar(40) NOT NULL,
  `email` varchar(80) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `phone_num` varchar(15) DEFAULT NULL,
  `profile_pic` varchar(50) DEFAULT NULL,
  `verify_code` char(32) DEFAULT NULL,
  `registration_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` mediumint(8) UNSIGNED NOT NULL,
  `product_department` varchar(35) NOT NULL,
  `product_format` varchar(10) NOT NULL,
  `quantity` tinyint(3) UNSIGNED NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_modified` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `writers`
--

CREATE TABLE `writers` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `middle_name` varchar(40) DEFAULT NULL,
  `last_name` varchar(40) NOT NULL,
  `gender` char(1) NOT NULL,
  `about` text NOT NULL,
  `img` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `actors`
--
ALTER TABLE `actors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `product_department` (`product_department`),
  ADD KEY `product_format` (`product_format`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `department` (`department`);

--
-- Indexes for table `directors`
--
ALTER TABLE `directors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `gender` (`gender`);

--
-- Indexes for table `dps`
--
ALTER TABLE `dps`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `gender` (`gender`);

--
-- Indexes for table `formats`
--
ALTER TABLE `formats`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `format` (`format`);

--
-- Indexes for table `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `genre` (`genre`);

--
-- Indexes for table `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_department` (`product_department`),
  ADD KEY `product_format` (`product_format`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `shipper_id` (`shipper_id`);

--
-- Indexes for table `producers`
--
ALTER TABLE `producers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `gender` (`gender`);

--
-- Indexes for table `productdetails`
--
ALTER TABLE `productdetails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `rated_id` (`rated_id`),
  ADD KEY `spec_id` (`spec_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `isd` (`isd`),
  ADD KEY `department_id` (`department_id`),
  ADD KEY `format_id` (`format_id`);

--
-- Indexes for table `products_actors`
--
ALTER TABLE `products_actors`
  ADD PRIMARY KEY (`product_id`,`actor_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `actor_id` (`actor_id`);

--
-- Indexes for table `products_directors`
--
ALTER TABLE `products_directors`
  ADD PRIMARY KEY (`product_id`,`director_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `director_id` (`director_id`);

--
-- Indexes for table `products_dps`
--
ALTER TABLE `products_dps`
  ADD PRIMARY KEY (`product_id`,`dp_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `dp_id` (`dp_id`);

--
-- Indexes for table `products_genres`
--
ALTER TABLE `products_genres`
  ADD PRIMARY KEY (`product_id`,`genre_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `genre_id` (`genre_id`);

--
-- Indexes for table `products_producers`
--
ALTER TABLE `products_producers`
  ADD PRIMARY KEY (`product_id`,`producer_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `producer_id` (`producer_id`);

--
-- Indexes for table `products_studios`
--
ALTER TABLE `products_studios`
  ADD PRIMARY KEY (`product_id`,`studio_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `studio_id` (`studio_id`);

--
-- Indexes for table `products_writers`
--
ALTER TABLE `products_writers`
  ADD PRIMARY KEY (`product_id`,`writer_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `writer_id` (`writer_id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `rated` (`rated`);

--
-- Indexes for table `shippers`
--
ALTER TABLE `shippers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shippingaddress`
--
ALTER TABLE `shippingaddress`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `specs`
--
ALTER TABLE `specs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `studios`
--
ALTER TABLE `studios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `studio_name` (`studio_name`);

--
-- Indexes for table `supplieraddress`
--
ALTER TABLE `supplieraddress`
  ADD PRIMARY KEY (`id`),
  ADD KEY `supplier_id` (`supplier_id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `pass` (`pass`);

--
-- Indexes for table `suppliers_products`
--
ALTER TABLE `suppliers_products`
  ADD PRIMARY KEY (`supplier_id`,`product_id`),
  ADD KEY `supplier_id` (`supplier_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `pass` (`pass`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `product_department` (`product_department`),
  ADD KEY `product_format` (`product_format`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `writers`
--
ALTER TABLE `writers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `gender` (`gender`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `actors`
--
ALTER TABLE `actors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `directors`
--
ALTER TABLE `directors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dps`
--
ALTER TABLE `dps`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `formats`
--
ALTER TABLE `formats`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `genres`
--
ALTER TABLE `genres`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orderdetails`
--
ALTER TABLE `orderdetails`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `producers`
--
ALTER TABLE `producers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `productdetails`
--
ALTER TABLE `productdetails`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shippers`
--
ALTER TABLE `shippers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shippingaddress`
--
ALTER TABLE `shippingaddress`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `specs`
--
ALTER TABLE `specs`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `studios`
--
ALTER TABLE `studios`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `supplieraddress`
--
ALTER TABLE `supplieraddress`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `writers`
--
ALTER TABLE `writers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `carts_ibfk_2` FOREIGN KEY (`product_department`) REFERENCES `departments` (`department`),
  ADD CONSTRAINT `carts_ibfk_3` FOREIGN KEY (`product_format`) REFERENCES `formats` (`format`),
  ADD CONSTRAINT `carts_ibfk_4` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD CONSTRAINT `orderdetails_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `orderdetails_ibfk_2` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `orderdetails_ibfk_3` FOREIGN KEY (`product_department`) REFERENCES `departments` (`department`),
  ADD CONSTRAINT `orderdetails_ibfk_4` FOREIGN KEY (`product_format`) REFERENCES `formats` (`format`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`shipper_id`) REFERENCES `shippers` (`id`);

--
-- Constraints for table `productdetails`
--
ALTER TABLE `productdetails`
  ADD CONSTRAINT `productdetails_ibfk_1` FOREIGN KEY (`id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `productdetails_ibfk_2` FOREIGN KEY (`rated_id`) REFERENCES `ratings` (`id`),
  ADD CONSTRAINT `productdetails_ibfk_3` FOREIGN KEY (`spec_id`) REFERENCES `specs` (`id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`),
  ADD CONSTRAINT `products_ibfk_2` FOREIGN KEY (`format_id`) REFERENCES `formats` (`id`);

--
-- Constraints for table `products_actors`
--
ALTER TABLE `products_actors`
  ADD CONSTRAINT `products_actors_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `products_actors_ibfk_2` FOREIGN KEY (`actor_id`) REFERENCES `actors` (`id`);

--
-- Constraints for table `products_directors`
--
ALTER TABLE `products_directors`
  ADD CONSTRAINT `products_directors_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `products_directors_ibfk_2` FOREIGN KEY (`director_id`) REFERENCES `directors` (`id`);

--
-- Constraints for table `products_dps`
--
ALTER TABLE `products_dps`
  ADD CONSTRAINT `products_dps_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `products_dps_ibfk_2` FOREIGN KEY (`dp_id`) REFERENCES `dps` (`id`);

--
-- Constraints for table `products_genres`
--
ALTER TABLE `products_genres`
  ADD CONSTRAINT `products_genres_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `products_genres_ibfk_2` FOREIGN KEY (`genre_id`) REFERENCES `genres` (`id`);

--
-- Constraints for table `products_producers`
--
ALTER TABLE `products_producers`
  ADD CONSTRAINT `products_producers_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `products_producers_ibfk_2` FOREIGN KEY (`producer_id`) REFERENCES `producers` (`id`);

--
-- Constraints for table `products_studios`
--
ALTER TABLE `products_studios`
  ADD CONSTRAINT `products_studios_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `products_studios_ibfk_2` FOREIGN KEY (`studio_id`) REFERENCES `studios` (`id`);

--
-- Constraints for table `products_writers`
--
ALTER TABLE `products_writers`
  ADD CONSTRAINT `products_writers_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `products_writers_ibfk_2` FOREIGN KEY (`writer_id`) REFERENCES `writers` (`id`);

--
-- Constraints for table `shippingaddress`
--
ALTER TABLE `shippingaddress`
  ADD CONSTRAINT `shippingaddress_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `supplieraddress`
--
ALTER TABLE `supplieraddress`
  ADD CONSTRAINT `supplieraddress_ibfk_1` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`id`);

--
-- Constraints for table `suppliers_products`
--
ALTER TABLE `suppliers_products`
  ADD CONSTRAINT `suppliers_products_ibfk_1` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`id`),
  ADD CONSTRAINT `suppliers_products_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`);

--
-- Constraints for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD CONSTRAINT `wishlists_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `wishlists_ibfk_2` FOREIGN KEY (`product_department`) REFERENCES `departments` (`department`),
  ADD CONSTRAINT `wishlists_ibfk_3` FOREIGN KEY (`product_format`) REFERENCES `formats` (`format`),
  ADD CONSTRAINT `wishlists_ibfk_4` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
