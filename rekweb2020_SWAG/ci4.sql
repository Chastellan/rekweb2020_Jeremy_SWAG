-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 27, 2020 at 03:28 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.3.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ci4`
--

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `penulis` varchar(255) NOT NULL,
  `penerbit` varchar(255) NOT NULL,
  `sampul` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`id`, `judul`, `slug`, `penulis`, `penerbit`, `sampul`, `created_at`, `updated_at`) VALUES
(1, 'Media dan Teknologi dalam Pembelajaran', 'media dan Teknologi dalam Pembelajaran', 'Dr. Benny A. Pribadi, M.A.', 'Gramedia', '1.jpg', NULL, NULL),
(2, 'Dear Nathan', 'dear Nathan', 'Erisca Febriani', 'Agro Media', '2.jpg', NULL, NULL),
(3, 'Sekolah Kreatif : Sekolah Kehidupan yang Menyenangkan untuk Anak', 'sekolah Kreatif : Sekolah Kehidupan yang Menyenangkan untuk Anak', 'Heru Kurniawan', 'Andi Publisher', '3.jpg', NULL, NULL),
(4, 'Buku Biografi B.J. Habibie : Kisah, Perjuangan dan Inspirasi ', 'buku Biografi B.J. Habibie : Kisah, Perjuangan dan Inspirasi ', 'Weda S. Atma', 'Gagas Media', '4.jpg', NULL, NULL),
(5, 'Perencanaan Bisnis', 'perencanaan Bisnis', 'Hery, S.E.,M.Si.,CRP.,RSA.,CFRM.', 'Grasindo', '5.jpg', NULL, NULL),
(6, 'Ensiklopedia Sastra Indonesia', 'ensiklopedia Sastra Indonesia', 'E, Kosasih, M.pd', 'Agro Media', '6.jpg', NULL, NULL),
(7, 'Filsafat Agama : Wisata Pemikiran dan Kepercayaan Manusia', 'filsafat Agama : Wisata Pemikiran dan Kepercayaan Manusia', 'Prof.Dr.Amsai Bakhtiar,M.A.', 'Elexmedia Komputindo', '7.jpg', NULL, NULL),
(8, 'Kesehatan Mental Perspektif Psikologis dan Agama', 'kesehatan Mental Perspektif Psikologis dan Agama', 'Prof Dr.Syamsu Yusuf L.N', 'Elexmedia Komputindo', '8.jpg', NULL, NULL),
(9, 'The Detox Lifestyle: Natural Ways To Be Healthy', 'the Detox Lifestyle: Natural Ways To Be Healthy', 'Riani Susanto ND,CT', 'Bentang Pustaka', '9.jpg', NULL, NULL),
(10, 'Naruto', 'naruto', 'Masashi Kishimoto', 'Shonen Jump', '10.jpg', NULL, NULL),
(11, 'One Piece', 'one-Piece', 'Eiichiro Oda', 'Shonen Jump', '11.jpg', NULL, NULL),
(12, 'The Ultimate European Travel Guide', 'the Ultimate European Travel Guide', 'Mark Johnson', 'Mizan', '12.jpg', NULL, NULL),
(13, 'Laskar Pelangi', 'Laskar Pelangi', 'Andrea Hirata', 'Bentang Pustaka', '13.jpg', NULL, NULL),
(14, 'Baca, Baca, Yuk Baca', 'Baca, Baca, Yuk Baca', 'Herry Prasetyo', 'Bhuana Ilmu Populer', '14.jpg', NULL, NULL),
(15, 'Menyusun Business Plan dan Rencana Aksi', 'Menyusun Business Plan dan Rencana Aksi', 'Muchtar A. F.', 'Yrama Widya', '15.jpg', NULL, NULL),
(16, 'Fisika Kelas X', 'Fisika Kelas X', 'Joko Sumarsono', 'CV Teguh Karya', '16.jpg', NULL, NULL),
(17, 'Naruto 72', 'Naruto 72', 'Masashi Kishimoto', 'Elex Media Komputindo 	', '17.jpg', NULL, NULL),
(18, 'Sistem Politik Indonesia: Kestabilan, Peta Kekuatan Politik dan Pembangunan', 'Sistem Politik Indonesia: Kestabilan, Peta Kekuatan Politik dan Pembangunan', 'Arbi Sanit', 'Rajawali Pers', '18.jpg', NULL, NULL),
(19, 'Teknologi Informasi dan Komunikasi', 'Teknologi Informasi dan Komunikasi', 'Hamdan Husein Batubara', 'Penerbit Buku Pendidikan Deepublish', '19.jpg', NULL, NULL),
(20, 'Ensiklopedia Sains', 'Ensiklopedia Sains', 'Usborne', 'Bhuana Ilmu Populer', '20.jpg', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `buku`
--
ALTER TABLE `buku`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
