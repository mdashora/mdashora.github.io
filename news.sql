-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 11, 2018 at 08:20 PM
-- Server version: 5.5.16
-- PHP Version: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `news`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `cat_id` int(10) NOT NULL,
  `cat_title` varchar(255) NOT NULL,
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(1, 'Gaming'),
(2, 'Technology'),
(3, 'Health'),
(4, 'Sports'),
(5, 'Current Events'),
(6, 'Entertainment');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
  `comment_id` int(10) NOT NULL,
  `post_id` int(10) NOT NULL,
  `comment_name` varchar(255) NOT NULL,
  `comment_email` varchar(255) NOT NULL,
  `comment_text` text NOT NULL,
  `comment_date` varchar(255) NOT NULL,
  `status` text NOT NULL,
  PRIMARY KEY (`comment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comment_id`, `post_id`, `comment_name`, `comment_email`, `comment_text`, `comment_date`, `status`) VALUES
(1, 3, 'steve', 'ondiekistephen5@gmail.com', 'Great! Keep it up!', 'Sartuday 14th 2016', 'unapprove'),
(4, 2, 'Dickson', 'dickson@yahoo.com', 'VR is the future.', 'Sunday 15th 2016', 'unapprove'),
(5, 2, 'Alex', 'alex@gmail.com', 'Way to go VR !!!!', 'Friday 13th 2016', 'unapprove'),
(7, 1, 'Julia Korongo', 'jkorongo@gmail.com', 'Can''t wait to buy PS4 pro.', 'Sunday 15th 2016', 'unapprove');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
  `post_id` int(10) NOT NULL,
  `category_id` int(10) NOT NULL,
  `post_title` varchar(255) NOT NULL,
  `post_date` text NOT NULL,
  `post_author` varchar(255) NOT NULL,
  `post_keywords` text NOT NULL,
  `post_image` text NOT NULL,
  `post_content` text NOT NULL,
  `post_video` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `category_id`, `post_title`, `post_date`, `post_author`, `post_keywords`, `post_image`, `post_content`, `post_video`) VALUES
(2, 2, 'Oculus shows how much VR has evolved at Sundance', '14-05-16', 'steve ondieki', 'oculus vr playstation', 'newarticle1.jpg', 'Two years into the rise of modern virtual reality, following the launch of the Oculus Rift, HTC Vive and PlayStation VR, the medium might seem as if it''s losing a bit of its luster. Headsets are cheaper and easier to use, especially with new Windows Mixed Reality devices, yet VR experiences are still a mixed bag. That''s understandable, since we''re stepping into an entirely new art form, but consumer adoption depends on VR creators figuring out their storytelling language soon.\r\n\r\nLuckily, that seems to be a trend at the Sundance New Frontier Exhibition this year. We''re moving beyond the initial "wow factor" and toward more mature experiences that take advantage of VR''s unique ability to immerse you.\r\n\r\n"When VR started, everyone started these lists of things you can''t do," Oculus creative producer Yelena Rachitsky told Engadget. "They always talked about explaining who you have to be as an audience. For example, you have to be a dead person, or someone who came out of a coma. The thing with all of these [new experiences] ... each one has you as a role of the audience all being completely different from each other, but they all work in their own way... I think creators are getting that much better at that blend of interactivity and storytelling."\r\n', ''),
(1, 1, 'PS4 Pro will make more games look better on older TVs', '14-05-16', 'Erick Ondieki', 'playstation gaming sony', 'newarticle3.jpg', 'The next PlayStation 4 firmware update will make the PS4 Pro a lot more like the Xbox One X. No, I don''t mean the patch will malevolently shrink the breadth of Sony''s first-party games lineup next time the console is in sleep mode, either. Instead, software version 5.50 adds a supersampling mode to the PS4 Pro.<br>\r\n\r\nOn the Xbox One X, that translates to higher frame-rates, improved visual clarity and more detailed graphics on select titles when the console is connected to a 1080p TV. Here''s how Sony describes the situation on PS4 Pro: "Certain games already have the ''supersampling'' benefits as part of their ''PS4 Pro Enhanced'' feature set, but this new mode can enhance the experience for those games that don''t already have the feature."<br>\r\n\r\nJust hop into the system settings menu to activate it and you should be good to go.<br>\r\n\r\nThere are a handful of other new features that every PlayStation owner will benefit from as well. Once the software goes live for everyone, you''ll finally be able to change your PS4 wallpaper to an image from a USB stick, and do the same to customize a tournament or Team page.<br>\r\n\r\nA few changes are coming to music playback too. Music controls for Spotify, the media player and USB music player apps are coming to the quick menu. More than that, some PS Now games will let you listen to your own tunes while streaming a classic title from Sony''s servers.<br>\r\n\r\nThere are a few other quality of life additions, like better organization for the game library and child play-time limits in the "Keiji" update, too. Xbox One added play limits last year with the Creators Update, and the One X hardware has been supersampling games since last November. Outside of a few games like Horizon: Zero Dawn, PS4 Pro owners without a 4K TV on the other hand, have been left in a lurch in terms of supersampling since the system was released in late 2016. Reset Era has a list of games that purportedly support supersampling.<br>\r\n\r\nIt''s a little strange seeing Sony follow Microsoft''s lead considering how far behind the Xbox One is in sales, of course. But, maybe, that means we''ll see a PS4 Pro with an Ultra HD Blu-ray drive in it announced this year. We can hope, right?', ''),
(3, 3, 'EPA approves ''good guy'' mosquitoes to battle Zika', '14-05-16', 'Wanyama Felix', 'Zika mosquitoes MosquitoMate', 'newarticle2.jpg', 'Soon, a startup called MosquitoMate will be releasing a plethora of mosquitoes across the US -- not to start a bug-pocalypse, but to prevent it. The US Environmental Protection Agency has just approved the use of the startup''s mosquitoes as biopesticide against their Zika-, dengue- and other disease-carrying counterparts in 20 states and Washington DC. You see, MosquitoMate''s insects carry a common bacterium called Wolbachia pipientis that infects a wide range of invertebrates. By releasing them into the wild, they can spread bacteria to the wild population of Aedes albopictus or Asian tiger mosquitoes.<br>\r\n\r\nThe company will raise their bugs in the lab, separate males and females and then release the males, which don''t bite, into treatment areas. When the bacteria-carrying males mate with wild females, their eggs don''t hatch, because Wolbachia prevents the paternal chromosome from forming properly. Since the species only lives 30 to 40 days in the wild, preventing them from reproducing can effectively wipe out local populations.<br>\r\n\r\nMosquitoMate only got permission to release what they''re calling the "Zap males" in 20 states and DC, because those are the places most similar in temperature and precipitation to Kentucky, New York and California where it held its tests. It plans to sell its "good guy bugs" to hotels, establishments and even homeowners through a summer-long subscription. While it''s unfortunate that most of the southeastern states are not included in the list, MosquitoMate is hoping to be able to release a different species all over the US.<br>\r\n\r\nEarlier this year, the startup unleashed 20,000 Wolbachia-carrying male Aedes aegypti mosquitoes in the Florida Keys as part of a trial. The fact that it was able to conduct tests in the Keys is promising enough, considering a UK firm called Oxitec failed to secure permission to test its genetically modified moquitoes in the area. Nevertheless, the EPA still has to approve MosquitoMate''s application to be able to use the species, a deadly vector of Zika, dengue and yellow fever, as a biopesticide nationwide.', ''),
(4, 4, 'TBD', 'TBD', 'TBD', 'TBD', 'TBD', 'TBD', ''),
(5, 5, 'TBD', 'TBD', 'TBD', 'TBD', 'TBD', 'TBD', ''),
(6, 6, 'TBD', 'TBD', 'TBD', 'TBD', 'TBD', 'TBD', '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
