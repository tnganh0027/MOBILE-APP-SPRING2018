-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 21, 2016 at 02:05 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 7.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lazada`
--

-- --------------------------------------------------------

--
-- Table structure for table `binhluan`
--

CREATE TABLE `binhluan` (
  `MABL` int(11) NOT NULL,
  `TIEUDE` varchar(200) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `chitietbinhluan`
--

CREATE TABLE `chitietbinhluan` (
  `MABL` int(11) NOT NULL,
  `MANV` int(11) NOT NULL,
  `MASP` int(11) NOT NULL,
  `NOIDUNG` text,
  `NGAYBL` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `chitiethoadon`
--

CREATE TABLE `chitiethoadon` (
  `MAHD` int(11) NOT NULL,
  `MASP` int(11) NOT NULL,
  `SOLUONG` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chitiethoadon`
--

INSERT INTO `chitiethoadon` (`MAHD`, `MASP`, `SOLUONG`) VALUES
(8, 3, 4),
(8, 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `chitietkhuyenmai`
--

CREATE TABLE `chitietkhuyenmai` (
  `MASP` int(11) NOT NULL,
  `MAKM` int(11) NOT NULL,
  `PHANTRAMKM` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chitietkhuyenmai`
--

INSERT INTO `chitietkhuyenmai` (`MASP`, `MAKM`, `PHANTRAMKM`) VALUES
(3, 1, 49),
(5, 1, 49),
(6, 1, 49),
(7, 1, 49),
(8, 1, 49),
(9, 1, 49),
(10, 1, 49),
(11, 2, 50),
(12, 2, 50),
(13, 2, 50),
(14, 2, 50),
(15, 2, 50),
(16, 2, 50),
(17, 2, 50),
(18, 2, 50),
(19, 2, 50),
(20, 2, 50),
(21, 3, 40),
(21, 4, 30),
(22, 3, 40),
(22, 4, 30),
(23, 3, 40),
(23, 4, 30),
(24, 3, 40),
(24, 4, 30),
(25, 3, 40),
(25, 4, 30),
(26, 3, 40),
(26, 4, 30),
(27, 3, 40),
(27, 4, 30),
(28, 3, 40),
(28, 4, 30),
(29, 3, 40),
(29, 4, 30),
(30, 3, 40),
(30, 4, 30);

-- --------------------------------------------------------

--
-- Table structure for table `chitietsanpham`
--

CREATE TABLE `chitietsanpham` (
  `MACHITIET` int(11) NOT NULL,
  `MASP` int(11) NOT NULL,
  `TENCHITIET` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `GIATRI` text CHARACTER SET utf8 COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chitietsanpham`
--

INSERT INTO `chitietsanpham` (`MACHITIET`, `MASP`, `TENCHITIET`, `GIATRI`) VALUES
(37, 3, '3D TV', 'No'),
(38, 3, 'Camera Back', '11 - 15 MP'),
(39, 3, 'Camera Front', '5 - 6 MP'),
(40, 3, 'Điều kiện', 'Mới'),
(41, 3, 'Curved TV', 'No'),
(42, 3, 'Kích thước màn hình', '4.7'),
(43, 3, 'Mẫu mã', '6s'),
(44, 3, 'Network Connections', '3G-HSPA|4G-LTE'),
(45, 3, 'Hệ điều hành', 'IOS'),
(46, 3, 'Operation System Version', 'IOS9'),
(47, 3, 'Trọng lượng (KG)', '0.2'),
(48, 3, 'Sản xuất tại', 'Trung quốc'),
(49, 3, 'RAM memory', '2GB'),
(50, 3, 'Sim type', 'SIM nano'),
(51, 3, 'Sim Slots', '1'),
(52, 3, 'Bộ nhớ trong', '64GB'),
(53, 3, 'Bảo hành', '12 tháng'),
(71, 5, '3D TV', 'No'),
(72, 5, 'Camera Back', '11 - 15 MP'),
(73, 5, 'Camera Front', '5 - 6 MP'),
(74, 5, 'Điều kiện', 'Mới'),
(75, 5, 'Curved TV', 'No'),
(76, 5, 'Kích thước màn hình', '4.7'),
(77, 5, 'Mẫu mã', '6s'),
(78, 5, 'Network Connections', '3G-HSPA|4G-LTE'),
(79, 5, 'Hệ điều hành', 'IOS'),
(80, 5, 'Operation System Version', 'IOS9'),
(81, 5, 'Trọng lượng (KG)', '0.2'),
(82, 5, 'Sản xuất tại', 'Trung quốc'),
(83, 5, 'RAM memory', '2GB'),
(84, 5, 'Sim type', 'SIM nano'),
(85, 5, 'Sim Slots', '1'),
(86, 5, 'Bộ nhớ trong', '64GB'),
(87, 5, 'Bảo hành', '12 tháng'),
(88, 6, '3D TV', 'No'),
(89, 6, 'Camera Back', '11 - 15 MP'),
(90, 6, 'Camera Front', '5 - 6 MP'),
(91, 6, 'Điều kiện', 'Mới'),
(92, 6, 'Curved TV', 'No'),
(93, 6, 'Kích thước màn hình', '4.7'),
(94, 6, 'Mẫu mã', '6s'),
(95, 6, 'Network Connections', '3G-HSPA|4G-LTE'),
(96, 6, 'Hệ điều hành', 'IOS'),
(97, 6, 'Operation System Version', 'IOS9'),
(98, 6, 'Trọng lượng (KG)', '0.2'),
(99, 6, 'Sản xuất tại', 'Trung quốc'),
(100, 6, 'RAM memory', '2GB'),
(101, 6, 'Sim type', 'SIM nano'),
(102, 6, 'Sim Slots', '1'),
(103, 6, 'Bộ nhớ trong', '64GB'),
(104, 6, 'Bảo hành', '12 tháng'),
(105, 7, '3D TV', 'No'),
(106, 7, 'Camera Back', '11 - 15 MP'),
(107, 7, 'Camera Front', '5 - 6 MP'),
(108, 7, 'Điều kiện', 'Mới'),
(109, 7, 'Curved TV', 'No'),
(110, 7, 'Kích thước màn hình', '4.7'),
(111, 7, 'Mẫu mã', '6s'),
(112, 7, 'Network Connections', '3G-HSPA|4G-LTE'),
(113, 7, 'Hệ điều hành', 'IOS'),
(114, 7, 'Operation System Version', 'IOS9'),
(115, 7, 'Trọng lượng (KG)', '0.2'),
(116, 7, 'Sản xuất tại', 'Trung quốc'),
(117, 7, 'RAM memory', '2GB'),
(118, 7, 'Sim type', 'SIM nano'),
(119, 7, 'Sim Slots', '1'),
(120, 7, 'Bộ nhớ trong', '64GB'),
(121, 7, 'Bảo hành', '12 tháng'),
(122, 8, '3D TV', 'No'),
(123, 8, 'Camera Back', '11 - 15 MP'),
(124, 8, 'Camera Front', '5 - 6 MP'),
(125, 8, 'Điều kiện', 'Mới'),
(126, 8, 'Curved TV', 'No'),
(127, 8, 'Kích thước màn hình', '4.7'),
(128, 8, 'Mẫu mã', '6s'),
(129, 8, 'Network Connections', '3G-HSPA|4G-LTE'),
(130, 8, 'Hệ điều hành', 'IOS'),
(131, 8, 'Operation System Version', 'IOS9'),
(132, 8, 'Trọng lượng (KG)', '0.2'),
(133, 8, 'Sản xuất tại', 'Trung quốc'),
(134, 8, 'RAM memory', '2GB'),
(135, 8, 'Sim type', 'SIM nano'),
(136, 8, 'Sim Slots', '1'),
(137, 8, 'Bộ nhớ trong', '64GB'),
(138, 8, 'Bảo hành', '12 tháng'),
(139, 9, '3D TV', 'No'),
(140, 9, 'Camera Back', '11 - 15 MP'),
(141, 9, 'Camera Front', '5 - 6 MP'),
(142, 9, 'Điều kiện', 'Mới'),
(143, 9, 'Curved TV', 'No'),
(144, 9, 'Kích thước màn hình', '4.7'),
(145, 9, 'Mẫu mã', '6s'),
(146, 9, 'Network Connections', '3G-HSPA|4G-LTE'),
(147, 9, 'Hệ điều hành', 'IOS'),
(148, 9, 'Operation System Version', 'IOS9'),
(149, 9, 'Trọng lượng (KG)', '0.2'),
(150, 9, 'Sản xuất tại', 'Trung quốc'),
(151, 9, 'RAM memory', '2GB'),
(152, 9, 'Sim type', 'SIM nano'),
(153, 9, 'Sim Slots', '1'),
(154, 9, 'Bộ nhớ trong', '64GB'),
(155, 9, 'Bảo hành', '12 tháng'),
(156, 10, '3D TV', 'No'),
(157, 10, 'Camera Back', '11 - 15 MP'),
(158, 10, 'Camera Front', '5 - 6 MP'),
(159, 10, 'Điều kiện', 'Mới'),
(160, 10, 'Curved TV', 'No'),
(161, 10, 'Kích thước màn hình', '4.7'),
(162, 10, 'Mẫu mã', '6s'),
(163, 10, 'Network Connections', '3G-HSPA|4G-LTE'),
(164, 10, 'Hệ điều hành', 'IOS'),
(165, 10, 'Operation System Version', 'IOS9'),
(166, 10, 'Trọng lượng (KG)', '0.2'),
(167, 10, 'Sản xuất tại', 'Trung quốc'),
(168, 10, 'RAM memory', '2GB'),
(169, 10, 'Sim type', 'SIM nano'),
(170, 10, 'Sim Slots', '1'),
(171, 10, 'Bộ nhớ trong', '64GB'),
(172, 10, 'Bảo hành', '12 tháng'),
(173, 11, '3D TV', 'No'),
(174, 11, 'Camera Back', '11 - 15 MP'),
(175, 11, 'Camera Front', '5 - 6 MP'),
(176, 11, 'Điều kiện', 'Mới'),
(177, 11, 'Curved TV', 'No'),
(178, 11, 'Kích thước màn hình', '4.7'),
(179, 11, 'Mẫu mã', '6s'),
(180, 11, 'Network Connections', '3G-HSPA|4G-LTE'),
(181, 11, 'Hệ điều hành', 'IOS'),
(182, 11, 'Operation System Version', 'IOS9'),
(183, 11, 'Trọng lượng (KG)', '0.2'),
(184, 11, 'Sản xuất tại', 'Trung quốc'),
(185, 11, 'RAM memory', '2GB'),
(186, 11, 'Sim type', 'SIM nano'),
(187, 11, 'Sim Slots', '1'),
(188, 11, 'Bộ nhớ trong', '64GB'),
(189, 11, 'Bảo hành', '12 tháng'),
(190, 12, '3D TV', 'No'),
(191, 12, 'Camera Back', '11 - 15 MP'),
(192, 12, 'Camera Front', '5 - 6 MP'),
(193, 12, 'Điều kiện', 'Mới'),
(194, 12, 'Curved TV', 'No'),
(195, 12, 'Kích thước màn hình', '4.7'),
(196, 12, 'Mẫu mã', '6s'),
(197, 12, 'Network Connections', '3G-HSPA|4G-LTE'),
(198, 12, 'Hệ điều hành', 'IOS'),
(199, 12, 'Operation System Version', 'IOS9'),
(200, 12, 'Trọng lượng (KG)', '0.2'),
(201, 12, 'Sản xuất tại', 'Trung quốc'),
(202, 12, 'RAM memory', '2GB'),
(203, 12, 'Sim type', 'SIM nano'),
(204, 12, 'Sim Slots', '1'),
(205, 12, 'Bộ nhớ trong', '64GB'),
(206, 12, 'Bảo hành', '12 tháng'),
(207, 13, '3D TV', 'No'),
(208, 13, 'Camera Back', '11 - 15 MP'),
(209, 13, 'Camera Front', '5 - 6 MP'),
(210, 13, 'Điều kiện', 'Mới'),
(211, 13, 'Curved TV', 'No'),
(212, 13, 'Kích thước màn hình', '4.7'),
(213, 13, 'Mẫu mã', '6s'),
(214, 13, 'Network Connections', '3G-HSPA|4G-LTE'),
(215, 13, 'Hệ điều hành', 'IOS'),
(216, 13, 'Operation System Version', 'IOS9'),
(217, 13, 'Trọng lượng (KG)', '0.2'),
(218, 13, 'Sản xuất tại', 'Trung quốc'),
(219, 13, 'RAM memory', '2GB'),
(220, 13, 'Sim type', 'SIM nano'),
(221, 13, 'Sim Slots', '1'),
(222, 13, 'Bộ nhớ trong', '64GB'),
(223, 13, 'Bảo hành', '12 tháng'),
(224, 14, '3D TV', 'No'),
(225, 14, 'Camera Back', '11 - 15 MP'),
(226, 14, 'Camera Front', '5 - 6 MP'),
(227, 14, 'Điều kiện', 'Mới'),
(228, 14, 'Curved TV', 'No'),
(229, 14, 'Kích thước màn hình', '4.7'),
(230, 14, 'Mẫu mã', '6s'),
(231, 14, 'Network Connections', '3G-HSPA|4G-LTE'),
(232, 14, 'Hệ điều hành', 'IOS'),
(233, 14, 'Operation System Version', 'IOS9'),
(234, 14, 'Trọng lượng (KG)', '0.2'),
(235, 14, 'Sản xuất tại', 'Trung quốc'),
(236, 14, 'RAM memory', '2GB'),
(237, 14, 'Sim type', 'SIM nano'),
(238, 14, 'Sim Slots', '1'),
(239, 14, 'Bộ nhớ trong', '64GB'),
(240, 14, 'Bảo hành', '12 tháng'),
(241, 15, '3D TV', 'No'),
(242, 15, 'Camera Back', '11 - 15 MP'),
(243, 15, 'Camera Front', '5 - 6 MP'),
(244, 15, 'Điều kiện', 'Mới'),
(245, 15, 'Curved TV', 'No'),
(246, 15, 'Kích thước màn hình', '4.7'),
(247, 15, 'Mẫu mã', '6s'),
(248, 15, 'Network Connections', '3G-HSPA|4G-LTE'),
(249, 15, 'Hệ điều hành', 'IOS'),
(250, 15, 'Operation System Version', 'IOS9'),
(251, 15, 'Trọng lượng (KG)', '0.2'),
(252, 15, 'Sản xuất tại', 'Trung quốc'),
(253, 15, 'RAM memory', '2GB'),
(254, 15, 'Sim type', 'SIM nano'),
(255, 15, 'Sim Slots', '1'),
(256, 15, 'Bộ nhớ trong', '64GB'),
(257, 15, 'Bảo hành', '12 tháng'),
(258, 16, '3D TV', 'No'),
(259, 16, 'Camera Back', '11 - 15 MP'),
(260, 16, 'Camera Front', '5 - 6 MP'),
(261, 16, 'Điều kiện', 'Mới'),
(262, 16, 'Curved TV', 'No'),
(263, 16, 'Kích thước màn hình', '4.7'),
(264, 16, 'Mẫu mã', '6s'),
(265, 16, 'Network Connections', '3G-HSPA|4G-LTE'),
(266, 16, 'Hệ điều hành', 'IOS'),
(267, 16, 'Operation System Version', 'IOS9'),
(268, 16, 'Trọng lượng (KG)', '0.2'),
(269, 16, 'Sản xuất tại', 'Trung quốc'),
(270, 16, 'RAM memory', '2GB'),
(271, 16, 'Sim type', 'SIM nano'),
(272, 16, 'Sim Slots', '1'),
(273, 16, 'Bộ nhớ trong', '64GB'),
(274, 16, 'Bảo hành', '12 tháng'),
(275, 17, '3D TV', 'No'),
(276, 17, 'Camera Back', '11 - 15 MP'),
(277, 17, 'Camera Front', '5 - 6 MP'),
(278, 17, 'Điều kiện', 'Mới'),
(279, 17, 'Curved TV', 'No'),
(280, 17, 'Kích thước màn hình', '4.7'),
(281, 17, 'Mẫu mã', '6s'),
(282, 17, 'Network Connections', '3G-HSPA|4G-LTE'),
(283, 17, 'Hệ điều hành', 'IOS'),
(284, 17, 'Operation System Version', 'IOS9'),
(285, 17, 'Trọng lượng (KG)', '0.2'),
(286, 17, 'Sản xuất tại', 'Trung quốc'),
(287, 17, 'RAM memory', '2GB'),
(288, 17, 'Sim type', 'SIM nano'),
(289, 17, 'Sim Slots', '1'),
(290, 17, 'Bộ nhớ trong', '64GB'),
(291, 17, 'Bảo hành', '12 tháng'),
(292, 18, '3D TV', 'No'),
(293, 18, 'Camera Back', '11 - 15 MP'),
(294, 18, 'Camera Front', '5 - 6 MP'),
(295, 18, 'Điều kiện', 'Mới'),
(296, 18, 'Curved TV', 'No'),
(297, 18, 'Kích thước màn hình', '4.7'),
(298, 18, 'Mẫu mã', '6s'),
(299, 18, 'Network Connections', '3G-HSPA|4G-LTE'),
(300, 18, 'Hệ điều hành', 'IOS'),
(301, 18, 'Operation System Version', 'IOS9'),
(302, 18, 'Trọng lượng (KG)', '0.2'),
(303, 18, 'Sản xuất tại', 'Trung quốc'),
(304, 18, 'RAM memory', '2GB'),
(305, 18, 'Sim type', 'SIM nano'),
(306, 18, 'Sim Slots', '1'),
(307, 18, 'Bộ nhớ trong', '64GB'),
(308, 18, 'Bảo hành', '12 tháng'),
(309, 19, '3D TV', 'No'),
(310, 19, 'Camera Back', '11 - 15 MP'),
(311, 19, 'Camera Front', '5 - 6 MP'),
(312, 19, 'Điều kiện', 'Mới'),
(313, 19, 'Curved TV', 'No'),
(314, 19, 'Kích thước màn hình', '4.7'),
(315, 19, 'Mẫu mã', '6s'),
(316, 19, 'Network Connections', '3G-HSPA|4G-LTE'),
(317, 19, 'Hệ điều hành', 'IOS'),
(318, 19, 'Operation System Version', 'IOS9'),
(319, 19, 'Trọng lượng (KG)', '0.2'),
(320, 19, 'Sản xuất tại', 'Trung quốc'),
(321, 19, 'RAM memory', '2GB'),
(322, 19, 'Sim type', 'SIM nano'),
(323, 19, 'Sim Slots', '1'),
(324, 19, 'Bộ nhớ trong', '64GB'),
(325, 19, 'Bảo hành', '12 tháng'),
(326, 20, '3D TV', 'No'),
(327, 20, 'Camera Back', '11 - 15 MP'),
(328, 20, 'Camera Front', '5 - 6 MP'),
(329, 20, 'Điều kiện', 'Mới'),
(330, 20, 'Curved TV', 'No'),
(331, 20, 'Kích thước màn hình', '4.7'),
(332, 20, 'Mẫu mã', '6s'),
(333, 20, 'Network Connections', '3G-HSPA|4G-LTE'),
(334, 20, 'Hệ điều hành', 'IOS'),
(335, 20, 'Operation System Version', 'IOS9'),
(336, 20, 'Trọng lượng (KG)', '0.2'),
(337, 20, 'Sản xuất tại', 'Trung quốc'),
(338, 20, 'RAM memory', '2GB'),
(339, 20, 'Sim type', 'SIM nano'),
(340, 20, 'Sim Slots', '1'),
(341, 20, 'Bộ nhớ trong', '64GB'),
(342, 20, 'Bảo hành', '12 tháng'),
(343, 21, '3D TV', 'No'),
(344, 21, 'Camera Back', '11 - 15 MP'),
(345, 21, 'Camera Front', '5 - 6 MP'),
(346, 21, 'Điều kiện', 'Mới'),
(347, 21, 'Curved TV', 'No'),
(348, 21, 'Kích thước màn hình', '4.7'),
(349, 21, 'Mẫu mã', '6s'),
(350, 21, 'Network Connections', '3G-HSPA|4G-LTE'),
(351, 21, 'Hệ điều hành', 'IOS'),
(352, 21, 'Operation System Version', 'IOS9'),
(353, 21, 'Trọng lượng (KG)', '0.2'),
(354, 21, 'Sản xuất tại', 'Trung quốc'),
(355, 21, 'RAM memory', '2GB'),
(356, 21, 'Sim type', 'SIM nano'),
(357, 21, 'Sim Slots', '1'),
(358, 21, 'Bộ nhớ trong', '64GB'),
(359, 21, 'Bảo hành', '12 tháng'),
(360, 22, '3D TV', 'No'),
(361, 22, 'Camera Back', '11 - 15 MP'),
(362, 22, 'Camera Front', '5 - 6 MP'),
(363, 22, 'Điều kiện', 'Mới'),
(364, 22, 'Curved TV', 'No'),
(365, 22, 'Kích thước màn hình', '4.7'),
(366, 22, 'Mẫu mã', '6s'),
(367, 22, 'Network Connections', '3G-HSPA|4G-LTE'),
(368, 22, 'Hệ điều hành', 'IOS'),
(369, 22, 'Operation System Version', 'IOS9'),
(370, 22, 'Trọng lượng (KG)', '0.2'),
(371, 22, 'Sản xuất tại', 'Trung quốc'),
(372, 22, 'RAM memory', '2GB'),
(373, 22, 'Sim type', 'SIM nano'),
(374, 22, 'Sim Slots', '1'),
(375, 22, 'Bộ nhớ trong', '64GB'),
(376, 22, 'Bảo hành', '12 tháng'),
(377, 23, '3D TV', 'No'),
(378, 23, 'Camera Back', '11 - 15 MP'),
(379, 23, 'Camera Front', '5 - 6 MP'),
(380, 23, 'Điều kiện', 'Mới'),
(381, 23, 'Curved TV', 'No'),
(382, 23, 'Kích thước màn hình', '4.7'),
(383, 23, 'Mẫu mã', '6s'),
(384, 23, 'Network Connections', '3G-HSPA|4G-LTE'),
(385, 23, 'Hệ điều hành', 'IOS'),
(386, 23, 'Operation System Version', 'IOS9'),
(387, 23, 'Trọng lượng (KG)', '0.2'),
(388, 23, 'Sản xuất tại', 'Trung quốc'),
(389, 23, 'RAM memory', '2GB'),
(390, 23, 'Sim type', 'SIM nano'),
(391, 23, 'Sim Slots', '1'),
(392, 23, 'Bộ nhớ trong', '64GB'),
(393, 23, 'Bảo hành', '12 tháng'),
(394, 24, '3D TV', 'No'),
(395, 24, 'Camera Back', '11 - 15 MP'),
(396, 24, 'Camera Front', '5 - 6 MP'),
(397, 24, 'Điều kiện', 'Mới'),
(398, 24, 'Curved TV', 'No'),
(399, 24, 'Kích thước màn hình', '4.7'),
(400, 24, 'Mẫu mã', '6s'),
(401, 24, 'Network Connections', '3G-HSPA|4G-LTE'),
(402, 24, 'Hệ điều hành', 'IOS'),
(403, 24, 'Operation System Version', 'IOS9'),
(404, 24, 'Trọng lượng (KG)', '0.2'),
(405, 24, 'Sản xuất tại', 'Trung quốc'),
(406, 24, 'RAM memory', '2GB'),
(407, 24, 'Sim type', 'SIM nano'),
(408, 24, 'Sim Slots', '1'),
(409, 24, 'Bộ nhớ trong', '64GB'),
(410, 24, 'Bảo hành', '12 tháng'),
(411, 25, '3D TV', 'No'),
(412, 25, 'Camera Back', '11 - 15 MP'),
(413, 25, 'Camera Front', '5 - 6 MP'),
(414, 25, 'Điều kiện', 'Mới'),
(415, 25, 'Curved TV', 'No'),
(416, 25, 'Kích thước màn hình', '4.7'),
(417, 25, 'Mẫu mã', '6s'),
(418, 25, 'Network Connections', '3G-HSPA|4G-LTE'),
(419, 25, 'Hệ điều hành', 'IOS'),
(420, 25, 'Operation System Version', 'IOS9'),
(421, 25, 'Trọng lượng (KG)', '0.2'),
(422, 25, 'Sản xuất tại', 'Trung quốc'),
(423, 25, 'RAM memory', '2GB'),
(424, 25, 'Sim type', 'SIM nano'),
(425, 25, 'Sim Slots', '1'),
(426, 25, 'Bộ nhớ trong', '64GB'),
(427, 25, 'Bảo hành', '12 tháng'),
(428, 26, '3D TV', 'No'),
(429, 26, 'Camera Back', '11 - 15 MP'),
(430, 26, 'Camera Front', '5 - 6 MP'),
(431, 26, 'Điều kiện', 'Mới'),
(432, 26, 'Curved TV', 'No'),
(433, 26, 'Kích thước màn hình', '4.7'),
(434, 26, 'Mẫu mã', '6s'),
(435, 26, 'Network Connections', '3G-HSPA|4G-LTE'),
(436, 26, 'Hệ điều hành', 'IOS'),
(437, 26, 'Operation System Version', 'IOS9'),
(438, 26, 'Trọng lượng (KG)', '0.2'),
(439, 26, 'Sản xuất tại', 'Trung quốc'),
(440, 26, 'RAM memory', '2GB'),
(441, 26, 'Sim type', 'SIM nano'),
(442, 26, 'Sim Slots', '1'),
(443, 26, 'Bộ nhớ trong', '64GB'),
(444, 26, 'Bảo hành', '12 tháng'),
(445, 27, '3D TV', 'No'),
(446, 27, 'Camera Back', '11 - 15 MP'),
(447, 27, 'Camera Front', '5 - 6 MP'),
(448, 27, 'Điều kiện', 'Mới'),
(449, 27, 'Curved TV', 'No'),
(450, 27, 'Kích thước màn hình', '4.7'),
(451, 27, 'Mẫu mã', '6s'),
(452, 27, 'Network Connections', '3G-HSPA|4G-LTE'),
(453, 27, 'Hệ điều hành', 'IOS'),
(454, 27, 'Operation System Version', 'IOS9'),
(455, 27, 'Trọng lượng (KG)', '0.2'),
(456, 27, 'Sản xuất tại', 'Trung quốc'),
(457, 27, 'RAM memory', '2GB'),
(458, 27, 'Sim type', 'SIM nano'),
(459, 27, 'Sim Slots', '1'),
(460, 27, 'Bộ nhớ trong', '64GB'),
(461, 27, 'Bảo hành', '12 tháng'),
(462, 27, '3D TV', 'No'),
(463, 27, 'Camera Back', '11 - 15 MP'),
(464, 27, 'Camera Front', '5 - 6 MP'),
(465, 27, 'Điều kiện', 'Mới'),
(466, 27, 'Curved TV', 'No'),
(467, 27, 'Kích thước màn hình', '4.7'),
(468, 27, 'Mẫu mã', '6s'),
(469, 27, 'Network Connections', '3G-HSPA|4G-LTE'),
(470, 27, 'Hệ điều hành', 'IOS'),
(471, 27, 'Operation System Version', 'IOS9'),
(472, 27, 'Trọng lượng (KG)', '0.2'),
(473, 27, 'Sản xuất tại', 'Trung quốc'),
(474, 27, 'RAM memory', '2GB'),
(475, 28, '3D TV', 'No'),
(476, 28, 'Camera Back', '11 - 15 MP'),
(477, 28, 'Camera Front', '5 - 6 MP'),
(478, 28, 'Điều kiện', 'Mới'),
(479, 28, 'Curved TV', 'No'),
(480, 28, 'Kích thước màn hình', '4.7'),
(481, 28, 'Mẫu mã', '6s'),
(482, 28, 'Network Connections', '3G-HSPA|4G-LTE'),
(483, 28, 'Hệ điều hành', 'IOS'),
(484, 28, 'Operation System Version', 'IOS9'),
(485, 28, 'Trọng lượng (KG)', '0.2'),
(486, 28, 'Sản xuất tại', 'Trung quốc'),
(487, 28, 'RAM memory', '2GB'),
(488, 28, 'Sim type', 'SIM nano'),
(489, 28, 'Sim Slots', '1'),
(490, 28, 'Bộ nhớ trong', '64GB'),
(491, 28, 'Bảo hành', '12 tháng'),
(492, 29, '3D TV', 'No'),
(493, 29, 'Camera Back', '11 - 15 MP'),
(494, 29, 'Camera Front', '5 - 6 MP'),
(495, 29, 'Điều kiện', 'Mới'),
(496, 29, 'Curved TV', 'No'),
(497, 29, 'Kích thước màn hình', '4.7'),
(498, 29, 'Mẫu mã', '6s'),
(499, 29, 'Network Connections', '3G-HSPA|4G-LTE'),
(500, 29, 'Hệ điều hành', 'IOS'),
(501, 29, 'Operation System Version', 'IOS9'),
(502, 29, 'Trọng lượng (KG)', '0.2'),
(503, 29, 'Sản xuất tại', 'Trung quốc'),
(504, 29, 'RAM memory', '2GB'),
(505, 29, 'Sim type', 'SIM nano'),
(506, 29, 'Sim Slots', '1'),
(507, 29, 'Bộ nhớ trong', '64GB'),
(508, 29, 'Bảo hành', '12 tháng'),
(509, 30, '3D TV', 'No'),
(510, 30, 'Camera Back', '11 - 15 MP'),
(511, 30, 'Camera Front', '5 - 6 MP'),
(512, 30, 'Điều kiện', 'Mới'),
(513, 30, 'Curved TV', 'No'),
(514, 30, 'Kích thước màn hình', '4.7'),
(515, 30, 'Mẫu mã', '6s'),
(516, 30, 'Network Connections', '3G-HSPA|4G-LTE'),
(517, 30, 'Hệ điều hành', 'IOS'),
(518, 30, 'Operation System Version', 'IOS9'),
(519, 30, 'Trọng lượng (KG)', '0.2'),
(520, 30, 'Sản xuất tại', 'Trung quốc'),
(521, 30, 'RAM memory', '2GB'),
(522, 30, 'Sim type', 'SIM nano'),
(523, 30, 'Sim Slots', '1'),
(524, 30, 'Bộ nhớ trong', '64GB'),
(525, 30, 'Bảo hành', '12 tháng'),
(526, 31, '3D TV', 'No'),
(527, 31, 'Camera Back', '11 - 15 MP'),
(528, 31, 'Camera Front', '5 - 6 MP'),
(529, 31, 'Điều kiện', 'Mới'),
(530, 31, 'Curved TV', 'No'),
(531, 31, 'Kích thước màn hình', '4.7'),
(532, 31, 'Mẫu mã', '6s'),
(533, 31, 'Network Connections', '3G-HSPA|4G-LTE'),
(534, 31, 'Hệ điều hành', 'IOS'),
(535, 31, 'Operation System Version', 'IOS9'),
(536, 31, 'Trọng lượng (KG)', '0.2'),
(537, 31, 'Sản xuất tại', 'Trung quốc'),
(538, 31, 'RAM memory', '2GB'),
(539, 31, 'Sim type', 'SIM nano'),
(540, 31, 'Sim Slots', '1'),
(541, 31, 'Bộ nhớ trong', '64GB'),
(542, 31, 'Bảo hành', '12 tháng'),
(543, 32, '3D TV', 'No'),
(544, 32, 'Camera Back', '11 - 15 MP'),
(545, 32, 'Camera Front', '5 - 6 MP'),
(546, 32, 'Điều kiện', 'Mới'),
(547, 32, 'Curved TV', 'No'),
(548, 32, 'Kích thước màn hình', '4.7'),
(549, 32, 'Mẫu mã', '6s'),
(550, 32, 'Network Connections', '3G-HSPA|4G-LTE'),
(551, 32, 'Hệ điều hành', 'IOS'),
(552, 32, 'Operation System Version', 'IOS9'),
(553, 32, 'Trọng lượng (KG)', '0.2'),
(554, 32, 'Sản xuất tại', 'Trung quốc'),
(555, 32, 'RAM memory', '2GB'),
(556, 32, 'Sim type', 'SIM nano'),
(557, 32, 'Sim Slots', '1'),
(558, 32, 'Bộ nhớ trong', '64GB'),
(559, 32, 'Bảo hành', '12 tháng'),
(562, 87, 'asdq', 'qwdqd'),
(563, 87, 'sdfsdf', 'wefwef'),
(564, 87, '3D TV', 'No'),
(565, 87, 'Camera Back', '11 - 15 MP'),
(566, 87, 'Camera Front', '5 - 6 MP'),
(567, 87, 'Điều kiện', 'Mới'),
(568, 87, 'Curved TV', 'No'),
(569, 87, 'Kích thước màn hình', '4.7'),
(570, 87, 'Mẫu mã', '6s'),
(571, 87, 'Network Connections', '3G-HSPA|4G-LTE'),
(572, 87, 'Hệ điều hành', 'IOS'),
(573, 87, 'Operation System Version', 'IOS9'),
(574, 87, 'Trọng lượng (KG)', '0.2'),
(575, 87, 'Sản xuất tại', 'Trung quốc'),
(576, 87, 'RAM memory', '2GB'),
(577, 87, 'Sim type', 'SIM nano'),
(578, 87, 'Sim Slots', '1'),
(579, 87, 'Bộ nhớ trong', '64GB'),
(580, 87, 'Bảo hành', '12 tháng');

-- --------------------------------------------------------

--
-- Table structure for table `chitietthuonghieu`
--

CREATE TABLE `chitietthuonghieu` (
  `MATHUONGHIEU` int(11) NOT NULL,
  `MALOAISP` int(11) NOT NULL,
  `HINHLOAISPTH` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chitietthuonghieu`
--

INSERT INTO `chitietthuonghieu` (`MATHUONGHIEU`, `MALOAISP`, `HINHLOAISPTH`) VALUES
(1, 1, '/hinhthuonghieu/apple.png'),
(1, 2, '/hinhthuonghieu/apple.png'),
(1, 49, '/hinhthuonghieu/macbook.png'),
(1, 51, '/hinhthuonghieu/macbook.png'),
(2, 1, '/hinhthuonghieu/nokia.png'),
(3, 1, '/hinhthuonghieu/samsung.png'),
(4, 1, '/hinhthuonghieu/xiaomi.png'),
(5, 1, '/hinhthuonghieu/asus.png'),
(6, 1, '/hinhthuonghieu/lenovo.png'),
(6, 49, '/hinhthuonghieu/laptoplenovo.png'),
(7, 1, '/hinhthuonghieu/oppo.png'),
(8, 1, '/hinhthuonghieu/sony.png'),
(9, 1, '/hinhthuonghieu/htc.png'),
(10, 49, '/hinhthuonghieu/dell.png'),
(11, 1, '/hinhthuonghieu/hp.png'),
(12, 1, '/hinhthuonghieu/scandisk.png'),
(13, 1, '/hinhthuonghieu/silicon.jpg'),
(14, 1, '/hinhthuonghieu/canon.jpg'),
(15, 49, '/hinhthuonghieu/microsoft.png');

-- --------------------------------------------------------

--
-- Table structure for table `danhgia`
--

CREATE TABLE `danhgia` (
  `MADG` varchar(200) NOT NULL,
  `MASP` int(11) NOT NULL,
  `TENTHIETBI` text,
  `TIEUDE` text,
  `NOIDUNG` text,
  `SOSAO` int(1) DEFAULT NULL,
  `NGAYDANHGIA` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `danhgia`
--

INSERT INTO `danhgia` (`MADG`, `MASP`, `TENTHIETBI`, `TIEUDE`, `NOIDUNG`, `SOSAO`, `NGAYDANHGIA`) VALUES
('864895024878082', 14, 'HTC S720t', 'qqqq', 'eeeee', 4, '14/11/2016'),
('864895024878082', 87, 'HTC S720t', 'were', 'wefwefwef', 0, '14/11/2016');

-- --------------------------------------------------------

--
-- Table structure for table `hoadon`
--

CREATE TABLE `hoadon` (
  `MAHD` int(11) NOT NULL,
  `NGAYMUA` text CHARACTER SET latin1,
  `NGAYGIAO` text CHARACTER SET latin1,
  `TRANGTHAI` text CHARACTER SET utf8,
  `TENNGUOINHAN` text CHARACTER SET utf8,
  `SODT` text CHARACTER SET latin1,
  `DIACHI` text CHARACTER SET utf8,
  `CHUYENKHOAN` tinyint(1) DEFAULT NULL,
  `MACHUYENKHOAN` text CHARACTER SET latin1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `hoadon`
--

INSERT INTO `hoadon` (`MAHD`, `NGAYMUA`, `NGAYGIAO`, `TRANGTHAI`, `TENNGUOINHAN`, `SODT`, `DIACHI`, `CHUYENKHOAN`, `MACHUYENKHOAN`) VALUES
(7, '05/09/2016', '12/05/2016', 'chờ kiểm duyệt', 'Che Cong Binh', '09048349834', '54 Tran Hung Dao Phuong Cau Kho Quan 1', NULL, NULL),
(8, '07/09/2016', '12/07/2016', 'chờ kiểm duyệt', 'Che Cong Binh', '0907488433', '56 Tran Hung Dao Quan 1', 0, 'không có'),
(9, '07/09/2016', '12/07/2016', 'chờ kiểm duyệt', 'Che Cong Binh', '0903838938', '32 Tran Hung dao', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `khuyenmai`
--

CREATE TABLE `khuyenmai` (
  `MAKM` int(11) NOT NULL,
  `MALOAISP` int(11) DEFAULT NULL,
  `TENKM` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `NGAYBATDAU` varchar(20) DEFAULT NULL,
  `NGAYKETTHUC` varchar(20) DEFAULT NULL,
  `HINHKHUYENMAI` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `khuyenmai`
--

INSERT INTO `khuyenmai` (`MAKM`, `MALOAISP`, `TENKM`, `NGAYBATDAU`, `NGAYKETTHUC`, `HINHKHUYENMAI`) VALUES
(1, 2, 'Xã hàng hot đến 49%', '2016/9/12', '2016/10/12', '/hinhkhuyenmai/con loc giam gia mua he.png'),
(2, 2, 'Giải nhiệt mùa hè giảm ngay 50%', '2016/9/12', '2016/10/12', '/hinhkhuyenmai/khuyen mai ta quan ta dan.jpg'),
(3, 2, 'Hè này mua gì ?', '2016/9/12', '2016/10/12', '/hinhkhuyenmai/du lich.jpg'),
(4, 3, 'Festival salve !', '2016/9/12', '2016/9/12', '/hinhkhuyenmai/festival sale 90.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `loainhanvien`
--

CREATE TABLE `loainhanvien` (
  `MALOAINV` int(11) NOT NULL,
  `TENLOAINV` varchar(20) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `loainhanvien`
--

INSERT INTO `loainhanvien` (`MALOAINV`, `TENLOAINV`) VALUES
(1, 'Admin'),
(2, 'Khách hàng');

-- --------------------------------------------------------

--
-- Table structure for table `loaisanpham`
--

CREATE TABLE `loaisanpham` (
  `MALOAISP` int(11) NOT NULL,
  `TENLOAISP` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `MALOAI_CHA` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `loaisanpham`
--

INSERT INTO `loaisanpham` (`MALOAISP`, `TENLOAISP`, `MALOAI_CHA`) VALUES
(1, 'Điện thoại & Máy tính bảng', 0),
(2, 'Điện thoại di động', 1),
(3, 'Máy tính bảng', 1),
(4, 'Điện thoại bàn', 1),
(5, 'Phụ kiện điện thoại & máy tính bảng', 1),
(6, 'Ốp lưng và bao da điện thoại', 5),
(7, 'Miếng dán màn hình điện thoại', 5),
(8, 'Phụ kiện di động trên xe hơi', 5),
(9, 'Phụ kiện khác', 5),
(10, 'Cáp & Dock sạc', 5),
(11, 'Linh kiện & Dụng cụ', 5),
(12, 'SIM & Thẻ cào', 5),
(13, 'Pin và bộ sạc', 5),
(14, 'Phụ kiện máy tính bảng', 5),
(15, 'Pin sạc dự phòng', 5),
(16, 'Phụ kiện camera điện thoại', 5),
(17, 'Nhà cửa & Đời sống', 0),
(18, 'Bếp phòng ăn', 17),
(19, 'Dụng cụ làm bánh', 18),
(20, 'Dụng cụ nấu ăn', 18),
(21, 'Đồ dùng bàn ăn', 18),
(22, 'Đồ dùng uống trà và cà phê', 18),
(23, 'Dao nấu bếp', 18),
(24, 'Khăn trải bàn & Phụ kiện bằng vải', 18),
(25, 'Phụ kiện & Dụng cụ nhà bếp', 18),
(26, 'Đồ dùng phòng ngủ', 17),
(27, 'Bộ chăn và ga giường gối', 26),
(28, 'Gối', 26),
(29, 'Phụ kiện giường ngủ', 26),
(30, 'Bộ chăn ra gối nệm', 26),
(31, 'Ga giường', 26),
(32, 'Nệm và Vỏ nệm', 26),
(33, 'Đồ nội thất', 17),
(34, 'Nội thất phòng ngủ', 33),
(35, 'Nội thất phòng khách', 33),
(36, 'Nội thất bếp & Phòng ăn', 33),
(37, 'Nội thất phòng trẻ em', 33),
(38, 'Nội thất phòng làm việc tại gia', 33),
(39, 'Nội thất cho hành lang & lối vào', 33),
(40, 'Nội thất phòng trang trí', 33),
(41, 'Nội thất kiểu cổ', 33),
(42, 'Tân trang nhà cửa', 17),
(43, 'Kho chứa dụng cụ và Garage', 42),
(44, 'Điện', 42),
(45, 'Cổng và Hàng rào', 42),
(46, 'Bảo vệ và An toàn', 42),
(47, 'Ống nước', 42),
(48, 'Máy vi tính & Laptop', 17),
(49, 'Laptop', 48),
(50, 'Dòng giải trí', 49),
(51, 'Macbooks', 49),
(52, 'Ultrabooks', 49),
(53, 'Thiết bị lưu trữ', 17),
(54, 'Ổ cứng SSD', 53),
(55, 'Ổ cứng gắn ngoài', 53),
(56, 'Ổ cứng gắn trong', 53),
(57, 'USB lưu trữ', 53),
(58, 'Máy in & Phụ kiện', 17),
(59, 'Máy in', 58),
(60, 'Kệ máy in', 58),
(61, 'Máy Fax', 58),
(62, 'Mực in', 58),
(63, 'Chăm sóc sức khỏe & làm đẹp', 17),
(64, 'Trang điểm', 63),
(65, 'Mặt', 64),
(66, 'Môi', 64),
(67, 'Mắt', 64),
(68, 'Tẩy trang', 64),
(69, 'Chăm sóc mặt', 63),
(70, 'Mặt nạ đắp', 69),
(71, 'Sữa rữa mặt', 69),
(72, 'Thể thao', 17),
(73, 'Yaga & Thể hình', 72),
(74, 'Yoga', 73),
(75, 'Máy tập thể hình', 73),
(76, 'Máy tập thể lực', 73),
(77, 'Giày & Trang phục', 72),
(78, 'Dành cho nữ', 77),
(79, 'Dành cho nam', 77),
(80, 'Dành cho bé', 77),
(82, 'TV, Video, Âm Thanh ,Game & Thiết Bị Số', 0),
(83, 'Tivi', 82),
(84, 'Dưới 24 inches', 83),
(85, '25-32 inches', 83),
(86, '33-42 inches', 83),
(87, '43-54 inches', 83),
(88, 'Trên 55 inches', 83),
(89, 'Tivi giá đặc biệt cho các tỉnh, thành lớn', 83),
(90, 'Thiết bị âm thanh', 82),
(91, 'Các loại tai nghe', 90),
(92, 'Loa di động', 90),
(93, 'Dàn âm thanh giải trí', 90),
(94, 'Máy nghe nhạc', 90),
(95, 'Video', 82),
(96, 'Thiết bị trình chiếu', 95),
(97, 'Thiết bị streaming', 95),
(98, 'Thiết bị chơi game', 82),
(99, 'Xbox', 98),
(100, 'Nitendo', 98),
(101, 'Thiết bị đeo công nghệ', 82),
(102, 'Đồng hồ thông minh', 101),
(103, 'Thiết bị theo dõi sức khỏe & vận động', 101),
(104, 'Mắt kính thông minh', 101),
(105, 'Thiết bị giám sát thông minh', 101),
(106, 'Thể thao & du lịch', 0),
(107, 'Các loại bài tập & thể hình', 106),
(108, 'Máy tập thể hình', 107),
(109, 'Máy tập thể lực', 107),
(110, 'Phụ kiện', 107),
(111, 'Tạ', 107),
(112, 'Yoga', 107),
(113, 'Pilates', 107),
(114, 'Đấm bốc, Võ thuật & Đánh MMA', 107),
(115, 'Thể tao đồng đội', 106),
(116, 'Máy tập thể hình', 115),
(117, 'Máy tập thể hình', 115),
(118, 'Bóng đá', 115),
(119, 'Bóng rổ', 115),
(120, 'Bóng chuyền', 115),
(121, 'Hoạt động dã ngoại', 106),
(122, 'Xe đạp', 121),
(123, 'Dã ngoại & leo núi', 121),
(124, 'Câu cá', 121),
(125, 'Xe Scooters', 121),
(126, 'Trượt băng trong nhà', 121),
(127, 'Trượt ván', 121),
(128, 'Bơi lội', 121),
(129, 'Xe máy và bách hóa', 0),
(130, 'Ô tô & xe máy', 129),
(131, 'Chăm sóc ô tô & xe máy', 130),
(132, 'Phụ kiện bên ngoài', 130),
(133, 'Phụ kiện bên trong', 130),
(134, 'Link kiện thay thế', 130),
(135, 'Thiết bị giám định ô tô', 130),
(136, 'Xe mô tô & xe địa hình', 130),
(137, 'Dầu nhớt', 130),
(138, 'Sơn sửa', 130),
(139, 'Phụ kiện xe tải', 130),
(140, 'Dụng cụ và thiết bị', 130),
(141, 'Bánh & vỏ xe', 130),
(142, 'Thiết bị định vị', 130),
(154, 'Thời trang', 0),
(155, 'Thời nữ', 154),
(156, 'Thời nam', 154);

-- --------------------------------------------------------

--
-- Table structure for table `nhanvien`
--

CREATE TABLE `nhanvien` (
  `MANV` int(11) NOT NULL,
  `TENNV` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `TENDANGNHAP` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `MATKHAU` varchar(100) DEFAULT NULL,
  `DIACHI` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `NGAYSINH` varchar(20) DEFAULT NULL,
  `SODT` varchar(20) DEFAULT NULL,
  `GIOITINH` tinyint(1) DEFAULT NULL,
  `MALOAINV` int(11) DEFAULT NULL,
  `EMAILDOCQUYEN` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nhanvien`
--

INSERT INTO `nhanvien` (`MANV`, `TENNV`, `TENDANGNHAP`, `MATKHAU`, `DIACHI`, `NGAYSINH`, `SODT`, `GIOITINH`, `MALOAINV`, `EMAILDOCQUYEN`) VALUES
(1, 'che cong binh', 'binh@gmail.com', 'Binh123', NULL, NULL, NULL, NULL, 2, ''),
(2, 'Myclass', 'myclass@email.com', 'Binh123', NULL, NULL, NULL, NULL, 2, ''),
(3, 'Che Cong Binh', 'as@gmail.com', 'Binh123', NULL, NULL, NULL, NULL, 2, ''),
(4, 'Le Long', 'lelong@gmail.com', 'Long123', NULL, NULL, NULL, NULL, 2, ''),
(5, 'Le Loi', 'leloi@gmail.com', 'Leloi123', NULL, NULL, NULL, NULL, 2, ''),
(6, 'Le Lai', 'Lelai@gmail.com', 'Lelai123', NULL, NULL, NULL, NULL, 2, '');

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

CREATE TABLE `sanpham` (
  `MASP` int(11) NOT NULL,
  `TENSP` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `GIA` decimal(10,0) DEFAULT NULL,
  `ANHLON` text,
  `ANHNHO` text,
  `THONGTIN` text CHARACTER SET utf8 NOT NULL,
  `SOLUONG` int(11) DEFAULT NULL,
  `MALOAISP` int(11) DEFAULT NULL,
  `MATHUONGHIEU` int(11) DEFAULT NULL,
  `MANV` int(11) NOT NULL,
  `LUOTMUA` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sanpham`
--

INSERT INTO `sanpham` (`MASP`, `TENSP`, `GIA`, `ANHLON`, `ANHNHO`, `THONGTIN`, `SOLUONG`, `MALOAISP`, `MATHUONGHIEU`, `MANV`, `LUOTMUA`) VALUES
(3, 'Apple Iphone 6s Plus 16GB', '13960000', '/hinhsanpham/iphone6spluse.png', '/hinhsanpham/iphone6spluse1.jpg,/hinhsanpham/iphone6spluse2.jpg,/hinhsanpham/iphone6spluse3.png,/hinhsanpham/iphone6spluse4.jpg', 'Là hàng được nhập khẩu trực tiếp từ nước ngoài bởi doanh nghiệp trong nước, không thông qua nhà phân phối chính thức tại thị trường Việt Nam.\r\nHàng nhập khẩu được nhiều người chọn lựa bởi giá thành tốt, chất lượng vẫn được đảm bảo như những sản phẩm được nhập khẩu thông qua nhà phân phối chính thức (vì được sản xuất từ cùng một nhà máy của hãng sản xuất). Hơn nữa, dù không được bảo hành tại các trung tâm bảo hành chính thức của hãng, các sản phẩm này vẫn được áp dụng đầy đủ chính sách bảo hành của doanh nghiệp nhập khẩu', 6, 2, 1, 1, 0),
(5, 'Apple Iphone 6s Plus 16GB (Vàng gold)', '13960000', '/hinhsanpham/iphone6spluse.png', '/hinhsanpham/iphone6spluse1.jpg,/hinhsanpham/iphone6spluse2.jpg,/hinhsanpham/iphone6spluse3.png,/hinhsanpham/iphone6spluse4.jpg', 'Là hàng được nhập khẩu trực tiếp từ nước ngoài bởi doanh nghiệp trong nước, không thông qua nhà phân phối chính thức tại thị trường Việt Nam.\r\nHàng nhập khẩu được nhiều người chọn lựa bởi giá thành tốt, chất lượng vẫn được đảm bảo như những sản phẩm được nhập khẩu thông qua nhà phân phối chính thức (vì được sản xuất từ cùng một nhà máy của hãng sản xuất). Hơn nữa, dù không được bảo hành tại các trung tâm bảo hành chính thức của hãng, các sản phẩm này vẫn được áp dụng đầy đủ chính sách bảo hành của doanh nghiệp nhập khẩu', 9, 2, 1, 1, 0),
(6, 'Apple Iphone 6s Plus 16GB (Vàng gold)', '13960000', '/hinhsanpham/iphone6spluse.png', '/hinhsanpham/iphone6spluse1.jpg,/hinhsanpham/iphone6spluse2.jpg,/hinhsanpham/iphone6spluse3.png,/hinhsanpham/iphone6spluse4.jpg', 'Là hàng được nhập khẩu trực tiếp từ nước ngoài bởi doanh nghiệp trong nước, không thông qua nhà phân phối chính thức tại thị trường Việt Nam.\r\nHàng nhập khẩu được nhiều người chọn lựa bởi giá thành tốt, chất lượng vẫn được đảm bảo như những sản phẩm được nhập khẩu thông qua nhà phân phối chính thức (vì được sản xuất từ cùng một nhà máy của hãng sản xuất). Hơn nữa, dù không được bảo hành tại các trung tâm bảo hành chính thức của hãng, các sản phẩm này vẫn được áp dụng đầy đủ chính sách bảo hành của doanh nghiệp nhập khẩu', 10, 2, 1, 2, 0),
(7, 'Apple Iphone 6s Plus 16GB (Vàng gold)', '13960000', '/hinhsanpham/iphone6spluse.png', '/hinhsanpham/iphone6spluse1.jpg,/hinhsanpham/iphone6spluse2.jpg,/hinhsanpham/iphone6spluse3.png,/hinhsanpham/iphone6spluse4.jpg', 'Là hàng được nhập khẩu trực tiếp từ nước ngoài bởi doanh nghiệp trong nước, không thông qua nhà phân phối chính thức tại thị trường Việt Nam.\r\nHàng nhập khẩu được nhiều người chọn lựa bởi giá thành tốt, chất lượng vẫn được đảm bảo như những sản phẩm được nhập khẩu thông qua nhà phân phối chính thức (vì được sản xuất từ cùng một nhà máy của hãng sản xuất). Hơn nữa, dù không được bảo hành tại các trung tâm bảo hành chính thức của hãng, các sản phẩm này vẫn được áp dụng đầy đủ chính sách bảo hành của doanh nghiệp nhập khẩu', 10, 2, 1, 2, 0),
(8, 'Apple Iphone 6s Plus 16GB (Vàng gold)', '13960000', '/hinhsanpham/iphone6spluse.png', '/hinhsanpham/iphone6spluse1.jpg,/hinhsanpham/iphone6spluse2.jpg,/hinhsanpham/iphone6spluse3.png,/hinhsanpham/iphone6spluse4.jpg', 'Là hàng được nhập khẩu trực tiếp từ nước ngoài bởi doanh nghiệp trong nước, không thông qua nhà phân phối chính thức tại thị trường Việt Nam.\r\nHàng nhập khẩu được nhiều người chọn lựa bởi giá thành tốt, chất lượng vẫn được đảm bảo như những sản phẩm được nhập khẩu thông qua nhà phân phối chính thức (vì được sản xuất từ cùng một nhà máy của hãng sản xuất). Hơn nữa, dù không được bảo hành tại các trung tâm bảo hành chính thức của hãng, các sản phẩm này vẫn được áp dụng đầy đủ chính sách bảo hành của doanh nghiệp nhập khẩu', 10, 2, 1, 2, 0),
(9, 'Apple Iphone 6s Plus 16GB (Vàng gold)', '13960000', '/hinhsanpham/iphone6spluse.png', '/hinhsanpham/iphone6spluse1.jpg,/hinhsanpham/iphone6spluse2.jpg,/hinhsanpham/iphone6spluse3.png,/hinhsanpham/iphone6spluse4.jpg', 'Là hàng được nhập khẩu trực tiếp từ nước ngoài bởi doanh nghiệp trong nước, không thông qua nhà phân phối chính thức tại thị trường Việt Nam.\r\nHàng nhập khẩu được nhiều người chọn lựa bởi giá thành tốt, chất lượng vẫn được đảm bảo như những sản phẩm được nhập khẩu thông qua nhà phân phối chính thức (vì được sản xuất từ cùng một nhà máy của hãng sản xuất). Hơn nữa, dù không được bảo hành tại các trung tâm bảo hành chính thức của hãng, các sản phẩm này vẫn được áp dụng đầy đủ chính sách bảo hành của doanh nghiệp nhập khẩu', 10, 2, 1, 2, 0),
(10, 'Apple Iphone 6s Plus 16GB (Vàng gold)', '13960000', '/hinhsanpham/iphone6spluse.png', '/hinhsanpham/iphone6spluse1.jpg,/hinhsanpham/iphone6spluse2.jpg,/hinhsanpham/iphone6spluse3.png,/hinhsanpham/iphone6spluse4.jpg', 'Là hàng được nhập khẩu trực tiếp từ nước ngoài bởi doanh nghiệp trong nước, không thông qua nhà phân phối chính thức tại thị trường Việt Nam.\r\nHàng nhập khẩu được nhiều người chọn lựa bởi giá thành tốt, chất lượng vẫn được đảm bảo như những sản phẩm được nhập khẩu thông qua nhà phân phối chính thức (vì được sản xuất từ cùng một nhà máy của hãng sản xuất). Hơn nữa, dù không được bảo hành tại các trung tâm bảo hành chính thức của hãng, các sản phẩm này vẫn được áp dụng đầy đủ chính sách bảo hành của doanh nghiệp nhập khẩu', 10, 2, 1, 2, 0),
(11, 'Apple Iphone 6s Plus 16GB (Vàng gold)', '13960000', '/hinhsanpham/iphone6spluse.png', '/hinhsanpham/iphone6spluse1.jpg,/hinhsanpham/iphone6spluse2.jpg,/hinhsanpham/iphone6spluse3.png,/hinhsanpham/iphone6spluse4.jpg', 'Là hàng được nhập khẩu trực tiếp từ nước ngoài bởi doanh nghiệp trong nước, không thông qua nhà phân phối chính thức tại thị trường Việt Nam.\r\nHàng nhập khẩu được nhiều người chọn lựa bởi giá thành tốt, chất lượng vẫn được đảm bảo như những sản phẩm được nhập khẩu thông qua nhà phân phối chính thức (vì được sản xuất từ cùng một nhà máy của hãng sản xuất). Hơn nữa, dù không được bảo hành tại các trung tâm bảo hành chính thức của hãng, các sản phẩm này vẫn được áp dụng đầy đủ chính sách bảo hành của doanh nghiệp nhập khẩu', 10, 2, 1, 2, 0),
(12, 'Apple Iphone 6s Plus 16GB (Vàng gold)', '13960000', '/hinhsanpham/iphone6spluse.png', '/hinhsanpham/iphone6spluse1.jpg,/hinhsanpham/iphone6spluse2.jpg,/hinhsanpham/iphone6spluse3.png,/hinhsanpham/iphone6spluse4.jpg', 'Là hàng được nhập khẩu trực tiếp từ nước ngoài bởi doanh nghiệp trong nước, không thông qua nhà phân phối chính thức tại thị trường Việt Nam.\r\nHàng nhập khẩu được nhiều người chọn lựa bởi giá thành tốt, chất lượng vẫn được đảm bảo như những sản phẩm được nhập khẩu thông qua nhà phân phối chính thức (vì được sản xuất từ cùng một nhà máy của hãng sản xuất). Hơn nữa, dù không được bảo hành tại các trung tâm bảo hành chính thức của hãng, các sản phẩm này vẫn được áp dụng đầy đủ chính sách bảo hành của doanh nghiệp nhập khẩu', 10, 2, 1, 2, 0),
(13, 'Apple Iphone 6s Plus 16GB (Vàng gold)', '13960000', '/hinhsanpham/iphone6spluse.png', '/hinhsanpham/iphone6spluse1.jpg,/hinhsanpham/iphone6spluse2.jpg,/hinhsanpham/iphone6spluse3.png,/hinhsanpham/iphone6spluse4.jpg', 'Là hàng được nhập khẩu trực tiếp từ nước ngoài bởi doanh nghiệp trong nước, không thông qua nhà phân phối chính thức tại thị trường Việt Nam.\r\nHàng nhập khẩu được nhiều người chọn lựa bởi giá thành tốt, chất lượng vẫn được đảm bảo như những sản phẩm được nhập khẩu thông qua nhà phân phối chính thức (vì được sản xuất từ cùng một nhà máy của hãng sản xuất). Hơn nữa, dù không được bảo hành tại các trung tâm bảo hành chính thức của hãng, các sản phẩm này vẫn được áp dụng đầy đủ chính sách bảo hành của doanh nghiệp nhập khẩu', 10, 49, 1, 2, 0),
(14, 'Pin sạc dự phòng Asus Zenpower 10.050mAh (Vàng) ', '339000', '/hinhsanpham/pinsacduphongasus.jpg', '/hinhsanpham/pinsacduphongasus.jpg', 'Asus ZenPower là viên pin sạc chính hãng hiếm hoi đến từ một nhà sản xuất điện thoại khá lớn ở Việt Nam. Hiện tại ZenPower có khá nhiều màu khác nhau, từ hồng đẹp trai đến màu đen yếu đuối. Hiện tại thì mình mượn được màu hồng mạnh mẽ và vàng sang chảnh để trên tay. Asus có bán các miếng bảo vệ cao su nhiều màu cho pin nhưng không rõ có được phân phối ở Việt Nam hay không.', 10, 13, 5, 2, 0),
(15, 'Bao da kiêm bàn phím cho máy tính bảng 7 inch ( Đen)  ', '98000', '/hinhsanpham/baodabanphimmaytinhbang7ich.jpg', '', 'Asus ZenPower là viên pin sạc chính hãng hiếm hoi đến từ một nhà sản xuất điện thoại khá lớn ở Việt Nam. Hiện tại ZenPower có khá nhiều màu khác nhau, từ hồng đẹp trai đến màu đen yếu đuối. Hiện tại thì mình mượn được màu hồng mạnh mẽ và vàng sang chảnh để trên tay. Asus có bán các miếng bảo vệ cao su nhiều màu cho pin nhưng không rõ có được phân phối ở Việt Nam hay không.', 10, 14, 5, 2, 0),
(16, 'Gậy chụp hình Selfie Stick (Đen phối vàng) ', '36000', '/hinhsanpham/gaychuphinhtusuong.png', '', 'Asus ZenPower là viên pin sạc chính hãng hiếm hoi đến từ một nhà sản xuất điện thoại khá lớn ở Việt Nam. Hiện tại ZenPower có khá nhiều màu khác nhau, từ hồng đẹp trai đến màu đen yếu đuối. Hiện tại thì mình mượn được màu hồng mạnh mẽ và vàng sang chảnh để trên tay. Asus có bán các miếng bảo vệ cao su nhiều màu cho pin nhưng không rõ có được phân phối ở Việt Nam hay không.', 10, 16, 5, 2, 0),
(17, 'Bộ Miếng dán cường lực và ốp lưng cho iPhone 6 - NVPro 30306 (Trong suốt)  ', '86000', '/hinhsanpham/mieng-gian-cuong-luc-iphone-6-6s.jpg', '', 'Asus ZenPower là viên pin sạc chính hãng hiếm hoi đến từ một nhà sản xuất điện thoại khá lớn ở Việt Nam. Hiện tại ZenPower có khá nhiều màu khác nhau, từ hồng đẹp trai đến màu đen yếu đuối. Hiện tại thì mình mượn được màu hồng mạnh mẽ và vàng sang chảnh để trên tay. Asus có bán các miếng bảo vệ cao su nhiều màu cho pin nhưng không rõ có được phân phối ở Việt Nam hay không.', 10, 7, 5, 2, 0),
(18, 'Đế kẹp smartphone cho điện thoại', '36000', '/hinhsanpham/dekepsmartphonechodienthoai.jpg', '', 'Asus ZenPower là viên pin sạc chính hãng hiếm hoi đến từ một nhà sản xuất điện thoại khá lớn ở Việt Nam. Hiện tại ZenPower có khá nhiều màu khác nhau, từ hồng đẹp trai đến màu đen yếu đuối. Hiện tại thì mình mượn được màu hồng mạnh mẽ và vàng sang chảnh để trên tay. Asus có bán các miếng bảo vệ cao su nhiều màu cho pin nhưng không rõ có được phân phối ở Việt Nam hay không.', 10, 8, 5, 2, 0),
(19, 'Sim 3G tài khoản 600 MB', '106000', '/hinhsanpham/sim3gtaikhoan600.jpg', '', 'Asus ZenPower là viên pin sạc chính hãng hiếm hoi đến từ một nhà sản xuất điện thoại khá lớn ở Việt Nam. Hiện tại ZenPower có khá nhiều màu khác nhau, từ hồng đẹp trai đến màu đen yếu đuối. Hiện tại thì mình mượn được màu hồng mạnh mẽ và vàng sang chảnh để trên tay. Asus có bán các miếng bảo vệ cao su nhiều màu cho pin nhưng không rõ có được phân phối ở Việt Nam hay không.', 10, 12, 5, 2, 0),
(20, 'Ổ cắm thông minh Xiaomi Mi Power Strips (Trắng) ', '166000', '/hinhsanpham/o-cam-thong-minh-xiaomi.jpg', '', 'Asus ZenPower là viên pin sạc chính hãng hiếm hoi đến từ một nhà sản xuất điện thoại khá lớn ở Việt Nam. Hiện tại ZenPower có khá nhiều màu khác nhau, từ hồng đẹp trai đến màu đen yếu đuối. Hiện tại thì mình mượn được màu hồng mạnh mẽ và vàng sang chảnh để trên tay. Asus có bán các miếng bảo vệ cao su nhiều màu cho pin nhưng không rõ có được phân phối ở Việt Nam hay không.', 10, 11, 5, 2, 0),
(21, 'Giá đỡ điện thoại cho tay cầm chơi Game Terios T-3 ( Đen)  ', '99000', '/hinhsanpham/taycamchoigame.jpg', '', 'Asus ZenPower là viên pin sạc chính hãng hiếm hoi đến từ một nhà sản xuất điện thoại khá lớn ở Việt Nam. Hiện tại ZenPower có khá nhiều màu khác nhau, từ hồng đẹp trai đến màu đen yếu đuối. Hiện tại thì mình mượn được màu hồng mạnh mẽ và vàng sang chảnh để trên tay. Asus có bán các miếng bảo vệ cao su nhiều màu cho pin nhưng không rõ có được phân phối ở Việt Nam hay không.', 10, 11, 5, 2, 0),
(22, 'Tivi LED Arirang 24inch HD - Model AR-2488F (Đen)', '2439000', '/hinhsanpham/tiviled24inchesariang.jpg', '', 'Asus ZenPower là viên pin sạc chính hãng hiếm hoi đến từ một nhà sản xuất điện thoại khá lớn ở Việt Nam. Hiện tại ZenPower có khá nhiều màu khác nhau, từ hồng đẹp trai đến màu đen yếu đuối. Hiện tại thì mình mượn được màu hồng mạnh mẽ và vàng sang chảnh để trên tay. Asus có bán các miếng bảo vệ cao su nhiều màu cho pin nhưng không rõ có được phân phối ở Việt Nam hay không.', 10, 84, 5, 2, 0),
(23, 'Tivi LED LG 42inch 42LF550T Full HD (Đen)  ', '6939000', '/hinhsanpham/tiviled42inches.jpg', '', 'Asus ZenPower là viên pin sạc chính hãng hiếm hoi đến từ một nhà sản xuất điện thoại khá lớn ở Việt Nam. Hiện tại ZenPower có khá nhiều màu khác nhau, từ hồng đẹp trai đến màu đen yếu đuối. Hiện tại thì mình mượn được màu hồng mạnh mẽ và vàng sang chảnh để trên tay. Asus có bán các miếng bảo vệ cao su nhiều màu cho pin nhưng không rõ có được phân phối ở Việt Nam hay không.', 10, 85, 5, 2, 0),
(24, 'Smart Tivi LED LG 55inch Full HD - Model 55LH575T (Đen)', '17000000', '/hinhsanpham/tiviled55inches.jpg', '', 'Asus ZenPower là viên pin sạc chính hãng hiếm hoi đến từ một nhà sản xuất điện thoại khá lớn ở Việt Nam. Hiện tại ZenPower có khá nhiều màu khác nhau, từ hồng đẹp trai đến màu đen yếu đuối. Hiện tại thì mình mượn được màu hồng mạnh mẽ và vàng sang chảnh để trên tay. Asus có bán các miếng bảo vệ cao su nhiều màu cho pin nhưng không rõ có được phân phối ở Việt Nam hay không.', 10, 87, 5, 2, 0),
(25, 'Load Bluetooth SUNTEK S204 (Đen) ', '269000', '/hinhsanpham/sony-electronics-hd-radio.jpg', '', 'Asus ZenPower là viên pin sạc chính hãng hiếm hoi đến từ một nhà sản xuất điện thoại khá lớn ở Việt Nam. Hiện tại ZenPower có khá nhiều màu khác nhau, từ hồng đẹp trai đến màu đen yếu đuối. Hiện tại thì mình mượn được màu hồng mạnh mẽ và vàng sang chảnh để trên tay. Asus có bán các miếng bảo vệ cao su nhiều màu cho pin nhưng không rõ có được phân phối ở Việt Nam hay không.', 10, 92, 5, 2, 0),
(26, 'Tai nghe chụp tai Ovann X1 Gaming (Đen phối Xanh) ', '60000', '/hinhsanpham/tai-nghe-chup-tai-ovann-x1-gaming-den-phoi-xanh_5235588062018469161_300.jpg', '', 'Asus ZenPower là viên pin sạc chính hãng hiếm hoi đến từ một nhà sản xuất điện thoại khá lớn ở Việt Nam. Hiện tại ZenPower có khá nhiều màu khác nhau, từ hồng đẹp trai đến màu đen yếu đuối. Hiện tại thì mình mượn được màu hồng mạnh mẽ và vàng sang chảnh để trên tay. Asus có bán các miếng bảo vệ cao su nhiều màu cho pin nhưng không rõ có được phân phối ở Việt Nam hay không.', 10, 91, 5, 2, 0),
(27, 'Dàn âm thanh Samsung HT-E350K 5.1 330W (Đen) ', '1760000', '/hinhsanpham/vish-dvd-ht-e350k-2.jpg', '', 'Asus ZenPower là viên pin sạc chính hãng hiếm hoi đến từ một nhà sản xuất điện thoại khá lớn ở Việt Nam. Hiện tại ZenPower có khá nhiều màu khác nhau, từ hồng đẹp trai đến màu đen yếu đuối. Hiện tại thì mình mượn được màu hồng mạnh mẽ và vàng sang chảnh để trên tay. Asus có bán các miếng bảo vệ cao su nhiều màu cho pin nhưng không rõ có được phân phối ở Việt Nam hay không.', 10, 93, 5, 2, 0),
(28, 'Máy nghe nhạc MP3 NVPro Minion (Xanh dương) ', '40000', '/hinhsanpham/may-nghe-nhac-mp3-nvpro-minion-xanh-duong-8610-6315961-e77b808c5237d08a940e6fe597050469-catalog_233.jpg', '', 'Asus ZenPower là viên pin sạc chính hãng hiếm hoi đến từ một nhà sản xuất điện thoại khá lớn ở Việt Nam. Hiện tại ZenPower có khá nhiều màu khác nhau, từ hồng đẹp trai đến màu đen yếu đuối. Hiện tại thì mình mượn được màu hồng mạnh mẽ và vàng sang chảnh để trên tay. Asus có bán các miếng bảo vệ cao su nhiều màu cho pin nhưng không rõ có được phân phối ở Việt Nam hay không.', 10, 94, 5, 2, 0),
(29, 'Máy chiếu mini cho điện thoại (Nâu)  ', '169999', '/hinhsanpham/may-chieu-mini-cho-dien-thoai-nau-9973-9001242-168928dd2df3fa0fae4f2c453b3e8620-catalog_233.jpg', '', 'Asus ZenPower là viên pin sạc chính hãng hiếm hoi đến từ một nhà sản xuất điện thoại khá lớn ở Việt Nam. Hiện tại ZenPower có khá nhiều màu khác nhau, từ hồng đẹp trai đến màu đen yếu đuối. Hiện tại thì mình mượn được màu hồng mạnh mẽ và vàng sang chảnh để trên tay. Asus có bán các miếng bảo vệ cao su nhiều màu cho pin nhưng không rõ có được phân phối ở Việt Nam hay không.', 10, 96, 5, 2, 0),
(30, 'Thiết bị Android TV box MXQ S805 (Đen) ', '429300', '/hinhsanpham/20160530150209551.jpg', '', 'Asus ZenPower là viên pin sạc chính hãng hiếm hoi đến từ một nhà sản xuất điện thoại khá lớn ở Việt Nam. Hiện tại ZenPower có khá nhiều màu khác nhau, từ hồng đẹp trai đến màu đen yếu đuối. Hiện tại thì mình mượn được màu hồng mạnh mẽ và vàng sang chảnh để trên tay. Asus có bán các miếng bảo vệ cao su nhiều màu cho pin nhưng không rõ có được phân phối ở Việt Nam hay không.', 10, 97, 5, 2, 0),
(31, 'Tay cầm chơi game Xbox One Controller và Wireless Adapter for PC (Đen)', '1549000', '/hinhsanpham/36743763_palaciodehierro_wirelesscontrollerc35mmone_xbox_vista_1.jpg', '', 'Asus ZenPower là viên pin sạc chính hãng hiếm hoi đến từ một nhà sản xuất điện thoại khá lớn ở Việt Nam. Hiện tại ZenPower có khá nhiều màu khác nhau, từ hồng đẹp trai đến màu đen yếu đuối. Hiện tại thì mình mượn được màu hồng mạnh mẽ và vàng sang chảnh để trên tay. Asus có bán các miếng bảo vệ cao su nhiều màu cho pin nhưng không rõ có được phân phối ở Việt Nam hay không.', 10, 99, 5, 2, 0),
(32, 'Máy chơi games Nintendo Wii +HDD 500 GB (Full Games) (Đen) ', '5999000', '/hinhsanpham/23. WII CONSOLE BLACK W WII REMOTE PLUS _ NUNCHUCK (UPC 045496880675).jpg', '', 'Asus ZenPower là viên pin sạc chính hãng hiếm hoi đến từ một nhà sản xuất điện thoại khá lớn ở Việt Nam. Hiện tại ZenPower có khá nhiều màu khác nhau, từ hồng đẹp trai đến màu đen yếu đuối. Hiện tại thì mình mượn được màu hồng mạnh mẽ và vàng sang chảnh để trên tay. Asus có bán các miếng bảo vệ cao su nhiều màu cho pin nhưng không rõ có được phân phối ở Việt Nam hay không.', 10, 100, 5, 2, 0),
(33, 'Đồng hồ thông minh Smart Watch Uwatch DZ09 (Bạc) ', '302676000', '/hinhsanpham/res_50df6f16088731d12e6c6698c47231e4_1200x1200c_mttq.jpg', '', 'Asus ZenPower là viên pin sạc chính hãng hiếm hoi đến từ một nhà sản xuất điện thoại khá lớn ở Việt Nam. Hiện tại ZenPower có khá nhiều màu khác nhau, từ hồng đẹp trai đến màu đen yếu đuối. Hiện tại thì mình mượn được màu hồng mạnh mẽ và vàng sang chảnh để trên tay. Asus có bán các miếng bảo vệ cao su nhiều màu cho pin nhưng không rõ có được phân phối ở Việt Nam hay không.', 10, 102, 5, 2, 0),
(34, 'Vòng đeo tay Xiaomi Miband 2 (Đen)  ', '819000', '/hinhsanpham/sh-02-a.jpg', '', 'Asus ZenPower là viên pin sạc chính hãng hiếm hoi đến từ một nhà sản xuất điện thoại khá lớn ở Việt Nam. Hiện tại ZenPower có khá nhiều màu khác nhau, từ hồng đẹp trai đến màu đen yếu đuối. Hiện tại thì mình mượn được màu hồng mạnh mẽ và vàng sang chảnh để trên tay. Asus có bán các miếng bảo vệ cao su nhiều màu cho pin nhưng không rõ có được phân phối ở Việt Nam hay không.', 10, 103, 5, 2, 0),
(35, 'Bút ghi âm chuyên nghiệp 8 GB (Đen) ', '612000', '/hinhsanpham/130814225508442671.jpg', '', 'Asus ZenPower là viên pin sạc chính hãng hiếm hoi đến từ một nhà sản xuất điện thoại khá lớn ở Việt Nam. Hiện tại ZenPower có khá nhiều màu khác nhau, từ hồng đẹp trai đến màu đen yếu đuối. Hiện tại thì mình mượn được màu hồng mạnh mẽ và vàng sang chảnh để trên tay. Asus có bán các miếng bảo vệ cao su nhiều màu cho pin nhưng không rõ có được phân phối ở Việt Nam hay không.', 10, 104, 5, 2, 0),
(36, 'Apple Iphone 6s Plus 16GB (Vàng hồng)', '13960000', '/hinhsanpham/iphone6spluse.png', '/hinhsanpham/iphone6spluse1.jpg,/hinhsanpham/iphone6spluse2.jpg,/hinhsanpham/iphone6spluse3.png,/hinhsanpham/iphone6spluse4.jpg', 'Là hàng được nhập khẩu trực tiếp từ nước ngoài bởi doanh nghiệp trong nước, không thông qua nhà phân phối chính thức tại thị trường Việt Nam.\r\nHàng nhập khẩu được nhiều người chọn lựa bởi giá thành tốt, chất lượng vẫn được đảm bảo như những sản phẩm được nhập khẩu thông qua nhà phân phối chính thức (vì được sản xuất từ cùng một nhà máy của hãng sản xuất). Hơn nữa, dù không được bảo hành tại các trung tâm bảo hành chính thức của hãng, các sản phẩm này vẫn được áp dụng đầy đủ chính sách bảo hành của doanh nghiệp nhập khẩu', 10, 2, 1, 1, 0),
(37, 'Apple Iphone 6s Plus 16GB (Vàng hồng)', '13960000', '/hinhsanpham/iphone6spluse.png', '/hinhsanpham/iphone6spluse1.jpg,/hinhsanpham/iphone6spluse2.jpg,/hinhsanpham/iphone6spluse3.png,/hinhsanpham/iphone6spluse4.jpg', 'Là hàng được nhập khẩu trực tiếp từ nước ngoài bởi doanh nghiệp trong nước, không thông qua nhà phân phối chính thức tại thị trường Việt Nam.\r\nHàng nhập khẩu được nhiều người chọn lựa bởi giá thành tốt, chất lượng vẫn được đảm bảo như những sản phẩm được nhập khẩu thông qua nhà phân phối chính thức (vì được sản xuất từ cùng một nhà máy của hãng sản xuất). Hơn nữa, dù không được bảo hành tại các trung tâm bảo hành chính thức của hãng, các sản phẩm này vẫn được áp dụng đầy đủ chính sách bảo hành của doanh nghiệp nhập khẩu', 10, 2, 1, 1, 0),
(38, 'Apple Iphone 6s Plus 16GB (Vàng hồng)', '13960000', '/hinhsanpham/iphone6spluse.png', '/hinhsanpham/iphone6spluse1.jpg,/hinhsanpham/iphone6spluse2.jpg,/hinhsanpham/iphone6spluse3.png,/hinhsanpham/iphone6spluse4.jpg', 'Là hàng được nhập khẩu trực tiếp từ nước ngoài bởi doanh nghiệp trong nước, không thông qua nhà phân phối chính thức tại thị trường Việt Nam.\r\nHàng nhập khẩu được nhiều người chọn lựa bởi giá thành tốt, chất lượng vẫn được đảm bảo như những sản phẩm được nhập khẩu thông qua nhà phân phối chính thức (vì được sản xuất từ cùng một nhà máy của hãng sản xuất). Hơn nữa, dù không được bảo hành tại các trung tâm bảo hành chính thức của hãng, các sản phẩm này vẫn được áp dụng đầy đủ chính sách bảo hành của doanh nghiệp nhập khẩu', 10, 2, 1, 1, 0),
(39, 'Apple Iphone 6s Plus 16GB (Vàng hồng)', '13960000', '/hinhsanpham/iphone6spluse.png', '/hinhsanpham/iphone6spluse1.jpg,/hinhsanpham/iphone6spluse2.jpg,/hinhsanpham/iphone6spluse3.png,/hinhsanpham/iphone6spluse4.jpg', 'Là hàng được nhập khẩu trực tiếp từ nước ngoài bởi doanh nghiệp trong nước, không thông qua nhà phân phối chính thức tại thị trường Việt Nam.\r\nHàng nhập khẩu được nhiều người chọn lựa bởi giá thành tốt, chất lượng vẫn được đảm bảo như những sản phẩm được nhập khẩu thông qua nhà phân phối chính thức (vì được sản xuất từ cùng một nhà máy của hãng sản xuất). Hơn nữa, dù không được bảo hành tại các trung tâm bảo hành chính thức của hãng, các sản phẩm này vẫn được áp dụng đầy đủ chính sách bảo hành của doanh nghiệp nhập khẩu', 10, 2, 1, 1, 0),
(40, 'Apple Iphone 6s Plus 16GB (Vàng hồng)', '13960000', '/hinhsanpham/iphone6spluse.png', '/hinhsanpham/iphone6spluse1.jpg,/hinhsanpham/iphone6spluse2.jpg,/hinhsanpham/iphone6spluse3.png,/hinhsanpham/iphone6spluse4.jpg', 'Là hàng được nhập khẩu trực tiếp từ nước ngoài bởi doanh nghiệp trong nước, không thông qua nhà phân phối chính thức tại thị trường Việt Nam.\r\nHàng nhập khẩu được nhiều người chọn lựa bởi giá thành tốt, chất lượng vẫn được đảm bảo như những sản phẩm được nhập khẩu thông qua nhà phân phối chính thức (vì được sản xuất từ cùng một nhà máy của hãng sản xuất). Hơn nữa, dù không được bảo hành tại các trung tâm bảo hành chính thức của hãng, các sản phẩm này vẫn được áp dụng đầy đủ chính sách bảo hành của doanh nghiệp nhập khẩu', 10, 2, 1, 1, 0),
(41, 'Apple Iphone 6s Plus 16GB (Vàng hồng)', '13960000', '/hinhsanpham/iphone6spluse.png', '/hinhsanpham/iphone6spluse1.jpg,/hinhsanpham/iphone6spluse2.jpg,/hinhsanpham/iphone6spluse3.png,/hinhsanpham/iphone6spluse4.jpg', 'Là hàng được nhập khẩu trực tiếp từ nước ngoài bởi doanh nghiệp trong nước, không thông qua nhà phân phối chính thức tại thị trường Việt Nam.\r\nHàng nhập khẩu được nhiều người chọn lựa bởi giá thành tốt, chất lượng vẫn được đảm bảo như những sản phẩm được nhập khẩu thông qua nhà phân phối chính thức (vì được sản xuất từ cùng một nhà máy của hãng sản xuất). Hơn nữa, dù không được bảo hành tại các trung tâm bảo hành chính thức của hãng, các sản phẩm này vẫn được áp dụng đầy đủ chính sách bảo hành của doanh nghiệp nhập khẩu', 10, 2, 1, 1, 0),
(42, 'Apple Iphone 6s Plus 16GB (Vàng hồng)', '13960000', '/hinhsanpham/iphone6spluse.png', '/hinhsanpham/iphone6spluse1.jpg,/hinhsanpham/iphone6spluse2.jpg,/hinhsanpham/iphone6spluse3.png,/hinhsanpham/iphone6spluse4.jpg', 'Là hàng được nhập khẩu trực tiếp từ nước ngoài bởi doanh nghiệp trong nước, không thông qua nhà phân phối chính thức tại thị trường Việt Nam.\r\nHàng nhập khẩu được nhiều người chọn lựa bởi giá thành tốt, chất lượng vẫn được đảm bảo như những sản phẩm được nhập khẩu thông qua nhà phân phối chính thức (vì được sản xuất từ cùng một nhà máy của hãng sản xuất). Hơn nữa, dù không được bảo hành tại các trung tâm bảo hành chính thức của hãng, các sản phẩm này vẫn được áp dụng đầy đủ chính sách bảo hành của doanh nghiệp nhập khẩu', 10, 2, 1, 1, 0),
(43, 'Apple Iphone 6s Plus 16GB (Vàng hồng)', '13960000', '/hinhsanpham/iphone6spluse.png', '/hinhsanpham/iphone6spluse1.jpg,/hinhsanpham/iphone6spluse2.jpg,/hinhsanpham/iphone6spluse3.png,/hinhsanpham/iphone6spluse4.jpg', 'Là hàng được nhập khẩu trực tiếp từ nước ngoài bởi doanh nghiệp trong nước, không thông qua nhà phân phối chính thức tại thị trường Việt Nam.\r\nHàng nhập khẩu được nhiều người chọn lựa bởi giá thành tốt, chất lượng vẫn được đảm bảo như những sản phẩm được nhập khẩu thông qua nhà phân phối chính thức (vì được sản xuất từ cùng một nhà máy của hãng sản xuất). Hơn nữa, dù không được bảo hành tại các trung tâm bảo hành chính thức của hãng, các sản phẩm này vẫn được áp dụng đầy đủ chính sách bảo hành của doanh nghiệp nhập khẩu', 10, 2, 1, 1, 0),
(44, 'Apple Iphone 6s Plus 16GB (Vàng hồng)', '13960000', '/hinhsanpham/iphone6spluse.png', '/hinhsanpham/iphone6spluse1.jpg,/hinhsanpham/iphone6spluse2.jpg,/hinhsanpham/iphone6spluse3.png,/hinhsanpham/iphone6spluse4.jpg', 'Là hàng được nhập khẩu trực tiếp từ nước ngoài bởi doanh nghiệp trong nước, không thông qua nhà phân phối chính thức tại thị trường Việt Nam.\r\nHàng nhập khẩu được nhiều người chọn lựa bởi giá thành tốt, chất lượng vẫn được đảm bảo như những sản phẩm được nhập khẩu thông qua nhà phân phối chính thức (vì được sản xuất từ cùng một nhà máy của hãng sản xuất). Hơn nữa, dù không được bảo hành tại các trung tâm bảo hành chính thức của hãng, các sản phẩm này vẫn được áp dụng đầy đủ chính sách bảo hành của doanh nghiệp nhập khẩu', 10, 2, 1, 1, 0),
(45, 'Apple Iphone 6s Plus 16GB (Vàng hồng)', '13960000', '/hinhsanpham/iphone6spluse.png', '/hinhsanpham/iphone6spluse1.jpg,/hinhsanpham/iphone6spluse2.jpg,/hinhsanpham/iphone6spluse3.png,/hinhsanpham/iphone6spluse4.jpg', 'Là hàng được nhập khẩu trực tiếp từ nước ngoài bởi doanh nghiệp trong nước, không thông qua nhà phân phối chính thức tại thị trường Việt Nam.\r\nHàng nhập khẩu được nhiều người chọn lựa bởi giá thành tốt, chất lượng vẫn được đảm bảo như những sản phẩm được nhập khẩu thông qua nhà phân phối chính thức (vì được sản xuất từ cùng một nhà máy của hãng sản xuất). Hơn nữa, dù không được bảo hành tại các trung tâm bảo hành chính thức của hãng, các sản phẩm này vẫn được áp dụng đầy đủ chính sách bảo hành của doanh nghiệp nhập khẩu', 10, 2, 1, 1, 0),
(46, 'Apple Iphone 6s Plus 16GB (Vàng hồng)', '13960000', '/hinhsanpham/iphone6spluse.png', '/hinhsanpham/iphone6spluse1.jpg,/hinhsanpham/iphone6spluse2.jpg,/hinhsanpham/iphone6spluse3.png,/hinhsanpham/iphone6spluse4.jpg', 'Là hàng được nhập khẩu trực tiếp từ nước ngoài bởi doanh nghiệp trong nước, không thông qua nhà phân phối chính thức tại thị trường Việt Nam.\r\nHàng nhập khẩu được nhiều người chọn lựa bởi giá thành tốt, chất lượng vẫn được đảm bảo như những sản phẩm được nhập khẩu thông qua nhà phân phối chính thức (vì được sản xuất từ cùng một nhà máy của hãng sản xuất). Hơn nữa, dù không được bảo hành tại các trung tâm bảo hành chính thức của hãng, các sản phẩm này vẫn được áp dụng đầy đủ chính sách bảo hành của doanh nghiệp nhập khẩu', 10, 2, 1, 1, 0),
(47, 'Apple Iphone 6s Plus 16GB (Vàng hồng)', '13960000', '/hinhsanpham/iphone6spluse.png', '/hinhsanpham/iphone6spluse1.jpg,/hinhsanpham/iphone6spluse2.jpg,/hinhsanpham/iphone6spluse3.png,/hinhsanpham/iphone6spluse4.jpg', 'Là hàng được nhập khẩu trực tiếp từ nước ngoài bởi doanh nghiệp trong nước, không thông qua nhà phân phối chính thức tại thị trường Việt Nam.\r\nHàng nhập khẩu được nhiều người chọn lựa bởi giá thành tốt, chất lượng vẫn được đảm bảo như những sản phẩm được nhập khẩu thông qua nhà phân phối chính thức (vì được sản xuất từ cùng một nhà máy của hãng sản xuất). Hơn nữa, dù không được bảo hành tại các trung tâm bảo hành chính thức của hãng, các sản phẩm này vẫn được áp dụng đầy đủ chính sách bảo hành của doanh nghiệp nhập khẩu', 10, 2, 1, 1, 0),
(48, 'Apple Iphone 6s Plus 16GB (Vàng hồng)', '13960000', '/hinhsanpham/iphone6spluse.png', '/hinhsanpham/iphone6spluse1.jpg,/hinhsanpham/iphone6spluse2.jpg,/hinhsanpham/iphone6spluse3.png,/hinhsanpham/iphone6spluse4.jpg', 'Là hàng được nhập khẩu trực tiếp từ nước ngoài bởi doanh nghiệp trong nước, không thông qua nhà phân phối chính thức tại thị trường Việt Nam.\r\nHàng nhập khẩu được nhiều người chọn lựa bởi giá thành tốt, chất lượng vẫn được đảm bảo như những sản phẩm được nhập khẩu thông qua nhà phân phối chính thức (vì được sản xuất từ cùng một nhà máy của hãng sản xuất). Hơn nữa, dù không được bảo hành tại các trung tâm bảo hành chính thức của hãng, các sản phẩm này vẫn được áp dụng đầy đủ chính sách bảo hành của doanh nghiệp nhập khẩu', 10, 2, 1, 1, 0),
(49, 'Apple Iphone 6s Plus 16GB (Vàng hồng)', '13960000', '/hinhsanpham/iphone6spluse.png', '/hinhsanpham/iphone6spluse1.jpg,/hinhsanpham/iphone6spluse2.jpg,/hinhsanpham/iphone6spluse3.png,/hinhsanpham/iphone6spluse4.jpg', 'Là hàng được nhập khẩu trực tiếp từ nước ngoài bởi doanh nghiệp trong nước, không thông qua nhà phân phối chính thức tại thị trường Việt Nam.\r\nHàng nhập khẩu được nhiều người chọn lựa bởi giá thành tốt, chất lượng vẫn được đảm bảo như những sản phẩm được nhập khẩu thông qua nhà phân phối chính thức (vì được sản xuất từ cùng một nhà máy của hãng sản xuất). Hơn nữa, dù không được bảo hành tại các trung tâm bảo hành chính thức của hãng, các sản phẩm này vẫn được áp dụng đầy đủ chính sách bảo hành của doanh nghiệp nhập khẩu', 10, 2, 1, 1, 0),
(50, 'Apple Iphone 6s Plus 16GB (Vàng hồng)', '13960000', '/hinhsanpham/iphone6spluse.png', '/hinhsanpham/iphone6spluse1.jpg,/hinhsanpham/iphone6spluse2.jpg,/hinhsanpham/iphone6spluse3.png,/hinhsanpham/iphone6spluse4.jpg', 'Là hàng được nhập khẩu trực tiếp từ nước ngoài bởi doanh nghiệp trong nước, không thông qua nhà phân phối chính thức tại thị trường Việt Nam.\r\nHàng nhập khẩu được nhiều người chọn lựa bởi giá thành tốt, chất lượng vẫn được đảm bảo như những sản phẩm được nhập khẩu thông qua nhà phân phối chính thức (vì được sản xuất từ cùng một nhà máy của hãng sản xuất). Hơn nữa, dù không được bảo hành tại các trung tâm bảo hành chính thức của hãng, các sản phẩm này vẫn được áp dụng đầy đủ chính sách bảo hành của doanh nghiệp nhập khẩu', 10, 2, 1, 1, 0),
(51, 'Apple Iphone 6s Plus 16GB (Vàng hồng)', '13960000', '/hinhsanpham/iphone6spluse.png', '/hinhsanpham/iphone6spluse1.jpg,/hinhsanpham/iphone6spluse2.jpg,/hinhsanpham/iphone6spluse3.png,/hinhsanpham/iphone6spluse4.jpg', 'Là hàng được nhập khẩu trực tiếp từ nước ngoài bởi doanh nghiệp trong nước, không thông qua nhà phân phối chính thức tại thị trường Việt Nam.\r\nHàng nhập khẩu được nhiều người chọn lựa bởi giá thành tốt, chất lượng vẫn được đảm bảo như những sản phẩm được nhập khẩu thông qua nhà phân phối chính thức (vì được sản xuất từ cùng một nhà máy của hãng sản xuất). Hơn nữa, dù không được bảo hành tại các trung tâm bảo hành chính thức của hãng, các sản phẩm này vẫn được áp dụng đầy đủ chính sách bảo hành của doanh nghiệp nhập khẩu', 10, 2, 1, 1, 0),
(52, 'Apple Iphone 6s Plus 16GB (Vàng hồng)', '13960000', '/hinhsanpham/iphone6spluse.png', '/hinhsanpham/iphone6spluse1.jpg,/hinhsanpham/iphone6spluse2.jpg,/hinhsanpham/iphone6spluse3.png,/hinhsanpham/iphone6spluse4.jpg', 'Là hàng được nhập khẩu trực tiếp từ nước ngoài bởi doanh nghiệp trong nước, không thông qua nhà phân phối chính thức tại thị trường Việt Nam.\r\nHàng nhập khẩu được nhiều người chọn lựa bởi giá thành tốt, chất lượng vẫn được đảm bảo như những sản phẩm được nhập khẩu thông qua nhà phân phối chính thức (vì được sản xuất từ cùng một nhà máy của hãng sản xuất). Hơn nữa, dù không được bảo hành tại các trung tâm bảo hành chính thức của hãng, các sản phẩm này vẫn được áp dụng đầy đủ chính sách bảo hành của doanh nghiệp nhập khẩu', 10, 2, 1, 1, 0),
(53, 'Apple Iphone 6s Plus 16GB (Vàng hồng)', '13960000', '/hinhsanpham/iphone6spluse.png', '/hinhsanpham/iphone6spluse1.jpg,/hinhsanpham/iphone6spluse2.jpg,/hinhsanpham/iphone6spluse3.png,/hinhsanpham/iphone6spluse4.jpg', 'Là hàng được nhập khẩu trực tiếp từ nước ngoài bởi doanh nghiệp trong nước, không thông qua nhà phân phối chính thức tại thị trường Việt Nam.\r\nHàng nhập khẩu được nhiều người chọn lựa bởi giá thành tốt, chất lượng vẫn được đảm bảo như những sản phẩm được nhập khẩu thông qua nhà phân phối chính thức (vì được sản xuất từ cùng một nhà máy của hãng sản xuất). Hơn nữa, dù không được bảo hành tại các trung tâm bảo hành chính thức của hãng, các sản phẩm này vẫn được áp dụng đầy đủ chính sách bảo hành của doanh nghiệp nhập khẩu', 10, 2, 1, 1, 0),
(54, 'Apple Iphone 6s Plus 16GB (Vàng hồng)', '13960000', '/hinhsanpham/iphone6spluse.png', '/hinhsanpham/iphone6spluse1.jpg,/hinhsanpham/iphone6spluse2.jpg,/hinhsanpham/iphone6spluse3.png,/hinhsanpham/iphone6spluse4.jpg', 'Là hàng được nhập khẩu trực tiếp từ nước ngoài bởi doanh nghiệp trong nước, không thông qua nhà phân phối chính thức tại thị trường Việt Nam.\r\nHàng nhập khẩu được nhiều người chọn lựa bởi giá thành tốt, chất lượng vẫn được đảm bảo như những sản phẩm được nhập khẩu thông qua nhà phân phối chính thức (vì được sản xuất từ cùng một nhà máy của hãng sản xuất). Hơn nữa, dù không được bảo hành tại các trung tâm bảo hành chính thức của hãng, các sản phẩm này vẫn được áp dụng đầy đủ chính sách bảo hành của doanh nghiệp nhập khẩu', 10, 2, 1, 1, 0),
(55, 'Apple Iphone 6s Plus 16GB (Vàng hồng)', '13960000', '/hinhsanpham/iphone6spluse.png', '/hinhsanpham/iphone6spluse1.jpg,/hinhsanpham/iphone6spluse2.jpg,/hinhsanpham/iphone6spluse3.png,/hinhsanpham/iphone6spluse4.jpg', 'Là hàng được nhập khẩu trực tiếp từ nước ngoài bởi doanh nghiệp trong nước, không thông qua nhà phân phối chính thức tại thị trường Việt Nam.\r\nHàng nhập khẩu được nhiều người chọn lựa bởi giá thành tốt, chất lượng vẫn được đảm bảo như những sản phẩm được nhập khẩu thông qua nhà phân phối chính thức (vì được sản xuất từ cùng một nhà máy của hãng sản xuất). Hơn nữa, dù không được bảo hành tại các trung tâm bảo hành chính thức của hãng, các sản phẩm này vẫn được áp dụng đầy đủ chính sách bảo hành của doanh nghiệp nhập khẩu', 10, 2, 1, 1, 0),
(56, 'Apple Iphone 6s Plus 16GB (Vàng hồng)', '13960000', '/hinhsanpham/iphone6spluse.png', '/hinhsanpham/iphone6spluse1.jpg,/hinhsanpham/iphone6spluse2.jpg,/hinhsanpham/iphone6spluse3.png,/hinhsanpham/iphone6spluse4.jpg', 'Là hàng được nhập khẩu trực tiếp từ nước ngoài bởi doanh nghiệp trong nước, không thông qua nhà phân phối chính thức tại thị trường Việt Nam.\r\nHàng nhập khẩu được nhiều người chọn lựa bởi giá thành tốt, chất lượng vẫn được đảm bảo như những sản phẩm được nhập khẩu thông qua nhà phân phối chính thức (vì được sản xuất từ cùng một nhà máy của hãng sản xuất). Hơn nữa, dù không được bảo hành tại các trung tâm bảo hành chính thức của hãng, các sản phẩm này vẫn được áp dụng đầy đủ chính sách bảo hành của doanh nghiệp nhập khẩu', 10, 2, 1, 1, 0),
(57, 'Apple Iphone 6s Plus 16GB (Vàng hồng)', '13960000', '/hinhsanpham/iphone6spluse.png', '/hinhsanpham/iphone6spluse1.jpg,/hinhsanpham/iphone6spluse2.jpg,/hinhsanpham/iphone6spluse3.png,/hinhsanpham/iphone6spluse4.jpg', 'Là hàng được nhập khẩu trực tiếp từ nước ngoài bởi doanh nghiệp trong nước, không thông qua nhà phân phối chính thức tại thị trường Việt Nam.\r\nHàng nhập khẩu được nhiều người chọn lựa bởi giá thành tốt, chất lượng vẫn được đảm bảo như những sản phẩm được nhập khẩu thông qua nhà phân phối chính thức (vì được sản xuất từ cùng một nhà máy của hãng sản xuất). Hơn nữa, dù không được bảo hành tại các trung tâm bảo hành chính thức của hãng, các sản phẩm này vẫn được áp dụng đầy đủ chính sách bảo hành của doanh nghiệp nhập khẩu', 10, 2, 1, 1, 0),
(58, 'Apple Iphone 6s Plus 16GB (Vàng hồng)', '13960000', '/hinhsanpham/iphone6spluse.png', '/hinhsanpham/iphone6spluse1.jpg,/hinhsanpham/iphone6spluse2.jpg,/hinhsanpham/iphone6spluse3.png,/hinhsanpham/iphone6spluse4.jpg', 'Là hàng được nhập khẩu trực tiếp từ nước ngoài bởi doanh nghiệp trong nước, không thông qua nhà phân phối chính thức tại thị trường Việt Nam.\r\nHàng nhập khẩu được nhiều người chọn lựa bởi giá thành tốt, chất lượng vẫn được đảm bảo như những sản phẩm được nhập khẩu thông qua nhà phân phối chính thức (vì được sản xuất từ cùng một nhà máy của hãng sản xuất). Hơn nữa, dù không được bảo hành tại các trung tâm bảo hành chính thức của hãng, các sản phẩm này vẫn được áp dụng đầy đủ chính sách bảo hành của doanh nghiệp nhập khẩu', 10, 2, 1, 1, 0),
(59, 'Apple Iphone 6s Plus 16GB (Vàng hồng)', '13960000', '/hinhsanpham/iphone6spluse.png', '/hinhsanpham/iphone6spluse1.jpg,/hinhsanpham/iphone6spluse2.jpg,/hinhsanpham/iphone6spluse3.png,/hinhsanpham/iphone6spluse4.jpg', 'Là hàng được nhập khẩu trực tiếp từ nước ngoài bởi doanh nghiệp trong nước, không thông qua nhà phân phối chính thức tại thị trường Việt Nam.\r\nHàng nhập khẩu được nhiều người chọn lựa bởi giá thành tốt, chất lượng vẫn được đảm bảo như những sản phẩm được nhập khẩu thông qua nhà phân phối chính thức (vì được sản xuất từ cùng một nhà máy của hãng sản xuất). Hơn nữa, dù không được bảo hành tại các trung tâm bảo hành chính thức của hãng, các sản phẩm này vẫn được áp dụng đầy đủ chính sách bảo hành của doanh nghiệp nhập khẩu', 10, 2, 1, 1, 0),
(60, 'Apple Iphone 6s Plus 16GB (Vàng hồng)', '13960000', '/hinhsanpham/iphone6spluse.png', '/hinhsanpham/iphone6spluse1.jpg,/hinhsanpham/iphone6spluse2.jpg,/hinhsanpham/iphone6spluse3.png,/hinhsanpham/iphone6spluse4.jpg', 'Là hàng được nhập khẩu trực tiếp từ nước ngoài bởi doanh nghiệp trong nước, không thông qua nhà phân phối chính thức tại thị trường Việt Nam.\r\nHàng nhập khẩu được nhiều người chọn lựa bởi giá thành tốt, chất lượng vẫn được đảm bảo như những sản phẩm được nhập khẩu thông qua nhà phân phối chính thức (vì được sản xuất từ cùng một nhà máy của hãng sản xuất). Hơn nữa, dù không được bảo hành tại các trung tâm bảo hành chính thức của hãng, các sản phẩm này vẫn được áp dụng đầy đủ chính sách bảo hành của doanh nghiệp nhập khẩu', 10, 2, 1, 1, 0),
(61, 'Apple Iphone 6s Plus 16GB (Vàng hồng)', '13960000', '/hinhsanpham/iphone6spluse.png', '/hinhsanpham/iphone6spluse1.jpg,/hinhsanpham/iphone6spluse2.jpg,/hinhsanpham/iphone6spluse3.png,/hinhsanpham/iphone6spluse4.jpg', 'Là hàng được nhập khẩu trực tiếp từ nước ngoài bởi doanh nghiệp trong nước, không thông qua nhà phân phối chính thức tại thị trường Việt Nam.\r\nHàng nhập khẩu được nhiều người chọn lựa bởi giá thành tốt, chất lượng vẫn được đảm bảo như những sản phẩm được nhập khẩu thông qua nhà phân phối chính thức (vì được sản xuất từ cùng một nhà máy của hãng sản xuất). Hơn nữa, dù không được bảo hành tại các trung tâm bảo hành chính thức của hãng, các sản phẩm này vẫn được áp dụng đầy đủ chính sách bảo hành của doanh nghiệp nhập khẩu', 10, 2, 1, 1, 0),
(62, 'Apple Iphone 6s Plus 16GB (Vàng hồng)', '13960000', '/hinhsanpham/iphone6spluse.png', '/hinhsanpham/iphone6spluse1.jpg,/hinhsanpham/iphone6spluse2.jpg,/hinhsanpham/iphone6spluse3.png,/hinhsanpham/iphone6spluse4.jpg', 'Là hàng được nhập khẩu trực tiếp từ nước ngoài bởi doanh nghiệp trong nước, không thông qua nhà phân phối chính thức tại thị trường Việt Nam.\r\nHàng nhập khẩu được nhiều người chọn lựa bởi giá thành tốt, chất lượng vẫn được đảm bảo như những sản phẩm được nhập khẩu thông qua nhà phân phối chính thức (vì được sản xuất từ cùng một nhà máy của hãng sản xuất). Hơn nữa, dù không được bảo hành tại các trung tâm bảo hành chính thức của hãng, các sản phẩm này vẫn được áp dụng đầy đủ chính sách bảo hành của doanh nghiệp nhập khẩu', 10, 2, 1, 1, 0),
(63, 'Apple Iphone 6s Plus 16GB (Vàng hồng)', '13960000', '/hinhsanpham/iphone6spluse.png', '/hinhsanpham/iphone6spluse1.jpg,/hinhsanpham/iphone6spluse2.jpg,/hinhsanpham/iphone6spluse3.png,/hinhsanpham/iphone6spluse4.jpg', 'Là hàng được nhập khẩu trực tiếp từ nước ngoài bởi doanh nghiệp trong nước, không thông qua nhà phân phối chính thức tại thị trường Việt Nam.\r\nHàng nhập khẩu được nhiều người chọn lựa bởi giá thành tốt, chất lượng vẫn được đảm bảo như những sản phẩm được nhập khẩu thông qua nhà phân phối chính thức (vì được sản xuất từ cùng một nhà máy của hãng sản xuất). Hơn nữa, dù không được bảo hành tại các trung tâm bảo hành chính thức của hãng, các sản phẩm này vẫn được áp dụng đầy đủ chính sách bảo hành của doanh nghiệp nhập khẩu', 10, 2, 1, 1, 0),
(64, 'Apple Iphone 6s Plus 16GB (Vàng hồng)', '13960000', '/hinhsanpham/iphone6spluse.png', '/hinhsanpham/iphone6spluse1.jpg,/hinhsanpham/iphone6spluse2.jpg,/hinhsanpham/iphone6spluse3.png,/hinhsanpham/iphone6spluse4.jpg', 'Là hàng được nhập khẩu trực tiếp từ nước ngoài bởi doanh nghiệp trong nước, không thông qua nhà phân phối chính thức tại thị trường Việt Nam.\r\nHàng nhập khẩu được nhiều người chọn lựa bởi giá thành tốt, chất lượng vẫn được đảm bảo như những sản phẩm được nhập khẩu thông qua nhà phân phối chính thức (vì được sản xuất từ cùng một nhà máy của hãng sản xuất). Hơn nữa, dù không được bảo hành tại các trung tâm bảo hành chính thức của hãng, các sản phẩm này vẫn được áp dụng đầy đủ chính sách bảo hành của doanh nghiệp nhập khẩu', 10, 2, 1, 1, 0),
(65, 'Apple Iphone 6s Plus 16GB (Vàng hồng)', '13960000', '/hinhsanpham/iphone6spluse.png', '/hinhsanpham/iphone6spluse1.jpg,/hinhsanpham/iphone6spluse2.jpg,/hinhsanpham/iphone6spluse3.png,/hinhsanpham/iphone6spluse4.jpg', 'Là hàng được nhập khẩu trực tiếp từ nước ngoài bởi doanh nghiệp trong nước, không thông qua nhà phân phối chính thức tại thị trường Việt Nam.\r\nHàng nhập khẩu được nhiều người chọn lựa bởi giá thành tốt, chất lượng vẫn được đảm bảo như những sản phẩm được nhập khẩu thông qua nhà phân phối chính thức (vì được sản xuất từ cùng một nhà máy của hãng sản xuất). Hơn nữa, dù không được bảo hành tại các trung tâm bảo hành chính thức của hãng, các sản phẩm này vẫn được áp dụng đầy đủ chính sách bảo hành của doanh nghiệp nhập khẩu', 10, 2, 1, 1, 0),
(66, 'Apple Iphone 6s Plus 16GB (Vàng hồng)', '13960000', '/hinhsanpham/iphone6spluse.png', '/hinhsanpham/iphone6spluse1.jpg,/hinhsanpham/iphone6spluse2.jpg,/hinhsanpham/iphone6spluse3.png,/hinhsanpham/iphone6spluse4.jpg', 'Là hàng được nhập khẩu trực tiếp từ nước ngoài bởi doanh nghiệp trong nước, không thông qua nhà phân phối chính thức tại thị trường Việt Nam.\r\nHàng nhập khẩu được nhiều người chọn lựa bởi giá thành tốt, chất lượng vẫn được đảm bảo như những sản phẩm được nhập khẩu thông qua nhà phân phối chính thức (vì được sản xuất từ cùng một nhà máy của hãng sản xuất). Hơn nữa, dù không được bảo hành tại các trung tâm bảo hành chính thức của hãng, các sản phẩm này vẫn được áp dụng đầy đủ chính sách bảo hành của doanh nghiệp nhập khẩu', 10, 2, 1, 1, 0),
(67, 'Apple Iphone 6s Plus 16GB (Vàng hồng)', '13960000', '/hinhsanpham/iphone6spluse.png', '/hinhsanpham/iphone6spluse1.jpg,/hinhsanpham/iphone6spluse2.jpg,/hinhsanpham/iphone6spluse3.png,/hinhsanpham/iphone6spluse4.jpg', 'Là hàng được nhập khẩu trực tiếp từ nước ngoài bởi doanh nghiệp trong nước, không thông qua nhà phân phối chính thức tại thị trường Việt Nam.\r\nHàng nhập khẩu được nhiều người chọn lựa bởi giá thành tốt, chất lượng vẫn được đảm bảo như những sản phẩm được nhập khẩu thông qua nhà phân phối chính thức (vì được sản xuất từ cùng một nhà máy của hãng sản xuất). Hơn nữa, dù không được bảo hành tại các trung tâm bảo hành chính thức của hãng, các sản phẩm này vẫn được áp dụng đầy đủ chính sách bảo hành của doanh nghiệp nhập khẩu', 10, 2, 1, 1, 0),
(68, 'Apple Iphone 6s Plus 16GB (Vàng hồng)', '13960000', '/hinhsanpham/iphone6spluse.png', '/hinhsanpham/iphone6spluse1.jpg,/hinhsanpham/iphone6spluse2.jpg,/hinhsanpham/iphone6spluse3.png,/hinhsanpham/iphone6spluse4.jpg', 'Là hàng được nhập khẩu trực tiếp từ nước ngoài bởi doanh nghiệp trong nước, không thông qua nhà phân phối chính thức tại thị trường Việt Nam.\r\nHàng nhập khẩu được nhiều người chọn lựa bởi giá thành tốt, chất lượng vẫn được đảm bảo như những sản phẩm được nhập khẩu thông qua nhà phân phối chính thức (vì được sản xuất từ cùng một nhà máy của hãng sản xuất). Hơn nữa, dù không được bảo hành tại các trung tâm bảo hành chính thức của hãng, các sản phẩm này vẫn được áp dụng đầy đủ chính sách bảo hành của doanh nghiệp nhập khẩu', 10, 2, 1, 1, 0),
(69, 'Apple Iphone 6s Plus 16GB (Vàng hồng)', '13960000', '/hinhsanpham/iphone6spluse.png', '/hinhsanpham/iphone6spluse1.jpg,/hinhsanpham/iphone6spluse2.jpg,/hinhsanpham/iphone6spluse3.png,/hinhsanpham/iphone6spluse4.jpg', 'Là hàng được nhập khẩu trực tiếp từ nước ngoài bởi doanh nghiệp trong nước, không thông qua nhà phân phối chính thức tại thị trường Việt Nam.\r\nHàng nhập khẩu được nhiều người chọn lựa bởi giá thành tốt, chất lượng vẫn được đảm bảo như những sản phẩm được nhập khẩu thông qua nhà phân phối chính thức (vì được sản xuất từ cùng một nhà máy của hãng sản xuất). Hơn nữa, dù không được bảo hành tại các trung tâm bảo hành chính thức của hãng, các sản phẩm này vẫn được áp dụng đầy đủ chính sách bảo hành của doanh nghiệp nhập khẩu', 10, 2, 1, 1, 0),
(70, 'Apple Iphone 6s Plus 16GB (Vàng hồng)', '13960000', '/hinhsanpham/iphone6spluse.png', '/hinhsanpham/iphone6spluse1.jpg,/hinhsanpham/iphone6spluse2.jpg,/hinhsanpham/iphone6spluse3.png,/hinhsanpham/iphone6spluse4.jpg', 'Là hàng được nhập khẩu trực tiếp từ nước ngoài bởi doanh nghiệp trong nước, không thông qua nhà phân phối chính thức tại thị trường Việt Nam.\r\nHàng nhập khẩu được nhiều người chọn lựa bởi giá thành tốt, chất lượng vẫn được đảm bảo như những sản phẩm được nhập khẩu thông qua nhà phân phối chính thức (vì được sản xuất từ cùng một nhà máy của hãng sản xuất). Hơn nữa, dù không được bảo hành tại các trung tâm bảo hành chính thức của hãng, các sản phẩm này vẫn được áp dụng đầy đủ chính sách bảo hành của doanh nghiệp nhập khẩu', 10, 2, 1, 1, 0),
(71, 'Apple Iphone 6s Plus 16GB (Vàng hồng)', '13960000', '/hinhsanpham/iphone6spluse.png', '/hinhsanpham/iphone6spluse1.jpg,/hinhsanpham/iphone6spluse2.jpg,/hinhsanpham/iphone6spluse3.png,/hinhsanpham/iphone6spluse4.jpg', 'Là hàng được nhập khẩu trực tiếp từ nước ngoài bởi doanh nghiệp trong nước, không thông qua nhà phân phối chính thức tại thị trường Việt Nam.\r\nHàng nhập khẩu được nhiều người chọn lựa bởi giá thành tốt, chất lượng vẫn được đảm bảo như những sản phẩm được nhập khẩu thông qua nhà phân phối chính thức (vì được sản xuất từ cùng một nhà máy của hãng sản xuất). Hơn nữa, dù không được bảo hành tại các trung tâm bảo hành chính thức của hãng, các sản phẩm này vẫn được áp dụng đầy đủ chính sách bảo hành của doanh nghiệp nhập khẩu', 10, 2, 1, 1, 0),
(72, 'Apple Iphone 6s Plus 16GB (Vàng hồng)', '13960000', '/hinhsanpham/iphone6spluse.png', '/hinhsanpham/iphone6spluse1.jpg,/hinhsanpham/iphone6spluse2.jpg,/hinhsanpham/iphone6spluse3.png,/hinhsanpham/iphone6spluse4.jpg', 'Là hàng được nhập khẩu trực tiếp từ nước ngoài bởi doanh nghiệp trong nước, không thông qua nhà phân phối chính thức tại thị trường Việt Nam.\r\nHàng nhập khẩu được nhiều người chọn lựa bởi giá thành tốt, chất lượng vẫn được đảm bảo như những sản phẩm được nhập khẩu thông qua nhà phân phối chính thức (vì được sản xuất từ cùng một nhà máy của hãng sản xuất). Hơn nữa, dù không được bảo hành tại các trung tâm bảo hành chính thức của hãng, các sản phẩm này vẫn được áp dụng đầy đủ chính sách bảo hành của doanh nghiệp nhập khẩu', 10, 2, 1, 1, 0),
(73, 'Apple Iphone 6s Plus 16GB (Vàng hồng)', '13960000', '/hinhsanpham/iphone6spluse.png', '/hinhsanpham/iphone6spluse1.jpg,/hinhsanpham/iphone6spluse2.jpg,/hinhsanpham/iphone6spluse3.png,/hinhsanpham/iphone6spluse4.jpg', 'Là hàng được nhập khẩu trực tiếp từ nước ngoài bởi doanh nghiệp trong nước, không thông qua nhà phân phối chính thức tại thị trường Việt Nam.\r\nHàng nhập khẩu được nhiều người chọn lựa bởi giá thành tốt, chất lượng vẫn được đảm bảo như những sản phẩm được nhập khẩu thông qua nhà phân phối chính thức (vì được sản xuất từ cùng một nhà máy của hãng sản xuất). Hơn nữa, dù không được bảo hành tại các trung tâm bảo hành chính thức của hãng, các sản phẩm này vẫn được áp dụng đầy đủ chính sách bảo hành của doanh nghiệp nhập khẩu', 10, 2, 1, 1, 0),
(74, 'Apple Iphone 6s Plus 16GB (Vàng hồng)', '13960000', '/hinhsanpham/iphone6spluse.png', '/hinhsanpham/iphone6spluse1.jpg,/hinhsanpham/iphone6spluse2.jpg,/hinhsanpham/iphone6spluse3.png,/hinhsanpham/iphone6spluse4.jpg', 'Là hàng được nhập khẩu trực tiếp từ nước ngoài bởi doanh nghiệp trong nước, không thông qua nhà phân phối chính thức tại thị trường Việt Nam.\r\nHàng nhập khẩu được nhiều người chọn lựa bởi giá thành tốt, chất lượng vẫn được đảm bảo như những sản phẩm được nhập khẩu thông qua nhà phân phối chính thức (vì được sản xuất từ cùng một nhà máy của hãng sản xuất). Hơn nữa, dù không được bảo hành tại các trung tâm bảo hành chính thức của hãng, các sản phẩm này vẫn được áp dụng đầy đủ chính sách bảo hành của doanh nghiệp nhập khẩu', 10, 2, 1, 1, 0);
INSERT INTO `sanpham` (`MASP`, `TENSP`, `GIA`, `ANHLON`, `ANHNHO`, `THONGTIN`, `SOLUONG`, `MALOAISP`, `MATHUONGHIEU`, `MANV`, `LUOTMUA`) VALUES
(75, 'Apple Iphone 6s Plus 16GB (Vàng hồng)', '13960000', '/hinhsanpham/iphone6spluse.png', '/hinhsanpham/iphone6spluse1.jpg,/hinhsanpham/iphone6spluse2.jpg,/hinhsanpham/iphone6spluse3.png,/hinhsanpham/iphone6spluse4.jpg', 'Là hàng được nhập khẩu trực tiếp từ nước ngoài bởi doanh nghiệp trong nước, không thông qua nhà phân phối chính thức tại thị trường Việt Nam.\r\nHàng nhập khẩu được nhiều người chọn lựa bởi giá thành tốt, chất lượng vẫn được đảm bảo như những sản phẩm được nhập khẩu thông qua nhà phân phối chính thức (vì được sản xuất từ cùng một nhà máy của hãng sản xuất). Hơn nữa, dù không được bảo hành tại các trung tâm bảo hành chính thức của hãng, các sản phẩm này vẫn được áp dụng đầy đủ chính sách bảo hành của doanh nghiệp nhập khẩu', 10, 2, 1, 1, 0),
(76, 'Apple Iphone 6s Plus 16GB (Vàng hồng)', '13960000', '/hinhsanpham/iphone6spluse.png', '/hinhsanpham/iphone6spluse1.jpg,/hinhsanpham/iphone6spluse2.jpg,/hinhsanpham/iphone6spluse3.png,/hinhsanpham/iphone6spluse4.jpg', 'Là hàng được nhập khẩu trực tiếp từ nước ngoài bởi doanh nghiệp trong nước, không thông qua nhà phân phối chính thức tại thị trường Việt Nam.\r\nHàng nhập khẩu được nhiều người chọn lựa bởi giá thành tốt, chất lượng vẫn được đảm bảo như những sản phẩm được nhập khẩu thông qua nhà phân phối chính thức (vì được sản xuất từ cùng một nhà máy của hãng sản xuất). Hơn nữa, dù không được bảo hành tại các trung tâm bảo hành chính thức của hãng, các sản phẩm này vẫn được áp dụng đầy đủ chính sách bảo hành của doanh nghiệp nhập khẩu', 10, 2, 1, 1, 0),
(77, 'Apple Iphone 6s Plus 16GB (Vàng hồng)', '13960000', '/hinhsanpham/iphone6spluse.png', '/hinhsanpham/iphone6spluse1.jpg,/hinhsanpham/iphone6spluse2.jpg,/hinhsanpham/iphone6spluse3.png,/hinhsanpham/iphone6spluse4.jpg', 'Là hàng được nhập khẩu trực tiếp từ nước ngoài bởi doanh nghiệp trong nước, không thông qua nhà phân phối chính thức tại thị trường Việt Nam.\r\nHàng nhập khẩu được nhiều người chọn lựa bởi giá thành tốt, chất lượng vẫn được đảm bảo như những sản phẩm được nhập khẩu thông qua nhà phân phối chính thức (vì được sản xuất từ cùng một nhà máy của hãng sản xuất). Hơn nữa, dù không được bảo hành tại các trung tâm bảo hành chính thức của hãng, các sản phẩm này vẫn được áp dụng đầy đủ chính sách bảo hành của doanh nghiệp nhập khẩu', 10, 2, 1, 1, 0),
(78, 'Apple Iphone 6s Plus 16GB (Vàng hồng)', '13960000', '/hinhsanpham/iphone6spluse.png', '/hinhsanpham/iphone6spluse1.jpg,/hinhsanpham/iphone6spluse2.jpg,/hinhsanpham/iphone6spluse3.png,/hinhsanpham/iphone6spluse4.jpg', 'Là hàng được nhập khẩu trực tiếp từ nước ngoài bởi doanh nghiệp trong nước, không thông qua nhà phân phối chính thức tại thị trường Việt Nam.\r\nHàng nhập khẩu được nhiều người chọn lựa bởi giá thành tốt, chất lượng vẫn được đảm bảo như những sản phẩm được nhập khẩu thông qua nhà phân phối chính thức (vì được sản xuất từ cùng một nhà máy của hãng sản xuất). Hơn nữa, dù không được bảo hành tại các trung tâm bảo hành chính thức của hãng, các sản phẩm này vẫn được áp dụng đầy đủ chính sách bảo hành của doanh nghiệp nhập khẩu', 10, 2, 1, 1, 0),
(79, 'Apple Iphone 6s Plus 16GB (Vàng hồng)', '13960000', '/hinhsanpham/iphone6spluse.png', '/hinhsanpham/iphone6spluse1.jpg,/hinhsanpham/iphone6spluse2.jpg,/hinhsanpham/iphone6spluse3.png,/hinhsanpham/iphone6spluse4.jpg', 'Là hàng được nhập khẩu trực tiếp từ nước ngoài bởi doanh nghiệp trong nước, không thông qua nhà phân phối chính thức tại thị trường Việt Nam.\r\nHàng nhập khẩu được nhiều người chọn lựa bởi giá thành tốt, chất lượng vẫn được đảm bảo như những sản phẩm được nhập khẩu thông qua nhà phân phối chính thức (vì được sản xuất từ cùng một nhà máy của hãng sản xuất). Hơn nữa, dù không được bảo hành tại các trung tâm bảo hành chính thức của hãng, các sản phẩm này vẫn được áp dụng đầy đủ chính sách bảo hành của doanh nghiệp nhập khẩu', 10, 2, 1, 1, 0),
(80, 'Apple Iphone 6s Plus 16GB (Vàng hồng)', '13960000', '/hinhsanpham/iphone6spluse.png', '/hinhsanpham/iphone6spluse1.jpg,/hinhsanpham/iphone6spluse2.jpg,/hinhsanpham/iphone6spluse3.png,/hinhsanpham/iphone6spluse4.jpg', 'Là hàng được nhập khẩu trực tiếp từ nước ngoài bởi doanh nghiệp trong nước, không thông qua nhà phân phối chính thức tại thị trường Việt Nam.\r\nHàng nhập khẩu được nhiều người chọn lựa bởi giá thành tốt, chất lượng vẫn được đảm bảo như những sản phẩm được nhập khẩu thông qua nhà phân phối chính thức (vì được sản xuất từ cùng một nhà máy của hãng sản xuất). Hơn nữa, dù không được bảo hành tại các trung tâm bảo hành chính thức của hãng, các sản phẩm này vẫn được áp dụng đầy đủ chính sách bảo hành của doanh nghiệp nhập khẩu', 10, 2, 1, 1, 0),
(81, 'Apple Iphone 6s Plus 16GB (Vàng hồng)', '13960000', '/hinhsanpham/iphone6spluse.png', '/hinhsanpham/iphone6spluse1.jpg,/hinhsanpham/iphone6spluse2.jpg,/hinhsanpham/iphone6spluse3.png,/hinhsanpham/iphone6spluse4.jpg', 'Là hàng được nhập khẩu trực tiếp từ nước ngoài bởi doanh nghiệp trong nước, không thông qua nhà phân phối chính thức tại thị trường Việt Nam.\r\nHàng nhập khẩu được nhiều người chọn lựa bởi giá thành tốt, chất lượng vẫn được đảm bảo như những sản phẩm được nhập khẩu thông qua nhà phân phối chính thức (vì được sản xuất từ cùng một nhà máy của hãng sản xuất). Hơn nữa, dù không được bảo hành tại các trung tâm bảo hành chính thức của hãng, các sản phẩm này vẫn được áp dụng đầy đủ chính sách bảo hành của doanh nghiệp nhập khẩu', 10, 2, 1, 1, 0),
(82, 'Apple Iphone 6s Plus 16GB (Vàng hồng)', '13960000', '/hinhsanpham/iphone6spluse.png', '/hinhsanpham/iphone6spluse1.jpg,/hinhsanpham/iphone6spluse2.jpg,/hinhsanpham/iphone6spluse3.png,/hinhsanpham/iphone6spluse4.jpg', 'Là hàng được nhập khẩu trực tiếp từ nước ngoài bởi doanh nghiệp trong nước, không thông qua nhà phân phối chính thức tại thị trường Việt Nam.\r\nHàng nhập khẩu được nhiều người chọn lựa bởi giá thành tốt, chất lượng vẫn được đảm bảo như những sản phẩm được nhập khẩu thông qua nhà phân phối chính thức (vì được sản xuất từ cùng một nhà máy của hãng sản xuất). Hơn nữa, dù không được bảo hành tại các trung tâm bảo hành chính thức của hãng, các sản phẩm này vẫn được áp dụng đầy đủ chính sách bảo hành của doanh nghiệp nhập khẩu', 10, 2, 1, 1, 0),
(83, 'Apple Iphone 6s Plus 16GB (Vàng hồng)', '13960000', '/hinhsanpham/iphone6spluse.png', '/hinhsanpham/iphone6spluse1.jpg,/hinhsanpham/iphone6spluse2.jpg,/hinhsanpham/iphone6spluse3.png,/hinhsanpham/iphone6spluse4.jpg', 'Là hàng được nhập khẩu trực tiếp từ nước ngoài bởi doanh nghiệp trong nước, không thông qua nhà phân phối chính thức tại thị trường Việt Nam.\r\nHàng nhập khẩu được nhiều người chọn lựa bởi giá thành tốt, chất lượng vẫn được đảm bảo như những sản phẩm được nhập khẩu thông qua nhà phân phối chính thức (vì được sản xuất từ cùng một nhà máy của hãng sản xuất). Hơn nữa, dù không được bảo hành tại các trung tâm bảo hành chính thức của hãng, các sản phẩm này vẫn được áp dụng đầy đủ chính sách bảo hành của doanh nghiệp nhập khẩu', 10, 2, 1, 1, 0),
(84, 'Apple Iphone 6s Plus 16GB (Vàng hồng)', '13960000', '/hinhsanpham/iphone6spluse.png', '/hinhsanpham/iphone6spluse1.jpg,/hinhsanpham/iphone6spluse2.jpg,/hinhsanpham/iphone6spluse3.png,/hinhsanpham/iphone6spluse4.jpg', 'Là hàng được nhập khẩu trực tiếp từ nước ngoài bởi doanh nghiệp trong nước, không thông qua nhà phân phối chính thức tại thị trường Việt Nam.\r\nHàng nhập khẩu được nhiều người chọn lựa bởi giá thành tốt, chất lượng vẫn được đảm bảo như những sản phẩm được nhập khẩu thông qua nhà phân phối chính thức (vì được sản xuất từ cùng một nhà máy của hãng sản xuất). Hơn nữa, dù không được bảo hành tại các trung tâm bảo hành chính thức của hãng, các sản phẩm này vẫn được áp dụng đầy đủ chính sách bảo hành của doanh nghiệp nhập khẩu', 10, 2, 1, 1, 0),
(85, 'Apple Iphone 6s Plus 16GB (Vàng hồng)', '13960000', '/hinhsanpham/iphone6spluse.png', '/hinhsanpham/iphone6spluse1.jpg,/hinhsanpham/iphone6spluse2.jpg,/hinhsanpham/iphone6spluse3.png,/hinhsanpham/iphone6spluse4.jpg', 'Là hàng được nhập khẩu trực tiếp từ nước ngoài bởi doanh nghiệp trong nước, không thông qua nhà phân phối chính thức tại thị trường Việt Nam.\r\nHàng nhập khẩu được nhiều người chọn lựa bởi giá thành tốt, chất lượng vẫn được đảm bảo như những sản phẩm được nhập khẩu thông qua nhà phân phối chính thức (vì được sản xuất từ cùng một nhà máy của hãng sản xuất). Hơn nữa, dù không được bảo hành tại các trung tâm bảo hành chính thức của hãng, các sản phẩm này vẫn được áp dụng đầy đủ chính sách bảo hành của doanh nghiệp nhập khẩu', 10, 2, 1, 1, 0),
(86, 'sdfdsfweefwef', '12312321', NULL, NULL, 'werwefwefwfsdf', 12, 154, 11, 1, 2),
(87, 'Pin sạc dự phòng Asus Zenpower 10.050mAh (Vàng) ', '339000', '/hinhsanpham/pinsacduphongasus.jpg', '/hinhsanpham/pinsacduphongasus.jpg,/hinhsanpham/pinsacduphongasus.jpg', 'Asus ZenPower là viên pin sạc chính hãng hiếm hoi đến từ một nhà sản xuất điện thoại khá lớn ở Việt Nam. Hiện tại ZenPower có khá nhiều màu khác nhau, từ hồng đẹp trai đến màu đen yếu đuối. Hiện tại thì mình mượn được màu hồng mạnh mẽ và vàng sang chảnh để trên tay. Asus có bán các miếng bảo vệ cao su nhiều màu cho pin nhưng không rõ có được phân phối ở Việt Nam hay không.', 25, 13, 5, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `thuonghieu`
--

CREATE TABLE `thuonghieu` (
  `MATHUONGHIEU` int(11) NOT NULL,
  `TENTHUONGHIEU` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `HINHTHUONGHIEU` text,
  `LUOTMUA` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `thuonghieu`
--

INSERT INTO `thuonghieu` (`MATHUONGHIEU`, `TENTHUONGHIEU`, `HINHTHUONGHIEU`, `LUOTMUA`) VALUES
(1, 'Apple', 'hinhthuonghieu/tenapple.jpg', 0),
(2, 'Nokia', 'hinhthuonghieu/tennokia.png', 0),
(3, 'Samsung', 'hinhthuonghieu/tensamsung.png', 0),
(4, 'Xiaomi', 'hinhthuonghieu/tenxiaomi.png', 0),
(5, 'Asus', 'hinhthuonghieu/tenasus.png', 0),
(6, 'Lenovo', 'hinhthuonghieu/tenlenovo.png', 0),
(7, 'Oppo', 'hinhthuonghieu/tenoppo.png', 0),
(8, 'Sony', 'hinhthuonghieu/tensony.png', 0),
(9, 'HTC', 'hinhthuonghieu/tenhtc.png', 0),
(10, 'Dell', 'hinhthuonghieu/tendell.png', 0),
(11, 'HP', 'hinhthuonghieu/tenhp.png', 0),
(12, 'Scandisk', 'hinhthuonghieu/tensandisk.png', 0),
(13, 'Silicon', 'hinhthuonghieu/tensilicon.png', 0),
(14, 'Canon', 'hinhthuonghieu/tencannon.png', 0),
(15, 'Microsoft', 'hinhthuonghieu/tenmicrosoft.png', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `binhluan`
--
ALTER TABLE `binhluan`
  ADD PRIMARY KEY (`MABL`);

--
-- Indexes for table `chitietbinhluan`
--
ALTER TABLE `chitietbinhluan`
  ADD PRIMARY KEY (`MABL`,`MANV`,`MASP`),
  ADD KEY `KHOANGOAI_CHITIETBINHLUAN_MANV` (`MANV`),
  ADD KEY `KHOANGOAI_CHITIETBINHLUAN_MASP` (`MASP`);

--
-- Indexes for table `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD PRIMARY KEY (`MAHD`,`MASP`),
  ADD KEY `KHOANGOAI_CHITIETHOADON_MASP` (`MASP`);

--
-- Indexes for table `chitietkhuyenmai`
--
ALTER TABLE `chitietkhuyenmai`
  ADD PRIMARY KEY (`MASP`,`MAKM`),
  ADD KEY `KHOANGOAI_CHITIETKHUYENMAI_MAKM` (`MAKM`);

--
-- Indexes for table `chitietsanpham`
--
ALTER TABLE `chitietsanpham`
  ADD PRIMARY KEY (`MACHITIET`);

--
-- Indexes for table `chitietthuonghieu`
--
ALTER TABLE `chitietthuonghieu`
  ADD PRIMARY KEY (`MATHUONGHIEU`,`MALOAISP`);

--
-- Indexes for table `danhgia`
--
ALTER TABLE `danhgia`
  ADD PRIMARY KEY (`MADG`,`MASP`),
  ADD KEY `KHOANGOAI_DANHGIA_MASP` (`MASP`);

--
-- Indexes for table `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`MAHD`);

--
-- Indexes for table `khuyenmai`
--
ALTER TABLE `khuyenmai`
  ADD PRIMARY KEY (`MAKM`),
  ADD KEY `KHOANGOAI_KHUYENMAI_MALOAISP` (`MALOAISP`);

--
-- Indexes for table `loainhanvien`
--
ALTER TABLE `loainhanvien`
  ADD PRIMARY KEY (`MALOAINV`);

--
-- Indexes for table `loaisanpham`
--
ALTER TABLE `loaisanpham`
  ADD PRIMARY KEY (`MALOAISP`);

--
-- Indexes for table `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD PRIMARY KEY (`MANV`),
  ADD KEY `KHOANGOAI_NHANVIEN_MALOAINV` (`MALOAINV`);

--
-- Indexes for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`MASP`),
  ADD KEY `KHOANGOAI_SANPHAM_MALOAISP` (`MALOAISP`),
  ADD KEY `KHOANGOAI_SANPHAM_MATHUONGHIEU` (`MATHUONGHIEU`);

--
-- Indexes for table `thuonghieu`
--
ALTER TABLE `thuonghieu`
  ADD PRIMARY KEY (`MATHUONGHIEU`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `binhluan`
--
ALTER TABLE `binhluan`
  MODIFY `MABL` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `chitietsanpham`
--
ALTER TABLE `chitietsanpham`
  MODIFY `MACHITIET` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=581;
--
-- AUTO_INCREMENT for table `hoadon`
--
ALTER TABLE `hoadon`
  MODIFY `MAHD` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `khuyenmai`
--
ALTER TABLE `khuyenmai`
  MODIFY `MAKM` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `loainhanvien`
--
ALTER TABLE `loainhanvien`
  MODIFY `MALOAINV` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `loaisanpham`
--
ALTER TABLE `loaisanpham`
  MODIFY `MALOAISP` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=157;
--
-- AUTO_INCREMENT for table `nhanvien`
--
ALTER TABLE `nhanvien`
  MODIFY `MANV` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `MASP` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;
--
-- AUTO_INCREMENT for table `thuonghieu`
--
ALTER TABLE `thuonghieu`
  MODIFY `MATHUONGHIEU` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `chitietbinhluan`
--
ALTER TABLE `chitietbinhluan`
  ADD CONSTRAINT `KHOANGOAI_CHITIETBINHLUAN_MABL` FOREIGN KEY (`MABL`) REFERENCES `binhluan` (`MABL`),
  ADD CONSTRAINT `KHOANGOAI_CHITIETBINHLUAN_MANV` FOREIGN KEY (`MANV`) REFERENCES `nhanvien` (`MANV`),
  ADD CONSTRAINT `KHOANGOAI_CHITIETBINHLUAN_MASP` FOREIGN KEY (`MASP`) REFERENCES `sanpham` (`MASP`);

--
-- Constraints for table `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD CONSTRAINT `KHOANGOAI_CHITIETHOADON_MAHD` FOREIGN KEY (`MAHD`) REFERENCES `hoadon` (`MAHD`),
  ADD CONSTRAINT `KHOANGOAI_CHITIETHOADON_MASP` FOREIGN KEY (`MASP`) REFERENCES `sanpham` (`MASP`);

--
-- Constraints for table `chitietkhuyenmai`
--
ALTER TABLE `chitietkhuyenmai`
  ADD CONSTRAINT `KHOANGOAI_CHIETIETKUYENMAI_MASP` FOREIGN KEY (`MASP`) REFERENCES `sanpham` (`MASP`),
  ADD CONSTRAINT `KHOANGOAI_CHITIETKHUYENMAI_MAKM` FOREIGN KEY (`MAKM`) REFERENCES `khuyenmai` (`MAKM`);

--
-- Constraints for table `danhgia`
--
ALTER TABLE `danhgia`
  ADD CONSTRAINT `KHOANGOAI_DANHGIA_MASP` FOREIGN KEY (`MASP`) REFERENCES `sanpham` (`MASP`);

--
-- Constraints for table `khuyenmai`
--
ALTER TABLE `khuyenmai`
  ADD CONSTRAINT `KHOANGOAI_KHUYENMAI_MALOAISP` FOREIGN KEY (`MALOAISP`) REFERENCES `loaisanpham` (`MALOAISP`);

--
-- Constraints for table `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD CONSTRAINT `KHOANGOAI_NHANVIEN_MALOAINV` FOREIGN KEY (`MALOAINV`) REFERENCES `loainhanvien` (`MALOAINV`);

--
-- Constraints for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `KHOANGOAI_SANPHAM_MALOAISP` FOREIGN KEY (`MALOAISP`) REFERENCES `loaisanpham` (`MALOAISP`),
  ADD CONSTRAINT `KHOANGOAI_SANPHAM_MATHUONGHIEU` FOREIGN KEY (`MATHUONGHIEU`) REFERENCES `thuonghieu` (`MATHUONGHIEU`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
