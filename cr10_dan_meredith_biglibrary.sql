-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 23, 2018 at 01:34 PM
-- Server version: 5.6.38
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cr10_dan_meredith_biglibrary`
--
CREATE DATABASE IF NOT EXISTS `cr10_dan_meredith_biglibrary` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `cr10_dan_meredith_biglibrary`;

-- --------------------------------------------------------

--
-- Table structure for table `author`
--

CREATE TABLE `author` (
  `author_id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `author`
--

INSERT INTO `author` (`author_id`, `name`) VALUES
(1, 'George R.R. Martin'),
(2, 'Robin Hobb'),
(3, 'Bernie Sanders'),
(4, 'Noam Chomsky'),
(5, 'Mary Shelley'),
(6, 'Curren$y'),
(7, 'Arctic Monkeys'),
(8, 'Skepta'),
(9, 'Willie Nelson'),
(10, 'The Amazons'),
(11, 'David Attenborough'),
(12, 'Monty Python'),
(13, 'Ridley Scott'),
(14, 'Olivier Nakache');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `book_id` int(11) NOT NULL,
  `title` varchar(60) NOT NULL,
  `img` varchar(60) NOT NULL,
  `genre` varchar(60) NOT NULL,
  `ISBN_code` int(11) NOT NULL,
  `publish_date` date NOT NULL,
  `description` varchar(1000) NOT NULL,
  `fk_publisher_id` int(11) NOT NULL,
  `fk_author_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`book_id`, `title`, `img`, `genre`, `ISBN_code`, `publish_date`, `description`, `fk_publisher_id`, `fk_author_id`) VALUES
(1, 'A Dance With Dragons', 'https://goo.gl/NE8PU5', 'Fantasy', 1459087348, '2011-12-06', 'A Dance with Dragons is the fifth of seven planned novels in the epic fantasy series A Song of Ice and Fire by American author George R. R. Martin.', 1, 1),
(4, 'Ship of Magic', 'https://goo.gl/Bnfr2E', 'Fantasy', 509339867, '1998-09-01', 'Ship of Magic is a 1998 fantasy novel by American writer Robin Hobb, the first in her Liveship Traders Trilogy.', 10, 2),
(5, 'Our Revolution', 'https://goo.gl/172ZqM', 'Biography', 367329856, '2016-11-15', 'A Future to Believe In is a book by U.S. Senator of Vermont, Bernie Sanders, published by Thomas Dunne Books in November 2016. It was released on November 15, 2016, a week after the election of Donald Trump.', 2, 3),
(6, 'On Anarchism', 'https://goo.gl/pqT6wk', 'Political Commentary', 57624982, '2003-06-10', 'On Anarchism provides the reasoning behind Noam Chomsky\'s fearless lifelong questioning of the legitimacy of entrenched power.\r\n', 3, 4),
(7, 'Frankenstein', 'https://goo.gl/VTnxEY', 'Gothic Horror', 1804572846, '1818-12-01', 'Frankenstein; or, The Modern Prometheus is a novel written by English author Mary Shelley that tells the story of Victor Frankenstein, a young scientist who creates a grotesque but sapient creature in an unorthodox scientific experiment.', 14, 5);

-- --------------------------------------------------------

--
-- Table structure for table `cds`
--

CREATE TABLE `cds` (
  `CD_id` int(11) NOT NULL,
  `title` varchar(60) NOT NULL,
  `img` varchar(60) NOT NULL,
  `genre` varchar(60) NOT NULL,
  `ISBN_code` int(11) NOT NULL,
  `publish_date` date NOT NULL,
  `description` varchar(1000) NOT NULL,
  `fk_publisher_id` int(11) NOT NULL,
  `fk_author_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cds`
--

INSERT INTO `cds` (`CD_id`, `title`, `img`, `genre`, `ISBN_code`, `publish_date`, `description`, `fk_publisher_id`, `fk_author_id`) VALUES
(1, 'Canal Street Confidential', 'https://goo.gl/BdHJJB', 'Hip-Hop', 744902048, '2015-12-04', 'Canal Street Confidential is the eighth studio album by American rapper Curren$y. The album was released on December 4, 2015, by Jet Life Recordings and Atlantic Records.', 4, 6),
(2, 'Whatever People Say I Am, That’s What I’m Not', 'https://goo.gl/NrKTRC', 'Indie ', 43753567, '2006-01-23', 'Whatever People Say I Am, That\'s What I\'m Not is the debut studio album by English rock band Arctic Monkeys, released on 23 January 2006 by Domino Recording Company. The album surpassed Elastica\'s self-titled album to become the fastest selling debut album in British music history, shifting over 360,000 copies in its first week,] and remains the fastest selling debut album by a band.', 5, 7),
(3, 'Konnichiwa', 'https://goo.gl/5HzepD', 'Grime', 57326564, '2016-05-06', 'Konnichiwa is the fourth studio album by British grime artist Skepta. After numerous delays, it was released on 6 May 2016 by Boy Better Know. The album was launched with a party in Tokyo on 5 May 2016 arranged and broadcast globally by live streaming platform Boiler Room.', 6, 8),
(4, 'My Own Peculiar Way', 'https://goo.gl/XiMjJV', 'Country', 56782345, '1969-02-01', 'My Own Peculiar Way is the ninth studio album by country singer Willie Nelson. It was his last release in the 1960s. Bergen White was the conductor and arranger. This became Willie\'s first studio album in which he used his new classical acoustic guitar called Martin N-20 which he named \"Trigger\".\r\n', 7, 9),
(5, 'The Amazons', 'https://goo.gl/CGK9Fy', 'Indie', 7247288, '2017-05-26', 'The Amazons are an English rock band from Reading, Berkshire, formed in 2014. They were included in the BBC\'s \"Sound of 2017\" and MTV\'s \"Brand New 2017\" lists.', 8, 10);

-- --------------------------------------------------------

--
-- Table structure for table `dvds`
--

CREATE TABLE `dvds` (
  `DVD_id` int(11) NOT NULL,
  `title` varchar(55) NOT NULL,
  `img` varchar(60) NOT NULL,
  `genre` varchar(60) NOT NULL,
  `ISBN_code` int(11) NOT NULL,
  `publish_date` date NOT NULL,
  `description` varchar(1000) NOT NULL,
  `fk_author_id` int(11) NOT NULL,
  `fk_publisher_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dvds`
--

INSERT INTO `dvds` (`DVD_id`, `title`, `img`, `genre`, `ISBN_code`, `publish_date`, `description`, `fk_author_id`, `fk_publisher_id`) VALUES
(1, 'Planet Earth II', 'https://goo.gl/14Mazj', 'Nature Documentary', 574375684, '2016-11-06', 'Planet Earth II is a 2016 British nature documentary series produced by the BBC as a sequel to Planet Earth, which was broadcast in 2006.[1] The series is presented and narrated by Sir David Attenborough with the main theme music composed by Hans Zimmer.', 11, 9),
(2, 'Gladiator', 'https://goo.gl/9196MC', 'Historical Drama', 46537453, '2000-05-01', 'Crowe portrays Hispano-Roman general Maximus Decimus Meridius, who is betrayed when Commodus, the ambitious son of Emperor Marcus Aurelius, murders his father and seizes the throne. Reduced to slavery, Maximus rises through the ranks of the gladiatorial arena to avenge the murders of his family and his emperor.', 13, 10),
(3, 'Game of Thrones', 'https://goo.gl/8YBBoR', 'Fantasy', 56477235, '2011-04-11', 'Game of Thrones is an American fantasy drama television series created by David Benioff and D. B. Weiss. It is an adaptation of A Song of Ice and Fire, George R. R. Martin\'s series of fantasy novels, the first of which is A Game of Thrones.', 1, 11),
(4, 'Monty Python & The Holy Grail', 'https://goo.gl/jM7HeA', 'Comedy', 6543845, '1975-04-03', 'In 932 AD, King Arthur and his squire, Patsy, travel throughout Britain searching for men to join the Knights of the Round Table. Arthur recruits Sir Bedevere the Wise, Sir Lancelot the Brave, Sir Galahad the Pure and Sir Robin the Not-Quite-So-Brave-as-Sir-Lancelot, along with their squires and Robin\'s troubadours. Arthur leads the men to Camelot, but decides it is \"a silly place\" and sets off elsewhere. As they turn away, God speaks to them and gives Arthur the task of finding the Holy Grail.', 12, 12),
(5, 'The Intouchables', 'https://goo.gl/ZLYUwE', 'Dramatic Comedy', 764386543, '2011-06-04', 'The Intouchables, also known as Untouchable (UK), is a 2011 French buddy comedy-drama film directed by Olivier Nakache & Éric Toledano. It stars François Cluzet and Omar Sy. Nine weeks after its release in France on 2 November 2011, it became the second biggest box office hit in France, just behind the 2008 film Welcome to the Sticks.', 14, 13);

-- --------------------------------------------------------

--
-- Table structure for table `publisher`
--

CREATE TABLE `publisher` (
  `publisher_id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `address` varchar(60) NOT NULL,
  `size_of_publisher` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `publisher`
--

INSERT INTO `publisher` (`publisher_id`, `name`, `address`, `size_of_publisher`) VALUES
(1, 'Harper Collins', 'New York City, New York, United States', 'Large'),
(2, 'Profile Books', 'London, United Kingdom', 'Medium'),
(3, 'Penguin Books', 'City of Westminster, London, United Kingdom', 'Large'),
(4, 'Atlantic Records', 'Los Angeles, California, USA', 'Large'),
(5, 'Domino Recording Group', 'London, United Kingdom', 'Medium'),
(6, 'Boy Better Know', 'London, United Kingdom', 'Small'),
(7, 'RCA Records', 'New York, USA', 'Large'),
(8, 'Fiction Records', 'London, United Kingdom', 'Medium'),
(9, 'BBC', 'Salford, Manchester, United Kingdom', 'Large'),
(10, 'Universal', 'Hollywood, USA', 'Large'),
(11, 'HBO', 'New York, USA', 'Large'),
(12, 'EMI Films', 'London, United Kingdom', 'Small'),
(13, 'Gaumont ', 'Paris, France', 'Small'),
(14, 'Penguin Classics', 'London, United Kingdom', 'Medium');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userId` int(11) NOT NULL,
  `userName` varchar(100) NOT NULL,
  `userEmail` varchar(60) NOT NULL,
  `userPass` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userId`, `userName`, `userEmail`, `userPass`) VALUES
(1, 'Dan', 'dan@dan.com', '789e2330321e928f2a126585191e39bbc5d8c03b147b5e0f563e729b285b0661'),
(2, 'Testy McTestface', 'test@gmail.com', 'd3613b478a6d44c7d7c9cccda9dcf94b9fea0ffc832aa4ea2ae84cbd4da69ef5');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`author_id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`book_id`),
  ADD UNIQUE KEY `fk_publisher_id` (`fk_publisher_id`),
  ADD UNIQUE KEY `fk_author_id` (`fk_author_id`) USING BTREE;

--
-- Indexes for table `cds`
--
ALTER TABLE `cds`
  ADD PRIMARY KEY (`CD_id`),
  ADD UNIQUE KEY `fk_publisher_id` (`fk_publisher_id`),
  ADD UNIQUE KEY `fk_author_id` (`fk_author_id`);

--
-- Indexes for table `dvds`
--
ALTER TABLE `dvds`
  ADD PRIMARY KEY (`DVD_id`),
  ADD UNIQUE KEY `fk_publisher_id` (`fk_publisher_id`),
  ADD UNIQUE KEY `fk_author_id` (`fk_author_id`);

--
-- Indexes for table `publisher`
--
ALTER TABLE `publisher`
  ADD PRIMARY KEY (`publisher_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `author`
--
ALTER TABLE `author`
  MODIFY `author_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `cds`
--
ALTER TABLE `cds`
  MODIFY `CD_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `dvds`
--
ALTER TABLE `dvds`
  MODIFY `DVD_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `publisher`
--
ALTER TABLE `publisher`
  MODIFY `publisher_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `books_ibfk_1` FOREIGN KEY (`fk_publisher_id`) REFERENCES `publisher` (`publisher_id`),
  ADD CONSTRAINT `books_ibfk_2` FOREIGN KEY (`fk_author_id`) REFERENCES `author` (`author_id`);

--
-- Constraints for table `cds`
--
ALTER TABLE `cds`
  ADD CONSTRAINT `cds_ibfk_1` FOREIGN KEY (`fk_publisher_id`) REFERENCES `publisher` (`publisher_id`),
  ADD CONSTRAINT `cds_ibfk_2` FOREIGN KEY (`fk_author_id`) REFERENCES `author` (`author_id`);

--
-- Constraints for table `dvds`
--
ALTER TABLE `dvds`
  ADD CONSTRAINT `dvds_ibfk_1` FOREIGN KEY (`fk_publisher_id`) REFERENCES `publisher` (`publisher_id`),
  ADD CONSTRAINT `dvds_ibfk_2` FOREIGN KEY (`fk_author_id`) REFERENCES `author` (`author_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
