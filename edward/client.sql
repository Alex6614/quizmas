-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 06, 2018 at 07:52 PM
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
-- Table structure for table `client`
--

DROP TABLE IF EXISTS `client`;
CREATE TABLE `client` (
  `token_key` longtext NOT NULL,
  `duration` int(11) NOT NULL,
  `destination` text NOT NULL,
  `age` int(11) NOT NULL,
  `mode` text NOT NULL,
  `gender` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`token_key`, `duration`, `destination`, `age`, `mode`, `gender`) VALUES
('1GH9YLEL7uyP8R5jSr98KJdMr3dUkkyRKN', 256, 'Brazil', 64, 'Individual', 'Female'),
('1Q2WM5Urj8aTdu2KoCsfqzaopHHip6sAZk', 112, 'China', 73, 'Corporation', 'Male'),
('1L5ZwAN47Mc2RkQTLrPhe2QJm6UVUzgfNf', 507, 'China', 49, 'Individual', 'Male'),
('1FAAhVzxe58crtVWYma45caPbDKCJxrYbN', 151, 'Albania', 82, 'Group', 'Male'),
('1be4tMbtpy7XLE3QFXSunochoK1ZkK2bB', 460, 'Ukraine', 68, 'Individual', 'Male'),
('15oHKXwoNKRpapfqYy8Cmct6NEiTiHS6Yz', 561, 'Serbia', 78, 'Corporation', 'Female'),
('19XyWmUKiwXzKzbosxiZKjssf911i8zaiX', 96, 'Portugal', 99, 'Individual', 'Male'),
('12RHVDhii2zT4BvVLS4dU4b9H5rpPMHxtc', 53, 'China', 60, 'Corporation', 'Female'),
('1EYC676PB66JBmwcmrf5G1vLdj93v42kJq', 584, 'France', 94, 'Corporation', 'Female'),
('1BRr4aTTGAeisRNjG9JduM9YE6KCni8L11', 548, 'Brazil', 25, 'Corporation', 'Female'),
('19dzgCGNVx4SvKx1FyZw8mcaWcXTqk3skF', 587, 'Kazakhstan', 70, 'Group', 'Female'),
('1JDQhNQaVFrL4YuZxYcwdrj3UxmUmGztHv', 452, 'Madagascar', 98, 'Group', 'Male'),
('1HH5ouYuzMcETtzKEkA7pQQPqXLZ1yMWkV', 369, 'Indonesia', 78, 'Group', 'Male'),
('16LFTNtSLvTRVxJJWYVM6xvV1oPhfcJvbt', 358, 'Argentina', 88, 'Group', 'Female'),
('18oVJ4ND8UHUNJqhnu97zU77yReVH2wcnD', 287, 'China', 90, 'Group', 'Female'),
('1EmLfYwFTnHr63X15tYnsWFrBXCawyJVda', 382, 'China', 52, 'Individual', 'Male'),
('1JZVvFFRaDQet86qqnwmoh4XgapkLNsEDY', 328, 'Russia', 67, 'Individual', 'Female'),
('115DugKyYCZ2Apjx6Z5Qm6XFMRssJeceDj', 444, 'Uzbekistan', 65, 'Corporation', 'Female'),
('14zGDisvgr1B2Ejn4qj1t2JadhMHodn5gV', 121, 'Dominican', 91, 'Corporation', 'Female'),
('17DV9WaHxQUkeBAHHoecsdLDmZwSWH5py6', 528, 'Peru', 19, 'Group', 'Male'),
('1DrBaQQXcZAj4qQnv22nNScYTso25oYw36', 527, 'Indonesia', 73, 'Group', 'Male'),
('1HAVZ1bPLpGxHFFqeQRzsPwVtxq4piWP8B', 468, 'Indonesia', 26, 'Individual', 'Female'),
('1LiK4uKbnReykQ8F2Y2FUBqsA9krHeryZq', 53, 'Madagascar', 69, 'Corporation', 'Male'),
('13tAD3LbKJzyogS8Cck2CUE6bWWj5CXq54', 596, 'China', 83, 'Group', 'Female'),
('1FmxNiyirhREjvv5K6uC3eYfkbVZLD68UX', 506, 'Czech', 40, 'Corporation', 'Male'),
('15oda5NqT9KxYnL8WbyQHVthPD11VmEipe', 298, 'Philippines', 54, 'Group', 'Female'),
('12qFjsvKGHHfdgrpF842JrqvWLEGoQ3xJZ', 310, 'Panama', 73, 'Corporation', 'Female'),
('1KP5qLkJ7MaubMrv6jasdMu2T691fqvdho', 526, 'China', 44, 'Individual', 'Female'),
('19Mok7ZL3xriQTT4yosUzMTydJ9z9xKRP2', 67, 'Argentina', 75, 'Individual', 'Female'),
('1BgnkpgkvgFjGJAZUaWS581ZE6pEGkQNu1', 354, 'Sweden', 50, 'Individual', 'Female'),
('1Bo477nqv9q7nfx8PGwQFMNVADAExo1MEM', 50, 'Azerbaijan', 21, 'Group', 'Male'),
('18apRTDVr4eajLgdjTe9pDmy1zTHgEQzWD', 538, 'Colombia', 37, 'Group', 'Male'),
('1J1cLutYvUSEDCCsrkJ3P31Qg8ACAqcaQk', 161, 'Gambia', 93, 'Corporation', 'Male'),
('1Hpb6W7FCAminN2NzJMX4a4fFeNac5eaUH', 405, 'Ethiopia', 58, 'Individual', 'Male'),
('1CiSNtdqDkHneNKLsNg2qA7FwvjSQyL3ep', 211, 'Thailand', 46, 'Individual', 'Female'),
('1AhVcMWBcFvg7nvRJBfKgTfJZFQwsqUwsd', 499, 'Chile', 38, 'Group', 'Male'),
('12USxbdCsnaSvU9gFw7PdHBHrPmHDZyDaj', 106, 'North', 50, 'Individual', 'Male'),
('12m5cGNtRZrbeovdZHxSTBkErbE1X74Nfi', 196, 'Jamaica', 59, 'Corporation', 'Male'),
('19JMeazGZTpEXy9p75sJ1Xm7N8qTQBWnoH', 582, 'Indonesia', 56, 'Group', 'Male'),
('1LwxHBU2FU8q7F59GmtBtoD8hoMZpZ6JUY', 95, 'Macedonia', 95, 'Individual', 'Female'),
('1AyXS9f2AbTi6hVpSjKdbhgALzDTkTxByK', 105, 'Indonesia', 84, 'Group', 'Female'),
('15PR9azoGrJPAiC4yTTR4p2gQKUi6Hq8J7', 520, 'United', 35, 'Individual', 'Male'),
('1EHsjZCWxvBe27eW1DQhJuC6FghHxDc7yR', 322, 'Indonesia', 73, 'Individual', 'Female'),
('1JdatuzBpzaC5zmjoaRC3jnRZPvPnBL7eG', 442, 'Philippines', 58, 'Individual', 'Female'),
('1PESp7MHsVbUoBnFXm5RvQn93ibVqC8bsA', 253, 'Nicaragua', 27, 'Individual', 'Female'),
('1M33beS1FRLZV6ShcTd2vbpn6d1BrqVw11', 251, 'Canada', 63, 'Group', 'Female'),
('1Ka6UPMFzEnYGNpViknoso6ZTPDjbFhWDg', 596, 'China', 26, 'Corporation', 'Female'),
('13gRXSfw9YHzBzDzYdRVG13NN8osYtfQfx', 116, 'Vietnam', 80, 'Corporation', 'Male'),
('1J6RbuzB54gYk39q7cK6GxwsQy4Pg6LPc1', 439, 'Philippines', 100, 'Individual', 'Male'),
('1DXLFs3HLK9H3mBu91Zr6UJHGRtdC5EWq6', 266, 'Czech', 46, 'Individual', 'Male'),
('19YARANRezu6CvSS2USpKRvJ4ujVPsM6YP', 202, 'Angola', 26, 'Individual', 'Female'),
('1QGUBLwrEA1E1EKQhMCHUje6JczoxG35bm', 248, 'Poland', 33, 'Group', 'Female'),
('1NtDVh4hhJd2SLYo39RkxwUsUFtYet7iD9', 250, 'Jamaica', 99, 'Individual', 'Male'),
('163hnCSxYKuz2vV9tbaA5me52nmXEjME31', 542, 'Netherlands', 62, 'Group', 'Male'),
('1C9oaUqYuDjx8WDdz9twFQaXB27WNZ3EU6', 317, 'Russia', 39, 'Corporation', 'Male'),
('14Jua5TCLrM62JSndYTNJCyZ9PXSQaJm6b', 213, 'China', 63, 'Corporation', 'Male'),
('1Kw3e9SsGjwLQpqTXf7rtPtZfWe8HAdBFM', 143, 'Peru', 57, 'Group', 'Male'),
('15cxVuHMqZ7ZBFKpu8rbPAW8CGTNxXvZuj', 430, 'Indonesia', 43, 'Corporation', 'Female'),
('18NCX6nNzWWFMKFpURkCAk7WUmmrWgDXJ8', 53, 'Belarus', 64, 'Group', 'Female'),
('1MachikzqNcPoRgjS4U4LRACYt8x1xLd8y', 451, 'Russia', 56, 'Individual', 'Male'),
('1AhSMbVD62qCGcbX72mL2KUAaPcyu191mc', 524, 'Poland', 95, 'Individual', 'Male'),
('176z63vkGDZu3rTxPsyVhmZPuai9fX57Qz', 128, 'China', 66, 'Group', 'Male'),
('1MGzwTqyy8jAzwGZjSfgVW5C8sAzmLXW75', 206, 'China', 56, 'Corporation', 'Male'),
('1ACpiGNFWK6mZWpDxY76CMQqVxFNwcLYoD', 330, 'Peru', 48, 'Group', 'Female'),
('1Rfu5mqypsy8kQSCxy44wisY1Lh7aLSRw', 417, 'Russia', 44, 'Group', 'Female'),
('1HBnASU4musPBFwWzPxvZiM6yfEQha9N6G', 588, 'Pakistan', 46, 'Corporation', 'Male'),
('16Wm7K6J3qUkcVsMyF9bhjvagxJzeYZqKZ', 377, 'China', 58, 'Corporation', 'Female'),
('1JXNcFkNpD7dtrHhW5hHqHr2Hewoftg8pE', 64, 'Pakistan', 43, 'Group', 'Male'),
('16jcPBcMqGwKJfuTsPB6yqnsKh9Rq2hkSC', 67, 'Philippines', 79, 'Corporation', 'Female'),
('1DP8R13XCy49E3AMG4D8RwGdcwiPJcVyxQ', 593, 'China', 18, 'Group', 'Male'),
('137hve9KQdofusGmupTJM5FbgQsHxa2M6W', 366, 'Pakistan', 95, 'Group', 'Female'),
('1KMzft4NeManKiGt5mvQGbjeg32DNqAcXk', 276, 'Sweden', 100, 'Individual', 'Female'),
('12X54fton8wcHAR1RnHQQijPp7tQyFCcux', 474, 'China', 32, 'Individual', 'Female'),
('19zNmLN4TYUGwQgXeNRTsY3Qf7gEEShENc', 189, 'Portugal', 56, 'Individual', 'Male'),
('1MSNqMsz8rHTRyrU4c96uX7Ac1UkNwWuXs', 368, 'Sweden', 67, 'Corporation', 'Female'),
('19fvnGdjZKunQZWA6UnRNxAL5ivWQvH1sq', 188, 'Canada', 23, 'Group', 'Male'),
('1J4Hy5PNwEhcTq2SYKebh65QCSPvYQJgBq', 488, 'Portugal', 83, 'Group', 'Female'),
('12C1aWvPqJEqjju96d3ChcF2RAtwvA3zTt', 115, 'Vietnam', 29, 'Individual', 'Female'),
('1BNKHrTJ1YMNGD7U2Wn82ACWcF48WQz5Bj', 43, 'Portugal', 34, 'Individual', 'Male'),
('1LU7tDndqQMqLx5SRNxPaKLKN56rtvdQK4', 454, 'Philippines', 44, 'Group', 'Female'),
('16t3AzzBRf6X3uGdq2JSaMQdDDPPj6doTR', 182, 'China', 55, 'Corporation', 'Male'),
('1DdfPqcqrjrYBzPCuC83qjE5KT9XicKxBL', 211, 'Libya', 34, 'Individual', 'Male'),
('1JMJnrNoUyFJvvH4tcKmwcYhfgBshr2S9E', 308, 'China', 58, 'Group', 'Female'),
('18EZzkx71v9vPG6dk9YhVuW8LpayTWiZcG', 448, 'Albania', 27, 'Group', 'Female'),
('15pSkPTLp62FLS62Cw3zF4Zh6BT6tjCg3P', 322, 'China', 85, 'Corporation', 'Male'),
('14Zswzcq4tQQ48xsLAVPYT9ddhU45yxApJ', 430, 'Poland', 62, 'Group', 'Male'),
('19oLC9HXEayc7VBCt8vTdzoAznH6xoQ9LN', 217, 'Estonia', 42, 'Corporation', 'Male'),
('1Eaqz3GCFHA5J8NmbquT6WxJvJgfFJULs2', 487, 'China', 63, 'Group', 'Female'),
('166x3mfb7Bj96AVXqAEvaeqmSoaEBsi6Zb', 461, 'Russia', 92, 'Individual', 'Male'),
('1MbpNqLwXCi7g3xryV7Fx3toXhLqo8xMgX', 409, 'China', 56, 'Group', 'Female'),
('16Hs6kNoBxf4ntEnxDcAdEUQmYyuAcE81M', 284, 'Indonesia', 80, 'Individual', 'Female'),
('199m3KSQkeq8oU7sPJXBTw26P722Qn1iQw', 245, 'China', 43, 'Individual', 'Male'),
('1L2Gw7DRq6Fr11fJfkoLESxrbkGeMLMyAX', 238, 'Philippines', 95, 'Corporation', 'Female'),
('1F7eNTXys287VPTSKS76NDtJPkUFqmfMi5', 305, 'Poland', 63, 'Corporation', 'Female'),
('1AVNNQY4XTE44w4aFD8JD6tDpNRwW4Bvav', 493, 'Portugal', 92, 'Corporation', 'Female'),
('1LVen9Y46SusMAhY3mr4X78AWaQ3PAssZT', 146, 'Philippines', 26, 'Group', 'Male'),
('1CCGtG42zsrr4DVNvgrRR8cfxTWkdwYbw', 453, 'China', 21, 'Group', 'Male'),
('1AAQuzNvXQoTunLggn7LEKnwuyNBrf288h', 379, 'Russia', 73, 'Individual', 'Female'),
('1J9RxuL1ytWo78Piwy1C4q2MUeqUNEKVWs', 565, 'Russia', 71, 'Corporation', 'Male');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
