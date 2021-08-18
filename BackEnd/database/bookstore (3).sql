-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 17, 2021 at 07:50 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bookstore`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `Id` int(11) NOT NULL,
  `Name` varchar(40) NOT NULL,
  `CategoryId` int(11) NOT NULL,
  `BookDescription` varchar(1000) NOT NULL,
  `AuthorName` varchar(110) NOT NULL,
  `Publisher` varchar(100) NOT NULL,
  `PublishingYear` year(4) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `SellerId` int(11) NOT NULL,
  `Price` int(11) NOT NULL,
  `BookCondition` varchar(10) NOT NULL,
  `Language` varchar(32) NOT NULL,
  `Rating` double(3,2) NOT NULL,
  `BookSampleImage1` varchar(1500) NOT NULL,
  `BookSampleImage2` varchar(1500) NOT NULL,
  `BookSampleImage3` varchar(1500) NOT NULL,
  `ShopID` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`Id`, `Name`, `CategoryId`, `BookDescription`, `AuthorName`, `Publisher`, `PublishingYear`, `Quantity`, `SellerId`, `Price`, `BookCondition`, `Language`, `Rating`, `BookSampleImage1`, `BookSampleImage2`, `BookSampleImage3`, `ShopID`) VALUES
(1, 'The Walking Dead: Compendium One', 4, 'Introducing the first eight volumes of the fan-favorite, New York Times Best Seller series collected into one massive paperback collection! Collects The Walking Dead #1-48. This is the perfect collection for any fan of the Emmy Award-winning television series on AMC: over one thousand pages chronicling the beginning of Robert Kirkman\'s Eisner Award-winning continuing story of survival horror- from Rick Grimes\' waking up alone in a hospital, to him and his family seeking solace on Hershel\'s farm, and the controversial introduction of Woodbury despot: The Governor. In a world ruled by the dead, we are finally forced to finally start living.', 'Robert Kirkman', 'Image Comics', 2009, 200, 1, 110, 'New', '', 0.00, 'https://images-na.ssl-images-amazon.com/images/I/51S12ntkIbL._SX323_BO1,204,203,200_.jpg', '', '', '1'),
(2, 'Life of Pi', 2, 'The son of a zookeeper, Pi Patel has an encyclopedic knowledge of animal behavior and a fervent love of stories. When Pi is sixteen, his family emigrates from India to North America aboard a Japanese cargo ship, along with their zoo animals bound for new homes.  The ship sinks. Pi finds himself alone in a lifeboat, his only companions a hyena, an orangutan, a wounded zebra, and Richard Parker, a 450-pound Bengal tiger. Soon the tiger has dispatched all but Pi, whose fear, knowledge, and cunning allow him to coexist with Richard Parker for 227 days while lost at sea. When they finally reach the coast of Mexico, Richard Parker flees to the jungle, never to be seen again.', 'Yann Martel', 'Mariner Books', 2003, 100, 1, 1000, 'new', 'English', 0.00, 'https://images-na.ssl-images-amazon.com/images/I/51rxEvLljUL._SX322_BO1,204,203,200_.jpg', 'https://images-na.ssl-images-amazon.com/images/I/81wzz4ng3LL.jpg', 'https://images-na.ssl-images-amazon.com/images/I/416EkPf1wCL.jpg', '1'),
(3, 'The Three Musketeers', 2, 'The Three Musketeers is a novel by Alexandre Dumas. Set in the 17th century, it recounts the adventures of a young man named d\'Artagnan after he leaves home to travel to Paris, to join the Musketeers of the Guard. D\'Artagnan is not one of the musketeers of the title; those being his friends Athos, Porthos and Aramis, inseparable friends who live by the motto \"all for one, one for all\", a motto which is first put forth by d\'Artagnan. In genre, The Three Musketeers is primarily a historical novel and adventure. However Dumas also frequently works into the plot various injustices, abuses and absurdities of the ancien regime, giving the novel an additional political aspect at a time when the debate in France between republicans and monarchists was still fierce. The story was first serialized from March to July 1844, during the July monarchy, four years before the French Revolution of 1848 violently established the second Republic. ', 'Alexandre Dumas', 'CreateSpace Independent Publishing Platform', 2014, 200, 1, 1100, 'New', 'English', 0.00, 'https://images-na.ssl-images-amazon.com/images/I/41TxXqToCCL.jpg', 'https://images-na.ssl-images-amazon.com/images/I/517tYdXCW7L.jpg', '', '1'),
(4, 'To Kill a Mockingbird', 3, 'One of the most cherished stories of all time, To Kill a Mockingbird has been translated into more than forty languages, sold more than forty million copies worldwide, served as the basis for an enormously popular motion picture, and was voted one of the best novels of the twentieth century by librarians across the country. A gripping, heart-wrenching, and wholly remarkable tale of coming-of-age in a South poisoned by virulent prejudice, it views a world of great beauty and savage inequities through the eyes of a young girl, as her father—a crusading local lawyer—risks everything to defend a black man unjustly accused of a terrible crime.', 'Harper Lee', 'Harper Perennial', 2002, 210, 1, 1300, 'new', 'English', 0.00, 'https://images-na.ssl-images-amazon.com/images/I/51IXWZzlgSL._SX330_BO1,204,203,200_.jpg', 'https://images-na.ssl-images-amazon.com/images/I/71pQENJZ27L.jpg', 'https://images-na.ssl-images-amazon.com/images/I/61s0HVfmm0L.jpg', '1'),
(5, 'Little Women: 150th Anniversary Edition', 3, 'For generations, children around the world have come of age with Louisa May Alcott\'s March girls: hardworking eldest sister Meg, headstrong, impulsive Jo, timid Beth, and precocious Amy. With their father away at war, and their loving mother Marmee working to support the family, the four sisters have to rely on one another for support as they endure the hardships of wartime and poverty. We witness the sisters growing up and figuring out what role each wants to play in the world, and, along the way, join them on countless unforgettable adventures.', 'Louisa May Alcott', 'Little, Brown and Company', 2018, 120, 1, 1400, 'new', 'English', 0.00, 'https://m.media-amazon.com/images/P/0316489271.01._SCLZZZZZZZ_SX500_.jpg', '', '', '1'),
(6, 'Beloved', 3, 'Sethe, its protagonist, was born a slave and escaped to Ohio, but eighteen years later she is still not free. She has too many memories of Sweet Home, the beautiful farm where so many hideous things happened. And Sethe’s new home is haunted by the ghost of her baby, who died nameless and whose tombstone is engraved with a single word: Beloved. Filled with bitter poetry and suspense as taut as a rope, Beloved is a towering achievement.', 'Toni Morrison', 'Vintage', 2004, 210, 1, 1300, 'new', 'English', 0.00, 'https://images-na.ssl-images-amazon.com/images/I/41Rdzbiqh7L._SX322_BO1,204,203,200_.jpg', '', '', '1'),
(7, 'Watchmen ', 4, 'Considered the greatest graphic novel in the history of the medium, the Hugo Award-winning story chronicles the fall from grace of a group of superheroes plagued by all-too-human failings. Along the way, the concept of the superhero is dissected as an unknown assassin stalks the erstwhile heroes.\r\n\r\nThis edition of Watchmen, the groundbreaking series from Alan Moore, the award-winning author of V For Vendetta and Batman: The Killing Joke, features art from industry legend Dave Gibbons, with high-quality, recolored pages found in Watchmen: Absolute Edition.', 'Alan Moore', 'DC Comics', 2019, 210, 1, 1000, 'new', 'English', 0.00, 'https://images-na.ssl-images-amazon.com/images/I/410D4H0IqjL._SX318_BO1,204,203,200_.jpg', '', '', '2'),
(8, 'The Night Fire (A Renée Ballard and Harr', 5, 'Back when Harry Bosch was just a rookie homicide detective, he had an inspiring mentor who taught him to take the work personally and light the fire of relentlessness for every case. Now that mentor, John Jack Thompson, is dead, and his widow gives Bosch a murder book, one that Thompson took with him when he left the LAPD twenty years before -- the unsolved killing of a troubled young man.', 'Michael Connelly', 'Little, Brown and Company', 2019, 210, 1, 1350, 'new', 'English', 0.00, 'https://images-na.ssl-images-amazon.com/images/I/41zqZwXZ-WL._SX325_BO1,204,203,200_.jpg', '', '', '2'),
(9, 'The Adventures of Sherlock Holmes', 5, 'The Adventures of Sherlock Holmes is a collection of twelve stories written by Arthur Conan Doyle, featuring his famous detective. Venture back in time to Victorian London to join literature\'s greatest detective team — the brilliant Sherlock Holmes and his devoted assistant, Dr. Watson — as they investigate a dozen of their best-known cases. Originally published in 1892, this is the first and best collection of stories about the legendary sleuth. It\'s also the least expensive edition available. Featured tales include several of the author\'s personal favorites: \"A Scandal in Bohemia\" — in which a king is blackmailed by a former lover and Holmes matches wits with the only woman to attract his open admiration — plus \"The Speckled Band,\"', 'Sir Arthur Conan Doyle', 'CreateSpace Independent Publishing Platform', 2020, 100, 1, 800, 'new', 'English', 0.00, 'https://images-na.ssl-images-amazon.com/images/I/516dZVA7rQL._SX346_BO1,204,203,200_.jpg', '', '', '2'),
(10, 'The Adventures of Sherlock Holmes', 5, 'The Adventures of Sherlock Holmes is a collection of twelve stories written by Arthur Conan Doyle, featuring his famous detective. Venture back in time to Victorian London to join literature\'s greatest detective team — the brilliant Sherlock Holmes and his devoted assistant, Dr. Watson — as they investigate a dozen of their best-known cases. Originally published in 1892, this is the first and best collection of stories about the legendary sleuth. It\'s also the least expensive edition available. Featured tales include several of the author\'s personal favorites: \"A Scandal in Bohemia\" — in which a king is blackmailed by a former lover and Holmes matches wits with the only woman to attract his open admiration — plus \"The Speckled Band,\"', 'Sir Arthur Conan Doyle', 'CreateSpace Independent Publishing Platform', 2020, 50, 2, 1000, 'new', 'English', 4.20, 'https://images-na.ssl-images-amazon.com/images/I/516dZVA7rQL._SX346_BO1,204,203,200_.jpg', '', '', '3');

-- --------------------------------------------------------

--
-- Table structure for table `book_categories`
--

CREATE TABLE `book_categories` (
  `CategoryId` int(11) NOT NULL,
  `CategoryName` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `book_categories`
--

INSERT INTO `book_categories` (`CategoryId`, `CategoryName`) VALUES
(1, 'Science-Fiction'),
(2, 'Action and Adventure'),
(3, 'Classics'),
(4, 'Comic Book'),
(5, 'Detective and Mystery'),
(6, 'Fantasy'),
(7, 'Historical Fiction'),
(8, 'Horror');

-- --------------------------------------------------------

--
-- Table structure for table `chattingmsg`
--

CREATE TABLE `chattingmsg` (
  `ID` int(254) NOT NULL,
  `Name` varchar(500) DEFAULT NULL,
  `UserID` int(254) DEFAULT NULL,
  `Msg` varchar(500) DEFAULT NULL,
  `Rank` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `chattingmsg`
--

INSERT INTO `chattingmsg` (`ID`, `Name`, `UserID`, `Msg`, `Rank`) VALUES
(1, 'b', 2, 'bbbbbbbb', 'Moderator'),
(2, 'a', 1, 'a@a.com', 'Admin'),
(3, 'a', 4, 'aa', 'Admin'),
(4, 'a', 4, 'yoo', 'Admin'),
(5, 'a', 4, 'yoo', 'Admin'),
(6, 'a', 4, 'yoojhfg', 'Admin'),
(7, 'a', 4, 'fffffffffffffffffffffffffggdrtghgfsd gsdhs af', 'Admin'),
(8, 'a', 4, 'd', 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `ID` int(11) NOT NULL,
  `Name` varchar(500) DEFAULT NULL,
  `Email` varchar(500) DEFAULT NULL,
  `Msg` varchar(5000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`ID`, `Name`, `Email`, `Msg`) VALUES
(1, 'Zahin Hasan', 'azahinhasan@gmail.com', 'Hello'),
(2, 'Zahin Hasan', 'azahinhasan@gmail.com', 'Hello'),
(3, 'Zahin Hasan', 'azahinhasan@gmail.com', 'aa'),
(4, 'Zahin Hasan', 'azahinhasan@gmail.com', 'fagf'),
(5, 'Zahin Hasan', 'azahinhasan@gmail.com', 'adsad');

-- --------------------------------------------------------

--
-- Table structure for table `earnings_data`
--

CREATE TABLE `earnings_data` (
  `ID` int(11) NOT NULL,
  `January` varchar(500) DEFAULT NULL,
  `February` varchar(500) DEFAULT NULL,
  `March` varchar(500) DEFAULT NULL,
  `April` varchar(500) DEFAULT NULL,
  `May` varchar(500) DEFAULT NULL,
  `June` varchar(500) DEFAULT NULL,
  `July` varchar(500) DEFAULT NULL,
  `August` varchar(500) DEFAULT NULL,
  `September` varchar(500) DEFAULT NULL,
  `October` varchar(500) DEFAULT NULL,
  `Year` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `earnings_data`
--

INSERT INTO `earnings_data` (`ID`, `January`, `February`, `March`, `April`, `May`, `June`, `July`, `August`, `September`, `October`, `Year`) VALUES
(1, '500', '400', '1000', '1200', '1850', '1251', '1124', '0', '0', '0', '2021'),
(2, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2022'),
(3, '5000', '1000', '5400', '4500', '10014', '8200', '9520', '4501', '8524', '7850', '2020');

-- --------------------------------------------------------

--
-- Table structure for table `employeesalary`
--

CREATE TABLE `employeesalary` (
  `ID` int(50) NOT NULL,
  `userId` varchar(500) DEFAULT NULL,
  `userName` varchar(500) DEFAULT NULL,
  `Amount` varchar(500) DEFAULT NULL,
  `January` varchar(500) DEFAULT NULL,
  `February` varchar(500) DEFAULT NULL,
  `March` varchar(500) DEFAULT NULL,
  `April` varchar(500) DEFAULT NULL,
  `May` varchar(500) DEFAULT NULL,
  `June` varchar(500) DEFAULT NULL,
  `July` varchar(500) DEFAULT NULL,
  `August` varchar(500) DEFAULT NULL,
  `September` varchar(500) DEFAULT NULL,
  `October` varchar(500) DEFAULT NULL,
  `Year` int(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employeesalary`
--

INSERT INTO `employeesalary` (`ID`, `userId`, `userName`, `Amount`, `January`, `February`, `March`, `April`, `May`, `June`, `July`, `August`, `September`, `October`, `Year`) VALUES
(1, '10', 'Test', '500', 'false', 'true', 'true', 'true', 'true', NULL, 'true', 'true', NULL, NULL, 2021),
(32, '10', 'Test', '500', 'true', 'false', 'true', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2022),
(33, '11', 'Zahin Hasan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(34, '12', 'dede', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(35, '13', 'demo', '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(36, '14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(37, '15', 'demo@', '50', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(38, '16', 'bbb', '500', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40, '17', 'Montu', '50', NULL, 'false', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2021),
(41, '17', 'Montu', '50', NULL, NULL, NULL, 'true', NULL, NULL, NULL, NULL, NULL, NULL, 2022),
(42, '18', 'Zahin Hasan', '80', 'false', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2021),
(43, '18', 'Zahin Hasan', '80', 'true', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2022),
(44, '19', 'Montu Ali', '10000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2021),
(45, '20', 'gg', '599', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2021),
(46, '21', 'Zahin Hasan', '500', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2021),
(47, '22', 'Test123', '5000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2021),
(48, '23', 'Zahin Hasan', '1000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2021),
(49, '24', 'Zahin Hasan', '5000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2021),
(50, '15', 'demo@', '50', NULL, 'false', 'true', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2021),
(51, '25', 'tt', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2021),
(52, '26', 'ttttttttt', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2021),
(53, '27', 'rttr', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2021),
(54, '30', 'dfadsfsan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2021),
(55, '35', 'ddfsfd', NULL, 'true', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2021);

-- --------------------------------------------------------

--
-- Table structure for table `loginhistory`
--

CREATE TABLE `loginhistory` (
  `ID` int(11) NOT NULL,
  `IP` varchar(500) DEFAULT NULL,
  `UserID` varchar(500) DEFAULT NULL,
  `Location` varchar(500) DEFAULT NULL,
  `Time` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `loginhistory`
--

INSERT INTO `loginhistory` (`ID`, `IP`, `UserID`, `Location`, `Time`) VALUES
(6, '103.87.213.244', '4', 'Dhaka,Bangladesh', '2021-08-17 17:35:05');

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `ID` int(254) NOT NULL,
  `reporter` int(254) DEFAULT NULL,
  `gotReported` int(254) DEFAULT NULL,
  `text` varchar(5000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reports`
--

INSERT INTO `reports` (`ID`, `reporter`, `gotReported`, `text`) VALUES
(1, 1, 2, 'Bad Person'),
(2, 3, 2, 'Bad Person'),
(3, 2, 1, 'I don\'t like him');

-- --------------------------------------------------------

--
-- Table structure for table `shop`
--

CREATE TABLE `shop` (
  `Shop_id` int(200) NOT NULL,
  `Shop_Name` varchar(500) DEFAULT NULL,
  `Shopper_Name` varchar(500) DEFAULT NULL,
  `Shop_Address` varchar(500) DEFAULT NULL,
  `Verified_Status` varchar(500) DEFAULT NULL,
  `Shop_Licence` varchar(500) DEFAULT NULL,
  `Phone_No` varchar(500) DEFAULT NULL,
  `User_Id` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `shop`
--

INSERT INTO `shop` (`Shop_id`, `Shop_Name`, `Shopper_Name`, `Shop_Address`, `Verified_Status`, `Shop_Licence`, `Phone_No`, `User_Id`) VALUES
(1, 'abc', 'abc', 'abc', 'true', '123', '123', '1'),
(2, 'ghj', 'ghj', 'ghj', 'false', '555', '555', '2');

-- --------------------------------------------------------

--
-- Table structure for table `shop_licence`
--

CREATE TABLE `shop_licence` (
  `ID` int(244) NOT NULL,
  `Shop_Name` varchar(500) NOT NULL,
  `Shopper_Name` varchar(500) NOT NULL,
  `Shop_Licence` varchar(500) NOT NULL,
  `Shop_Address` varchar(500) DEFAULT NULL,
  `Phone` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `shop_licence`
--

INSERT INTO `shop_licence` (`ID`, `Shop_Name`, `Shopper_Name`, `Shop_Licence`, `Shop_Address`, `Phone`) VALUES
(1, 'abc', 'abc', '123', 'abc', '123'),
(2, 'bcd', 'vcd', '564', 'vcd', '564');

-- --------------------------------------------------------

--
-- Table structure for table `subscriptionplans`
--

CREATE TABLE `subscriptionplans` (
  `ID` int(50) NOT NULL,
  `planName` varchar(500) DEFAULT NULL,
  `category` varchar(500) DEFAULT NULL,
  `bookPost` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `subscriptionusers`
--

CREATE TABLE `subscriptionusers` (
  `ID` int(244) NOT NULL,
  `premium` varchar(500) DEFAULT NULL,
  `standard` varchar(500) DEFAULT NULL,
  `userID` int(245) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subscriptionusers`
--

INSERT INTO `subscriptionusers` (`ID`, `premium`, `standard`, `userID`) VALUES
(1, 'false', 'true', 1),
(2, 'true', 'false', 2),
(3, 'true', 'false', 3);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `ID` int(50) NOT NULL,
  `Name` varchar(500) DEFAULT NULL,
  `Email` varchar(500) DEFAULT NULL,
  `Rank` varchar(550) DEFAULT NULL,
  `DOB` varchar(500) DEFAULT NULL,
  `Address` varchar(500) DEFAULT NULL,
  `ProPic` varchar(500) DEFAULT NULL,
  `BanStatus` varchar(50) DEFAULT NULL,
  `Password` varchar(500) DEFAULT NULL,
  `Premium` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`ID`, `Name`, `Email`, `Rank`, `DOB`, `Address`, `ProPic`, `BanStatus`, `Password`, `Premium`) VALUES
(1, 'a', 'a@a.com', 'Admin', '12-12-1999', 'null', 'abc.jpg', 'false', 'a', NULL),
(2, 'b', 'b', 'Moderator', '21-21-21', 'b', 'abc.jpg', 'false', 'b', NULL),
(3, 'c', 'c', 'Admin', '2021-06-28', 'c', 'abc.jpg', 'true', 'p', 'true'),
(4, 'a', 'a', 'Admin', '2021-06-24', 'a', 'abc.jpg', 'false', 'aa', NULL),
(6, 'aa', 'a2', 'Admin', NULL, 'aa', 'abc.jpg', 'false', 'p', NULL),
(7, 'aaa', 'aaa', 'Admin', '2021-06-30', 'aaa', 'abc.jpg', 'false', 'p', NULL),
(8, 'Zahin Hasan', 'aaaaa', 'Admin', NULL, 'Dhaka', 'abc.jpg', 'false', 'p', NULL),
(9, 'Zahin Hasan', 'azahinhasan@gmail.com', 'Admin', NULL, 'Dhaka', 'abc.jpg', 'false', 'p', NULL),
(10, 'Test', 'userId@gmail.com', 'Moderator', '2021-06-08', 'Dhaka', 'abc.jpg', 'false', 'p', NULL),
(11, 'Zahin Hasan', '54654@gmail.com', 'Moderator', '2021-06-14', 'Dhaka', 'abc.jpg', 'false', 'p', NULL),
(12, 'dede', 'dede@dede.com', 'Admin', '2021-06-16', 'dede', 'wp9319391-battlefield-2042-wallpapers.jpg', 'false', 'p', NULL),
(13, 'demo', 'demo@gmail.com', 'Moderator', '2021-06-09', 'demo', 'wp9319391-battlefield-2042-wallpapers.jpg', 'false', 'p', NULL),
(14, NULL, NULL, 'Admin', NULL, NULL, 'wp9324594-battlefield-2042-hd-wallpapers.jpg', 'false', 'p', NULL),
(15, 'demo@', 'demo@', 'Admin', '2021-06-22', 'demo@', 'wp9319391-battlefield-2042-wallpapers.jpg', NULL, 'p', NULL),
(16, 'bbb', 'bbb@gmail.com', 'Admin', '2021-07-01', 'Dhaka', 'SharefbdScreenshot.jpg', NULL, 'p', NULL),
(17, 'Montu', 'Montu@', 'Admin', '2021-06-17', 'Dhaka', 'SharedScreenshot.jpg', 'false', 'p', NULL),
(18, 'Zahin Hasan', 'fff', 'Moderator', '2021-06-10', 'Dhaka', '1151170.jpg', 'false', 'p', NULL),
(19, 'Montu Ali', 'Montu Ali@gmail.com', 'Admin', '2021-06-10', 'Dhaka', '1151171.jpg', 'false', '61Q253762747693', NULL),
(20, 'gg', 'gg', 'Admin', '2021-06-16', 'gg', '1151027.jpg', 'false', '29452F995430398', NULL),
(21, 'Zahin Hasan', 'fff@gmail.com', 'Admin', '2021-06-17', 'Dhaka', '1151170.jpg', 'false', 'O25618507124926', NULL),
(22, 'Test123', 'Test123@Test123.com', 'Moderator', '2021-06-03', 'Test123', 'SharefbdScreenshot.jpg', 'true', '89736815693V673', NULL),
(23, 'Zahin Hasan', 'azahinhlasan@gmail.com', 'Admin', '2021-07-15', 'Dhaka', 'CamScanner 06-02-2021 20.01_1.jpg', '0', '0U9806694459812', NULL),
(24, 'Zahin Hasan', 'azahinha111san@gmail.com', 'Admin', '2021-07-29', 'Dhaka', '1151171.jpg', '0', 'K21707946769886', NULL),
(25, 'tt', 'tt', 'Moderator', 'tt', 'tt', '1151171.jpg', '0', '0Q2981803968448', NULL),
(26, 'ttttttttt', 'tttttttt@gmail.com', 'Admin', '2021-08-20', 'Dhaka', 'SharefbdScreenshot.jpg', '0', '346514X30671508', NULL),
(27, 'rttr', 'tret@gmail.com', 'Admin', '2021-08-12', 'Dhaka', 'SharefbdScreenshot.jpg', '0', '86137838446J433', NULL),
(30, 'dfadsfsan', 'fdf@gmail.com', 'Admin', '2021-08-18', 'Dhaka', '1151027.jpg', '0', '533645Y17651554', NULL),
(35, 'ddfsfd', 'fasddsf@gmail.com', 'Moderator', '12-12-1999', 'Dhaka', '1151027.jpg', '0', '76845222482814I', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `book_categories`
--
ALTER TABLE `book_categories`
  ADD PRIMARY KEY (`CategoryId`);

--
-- Indexes for table `chattingmsg`
--
ALTER TABLE `chattingmsg`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `earnings_data`
--
ALTER TABLE `earnings_data`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `employeesalary`
--
ALTER TABLE `employeesalary`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `loginhistory`
--
ALTER TABLE `loginhistory`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_report` (`gotReported`);

--
-- Indexes for table `shop`
--
ALTER TABLE `shop`
  ADD PRIMARY KEY (`Shop_id`);

--
-- Indexes for table `shop_licence`
--
ALTER TABLE `shop_licence`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `subscriptionplans`
--
ALTER TABLE `subscriptionplans`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `subscriptionusers`
--
ALTER TABLE `subscriptionusers`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Email` (`Email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `book_categories`
--
ALTER TABLE `book_categories`
  MODIFY `CategoryId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `chattingmsg`
--
ALTER TABLE `chattingmsg`
  MODIFY `ID` int(254) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `earnings_data`
--
ALTER TABLE `earnings_data`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `employeesalary`
--
ALTER TABLE `employeesalary`
  MODIFY `ID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `loginhistory`
--
ALTER TABLE `loginhistory`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `ID` int(254) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `shop`
--
ALTER TABLE `shop`
  MODIFY `Shop_id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `shop_licence`
--
ALTER TABLE `shop_licence`
  MODIFY `ID` int(244) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `subscriptionplans`
--
ALTER TABLE `subscriptionplans`
  MODIFY `ID` int(50) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subscriptionusers`
--
ALTER TABLE `subscriptionusers`
  MODIFY `ID` int(244) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
