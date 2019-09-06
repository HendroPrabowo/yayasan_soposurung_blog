-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 06, 2019 at 06:27 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `yayasan_soposurung_blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `akomodasi`
--

CREATE TABLE `akomodasi` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `text` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `akomodasi`
--

INSERT INTO `akomodasi` (`id`, `text`, `created_at`, `updated_at`) VALUES
(1, '<p>Asrama YASOP dibangun di atas area seluas 62.845 m2. Bagian utama dari asrama terdiri dari 3 unit bangunan dengan total luas area sebesar 1.036 m2 untuk siswa dan satu hall besar seuas 500 m2 yang berfungsi sebagai&nbsp;dining room&nbsp;dan&nbsp;meeting room. Terdapat juga dua bangunan rumah bertipe 90 sebagai tempat tinggal Kepala Asrama dan Wakil Kepala Asrama. Dan untuk tempat tinggal guru-guru kelas internasional ada dua unit bangunan sebagai&nbsp;guest house.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>', '2019-08-19 10:55:18', '2019-08-19 15:42:31');

-- --------------------------------------------------------

--
-- Table structure for table `belajar`
--

CREATE TABLE `belajar` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `text` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `belajar`
--

INSERT INTO `belajar` (`id`, `text`, `created_at`, `updated_at`) VALUES
(1, '<p>Fasilitas Belajar yayasan soposurung</p>', '2019-08-19 10:57:15', '2019-08-19 10:57:15');

-- --------------------------------------------------------

--
-- Table structure for table `blog_siswa`
--

CREATE TABLE `blog_siswa` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `judul` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `blog_siswa`
--

INSERT INTO `blog_siswa` (`id`, `nama`, `judul`, `link`, `created_at`, `updated_at`) VALUES
(1, 'Hendro Prabowo', 'Mitigasi', 'google.com', '2019-08-20 11:31:30', '2019-08-20 11:31:30');

-- --------------------------------------------------------

--
-- Table structure for table `carousels`
--

CREATE TABLE `carousels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `carousels`
--

INSERT INTO `carousels` (`id`, `post_id`, `created_at`, `updated_at`) VALUES
(4, 1, '2019-08-18 07:06:27', '2019-08-18 07:06:27'),
(6, 2, '2019-08-21 22:01:44', '2019-08-21 22:01:44'),
(7, 5, '2019-08-21 22:01:52', '2019-08-21 22:01:52');

-- --------------------------------------------------------

--
-- Table structure for table `daftar_prestasi`
--

CREATE TABLE `daftar_prestasi` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `prestasi` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `siswa` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `berita` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `daftar_prestasi`
--

INSERT INTO `daftar_prestasi` (`id`, `prestasi`, `siswa`, `berita`, `created_at`, `updated_at`) VALUES
(2, 'Juara 2 Nasional Olimpiade Matematika', 'Tigor', '--', '2019-08-19 16:55:31', '2019-08-19 16:55:31');

-- --------------------------------------------------------

--
-- Table structure for table `daftar_siswa`
--

CREATE TABLE `daftar_siswa` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `no_induk` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nama` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `kelas` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `daftar_siswa`
--

INSERT INTO `daftar_siswa` (`id`, `no_induk`, `nama`, `kelas`, `created_at`, `updated_at`) VALUES
(1, '11S15048', 'Hendro Prabowo', '12', '2019-08-19 16:14:33', '2019-08-19 16:23:00');

-- --------------------------------------------------------

--
-- Table structure for table `ekstrakurikuler`
--

CREATE TABLE `ekstrakurikuler` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `text` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ekstrakurikuler`
--

INSERT INTO `ekstrakurikuler` (`id`, `text`, `created_at`, `updated_at`) VALUES
(1, '<p><strong>Olahraga</strong></p>\r\n<p>Selain senam pagi, siswa asrama mendapat olahraga karate sekali seminggu dan berenang sekali seminggu. Latihan renang diadakan di kolam renang di desa Pagar Batu yang terletak kurang lebih 700 m dari asrama. Air kolam renang bersumber dari mata air abadi (spring water). Selain itu, tersedia di asrama beberapa sarana olahraga seperti tenis meja, bulu tangkis, bola basket dan bola voli.</p>\r\n<p><strong>Kesenian dan Budaya</strong></p>\r\n<p>Paduan suara seluruh siswa asrama atau kelompok dan solo merupakan salah satu kegiatan asrama. Selain itu, secara periodik diadakan latihan drama, tarian, dan budaya tradisional.</p>\r\n<p><strong>English class &amp; English days</strong></p>\r\n<p>SMA N 2 Balige sedang dalam proses persiapan menuju sekolah nasional bertaraf internasional. Maka, bahasa Inggris adalah suatu keharusan. Seluruh siswa-siswi kelas 1, 2, dan 3 mendapatkan pembekalan bahasa Inggris setiap minggunya yang dibawakan oleh guru Internasional yang didatangkan dari Jakarta.</p>\r\n<p>Bahasa dapat dikuasai dengan sering mempraktekkannya. Karenanya, English Days diterapkan setiap hari Senin, Rabu, dan Jumat. Pada 3 hari ini, setiap siswa-siswi Asrama Yayasan Soposurung menggunakan bahasa Inggris sebagai bahasa pengantar sehari-hari.</p>\r\n<p><strong>Pelatihan SPMB</strong></p>\r\n<p>Sedangkan untuk kelas 3, kegiatan sore hari adalah pelatihan untuk persiapan Seleksi Penerimaan Mahasiswa Baru (SPMB). Kegiatan ini dilaksanakan dari hari Senin hingga Kamis.</p>\r\n<p><strong>Lab Bahasa</strong></p>\r\n<p>SMA Negeri 2 Balige mempunyai Laboratorium Bahasa yang disumbangkan Bapak Cosmas Batubara. Seluruh siswa mendapat pelatihan di Laboratorium secara bergilir oleh guru bertaraf Internasional dari Jakarta sebagai dijelaskan di muka.</p>\r\n<p><strong>Komputer</strong></p>\r\n<p>Pelajaran penggunaan komputer dan beberapa paket program baku seperti paket office dan dasar-dasar databse disediakan oleh Yayasan. Seperti&nbsp; diutarakan sebelumnya, terdapat 1 bangunan laboratorium komputer yang terdiri dari 40 set komputer yang on-line 24 jam internet.Sebahagian besar komputer ini&nbsp; merupakan sumbangan dari alumni YASOP</p>\r\n<p>&nbsp;</p>', '2019-08-19 14:56:26', '2019-08-19 14:56:26');

-- --------------------------------------------------------

--
-- Table structure for table `it`
--

CREATE TABLE `it` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `text` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kategori` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id`, `kategori`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Pelajaran', '2019-08-03 21:12:15', '2019-08-03 21:12:15', NULL),
(2, 'Asrama', '2019-08-18 05:32:12', '2019-08-18 05:32:12', NULL),
(3, 'Perlombaan', '2019-08-21 21:59:15', '2019-08-21 21:59:15', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `kepala_asrama`
--

CREATE TABLE `kepala_asrama` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `text` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `kepala_asrama`
--

INSERT INTO `kepala_asrama` (`id`, `text`, `created_at`, `updated_at`) VALUES
(1, '<p><span style=\"font-size: 14pt;\">Untuk menjalankan tugas pembinaan kepada seluruh siswa, Asrama Yayasan Soposurung dipimpin oleh seorang Kepala Asrama beserta satu orang Wakil Kepala Asrama.</span></p>', '2019-08-19 04:06:46', '2019-08-19 04:07:21');

-- --------------------------------------------------------

--
-- Table structure for table `kesehatan`
--

CREATE TABLE `kesehatan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `text` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kontak`
--

CREATE TABLE `kontak` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kontak` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `kontak`
--

INSERT INTO `kontak` (`id`, `kontak`, `created_at`, `updated_at`) VALUES
(1, '<h1 style=\"text-align: center;\">Telp/Fax. (0632) 21496</h1>', '2019-08-19 00:10:22', '2019-08-19 00:10:22'),
(2, '<h1 style=\"text-align: center;\">Telp/Fax. (0632) 21496</h1>', '2019-08-19 00:10:22', '2019-08-19 00:10:22');

-- --------------------------------------------------------

--
-- Table structure for table `lainnya`
--

CREATE TABLE `lainnya` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `text` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `lainnya`
--

INSERT INTO `lainnya` (`id`, `text`, `created_at`, `updated_at`) VALUES
(1, '<p><strong>Bimbingan (Counceling)</strong></p>\r\n<p>Secara berkala para siswa mendapat pembekalan dari para pimpinan dan pembina Yayasan Soposurung, para tokoh atau pejabat negara. Beberapa Bapak Menteri telah memberikan ceramah dan pembekalan, dilanjutkan dengan tanya jawab. Bahkan Presiden RI Bapak Susilo Bambang Yudhoyono sudah pernah memberikan motivasi dan pembinaan kepada siswa/i Yasop. Secara berkala diadakan acara councelling terhadap sejumlah siswa sebagai perwakilan teman-temannya untuk mengetahui aspirasi, keluh kesah dan masalah siswa asrama. Kegiatan councelling diadakan pembina asrama dan pembina Yayasan.</p>', '2019-08-19 15:01:05', '2019-08-19 15:01:05');

-- --------------------------------------------------------

--
-- Table structure for table `lokasi`
--

CREATE TABLE `lokasi` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `lokasi` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `lokasi`
--

INSERT INTO `lokasi` (`id`, `lokasi`, `created_at`, `updated_at`) VALUES
(1, '<p><span style=\"font-size: 18pt;\"><strong>LOKASI</strong></span></p>\r\n<p>Asrama Yayasan Soposurung berada pada salah satu desa di pinggiran Danau Toba yaitu&nbsp;Soposurung. Terletak dikaki bukit dolok tolong menjadikannya cukup nyaman untuk menjadi tempat belajar karena jauh dari keramaian kota.</p>\r\n<p>Aksesibilitas</p>\r\n<p>Asrama Yayasan Soposurung dapat dicapai dengan angkutan darat selama 5 jam perjalan dari kota Medan (200 km).</p>\r\n<p>Selain itu bisa juga dicapai dengan angkutan udara melalui&nbsp;<a title=\"Wikipedia\" href=\"http://en.wikipedia.org/wiki/Kuala_Namu_International_Airport\" target=\"_blank\" rel=\"noopener\">Bandar Udara Internasional Kuala Namu</a>&nbsp;menuju&nbsp;<a title=\"Wikipedia\" href=\"http://id.wikipedia.org/wiki/Bandar_Udara_Silangit\" target=\"_blank\" rel=\"noopener\">Bandar Udara Silangit</a> (Siborong-borong). Kemudian dilanjutkan dengan berkendaraan (mobil) sekitar 15 menit dari Silangit ke Soposurung.</p>', '2019-08-19 00:01:02', '2019-08-19 00:09:32');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_07_25_032317_create_kategoris_table', 1),
(4, '2019_07_26_035244_create_posts_table', 1),
(5, '2019_08_18_130637_create_carousels_table', 2),
(6, '2019_08_19_030817_create_visimisis_table', 3),
(7, '2019_08_19_054049_create_sejarahs_table', 4),
(8, '2019_08_19_060612_create_pendiris_table', 5),
(11, '2019_08_19_063952_create_lokasis_table', 6),
(12, '2019_08_19_064016_create_kontaks_table', 6),
(18, '2019_08_19_101953_create_staf_pengajars_table', 7),
(19, '2019_08_19_102011_create_staf_pembinas_table', 7),
(20, '2019_08_19_102024_create_staf_pendukungs_table', 7),
(21, '2019_08_19_102101_create_struktur_organisasis_table', 7),
(22, '2019_08_19_102110_create_kepala_asramas_table', 7),
(23, '2019_08_19_153920_create_akomodasis_table', 8),
(24, '2019_08_19_153947_create_belajars_table', 8),
(25, '2019_08_19_154000_create_praktikums_table', 8),
(26, '2019_08_19_154013_create_kesehatans_table', 8),
(27, '2019_08_19_154028_create_its_table', 8),
(28, '2019_08_19_154042_create_olahragas_table', 8),
(29, '2019_08_19_154058_create_sosials_table', 8),
(30, '2019_08_19_180759_create_ekstrakurikulers_table', 9),
(31, '2019_08_19_180825_create_lainnyas_table', 9),
(32, '2019_08_19_180850_create_minat_bakats_table', 9),
(33, '2019_08_19_180905_create_rutinitas_table', 9),
(42, '2019_08_19_220520_create_organisasi_siswas_table', 10),
(43, '2019_08_19_220820_create_daftar_siswas_table', 10),
(44, '2019_08_19_220842_create_daftar_prestasis_table', 10),
(45, '2019_08_19_220903_create_blog_siswas_table', 10);

-- --------------------------------------------------------

--
-- Table structure for table `minat_bakat`
--

CREATE TABLE `minat_bakat` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `text` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `minat_bakat`
--

INSERT INTO `minat_bakat` (`id`, `text`, `created_at`, `updated_at`) VALUES
(1, '<p><strong>Olahraga</strong></p>\r\n<p>Selain senam pagi, siswa asrama mendapat olahraga karate sekali seminggu dan berenang sekali seminggu. Latihan renang diadakan di kolam renang di desa Pagar Batu yang terletak kurang lebih 700 m dari asrama. Air kolam renang bersumber dari mata air abadi (spring water). Selain itu, tersedia di asrama beberapa sarana olahraga seperti tenis meja, bulu tangkis, bola basket dan bola voli.</p>\r\n<p><strong>Kesenian dan Budaya</strong></p>\r\n<p>Paduan suara seluruh siswa asrama atau kelompok dan solo merupakan salah satu kegiatan asrama. Selain itu, secara periodik diadakan latihan drama, tarian, dan budaya tradisional.</p>\r\n<p><strong>Klub Minat dan Bakat</strong></p>\r\n<p>Sebagai remaja, siswa-sisiwi Asrama Yayasan Soposurung tentunya memiliki minat yang berbeda terhadap mata pelajaran sekolah (akademis) serta memiliki talenta yang berbeda pula di bidang non akademis. Karenanya, dibentuk klub-klub bagi mereka sesuai dengan minat dan talenta mereka (khusus untuk kelas 1 dan 2)</p>\r\n<p>Klub dibagi atas 2 bagian: akademik dan non-akademik</p>\r\n<p>Untuk akademik: klub Matematika, Fisika, Kimia, dan Biologi. Klub akademik ini masih dibagi 2: persiapan olimpiade dan klub penelitian (skala LAB)</p>\r\n<p>Sedangkan untuk non-akademik: huta Batak, Music and Bands, Drama, Books, Computer,&nbsp; Drawing and Arts, Modern Dance, Basketball, Football, dan Journalistic</p>\r\n<p>Diharapkan melalui klub-klub ini, setiap siswa-siswi dapat mengasah minat dan bakat mereka dan akhirnya dapat berprestasi sesuai bidang yang mereka minati juga.</p>\r\n<p>Sedangkan untuk kelas 3, kegiatan sore hari adalah pelatihan untuk persiapan Seleksi Penerimaan Mahasiswa Baru (SPMB). Kegiatan ini dilaksanakan dari hari Senin hingga Kamis.</p>\r\n<p><strong>Multimedia Komputer</strong></p>\r\n<p>Pelajaran penggunaan komputer dan beberapa paket program baku seperti paket office dan dasar-dasar databse disediakan oleh Yayasan. Seperti&nbsp; diutarakan sebelumnya, terdapat 1 bangunan laboratorium komputer yang terdiri dari 40 set komputer yang on-line 24 jam internet.Sebahagian besar komputer ini&nbsp; merupakan sumbangan dari alumni YASOP</p>', '2019-08-19 14:59:22', '2019-08-19 14:59:22');

-- --------------------------------------------------------

--
-- Table structure for table `olahraga`
--

CREATE TABLE `olahraga` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `text` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `organisasi_siswa`
--

CREATE TABLE `organisasi_siswa` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `text` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `organisasi_siswa`
--

INSERT INTO `organisasi_siswa` (`id`, `text`, `created_at`, `updated_at`) VALUES
(1, '<h2>List Organisasi Siswa</h2>', '2019-08-19 16:28:12', '2019-08-19 16:28:12');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pendiri`
--

CREATE TABLE `pendiri` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pendiri` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `pendiri`
--

INSERT INTO `pendiri` (`id`, `pendiri`, `created_at`, `updated_at`) VALUES
(1, '<h2>Pendiri Yayasan Soposurung</h2>\r\n<p>Bapak TB. Silalahi</p>', '2019-08-18 23:35:28', '2019-08-18 23:35:28');

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kategori_id` bigint(20) DEFAULT NULL,
  `gambar` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `judul` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `posting` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`id`, `kategori_id`, `gambar`, `judul`, `posting`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, NULL, 'posting/1.asdf.jpg', 'Post 1', '<p>Post 1</p>', '2019-08-03 21:43:57', '2019-08-18 07:00:29', NULL),
(2, 1, 'posting/2.Tes skelah.jpg', 'Post 2', '<p>Post 2</p>', '2019-08-03 21:57:18', '2019-08-03 21:57:18', NULL),
(3, 1, 'posting/3.Tes skelak lagi.png', 'Post 3', '<p>POst 3</p>\r\n<p><strong>Ini Bold</strong></p>\r\n<p><span style=\"text-decoration: underline;\">Ini Underline</span></p>', '2019-08-03 22:00:09', '2019-08-18 03:15:58', NULL),
(4, 1, 'posting/4.Postingan Setelah 17 Agustus.jpg', 'Postingan Setelah 17 Agustus', '<h2>Tulisan</h2>\r\n<p>Ini Isi dari postingan</p>\r\n<p><strong>Ini bold</strong></p>\r\n<p><em>Ini Italic</em></p>\r\n<p><span style=\"text-decoration: underline;\">Ini Underline</span></p>', '2019-08-18 03:05:30', '2019-08-18 04:44:51', NULL),
(5, 3, 'posting/5.Lomba Menggambar.jpg', 'Lomba Menggambar', '<h2>Test</h2>\r\n<p style=\"text-align: left;\">asdf</p>', '2019-08-21 21:59:56', '2019-08-21 21:59:56', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `praktikum`
--

CREATE TABLE `praktikum` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `text` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rutinitas`
--

CREATE TABLE `rutinitas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `text` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `rutinitas`
--

INSERT INTO `rutinitas` (`id`, `text`, `created_at`, `updated_at`) VALUES
(1, '<h3><strong>Siswa/i setiap hari melakukan :</strong></h3>\r\n<p><span lang=\"EN-US\">SENIN &ndash; KAMIS</span></p>\r\n<p><span lang=\"EN-US\">04.45 &ndash; 04.50&nbsp;: Bangun pagi</span></p>\r\n<p><span lang=\"EN-US\">04.50 &ndash; 05.05&nbsp;: Senam pagi</span></p>\r\n<p><span lang=\"EN-US\">05.05 &ndash; 05.55&nbsp;: Pembersihan, Merapikan&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ruangan</span></p>\r\n<p><span lang=\"EN-US\">05.55 &ndash; 05.59&nbsp;: Apel Makan Pagi</span></p>\r\n<p><span lang=\"EN-US\">05.59 &ndash; 06.20&nbsp;: Makan pagi</span></p>\r\n<p><span lang=\"EN-US\">06.20 &ndash; 06.35&nbsp;: Merapikan ruangan/ PBB*)</span></p>\r\n<p><span lang=\"EN-US\">06.35 &ndash; 06.55&nbsp;: Apel pagi</span></p>\r\n<p><span lang=\"EN-US\">06.55 &ndash; 07.10&nbsp;: Berangkat ke sekolah</span></p>\r\n<p><span lang=\"EN-US\">07.10 &ndash; 14.00&nbsp;: Belajar di sekolah</span></p>\r\n<p>14.<span lang=\"EN-US\">00 &ndash;&nbsp;</span>14.<span lang=\"EN-US\">15</span>&nbsp;: Pulang dari sekolah</p>\r\n<p><span lang=\"EN-US\">14.15 &ndash; 14.19&nbsp;: Apel Makan Siang</span></p>\r\n<p><span lang=\"EN-US\">14.19 &ndash; 14.39&nbsp;: Makan siang</span></p>\r\n<p><span lang=\"EN-US\">14.39 &ndash; 15.10&nbsp;:&nbsp;Power Nap</span></p>\r\n<p><span lang=\"EN-US\">15.10 &ndash; 15.14&nbsp;:&nbsp;</span>Apel siang</p>\r\n<p><span lang=\"EN-US\">15.14 &ndash; 16.32&nbsp;: Ekstrakurikuler jam I</span></p>\r\n<p><span lang=\"EN-US\">16.32 &ndash; 16.42&nbsp;:&nbsp;Break</span></p>\r\n<p><span lang=\"EN-US\">16.42 &ndash; 18.00&nbsp;: Ekstrakurikuler jam II</span></p>\r\n<p><span lang=\"EN-US\">18.00 &ndash; 18.40&nbsp;: Mandi sore, Pembersihan</span></p>\r\n<p><span lang=\"EN-US\">18.40 &ndash; 18.44&nbsp;: Apel Makan Malam</span></p>\r\n<p><span lang=\"EN-US\">18.44 &ndash; 19.04&nbsp;: Makan malam</span></p>\r\n<p><span lang=\"EN-US\">19.04 &ndash; 21.00&nbsp;: Belajar wajib</span></p>\r\n<p><span lang=\"EN-US\">21.00 &ndash; 21.04&nbsp;: Apel malam</span></p>\r\n<p><span lang=\"EN-US\">21.04 &ndash; 21.40&nbsp;:&nbsp;</span>m<span lang=\"EN-US\">enonton berita</span></p>\r\n<p><span lang=\"EN-US\">21.40 &ndash; 22.30&nbsp;: Belajar wajib</span></p>\r\n<p><span lang=\"EN-US\">22.30 &ndash; 04.45&nbsp;: Istirahat</span></p>\r\n<p><span lang=\"EN-US\">&nbsp;</span></p>\r\n<p><span lang=\"EN-US\">JUMAT</span></p>\r\n<p><span lang=\"EN-US\">04.45 &ndash; 04.50&nbsp;: Bangun pagi</span></p>\r\n<p><span lang=\"EN-US\">04.50 &ndash; 05.05&nbsp;: Senam pagi</span></p>\r\n<p><span lang=\"EN-US\">05.05 &ndash; 05.55&nbsp;: Pembersihan, Merapikan&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ruangan</span></p>\r\n<p><span lang=\"EN-US\">05.55 &ndash; 05.59&nbsp;: Apel Makan Pagi</span></p>\r\n<p><span lang=\"EN-US\">05.59 &ndash; 06.20&nbsp;: Makan pagi</span></p>\r\n<p><span lang=\"EN-US\">06.20 &ndash; 06.35&nbsp;: Merapikan ruangan/ PBB*)</span></p>\r\n<p><span lang=\"EN-US\">06.35 &ndash; 06.55&nbsp;: Apel pagi</span></p>\r\n<p><span lang=\"EN-US\">06.55 &ndash; 07.10&nbsp;: Berangkat ke sekolah</span></p>\r\n<p><span lang=\"EN-US\">07.10 &ndash; 1</span>1<span lang=\"EN-US\">.</span>45<span lang=\"EN-US\">&nbsp;: Belajar di sekolah</span></p>\r\n<p><span lang=\"EN-US\">11.4</span>5<span lang=\"EN-US\">&nbsp;&ndash;&nbsp;</span>12.<span lang=\"EN-US\">05</span>&nbsp;: Pulang dari sekolah</p>\r\n<p><span lang=\"EN-US\">1</span>2<span lang=\"EN-US\">.05 &ndash; 13.45</span>&nbsp;:&nbsp;<span lang=\"EN-US\">Kegiatan Mandiri</span>&nbsp;dan solat Jum&rsquo;at</p>\r\n<p><span lang=\"EN-US\">13.45 &ndash; 13.49&nbsp;: Apel Makan Siang</span></p>\r\n<p><span lang=\"EN-US\">13.49 &ndash; 14.09&nbsp;: Makan siang</span></p>\r\n<p><span lang=\"EN-US\">14.09 &ndash; 14.55&nbsp;:&nbsp;Power Nap</span></p>\r\n<p><span lang=\"EN-US\">1</span>4<span lang=\"EN-US\">.55 &ndash;&nbsp;</span>1<span lang=\"EN-US\">4</span>.<span lang=\"EN-US\">59</span>&nbsp;: Apel siang</p>\r\n<p><span lang=\"EN-US\">14.59 &ndash;&nbsp;</span>1<span lang=\"EN-US\">8</span>.<span lang=\"EN-US\">00&nbsp;: Esktrakurikuler</span></p>\r\n<p><span lang=\"EN-US\">18.00 &ndash; 18.40&nbsp;: Mandi sore, Pembersihan</span></p>\r\n<p><span lang=\"EN-US\">18.40 &ndash; 18.44&nbsp;: Apel Makan Malam</span></p>\r\n<p><span lang=\"EN-US\">18.44 &ndash; 19.04&nbsp;: Makan malam</span></p>\r\n<p><span lang=\"EN-US\">19.04 &ndash; 21.00&nbsp;: Belajar wajib</span></p>\r\n<p><span lang=\"EN-US\">21.00 &ndash; 21.04&nbsp;: Apel malam</span></p>\r\n<p><span lang=\"EN-US\">21.04 &ndash; 21.40&nbsp;:&nbsp;</span>m<span lang=\"EN-US\">enonton berita</span></p>\r\n<p><span lang=\"EN-US\">21.40 &ndash; 22.30&nbsp;: Belajar wajib</span></p>\r\n<p><span lang=\"EN-US\">22.30 &ndash; 04.45&nbsp;: Istirahat</span></p>\r\n<p><span lang=\"EN-US\">&nbsp;</span></p>\r\n<p><span lang=\"EN-US\">&nbsp;</span></p>\r\n<p><span lang=\"EN-US\">SABTU</span></p>\r\n<p><span lang=\"EN-US\">04.45 &ndash; 04.50&nbsp;: Bangun pagi</span></p>\r\n<p><span lang=\"EN-US\">04.50 &ndash; 05.05&nbsp;: Senam pagi</span></p>\r\n<p><span lang=\"EN-US\">05.05 &ndash; 05.55&nbsp;: Pembersihan, Merapikan ruangan</span></p>\r\n<p><span lang=\"EN-US\">05.55 &ndash; 05.59 : Apel Makan Pagi</span></p>\r\n<p><span lang=\"EN-US\">05.59 &ndash; 06.15&nbsp;: Makan pagi</span></p>\r\n<p><span lang=\"EN-US\">06.15 &ndash; 06.30&nbsp;: Merapikan ruangan</span></p>\r\n<p><span lang=\"EN-US\">06.30 &ndash; 06.55&nbsp;: Apel pagi</span></p>\r\n<p><span lang=\"EN-US\">06.55 &ndash; 07.10&nbsp;: Berangkat ke sekolah</span></p>\r\n<p><span lang=\"EN-US\">07.10 &ndash; 14.00&nbsp;: Belajar di sekolah</span></p>\r\n<p>14.<span lang=\"EN-US\">00 &ndash;&nbsp;</span>14.<span lang=\"EN-US\">15</span>&nbsp;: Pulang dari sekolah</p>\r\n<p><span lang=\"EN-US\">14.15 &ndash; 14.19&nbsp;: Apel Makan Siang</span></p>\r\n<p><span lang=\"EN-US\">14.19 &ndash; 14.39&nbsp;: Makan siang</span></p>\r\n<p><span lang=\"EN-US\">14.39 &ndash; 15.10&nbsp;:&nbsp;Power Nap</span></p>\r\n<p><span lang=\"EN-US\">15.10 &ndash; 15.14&nbsp;:&nbsp;</span>Apel siang</p>\r\n<p>1<span lang=\"EN-US\">5</span>.<span lang=\"EN-US\">14 &ndash; 16.30</span>&nbsp;:<span lang=\"EN-US\">&nbsp;Kurvey</span></p>\r\n<p><span lang=\"EN-US\">16.30 &ndash; 18.30&nbsp;: Olahraga Wajib</span></p>\r\n<p><span lang=\"EN-US\">18.30 &ndash; 19.00&nbsp;: Mandi sore, Pembersihan</span></p>\r\n<p><span lang=\"EN-US\">19.00 &ndash; 19.04&nbsp;: Apel Makan Malam</span></p>\r\n<p><span lang=\"EN-US\">19.04 &ndash; 19.30&nbsp;: Makan malam</span></p>\r\n<p><span lang=\"EN-US\">19.30 &ndash; 22.00&nbsp;: Acara bebas</span>&nbsp;dan terko<span lang=\"EN-US\">o</span>rdinir</p>\r\n<p><span lang=\"EN-US\">22.00 &ndash; 06.00&nbsp;: Istirahat</span></p>\r\n<p><span lang=\"EN-US\">&nbsp;</span></p>\r\n<p><span lang=\"EN-US\">MINGGU</span></p>\r\n<p><span lang=\"EN-US\">06.00 &ndash; 06.10&nbsp;: Bangun pagi</span></p>\r\n<p><span lang=\"EN-US\">06.10 &ndash; 07.00&nbsp;: Mandi pagi, Pembersihan</span></p>\r\n<p><span lang=\"EN-US\">07.00 &ndash; 07.04&nbsp;: Apel Makan Pagi</span></p>\r\n<p><span lang=\"EN-US\">07.04 &ndash; 07.30&nbsp;: Makan pagi</span></p>\r\n<p><span lang=\"EN-US\">07.30 &ndash; 1</span>6<span lang=\"EN-US\">.00&nbsp;: Pesiar/ Ibadah</span></p>\r\n<p><span lang=\"EN-US\">16.00 &ndash; 16.04&nbsp;: Apel Sore</span></p>\r\n<p><span lang=\"EN-US\">1</span>6<span lang=\"EN-US\">.04 &ndash;&nbsp;</span>18.00<span lang=\"EN-US\">&nbsp;: Olahraga Sore/Kegiatan Mandiri</span></p>\r\n<p><span lang=\"EN-US\">18.</span>0<span lang=\"EN-US\">0 &ndash; 1</span>8.30&nbsp;: Mandi sore</p>\r\n<p><span lang=\"EN-US\">18.30 &ndash; 18.34&nbsp;: Apel Makan Malam</span></p>\r\n<p><span lang=\"EN-US\">18.34 &ndash; 18.54&nbsp;: Makan malam</span></p>\r\n<p><span lang=\"EN-US\">18.54 &ndash; 19.20&nbsp;: Persiapan Kebaktian</span></p>\r\n<p><span lang=\"EN-US\">19.20 &ndash; 20.2</span>0<span lang=\"EN-US\">&nbsp;: Kebaktian Minggu di Asrama</span></p>\r\n<p><span lang=\"EN-US\">20.2</span>0<span lang=\"EN-US\">&nbsp;&ndash;&nbsp;</span>2<span lang=\"EN-US\">0</span>.<span lang=\"EN-US\">3</span>0<span lang=\"EN-US\">&nbsp;:&nbsp;</span>Pembinaan dan Pengarahan</p>\r\n<p>2<span lang=\"EN-US\">0</span>.<span lang=\"EN-US\">3</span>0<span lang=\"EN-US\">&nbsp;&ndash; 22.30&nbsp;: Belajar wajib</span></p>\r\n<p><span lang=\"EN-US\">22.30 &ndash;&nbsp;</span>0<span lang=\"EN-US\">4.45&nbsp;: Istirahat</span></p>', '2019-08-19 14:53:43', '2019-08-19 14:54:05');

-- --------------------------------------------------------

--
-- Table structure for table `sejarah`
--

CREATE TABLE `sejarah` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sejarah` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sejarah`
--

INSERT INTO `sejarah` (`id`, `sejarah`, `created_at`, `updated_at`) VALUES
(1, '<h1>Sejarah Yayasan Soposurung</h1>\r\n<p>Berdiri tahun 1970.</p>', '2019-08-18 22:57:50', '2019-08-18 23:02:22');

-- --------------------------------------------------------

--
-- Table structure for table `sosial`
--

CREATE TABLE `sosial` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `text` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `staf_pembina`
--

CREATE TABLE `staf_pembina` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `text` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `staf_pembina`
--

INSERT INTO `staf_pembina` (`id`, `text`, `created_at`, `updated_at`) VALUES
(1, '<h1>Staf Pembina</h1>\r\n<div>\r\n<p><span style=\"font-size: 14pt;\">Sebagai tenaga pengawas siswa/i Asrama Yasop yang bertanggung jawab mengawasi berlangsungnya kegiatan siswa/i , didatangkan 4 orang tentara Angkatan Darat. Periode masa tugas pengawas ini adalah 6 bulan, kemudian diganti dengan Angkatan Darat yang lain ataupun perpanjangan sesuai dengan aturan yang berlaku dalam kesatuan Angkatan Darat.</span><br /><br /><span style=\"font-size: 14pt;\">Kenapa Angkatan Darat?</span><br /><span style=\"font-size: 14pt;\">Angkatan Darat terkenal dengan kedisiplinan yang sangat kuat, dan punya komitmen dalam bertugas, dan bertanggungjawab sehingga diharapkan nilai-nilai ini dapat ditularkan kepada siswa.</span><br /><br /><span style=\"font-size: 14pt;\">Tugas pengawas adalah mengawasi kegiatan siswa/i selama 24 jam, menegakkan peraturan dinas dalam, kedisiplinan, dan pembinaan fisik.&nbsp;</span><br /><br /><span style=\"font-size: 14pt;\">Saat ini ada 4 orang yang menjadi pengawas siswa/i:</span></p>\r\n<ol>\r\n<li><span style=\"font-size: 14pt;\">Serda &nbsp;Nurul Azwan NRP 21100014720390 dari Kodam I/BB</span></li>\r\n<li><span style=\"font-size: 14pt;\">Serda Ahmad Ridwan NRP 21110259260590 dari Kodam I/BB</span></li>\r\n<li><span style=\"font-size: 14pt;\">Serda (K) Utari Dian Susi NRP 21120234740493 dari Kodam I/BB</span></li>\r\n<li><span style=\"font-size: 14pt;\">Serda (K) Jumita Sinaga NRP 21110265850991 dari Kodam I/BB</span></li>\r\n</ol>\r\n</div>', '2019-08-19 04:17:00', '2019-08-19 04:17:32');

-- --------------------------------------------------------

--
-- Table structure for table `staf_pendukung`
--

CREATE TABLE `staf_pendukung` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `text` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `staf_pendukung`
--

INSERT INTO `staf_pendukung` (`id`, `text`, `created_at`, `updated_at`) VALUES
(1, '<h1>Staf Pendukung</h1>\r\n<div>\r\n<p>Librarian: Manginar Silalahi<br />Karyawan Dapur:</p>\r\n<p>1. Ananurviana</p>\r\n<p>2. Roselli Simangunsong</p>\r\n<p>3. Juwita Siagian</p>\r\n<p>4. Mastiani Siagian</p>\r\n<p>5. Muspida Nainggolan</p>\r\n<p>6. Roni Siagian</p>\r\n<p>7. Mangatas Siagian</p>\r\n<p>8. Agustinus Napitupulu</p>\r\n<p>9. Supardi</p>\r\n<p>Satpam:</p>\r\n<p>1. Hotler Siahaan</p>\r\n<p>2. Damianus Nainggolan</p>\r\n<p>3. Partogi Sinaga</p>\r\n<p>4. Gokman Panjaitan</p>\r\n<p>5. Tangkas Siahaan</p>\r\n<p>6. Wagiman</p>\r\n<p>Supir: Gunawan Silalahi<br />Tukang: Charles Hutapea<br />Cleaning Service: Iramawaty Hutajulu<br />Pertamanan: Rosdiani Rajagukguk dan Harys Siahaan<br />Penjaga Kantin: Lusiana Napitupulu dan Tami Saragih</p>\r\n</div>', '2019-08-19 04:20:26', '2019-08-19 15:41:20');

-- --------------------------------------------------------

--
-- Table structure for table `staf_pengajar`
--

CREATE TABLE `staf_pengajar` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `text` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `staf_pengajar`
--

INSERT INTO `staf_pengajar` (`id`, `text`, `created_at`, `updated_at`) VALUES
(1, '<p><strong><span style=\"font-size: 14pt;\">Guru Kelas Internasional</span></strong><br /><span style=\"font-size: 14pt;\">Yayasan Soposurung menyediakan lima orang guru ( Matematika, Kimia, Fisika, Biologi dan Bahasa Inggris) untuk mengajar kelas internasional dan tentu saja dengan pengantar Bahasa Inggris dan standar internasional bagi siswa/i Asrama Yayasan Soposurung&nbsp;</span></p>', '2019-08-19 04:13:42', '2019-08-19 04:13:42');

-- --------------------------------------------------------

--
-- Table structure for table `struktur_organisasi`
--

CREATE TABLE `struktur_organisasi` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `text` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `struktur_organisasi`
--

INSERT INTO `struktur_organisasi` (`id`, `text`, `created_at`, `updated_at`) VALUES
(1, '<h1>Empty</h1>', '2019-08-19 04:23:33', '2019-08-19 04:23:33');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', NULL, '$2y$10$nAUyWoa4I13TD1y2QWWC3ukvLBVal4aE1Fnx2Wnu/u0za5SWUzQHu', NULL, '2019-08-03 20:57:30', '2019-08-03 20:57:30');

-- --------------------------------------------------------

--
-- Table structure for table `visimisi`
--

CREATE TABLE `visimisi` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `visimisi` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `visimisi`
--

INSERT INTO `visimisi` (`id`, `visimisi`, `created_at`, `updated_at`) VALUES
(3, '<h3><strong>Visi dan Misi Yayasan Soposurung :</strong></h3>\r\n<p><strong>Visi :</strong></p>\r\n<p>1. Membangun SDM unggul</p>\r\n<p>2. Unggul dalam segala bidang</p>\r\n<p><strong>Misi :</strong></p>\r\n<p>1. Membangun kerjasama</p>\r\n<p>2. Test</p>', '2019-08-18 20:52:57', '2019-08-21 21:57:28');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `akomodasi`
--
ALTER TABLE `akomodasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `belajar`
--
ALTER TABLE `belajar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_siswa`
--
ALTER TABLE `blog_siswa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carousels`
--
ALTER TABLE `carousels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `daftar_prestasi`
--
ALTER TABLE `daftar_prestasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `daftar_siswa`
--
ALTER TABLE `daftar_siswa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ekstrakurikuler`
--
ALTER TABLE `ekstrakurikuler`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `it`
--
ALTER TABLE `it`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kepala_asrama`
--
ALTER TABLE `kepala_asrama`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kesehatan`
--
ALTER TABLE `kesehatan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kontak`
--
ALTER TABLE `kontak`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lainnya`
--
ALTER TABLE `lainnya`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lokasi`
--
ALTER TABLE `lokasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `minat_bakat`
--
ALTER TABLE `minat_bakat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `olahraga`
--
ALTER TABLE `olahraga`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `organisasi_siswa`
--
ALTER TABLE `organisasi_siswa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `pendiri`
--
ALTER TABLE `pendiri`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `praktikum`
--
ALTER TABLE `praktikum`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rutinitas`
--
ALTER TABLE `rutinitas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sejarah`
--
ALTER TABLE `sejarah`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sosial`
--
ALTER TABLE `sosial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staf_pembina`
--
ALTER TABLE `staf_pembina`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staf_pendukung`
--
ALTER TABLE `staf_pendukung`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staf_pengajar`
--
ALTER TABLE `staf_pengajar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `struktur_organisasi`
--
ALTER TABLE `struktur_organisasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `visimisi`
--
ALTER TABLE `visimisi`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `akomodasi`
--
ALTER TABLE `akomodasi`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `belajar`
--
ALTER TABLE `belajar`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `blog_siswa`
--
ALTER TABLE `blog_siswa`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `carousels`
--
ALTER TABLE `carousels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `daftar_prestasi`
--
ALTER TABLE `daftar_prestasi`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `daftar_siswa`
--
ALTER TABLE `daftar_siswa`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ekstrakurikuler`
--
ALTER TABLE `ekstrakurikuler`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `it`
--
ALTER TABLE `it`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `kepala_asrama`
--
ALTER TABLE `kepala_asrama`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `kesehatan`
--
ALTER TABLE `kesehatan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kontak`
--
ALTER TABLE `kontak`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `lainnya`
--
ALTER TABLE `lainnya`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `lokasi`
--
ALTER TABLE `lokasi`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `minat_bakat`
--
ALTER TABLE `minat_bakat`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `olahraga`
--
ALTER TABLE `olahraga`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `organisasi_siswa`
--
ALTER TABLE `organisasi_siswa`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pendiri`
--
ALTER TABLE `pendiri`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `praktikum`
--
ALTER TABLE `praktikum`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rutinitas`
--
ALTER TABLE `rutinitas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sejarah`
--
ALTER TABLE `sejarah`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sosial`
--
ALTER TABLE `sosial`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `staf_pembina`
--
ALTER TABLE `staf_pembina`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `staf_pendukung`
--
ALTER TABLE `staf_pendukung`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `staf_pengajar`
--
ALTER TABLE `staf_pengajar`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `struktur_organisasi`
--
ALTER TABLE `struktur_organisasi`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `visimisi`
--
ALTER TABLE `visimisi`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
