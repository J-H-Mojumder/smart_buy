-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 21, 2020 at 04:33 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `demo_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `aldi`
--

CREATE TABLE `aldi` (
  `Product_ID` int(11) NOT NULL,
  `Product_Name` varchar(150) NOT NULL,
  `Price` float NOT NULL,
  `Unit_Price` varchar(50) NOT NULL,
  `Category` varchar(150) NOT NULL,
  `Image_Link` varchar(500) NOT NULL,
  `Product_Link` varchar(500) NOT NULL,
  `Shop_Name` varchar(15) NOT NULL,
  `Unit` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `coles`
--

CREATE TABLE `coles` (
  `Product_ID` int(11) NOT NULL,
  `Product_Name` varchar(150) NOT NULL,
  `Price` float NOT NULL,
  `Unit_Price` varchar(50) NOT NULL,
  `Category` varchar(150) NOT NULL,
  `Image_Link` varchar(500) NOT NULL,
  `Product_Link` varchar(500) NOT NULL,
  `Shop_Name` varchar(15) NOT NULL,
  `Unit` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(150) NOT NULL,
  `user_email` varchar(50) NOT NULL,
  `user_pass` varchar(100) NOT NULL,
  `user_contact_number` varchar(100) NOT NULL,
  `user_address` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `user_email`, `user_pass`, `user_contact_number`, `user_address`) VALUES
(1, 'Jahidul Hassan', 'jhmojumder97@gmail.com', '12345', '01873193064', '8/4 ka, north bashabo');

-- --------------------------------------------------------

--
-- Table structure for table `woolworths`
--

CREATE TABLE `woolworths` (
  `Product_ID` int(11) NOT NULL,
  `Product_Name` varchar(150) NOT NULL,
  `Price` float NOT NULL,
  `Unit_Price` varchar(50) NOT NULL,
  `Category` varchar(100) NOT NULL,
  `Image_Link` varchar(500) NOT NULL,
  `Product_Link` varchar(500) NOT NULL,
  `Shop_Name` varchar(15) NOT NULL,
  `Unit` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `woolworths`
--

INSERT INTO `woolworths` (`Product_ID`, `Product_Name`, `Price`, `Unit_Price`, `Category`, `Image_Link`, `Product_Link`, `Shop_Name`, `Unit`) VALUES
(314, 'Baby Bellies Organic Softcorn Berry & Apple 8g', 1.7, '$21.25 / 100G', 'corn berry apple ', 'https://cdn1.woolworths.media/content/wowproductimages/medium/627742.jpg', ' 1.70', 'Woolworths', ''),
(315, 'Baby Bellies Organic Softcorn Banana 8g', 1.7, '$21.25 / 100G', 'corn banana ', 'https://cdn1.woolworths.media/content/wowproductimages/medium/627754.jpg', ' 1.70', 'Woolworths', ''),
(316, 'Little Bellies Organic Cheese Oatcakes 80g', 2.25, '$2.81 / 100G', 'little cheese cakes ', 'https://cdn1.woolworths.media/content/wowproductimages/medium/059524.jpg', ' 2.25', 'Woolworths', ''),
(317, 'Little Bellies Organic Beetroot & Carrot Oatcakes 80g', 4, '$5.00 / 100G', 'little beetroot carrot cakes ', 'https://cdn1.woolworths.media/content/wowproductimages/medium/059520.jpg', ' 4.00', 'Woolworths', ''),
(318, 'Rafferty\'s Garden Snack Blueberry Banana Apple 8 pack', 3.5, '$2.73 / 100G', 'garden snack berry banana apple ', 'https://cdn1.woolworths.media/content/wowproductimages/medium/789941.jpg', ' 3.50', 'Woolworths', ''),
(319, 'Rafferty\'s Garden Snack Apple Fruit Bars 8 pack', 3.5, '$2.73 / 100G', 'garden snack apple bar ', 'https://cdn1.woolworths.media/content/wowproductimages/medium/335208.jpg', ' 3.50', 'Woolworths', ''),
(320, 'Rafferty\'s Garden Snack Banana Fruit Bars 8 pack', 3.5, '$2.73 / 100G', 'garden snack banana bar ', 'https://cdn1.woolworths.media/content/wowproductimages/medium/335206.jpg', ' 3.50', 'Woolworths', ''),
(321, 'Whole Kids Organic Wholegrain Puffs Dinosaur 7.5g', 1, '$13.33 / 100G', 'wholegrain puff dinosaur ', 'https://cdn1.woolworths.media/content/wowproductimages/medium/057510.jpg', ' 1.00', 'Woolworths', ''),
(322, 'Whole Kids Organic Wholegrain Puffs Turtle 7.5g', 1, '$13.33 / 100G', 'wholegrain puff turtle ', 'https://cdn1.woolworths.media/content/wowproductimages/medium/057491.jpg', ' 1.00', 'Woolworths', ''),
(323, 'Little Bellies Sultanas & Apricots Mix 6 pack', 2, '$2.38 / 100G', 'little sultana apricot ', 'https://cdn1.woolworths.media/content/wowproductimages/medium/059521.jpg', ' 2.00', 'Woolworths', ''),
(324, 'Heinz Little Kids Yoghurt Muesli Fingers Fruit Salad 6 pack', 2.4, '$2.67 / 100G', 'little yoghurt muesli ', 'https://cdn1.woolworths.media/content/wowproductimages/medium/227154.jpg', ' 2.40', 'Woolworths', ''),
(325, 'Little Bellies Organic Sultanas 6 pack', 2, '$2.38 / 100G', 'little sultana ', 'https://cdn1.woolworths.media/content/wowproductimages/medium/766376.jpg', ' 2.00', 'Woolworths', ''),
(326, 'Whole Kids Organic Chia Quinoa Wafers 6 pack', 3, '$2.50 / 100G', 'chia quinoa wafer ', 'https://cdn1.woolworths.media/content/wowproductimages/medium/057507.jpg', ' 3.00', 'Woolworths', ''),
(327, 'Little Quacker 1-3 Years Rice Biscuit Strawberry 40g', 2.5, '$6.25 / 100G', 'little rice biscuit berry ', 'https://cdn1.woolworths.media/content/wowproductimages/medium/756670.jpg', ' 2.50', 'Woolworths', ''),
(328, 'Only Organic Food Rice Cakes Snack Mini Blueberry & Purple Carrot 40g', 2.5, '$6.25 / 100G', 'rice cakes snack mini berry purple carrot ', 'https://cdn1.woolworths.media/content/wowproductimages/medium/765018.jpg', ' 2.50', 'Woolworths', ''),
(329, 'Only Organic Food Rice Cakes Snack Mini Carrot & Apple 40g', 2.5, '$6.25 / 100G', 'rice cakes snack mini carrot apple ', 'https://cdn1.woolworths.media/content/wowproductimages/medium/765112.jpg', ' 2.50', 'Woolworths', ''),
(330, 'Whole Kids Organic Probiotics Fruity Cocoa 40g', 3.25, '$8.13 / 100G', '', 'https://cdn1.woolworths.media/content/wowproductimages/medium/057506.jpg', ' 3.25', 'Woolworths', ''),
(331, 'Little Quacker Coconut Rice Rolls 40g', 2, '$5.00 / 100G', 'little coconut rice rolls ', 'https://cdn1.woolworths.media/content/wowproductimages/medium/682737.jpg', ' 2.00', 'Woolworths', ''),
(332, 'Baby Bellies Organic Rusks Banana 4 pack', 1.7, '$8.50 / 100G', 'rusk banana ', 'https://cdn1.woolworths.media/content/wowproductimages/medium/766064.jpg', ' 1.70', 'Woolworths', ''),
(333, 'Baby Bellies Organic Rusks Carrot 4 pack', 1.7, '$8.50 / 100G', 'rusk carrot ', 'https://cdn1.woolworths.media/content/wowproductimages/medium/766281.jpg', ' 1.70', 'Woolworths', ''),
(334, 'Baby Mum Mum Snack Vegetable Rice Rusk 36g', 3, '$8.33 / 100G', 'snack veg rice rusk ', 'https://cdn1.woolworths.media/content/wowproductimages/medium/323375.jpg', ' 3.00', 'Woolworths', ''),
(335, 'Whole Kids Organic Mini Abc\'s Biscuits Apple & Chia 30g', 1, '$3.33 / 100G', 'mini biscuit apple chia ', 'https://cdn1.woolworths.media/content/wowproductimages/medium/057511.jpg', ' 1.00', 'Woolworths', ''),
(336, 'Rafferty\'s Garden Strawberry Yoghurt Buttons 28g', 4.4, '$15.71 / 100G', 'garden berry yoghurt ', 'https://cdn1.woolworths.media/content/wowproductimages/medium/720545.jpg', ' 4.40', 'Woolworths', ''),
(337, 'Bellamy\'s Organic Apple Snacks Apple 20g', 3, '$15.00 / 100G', 'apple snack apple ', 'https://cdn1.woolworths.media/content/wowproductimages/medium/331707.jpg', ' 3.00', 'Woolworths', ''),
(338, 'Nestle Cerelac Baby Cereal Muesli With Pear Stage 3 200g', 4.6, '$2.30 / 100G', 'cereal muesli pea ', 'https://cdn1.woolworths.media/content/wowproductimages/medium/500113.jpg', ' 4.60', 'Woolworths', ''),
(339, 'Nestle Cerelac Baby Cereal Rice Stage 1 200g', 4.6, '$2.30 / 100G', 'cereal rice ', 'https://cdn1.woolworths.media/content/wowproductimages/medium/379228.jpg', ' 4.60', 'Woolworths', ''),
(340, 'Nestle Cerelac Baby Cereal Banana And Apple Stage 3 200g', 4.6, '$2.30 / 100G', 'cereal banana apple ', 'https://cdn1.woolworths.media/content/wowproductimages/medium/838881.jpg', ' 4.60', 'Woolworths', ''),
(341, 'Nestle Cerelac Baby Cereal Oats & Wheat With Prune Stage 2 200g', 4.6, '$2.30 / 100G', 'cereal oats wheat prune ', 'https://cdn1.woolworths.media/content/wowproductimages/medium/061860.jpg', ' 4.60', 'Woolworths', ''),
(342, 'Baby Mum Mum Organic Rice Rusk Sweet Potato & Carrot 18pk 36g', 3, '$8.33 / 100G', 'rice rusk sweet potato carrot ', 'https://cdn1.woolworths.media/content/wowproductimages/medium/634313.jpg', ' 3.00', 'Woolworths', ''),
(343, 'Baby Mum Mum Snack Banana Rice Rusk 18 pack', 3, '$8.33 / 100G', 'snack banana rice rusk ', 'https://cdn1.woolworths.media/content/wowproductimages/medium/379237.jpg', ' 3.00', 'Woolworths', ''),
(344, 'Rafferty\'s Garden Original Chickpea Pops 17g', 1.9, '$11.18 / 100G', 'garden chickpea pop ', 'https://cdn1.woolworths.media/content/wowproductimages/medium/064808.jpg', ' 1.90', 'Woolworths', ''),
(345, 'Rafferty\'s Garden Cheese Chickpea Pops 17g', 1.9, '$11.18 / 100G', 'garden cheese chickpea pop ', 'https://cdn1.woolworths.media/content/wowproductimages/medium/064809.jpg', ' 1.90', 'Woolworths', ''),
(346, 'Only Organic Chicken Bolognese 170g', 2.9, '$1.71 / 100G', 'chicken bolognese ', 'https://cdn1.woolworths.media/content/wowproductimages/medium/681967.jpg', ' 2.90', 'Woolworths', ''),
(347, 'Only Organic Sweet Pot Lamb & Couscous 170g', 2.9, '$1.71 / 100G', 'sweet lamb couscous ', 'https://cdn1.woolworths.media/content/wowproductimages/medium/053365.jpg', ' 2.90', 'Woolworths', ''),
(348, 'Only Organic Ancient Grains Risotto 170g', 2.9, '$1.71 / 100G', 'risotto ', 'https://cdn1.woolworths.media/content/wowproductimages/medium/032934.jpg', ' 2.90', 'Woolworths', ''),
(349, 'Only Organic Mango Chicken & Coconut Rice 170g', 2.9, '$1.71 / 100G', 'mango chicken coconut rice ', 'https://cdn1.woolworths.media/content/wowproductimages/medium/682039.jpg', ' 2.90', 'Woolworths', ''),
(350, 'Heinz Apple & Oatmeal Baby Food Jar 6+ Months 170g', 1.5, '$0.88 / 100G', 'apple oatmeal jar ', 'https://cdn1.woolworths.media/content/wowproductimages/medium/708698.jpg', ' 1.50', 'Woolworths', ''),
(351, 'Heinz Mediterranean Style Tomato Sauce 170g', 1.5, '$0.88 / 100G', 'tomato ', 'https://cdn1.woolworths.media/content/wowproductimages/medium/059395.jpg', ' 1.50', 'Woolworths', ''),
(352, 'Heinz Butter Chicken Sauce 170g', 1.5, '$0.88 / 100G', 'butter chicken ', 'https://cdn1.woolworths.media/content/wowproductimages/medium/059402.jpg', ' 1.50', 'Woolworths', ''),
(353, 'Heinz Lamb Pumpkin & Sweet Potato Baby Food Jar 6+ Months 170g', 1.5, '$0.88 / 100G', 'lamb pumpkin sweet potato jar ', 'https://cdn1.woolworths.media/content/wowproductimages/medium/830513.jpg', ' 1.50', 'Woolworths', ''),
(354, 'Only Organic Pasta Bolognese 170g', 2.9, '$1.71 / 100G', 'pasta bolognese ', 'https://cdn1.woolworths.media/content/wowproductimages/medium/660268.jpg', ' 2.90', 'Woolworths', ''),
(355, 'Heinz 8 Months Chicken & Vegetable Risotto 170g', 1.5, '$0.88 / 100G', 'chicken veg risotto ', 'https://cdn1.woolworths.media/content/wowproductimages/medium/708659.jpg', ' 1.50', 'Woolworths', ''),
(356, 'Heinz 8 Months+ Chicken, Vegetables & Quinoa 170g', 1.5, '$0.88 / 100G', 'chicken veg quinoa ', 'https://cdn1.woolworths.media/content/wowproductimages/medium/923910.jpg', ' 1.50', 'Woolworths', ''),
(357, 'Heinz 8 Months+ Beef & Vegetable Casserole 170g', 1.5, '$0.88 / 100G', 'beef veg casserole ', 'https://cdn1.woolworths.media/content/wowproductimages/medium/720985.jpg', ' 1.50', 'Woolworths', ''),
(358, 'Rafferty\'s Garden Food 10 Months Chicken, Basil & Tomato Pasta 170g', 2.45, '$1.44 / 100G', 'garden chicken basil tomato pasta ', 'https://cdn1.woolworths.media/content/wowproductimages/medium/291186.jpg', ' 2.45', 'Woolworths', ''),
(359, 'Rafferty\'s Garden Food 10 Months Shepherds Pie 170g', 2.45, '$1.44 / 100G', 'garden shepherds pie ', 'https://cdn1.woolworths.media/content/wowproductimages/medium/345395.jpg', ' 2.45', 'Woolworths', ''),
(360, 'Rafferty\'s Garden Food 10 Months Bolognese With Macaroni 170g', 2.45, '$1.44 / 100G', 'garden bolognese macaroni ', 'https://cdn1.woolworths.media/content/wowproductimages/medium/291183.jpg', ' 2.45', 'Woolworths', ''),
(361, 'Rafferty\'s Garden Ifood Talian Lasagne Italian Lasagne 170g', 2.45, '$1.44 / 100G', 'garden lasagne italian lasagne ', 'https://cdn1.woolworths.media/content/wowproductimages/medium/345376.jpg', ' 2.45', 'Woolworths', ''),
(362, 'Rafferty\'s Garden Food 10 Months Risoni Pasta & Garden Veg 170g', 2.45, '$1.44 / 100G', 'garden risoni pasta garden veg ', 'https://cdn1.woolworths.media/content/wowproductimages/medium/291184.jpg', ' 2.45', 'Woolworths', ''),
(363, 'Only Organic Kumara Crt & Coco Rice 170g', 2.9, '$1.71 / 100G', 'kumara rice ', 'https://cdn1.woolworths.media/content/wowproductimages/medium/660273.jpg', ' 2.90', 'Woolworths', ''),
(364, 'Only Organic Pumpkin Potato & Beef 8+ Months 170g', 2.9, '$1.71 / 100G', 'pumpkin potato beef ', 'https://cdn1.woolworths.media/content/wowproductimages/medium/659823.jpg', ' 2.90', 'Woolworths', ''),
(365, 'Baby Bellies Organic Sweet Potato Pick-up Sticks 16g', 3.5, '$21.88 / 100G', 'sweet potato sticks ', 'https://cdn1.woolworths.media/content/wowproductimages/medium/059517.jpg', ' 3.50', 'Woolworths', ''),
(366, 'Baby Bellies Organic Strawberry Pick-up Sticks 16g', 3.5, '$21.88 / 100G', 'berry sticks ', 'https://cdn1.woolworths.media/content/wowproductimages/medium/059516.jpg', ' 3.50', 'Woolworths', ''),
(367, 'Farex Baby Food 9 Months Muesli With Apple 150g', 3, '$2.00 / 100G', 'muesli apple ', 'https://cdn1.woolworths.media/content/wowproductimages/medium/362496.jpg', ' 3.00', 'Woolworths', ''),
(368, 'Little Bellies Organic Animal Biscuits 130g', 4, '$3.08 / 100G', 'little animal biscuit ', 'https://cdn1.woolworths.media/content/wowproductimages/medium/059519.jpg', ' 4.00', 'Woolworths', ''),
(369, 'Baby Bellies Organic Round-a-bouts Sweetcorn 12g', 1.7, '$14.17 / 100G', 'corn ', 'https://cdn1.woolworths.media/content/wowproductimages/medium/839243.jpg', ' 1.70', 'Woolworths', ''),
(370, 'Little Bellies Organic Green Pea Stars Cheddar Cheese 12g', 1.7, '$14.17 / 100G', 'little green pea cheddar cheese ', 'https://cdn1.woolworths.media/content/wowproductimages/medium/059523.jpg', ' 1.70', 'Woolworths', ''),
(371, 'Baby Bellies Organic Lentil Wheels Sweet Potato & Apple 12g', 1.7, '$14.17 / 100G', 'lentil wheels sweet potato apple ', 'https://cdn1.woolworths.media/content/wowproductimages/medium/059510.jpg', ' 1.70', 'Woolworths', ''),
(372, 'Baby Bellies Organic Lentil Wheels Beetroot & Strawberry 12g', 1.7, '$14.17 / 100G', 'lentil wheels beetroot berry ', 'https://cdn1.woolworths.media/content/wowproductimages/medium/059522.jpg', ' 1.70', 'Woolworths', ''),
(373, 'Baby Bellies Organic Puffs Carrot 12g', 1.7, '$14.17 / 100G', 'puff carrot ', 'https://cdn1.woolworths.media/content/wowproductimages/medium/790107.jpg', ' 1.70', 'Woolworths', ''),
(374, 'Baby Bellies Organic Puffs Blueberry 12g', 1.7, '$14.17 / 100G', 'puff berry ', 'https://cdn1.woolworths.media/content/wowproductimages/medium/790094.jpg', ' 1.70', 'Woolworths', ''),
(375, 'Little Bellies Organic Puffs Apple & Cinnamon 12g', 1.7, '$14.17 / 100G', 'little puff apple cinnamon ', 'https://cdn1.woolworths.media/content/wowproductimages/medium/414360.jpg', ' 1.70', 'Woolworths', ''),
(376, 'Baby Bellies Organic Nibblers Carrot & Apple 12g', 1.7, '$14.17 / 100G', 'carrot apple ', 'https://cdn1.woolworths.media/content/wowproductimages/medium/766405.jpg', ' 1.70', 'Woolworths', ''),
(377, 'Little Bellies Organic Fiddlesticks Cheese & Herb 12g', 1.7, '$14.17 / 100G', 'little sticks cheese ', 'https://cdn1.woolworths.media/content/wowproductimages/medium/682784.jpg', ' 1.70', 'Woolworths', ''),
(378, 'Kiddylicious Cheesy Straws 12g', 1.8, '$15.00 / 100G', 'licious cheesy straws ', 'https://cdn1.woolworths.media/content/wowproductimages/medium/056230.jpg', ' 1.80', 'Woolworths', ''),
(379, 'Kiddylicious Veggie Straws 12g', 1.8, '$15.00 / 100G', 'licious veg straws ', 'https://cdn1.woolworths.media/content/wowproductimages/medium/056227.jpg', ' 1.80', 'Woolworths', ''),
(380, 'Rafferty\'s Garden Fruit Snack Bar 12 Months+ Apple & Raspberry 128g', 3.5, '$2.73 / 100G', 'garden snack bar apple berry ', 'https://cdn1.woolworths.media/content/wowproductimages/medium/498472.jpg', ' 3.50', 'Woolworths', ''),
(381, 'Farex Baby Food 4 Months+ Rice Cereal 125g', 2, '$1.60 / 100G', 'rice cereal ', 'https://cdn1.woolworths.media/content/wowproductimages/medium/056893.jpg', ' 2.00', 'Woolworths', ''),
(382, 'Rafferty\'s Garden Apple & Mango Wholegrain Cereal 125g', 3.5, '$2.80 / 100G', 'garden apple mango wholegrain cereal ', 'https://cdn1.woolworths.media/content/wowproductimages/medium/063881.jpg', ' 3.50', 'Woolworths', ''),
(383, 'Bellamy\'s Organic Pumpkin Baby Rice 125g', 4.25, '$3.40 / 100G', 'pumpkin rice ', 'https://cdn1.woolworths.media/content/wowproductimages/medium/063317.jpg', ' 4.25', 'Woolworths', ''),
(384, 'Bellamy\'s Pear & Peach Yoghurt 120g', 1.5, '$1.25 / 100G', 'pea each yoghurt ', 'https://cdn1.woolworths.media/content/wowproductimages/medium/064402.jpg', ' 1.50', 'Woolworths', ''),
(385, 'Bellamy\'s Apple & Mango Yoghurt 120g', 1.5, '$1.25 / 100G', 'apple mango yoghurt ', 'https://cdn1.woolworths.media/content/wowproductimages/medium/064341.jpg', ' 1.50', 'Woolworths', ''),
(386, 'Bellamy\'s Banana & Straw Yoghurt 120g', 1.5, '$1.25 / 100G', 'banana yoghurt ', 'https://cdn1.woolworths.media/content/wowproductimages/medium/064392.jpg', ' 1.50', 'Woolworths', ''),
(387, 'Only Organic Wild Rice Risotto Spring Lamb Wild Rice Risotto Spring Lamb 120g', 2, '$1.67 / 100G', 'wild rice risotto spring lamb wild rice risotto spring lamb ', 'https://cdn1.woolworths.media/content/wowproductimages/medium/710423.jpg', ' 2.00', 'Woolworths', ''),
(388, 'Macro Organic 6 Months+ Pumpkin Sweetcorn Potato & Carrot 120g', 1.5, '$1.25 / 100G', 'pumpkin corn potato carrot ', 'https://cdn1.woolworths.media/content/wowproductimages/medium/713592.jpg', ' 1.50', 'Woolworths', ''),
(389, 'Macro Baby Organic 6 Months+ Apple & Blueberry 120g', 1.5, '$1.25 / 100G', 'apple berry ', 'https://cdn1.woolworths.media/content/wowproductimages/medium/713590.jpg', ' 1.50', 'Woolworths', ''),
(390, 'Macro Baby Organic 6 Months+ Apple & Pear 120g', 1.5, '$1.25 / 100G', 'apple pea ', 'https://cdn1.woolworths.media/content/wowproductimages/medium/713568.jpg', ' 1.50', 'Woolworths', ''),
(391, 'Only Organic 4 Months+ Banana & Apple 120g', 2, '$1.67 / 100G', 'banana apple ', 'https://cdn1.woolworths.media/content/wowproductimages/medium/322268.jpg', ' 2.00', 'Woolworths', ''),
(392, 'Heinz Simply Food 4 Months Apple Peach & Mango 120g', 1.5, '$1.25 / 100G', 'apple each mango ', 'https://cdn1.woolworths.media/content/wowproductimages/medium/362687.jpg', ' 1.50', 'Woolworths', ''),
(393, 'Heinz Dairy Snack Pouch Chocolate Custard 120g', 1.5, '$1.25 / 100G', 'snack pouch chocolate custard ', 'https://cdn1.woolworths.media/content/wowproductimages/medium/407228.jpg', ' 1.50', 'Woolworths', ''),
(394, 'Heinz Simply Food 4 Months Pear Banana & Apple 120g', 1.5, '$1.25 / 100G', 'pea banana apple ', 'https://cdn1.woolworths.media/content/wowproductimages/medium/362709.jpg', ' 1.50', 'Woolworths', ''),
(395, 'Farex On The Go 4 Months+ Pear & Apricot Rice 120g', 1.5, '$1.25 / 100G', 'pea apricot rice ', 'https://cdn1.woolworths.media/content/wowproductimages/medium/763954.jpg', ' 1.50', 'Woolworths', ''),
(396, 'Only Organic 4 Months+ Apple Peach & Apricot 120g', 2, '$1.67 / 100G', 'apple each apricot ', 'https://cdn1.woolworths.media/content/wowproductimages/medium/322266.jpg', ' 2.00', 'Woolworths', ''),
(397, 'Heinz Dairy Snack Pouch Vanilla Custard 120g', 1.5, '$1.25 / 100G', 'snack pouch vanilla custard ', 'https://cdn1.woolworths.media/content/wowproductimages/medium/407231.jpg', ' 1.50', 'Woolworths', ''),
(398, 'Rafferty\'s Garden Food 4 Months+ Blueberries, Banana & Apple 120g', 1.65, '$1.38 / 100G', 'garden berries banana apple ', 'https://cdn1.woolworths.media/content/wowproductimages/medium/291277.jpg', ' 1.65', 'Woolworths', ''),
(399, 'Rafferty\'s Garden Food 4 Months+ Pumpkin, Apple & Sweetcorn 120g', 1.65, '$1.38 / 100G', 'garden pumpkin apple corn ', 'https://cdn1.woolworths.media/content/wowproductimages/medium/291188.jpg', ' 1.65', 'Woolworths', ''),
(400, 'Rafferty\'s Garden Food 4 Months+ Apple, Pear & Cinnamon 120g', 1.65, '$1.38 / 100G', 'garden apple pea cinnamon ', 'https://cdn1.woolworths.media/content/wowproductimages/medium/291279.jpg', ' 1.65', 'Woolworths', ''),
(401, 'Rafferty\'s Garden Food 4 Months+ Apple, Banana & Peach 120g', 1.65, '$1.38 / 100G', 'garden apple banana each ', 'https://cdn1.woolworths.media/content/wowproductimages/medium/709557.jpg', ' 1.65', 'Woolworths', ''),
(402, 'Rafferty\'s Garden Food 4 Months+ Banana, Pear & Mango 120g', 1.65, '$1.38 / 100G', 'garden banana pea mango ', 'https://cdn1.woolworths.media/content/wowproductimages/medium/291278.jpg', ' 1.65', 'Woolworths', ''),
(403, 'Rafferty\'s Garden Food 4 Months+ Spinach, Apple, Broccoli & Pea 120g', 1.65, '$1.38 / 100G', 'garden spinach apple broccoli pea ', 'https://cdn1.woolworths.media/content/wowproductimages/medium/291193.jpg', ' 1.65', 'Woolworths', ''),
(404, 'Rafferty\'s Garden Food 4 Months+ Pear & Apricot 120g', 1.65, '$1.38 / 100G', 'garden pea apricot ', 'https://cdn1.woolworths.media/content/wowproductimages/medium/334528.jpg', ' 1.65', 'Woolworths', ''),
(405, 'Rafferty\'s Garden Food 4 Months+ Pear & Superberries 120g', 1.65, '$1.38 / 100G', 'garden pea berries ', 'https://cdn1.woolworths.media/content/wowproductimages/medium/709604.jpg', ' 1.65', 'Woolworths', ''),
(406, 'Rafferty\'s Garden Food 4 Months+ Sweet Potato, Carrot & Apple 120g', 1.65, '$1.38 / 100G', 'garden sweet potato carrot apple ', 'https://cdn1.woolworths.media/content/wowproductimages/medium/291187.jpg', ' 1.65', 'Woolworths', ''),
(407, 'Rafferty\'s Garden My First Pear 4+months 120g', 1.65, '$1.38 / 100G', 'garden pea ', 'https://cdn1.woolworths.media/content/wowproductimages/medium/633988.jpg', ' 1.65', 'Woolworths', ''),
(408, 'Rafferty\'s Garden My First Apple 4+months 120g', 1.65, '$1.38 / 100G', 'garden apple ', 'https://cdn1.woolworths.media/content/wowproductimages/medium/633987.jpg', ' 1.65', 'Woolworths', ''),
(409, 'Rafferty\'s Garden Wholemeal Macaroni Pumpkin Basil 6m 120g', 1.9, '$1.58 / 100G', 'garden macaroni pumpkin basil ', 'https://cdn1.woolworths.media/content/wowproductimages/medium/063870.jpg', ' 1.90', 'Woolworths', ''),
(410, 'Rafferty\'s Garden Red Lentil Carrot & Sweet Potato 8m 120g', 1.9, '$1.58 / 100G', 'garden red lentil carrot sweet potato ', 'https://cdn1.woolworths.media/content/wowproductimages/medium/063869.jpg', ' 1.90', 'Woolworths', ''),
(411, 'Rafferty\'s Garden Chickpea Corn & Carrot 8m 120g', 1.9, '$1.58 / 100G', 'garden chickpea corn carrot ', 'https://cdn1.woolworths.media/content/wowproductimages/medium/063892.jpg', ' 1.90', 'Woolworths', ''),
(412, 'Rafferty\'s Garden Pear & Prune 120g', 1.65, '$1.38 / 100G', 'garden pea prune ', 'https://cdn1.woolworths.media/content/wowproductimages/medium/064807.jpg', ' 1.65', 'Woolworths', ''),
(413, 'Rafferty\'s Garden Chicken Peas & Wholemeal Pasta 6m 120g', 1.9, '$1.58 / 100G', 'garden chicken pea pasta ', 'https://cdn1.woolworths.media/content/wowproductimages/medium/063895.jpg', ' 1.90', 'Woolworths', ''),
(414, 'Rafferty\'s Garden Quinoa Apple & Apricot 6m 120g', 1.9, '$1.58 / 100G', 'garden quinoa apple apricot ', 'https://cdn1.woolworths.media/content/wowproductimages/medium/063897.jpg', ' 1.90', 'Woolworths', ''),
(415, 'Rafferty\'s Garden Barley Banana & Spinach 6m 120g', 1.9, '$1.58 / 100G', 'garden bar banana spinach ', 'https://cdn1.woolworths.media/content/wowproductimages/medium/063894.jpg', ' 1.90', 'Woolworths', ''),
(416, 'Rafferty\'s Garden Beef Sweet Potato & Parsnip 8m 120g', 1.9, '$1.58 / 100G', 'garden beef sweet potato parsnip ', 'https://cdn1.woolworths.media/content/wowproductimages/medium/063912.jpg', ' 1.90', 'Woolworths', ''),
(417, 'Bellamy\'s Organic Apple & Fig Oatmeal 4 Months 120g', 1.7, '$1.42 / 100G', 'apple fig oatmeal ', 'https://cdn1.woolworths.media/content/wowproductimages/medium/798475.jpg', ' 1.70', 'Woolworths', ''),
(418, 'Rafferty\'s Garden Brown Rice Bean & Pumpkin 8m 120g', 1.9, '$1.58 / 100G', 'garden brown rice bean pumpkin ', 'https://cdn1.woolworths.media/content/wowproductimages/medium/063867.jpg', ' 1.90', 'Woolworths', ''),
(419, 'Only Organic Mango Coconut & Quinoa 120g', 2, '$1.67 / 100G', 'mango coconut quinoa ', 'https://cdn1.woolworths.media/content/wowproductimages/medium/053366.jpg', ' 2.00', 'Woolworths', ''),
(420, 'Only Organic Mango Spinach & Kale 120g', 2, '$1.67 / 100G', 'mango spinach ', 'https://cdn1.woolworths.media/content/wowproductimages/medium/053369.jpg', ' 2.00', 'Woolworths', ''),
(421, 'Macro Organic 6 Months+ Lamb With Vegetables 120g', 1.5, '$1.25 / 100G', 'lamb veg ', 'https://cdn1.woolworths.media/content/wowproductimages/medium/713593.jpg', ' 1.50', 'Woolworths', ''),
(422, 'Macro Organic 6 Months+ Pumpkin Spinach Ricotta & Pasta 120g', 1.5, '$1.25 / 100G', 'pumpkin spinach pasta ', 'https://cdn1.woolworths.media/content/wowproductimages/medium/713598.jpg', ' 1.50', 'Woolworths', ''),
(423, 'Macro Organic 6 Months+ Chicken With Sweetcorn & Pasta 120g', 1.5, '$1.25 / 100G', 'chicken corn pasta ', 'https://cdn1.woolworths.media/content/wowproductimages/medium/713599.jpg', ' 1.50', 'Woolworths', ''),
(424, 'Woolworths Smiling Tums 6 Months+ Apple & Strawberry Custard 120g', 1, '$0.83 / 100G', 'apple berry custard ', 'https://cdn1.woolworths.media/content/wowproductimages/medium/669659.jpg', ' 1.00', 'Woolworths', ''),
(425, 'Macro Organic 6 Months+ Apple Banana & Blueberry Bircher Muesli 120g', 1.5, '$1.25 / 100G', 'apple banana berry muesli ', 'https://cdn1.woolworths.media/content/wowproductimages/medium/749784.jpg', ' 1.50', 'Woolworths', ''),
(426, 'Only Organic 6 Months+ Banana Blueberry & Quinoa 120g', 2, '$1.67 / 100G', 'banana berry quinoa ', 'https://cdn1.woolworths.media/content/wowproductimages/medium/765211.jpg', ' 2.00', 'Woolworths', ''),
(427, 'Macro Organic 6 Months+ Beef With Vegetables & Rice 120g', 1.5, '$1.25 / 100G', 'beef veg rice ', 'https://cdn1.woolworths.media/content/wowproductimages/medium/713596.jpg', ' 1.50', 'Woolworths', ''),
(428, 'Heinz Simply Food 6 Months Vanilla Custard 120g', 1.5, '$1.25 / 100G', 'vanilla custard ', 'https://cdn1.woolworths.media/content/wowproductimages/medium/362689.jpg', ' 1.50', 'Woolworths', ''),
(429, 'Heinz 6 Months+ Chicken, Sweetcorn And Mango 120g', 1.5, '$1.25 / 100G', 'chicken corn mango ', 'https://cdn1.woolworths.media/content/wowproductimages/medium/790523.jpg', ' 1.50', 'Woolworths', ''),
(430, 'Only Organic 6 Months+ Apple Banana & Mango 120g', 2, '$1.67 / 100G', 'apple banana mango ', 'https://cdn1.woolworths.media/content/wowproductimages/medium/333288.jpg', ' 2.00', 'Woolworths', ''),
(431, 'Farex Breakfast On The Go 6 Months Creamy Baby Porridge W/ Apple 120g', 1.5, '$1.25 / 100G', 'cream porridge apple ', 'https://cdn1.woolworths.media/content/wowproductimages/medium/721255.jpg', ' 1.50', 'Woolworths', ''),
(432, 'Only Organic 6 Months+ Vanilla Bean Custard 120g', 2, '$1.67 / 100G', 'vanilla bean custard ', 'https://cdn1.woolworths.media/content/wowproductimages/medium/372442.jpg', ' 2.00', 'Woolworths', ''),
(433, 'Heinz Pouch Pumpkin Sweetcorn Chicken & Rice 120g', 1.5, '$1.25 / 100G', 'pouch pumpkin corn chicken rice ', 'https://cdn1.woolworths.media/content/wowproductimages/medium/407079.jpg', ' 1.50', 'Woolworths', ''),
(434, 'Heinz Simply Food 6 Months Banana Custard 120g', 1.5, '$1.25 / 100G', 'banana custard ', 'https://cdn1.woolworths.media/content/wowproductimages/medium/362691.jpg', ' 1.50', 'Woolworths', ''),
(435, 'Rafferty\'s Garden Food 6 Months Chocolate Custard 120g', 1.65, '$1.38 / 100G', 'garden chocolate custard ', 'https://cdn1.woolworths.media/content/wowproductimages/medium/315435.jpg', ' 1.65', 'Woolworths', ''),
(436, 'Rafferty\'s Garden Food 6 Months Pure Vanilla Custard 120g', 1.65, '$1.38 / 100G', 'garden vanilla custard ', 'https://cdn1.woolworths.media/content/wowproductimages/medium/742732.jpg', ' 1.65', 'Woolworths', ''),
(437, 'Macro Organic 6 Months+ Apple Berries & Fig With Yoghurt 120g', 1.5, '$1.25 / 100G', 'apple berries fig yoghurt ', 'https://cdn1.woolworths.media/content/wowproductimages/medium/669657.jpg', ' 1.50', 'Woolworths', ''),
(438, 'Woolworths Smiling Tums 6 Months+ Chicken & Vegetables 120g', 1, '$0.83 / 100G', 'chicken veg ', 'https://cdn1.woolworths.media/content/wowproductimages/medium/694220.jpg', ' 1.00', 'Woolworths', ''),
(439, 'Woolworths Apple Pear & Cinnamon 120g', 1, '$0.83 / 100G', 'apple pea cinnamon ', 'https://cdn1.woolworths.media/content/wowproductimages/medium/669673.jpg', ' 1.00', 'Woolworths', ''),
(440, 'Woolworths Smiling Tums 6 Months+ Sweet Potato Carrot & Parsnip 120g', 1, '$0.83 / 100G', 'sweet potato carrot parsnip ', 'https://cdn1.woolworths.media/content/wowproductimages/medium/669674.jpg', ' 1.00', 'Woolworths', ''),
(441, 'Macro Organic 6 Months+ Sweet Potato Carrot & Zucchini 120g', 1.5, '$1.25 / 100G', 'sweet potato carrot zucchini ', 'https://cdn1.woolworths.media/content/wowproductimages/medium/669654.jpg', ' 1.50', 'Woolworths', ''),
(442, 'Macro Organic 6 Months+ Pear Pea Potato & Spinach 120g', 1.5, '$1.25 / 100G', 'pea pea potato spinach ', 'https://cdn1.woolworths.media/content/wowproductimages/medium/669655.jpg', ' 1.50', 'Woolworths', ''),
(443, 'Rafferty\'s Garden Ready To Eat Porridge 6 Months Pear Apple & Cinnamon 120g', 1.65, '$1.38 / 100G', 'garden porridge pea apple cinnamon ', 'https://cdn1.woolworths.media/content/wowproductimages/medium/498493.jpg', ' 1.65', 'Woolworths', ''),
(444, 'Rafferty\'s Garden Ready To Eat Porridge 6 Months Pear Banana & Mango 120g', 1.65, '$1.38 / 100G', 'garden porridge pea banana mango ', 'https://cdn1.woolworths.media/content/wowproductimages/medium/498490.jpg', ' 1.65', 'Woolworths', ''),
(445, 'Woolworths Pear Banana & Mango 120g', 1, '$0.83 / 100G', 'pea banana mango ', 'https://cdn1.woolworths.media/content/wowproductimages/medium/669672.jpg', ' 1.00', 'Woolworths', ''),
(446, 'Macro Organic 6 Months+ Carrot Apple Mango & Sweet Potato 120g', 1.5, '$1.25 / 100G', 'carrot apple mango sweet potato ', 'https://cdn1.woolworths.media/content/wowproductimages/medium/669653.jpg', ' 1.50', 'Woolworths', ''),
(447, 'Woolworths Smiling Tums 6 Months+ Apple & Banana With Oats 120g', 1, '$0.83 / 100G', 'apple banana oats ', 'https://cdn1.woolworths.media/content/wowproductimages/medium/669671.jpg', ' 1.00', 'Woolworths', ''),
(448, 'Macro Organic 6 Months+ Apple Pear Fig & Sultana Porridge 120g', 1.5, '$1.25 / 100G', 'apple pea fig sultana porridge ', 'https://cdn1.woolworths.media/content/wowproductimages/medium/669656.jpg', ' 1.50', 'Woolworths', ''),
(449, 'Woolworths Smiling Tums 6 Months+ Apple & Banana Fruit Custard 120g', 1, '$0.83 / 100G', 'apple banana custard ', 'https://cdn1.woolworths.media/content/wowproductimages/medium/669658.jpg', ' 1.00', 'Woolworths', ''),
(450, 'Woolworths Smiling Tums 6 Months+ Apple Pea & Zucchini 120g', 1, '$0.83 / 100G', 'apple pea zucchini ', 'https://cdn1.woolworths.media/content/wowproductimages/medium/669675.jpg', ' 1.00', 'Woolworths', ''),
(451, 'Woolworths Smiling Tums 6 Months+ Beef & Vegetables 120g', 1, '$0.83 / 100G', 'beef veg ', 'https://cdn1.woolworths.media/content/wowproductimages/medium/669670.jpg', ' 1.00', 'Woolworths', ''),
(452, 'Heinz Curry Cauliflower Hummus Dip 120g', 1.5, '$1.25 / 100G', 'curry cauliflower hummus dip ', 'https://cdn1.woolworths.media/content/wowproductimages/medium/059393.jpg', ' 1.50', 'Woolworths', ''),
(453, 'Heinz Cauliflower Sweet Corn & White Beans 120g', 1.5, '$1.25 / 100G', 'cauliflower sweet corn white bean ', 'https://cdn1.woolworths.media/content/wowproductimages/medium/059358.jpg', ' 1.50', 'Woolworths', ''),
(454, 'Heinz White Bean Pea Avocado & Spinach Dip 120g', 1.5, '$1.25 / 100G', 'white bean pea avocado spinach dip ', 'https://cdn1.woolworths.media/content/wowproductimages/medium/059359.jpg', ' 1.50', 'Woolworths', ''),
(455, 'Bellamy\'s Organic Organic Chicken Sweet Potato & Couscous Pouch 120g', 1.7, '$1.42 / 100G', 'chicken sweet potato couscous pouch ', 'https://cdn1.woolworths.media/content/wowproductimages/medium/064394.jpg', ' 1.70', 'Woolworths', ''),
(456, 'Heinz White Beans Sweet Potato & Pumpkin 120g', 1.5, '$1.25 / 100G', 'white bean sweet potato pumpkin ', 'https://cdn1.woolworths.media/content/wowproductimages/medium/059368.jpg', ' 1.50', 'Woolworths', ''),
(457, 'Heinz Pumpkin & Sweet Potato Hummus Dip 120g', 1.5, '$1.25 / 100G', 'pumpkin sweet potato hummus dip ', 'https://cdn1.woolworths.media/content/wowproductimages/medium/059370.jpg', ' 1.50', 'Woolworths', ''),
(458, 'Bellamy\'s Organic Banana Custard With Flaxseed 6 Months 120g', 1.5, '$1.25 / 100G', 'banana custard flaxseed ', 'https://cdn1.woolworths.media/content/wowproductimages/medium/796173.jpg', ' 1.50', 'Woolworths', ''),
(459, 'Only Organic 8 Months+ Mango & Yoghurt Brekkie 120g', 2, '$1.67 / 100G', 'mango yoghurt brekkie ', 'https://cdn1.woolworths.media/content/wowproductimages/medium/372450.jpg', ' 2.00', 'Woolworths', ''),
(460, 'Only Organic 8 Months+ Carrot Red Lentils & Cheddar 120g', 2, '$1.67 / 100G', 'carrot red lentil cheddar ', 'https://cdn1.woolworths.media/content/wowproductimages/medium/710425.jpg', ' 2.00', 'Woolworths', ''),
(461, 'Heinz 8 Months+ Mango & Vanilla Custard 120g', 1.5, '$1.25 / 100G', 'mango vanilla custard ', 'https://cdn1.woolworths.media/content/wowproductimages/medium/923904.jpg', ' 1.50', 'Woolworths', ''),
(462, 'Heinz 8 Months+ Apple, Blueberry & Strawberry 120g', 1.5, '$1.25 / 100G', 'apple berry berry ', 'https://cdn1.woolworths.media/content/wowproductimages/medium/790513.jpg', ' 1.50', 'Woolworths', ''),
(463, 'Only Organic 8 Months+ Banana Raspberry & Vanilla 120g', 2, '$1.67 / 100G', 'banana berry vanilla ', 'https://cdn1.woolworths.media/content/wowproductimages/medium/333290.jpg', ' 2.00', 'Woolworths', ''),
(464, 'Heinz 8 Months+ Apple, Strawberry & Passionfruit 120g', 1.5, '$1.25 / 100G', 'apple berry passionfruit ', 'https://cdn1.woolworths.media/content/wowproductimages/medium/923907.jpg', ' 1.50', 'Woolworths', ''),
(465, 'Heinz 8 Months+ Strawberry & Vanilla Custard 120g', 1.5, '$1.25 / 100G', 'berry vanilla custard ', 'https://cdn1.woolworths.media/content/wowproductimages/medium/790517.jpg', ' 1.50', 'Woolworths', ''),
(466, 'Bellamy\'s Organic Vanilla & Pear Custard With Chia Seeds 8 Months 120g', 1.5, '$1.25 / 100G', 'vanilla pea custard chia seed ', 'https://cdn1.woolworths.media/content/wowproductimages/medium/796215.jpg', ' 1.50', 'Woolworths', ''),
(467, 'Whole Kids Organic Soft Cereal Biscuits - Oatmeal 120g', 4, '$3.33 / 100G', 'cereal biscuit oatmeal ', 'https://cdn1.woolworths.media/content/wowproductimages/medium/057509.jpg', ' 4.00', 'Woolworths', ''),
(468, 'Heinz Baby Food Vegetable Korma Pouch And Spout 120g', 1.5, '$1.25 / 100G', 'veg pouch ', 'https://cdn1.woolworths.media/content/wowproductimages/medium/049777.jpg', ' 1.50', 'Woolworths', ''),
(469, 'Heinz Baby Food Butter Chicken Pouch And Spout 120g', 1.5, '$1.25 / 100G', 'butter chicken pouch ', 'https://cdn1.woolworths.media/content/wowproductimages/medium/049774.jpg', ' 1.50', 'Woolworths', ''),
(470, 'Whole Kids Organic Soft Cereal Biscuits- Spelt & Apple 120g', 4, '$3.33 / 100G', 'cereal biscuit apple ', 'https://cdn1.woolworths.media/content/wowproductimages/medium/057508.jpg', ' 4.00', 'Woolworths', ''),
(471, 'Heinz Pureed Food 4 Months Fruity Apple 110g', 1, '$0.91 / 100G', 'puree apple ', 'https://cdn1.woolworths.media/content/wowproductimages/medium/036531.jpg', ' 1.00', 'Woolworths', ''),
(472, 'Heinz Strained Food 4 Months Pumpkin Potato & Beef 110g', 1, '$0.91 / 100G', 'pumpkin potato beef ', 'https://cdn1.woolworths.media/content/wowproductimages/medium/036533.jpg', ' 1.00', 'Woolworths', ''),
(473, 'Heinz Strained Food 4 Months 100% Pear & Banana 110g', 1, '$0.91 / 100G', 'pea banana ', 'https://cdn1.woolworths.media/content/wowproductimages/medium/088702.jpg', ' 1.00', 'Woolworths', ''),
(474, 'Heinz Smooth Food 6 Months Creamy Banana Porridge 110g', 1, '$0.91 / 100G', 'smooth cream banana porridge ', 'https://cdn1.woolworths.media/content/wowproductimages/medium/038745.jpg', ' 1.00', 'Woolworths', ''),
(475, 'Heinz Smooth Food 6 Months Summer Fruits Gel 110g', 1, '$0.91 / 100G', 'smooth summer fruits gel ', 'https://cdn1.woolworths.media/content/wowproductimages/medium/037884.jpg', ' 1.00', 'Woolworths', ''),
(476, 'Heinz Mashed Food 6 Months Apple & Blueberry Muesli 110g', 1, '$0.91 / 100G', 'mashed apple berry muesli ', 'https://cdn1.woolworths.media/content/wowproductimages/medium/107193.jpg', ' 1.00', 'Woolworths', ''),
(477, 'Heinz Smooth Food 6 Months Vanilla Custard 110g', 1, '$0.91 / 100G', 'smooth vanilla custard ', 'https://cdn1.woolworths.media/content/wowproductimages/medium/026261.jpg', ' 1.00', 'Woolworths', ''),
(478, 'Heinz Fruity Pear Jar 110g', 1, '$0.91 / 100G', 'pea jar ', 'https://cdn1.woolworths.media/content/wowproductimages/medium/414927.jpg', ' 1.00', 'Woolworths', ''),
(479, 'Rafferty\'s Garden Sweet Beetroot & Shallot Wafer Bites 10g', 1.9, '$19.00 / 100G', 'garden sweet beetroot wafer ', 'https://cdn1.woolworths.media/content/wowproductimages/medium/021420.jpg', ' 1.90', 'Woolworths', ''),
(480, 'Only Organic Banana Biscotti 100g', 2.7, '$2.70 / 100G', 'banana biscotti ', 'https://cdn1.woolworths.media/content/wowproductimages/medium/839605.jpg', ' 2.70', 'Woolworths', ''),
(481, 'Rafferty\'s Garden Snacks Banana Milk Rusks 100g', 3.5, '$3.50 / 100G', 'garden snack banana milk rusk ', 'https://cdn1.woolworths.media/content/wowproductimages/medium/323838.jpg', ' 3.50', 'Woolworths', ''),
(482, 'Only Organic Snack Teething Rusks 100g', 3.1, '$3.10 / 100G', 'snack teething rusk ', 'https://cdn1.woolworths.media/content/wowproductimages/medium/333589.jpg', ' 3.10', 'Woolworths', ''),
(483, 'Bellamy\'s Organic Milk Rusks 100g', 3.1, '$3.10 / 100G', 'milk rusk ', 'https://cdn1.woolworths.media/content/wowproductimages/medium/206395.jpg', ' 3.10', 'Woolworths', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aldi`
--
ALTER TABLE `aldi`
  ADD PRIMARY KEY (`Product_ID`);

--
-- Indexes for table `coles`
--
ALTER TABLE `coles`
  ADD PRIMARY KEY (`Product_ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `woolworths`
--
ALTER TABLE `woolworths`
  ADD PRIMARY KEY (`Product_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aldi`
--
ALTER TABLE `aldi`
  MODIFY `Product_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `coles`
--
ALTER TABLE `coles`
  MODIFY `Product_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `woolworths`
--
ALTER TABLE `woolworths`
  MODIFY `Product_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=484;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
