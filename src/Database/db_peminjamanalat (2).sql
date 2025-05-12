-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 10, 2025 at 10:01 AM
-- Server version: 8.0.30
-- PHP Version: 8.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_peminjamanalat`
--

-- --------------------------------------------------------

--
-- Table structure for table `alat_lab`
--

CREATE TABLE `alat_lab` (
  `nama` varchar(200) NOT NULL,
  `kode_alat` varchar(10) NOT NULL,
  `jumlah` int NOT NULL,
  `username` varchar(100) NOT NULL,
  `kode_kategori` varchar(10) NOT NULL,
  `satuan` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `alat_lab`
--

INSERT INTO `alat_lab` (`nama`, `kode_alat`, `jumlah`, `username`, `kode_kategori`, `satuan`) VALUES
('Arduino Kit', 'ARD-72891', 7, '32089000645', 'U-TakeOut', 'unit'),
('BOD Incubator', 'BOD-6733', 1, '32089000645', 'U-TakeOut', 'unit'),
('Buret', 'BUR-78654', 10, '32089000647', 'U-TakeOut', 'unit'),
('Computer', 'CMP-87654', 15, '32089000678', 'U-TakeOut', 'unit'),
('COD Reactor', 'COD-44567', 1, '32089000646', 'U-TakeOut', 'unit'),
('Laptop AC', 'DWD-526', 3, '32089000647', 'U-TakeOut', 'unit'),
('erlenmeyer', 'ERL-12345', 7, '32089000690', 'U-TakeOut', 'unit'),
('Fume Hood', 'FHD-56432', 1, '32089000647', 'U-TakeOut', 'unit'),
('KEYBOARD', 'FHT-5678', 12, '32089000645', 'U-TakeOut', 'unit'),
('flaskdisk', 'FSD-73188', 6, '32089000645', 'U-TakeOut', 'unit'),
('Graphing Calculator', 'GCL-54321', 10, '32089000678', 'U-TakeOut', 'unit'),
('KopiNuri', 'GYT-4322', 4, '32089000645', 'U-TakeOut', 'unit'),
('Headset', 'HDS-47382', 15, '32089000645', 'U-TakeOut', 'unit'),
('Hot Plate', 'HPT-22356', 4, '32089000647', 'U-TakeOut', 'unit'),
('Iphone 15 Pro MAX', 'HUY-6238', 2, '32089000647', 'NU-TakeOut', 'unit'),
('Keyboard rusak', 'JDB-2371', 12, '32089000645', 'NU-TakeOut', 'unit'),
('Kabel LAN (UTP)', 'KBL-99201', 20, '32089000645', 'NU-TakeOut', 'unit'),
('kamera handicam', 'KMIH-98760', 2, '32089000647', 'U-TakeOut', 'unit'),
('Laser Diode', 'LSD-12457', 2, '32089000648', 'NU-TakeOut', 'unit'),
('laptop', 'LTP-94761', 5, '32089000645', 'NU-TakeOut', 'unit'),
('multitester', 'MMR-69831', 10, '32089000645', 'U-TakeOut', 'unit'),
('mouse cilik', 'MOU-79232', 10, '32089000645', 'U-TakeOut', 'unit');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `kode_kategori` varchar(10) NOT NULL,
  `jenis_kategori` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`kode_kategori`, `jenis_kategori`) VALUES
('NU-TakeOut', 'Tidak bisa dipinjam keluar'),
('U-TakeOut', 'Bisa dipinjam keluar');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `nama` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `username` varchar(100) NOT NULL,
  `kata_sandi` varchar(200) NOT NULL,
  `jurusan` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`nama`, `email`, `username`, `kata_sandi`, `jurusan`) VALUES
('Muhammad Rizky Ramadhan', ' 23080160001@student.walisongo.ac.id', ' 23080160001', ' 23080160001', 'Biologi'),
('Nisrina Ardiningrum', '23080160002@student.walisongo.ac.id', '23080160002', '23080160002', 'Biologi'),
('Mukti Ferdana', '23080160012@student.walisongo.ac.id', '23080160012', '23080160012', 'Biologi'),
('Farah Nur Fauziyyah', '23080160013@student.walisongo.ac.id', '23080160013', '23080160013', 'Biologi'),
('Aina Adristin', '23080160014@student.walisongo.ac.id', '23080160014', '23080160014', 'Biologi'),
('Attika Elok Masruroh', '23080160015@student.walisongo.ac.id', '23080160015', '23080160015', 'Biologi'),
('Nabilatun Nu%Ma', '23080160016@student.walisongo.ac.id', '23080160016', '23080160016', 'Biologi'),
('Rofiqqh', '23080160017@student.walisongo.ac.id', '23080160017', '23080160017', 'Biologi'),
('Destya Puspita Sari', '23080160018@student.walisongo.ac.id', '23080160018', '23080160018', 'Biologi'),
('Khikmatusyarifah', '23080160019@student.walisongo.ac.id', '23080160019', '23080160019', 'Biologi'),
('Nilna Novia Maghfiroh', '23080160020@student.walisongo.ac.id', '23080160020', '23080160020', 'Biologi'),
('Zakiya Asimatul Maula', '23080160021@student.walisongo.ac.id', '23080160021', '23080160021', 'Biologi'),
('Najwa Aura Chrisanda', '23080160022@student.walisongo.ac.id', '23080160022', '23080160022', 'Biologi'),
('Syahwa Ais Saputri', '23080260003@student.walisongo.ac.id', '23080260003', '23080260003', 'Fisika'),
('Yola Annisa Zukhruf', '23080260004@student.walisongo.ac.id', '23080260004', '23080260004', 'Fisika'),
('Tiara Wijayanti', '23080260005@student.walisongo.ac.id', '23080260005', '23080260005', 'Fisika'),
('Dewi Anggun Puspita Septiani', '23080260006@student.walisongo.ac.id', '23080260006', '23080260006', 'Fisika'),
('Siti Saadatulizzah', '23080260007@student.walisongo.ac.id', '23080260007', '23080260007', 'Fisika'),
('Nurul Nikmah', '23080260008@student.walisongo.ac.id', '23080260008', '23080260008', 'Fisika'),
('Alin Noor Meida', '23080260009@student.walisongo.ac.id', '23080260009', '23080260009', 'Fisika'),
('Muhammad Ramdan', '23080260010@student.walisongo.ac.id', '23080260010', '23080260010', 'Fisika'),
('Miel Anil Fauziyah', '23080260011@student.walisongo.ac.id', '23080260011', '23080260011', 'Fisika'),
('Muhammad Rizqi Akbar', '23080360030@student.walisongo.ac.id', '23080360030', '23080360030', 'Kimia'),
('Najwa Layla Rahma', '23080360031@student.walisongo.ac.id', '23080360031', '23080360031', 'Kimia'),
('Icha Calista Salsa Billa', '23080360032@student.walisongo.ac.id', '23080360032', '23080360032', 'Kimia'),
('Mutiara Najwatuzzahra', '23080360033@student.walisongo.ac.id', '23080360033', '23080360033', 'Kimia'),
('Najla Naflah Azahra', '23080360034@student.walisongo.ac.id', '23080360034', '23080360034', 'Kimia'),
('Chelsea Widya Santoso', '23080360035@student.walisongo.ac.id', '23080360035', '23080360035', 'Kimia'),
('Marcela Elsa Talia', '23080360036@student.walisongo.ac.id', '23080360036', '23080360036', 'Kimia'),
('Shafa Latifah Zahra', '23080360037@student.walisongo.ac.id', '23080360037', '23080360037', 'Kimia'),
('Najla Joan Antavia', '23080360038@student.walisongo.ac.id', '23080360038', '23080360038', 'Kimia'),
('Denisa Oktaviani Aulia', '23080360039@student.walisongo.ac.id', '23080360039', '23080360039', 'Kimia'),
('Irfan Aji Apriyansyah', '23080460021@student.walisongo.ac.id', '23080460021', '23080460021', 'Matematika'),
('Gina Luthfiyah', '23080460022@student.walisongo.ac.id', '23080460022', '23080460022', 'Matematika'),
('Dinda Ayu Lestari', '23080460023@student.walisongo.ac.id', '23080460023', '23080460023', 'Matematika'),
('Putri Nurfaizah', '23080460024@student.walisongo.ac.id', '23080460024', '23080460024', 'Matematika'),
('Fathiah Zahrani Khairunnisa', '23080460025@student.walisongo.ac.id', '23080460025', '23080460025', 'Matematika'),
('Ahmad Fuad Luthfi', '23080460026@student.walisongo.ac.id', '23080460026', '23080460026', 'Matematika'),
('Dira Andika Rizky Putra', '23080460027@student.walisongo.ac.id', '23080460027', '23080460027', 'Matematika'),
('Vini Indana Zulfa', '23080460028@student.walisongo.ac.id', '23080460028', '23080460028', 'Matematika'),
('Vina Lestari', '23080460029@student.walisongo.ac.id', '23080460029', '23080460029', 'Matematika'),
('Ahmad Aziz Khoirul Huda', '23080460030@student.walisongo.ac.id', '23080460030', '23080460030', 'Matematika'),
('Lutpia Alaena', '23080460031@student.walisongo.ac.id', '23080460031', '23080460031', 'Matematika'),
('Fella Aulia Agustin', '23080460032@student.walisongo.ac.id', '23080460032', '23080460032', 'Matematika'),
('Eri Syahriah', '23080960013@student.walisongo.ac.id', '23080960013', 'Ersyaa127', 'teknik lingkungan'),
('Itsna Nur Hamida', '23080960029@student.walisongo.ac.id', '23080960029', 'IsnA127', 'teknologi informasi'),
('Muhammad syarifudin hidayat', '23080960032@student.walisongo.ac.id', '23080960032', 'sarepganteng', 'teknologi informasi'),
('Roland Safaldo Ardra Aswindana', '23080960034@student.walisongo.ac.id', '23080960034', '23080960034', 'Teknologi Informasi'),
('Muhammad Andika Shukron Makmun', '23080960035@student.walisongo.ac.id', '23080960035', '23080960035', 'Teknologi Informasi'),
('Rifqi Akmal Musyaffa\'', '23080960036@student.walisongo.ac.id', '23080960036', '23080960036', 'Teknologi Informasi'),
('Rafi Akmal Musyaffa', '23080960037@student.walisongo.ac.id', '23080960037', '23080960037', 'Teknologi Informasi'),
('Daffa Aditya Atmaja', '23080960038@student.walisongo.ac.id', '23080960038', '23080960038', 'Teknologi Informasi'),
('Huda Abdul Majid', '23080960039@student.walisongo.ac.id', '23080960039', '23080960039', 'Teknologi Informasi'),
('Candra Hadi Saputro', '23080960040@student.walisongo.ac.id', '23080960040', '23080960040', 'Teknologi Informasi'),
('M. Rizal Tri Arianto', '23080960041@student.walisongo.ac.id', '23080960041', '23080960041', 'Teknologi Informasi'),
('Ma\'Rifah', '23080960042@student.walisongo.ac.id', '23080960042', '23080960042', 'Teknologi Informasi'),
('Pandu Setya Nugraha', '23080960043@student.walisongo.ac.id', '23080960043', '23080960043', 'Teknologi Informasi'),
('Ale Fani Azmi Nugroho', '23080960044@student.walisongo.ac.id', '23080960044', '23080960044', 'Teknologi Informasi'),
('Zidni Irfanuddin', '23080960045@student.walisongo.ac.id', '23080960045', '23080960045', 'Teknologi Informasi'),
('Anifatun Niswah', '23080960046@student.walisongo.ac.id', '23080960046', '23080960046', 'Teknologi Informasi'),
('Muhammad Aufa', '23080960047@student.walisongo.ac.id', '23080960047', '23080960047', 'Teknologi Informasi'),
('Faradilla Annajwa Hapsari', '23080960048@student.walisongo.ac.id', '23080960048', '23080960048', 'Teknologi Informasi'),
('Krisna Titah', '23080960049@student.walisongo.ac.id', '23080960049', '23080960049', 'Teknologi Informasi'),
('Arilla Pramestia Anabella', '23080960050@student.walisongo.ac.id', '23080960050', '23080960050', 'Teknologi Informasi'),
('Pradipta Arya Nugraha', '23080960051@student.walisongo.ac.id', '23080960051', '23080960051', 'Teknologi Informasi'),
('Muhammad Adi Prasetya', '23080960052@student.walisongo.ac.id', '23080960052', '23080960052', 'Teknologi Informasi'),
('Fa\'Izatul Jannah', '23080960053@student.walisongo.ac.id', '23080960053', '23080960053', 'Teknologi Informasi'),
('Ira Yula Ika Utami', '23081060058@student.walisongo.ac.id', '23081060058', '23081060058', 'Teknik Lingkungan'),
('Siti Nurazizah', '23081060059@student.walisongo.ac.id', '23081060059', '23081060059', 'Teknik Lingkungan'),
('Nabila Natasya', '23081060060@student.walisongo.ac.id', '23081060060', '23081060060', 'Teknik Lingkungan'),
('Clarissa Afifah Paramita', '23081060061@student.walisongo.ac.id', '23081060061', '23081060061', 'Teknik Lingkungan'),
('Afijayanti Tanjaly', '23081060062@student.walisongo.ac.id', '23081060062', '23081060062', 'Teknik Lingkungan'),
('Galant Bona Mahogra Bagaskara', '23081060063@student.walisongo.ac.id', '23081060063', '23081060063', 'Teknik Lingkungan'),
('A. Nabilil Makarim', '23081060064@student.walisongo.ac.id', '23081060064', '23081060064', 'Teknik Lingkungan'),
('Adenia Yuniar Karisma', '23081060065@student.walisongo.ac.id', '23081060065', '23081060065', 'Teknik Lingkungan'),
('Alfiyyah Azhar', '23081060066@student.walisongo.ac.id', '23081060066', '23081060066', 'Teknik Lingkungan');

-- --------------------------------------------------------

--
-- Table structure for table `pj_lab`
--

CREATE TABLE `pj_lab` (
  `nama` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `username` varchar(100) NOT NULL,
  `kata_sandi` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `pj_lab`
--

INSERT INTO `pj_lab` (`nama`, `email`, `username`, `kata_sandi`) VALUES
('Muhammad Reza Pahlevi', '32089000646@walisongo.ac.id', '32089000645', '32089000645'),
('Rizky Ahmad Pratama', '32089000647@walisongo.ac.id', '32089000646', '32089000646'),
('Nurul Hidayati', '32089000648@walisongo.ac.id', '32089000647', '32089000647'),
('Ahmad Fauzi Ramadhan', '32089000678@walisongo.ac.id', '32089000648', '32089000648'),
('Arinal Haqqa Hidayatullah', '32089000690@walisongo.ac.id', '32089000678', '32089000678'),
('Miko Indra Saputra', '32089000690@walisongo.ac.id', '32089000690', '32089000690');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi_peminjaman`
--

CREATE TABLE `transaksi_peminjaman` (
  `tgl_pinjam` timestamp NOT NULL,
  `waktu_peminjaman` int NOT NULL,
  `id_peminjaman` varchar(100) NOT NULL,
  `jumlah` int NOT NULL,
  `username` varchar(100) NOT NULL,
  `kode_alat` varchar(10) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `transaksi_peminjaman`
--

INSERT INTO `transaksi_peminjaman` (`tgl_pinjam`, `waktu_peminjaman`, `id_peminjaman`, `jumlah`, `username`, `kode_alat`, `status`) VALUES
('2024-11-19 03:00:00', 3, 'FLD-1124-002', 1, '23080960032', 'ARD-72891', 'ditolak'),
('2025-05-07 08:30:00', 5, 'FLD-2025-008', 1, '23080160019', 'CMP-87654', 'pending'),
('2025-05-08 06:15:00', 7, 'FLD-2025-010', 7, '23080160021', 'ERL-12345', 'pending'),
('2025-05-09 01:45:00', 2, 'FLD-2025-012', 12, '23080160022', 'FHT-5678', 'pending'),
('2025-05-09 09:15:00', 3, 'FLD-2025-014', 10, '23080260004', 'GCL-54321', 'pending'),
('2024-11-19 03:00:00', 3, 'FYF-1124-002', 1, '23080960035', 'LTP-94761', 'pending'),
('2025-05-07 04:45:00', 2, 'FYF-2025-007', 10, '23080160018', 'BUR-78654', 'pending'),
('2025-05-08 02:30:00', 1, 'FYF-2025-009', 3, '23080160020', 'DWD-526', 'pending'),
('2025-05-09 05:30:00', 6, 'FYF-2025-013', 6, '23080260005', 'FSD-73188', 'pending'),
('2025-05-10 02:00:00', 5, 'FYF-2025-015', 4, '23080260009', 'GYT-4322', 'ditolak'),
('2025-05-09 02:30:00', 1, 'FYF-2025-156', 2, '23080960013', 'DWD-526', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi_pengembalian`
--

CREATE TABLE `transaksi_pengembalian` (
  `denda` int NOT NULL,
  `id_pengembalian` varchar(100) NOT NULL,
  `tgl_pengembalian` timestamp NOT NULL,
  `username` varchar(100) NOT NULL,
  `kode_alat` varchar(10) NOT NULL,
  `jumlah` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `transaksi_pengembalian`
--

INSERT INTO `transaksi_pengembalian` (`denda`, `id_pengembalian`, `tgl_pengembalian`, `username`, `kode_alat`, `jumlah`) VALUES
(0, 'EFE-1124-003', '2024-11-20 01:30:00', '23080960032', 'MOU-79232', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alat_lab`
--
ALTER TABLE `alat_lab`
  ADD PRIMARY KEY (`kode_alat`),
  ADD KEY `username` (`username`),
  ADD KEY `kode_kategori` (`kode_kategori`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`kode_kategori`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pj_lab`
--
ALTER TABLE `pj_lab`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `transaksi_peminjaman`
--
ALTER TABLE `transaksi_peminjaman`
  ADD PRIMARY KEY (`id_peminjaman`),
  ADD UNIQUE KEY `username` (`username`,`kode_alat`),
  ADD KEY `kode_alat` (`kode_alat`);

--
-- Indexes for table `transaksi_pengembalian`
--
ALTER TABLE `transaksi_pengembalian`
  ADD PRIMARY KEY (`id_pengembalian`),
  ADD KEY `username` (`username`),
  ADD KEY `kode_alat` (`kode_alat`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `alat_lab`
--
ALTER TABLE `alat_lab`
  ADD CONSTRAINT `alat_lab_ibfk_1` FOREIGN KEY (`username`) REFERENCES `pj_lab` (`username`),
  ADD CONSTRAINT `alat_lab_ibfk_2` FOREIGN KEY (`kode_kategori`) REFERENCES `kategori` (`kode_kategori`);

--
-- Constraints for table `transaksi_peminjaman`
--
ALTER TABLE `transaksi_peminjaman`
  ADD CONSTRAINT `transaksi_peminjaman_ibfk_1` FOREIGN KEY (`username`) REFERENCES `mahasiswa` (`username`),
  ADD CONSTRAINT `transaksi_peminjaman_ibfk_2` FOREIGN KEY (`kode_alat`) REFERENCES `alat_lab` (`kode_alat`);

--
-- Constraints for table `transaksi_pengembalian`
--
ALTER TABLE `transaksi_pengembalian`
  ADD CONSTRAINT `transaksi_pengembalian_ibfk_1` FOREIGN KEY (`username`) REFERENCES `mahasiswa` (`username`),
  ADD CONSTRAINT `transaksi_pengembalian_ibfk_2` FOREIGN KEY (`kode_alat`) REFERENCES `alat_lab` (`kode_alat`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
