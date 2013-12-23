-- phpMyAdmin SQL Dump
-- version 4.0.8
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 18, 2013 at 04:06 PM
-- Server version: 5.1.70-cll
-- PHP Version: 5.3.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `lucillek_p4_lucillekenneyjewelry_com`
--

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `created` int(11) NOT NULL,
  `modified` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`order_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE IF NOT EXISTS `order_items` (
  `order_item_id` int(11) NOT NULL AUTO_INCREMENT,
  `created` int(11) NOT NULL,
  `modified` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `price_paid` int(11) NOT NULL,
  PRIMARY KEY (`order_item_id`),
  KEY `order_id` (`order_id`,`product_id`),
  KEY `product_id` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
  `post_id` int(11) NOT NULL AUTO_INCREMENT,
  `created` int(11) NOT NULL,
  `modified` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `content` text NOT NULL,
  PRIMARY KEY (`post_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=60 ;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `created`, `modified`, `user_id`, `content`) VALUES
(4, 1382734883, 1382734883, 25, 'Hey Everyone! I''m Sam. I look forward to chatting with you all.'),
(5, 1382734892, 1382734892, 25, 'Hello World!'),
(6, 1382734959, 1382734959, 26, 'Hey folks, I''m Jim and this is my first post.'),
(7, 1382735075, 1382735075, 27, 'Hi I''m Sue. I look forward to meeting other jewelry designers in here. I''d also like to learn about upcoming events. I look forward to meeting you all. \r\n\r\nCheers,'),
(8, 1382735173, 1382735173, 28, 'Hi, \r\n\r\nI look forward to seeing many of you in my upcoming PMC carving class at Snow Farm.\r\n\r\nCheers,'),
(9, 1382735269, 1382735269, 30, 'Hey, Nice to meet you.'),
(10, 1383049048, 1383049048, 34, 'Hello World.'),
(12, 1383335039, 1383335039, 37, 'I''M MICROBLOGGING!'),
(13, 1383335615, 1383335615, 38, 'Hello world'),
(14, 1383371474, 1383371474, 39, 'hi'),
(16, 1383371610, 1383371610, 39, 'test'),
(17, 1383403457, 1383403457, 40, 'here''s a test post. Good work, Lucille!'),
(18, 1383403543, 1383403543, 40, 'Might want to "auto-follow" yourself, and after adding the post, redirect back to the posts page. Right now, it isn''t intuitive to click "add" to read posts.'),
(19, 1383518241, 1383518241, 33, 'Test post #1'),
(25, 1383534552, 1383534552, 43, ''),
(26, 1383535488, 1383535488, 43, 'Hello World'),
(30, 1383567736, 1383567736, 46, 'Nice job! '),
(31, 1383591413, 1383591413, 47, 'Hello Talkfest!'),
(32, 1383596171, 1383596171, 48, 'Test'),
(33, 1383605304, 1383605304, 49, 'Hi Lucille, I like your site!'),
(34, 1383625628, 1383625628, 35, 'Gibberish is a generic term in English for talking that sounds like speech, but carries no actual meaning. This meaning has also been extended to meaningless text or gobbledygook. The common theme in gibberish statements is a lack of literal sense, which can be described as a presence of nonsense. Gibberish should not be confused with literary nonsense such as that used in the poem "Jabberwocky" by Lewis Carroll.'),
(35, 1383626261, 1383626261, 28, '`Twas brillig, and the slithy toves\r\n  Did gyre and gimble in the wabe:\r\nAll mimsy were the borogoves,\r\n  And the mome raths outgrabe.'),
(36, 1383626312, 1383626312, 25, '"Beware the Jabberwock, my son!\r\n  The jaws that bite, the claws that catch!\r\nBeware the Jubjub bird, and shun\r\n  The frumious Bandersnatch!"'),
(37, 1383626372, 1383626372, 26, 'He took his vorpal sword in hand:\r\n  Long time the manxome foe he sought --\r\nSo rested he by the Tumtum tree,\r\n  And stood awhile in thought.'),
(38, 1383626462, 1383626462, 35, 'And, as in uffish thought he stood,\r\n  The Jabberwock, with eyes of flame,\r\nCame whiffling through the tulgey wood,\r\n  And burbled as it came!'),
(39, 1383626553, 1383626553, 35, 'One, two! One, two! And through and through\r\n  The vorpal blade went snicker-snack!\r\nHe left it dead, and with its head\r\n  He went galumphing back.'),
(40, 1383626695, 1383626695, 29, '"And, has thou slain the Jabberwock?\r\n  Come to my arms, my beamish boy!\r\nO frabjous day! Callooh! Callay!''\r\n  He chortled in his joy.'),
(41, 1383626731, 1383626731, 35, '`Twas brillig, and the slithy toves\r\n  Did gyre and gimble in the wabe;\r\nAll mimsy were the borogoves,\r\n  And the mome raths outgrabe.'),
(43, 1383635523, 1383635523, 50, 'Hi just testing this. '),
(44, 1383690184, 1383690184, 51, 'Great site Lucille!'),
(50, 1383789703, 1383789703, 52, 'Nice work!'),
(52, 1383882734, 1383882734, 53, 'Hi Lucille,\r\n\r\nHow are you?'),
(53, 1383958319, 1383958319, 46, 'Nice job, Lucille!'),
(54, 1384275817, 1384275817, 35, 'OK, I just wanted this time stamp in my post!'),
(58, 1384806358, 1384806358, 56, 'You cannot pass! I am a servant of the Secret Fire, wielder of the Flame of Anor. The dark fire will not avail you, Flame of Udun! Go back to the shadow. You shall not pass!'),
(59, 1384806383, 1384806383, 56, 'My dear Frodo. Hobbits really are amazing creatures. You can learn all there is to know about their ways in a month, and yet after a hundred years they can still surprise you.');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_code` varchar(255) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `shape` varchar(255) NOT NULL,
  `metal` varchar(255) NOT NULL,
  `size` varchar(255) NOT NULL,
  `stock` int(11) NOT NULL,
  `price` varchar(255) NOT NULL,
  `created` int(11) NOT NULL,
  `modified` int(11) NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_code`, `product_name`, `shape`, `metal`, `size`, `stock`, `price`, `created`, `modified`) VALUES
(1, 'pen', 'pendant', 'heart', 'silver', 'sm', 3, '94.42', 0, 0),
(2, 'pen', 'pendant', 'heart', 'silver', 'md', 3, '125.87', 0, 0),
(3, 'pen', 'pendant', 'heart', 'silver', 'lg', 3, '157.35', 0, 0),
(4, 'pen', 'pendant', 'circle', 'silver', 'sm', 3, '31.48', 0, 0),
(5, 'pen', 'pendant', 'circle', 'silver', 'md', 3, '94.39', 0, 0),
(6, 'pen', 'pendant', 'circle', 'silver', 'lg', 3, '125.87', 0, 0),
(7, 'pen', 'pendant', 'square', 'silver', 'sm', 3, '81.82', 0, 0),
(8, 'pen', 'pendant', 'square', 'silver', 'md', 3, '113.29', 0, 0),
(9, 'pen', 'pendant', 'square', 'silver', 'lg', 3, '144.76', 0, 0),
(10, 'pen', 'pendant', 'heart', 'bronze', 'sm', 3, '7.09', 0, 0),
(11, 'pen', 'pendant', 'heart', 'bronze', 'md', 3, '12.76', 0, 0),
(12, 'pen', 'pendant', 'heart', 'bronze', 'lg', 3, '15.59', 0, 0),
(13, 'pen', 'pendant', 'circle', 'bronze', 'sm', 3, '7.09', 0, 0),
(14, 'pen', 'pendant', 'circle', 'bronze', 'md', 3, '12.76', 0, 0),
(15, 'pen', 'pendant', 'circle', 'bronze', 'lg', 3, '15.59', 0, 0),
(16, 'pen', 'pendant', 'square', 'bronze', 'sm', 3, '10.63', 0, 0),
(17, 'pen', 'pendant', 'square', 'bronze', 'md', 3, '14.88', 0, 0),
(18, 'pen', 'pendant', 'square', 'bronze', 'lg', 3, '17.72', 0, 0),
(19, 'cha', 'rice chain', '2mm', 'sterling', '16 inch', 3, '30.00', 0, 0),
(20, 'cha', 'rice chain', '', '', '', 0, '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `created` int(11) NOT NULL,
  `modified` int(11) NOT NULL,
  `token` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `last_login` int(11) NOT NULL,
  `timezone` varchar(255) NOT NULL,
  `first_name` varchar(255) CHARACTER SET ucs2 NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `website` text NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=58 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `created`, `modified`, `token`, `password`, `last_login`, `timezone`, `first_name`, `last_name`, `email`, `website`) VALUES
(25, 1382734834, 1382734834, '25089426d257d97bd679fb7a628ca10d560591cc', '597eaffcc4921abd6bf18753112a30b44824d90b', 0, '', 'Sam', 'Sandborn', 'sam@whitehouse.gov', ''),
(26, 1382734925, 1382734925, '5aa80b6f479b91b1313b07674d7363b6b67333e0', '384d9390cfe09b3381594362650372aa3d5e29c7', 0, '', 'Jim', 'Smith', 'jim@gmail.com', ''),
(27, 1382734991, 1382734991, '8a0e9e4ef4ebeb2ecb3003cbe15538cd9d42658b', '35076ca92368880a49771fe635e2898e9f3d9af2', 0, '', 'Sue', 'Jones', 'sue@gmail.com', ''),
(28, 1382735111, 1382735111, '7bf779f4c9680c3ee3582b206761434a51f2a1a0', '1b40520012c69b1e6bdbe7eb35e933a425a54689', 0, '', 'Joe', 'Base', 'joe@gmail.com', ''),
(29, 1382735199, 1382735199, 'db14a913dfca83ec6f374748551c52228d04031e', '4d9eda13cefc9187f71bb590b8fd660d7edac355', 0, '', 'Donna', 'Snow', 'donna@gmail.com', ''),
(30, 1382735249, 1382735249, 'a20a1bea1e252b7c349d8be211ad38517f91c974', '16e3b6109c4b43fcd2283d24eba020297ae3620b', 0, '', 'Mike', 'Jones', 'mike@gmail.com', ''),
(31, 1382812786, 1382812786, '4f2a5526ceb178e5ac6ef6cd73cf0e6982d1e111', '5a8bb496570e918e546f954148ebaf24d77b984f', 0, '', 'Allen', 'Hayes', 'allen@gmail.com', ''),
(32, 1382812891, 1382812891, 'c730b681cf74b9071172719ebc469f2e9dbf887f', '6828640e5694cc1fe042c8df475ddabb5ffe7589', 0, '', 'Jack', 'Smith', 'jack@gmail.com', ''),
(33, 1382901299, 1382901299, '7d523202dad3e2367a82b7faf2c3606daf8eac79', '176249ad48f4bea3dc332e370c3440c25c86936c', 0, '', 'Johanna', 'Bodnyk', 'jbodnyk@fas.harvard.edu', ''),
(34, 1383049035, 1383049035, 'd403cf7186b93791c0284d1d81f69cc4e1478562', '405ea66758f2a490a34ef0be67932277a15aa905', 0, '', 'Susan', 'Buck', 'susanbuck@fas.harvard.edu', ''),
(35, 1383076175, 1383832471, '75b7a5dafb453fed8a4a1728a7288521a2f13e39', '2adbc15015f49cba84f646ce39d718756a248f80', 0, '', 'Lucille', 'Kenney', 'lakenney@rcn.com', 'http://lucillekenney.com'),
(36, 1383331414, 1383331414, '7647b324358978687f4afb616d18fad4d920f7a2', '0eed1fd2d92d9ea10b1ce4831455b5fb2c2e1ce9', 0, '', 'Jill', 'warner', 'jill@gmail.com', ''),
(37, 1383335022, 1383785972, 'bed961310a868bb9ed2a2245697bd9f46837beae', 'd932f43e00bf93f0ea59a4a2c03eeac9a48426e4', 0, '', 'Dan', 'Schultz', 'dan@dan.dan', ''),
(38, 1383335600, 1383335600, 'ccfd6a4a17d89955516f3a8291038c8fcc6ccc93', '23e419f7e15aa9bef0a85066e6b127c6b9df4f23', 0, '', 'Dominick', 'Peluso', 'peluso.dominick@gmail.com', ''),
(39, 1383371460, 1383371460, '0ca33825ee8350570a4255b3611b09430f314052', '0aa4d2110d9eb29235ccc5d4b8424059de2a416e', 0, '', 'Migrant', 'Otter', 'm@aol.com', ''),
(40, 1383403381, 1383403381, '4f803a55dd9cd3c25deb83efc7d7ab8b14edb22c', 'c81c8ecfc7b3581dbefa6539559a63e2dc332285', 0, '', 'Ed', 'Hebert', 'hebert01@gmail.com', ''),
(43, 1383534534, 1383534534, '3eaa8efcbf2dfa8b57c1643dca2669e85f9b251a', '227c39a86c9adf90a684e79ae245e90f2e6b5a2e', 0, '', 'julie', 'smith', 'julie@gmail.com', ''),
(45, 1383545597, 1383545679, '435188ec2081a77a309657f333f4a12a6a00d8a4', '7a69e2e34d99eebd652b681d7dbd4e537b4f0fca', 0, '', 'Patrick', 'Sinco', 'psinco@fas.harvard.edu', 'www.baseball-reference.com'),
(46, 1383567525, 1383569472, 'fbda1ab8507f0f136d13a4a30bb0accd295bc487', 'e7c94e6a4f907bc3698d35687be69030872784bc', 0, '', 'Ann M.', 'Adelsberger', 'Adelsbergerann@gmail.com', ''),
(47, 1383591289, 1383591289, 'af757f8614791b9776cb04ff09c0b911ebd78b55', '89e2d4364804531249a9e8c7e116dc68101a1593', 0, '', 'Adam', 'Beerman', 'adamthebeerman@gmail.com', ''),
(48, 1383596141, 1383596141, '73174558a07bd9345dd0a0b2c08006e9b501dee1', 'c81c8ecfc7b3581dbefa6539559a63e2dc332285', 0, '', 'Jewel', 'King', 'JewelKing@yahoo.com', ''),
(49, 1383605209, 1383605209, '6c2c2c7f4876e15cf8c934b920455f944d75fa6a', 'e224780eb8af49731c33bb6e6c5f8fb093bae250', 0, '', 'Jackie', 'Wilson', 'jackie@jackie.com', ''),
(50, 1383635415, 1383635415, 'b7b2effdb1f9082ce9a8b3a28d2999f3d0b96ae2', 'c81c8ecfc7b3581dbefa6539559a63e2dc332285', 0, '', 'test', 'test', 'test@gmail.com', ''),
(51, 1383690094, 1383690094, 'e2a74dd2651772ea5a3ea47632b0a904bad5206a', '6e1160e86447c32bac3475fea0fe94450c6d579f', 0, '', 'CJ', 'Sheets', 'cesjr02@hotmail.com', ''),
(52, 1383789318, 1383789639, 'df75a3db97249392088851a93aa3f2263d0eb710', 'ce48e9257e8708b2470d7643b436f3c55218c063', 0, '', 'Frank', 'Aveni', 'frank@email.org', ''),
(53, 1383882673, 1383882673, '41019913781ac04de265e6ab82e7b3e7c1eeb6b2', '89ad7f222414923e1856d839f40496f8f4556459', 0, '', 'Debbie', 'Reches', 'debbie@debrex.biz', ''),
(54, 1384056251, 1384056251, '2914a4107f4392bb62dd39f4b694ec89a1ae1518', '47cd402a2330fc1de324d73f7248e1cef13da47e', 0, '', 'Antoinette', 'Bulger', 'antoinetteb@comcast.net', ''),
(55, 1384303709, 1384303766, '9f1f3f165eda8a4774ec7c7ba085a450691b4237', 'f7adc219f9512fdde02c6a2ebf64d130b5706e6f', 0, '', 'Donna', 'Wong', 'donnawong@fas.harvard.edu', ''),
(56, 1384806107, 1384806246, '8227291c9020714c78310cf28e4946992791674c', 'd932f43e00bf93f0ea59a4a2c03eeac9a48426e4', 0, '', 'Gandalf', 'the Grey', 'keepItSecret', 'http://lotr.wikia.com/wiki/Gandalf'),
(57, 1385830161, 1385830161, '634e652504c3bdc1ac49a67fbee69a3ce11dc35f', '2f8d76f36b2d186d73a04ea1af8c0e40888aee20', 0, '', 'Al', 'Pic', 'al@gmail.com', '');

-- --------------------------------------------------------

--
-- Table structure for table `users_users`
--

CREATE TABLE IF NOT EXISTS `users_users` (
  `user_user_id` int(11) NOT NULL AUTO_INCREMENT,
  `created` int(11) NOT NULL,
  `user_id` int(11) NOT NULL COMMENT 'follower',
  `user_id_followed` int(11) NOT NULL COMMENT 'followed',
  PRIMARY KEY (`user_user_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=166 ;

--
-- Dumping data for table `users_users`
--

INSERT INTO `users_users` (`user_user_id`, `created`, `user_id`, `user_id_followed`) VALUES
(3, 1382735336, 30, 27),
(4, 1382735338, 30, 24),
(5, 1382735341, 30, 29),
(6, 1383278789, 35, 35),
(10, 1383282911, 35, 0),
(11, 1383282968, 35, 0),
(12, 1383331436, 36, 26),
(13, 1383331438, 36, 27),
(14, 1383331439, 36, 30),
(15, 1383335048, 37, 34),
(16, 1383335052, 37, 33),
(17, 1383335055, 37, 37),
(18, 1383335058, 37, 30),
(19, 1383335059, 37, 26),
(20, 1383335061, 37, 25),
(21, 1383335623, 38, 34),
(22, 1383338169, 35, 37),
(23, 1383338174, 35, 38),
(24, 1383360135, 35, 33),
(25, 1383360143, 35, 34),
(26, 1383371483, 39, 25),
(27, 1383371484, 39, 26),
(28, 1383371485, 39, 27),
(29, 1383371485, 39, 28),
(30, 1383371486, 39, 29),
(31, 1383371487, 39, 30),
(32, 1383371487, 39, 31),
(33, 1383371488, 39, 33),
(34, 1383371622, 39, 39),
(35, 1383372361, 35, 39),
(36, 1383403408, 40, 34),
(37, 1383403414, 40, 35),
(38, 1383462877, 35, 40),
(39, 1383514133, 28, 0),
(40, 1383518399, 33, 25),
(41, 1383518404, 33, 28),
(42, 1383518567, 33, 33),
(43, 1383534563, 43, 25),
(44, 1383534604, 43, 43),
(46, 1383534748, 43, 40),
(47, 1383535261, 38, 25),
(48, 1383535262, 38, 26),
(49, 1383535263, 38, 27),
(50, 1383535265, 38, 28),
(51, 1383535266, 38, 29),
(52, 1383535268, 38, 30),
(53, 1383545616, 45, 28),
(54, 1383545620, 45, 31),
(55, 1383545635, 45, 43),
(56, 1383567606, 46, 26),
(58, 1383567616, 46, 28),
(59, 1383569402, 46, 25),
(60, 1383569404, 46, 27),
(61, 1383569406, 46, 30),
(62, 1383569409, 46, 31),
(63, 1383569412, 46, 32),
(64, 1383569415, 46, 29),
(65, 1383591304, 47, 25),
(66, 1383591306, 47, 26),
(67, 1383591307, 47, 27),
(68, 1383596181, 48, 28),
(69, 1383596183, 48, 29),
(70, 1383596207, 48, 26),
(71, 1383596208, 48, 25),
(72, 1383605236, 49, 35),
(73, 1383605260, 49, 44),
(74, 1383605268, 49, 34),
(75, 1383605315, 49, 49),
(76, 1383626000, 28, 45),
(77, 1383626015, 28, 40),
(78, 1383626022, 28, 37),
(79, 1383626024, 28, 28),
(80, 1383626026, 28, 27),
(81, 1383626027, 28, 25),
(82, 1383626031, 28, 26),
(83, 1383626032, 28, 30),
(84, 1383626034, 28, 31),
(85, 1383626035, 28, 32),
(86, 1383626038, 28, 33),
(87, 1383626042, 28, 34),
(88, 1383626049, 28, 36),
(89, 1383626055, 28, 46),
(90, 1383626062, 28, 47),
(91, 1383626070, 28, 49),
(92, 1383626075, 28, 48),
(93, 1383626100, 28, 44),
(94, 1383626109, 28, 43),
(95, 1383626233, 28, 35),
(96, 1383626321, 25, 25),
(97, 1383626326, 25, 35),
(98, 1383626336, 25, 49),
(99, 1383626339, 25, 32),
(100, 1383626341, 25, 28),
(101, 1383626380, 26, 26),
(102, 1383626383, 26, 25),
(103, 1383626393, 26, 46),
(104, 1383626398, 26, 35),
(105, 1383626498, 35, 42),
(106, 1383626573, 35, 29),
(107, 1383626610, 29, 29),
(108, 1383626616, 29, 35),
(109, 1383626618, 29, 26),
(110, 1383626620, 29, 25),
(111, 1383626624, 29, 28),
(112, 1383626626, 29, 30),
(113, 1383626628, 29, 32),
(114, 1383626632, 29, 49),
(115, 1383626640, 29, 48),
(116, 1383626648, 29, 47),
(117, 1383626652, 29, 46),
(118, 1383626657, 29, 45),
(119, 1383626670, 29, 44),
(120, 1383627243, 35, 25),
(121, 1383662235, 35, 46),
(122, 1383690191, 51, 51),
(123, 1383786121, 35, 30),
(124, 1383786128, 35, 32),
(125, 1383786132, 35, 36),
(126, 1383786140, 35, 43),
(127, 1383787913, 35, 45),
(128, 1383787926, 35, 47),
(129, 1383787946, 35, 48),
(130, 1383787951, 35, 51),
(131, 1383787956, 35, 50),
(132, 1383789497, 52, 25),
(133, 1383789510, 52, 26),
(134, 1383789518, 52, 37),
(135, 1383789520, 52, 28),
(136, 1383789533, 52, 51),
(137, 1383789539, 52, 30),
(138, 1383789551, 52, 52),
(139, 1383789660, 52, 45),
(140, 1383790824, 35, 49),
(141, 1383790835, 35, 52),
(142, 1383828522, 35, 26),
(143, 1383828527, 35, 27),
(144, 1383828530, 35, 28),
(145, 1383882693, 53, 39),
(146, 1383882699, 53, 29),
(147, 1383882708, 53, 33),
(148, 1383882719, 53, 47),
(149, 1383882745, 53, 34),
(150, 1383882762, 53, 53),
(151, 1383958287, 46, 34),
(152, 1384056445, 54, 35),
(153, 1384056601, 54, 34),
(154, 1384056607, 54, 27),
(155, 1384303782, 55, 34),
(156, 1384303789, 55, 35),
(157, 1384303823, 55, 39),
(158, 1384303833, 55, 53),
(159, 1384806163, 56, 56),
(162, 1384806369, 56, 33),
(163, 1384806403, 56, 25),
(164, 1385242840, 35, 55),
(165, 1385242865, 35, 54);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `order_items` (`order_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_items_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`) ON DELETE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `users_users`
--
ALTER TABLE `users_users`
  ADD CONSTRAINT `users_users_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
