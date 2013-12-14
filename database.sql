-- phpMyAdmin SQL Dump
-- version 4.0.6
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 14, 2013 at 01:32 AM
-- Server version: 5.5.33
-- PHP Version: 5.5.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `lucillek_p4_lucillekenneyjewelry_com`
--

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
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

CREATE TABLE `order_items` (
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

CREATE TABLE `posts` (
  `post_id` int(11) NOT NULL AUTO_INCREMENT,
  `created` int(11) NOT NULL,
  `modified` int(11) NOT NULL,
  `user_id` int(11) NOT NULL COMMENT 'Foreign Key',
  `content` text NOT NULL,
  PRIMARY KEY (`post_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=61 ;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `created`, `modified`, `user_id`, `content`) VALUES
(25, 1383538958, 1383538958, 1, 'Hello World'),
(27, 1383541734, 1383541734, 1, 'yada yada'),
(33, 1383599165, 1383599165, 1, 'Gibberish is a generic term in English for talking that sounds like speech, but carries no actual meaning. This meaning has also been extended to meaningless text or gobbledygook. The common theme in gibberish statements is a lack of literal sense, which can be described as a presence of nonsense. Gibberish should not be confused with literary nonsense such as that used in the poem "Jabberwocky" by Lewis Carroll.'),
(50, 1383625820, 1383625820, 11, '`Twas brillig, and the slithy toves\r\n  Did gyre and gimble in the wabe:\r\nAll mimsy were the borogoves,\r\n  And the mome raths outgrabe.'),
(60, 1386965777, 1386965777, 1, 'adfasdf');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
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
(1, 'pen', 'pendant', 'heart', 'fine silver', 'small', 3, '94.42', 0, 0),
(2, 'pen', 'pendant', 'heart', 'fine silver', 'medium', 3, '125.87', 0, 0),
(3, 'pen', 'pendant', 'heart', 'fine silver', 'large', 3, '157.35', 0, 0),
(4, 'pen', 'pendant', 'circle', 'fine silver', 'small', 3, '31.48', 0, 0),
(5, 'pen', 'pendant', 'circle', 'fine silver', 'medium', 3, '94.39', 0, 0),
(6, 'pen', 'pendant', 'circle', 'fine silver', 'large', 3, '125.87', 0, 0),
(7, 'pen', 'pendant', 'square', 'fine silver', 'small', 3, '81.82', 0, 0),
(8, 'pen', 'pendant', 'square', 'fine silver', 'medium', 3, '113.29', 0, 0),
(9, 'pen', 'pendant', 'square', 'fine silver', 'large', 3, '144.76', 0, 0),
(10, 'pen', 'pendant', 'heart', 'bronze', 'small', 3, '7.09', 0, 0),
(11, 'pen', 'pendant', 'heart', 'bronze', 'medium', 3, '12.76', 0, 0),
(12, 'pen', 'pendant', 'heart', 'bronze', 'large', 3, '15.59', 0, 0),
(13, 'pen', 'pendant', 'circle', 'bronze', 'small', 3, '7.09', 0, 0),
(14, 'pen', 'pendant', 'circle', 'bronze', 'medium', 3, '12.76', 0, 0),
(15, 'pen', 'pendant', 'circle', 'bronze', 'large', 3, '15.59', 0, 0),
(16, 'pen', 'pendant', 'square', 'bronze', 'small', 3, '10.63', 0, 0),
(17, 'pen', 'pendant', 'square', 'bronze', 'medium', 3, '14.88', 0, 0),
(18, 'pen', 'pendant', 'square', 'bronze', 'large', 3, '17.72', 0, 0),
(19, 'cha', 'rice chain', '2mm', 'sterling', '16 inch', 3, '30.00', 0, 0),
(20, 'cha', 'rice chain', '', '', '', 0, '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `created` int(11) NOT NULL,
  `modified` int(11) NOT NULL,
  `token` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `last_login` int(11) NOT NULL,
  `timezone` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `website` varchar(255) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `created`, `modified`, `token`, `password`, `last_login`, `timezone`, `first_name`, `last_name`, `email`, `website`) VALUES
(1, 1383461121, 1386967105, '60c20229c35cd4dafa842bc38890abf4eb0f7daf', '2adbc15015f49cba84f646ce39d718756a248f80', 0, '', 'Lucille', 'Kenney', 'lakenney@rcn.com', 'adfd'),
(6, 1383498914, 1383500220, '47916a75456f3e45c380cd229251a90aa4475c26', '4d9eda13cefc9187f71bb590b8fd660d7edac355', 0, '', 'Donna', 'Snow', 'donna@gmail.com', ''),
(7, 1383502215, 1383502215, 'c34ff7e64cca794e947a1bce9190c02043824537', '6828640e5694cc1fe042c8df475ddabb5ffe7589', 0, '', 'Jack', 'Jones', 'jack@gmail.com', ''),
(8, 1383506972, 1383507368, 'b0178851642179d6ee3307ddfb810f11337aeff9', '0eed1fd2d92d9ea10b1ce4831455b5fb2c2e1ce9', 0, '', 'Jill', 'Warnick', 'jill@gmail.com', ''),
(9, 1383507413, 1383528885, '4cdbeab865af4524bbd449951c96be7a73fc8084', '2f8d76f36b2d186d73a04ea1af8c0e40888aee20', 0, '', 'Al', 'Upps', 'al@gmail.com', ''),
(10, 1383542358, 1383576739, '54e289e23e199e6cda73f88d5b0069b131a5896a', '29db6a2e72c13bbb398f2d25754ae8a173426bf1', 0, '', 'Pat', 'smith', 'pat@gmail.com', ''),
(11, 1383581144, 1383581660, '01e0c3979a243537c072dc11f16e4cd6ddf34861', '0e454e3acaa8fc1d548fcf4011de85ccaa318d41', 0, '', 'bud', 'light', 'bud@gmail.com', '');

-- --------------------------------------------------------

--
-- Table structure for table `users_users`
--

CREATE TABLE `users_users` (
  `user_user_id` int(11) NOT NULL AUTO_INCREMENT,
  `created` int(11) NOT NULL,
  `user_id` int(11) NOT NULL COMMENT 'FK. Follower.',
  `user_id_followed` int(11) NOT NULL COMMENT 'Followed.',
  PRIMARY KEY (`user_user_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=56 ;

--
-- Dumping data for table `users_users`
--

INSERT INTO `users_users` (`user_user_id`, `created`, `user_id`, `user_id_followed`) VALUES
(2, 1383498988, 6, 1),
(3, 1383498990, 6, 6),
(4, 1383502240, 7, 1),
(5, 1383502243, 7, 7),
(6, 1383502245, 7, 6),
(10, 1383507279, 8, 1),
(11, 1383507280, 8, 6),
(12, 1383507283, 8, 7),
(14, 1383516418, 9, 6),
(15, 1383516435, 9, 9),
(16, 1383530517, 9, 8),
(17, 1383530786, 9, 1),
(25, 1383542430, 10, 6),
(26, 1383542432, 10, 7),
(27, 1383542434, 10, 8),
(28, 1383542437, 10, 9),
(29, 1383542438, 10, 10),
(30, 1383542483, 10, 1),
(41, 1383625834, 11, 6),
(42, 1383625835, 11, 7),
(43, 1383625836, 11, 8),
(44, 1383625837, 11, 9),
(45, 1383625838, 11, 10),
(46, 1383625839, 11, 11),
(49, 1385939081, 1, 1),
(50, 1386884195, 1, 10),
(51, 1386884197, 1, 6),
(52, 1386884198, 1, 7),
(53, 1386884199, 1, 8),
(54, 1386884204, 1, 9),
(55, 1386884210, 1, 11);

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
  ADD CONSTRAINT `order_items_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `order_items_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`);

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `users_users`
--
ALTER TABLE `users_users`
  ADD CONSTRAINT `users_users_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
