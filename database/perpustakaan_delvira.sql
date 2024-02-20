-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 20, 2024 at 06:24 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `perpustakaan_delvira`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `nama_admin` varchar(255) NOT NULL,
  `password` varchar(25) NOT NULL,
  `kode_admin` varchar(12) NOT NULL,
  `no_tlp` varchar(13) NOT NULL,
  `role` enum('admin','petugas') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `nama_admin`, `password`, `kode_admin`, `no_tlp`, `role`) VALUES
(1, 'rasya', '1234', 'admin11', '0896283', 'admin'),
(2, 'delvira', '1234', 'admin', '0394934', 'admin'),
(3, 'rafa', '1234', 'admin2', '08293923', 'admin'),
(4, 'adzan', '1234', 'petugas2', '03493493', 'petugas');

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `cover` varchar(255) NOT NULL,
  `id_buku` varchar(20) NOT NULL,
  `kategori` varchar(255) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `pengarang` varchar(255) NOT NULL,
  `penerbit` varchar(255) NOT NULL,
  `tahun_terbit` date NOT NULL,
  `jumlah_halaman` int(50) NOT NULL,
  `buku_deskripsi` text NOT NULL,
  `isi_buku` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`cover`, `id_buku`, `kategori`, `judul`, `pengarang`, `penerbit`, `tahun_terbit`, `jumlah_halaman`, `buku_deskripsi`, `isi_buku`) VALUES
('65d40981004f1.jpeg', 'ZID0001', 'novel', 'Cantik Itu Luka', 'Eka Kurniawan', 'Gramedia', '2008-10-15', 234, 'Novel ini bercerita tentang kehidupan Dewi Ayu di zaman kolonial. Kecantikan Dewi Ayu dan keluarganya menjadi petaka dan luka tersendiri bagi mereka, mulai dari anak-anaknya yang sengsara, dan kehidupan cucu-cucunya yang makin aneh. Novel ini mengandung kritik sosial dan mengeksplorasi peran perempuan dalam masyarakat.', 'Eka_Kurniawan_-_Cantik_itu_Luka.pdf'),
('65d409d702a4b.jpeg', 'ZID0002', 'novel', 'Laskar Pelangi', 'Andrea Hirata', 'Gramedia', '2010-11-25', 355, 'Novel Laskar Pelangi menceritakan perjalanan hidup sepuluh anak dari keluarga kurang mampu yang bersekolah di sekolah Muhammadiyah.', 'Laskar_Pelangi_Full.pdf'),
('65d40a21eb332.jpeg', 'ZID0003', 'novel', 'Bumi Manusia', 'Pramoedya Ananta Toer', 'Gramedia', '1991-06-18', 394, 'Novel ini mengisahkan kisah cinta antar Minke dan Annelies pada masa kolonialisme di awal abad 20 an. Cinta antara keduanya mengalami pergolakan batin yang tak berkesudahan. Dimana Minke merupakan seorang Priyayi Pribumi yang jatuh Cinta pada Annelies yang merupakan gadis Indo Belanda merupakan anak dari seorang Nyai', 'Pramoedya Ananta Toer-Bumi Manusia-Hasta Mitra.pdf'),
('65d40af43bb91.jpeg', 'ZID0004', 'novel', 'Matahari', 'Tere Liye', 'Gramedia', '2016-06-15', 228, 'Novel ini menceritakan tentang petualangan Raib, Ali dan Seli di dunia Klan Matahari. Mereka bertiga bertemu dengan tokoh baru yang mengantarkan pada misi menyenangkan sekaligus berbahaya.', 'Tere_Liye_-_Matahari.pdf (1).pdf'),
('65d40b3da17b8.jpeg', 'ZID0005', 'novel', 'Pergi', 'Tere Liye', 'Gramedia', '2012-11-29', 335, 'Novel ini menceritakan kisah tentang Bujang yang mencari tujuan hidup, ke mana hendak pergi, melalui kenangan demi kenangan masa lalu, pertarungan hidup-mati, untuk memutuskan kemana langkah kaki akan dibawa.', 'Download_Novel_Pergi_karya_Tere_Liye_Gra.pdf'),
('65d40bb45ecc3.jpeg', 'ZID0006', 'novel', '5 CM', 'Donny Dhirgantoro', 'Gramedia', '2005-05-24', 397, 'Novel ini menceritakan tentang perjalanan 5 sahabat yakni Arial, Riani, Zafran, Ian dan Genta. Novel ini mengajarkan tentang harapan, impian, tekad, cinta dan persahabatan.', 'Novel_5_CM.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `kategori_buku`
--

CREATE TABLE `kategori_buku` (
  `kategori` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `kategori_buku`
--

INSERT INTO `kategori_buku` (`kategori`) VALUES
('bisnis'),
('filsafat'),
('informatika'),
('novel'),
('sains');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `nisn` int(11) NOT NULL,
  `kode_member` varchar(12) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `jenis_kelamin` varchar(20) NOT NULL,
  `kelas` varchar(5) NOT NULL,
  `jurusan` varchar(50) NOT NULL,
  `no_tlp` varchar(15) NOT NULL,
  `tgl_pendaftaran` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`nisn`, `kode_member`, `nama`, `password`, `jenis_kelamin`, `kelas`, `jurusan`, `no_tlp`, `tgl_pendaftaran`) VALUES
(123, '123', 'rafa', '$2y$10$6A5sVTzmv0HCZKFp1/LENuGUZQupG6r/jpOiB9LGUCY0Zns4BbH6q', 'Laki laki', 'XII', 'Teknik Tenaga Listrik', '094646164', '2024-02-12'),
(12345, '1234', 'ahmad', '$2y$10$8zOCtAEPblrg5.GM3GyN9uozsoZw8ibG9rlVCGXUPg.pF2yHEZyba', 'Laki laki', 'X', 'Desain Pemodelan Informasi Bangunan', '1234', '2024-02-09'),
(164545, '0726382', 'delvira', '$2y$10$kqvHmlIo9zGYTA1AYcfxwOH9I2qvxBKTpLRveRmB5sY9SPrw7jm22', 'Perempuan', 'XII', 'Desain Komunikasi Visual', '08888', '2024-02-12'),
(12345678, '000', 'delvira', '$2y$10$CfrFDinoTolyXfGYTVTqauhJz3UH/34NOXi/NjKYjeXn6LL7V4nTa', 'Perempuan', 'XII', 'Rekayasa Perangkat Lunak', '08888', '2024-02-15'),
(123456789, '999', 'rasya agastya', '$2y$10$gnq4uxQKtAmQHp11kenTYuDTKsqjOsbE1xiFGpZj243gtTbbCMjMC', 'Laki laki', 'XII', 'Teknik Konstruksi Perumahan', '08667564564', '2024-02-11');

-- --------------------------------------------------------

--
-- Table structure for table `peminjaman`
--

CREATE TABLE `peminjaman` (
  `id_peminjaman` int(11) NOT NULL,
  `id_buku` varchar(20) NOT NULL,
  `nisn` int(11) NOT NULL,
  `id_admin` int(11) NOT NULL,
  `tgl_peminjaman` date NOT NULL,
  `tgl_pengembalian` date NOT NULL,
  `status` enum('ya','tidak') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `peminjaman`
--

INSERT INTO `peminjaman` (`id_peminjaman`, `id_buku`, `nisn`, `id_admin`, `tgl_peminjaman`, `tgl_pengembalian`, `status`) VALUES
(107, 'z012', 12345, 2, '2024-02-15', '2024-02-22', 'tidak');

-- --------------------------------------------------------

--
-- Table structure for table `pengembalian`
--

CREATE TABLE `pengembalian` (
  `id_pengembalian` int(11) NOT NULL,
  `id_peminjaman` int(11) NOT NULL,
  `id_buku` varchar(20) NOT NULL,
  `nisn` int(11) NOT NULL,
  `id_admin` int(11) NOT NULL,
  `buku_kembali` date NOT NULL,
  `keterlambatan` enum('YA','TIDAK') NOT NULL,
  `denda` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kode_admin` (`kode_admin`);

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id_buku`),
  ADD KEY `kategori` (`kategori`);

--
-- Indexes for table `kategori_buku`
--
ALTER TABLE `kategori_buku`
  ADD PRIMARY KEY (`kategori`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`nisn`),
  ADD UNIQUE KEY `kode_member` (`kode_member`);

--
-- Indexes for table `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD PRIMARY KEY (`id_peminjaman`),
  ADD KEY `id_buku` (`id_buku`),
  ADD KEY `nisn` (`nisn`),
  ADD KEY `id_admin` (`id_admin`);

--
-- Indexes for table `pengembalian`
--
ALTER TABLE `pengembalian`
  ADD PRIMARY KEY (`id_pengembalian`),
  ADD KEY `id_peminjaman` (`id_peminjaman`),
  ADD KEY `id_buku` (`id_buku`),
  ADD KEY `nisn` (`nisn`),
  ADD KEY `id_admin` (`id_admin`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `peminjaman`
--
ALTER TABLE `peminjaman`
  MODIFY `id_peminjaman` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT for table `pengembalian`
--
ALTER TABLE `pengembalian`
  MODIFY `id_pengembalian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `buku`
--
ALTER TABLE `buku`
  ADD CONSTRAINT `buku_ibfk_1` FOREIGN KEY (`kategori`) REFERENCES `kategori_buku` (`kategori`);

--
-- Constraints for table `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD CONSTRAINT `peminjaman_ibfk_1` FOREIGN KEY (`id_buku`) REFERENCES `buku` (`id_buku`),
  ADD CONSTRAINT `peminjaman_ibfk_2` FOREIGN KEY (`nisn`) REFERENCES `member` (`nisn`),
  ADD CONSTRAINT `peminjaman_ibfk_3` FOREIGN KEY (`id_admin`) REFERENCES `admin` (`id`);

--
-- Constraints for table `pengembalian`
--
ALTER TABLE `pengembalian`
  ADD CONSTRAINT `pengembalian_ibfk_2` FOREIGN KEY (`id_buku`) REFERENCES `buku` (`id_buku`),
  ADD CONSTRAINT `pengembalian_ibfk_3` FOREIGN KEY (`nisn`) REFERENCES `member` (`nisn`),
  ADD CONSTRAINT `pengembalian_ibfk_4` FOREIGN KEY (`id_admin`) REFERENCES `admin` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
