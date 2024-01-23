-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 23, 2024 at 08:26 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `edu`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_auth`
--

CREATE TABLE `tbl_auth` (
  `id` int(11) NOT NULL,
  `nomor_induk` int(50) NOT NULL,
  `role` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_auth`
--

INSERT INTO `tbl_auth` (`id`, `nomor_induk`, `role`, `password`) VALUES
(94, 2024012301, 'siswa', '$2y$10$TpezHxiOKxf1H2sv5ZBZ5OiiGQpziz/OeEGIUSRNyvgY7zCmr7jKe'),
(95, 2024012302, 'siswa', '$2y$10$Gmbwe3lu7RRKkZdIxQg.6uF9VDEGhuD/MVBX5946WanS6J9HQ2Esi'),
(96, 2024012303, 'siswa', '$2y$10$s8sKr8V4H8i.k4zoVXwM0uozkT4I9GOI6DU/ex56yPodRtcw9RxgW'),
(97, 2024012304, 'siswa', '$2y$10$A0wUjv0IB6QCWOWOPdqmROX/XRpbHSDPC41H67raFfGI4uH9pr8y6'),
(98, 2024012305, 'siswa', '$2y$10$Lha3Q64xMjUn2nVXcMZva.kWYhVHK8nOq59t2y2ob2J139ebbsgdy'),
(99, 2024012306, 'siswa', '$2y$10$AhgscvqFdPod694mW6GaZO32WVKsduT.z2T6jPYrfqV0BCDw3EFea'),
(100, 2024012307, 'siswa', '$2y$10$WTByZ4rVuCrGvv0OLBntmOqc56pPbnTQrWnYACD4nCFcP3K8vc8rq'),
(101, 2024012308, 'siswa', '$2y$10$RV8pNRt1pk3PTwctwPGxV.iLBvvhi/Hw.jeyXUT6HLFQjIEYQut0G'),
(102, 2024012309, 'siswa', '$2y$10$HZ6E2NFW88In5dnevuVu0u.2EXMZ6oHjgfqnp3hJXd/VjtguXY37i'),
(103, 2024012310, 'siswa', '$2y$10$EwA.Tv0v04XAp550ht/njentIjNbgePNuaIJOMCdSZxay0bSaBdDu'),
(104, 2024012311, 'siswa', '$2y$10$K0OR/jal6RZCAXTuYQJHBuCXIgTPzo6j54ZC4fAO9L69eup5xk.u.'),
(105, 2024012312, 'siswa', '$2y$10$kdHLH1F4VwbTkCNHwH.i4.FQ55lorxEwj.4nxb5RSwOWX4n0xE0h6'),
(106, 2024012313, 'siswa', '$2y$10$wnGkGO2RywjoNJqYrzv88eSofVV68mle3EVrs9AnStkdKvlNOs5su'),
(107, 2024012314, 'siswa', '$2y$10$3NREHtNm3bYWdSSzw5aMP.k2buBWhxFRmCpnjVrjnL0tjSfX6SGey'),
(108, 2024012315, 'siswa', '$2y$10$UCHjbZyyUoa24MCsxFSxbezMnIqQGIFDDESU/fDAP8RRAPkRNn5F2'),
(109, 2024012316, 'siswa', '$2y$10$9LMelSYFDlZ6hruV3RFXeO/neL/iuusJojLSfRmZMsvJjC7FfVgn6'),
(110, 2024012317, 'siswa', '$2y$10$OL/K5Tjzzx2GFx/jM7Rzf.fU47T/4tDOPuOC.cwhHshUjGchs2WOW'),
(111, 2024012318, 'siswa', '$2y$10$NczB8ohpercFWIHiIM8BtOFaG16BBxtq1f9N.YnolXsnsPeFJnVg.'),
(112, 2024012319, 'siswa', '$2y$10$xyV9RAbEW87xKw/t2JcauOeMBIh4fLZZ.PK3AxrvfPd0qtIxx9Rzi'),
(113, 2024012320, 'siswa', '$2y$10$7eA/HlNfPtU7DtvcWihGPuZCEvOM4GBq.PjkZHZ386oEj1Irq..Fy'),
(114, 2024012321, 'siswa', '$2y$10$tfn7ZlwtT7GHutKaQ8Gj/.83yz640iPbvYxcDMnYLvuf9CqCDy3oG'),
(115, 2024012322, 'siswa', '$2y$10$.EVbrWpevXPaLlga8vdZ2.qfwqA8SdwqrMjTCyLfcNS3DQBRTztgK'),
(116, 2024012323, 'siswa', '$2y$10$OgpUgAsVcOD301ta4XD6I.BPas0kVng7k8UNFLlBTkv0DF.2NITdq'),
(117, 2024012324, 'siswa', '$2y$10$1QvOPVzk0cvJxwaQRl89XekxwT/5Kv3jwNEWh6lN8oCk9Uv9VpwJ6'),
(118, 2024012325, 'siswa', '$2y$10$PB3H1n4IG1lkYu/.kcy7xOoi8Va9cBBtj6loYPsQL4yZ56PJp28Y6'),
(119, 2024012326, 'siswa', '$2y$10$.HX3EBMBassrhml1qbLfyuCSIEg0NJc8L/mtfS3ldl.0xgPnHu4zi'),
(120, 2024012327, 'siswa', '$2y$10$emL76X3NouwdUiOMXJdO.e2q2L3fEW/1DwS1hIgMl4SuOcK1NEJQC'),
(121, 2024012328, 'siswa', '$2y$10$yiqTu.gJEq5ABLnbHl1MmeXwHAoieCkEW.Dum5bm2Pxa1fjfDsae6'),
(122, 2024012329, 'siswa', '$2y$10$EXWjmRgFb050i4QxVblooudE.NNM2B7.ERYwht2h25/nBExW1az4e'),
(123, 2024012330, 'siswa', '$2y$10$xgV8MSF4yYxa0cMIt/oaj.L4MQoaNCbnxbIWAOH3UC.tZyjVSQ5Im'),
(124, 2024012331, 'siswa', '$2y$10$GLz2W2IUPekhlSK02J7gEeWrXuLlAi09Ty5H0k.Z8odDkJsvgEFt2'),
(125, 2024012332, 'siswa', '$2y$10$Jg8ZTO9T2UPzd5P/pEbb3eUY4Q8FMfO5k/ypcydcQvm7MEKzXaREq'),
(126, 2024012333, 'siswa', '$2y$10$oZ1BZRXcQmWXsDEym9hkwuZJP0dGKYLNe3jVSw3LB9bajc.R5zJnO'),
(127, 2024012334, 'siswa', '$2y$10$Hj7YFHEKhLKAiCc7GQEqAO6w3E0ikNS3HoYLiXhkyOE1sA1aXxFXS'),
(128, 2024012335, 'siswa', '$2y$10$Ei.gBsO/qu4MdrmLbIi8n.p4CW.7QrurnhOcFwKC5UKZtUT62U0z.'),
(129, 2024012336, 'siswa', '$2y$10$aI2cF54tG04NFg3z32YLy.pU5KNwdNNml527TDNzy/K91R.v5zm8y'),
(130, 2024012337, 'siswa', '$2y$10$jrZUC1m5unHSkjPD7p66ReNj3TNoB2RBoZz66ZP6e/9BQ/Ug0c9fC'),
(131, 2024012338, 'siswa', '$2y$10$BKHVfFC4BpRhC7jAwimhiupZuCqOiOFygnRIlvdC0hnaQVi7PinyG'),
(132, 2024012339, 'siswa', '$2y$10$Wf01sednwpl3dbIqE72sIu7MpguZ.B6uXKuNvs4JJ3dgiqqtZrl7O'),
(133, 2024012340, 'siswa', '$2y$10$tTPQq/9SbfzK.kWH4/nSmOrOYvBEbnZogGI6rjRkdL1QqjukLLFl2'),
(134, 2024012341, 'siswa', '$2y$10$linqYUYNBUMxDImB8PqYROIv5PpSKgNeDGly0q7FYG8XZeOYEo9p2'),
(135, 2024012342, 'siswa', '$2y$10$g6zez.ESG32I1VHgFlWjRei5VdEghVgf51LO2FvZKpXWoAlbNyErW'),
(136, 2024012343, 'siswa', '$2y$10$GJjfsvjAjqxAv6ogsKogW.hRB3RMsuB9DQJ7iAAdhE/LkrPPfALky'),
(137, 2024012344, 'siswa', '$2y$10$mtzKTlval1lHF2W4tzNYLuiouk41jiLQOcVh4.C9oELtq9bKly0Ee'),
(138, 2024012345, 'siswa', '$2y$10$wGn7UD8DSyOMS3HF66ZXhO2DJcQ1LBisD/.aey2vKVokOvtfkA5tG'),
(139, 2024012346, 'siswa', '$2y$10$22kx41KX1Z.oD8GKo0sp7egvnZwFmqvyACL3k0.HndDBk1mpCknuq'),
(140, 2024012347, 'siswa', '$2y$10$0wUFpurR.qbAK1TUtcvQ9e30p46Dd.AF.EDRutKTRdq16yMAZMtIm'),
(141, 2024012348, 'siswa', '$2y$10$bOm7fZt54bS.42UVx8fhQete25JorWG75.Ikx7nbkZ1NbNEVCiRo.'),
(142, 2024012349, 'siswa', '$2y$10$X2wEJXzOrfFQvVkkY5bLX.WnimUsewfnfqflLpcsmoIfl3BQX3Yjq'),
(143, 2024012350, 'siswa', '$2y$10$K4Dqdj5x/Khbuq5agtqrC.8GKz1kPQ2H7jDYRoIk/GDgLtt40NzYi'),
(144, 2024012351, 'siswa', '$2y$10$3m2wdCUISy23FTv2yIzzpe3aSv25Yy/fhS4Tlnk6RA/gfiKyQsWAC'),
(145, 2024012352, 'siswa', '$2y$10$KScf6JSlghAmHKhAWq9UB.20PnV9CDru6bGM8ugI0dwpcaY.d7yJu'),
(146, 2024012353, 'siswa', '$2y$10$PEOyMfapD2R8UZJeyUWrd.Nj0JPiD0r9ZKSHOvKZq9awbc.v5.j3K'),
(147, 2024012354, 'siswa', '$2y$10$t2bHL1gwqdEa.Pf2WmV2ZuZaAxKOKXy4kDmjUvttmkH3AHt1RXcRq'),
(148, 2024012355, 'siswa', '$2y$10$L0mcuWADnCirQriNaHAxP.PBerr5wyjwfX/2DlfQF/YZg8MqfdYE6'),
(150, 2024012357, 'siswa', '$2y$10$5nQhaEF.jI4K12b50FZoguVnf2NJ0ZdCqMeTu0so7MRGDYAKg3KLG'),
(151, 2024012358, 'siswa', '$2y$10$HSZQa7mcXAyBw9SfUavQkOCVz68zripNuaUbpJJ6VC4nGm5Y5e/9m'),
(152, 2024012359, 'siswa', '$2y$10$8NbqkFQZUwprs3pYrcrtauqKRwJ4Z3eSikK3dbS1epfk4TxbMqISK'),
(153, 2024012360, 'siswa', '$2y$10$GxbrKxbTcVgEqVPWRjUjju1aVyQSkeO.WTd3j1hIxiZJ5Lv8XYKhG'),
(154, 2024012361, 'siswa', '$2y$10$3TG4hmWNiD4wsRjxXqcqT.3ToC3GdcKntcUt.JFUN90b2Hlwi4Dh6'),
(155, 2024012362, 'siswa', '$2y$10$Z7dqviRFYPqfAhJjLcFpfOW1DWTjDcOK29B.YbWJbfc/75L.BwfuS'),
(156, 2024012363, 'siswa', '$2y$10$5INXMV8u9rygPb8Ia.22duCSMPMJhv5vVpPA8tPuX05qHxeddr3aG'),
(157, 2024012364, 'siswa', '$2y$10$uouDJx5Q3ESzKwXn.m6u/./eKYmB/K43vXc7XgJk0fel2.IwZb3JO'),
(158, 2024012365, 'siswa', '$2y$10$U5BK1bLU44r4wYB0mK8Q1eQ1Hy.0cxI5XsV8B2nzVkyjI9q6iFE.y'),
(159, 2024012366, 'siswa', '$2y$10$9B.0z89ycsb584NGWVttBujA4cGrlwTmGx162cZFHthh5I0BQ9mB.'),
(160, 2024012367, 'siswa', '$2y$10$zTefIQThDB1uU5W3BIpnGuKJ869nLKAmhomfPWmW6c1nLQ.qQ/0Xm'),
(161, 2024012368, 'siswa', '$2y$10$7OkleQ1l5g/lnVxmjhTYJOlfoqBiIHXbNTyZS0lioqtSRRvrjK0ue'),
(162, 2024012369, 'siswa', '$2y$10$Du6cvuOR9Uqe9Ikbc4L33.qi2wAB2YAExvHr9FtKAqzyVr4Ukf6Xq'),
(163, 2024012370, 'siswa', '$2y$10$l6IhxspHNLNMtz22Xkqkq.XRf.lSCaG.ajqnyVFu0JYvKWwzL8Wj.'),
(164, 2024012371, 'siswa', '$2y$10$RMyTj3liqWHrvteX77mSZedV/Fi7AIVqP77TvLrQX1eTh4KCR8aey'),
(165, 2024012372, 'siswa', '$2y$10$6ALwjeTqrGvdR92ib73GG.rR8Gf.78kE8/qEYcgiZRrgIXgOQRl1m'),
(166, 2024012373, 'siswa', '$2y$10$ljAKemFFHFXqxMSe3Elnh.BdvEbYxIurrbPVTAGXaTWQjCyrufSma'),
(167, 2024012374, 'siswa', '$2y$10$ReKZ3eBsinP2GroYNyct4uO.s4S75GmfdE6GnznryIh30yr9Fspkq'),
(168, 2024012375, 'siswa', '$2y$10$PcymJXhSjlGAgZ6ro2hUDu..8Zrvy/.2Kv3pGg0ciUIm6rMFAu8HW'),
(169, 2024012376, 'siswa', '$2y$10$P24Pzm5gtbdes7Apw.jOkOV9BNa7JwcEd/UX6SXkFbdggQYU1Ebt.'),
(170, 2024012377, 'siswa', '$2y$10$pCP1/RSvZZHUkLirG4..Fuv4S7xY0bHaZZN8ad/pZZTzWS9Sc5t3a'),
(171, 2024012378, 'siswa', '$2y$10$mt1NZN5/sUHreYy9rXF/detbIbcTVrx0F430aIbxMgZ29c8fyqJ9O'),
(172, 2024012379, 'siswa', '$2y$10$yagmMRQ3i5vaL2lIqeQUruEnSvO/h0Jss2H7j9SOFY2BTz9ILkeom'),
(173, 2024012380, 'siswa', '$2y$10$4tG4Wbi4p48U8/o4.v5JmeWC4W4rAC2fNyMeghwe1vs5R/ZZ7bz4e'),
(174, 2024012381, 'siswa', '$2y$10$nOa/uvssAbPi58jEMJXLCeriT8Pi.ZQlN8oT6N0Lm9romUr4uSIha'),
(175, 2024012382, 'siswa', '$2y$10$sFtlrUsQtLIAzYwL0Vc3bO/32q1gArNjN/SCTAP2y4ipSfyLgm4mq'),
(176, 2024012383, 'siswa', '$2y$10$tW2aWbvDfpzYRESeoMCH0u.PSS9XDRyD.BLncRspqXeNfEc3t2JRi'),
(177, 2024012384, 'siswa', '$2y$10$9wzPJ1Q/Nhyu8Wpf0I4yLO2ptBk98R1tFbh9MdzWbbEQM4RklnhxO'),
(178, 2024012385, 'siswa', '$2y$10$7LGukNFWbwf.K1uQZO/Dl.xt3a2J5kTq47KGHRofEDTDwD//iJENS'),
(179, 2024012386, 'siswa', '$2y$10$BorkamMfeR6ExpEetqSKh.EIROfboyNSw4BdS/wmWuNRJfListdZy'),
(180, 2024012387, 'siswa', '$2y$10$4iLMBph77iAA/k.p9NMtL.j8n6pJPsTzTEEGgRtGhv58qif7EUD.e'),
(181, 2024012388, 'siswa', '$2y$10$omBIhJ1Qq5n2xUDT2GaMVO7lF4/MafqjEkM9pq4OB4Kyq/RRH.34G'),
(182, 2024012389, 'siswa', '$2y$10$M.Mr0pabf8gaBZeKpGF0u.QnUHuYi4prRUx8i2r1BE6i7ybO/AOgK'),
(183, 2024012390, 'siswa', '$2y$10$ERcqSCqiMzj2DOnc6IAQY.93xxWJd1VguLBP3ZMn4kAWP9x1G81Yu'),
(184, 2024012391, 'siswa', '$2y$10$ff1SeM6a3IOU6qlCnPiX4e7l9wDhMAOOVfPDu1HCzF03I3UEMS.3W'),
(185, 2024012392, 'siswa', '$2y$10$M53fvkRd7tot9v8D2dsI/e3L7TKy8lF3gQ7P5TKMlhC0NJq/j6Pnq'),
(186, 2024012393, 'siswa', '$2y$10$t3UjPJw3shYQPV2hksF8ouqMe.IE3t57lBiFVaauJpRV6IpioWXlW'),
(187, 2024012394, 'siswa', '$2y$10$v2motpUr0yoN.EEitygaTu6PRsSCA2pKAwzbVR86uUu0/SfYTfX1S'),
(188, 2024012395, 'siswa', '$2y$10$Y5yox0wrhNSF1jGxNYhHme8r4DH/pqfwmj41mMHB9jrvg9divdkKC'),
(189, 2024012396, 'siswa', '$2y$10$9YpwPXF26wtu.uQJzuTrGuSD7uMv8rr3NShUZofCTGltZRJqeIRKO'),
(190, 2024012397, 'siswa', '$2y$10$7./2kwSqX09a6xZz.MiY7enr1RUHm36RwDr5tV86jI3bLnnzkY3si'),
(191, 2024012398, 'siswa', '$2y$10$AVT/w880B42nj2QqxChhTu72Y3xhAKn35t90aEeFyh459bluiwQZC'),
(192, 2024012399, 'siswa', '$2y$10$i8gFBjrFCMgDXvZFIFp76.wKXq4YRzWZ1jEbfn.7dvY3raThdwbWa'),
(193, 2024012400, 'siswa', '$2y$10$8opJs710CGtrUVl5sU5u.u8psaBNbK8eL0OUBkFdoZNNxjTuvJMx2'),
(194, 2019, 'siswa', '$2y$10$OyRJ.HU8w55bdYarQruHNO2Q0ZuSSH1gqbezXML6NlaqJv3I9Uxem'),
(195, 12, 'siswa', '$2y$10$SLwGZ0AtfovaFRnRWgQ28O9tcCWspT.6MfXWrSbUdi8LtzYJQdG5u'),
(196, 345, 'siswa', '$2y$10$i4XadrvZfkczVPiixeomHuhN0VyV1gwhwdCuCTTYKjKzD43iB7e3K');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_lembaga`
--

CREATE TABLE `tbl_lembaga` (
  `id` int(11) NOT NULL,
  `nama_lembaga` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_lembaga`
--

INSERT INTO `tbl_lembaga` (`id`, `nama_lembaga`, `created_at`, `updated_at`) VALUES
(1, 'Latis Education', '2024-01-23 06:57:01', '2024-01-23 06:57:01'),
(2, 'Tutor Indonesia', '2024-01-23 06:57:01', '2024-01-23 06:57:01');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_siswa`
--

CREATE TABLE `tbl_siswa` (
  `id` int(11) NOT NULL,
  `nis` int(15) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `id_lembaga` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_siswa`
--

INSERT INTO `tbl_siswa` (`id`, `nis`, `nama`, `email`, `foto`, `id_lembaga`, `created_at`, `updated_at`) VALUES
(3, 2024012303, 'Putri Nurul Huda', 'putrinurulhuda@gmail.com', '', 1, '2024-01-23 07:16:09', '2024-01-23 07:16:09'),
(101, 2024012301, 'Aulia Pratama', 'auliapratama@gmail.com', '', 1, '2024-01-23 07:25:52', '2024-01-23 07:25:52'),
(102, 2024012302, 'Firdaus Setiawan', 'firdaussetiawan@gmail.com', '', 1, '2024-01-23 07:25:52', '2024-01-23 07:25:52'),
(104, 2024012304, 'Iqbal Ramadhan', 'iqbalramadhan@gmail.com', '', 1, '2024-01-23 07:25:52', '2024-01-23 07:25:52'),
(105, 2024012305, 'Siti Rahma', 'sitirahma@gmail.com', '', 1, '2024-01-23 07:25:52', '2024-01-23 07:25:52'),
(106, 2024012306, 'Rizky Maulana', 'rizkymaulana@gmail.com', '', 1, '2024-01-23 07:25:52', '2024-01-23 07:25:52'),
(107, 2024012307, 'Nisa Fitriani', 'nisafitriani@gmail.com', '', 1, '2024-01-23 07:25:52', '2024-01-23 07:25:52'),
(108, 2024012308, 'Aditya Putra', 'adityaputra@gmail.com', 'Best_Places_To_Stay_In_Bali_As_Told_By_Travel_Writers!3.jpg', 1, '2024-01-23 07:25:52', '2024-01-23 14:23:05'),
(109, 2024012309, 'Dewi Lestari', 'dewilestari@gmail.com', '', 1, '2024-01-23 07:25:52', '2024-01-23 07:25:52'),
(110, 2024012310, 'Dika Permana', 'dikapermana@gmail.com', '', 1, '2024-01-23 07:25:52', '2024-01-23 07:25:52'),
(111, 2024012311, 'Tiara Puspita', 'tiarapuspita@gmail.com', '', 1, '2024-01-23 07:25:52', '2024-01-23 07:25:52'),
(112, 2024012312, 'Bagus Wijaya', 'baguswijaya@gmail.com', '', 1, '2024-01-23 07:25:52', '2024-01-23 07:25:52'),
(113, 2024012313, 'Eka Saputra', 'ekasaputra@gmail.com', '', 1, '2024-01-23 07:25:52', '2024-01-23 07:25:52'),
(114, 2024012314, 'Rini Permata', 'rinipermata@gmail.com', '', 1, '2024-01-23 07:25:52', '2024-01-23 07:25:52'),
(115, 2024012315, 'Yoga Pratama', 'yogapratama@gmail.com', '', 1, '2024-01-23 07:25:52', '2024-01-23 07:25:52'),
(116, 2024012316, 'Nanda Putri', 'nandaputri@gmail.com', '', 1, '2024-01-23 07:25:52', '2024-01-23 07:25:52'),
(117, 2024012317, 'Hadi Santoso', 'hadisantoso@gmail.com', '', 1, '2024-01-23 07:25:52', '2024-01-23 07:25:52'),
(118, 2024012318, 'Sari Utami', 'sariutami@gmail.com', '', 1, '2024-01-23 07:25:52', '2024-01-23 07:25:52'),
(119, 2024012319, 'Rizki Pratama', 'rizkipratama@gmail.com', '', 1, '2024-01-23 07:25:52', '2024-01-23 07:25:52'),
(120, 2024012320, 'Anisa Rahayu', 'anisarahayu@gmail.com', '', 1, '2024-01-23 07:25:52', '2024-01-23 07:25:52'),
(121, 2024012321, 'Ryan Setiawan', 'ryansetiawan@gmail.com', '', 1, '2024-01-23 07:25:52', '2024-01-23 07:25:52'),
(122, 2024012322, 'Nurul Hidayah', 'nurulhidayah@gmail.com', '', 1, '2024-01-23 07:25:52', '2024-01-23 07:25:52'),
(123, 2024012323, 'Ahmad Fauzi', 'ahmadfauzi@gmail.com', '', 1, '2024-01-23 07:25:52', '2024-01-23 07:25:52'),
(124, 2024012324, 'Maya Sari', 'mayasari@gmail.com', '', 1, '2024-01-23 07:25:52', '2024-01-23 07:25:52'),
(125, 2024012325, 'Irfan Hakim', 'irfanhakim@gmail.com', '', 1, '2024-01-23 07:25:52', '2024-01-23 07:25:52'),
(126, 2024012326, 'Mega Pratiwi', 'megapratiwi@gmail.com', '', 1, '2024-01-23 07:25:52', '2024-01-23 07:25:52'),
(127, 2024012327, 'Raka Kusuma', 'rakakusuma@gmail.com', '', 1, '2024-01-23 07:25:52', '2024-01-23 07:25:52'),
(128, 2024012328, 'Ayu Suryani', 'ayusuryani@gmail.com', '', 1, '2024-01-23 07:25:52', '2024-01-23 07:25:52'),
(129, 2024012329, 'Dimas Wijaya', 'dimaswijaya@gmail.com', '', 1, '2024-01-23 07:25:52', '2024-01-23 07:25:52'),
(130, 2024012330, 'Lina Amelia', 'linaamelia@gmail.com', '', 1, '2024-01-23 07:25:52', '2024-01-23 07:25:52'),
(131, 2024012331, 'Dwi Prasetyo', 'dwiprasetyo@gmail.com', '', 1, '2024-01-23 07:25:52', '2024-01-23 07:25:52'),
(132, 2024012332, 'Eka Novita', 'ekanovita@gmail.com', '', 1, '2024-01-23 07:25:52', '2024-01-23 07:25:52'),
(133, 2024012333, 'Dian Ramadhani', 'dianramadhani@gmail.com', '', 1, '2024-01-23 07:25:52', '2024-01-23 07:25:52'),
(134, 2024012334, 'Muhammad Iqbal', 'muhammadiqbal@gmail.com', '', 1, '2024-01-23 07:25:52', '2024-01-23 07:25:52'),
(135, 2024012335, 'Intan Permata', 'intanpermata@gmail.com', '', 1, '2024-01-23 07:25:52', '2024-01-23 07:25:52'),
(136, 2024012336, 'Yoga Nugraha', 'yoganugraha@gmail.com', '', 1, '2024-01-23 07:25:52', '2024-01-23 07:25:52'),
(137, 2024012337, 'Devi Fitriani', 'devifitriani@gmail.com', '', 1, '2024-01-23 07:25:52', '2024-01-23 07:25:52'),
(138, 2024012338, 'Fajar Hidayat', 'fajarhidayat@gmail.com', '', 1, '2024-01-23 07:25:52', '2024-01-23 07:25:52'),
(139, 2024012339, 'Citra Dewi', 'citradewi@gmail.com', '', 1, '2024-01-23 07:25:52', '2024-01-23 07:25:52'),
(140, 2024012340, 'Agung Setiawan', 'agungsetiawan@gmail.com', '', 1, '2024-01-23 07:25:52', '2024-01-23 07:25:52'),
(141, 2024012341, 'Rina Agustina', 'rinaagustina@gmail.com', '', 1, '2024-01-23 07:25:52', '2024-01-23 07:25:52'),
(142, 2024012342, 'Ricky Firmansyah', 'rickyfirmansyah@gmail.com', '', 1, '2024-01-23 07:25:52', '2024-01-23 07:25:52'),
(143, 2024012343, 'Mega Safitri', 'megasafitri@gmail.com', '', 1, '2024-01-23 07:25:52', '2024-01-23 07:25:52'),
(144, 2024012344, 'Arya Putra', 'aryaputra@gmail.com', '', 1, '2024-01-23 07:25:52', '2024-01-23 07:25:52'),
(145, 2024012345, 'Nita Anggraini', 'nitaanggraini@gmail.com', '', 1, '2024-01-23 07:25:52', '2024-01-23 07:25:52'),
(146, 2024012346, 'Dito Pratama', 'ditopratama@gmail.com', '', 1, '2024-01-23 07:25:52', '2024-01-23 07:25:52'),
(147, 2024012347, 'Rini Setiawati', 'rinisetiawati@gmail.com', '', 1, '2024-01-23 07:25:52', '2024-01-23 07:25:52'),
(148, 2024012348, 'Galang Wibowo', 'galangwibowo@gmail.com', '', 1, '2024-01-23 07:25:52', '2024-01-23 07:25:52'),
(149, 2024012349, 'Siti Rohmah', 'sitirohmah@gmail.com', '', 1, '2024-01-23 07:25:52', '2024-01-23 07:25:52'),
(150, 2024012350, 'Fahmi Ramadhan', 'fahmiramadhan@gmail.com', '', 2, '2024-01-23 07:25:52', '2024-01-23 07:25:52'),
(151, 2024012351, 'Novi Wulandari', 'noviwulandari@gmail.com', '', 2, '2024-01-23 07:25:52', '2024-01-23 07:25:52'),
(152, 2024012352, 'Dedy Susanto', 'dedysusanto@gmail.com', '', 2, '2024-01-23 07:25:52', '2024-01-23 07:25:52'),
(153, 2024012353, 'Dina Fitria', 'dinafitria@gmail.com', '', 2, '2024-01-23 07:25:52', '2024-01-23 07:25:52'),
(154, 2024012354, 'Rizal Fauzi', 'rizalfauzi@gmail.com', '', 2, '2024-01-23 07:25:52', '2024-01-23 07:25:52'),
(155, 2024012355, 'Eka Putri', 'ekaputri@gmail.com', '', 2, '2024-01-23 07:25:52', '2024-01-23 07:25:52'),
(157, 2024012357, 'Desi Wulandari', 'desiwulandari@gmail.com', '', 2, '2024-01-23 07:25:52', '2024-01-23 07:25:52'),
(158, 2024012358, 'Faisal Rizky', 'faisalrizky@gmail.com', '', 2, '2024-01-23 07:25:52', '2024-01-23 07:25:52'),
(159, 2024012359, 'Nia Lestari', 'nialestari@gmail.com', '', 2, '2024-01-23 07:25:52', '2024-01-23 07:25:52'),
(160, 2024012360, 'Guntur Wijaya', 'gunturwijaya@gmail.com', '', 2, '2024-01-23 07:25:52', '2024-01-23 07:25:52'),
(161, 2024012361, 'Astri Putri', 'astriputri@gmail.com', '', 2, '2024-01-23 07:25:52', '2024-01-23 07:25:52'),
(162, 2024012362, 'Arif Hidayat', 'arifhidayat@gmail.com', '', 2, '2024-01-23 07:25:52', '2024-01-23 07:25:52'),
(163, 2024012363, 'Nurul Azizah', 'nurulazizah@gmail.com', '', 2, '2024-01-23 07:25:52', '2024-01-23 07:25:52'),
(164, 2024012364, 'Dian Setiawan', 'diansetiawan@gmail.com', '', 2, '2024-01-23 07:25:52', '2024-01-23 07:25:52'),
(165, 2024012365, 'Joko Santoso', 'jokosantoso@gmail.com', '', 2, '2024-01-23 07:25:52', '2024-01-23 07:25:52'),
(166, 2024012366, 'Ninda Puspita', 'nindapuspita@gmail.com', '', 2, '2024-01-23 07:25:52', '2024-01-23 07:25:52'),
(167, 2024012367, 'Rizki Setiadi', 'rizkisetiadi@gmail.com', '', 2, '2024-01-23 07:25:52', '2024-01-23 07:25:52'),
(168, 2024012368, 'Putri Kusuma', 'putrikusuma@gmail.com', '', 2, '2024-01-23 07:25:52', '2024-01-23 07:25:52'),
(169, 2024012369, 'Farhan Maulana', 'farhanmaulana@gmail.com', '', 2, '2024-01-23 07:25:52', '2024-01-23 07:25:52'),
(170, 2024012370, 'Ani Wulandari', 'aniwulandari@gmail.com', '', 2, '2024-01-23 07:25:52', '2024-01-23 07:25:52'),
(171, 2024012371, 'Rizki Prasetyo', 'rizkiprasetyo@gmail.com', '', 2, '2024-01-23 07:25:52', '2024-01-23 07:25:52'),
(172, 2024012372, 'Rika Sari', 'rikasari@gmail.com', '', 2, '2024-01-23 07:25:52', '2024-01-23 07:25:52'),
(173, 2024012373, 'Bagus Purnama', 'baguspurnama@gmail.com', '', 2, '2024-01-23 07:25:52', '2024-01-23 07:25:52'),
(174, 2024012374, 'Yuni Setiawati', 'yunisetiawati@gmail.com', '', 2, '2024-01-23 07:25:52', '2024-01-23 07:25:52'),
(175, 2024012375, 'Rio Saputra', 'riosaputra@gmail.com', '', 2, '2024-01-23 07:25:52', '2024-01-23 07:25:52'),
(176, 2024012376, 'Yulia Rahmawati', 'yuliarahmawati@gmail.com', '', 2, '2024-01-23 07:25:52', '2024-01-23 07:25:52'),
(177, 2024012377, 'Dimas Nugroho', 'dimasnugroho@gmail.com', '', 2, '2024-01-23 07:25:52', '2024-01-23 07:25:52'),
(178, 2024012378, 'Wulan Sari', 'wulansari@gmail.com', '', 2, '2024-01-23 07:25:52', '2024-01-23 07:25:52'),
(179, 2024012379, 'Rizki Saputra', 'rizkisaputra@gmail.com', '', 2, '2024-01-23 07:25:52', '2024-01-23 07:25:52'),
(180, 2024012380, 'Sari Wahyuni', 'sariwahyuni@gmail.com', '', 2, '2024-01-23 07:25:52', '2024-01-23 07:25:52'),
(181, 2024012381, 'Arya Perdana', 'aryaperdana@gmail.com', '', 2, '2024-01-23 07:25:52', '2024-01-23 07:25:52'),
(182, 2024012382, 'Citra Lestari', 'citralestari@gmail.com', '', 2, '2024-01-23 07:25:52', '2024-01-23 07:25:52'),
(183, 2024012383, 'Fahmi Setiawan', 'fahmisetiawan@gmail.com', '', 2, '2024-01-23 07:25:52', '2024-01-23 07:25:52'),
(184, 2024012384, 'Lia Pratiwi', 'liapratiwi@gmail.com', '', 2, '2024-01-23 07:25:52', '2024-01-23 07:25:52'),
(185, 2024012385, 'Dwi Setiadi', 'dwisetiadi@gmail.com', '', 2, '2024-01-23 07:25:52', '2024-01-23 07:25:52'),
(186, 2024012386, 'Fitriani Sari', 'fitrianisari@gmail.com', '', 2, '2024-01-23 07:25:52', '2024-01-23 07:25:52'),
(187, 2024012387, 'Deni Prasetyo', 'deniprasetyo@gmail.com', '', 2, '2024-01-23 07:25:52', '2024-01-23 07:25:52'),
(188, 2024012388, 'Ika Purnama', 'ikapurnama@gmail.com', '', 2, '2024-01-23 07:25:52', '2024-01-23 07:25:52'),
(189, 2024012389, 'Rizal Fitrianto', 'rizalfitrianto@gmail.com', '', 2, '2024-01-23 07:25:52', '2024-01-23 07:25:52'),
(190, 2024012390, 'Nanda Setiawan', 'nandasetiawan@gmail.com', '', 2, '2024-01-23 07:25:52', '2024-01-23 07:25:52'),
(191, 2024012391, 'Rini Wijaya', 'riniwijaya@gmail.com', '', 2, '2024-01-23 07:25:52', '2024-01-23 07:25:52'),
(192, 2024012392, 'Adi Santoso', 'adisantoso@gmail.com', 'Wat_Arun_at_Sunset10.jpg', 2, '2024-01-23 07:25:52', '2024-01-23 14:22:52'),
(193, 2024012393, 'Ayu Puspita', 'ayupuspita@gmail.com', '', 2, '2024-01-23 07:25:52', '2024-01-23 07:25:52'),
(194, 2024012394, 'Dedi Setiawan', 'dedisetiawan@gmail.com', '', 2, '2024-01-23 07:25:52', '2024-01-23 07:25:52'),
(195, 2024012395, 'Maya Anggraeni', 'mayaanggraeni@gmail.com', '', 2, '2024-01-23 07:25:52', '2024-01-23 07:25:52'),
(196, 2024012396, 'Yoga Prasetyo', 'yogaprasetyo@gmail.com', '', 2, '2024-01-23 07:25:52', '2024-01-23 07:25:52'),
(197, 2024012397, 'Laila Rahmawati', 'lailarahmawati@gmail.com', '', 2, '2024-01-23 07:25:52', '2024-01-23 07:25:52'),
(198, 2024012398, 'Ricky Firmansyah', 'rickyfirmansyah@gmail.com', '', 2, '2024-01-23 07:25:52', '2024-01-23 07:25:52'),
(199, 2024012399, 'Fika Ramadhani', 'fikaramadhani@gmail.com', '', 2, '2024-01-23 07:25:52', '2024-01-23 07:25:52'),
(200, 2024012400, 'Dodi Prasetyo', 'dodiprasetyo@gmail.com', '', 2, '2024-01-23 07:25:52', '2024-01-23 07:25:52'),
(201, 2019, 'sendi', 'sendi@gmail.com', 'Wat_Arun_at_Sunset1.jpg', 2, '2024-01-23 09:53:31', '2024-01-23 10:33:15'),
(203, 12, 'we', 'wotleiwdm@gmail.com', 'shutterstock_712042822-768x4321.jpg', 2, '2024-01-23 10:31:39', '2024-01-23 10:31:39'),
(204, 345, 'sen', 'send@gmail.com', 'OIP.jpg', 2, '2024-01-23 10:44:22', '2024-01-23 10:44:22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_auth`
--
ALTER TABLE `tbl_auth`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_lembaga`
--
ALTER TABLE `tbl_lembaga`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_siswa`
--
ALTER TABLE `tbl_siswa`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_auth`
--
ALTER TABLE `tbl_auth`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=198;

--
-- AUTO_INCREMENT for table `tbl_lembaga`
--
ALTER TABLE `tbl_lembaga`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_siswa`
--
ALTER TABLE `tbl_siswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=207;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
