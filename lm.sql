-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2018-11-24 07:13:08
-- 服务器版本： 10.1.28-MariaDB
-- PHP Version: 5.6.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lm`
--

-- --------------------------------------------------------

--
-- 表的结构 `index_carousel`
--

CREATE TABLE `index_carousel` (
  `cid` int(11) NOT NULL,
  `img` varchar(128) DEFAULT NULL,
  `title` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `index_carousel`
--

INSERT INTO `index_carousel` (`cid`, `img`, `title`) VALUES
(1, 'img/index/lunbo1.jpg', '轮播广告商品1'),
(2, 'img/index/lunbo2.jpg', '轮播广告商品2'),
(3, 'img/index/lunbo3.jpg', '轮播广告商品3'),
(4, 'img/index/lunbo4.jpg', '轮播广告商品4');

-- --------------------------------------------------------

--
-- 表的结构 `index_product`
--

CREATE TABLE `index_product` (
  `pid` int(11) NOT NULL,
  `title` varchar(64) DEFAULT NULL,
  `details` varchar(128) DEFAULT NULL,
  `pic` varchar(128) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `index_product`
--

INSERT INTO `index_product` (`pid`, `title`, `details`, `pic`, `price`) VALUES
(1, 'X65L', '125%超高色域 | 4K HDR超高清画质', 'img/index/product_2.jpg', '4099.00'),
(2, 'X50 Pro', '4K HDR超清真彩 | 16GB 高速闪存', 'img/index/product_3.jpg', '2599.00'),
(3, 'X40L', 'HDR高动态范围 | 16GB超大存储', 'img/index/product_4.jpg', '1699.00'),
(4, 'X55L', '4K HDR超高清画质 | 16GB超大存储', 'img/index/product_5.jpg', '799.00'),
(5, 'X43L', 'Mstar四核处理器 | 16GB超大存储', 'img/index/product_6.jpg', '1899.00'),
(6, '乐视三合一体感摄像头', '来自未来科技的体感摄像头', 'img/index/f2_img1.jpg', '599.00'),
(7, '乐视体感手枪', '为射击游戏而生的操控设备', 'img/index/f2_img2.jpg', '299.00'),
(8, '乐视路由器', '高通芯片性能更稳定', 'img/index/f2_img3.jpg', '119.00'),
(9, '超4 x70 云底座', '高通芯片性能更稳定', 'img/index/f2_img4.jpg', '369.00'),
(10, '固定式壁挂 LS065NN3', '高通芯片性能更稳定', 'img/index/f2_img5.jpg', '99.00'),
(11, '旋转壁挂支架LS050NN2P', '高通芯片性能更稳定', 'img/index/f2_img6.jpg', '89.00');

-- --------------------------------------------------------

--
-- 表的结构 `lm_user`
--

CREATE TABLE `lm_user` (
  `uid` int(11) NOT NULL,
  `uname` varchar(32) DEFAULT NULL,
  `upwd` varchar(32) DEFAULT NULL,
  `email` varchar(64) DEFAULT NULL,
  `phone` varchar(16) DEFAULT NULL,
  `gender` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `lm_user`
--

INSERT INTO `lm_user` (`uid`, `uname`, `upwd`, `email`, `phone`, `gender`) VALUES
(1, 'dingding', '123456', 'ding@qq.com', '13501234567', 1),
(2, 'dangdang', '123456', 'dang@qq.com', '13501234568', 1),
(3, 'doudou', '123456', 'dou@qq.com', '13501234569', 1),
(4, 'yaya', '123456', 'ya@qq.com', '13501234560', 0);

-- --------------------------------------------------------

--
-- 表的结构 `product_details`
--

CREATE TABLE `product_details` (
  `did` int(11) NOT NULL,
  `dpic` varchar(128) DEFAULT NULL,
  `title` varchar(128) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `product_details`
--

INSERT INTO `product_details` (`did`, `dpic`, `title`, `price`) VALUES
(1, 'img/product/dp1.jpg', 'X55L', '2399.00'),
(2, 'img/product/dp2.jpg', 'X40L', '1499.00'),
(3, 'img/product/dp3.jpg', 'X50Pro', '2599.00'),
(4, 'img/product/dp4.jpg', 'X43L', '1899.00'),
(5, 'img/product/dp5.jpg', 'X55N', '3839.00'),
(6, 'img/product/dp6.jpg', 'X55L', '2799.00'),
(7, 'img/product/dp7.jpg', 'X55L', '2399.00'),
(8, 'img/product/dp8.jpg', 'X65L', '4099.00'),
(9, 'img/product/dp9.jpg', 'X65N', '5939.00'),
(10, 'img/product/dp10.jpg', 'X50N', '2839.00'),
(11, 'img/product/dp11.jpg', 'X43N', '2439.00'),
(12, 'img/product/dp12.jpg', 'X40N', '2239.00'),
(13, 'img/product/dp13.jpg', 'X40L', '1699.00'),
(14, 'img/product/dp14.jpg', 'X50L', '2099.00'),
(15, 'img/product/dp15.jpg', '超4 X75', '12999.00'),
(16, 'img/product/dp16.jpg', 'Zero65', '6499.00'),
(17, 'img/product/dp17.jpg', 'X40C', '1299.00'),
(18, 'img/product/dp18.jpg', 'X40C', '1599.00'),
(19, 'img/product/dp19.jpg', 'Zero65', '7999.00'),
(20, 'img/product/dp20.jpg', '屏霸', '1499.00'),
(21, 'img/product/dp21.jpg', 'Unique75S', '25999.00'),
(22, 'img/product/dp22.jpg', '超4 X55', '5498.00'),
(23, 'img/product/dp23.jpg', 'uMax120', '599900.00'),
(24, 'img/product/dp24.jpg', 'X65S', '6599.00'),
(25, 'img/product/dp1.jpg', 'X55L', '2399.00'),
(26, 'img/product/dp2.jpg', 'X40L', '1499.00'),
(27, 'img/product/dp3.jpg', 'X50Pro', '2599.00'),
(28, 'img/product/dp4.jpg', 'X43L', '1899.00'),
(29, 'img/product/dp5.jpg', 'X55N', '3839.00'),
(30, 'img/product/dp6.jpg', 'X55L', '2799.00'),
(31, 'img/product/dp7.jpg', 'X55L', '2399.00'),
(32, 'img/product/dp8.jpg', 'X65L', '4099.00'),
(33, 'img/product/dp9.jpg', 'X65N', '5939.00'),
(34, 'img/product/dp10.jpg', 'X50N', '2839.00'),
(35, 'img/product/dp11.jpg', 'X43N', '2439.00'),
(36, 'img/product/dp12.jpg', 'X40N', '2239.00'),
(37, 'img/product/dp13.jpg', 'X40L', '1699.00'),
(38, 'img/product/dp14.jpg', 'X50L', '2099.00'),
(39, 'img/product/dp15.jpg', '超4 X75', '12999.00'),
(40, 'img/product/dp16.jpg', 'Zero65', '6499.00'),
(41, 'img/product/dp17.jpg', 'X40C', '1299.00'),
(42, 'img/product/dp18.jpg', 'X40C', '1599.00'),
(43, 'img/product/dp19.jpg', 'Zero65', '7999.00'),
(44, 'img/product/dp3.jpg', 'X50Pro', '2599.00'),
(45, 'img/product/dp20.jpg', '屏霸', '1499.00'),
(46, 'img/product/dp1.jpg', 'X55L', '2399.00'),
(47, 'img/product/dp2.jpg', 'X40L', '1499.00'),
(48, 'img/product/dp3.jpg', 'X50Pro', '2599.00'),
(49, 'img/product/dp4.jpg', 'X43L', '1899.00'),
(50, 'img/product/dp5.jpg', 'X55N', '3839.00'),
(51, 'img/product/dp6.jpg', 'X55L', '2799.00'),
(52, 'img/product/dp7.jpg', 'X55L', '2399.00'),
(53, 'img/product/dp8.jpg', 'X65L', '4099.00'),
(54, 'img/product/dp9.jpg', 'X65N', '5939.00'),
(55, 'img/product/dp10.jpg', 'X50N', '2839.00'),
(56, 'img/product/dp11.jpg', 'X43N', '2439.00'),
(57, 'img/product/dp12.jpg', 'X40N', '2239.00'),
(58, 'img/product/dp13.jpg', 'X40L', '1699.00'),
(59, 'img/product/dp14.jpg', 'X50L', '2099.00'),
(60, 'img/product/dp15.jpg', '超4 X75', '12999.00'),
(61, 'img/product/dp16.jpg', 'Zero65', '6499.00'),
(62, 'img/product/dp17.jpg', 'X40C', '1299.00'),
(63, 'img/product/dp18.jpg', 'X40C', '1599.00'),
(64, 'img/product/dp19.jpg', 'Zero65', '7999.00'),
(65, 'img/product/dp20.jpg', '屏霸', '1499.00'),
(66, 'img/product/dp21.jpg', 'Unique75S', '25999.00'),
(67, 'img/product/dp22.jpg', '超4 X55', '5498.00'),
(68, 'img/product/dp23.jpg', 'uMax120', '599900.00'),
(69, 'img/product/dp24.jpg', 'X65S', '6599.00'),
(70, 'img/product/dp1.jpg', 'X55L', '2399.00')
--
-- Indexes for dumped tables
--

--
-- Indexes for table `index_carousel`
--
ALTER TABLE `index_carousel`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `index_product`
--
ALTER TABLE `index_product`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `lm_user`
--
ALTER TABLE `lm_user`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `product_details`
--
ALTER TABLE `product_details`
  ADD PRIMARY KEY (`did`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `index_carousel`
--
ALTER TABLE `index_carousel`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 使用表AUTO_INCREMENT `index_product`
--
ALTER TABLE `index_product`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- 使用表AUTO_INCREMENT `lm_user`
--
ALTER TABLE `lm_user`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 使用表AUTO_INCREMENT `product_details`
--
ALTER TABLE `product_details`
  MODIFY `did` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
