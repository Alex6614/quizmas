-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 07, 2018 at 10:02 AM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `info`
--

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

DROP TABLE IF EXISTS `quiz`;
CREATE TABLE `quiz` (
  `id` int(11) NOT NULL,
  `questions` text NOT NULL,
  `options` text NOT NULL,
  `contract` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`id`, `questions`, `options`, `contract`) VALUES
(1, 'This is question1?<>This is question2?<>This is question3?<>This is question4?<>This is question5?<>This is question6?<>This is question7?<>This is question8?<>This is question9?<>This is question10?', 'Q1Option 1 will be blabla.<>Q1Option 2 will be blabla.<>Q1Option 3 will be blabla.<>Q1Option 4 will be blabla.||||Q2Option 1 will be blabla.<>Q2Option 2 will be blabla.<>Q2Option 3 will be blabla.<>Q2Option 4 will be blabla.||||Q3Option 1 will be blabla.<>Q3Option 2 will be blabla.<>Q3Option 3 will be blabla.<>Q3Option 4 will be blabla.||||Q4Option 1 will be blabla.<>Q4Option 2 will be blabla.<>Q4Option 3 will be blabla.<>Q4Option 4 will be blabla.||||Q5Option 1 will be blabla.<>Q5Option 2 will be blabla.<>Q5Option 3 will be blabla.<>Q5Option 4 will be blabla.||||Q6Option 1 will be blabla.<>Q6Option 2 will be blabla.<>Q6Option 3 will be blabla.<>Q6Option 4 will be blabla.||||Q7Option 1 will be blabla.<>Q7Option 2 will be blabla.<>Q7Option 3 will be blabla.<>Q7Option 4 will be blabla.||||Q8Option 1 will be blabla.<>Q8Option 2 will be blabla.<>Q8Option 3 will be blabla.<>Q8Option 4 will be blabla.||||Q9Option 1 will be blabla.<>Q9Option 2 will be blabla.<>Q9Option 3 will be blabla.<>Q9Option 4 will be blabla.||||Q10Option 1 will be blabla.<>Q10Option 2 will be blabla.<>Q10Option 3 will be blabla.<>Q10Option 4 will be blabla.', 'The Intellectual Property disclosure will inform users that the contents, logo and other visual media you created is your property and is protected by copyright laws.\r\nA Termination clause will inform that users’ accounts on your website and mobile app or users’ access to your website and mobile (if users can’t have an account with you) can be terminated in case of abuses or at your sole discretion.\r\nA Governing Law will inform users which laws govern the agreement. This should the country in which your company is headquartered or the country from which you operate your website and mobile app.\r\nA Links To Other Web Sites clause will inform users that you are not responsible for any third party websites that you link to. This kind of clause will generally inform users that they are responsible for reading and agreeing (or disagreeing) with the Terms and Conditions or Privacy Policies of these third parties.\r\nIf your website or mobile app allows users to create content and make that content public to other users, a Content section will inform users that they own the rights to the content they have created.The “Content” clause usually mentions that users must give you (the website or mobile app developer) a license so that you can share this content on your website/mobile app and to make it available to other users.Because the content created by users is public to other users, a DMCA notice clause (or Copyright Infringement ) section is helpful to inform users and copyright authors that, if any content is found to be a copyright infringement, you will respond to any DMCA takedown notices received and you will take down the content.\r\nA Limit What Users Can Do clause can inform users that by agreeing to use your service, they’re also agreeing to not do certain things. This can be part of a very long and thorough list in your Terms and Conditions agreements so as to encompass the most amount of negative uses. Here’s how 500px lists its prohibited activities:');

-- --------------------------------------------------------

--
-- Table structure for table `quiz_record`
--

DROP TABLE IF EXISTS `quiz_record`;
CREATE TABLE `quiz_record` (
  `quiz_id` int(11) DEFAULT NULL,
  `duration_second` int(11) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `mode` varchar(11) DEFAULT NULL,
  `gender` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `quiz_record`
--

INSERT INTO `quiz_record` (`quiz_id`, `duration_second`, `age`, `mode`, `gender`) VALUES
(7, 521, 81, 'Family', 'Male'),
(1, 1085, 19, 'Individual', 'Male'),
(2, 576, 20, 'Family', 'Female'),
(5, 312, 75, 'Family', 'Female'),
(9, 621, 54, 'Individual', 'Female'),
(5, 987, 38, 'Corporation', 'Female'),
(5, 515, 64, 'Family', 'Female'),
(1, 429, 63, 'Individual', 'Female'),
(7, 1058, 22, 'Corporation', 'Male'),
(2, 506, 35, 'Corporation', 'Male'),
(8, 549, 98, 'Family', 'Male'),
(1, 501, 55, 'Family', 'Female'),
(6, 663, 91, 'Individual', 'Male'),
(8, 453, 69, 'Corporation', 'Female'),
(5, 467, 31, 'Family', 'Male'),
(3, 761, 62, 'Family', 'Male'),
(9, 745, 42, 'Individual', 'Female'),
(1, 683, 42, 'Individual', 'Female'),
(1, 848, 65, 'Individual', 'Male'),
(10, 889, 74, 'Family', 'Female'),
(5, 1026, 53, 'Family', 'Female'),
(4, 780, 56, 'Family', 'Female'),
(2, 364, 52, 'Family', 'Male'),
(9, 979, 27, 'Individual', 'Female'),
(3, 614, 70, 'Individual', 'Male'),
(9, 593, 90, 'Family', 'Female'),
(2, 689, 67, 'Individual', 'Male'),
(6, 512, 90, 'Individual', 'Male'),
(6, 1159, 74, 'Corporation', 'Male'),
(9, 348, 19, 'Individual', 'Female'),
(5, 693, 88, 'Family', 'Female'),
(1, 788, 36, 'Individual', 'Female'),
(1, 478, 68, 'Family', 'Female'),
(4, 793, 82, 'Individual', 'Male'),
(2, 373, 57, 'Family', 'Male'),
(10, 452, 58, 'Individual', 'Male'),
(4, 822, 27, 'Individual', 'Male'),
(6, 365, 99, 'Individual', 'Female'),
(2, 984, 90, 'Corporation', 'Female'),
(8, 632, 58, 'Individual', 'Male'),
(5, 1166, 91, 'Individual', 'Male'),
(9, 712, 19, 'Corporation', 'Female'),
(9, 537, 20, 'Individual', 'Male'),
(5, 364, 49, 'Family', 'Male'),
(7, 443, 24, 'Family', 'Male'),
(6, 393, 93, 'Individual', 'Female'),
(3, 870, 26, 'Individual', 'Male'),
(7, 757, 34, 'Individual', 'Female'),
(5, 450, 37, 'Family', 'Male'),
(4, 1026, 38, 'Individual', 'Female'),
(4, 414, 94, 'Individual', 'Male'),
(8, 1094, 60, 'Individual', 'Female'),
(8, 822, 46, 'Individual', 'Female'),
(9, 316, 76, 'Family', 'Male'),
(3, 825, 37, 'Corporation', 'Female'),
(2, 346, 92, 'Individual', 'Female'),
(5, 337, 69, 'Family', 'Female'),
(1, 809, 18, 'Corporation', 'Male'),
(10, 943, 99, 'Individual', 'Female'),
(3, 927, 100, 'Individual', 'Male'),
(1, 431, 97, 'Corporation', 'Female'),
(5, 705, 33, 'Individual', 'Female'),
(6, 808, 34, 'Individual', 'Female'),
(5, 616, 27, 'Corporation', 'Female'),
(4, 376, 30, 'Individual', 'Male'),
(6, 995, 78, 'Family', 'Male'),
(1, 813, 95, 'Family', 'Female'),
(10, 619, 40, 'Family', 'Female'),
(1, 374, 75, 'Corporation', 'Male'),
(8, 849, 91, 'Family', 'Male'),
(5, 561, 28, 'Individual', 'Female'),
(4, 1111, 48, 'Individual', 'Female'),
(6, 781, 61, 'Corporation', 'Male'),
(8, 1154, 25, 'Corporation', 'Female'),
(9, 908, 81, 'Corporation', 'Male'),
(6, 677, 44, 'Individual', 'Male'),
(10, 411, 83, 'Family', 'Male'),
(10, 455, 48, 'Family', 'Female'),
(3, 970, 26, 'Family', 'Female'),
(9, 543, 66, 'Corporation', 'Female'),
(7, 615, 47, 'Individual', 'Female'),
(1, 1012, 54, 'Corporation', 'Male'),
(5, 455, 55, 'Corporation', 'Female'),
(4, 587, 71, 'Family', 'Female'),
(8, 1078, 65, 'Individual', 'Female'),
(2, 513, 54, 'Individual', 'Male'),
(4, 820, 56, 'Individual', 'Male'),
(2, 1004, 100, 'Individual', 'Male'),
(10, 1013, 25, 'Corporation', 'Female'),
(10, 523, 40, 'Individual', 'Female'),
(6, 1072, 37, 'Corporation', 'Male'),
(3, 1073, 80, 'Corporation', 'Female'),
(8, 762, 20, 'Individual', 'Male'),
(9, 1079, 56, 'Family', 'Female'),
(9, 614, 28, 'Individual', 'Male'),
(6, 323, 98, 'Corporation', 'Male'),
(2, 473, 19, 'Family', 'Male'),
(2, 370, 99, 'Individual', 'Male'),
(5, 522, 29, 'Corporation', 'Male'),
(6, 756, 87, 'Individual', 'Male');

-- --------------------------------------------------------

--
-- Table structure for table `quiz_result`
--

DROP TABLE IF EXISTS `quiz_result`;
CREATE TABLE `quiz_result` (
  `token_key` longtext NOT NULL,
  `time_taken` int(11) NOT NULL,
  `answer` text NOT NULL,
  `accuracy` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `quiz_result`
--

INSERT INTO `quiz_result` (`token_key`, `time_taken`, `answer`, `accuracy`) VALUES
('1JgZi1qJ3bPfzTpXutZvt9u8ZRSXtTpGHw', 4705, 'AAAAAAAAAA', 32),
('1LaJuLdmrrVWd9mm3wEzcMRagQ3SydKUsd', 8326, 'CCCCCCCCCC', 71),
('17gvoVWWvxDUByDmLfmAAX17NafGyj1TfF', 907, 'AAAAAAAAAA', 18),
('1BaueT13ju8Gu3k4nxu9SV4t7AAHXFueTa', 5529, 'CCCCCCCCCC', 1),
('1AYrWWXkM4LQUH3vtg5P8wYo6vPYF2DrcQ', 3195, 'DDDDDDDDDD', 15),
('18GRcX4WvTdWDhec6fr3mesQDFw9Q9oDY7', 1611, 'AAAAAAAAAA', 23),
('1NrDXj9yTrhPR5B4fFDs2gsi3QV3c5hzuz', 3770, 'AAAAAAAAAA', 54),
('19e79ihxS4UHppvokKWGgNCUJHKNGdBAXe', 7293, 'DDDDDDDDDD', 49),
('1HRWiNYKR2xZvMXUCz9DY6ormYmYsyQdMR', 9365, 'AAAAAAAAAA', 12),
('1Ge9QFj4yuntCNbiuKMiCsXUeMxJkUSwGf', 4322, 'AAAAAAAAAA', 24),
('19iTEatZTxCpBEWUme7PYz3MfewZxmEPwv', 3539, 'CCCCCCCCCC', 96),
('18fWQFPB5iwuxi6kWGx1JgrLMm4iY3jvMe', 1507, 'DDDDDDDDDD', 96),
('13GL5rnEeYAzxZQhR12Kf6u625Y9FeEhg2', 2043, 'AAAAAAAAAA', 81),
('1JBpXdcXy3W1RkfPRvJikGnBEs6p2njVzd', 6380, 'BBBBBBBBBB', 90),
('1GDhozfqrtMPeq9qdBymp95uPs9Y3fvo1k', 1538, 'AAAAAAAAAA', 42),
('1BMymsjFpqRXyJEXctzfpJZevPgKLPVfdh', 7197, 'CCCCCCCCCC', 40),
('1ByKL8ezsc6M82nbMEfhRwndcFjbCUJv2t', 7448, 'CCCCCCCCCC', 62),
('1Agmw1Hd9eWUVzHrAMSp8vYBXzEuMnJBK5', 3158, 'BBBBBBBBBB', 78),
('1GjYhw3iTGszxdqZoxUn4bgtB7gNxqYPQZ', 3843, 'CCCCCCCCCC', 92),
('1DgfUmeU8Z4NsuV9waHyBP2VC4TGHsKC7E', 6402, 'DDDDDDDDDD', 88),
('1MD434VusNTaPeXLAURU7cLd6PM92V1aDF', 7801, 'AAAAAAAAAA', 71),
('1BnLwbz29uWMrySsgHHfamytLMKz82nAAu', 553, 'DDDDDDDDDD', 85),
('1JsWJJgexC5AZYkTJA5Jyyn2q69EdhqAqH', 8853, 'AAAAAAAAAA', 51),
('1EXvNSqZmUe7eHz7Hbyswsz7znEtNur8MV', 7949, 'CCCCCCCCCC', 62),
('1KV1KrWhhGWBtngXfBcDbniynakiGaF8H', 2880, 'AAAAAAAAAA', 73),
('1KBAw3g77hf2NaSpu3iNSBqikUsHjFzYne', 3528, 'CCCCCCCCCC', 78),
('1ANckHhGtZ3JZjxgK9DLH5qkKxGQdMspgv', 1807, 'CCCCCCCCCC', 83),
('1E2xnKGkMvmPGYvYrGDCxphUqk9Cx6zubk', 8615, 'AAAAAAAAAA', 71),
('1JLwfxe3h5KaTdPXqEaQYTLncbt6GwgmNd', 8226, 'BBBBBBBBBB', 79),
('1HmtB2962hM6FG3nWym2MHMEBY22CuB8xw', 9187, 'CCCCCCCCCC', 20),
('12AjteRzeqUwHddF5BG1Sjgvcws5AZkYC9', 1455, 'AAAAAAAAAA', 97),
('1d4PRBg5R8gvPJg3U2pWuMNMzezudFWYv', 7819, 'CCCCCCCCCC', 39),
('1LcVBKh6mWM3CvESSVeYrfz4bB8xmoQC8W', 6040, 'CCCCCCCCCC', 57),
('1GbyYaFavNcusdPf4JfAVdLP9p8hDzimW3', 4246, 'AAAAAAAAAA', 60),
('1Cdq33BU7ay5agGs7Gjz1trfutmh4Xr8Dn', 1056, 'CCCCCCCCCC', 90),
('1EfGdNFFEXZwk4NEMgSmQBH12t18JBdqMA', 9972, 'AAAAAAAAAA', 23),
('14YUM6m1vYpJA3wfXMYtFYdcFjiSBXJamm', 5402, 'CCCCCCCCCC', 73),
('1AxXfvnJKsxoGe1KwNGCLMk9Nj5vcSSfER', 5822, 'BBBBBBBBBB', 19),
('14cAfJKYgsmf4KVR1yoiaYvJGMxo2dvdC1', 6656, 'AAAAAAAAAA', 26),
('1Aztsb75LhFCJCGk3GL5TwqXYqzqFr179g', 8561, 'BBBBBBBBBB', 0),
('1BuXAxbXPChCFc8tGheiXpVonQTaMDmVrs', 794, 'DDDDDDDDDD', 93),
('18PnJ1nCHZAVtCY4PyMrNsDn9TVgcTrg4e', 342, 'DDDDDDDDDD', 24),
('18o7A1zmuN7FcrmRcgejADsbLFD49DpZbA', 5015, 'DDDDDDDDDD', 53),
('1JE6yBWUXWnTJCLZ3HcucwnCXA4doBa7Cc', 7923, 'CCCCCCCCCC', 45),
('1C2EUAqHgwY1cUQ1iGSKDegfyqWeyZXsj8', 1605, 'AAAAAAAAAA', 65),
('1FTusnT9CskTiNyRAYdmqD4WhZ34S6DTMX', 6447, 'CCCCCCCCCC', 14),
('16nyakfRsDYmkauZtrxhxFGWJQDgYcd64J', 4774, 'BBBBBBBBBB', 87),
('1Ne23NeYemDBaCjXYZqHH5bYSrTqA1jwAD', 7036, 'AAAAAAAAAA', 10),
('1CBU4Q7LiiS2nnshhGQwERHFQUb4aCZz2Y', 3115, 'DDDDDDDDDD', 65),
('17Ce36vt9AZUWaSdwwpFY1uC2EdnSNfkgK', 7537, 'AAAAAAAAAA', 14),
('14EkzFHtWSKxuRbhbctdQhCrvbGDtWgEiA', 3590, 'DDDDDDDDDD', 95),
('1Pno6QFZGBhs2s4VGYXFQkoWhDyTV9mQy6', 9256, 'AAAAAAAAAA', 14),
('1NJUyvszyorEox1eeq1GwmsNUiXmZKKozq', 2426, 'DDDDDDDDDD', 46),
('19wpEfp2EFmu73zq9wmjDdMXCxe6DppoGa', 7459, 'DDDDDDDDDD', 75),
('1LkEpE6MmwnjDfojEr5Uez77KPQbRk58d4', 4266, 'BBBBBBBBBB', 52),
('15YnSCfRSZkFiLwFCa9B2brp18xn8iomqx', 4650, 'AAAAAAAAAA', 0),
('13mnhdGW9tnkwnkQRHviuvkDDzyFdzEFDu', 4507, 'BBBBBBBBBB', 31),
('15A6CZ3BfRGAuR8XDjW4BtF69J9Ds13YXG', 6213, 'AAAAAAAAAA', 65),
('1F2VpbmvtmMVu2dqTLgtLwv7HoG4VWDS2f', 9622, 'DDDDDDDDDD', 4),
('1ACaVDG4DcSeMHeNZwnrELstvPKtqfJ6Fu', 6225, 'DDDDDDDDDD', 91),
('1DAkwjobicWAGZBg2Mgp1twwT1PwWnadXr', 7900, 'BBBBBBBBBB', 72),
('1JKJnmBysKD66GQy8NGNTRFCQba2aAMmVm', 734, 'DDDDDDDDDD', 90),
('1JsSLxJghDYSSJHjA5BnVr7FndgUUm54j2', 3420, 'DDDDDDDDDD', 92),
('1Gs3E73TRZLnGLg3tnSZLTantEzJfCxG4W', 5440, 'DDDDDDDDDD', 92),
('19YpSM3F8EVRQR1VQoq34wj78husxv2KMv', 4361, 'CCCCCCCCCC', 86),
('1DQirWowXRwCDvo3SYyBkKqnDLrxwd3K1Z', 5969, 'CCCCCCCCCC', 13),
('13MEqzTkmQsXnTQMsLhYXBqA12p6N4hKKZ', 7207, 'DDDDDDDDDD', 69),
('17HJCBFCxYRD7CWbgjAtFfNPYp7N4pEFp8', 7023, 'DDDDDDDDDD', 41),
('1P3r7oCyiHSw4mZVz4ZwmoZ4Uq7UBCRnMG', 2882, 'DDDDDDDDDD', 28),
('1FrGwRd19dwW3e7KwbHsjCic1kZxctoanV', 3688, 'CCCCCCCCCC', 25),
('1L7EWm72AZ8EJhKfo1hqAHSNLv8g6ZF4Yi', 4127, 'CCCCCCCCCC', 43),
('1H6oM7pee1FXHJUWBcorCAkiDiLJAsXHZL', 3690, 'BBBBBBBBBB', 44),
('1MP4eWp4sfUZm9LP3fG2Wk6eeKcM5hTHwy', 9394, 'CCCCCCCCCC', 24),
('1KRCufSu6is2aaNgpdR6G64Up1zhXWtjp4', 6539, 'CCCCCCCCCC', 25),
('1ZeEsK58Ytt3EuD7aEbRaBaGJdqTStuJu', 684, 'DDDDDDDDDD', 68),
('13B3aCAhUM4KSCSCBR5Xp4cXRJ2xyB3yum', 6672, 'BBBBBBBBBB', 77),
('13PXRLR3HJNhoa24qUxcSAx7q7vaGB45FA', 7174, 'AAAAAAAAAA', 6),
('1C8xus5A62vUuHEkPSMgKXV1Sc29i3xhTx', 2252, 'DDDDDDDDDD', 14),
('1NAMzaJ195SMmrx8q6NotUb8C3NNQqRb7c', 5713, 'CCCCCCCCCC', 30),
('1Fsxomkgg85hptGD1A2i3NZ42LK365ZaTS', 9555, 'CCCCCCCCCC', 52),
('1HNUsSkZQ7zhYcdyg2oFBmSdDFczCor9vX', 8744, 'BBBBBBBBBB', 34),
('14sKvW8dUWkh2WEMXBfn3qMSKFHEBdJDXh', 366, 'DDDDDDDDDD', 84),
('1N9Jh9B3o4vVeyNEgbq8XvpteuHa4cJm6y', 446, 'CCCCCCCCCC', 12),
('1MqtuMPBahpn8odtnubWxfgxYpRmuPb3Z9', 5399, 'AAAAAAAAAA', 87),
('16ZwtXXaNsZN4GZJ35f67S8vfcswKDjDJA', 1081, 'CCCCCCCCCC', 46),
('13jRUhASz67PVJNTuR65poH4bYKUwSe71z', 9692, 'AAAAAAAAAA', 55),
('1D3xsLByVNbPHRQHhvE7BHssUUhQ9o6HUp', 6450, 'BBBBBBBBBB', 21),
('17XU7NinSCAhXaiXCGr13LgB2Qp5zgxpBJ', 2688, 'CCCCCCCCCC', 43),
('1PkcXPCShUtCRMxBSbyYnwmoQV3M9ditQS', 3592, 'DDDDDDDDDD', 97),
('1DyeJjdbzBJ267xcuhvAQcUKZjC3EJh9Mc', 5911, 'BBBBBBBBBB', 13),
('19JLRbkkAKvF2kEnvJ7LYYcoeZ9kFqj2zJ', 4176, 'CCCCCCCCCC', 2),
('1CeESY18Naa9CB9WTp7Y8GxeRUz6R6RCBq', 9529, 'CCCCCCCCCC', 6),
('1BpSv9Sc8Qgfkp5KzmcrsoyQBXSGYfUwUm', 3299, 'CCCCCCCCCC', 4),
('115X97oB5Fef9tExyA2KRkxzGf27mw3SuX', 3666, 'AAAAAAAAAA', 33),
('12YPRo5QgLuzGzrNxY4yW915TmUmc7fPam', 7031, 'CCCCCCCCCC', 58),
('15NU7mK8o1uiunohPuaZWmxXXXhYVq1BY4', 4612, 'AAAAAAAAAA', 91),
('1JDaWLaLWZzLzXSXTm1TNTTUkXMmUBM5Zq', 9854, 'AAAAAAAAAA', 99),
('1CFNAxE8A1eQFiVoaJ6tRatSdydMzQjCoN', 570, 'AAAAAAAAAA', 31),
('1K2k8fC6QBUYrTr8ryBLbUVr843vV5q593', 1175, 'CCCCCCCCCC', 78),
('19PNsPc7BQG8ajvNKZEL5mdSjTJhaUHARc', 973, 'DDDDDDDDDD', 49);

-- --------------------------------------------------------

--
-- Table structure for table `token_and_id`
--

DROP TABLE IF EXISTS `token_and_id`;
CREATE TABLE `token_and_id` (
  `token_key` longtext NOT NULL,
  `quiz_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `token_and_id`
--

INSERT INTO `token_and_id` (`token_key`, `quiz_id`) VALUES
('1JgZi1qJ3bPfzTpXutZvt9u8ZRSXtTpGHw', 1),
('1LaJuLdmrrVWd9mm3wEzcMRagQ3SydKUsd', 1),
('17gvoVWWvxDUByDmLfmAAX17NafGyj1TfF', 1),
('1BaueT13ju8Gu3k4nxu9SV4t7AAHXFueTa', 1),
('1AYrWWXkM4LQUH3vtg5P8wYo6vPYF2DrcQ', 1),
('18GRcX4WvTdWDhec6fr3mesQDFw9Q9oDY7', 1),
('1NrDXj9yTrhPR5B4fFDs2gsi3QV3c5hzuz', 1),
('19e79ihxS4UHppvokKWGgNCUJHKNGdBAXe', 1),
('1HRWiNYKR2xZvMXUCz9DY6ormYmYsyQdMR', 1),
('1Ge9QFj4yuntCNbiuKMiCsXUeMxJkUSwGf', 1),
('19iTEatZTxCpBEWUme7PYz3MfewZxmEPwv', 1),
('18fWQFPB5iwuxi6kWGx1JgrLMm4iY3jvMe', 1),
('13GL5rnEeYAzxZQhR12Kf6u625Y9FeEhg2', 1),
('1JBpXdcXy3W1RkfPRvJikGnBEs6p2njVzd', 1),
('1GDhozfqrtMPeq9qdBymp95uPs9Y3fvo1k', 1),
('1BMymsjFpqRXyJEXctzfpJZevPgKLPVfdh', 1),
('1ByKL8ezsc6M82nbMEfhRwndcFjbCUJv2t', 1),
('1Agmw1Hd9eWUVzHrAMSp8vYBXzEuMnJBK5', 1),
('1GjYhw3iTGszxdqZoxUn4bgtB7gNxqYPQZ', 1),
('1DgfUmeU8Z4NsuV9waHyBP2VC4TGHsKC7E', 1),
('1MD434VusNTaPeXLAURU7cLd6PM92V1aDF', 1),
('1BnLwbz29uWMrySsgHHfamytLMKz82nAAu', 1),
('1JsWJJgexC5AZYkTJA5Jyyn2q69EdhqAqH', 1),
('1EXvNSqZmUe7eHz7Hbyswsz7znEtNur8MV', 1),
('1KV1KrWhhGWBtngXfBcDbniynakiGaF8H', 1),
('1KBAw3g77hf2NaSpu3iNSBqikUsHjFzYne', 1),
('1ANckHhGtZ3JZjxgK9DLH5qkKxGQdMspgv', 1),
('1E2xnKGkMvmPGYvYrGDCxphUqk9Cx6zubk', 1),
('1JLwfxe3h5KaTdPXqEaQYTLncbt6GwgmNd', 1),
('1HmtB2962hM6FG3nWym2MHMEBY22CuB8xw', 1),
('12AjteRzeqUwHddF5BG1Sjgvcws5AZkYC9', 1),
('1d4PRBg5R8gvPJg3U2pWuMNMzezudFWYv', 1),
('1LcVBKh6mWM3CvESSVeYrfz4bB8xmoQC8W', 1),
('1GbyYaFavNcusdPf4JfAVdLP9p8hDzimW3', 1),
('1Cdq33BU7ay5agGs7Gjz1trfutmh4Xr8Dn', 1),
('1EfGdNFFEXZwk4NEMgSmQBH12t18JBdqMA', 1),
('14YUM6m1vYpJA3wfXMYtFYdcFjiSBXJamm', 1),
('1AxXfvnJKsxoGe1KwNGCLMk9Nj5vcSSfER', 1),
('14cAfJKYgsmf4KVR1yoiaYvJGMxo2dvdC1', 1),
('1Aztsb75LhFCJCGk3GL5TwqXYqzqFr179g', 1),
('1BuXAxbXPChCFc8tGheiXpVonQTaMDmVrs', 1),
('18PnJ1nCHZAVtCY4PyMrNsDn9TVgcTrg4e', 1),
('18o7A1zmuN7FcrmRcgejADsbLFD49DpZbA', 1),
('1JE6yBWUXWnTJCLZ3HcucwnCXA4doBa7Cc', 1),
('1C2EUAqHgwY1cUQ1iGSKDegfyqWeyZXsj8', 1),
('1FTusnT9CskTiNyRAYdmqD4WhZ34S6DTMX', 1),
('16nyakfRsDYmkauZtrxhxFGWJQDgYcd64J', 1),
('1Ne23NeYemDBaCjXYZqHH5bYSrTqA1jwAD', 1),
('1CBU4Q7LiiS2nnshhGQwERHFQUb4aCZz2Y', 1),
('17Ce36vt9AZUWaSdwwpFY1uC2EdnSNfkgK', 1),
('14EkzFHtWSKxuRbhbctdQhCrvbGDtWgEiA', 1),
('1Pno6QFZGBhs2s4VGYXFQkoWhDyTV9mQy6', 1),
('1NJUyvszyorEox1eeq1GwmsNUiXmZKKozq', 1),
('19wpEfp2EFmu73zq9wmjDdMXCxe6DppoGa', 1),
('1LkEpE6MmwnjDfojEr5Uez77KPQbRk58d4', 1),
('15YnSCfRSZkFiLwFCa9B2brp18xn8iomqx', 1),
('13mnhdGW9tnkwnkQRHviuvkDDzyFdzEFDu', 1),
('15A6CZ3BfRGAuR8XDjW4BtF69J9Ds13YXG', 1),
('1F2VpbmvtmMVu2dqTLgtLwv7HoG4VWDS2f', 1),
('1ACaVDG4DcSeMHeNZwnrELstvPKtqfJ6Fu', 1),
('1DAkwjobicWAGZBg2Mgp1twwT1PwWnadXr', 1),
('1JKJnmBysKD66GQy8NGNTRFCQba2aAMmVm', 1),
('1JsSLxJghDYSSJHjA5BnVr7FndgUUm54j2', 1),
('1Gs3E73TRZLnGLg3tnSZLTantEzJfCxG4W', 1),
('19YpSM3F8EVRQR1VQoq34wj78husxv2KMv', 1),
('1DQirWowXRwCDvo3SYyBkKqnDLrxwd3K1Z', 1),
('13MEqzTkmQsXnTQMsLhYXBqA12p6N4hKKZ', 1),
('17HJCBFCxYRD7CWbgjAtFfNPYp7N4pEFp8', 1),
('1P3r7oCyiHSw4mZVz4ZwmoZ4Uq7UBCRnMG', 1),
('1FrGwRd19dwW3e7KwbHsjCic1kZxctoanV', 1),
('1L7EWm72AZ8EJhKfo1hqAHSNLv8g6ZF4Yi', 1),
('1H6oM7pee1FXHJUWBcorCAkiDiLJAsXHZL', 1),
('1MP4eWp4sfUZm9LP3fG2Wk6eeKcM5hTHwy', 1),
('1KRCufSu6is2aaNgpdR6G64Up1zhXWtjp4', 1),
('1ZeEsK58Ytt3EuD7aEbRaBaGJdqTStuJu', 1),
('13B3aCAhUM4KSCSCBR5Xp4cXRJ2xyB3yum', 1),
('13PXRLR3HJNhoa24qUxcSAx7q7vaGB45FA', 1),
('1C8xus5A62vUuHEkPSMgKXV1Sc29i3xhTx', 1),
('1NAMzaJ195SMmrx8q6NotUb8C3NNQqRb7c', 1),
('1Fsxomkgg85hptGD1A2i3NZ42LK365ZaTS', 1),
('1HNUsSkZQ7zhYcdyg2oFBmSdDFczCor9vX', 1),
('14sKvW8dUWkh2WEMXBfn3qMSKFHEBdJDXh', 1),
('1N9Jh9B3o4vVeyNEgbq8XvpteuHa4cJm6y', 1),
('1MqtuMPBahpn8odtnubWxfgxYpRmuPb3Z9', 1),
('16ZwtXXaNsZN4GZJ35f67S8vfcswKDjDJA', 1),
('13jRUhASz67PVJNTuR65poH4bYKUwSe71z', 1),
('1D3xsLByVNbPHRQHhvE7BHssUUhQ9o6HUp', 1),
('17XU7NinSCAhXaiXCGr13LgB2Qp5zgxpBJ', 1),
('1PkcXPCShUtCRMxBSbyYnwmoQV3M9ditQS', 1),
('1DyeJjdbzBJ267xcuhvAQcUKZjC3EJh9Mc', 1),
('19JLRbkkAKvF2kEnvJ7LYYcoeZ9kFqj2zJ', 1),
('1CeESY18Naa9CB9WTp7Y8GxeRUz6R6RCBq', 1),
('1BpSv9Sc8Qgfkp5KzmcrsoyQBXSGYfUwUm', 1),
('115X97oB5Fef9tExyA2KRkxzGf27mw3SuX', 1),
('12YPRo5QgLuzGzrNxY4yW915TmUmc7fPam', 1),
('15NU7mK8o1uiunohPuaZWmxXXXhYVq1BY4', 1),
('1JDaWLaLWZzLzXSXTm1TNTTUkXMmUBM5Zq', 1),
('1CFNAxE8A1eQFiVoaJ6tRatSdydMzQjCoN', 1),
('1K2k8fC6QBUYrTr8ryBLbUVr843vV5q593', 1),
('19PNsPc7BQG8ajvNKZEL5mdSjTJhaUHARc', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `quiz`
--
ALTER TABLE `quiz`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `quiz`
--
ALTER TABLE `quiz`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
