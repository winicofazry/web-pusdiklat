-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 14 Agu 2021 pada 17.44
-- Versi server: 10.4.20-MariaDB
-- Versi PHP: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `web-pusdiklat`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `aktivasi`
--

CREATE TABLE `aktivasi` (
  `id` int(11) NOT NULL,
  `nama` varchar(70) NOT NULL,
  `email` varchar(70) NOT NULL,
  `password` varchar(60) NOT NULL,
  `universitas` varchar(70) NOT NULL,
  `fakultas` varchar(70) NOT NULL,
  `token` varchar(44) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `aktivasi`
--

INSERT INTO `aktivasi` (`id`, `nama`, `email`, `password`, `universitas`, `fakultas`, `token`) VALUES
(10, 'Aris Setyawan', 'aris.setyawan354313@gmail.com', '$2y$10$Vb2ZYfWgb7CVlHGuq9ilh.t5GnrVLUPJvDpLefvruuPRsySZ33lqS', 'Pusdiklat', 'Admin Pusat', 'XKlA1ASENUvUSu0SncCDaZzlPZ1EGS+YxaA/Ap90KdA='),
(11, 'Aris Setyawan', 'aris.setyawan354313@gmail.com', '$2y$10$5bReRltlU3ljLcfu45jBCOATne2wefOBr1WUPxEq8kYUccwhzipuO', 'Pusdiklat', 'Admin Pusat', 'sz3UjlfrnJiLzhUpwJsA1qy5DlxDrr0L6x0zu8T1FWY=');

-- --------------------------------------------------------

--
-- Struktur dari tabel `login`
--

CREATE TABLE `login` (
  `id` int(5) NOT NULL,
  `email` varchar(70) NOT NULL,
  `password` varchar(60) NOT NULL,
  `role_id` int(11) NOT NULL,
  `id_unit_kerja` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `login`
--

INSERT INTO `login` (`id`, `email`, `password`, `role_id`, `id_unit_kerja`) VALUES
(1, 'Rina_Wahyuni@pusdiklat.com', 'rina123', 1, 15),
(2, 'PUSDIKLAT@pusdiklat.com', 'pusdiklat', 2, 1),
(4, 'sleepyweppy@gmail.com', '$2y$10$DdBChV.YU3FTnxPkB79i5.8BE0Vd8IuvHCAK.lpJLn8mJG6OMlT.q', 3, NULL),
(7, 'muhammadrizkyardiansah93@gmail.com', '$2y$10$nW05HXtM1qi4tiUnHZz6l.Hn/9Axhu8.r72.l4.cm3xnhRXPz8Pa.', 3, NULL),
(12, 'aris.cemumut@gmail.com', '$2y$10$iyfHzFi2BWMJLLA2xeGCNeGZVQ/dzLB2TRNIjhLxJBvbBYrA7RVvO', 2, 1),
(13, 'ariss@upnvj.ac.id', '$2y$10$2DaeegN8jbjjb72MiSuB1.2oEjgXBD0Paq6yMkwQl/dEz7FbAZspm', 1, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelamar`
--

CREATE TABLE `pelamar` (
  `id` int(11) NOT NULL,
  `nama_pelamar` varchar(70) NOT NULL,
  `email` varchar(70) NOT NULL,
  `universitas` varchar(70) NOT NULL,
  `fakultas` varchar(70) NOT NULL,
  `prodi` varchar(70) DEFAULT NULL,
  `nim` varchar(30) DEFAULT NULL,
  `semester` int(2) DEFAULT NULL,
  `no_telpon` varchar(15) DEFAULT NULL,
  `nama_file_khs` varchar(100) DEFAULT NULL,
  `nama_file_cv` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pelamar`
--

INSERT INTO `pelamar` (`id`, `nama_pelamar`, `email`, `universitas`, `fakultas`, `prodi`, `nim`, `semester`, `no_telpon`, `nama_file_khs`, `nama_file_cv`) VALUES
(1, 'Muhammad Rizky', 'sleepyweppy@gmail.com', 'Universitas Yarsi', 'Teknologi Informasi', NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'Muhammad Rizky Ardiansah', 'muhammadrizkyardiansah93@gmail.com', 'Universitas Yarsi', 'Teknologi Informasi', 'Teknik Informatika', '1402018149', 6, '085972875509', 'Pelamar_KHS_1628872504.pdf', '29aaa9784599d2f9625d306600127df6.pdf'),
(8, 'Aris Setyawan', 'aris.setyawan@gmail.com', 'UPN Veteran Jakarta', 'Ilmu Komputer', 'Sistem Informasi', '1810512022', 6, '0895340442948', 'Contoh KHS.pdf', 'Contoh CV.pdf'),
(9, 'Albert Lim', 'albert.lim@gmail.com', 'UPN Veteran Jakarta', 'Ilmu Komputer', 'Sistem Informasi', '1810512021', 6, '08123457438', 'Contoh KHS Albert.pdf', 'Contoh CV Albert.pdf'),
(10, 'Nurul Aini', 'nurula@gmail.com', 'UPN Veteran Jakarta', 'Ilmu Komputer', 'Sistem Informasi', '1810512028', 6, '0812341223', 'Contoh KHS Nurul.pdf', 'Contoh CV Nurul.pdf'),
(11, 'Yuli Febyola', 'yuli.f@gmail.com', 'UPN Veteran Jakarta', 'Ilmu Komputer', 'Sistem Informasi', '1810512038', 6, '08123432421', 'Contoh KHS Feby.pdf', 'Contoh CV Feby.pdf'),
(12, 'Mastono Aji', 'masaji@gmail.com', 'Universitas Ageng Tirtayasa', 'Teknik', 'Teknik Industri', '18002832123', 6, '089544221123', 'Contoh KHS Aji.pdf', 'Contoh CV Aji.pdf'),
(13, 'Rania Ramadhina', 'raniarans@gmail.com', 'UPN Veteran Jakarta', 'Ilmu Komputer', 'informatika', '18002376712', 6, '0896656121', 'Contoh KHS Rania.pdf', 'Contoh CV Rania.pdf'),
(14, 'Idham', 'idham@gmail.com', 'Universitas Ageng Tirtayasa', 'Teknik', 'Teknik Elektro', '18106123372', 6, '0812377239342', 'Contoh KHS Idham.pdf', 'Contoh CV Idham.pdf'),
(15, 'Gilang Akbar P', 'gilangakbar@gmail.com', 'UPN Veteran Jakarta', 'Ilmu Komputer', 'Informatika', '1810601239', 6, '08924447771', 'Contoh KHS Gilang.pdf', 'Contoh CV Gilang.pdf'),
(16, 'Dani Ali Cahyono', 'danialicah@gmail.com', 'UPN Veteran Jakarta', 'Ilmu Komputer', 'Sistem Informasi', '1806615528', 6, '08921374324', 'Contoh KHS Dani.pdf', 'Contoh CV Dani.pdf'),
(17, 'Aji Suryana', 'ajisuryani@gmail.com', 'UPN Veteran Jakarta', 'Ilmu Komputer', 'Informatika', '18980982391', 6, '089932546213', 'Contoh KHS Surnaya.pdf', 'Contoh CV Surnaya.pdf'),
(18, 'Aldi Ramadhan', 'aldi@upnvj.ac.id', 'UPN Veteran Jakarta', 'Ilmu Komputer', 'Sistem informasi', '181066299123', 6, '08993277123', 'Contoh KHS Aldi.pdf', 'Contoh CV Aldi.pdf'),
(19, 'Rio Pratamtam', 'pratamtam@gmail.com', 'UPN veteran Jakarta', 'Ilmu Komputer', 'Informatika', '18977239983', 6, '08994367612', 'Contoh KHS Rio.pdf', 'Contoh CV Rio.pdf'),
(20, 'Gladis Federica', 'gladis.f@gmail.com', 'Universitas Gadjah Mada', 'Ilmu Sosial dan Politik', 'Ilmu Politik', '8831877821', 6, '08991328671', 'KHS Gladis.pdf', 'CV Gladis.pdf'),
(21, 'Budi Sujatmiko', 'budidudedo@gmail.com', 'Universitas Indonesia', 'Hukum', 'Hukum Internasional', '88675671293', 6, '08983176321', 'budi KHS.pdf', 'budi CV.pdf');

-- --------------------------------------------------------

--
-- Struktur dari tabel `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `role`
--

INSERT INTO `role` (`id`, `name`) VALUES
(1, 'Administrator Pusat'),
(2, 'Administrator Unit Kerja'),
(3, 'Pelamar');

-- --------------------------------------------------------

--
-- Struktur dari tabel `surat_balasan`
--

CREATE TABLE `surat_balasan` (
  `id_surat_balasan` int(11) NOT NULL,
  `id_surat_permohonan` int(11) NOT NULL,
  `no_surat` varchar(26) NOT NULL,
  `nama_surat` varchar(45) NOT NULL,
  `tgl_surat` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `surat_balasan`
--

INSERT INTO `surat_balasan` (`id_surat_balasan`, `id_surat_permohonan`, `no_surat`, `nama_surat`, `tgl_surat`) VALUES
(1, 12, '', '', '0000-00-00'),
(2, 13, '', '', '0000-00-00'),
(3, 14, '', '', '0000-00-00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `surat_permohonan`
--

CREATE TABLE `surat_permohonan` (
  `id_permohonan` int(12) NOT NULL,
  `id_unit` int(5) NOT NULL,
  `id_pelamar` int(11) NOT NULL,
  `no_surat_permohonan` varchar(10) NOT NULL,
  `nama_file_surat_permohonan` varchar(65) NOT NULL,
  `tanggal_permohonan` date NOT NULL,
  `status` varchar(35) DEFAULT NULL,
  `tanggal_persetujuan` date DEFAULT NULL,
  `ket` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `surat_permohonan`
--

INSERT INTO `surat_permohonan` (`id_permohonan`, `id_unit`, `id_pelamar`, `no_surat_permohonan`, `nama_file_surat_permohonan`, `tanggal_permohonan`, `status`, `tanggal_persetujuan`, `ket`) VALUES
(1, 1, 8, 'MG_01', 'Contoh Surat Permohonan Aris.pdf', '2021-08-01', 'Ditolak', '2021-08-12', 'ok'),
(2, 1, 9, 'MG_02', 'Contoh Surat Permohonan Albert.pdf', '2021-08-02', 'Menunggu Verifikasi', '0000-00-00', ''),
(3, 1, 10, 'MG_02', 'Contoh Surat Permohonan Nurul.pdf', '2021-08-02', 'Menunggu Verifikasi', '0000-00-00', ''),
(4, 1, 11, 'MG_01', 'Contoh Surat Permohonan Feby.pdf', '2021-08-01', 'Menunggu Verifikasi', '0000-00-00', ''),
(5, 2, 12, 'MG_03', 'Contoh Surat Permohonan Aji.pdf', '2021-08-03', 'Disetujui', '2021-08-11', 'siap'),
(6, 2, 14, 'MG_03', 'Contoh Surat Permohonan Idham.pdf', '2021-08-03', 'Ditolak', '2021-08-11', 'kjhij'),
(7, 2, 17, 'MG_04', 'Contoh Surat Permohonan Aji Suryana.pdf', '2021-08-04', 'Ditolak', '2021-08-13', 'Lah iya\r\n'),
(8, 1, 18, 'MG_05', 'Surat Lamaran Aldi Ramadhan.pdf', '2021-08-03', 'Disetujui', '2021-08-04', 'Data Telah Sesuai'),
(9, 2, 19, 'MG_05', 'Surat Lamaran Perpusnas Rio.pdf', '2021-08-03', 'Disetujui', '2021-08-11', 'ok'),
(10, 5, 20, 'MG/001', 'Gladis Federica UGM.pdf', '2021-08-04', 'Ditolak', '2021-08-05', 'Kelengkapan Dokumen Masih Kurang'),
(11, 6, 21, 'UI/MG-001', 'Surat Magang Budi Sujatmiko.pdf', '2021-08-06', 'Ditolak', '2021-08-07', 'Kelengkapan Dokumen Masih Kurang'),
(12, 1, 5, 'MG_08', 'Pelamar_SuratPermohonan_1628872636.pdf', '2021-08-13', 'Menunggu verifikasi', NULL, NULL),
(13, 15, 5, 'MG_007', 'Pelamar_SuratPermohonan_1628945557.pdf', '2021-08-14', 'Ditolak', '2021-08-16', NULL),
(14, 5, 5, '70/MG/80/T', 'Pelamar_SuratPermohonan_1628948927.pdf', '2021-08-14', 'Disetujui', '2021-08-15', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `unit_kerja`
--

CREATE TABLE `unit_kerja` (
  `id` int(11) NOT NULL,
  `nama_unit` varchar(70) NOT NULL,
  `keterangan` mediumtext NOT NULL,
  `url_gambar` varchar(256) NOT NULL,
  `url_halaman` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `unit_kerja`
--

INSERT INTO `unit_kerja` (`id`, `nama_unit`, `keterangan`, `url_gambar`, `url_halaman`) VALUES
(1, 'Biro Perencanaan dan Keuangan', 'Biro Perencanaan dan Keuangan mempunyai tugas melaksanakan koordinasi dan penyusunan rencana, program dan anggaran, pemantauan, evaluasi, dan pelaporan, serta pengelolaan administrasi keuangan.', '-', '-'),
(2, 'Biro Hukum, Organisasi, Kerja Sama dan Hubungan Masyarakat', 'Biro Hukum, Organisasi, Kerja Sama, dan Hubungan Masyarakat mempunyai tugas melaksanakan koordinasi dan pelayanan di bidang hukum, organisasi, kerja sama, hubungan masyarakat, dan penerbitan.', '-', '-'),
(3, 'Biro SDM dan Umum', 'Biro Sumber Daya Manusia dan Umum mempunyai tugas melaksanakan koordinasi dan penyusunan urusan sumber daya manusia, rumah tangga, kearsipan, persandian, keprotokolan, administrasi tata usaha, dan layanan pengadaan barang dan jasa.', '-', '-'),
(4, 'Direktorat Deposit dan Pengembangan Koleksi Perpustakaan', 'Direktorat Deposit dan Pengembangan Koleksi Perpustakaan mempunyai tugas melaksanakan perumusan dan pelaksanaan kebijakan, penyusunan norma, standar, prosedur, dan kriteria, pelaksanaan fasilitasi, bimbingan teknis, supervisi, dan evaluasi dan pelaporan di bidang deposit dan pengembangan koleksi perpustakaan.', '-', '-'),
(5, 'Pusat Bibliografi dan Pengolahan Bahan Perpustakaan', 'Pusat Bibliografi dan Pengolahan Bahan Perpustakaan mempunyai tugas melaksanakan perumusan dan pelaksanaan kebijakan, fasilitasi, bimbingan teknis, supervisi, dan evaluasi dan pelaporan di bidang bibliografi dan pengolahan bahan perpustakaan.', '-', '-'),
(6, 'Pusat Preservasi dan Alih Media Bahan Perpustakaan', 'Pusat Preservasi dan Alih Media Bahan Perpustakaan mempunyai tugas melaksanakan perumusan dan pelaksanaan kebijakan, fasilitasi, bimbingan teknis, supervisi, dan evaluasi dan pelaporan di bidang pelestarian fisik dan informasi bahan perpustakaan.', '-', '-'),
(7, 'Pusat Jasa Informasi Perpustakaan dan Pengelolaan Naskah Nusantara', 'Pusat Jasa Informasi Perpustakaan dan Pengelolaan Naskah Nusantara mempunyai tugas melaksanakan perumusan dan pelaksanaan kebijakan, fasilitasi, bimbingan teknis, supervisi, dan evaluasi dan pelaporan di bidang jasa informasi dan layanan perpustakaan serta pengelolaan naskah nusantara.', '-', '-'),
(8, 'Direktorat Standarisasi dan Akreditasi', 'Direktorat Standardisasi dan Akreditasi mempunyai tugas melaksanakan perumusan dan pelaksanaan kebijakan, penyusunan norma, standar, prosedur, dan kriteria, pelaksanaan fasilitasi, bimbingan teknis, supervisi, dan evaluasi dan pelaporan di bidang standardisasi dan akreditasi perpustakaan.', '-', '-'),
(9, 'Pusat Pengembangan Perpustakaan Umum dan Khusus', 'Pusat Pengembangan Perpustakaan Umum dan Khusus mempunyai tugas melaksanakan perumusan dan pelaksanaan kebijakan, fasilitasi, pelaksanaan bimbingan teknis, supervisi, dan evaluasi dan pelaporan di bidang pengembangan dan pembinaan perpustakaan umum dan perpustakaan khusus.', '-', '-'),
(10, 'Pusat Pengembangan Perpustakaan Sekolah/Madrasah dan Perguruan Tinggi', 'Pusat Pengembangan Perpustakaan Sekolah/Madrasah dan Perguruan Tinggi mempunyai tugas melaksanakan perumusan dan pelaksanaan kebijakan, fasilitasi, pelaksanaan bimbingan teknis, supervisi, dan evaluasi dan pelaporan di bidang pengembangan dan pembinaan perpustakaan sekolah/madrasah dan perpustakaan perguruan tinggi.', '-', '-'),
(11, 'Pusat Analisis Perpustakaan dan Pengembangan Budaya Baca', 'Pusat Analisis Perpustakaan dan Pengembangan Budaya Baca mempunyai tugas melaksanakan perumusan dan pelaksanaan kebijakan, fasilitasi, bimbingan teknis, supervisi, dan evaluasi dan pelaporan di bidang analisis kebijakan perpustakaan dan pengembangan budaya baca.', '-', '-'),
(12, 'Pusat Data dan Informasi', 'Pusat Data dan Informasi mempunyai tugas melaksanakan perumusan dan pelaksanaan kebijakan, fasilitasi, bimbingan teknis, supervisi, dan evaluasi dan pelaporan di bidang pengelolaan data dan informasi perpustakaan.', '-', '-'),
(13, 'Pusat Pembinaan Pustakawan', 'Pusat Pembinaan Pustakawan mempunyai tugas melaksanakan perumusan dan pelaksanaan kebijakan, fasilitasi, bimbingan teknis, supervisi, dan evaluasi dan pelaporan di bidang pembinaan dan pengembangan pustakawan.', '-', '-'),
(14, 'Pusat Pendidikan dan Pelatihan', 'Pusat Pendidikan dan Pelatihan mempunyai tugas melaksanakan perumusan dan pelaksanaan kebijakan, fasilitasi, bimbingan teknis, supervisi, dan evaluasi dan pelaporan di bidang pendidikan dan pelatihan.', '-', '-'),
(15, 'Inspektorat', 'Inspektorat mempunyai tugas melaksanakan perumusan dan pelaksanaan kebijakan, fasilitasi, bimbingan teknis, supervisi, dan evaluasi dan pelaporan di bidang pengawasan internal.', '-', '-');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `aktivasi`
--
ALTER TABLE `aktivasi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_id` (`role_id`),
  ADD KEY `id_unit_kerja` (`id_unit_kerja`);

--
-- Indeks untuk tabel `pelamar`
--
ALTER TABLE `pelamar`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `surat_balasan`
--
ALTER TABLE `surat_balasan`
  ADD PRIMARY KEY (`id_surat_balasan`),
  ADD KEY `id_surat_permohonan` (`id_surat_permohonan`);

--
-- Indeks untuk tabel `surat_permohonan`
--
ALTER TABLE `surat_permohonan`
  ADD PRIMARY KEY (`id_permohonan`),
  ADD KEY `id_unit_kerja` (`id_unit`),
  ADD KEY `id_pelamar` (`id_pelamar`) USING BTREE;

--
-- Indeks untuk tabel `unit_kerja`
--
ALTER TABLE `unit_kerja`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `aktivasi`
--
ALTER TABLE `aktivasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `login`
--
ALTER TABLE `login`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `pelamar`
--
ALTER TABLE `pelamar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `surat_balasan`
--
ALTER TABLE `surat_balasan`
  MODIFY `id_surat_balasan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `surat_permohonan`
--
ALTER TABLE `surat_permohonan`
  MODIFY `id_permohonan` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `unit_kerja`
--
ALTER TABLE `unit_kerja`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `login`
--
ALTER TABLE `login`
  ADD CONSTRAINT `login_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `login_ibfk_2` FOREIGN KEY (`id_unit_kerja`) REFERENCES `unit_kerja` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `surat_balasan`
--
ALTER TABLE `surat_balasan`
  ADD CONSTRAINT `surat_balasan_ibfk_1` FOREIGN KEY (`id_surat_permohonan`) REFERENCES `surat_permohonan` (`id_permohonan`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `surat_permohonan`
--
ALTER TABLE `surat_permohonan`
  ADD CONSTRAINT `surat_permohonan_ibfk_2` FOREIGN KEY (`id_pelamar`) REFERENCES `pelamar` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `surat_permohonan_ibfk_3` FOREIGN KEY (`id_unit`) REFERENCES `unit_kerja` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
