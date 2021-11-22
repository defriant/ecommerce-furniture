-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 22 Nov 2021 pada 15.22
-- Versi server: 10.4.17-MariaDB
-- Versi PHP: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `furniture`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `id` varchar(255) NOT NULL,
  `jenis` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `harga` bigint(20) NOT NULL,
  `stock` int(11) NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `deskripsi` text NOT NULL,
  `terjual` bigint(20) NOT NULL,
  `dilihat` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`id`, `jenis`, `nama`, `harga`, `stock`, `gambar`, `deskripsi`, `terjual`, `dilihat`, `created_at`, `updated_at`) VALUES
('kitchen-set-hitam-putih-2', 'kitchen_set', 'Kitchen Set Hitam Putih', 8500000, 0, 'kitchen-set_1623092632_1623189770.jpg', 'Material dasar adalah blockboard dengan ketebalan 18mm, Perekat hpl terbaik di kelasnya dengan PRIMA-D(Biru), Engsel SLOWMOTION, finish HPL.', 3, 17, '2021-06-05 23:40:22', '2021-10-17 07:06:29'),
('kitchen-set-minimalis-2', 'kitchen_set', 'Kitchen Set Minimalis', 12000000, 1, 'image-1-1024x1024_1623286011.jpg', 'Kitchen Set Minimalis dengan desain yang elegan\r\n\r\nSpesifikasi Bahan :\r\n- blockboard dengan ketebalan 18mm\r\n- Perekat hpl terbaik di kelasnya dengan PRIMA-D(Biru)\r\n- Engsel SLOWMOTION\r\n- finish HPL.', 5, 18, '2021-06-10 00:46:51', '2021-11-02 03:14:46'),
('kitchen-set-minimalis-3', 'kitchen_set', 'Kitchen Set Minimalis', 12000000, 1, 'kitchen set design_1623286069.jpg', 'Kitchen Set Minimalis dengan desain yang elegan\r\n\r\nSpesifikasi Bahan :\r\n- blockboard dengan ketebalan 18mm\r\n- Perekat hpl terbaik di kelasnya dengan PRIMA-D(Biru)\r\n- Engsel SLOWMOTION\r\n- finish HPL.', 1, 4, '2021-06-10 00:47:49', '2021-11-09 13:43:40'),
('kitchen-set-minimalis-4', 'kitchen_set', 'Kitchen Set Minimalis', 10000000, 3, 'e8yn02w5u6a8o4ccgzshco6yno9i483n_1623285974.jpg', 'Kitchen Set Minimalis dengan desain yang elegan\r\n\r\nSpesifikasi Bahan :\r\n- blockboard dengan ketebalan 18mm\r\n- Perekat hpl terbaik di kelasnya dengan PRIMA-D(Biru)\r\n- Engsel SLOWMOTION\r\n- finish HPL.', 0, 2, '2021-06-10 00:46:14', '2021-11-01 14:42:09'),
('kursi-direktur', 'kursi', 'Kursi direktur', 700000, 20, 'kursi direktur-1634446164_1635821862.jpg', 'kursi direktur warna coklat', 1, 1, '2021-11-02 02:57:42', '2021-11-04 03:29:48'),
('kursi-kecil', 'kursi', 'Kursi Kecil', 150000, 28, 'J5u8qI6BOjyTnHmXgrT64w_1623092099_1623189718.jpg', 'test', 2, 3, '2021-06-08 22:01:58', '2021-11-04 02:44:19'),
('kursi-makan-minimalis', 'kursi', 'Kursi Makan Minimalis', 800000, 4, 'Kursi-Makan-Minimalis-2_1623356969.jpg', 'Spesifikasi Bahan :\r\n\r\n- Tinggi 50 cm\r\n- Warna Kayu Cokelat\r\n- Busa putih', 15, 20, '2021-06-10 20:29:29', '2021-10-17 04:48:54'),
('kursi-tamu-jati', 'kursi', 'Kursi Tamu Jati', 5000000, 1, 'maxresdefault_1623357010.jpg', 'Spesifikasi Produk:\r\n\r\n* Tipe : 221\r\n* Dimensi produk :\r\n-. 2 seater Panjang : 120 cm\r\n-. 1 seater Panjang : 80 cm\r\n-. Lebar : 72 cm\r\n-. Tinggi dudukan dr bawah 40cm\r\n-. Tinggi kayu belakang 79cm\r\n\r\n* Bahan : Kayu dan Busa', 0, 1, '2021-06-10 20:30:10', '2021-09-16 20:44:47'),
('kursi-tamu-kayu-jati-minimalis', 'kursi', 'Kursi Tamu Kayu Jati Minimalis', 6000000, 1, 'Kursi Tamu Minimalis 3_1623356879.jpg', 'Spesifikasi Produk:\r\n\r\n* Tipe : 221\r\n* Dimensi produk :\r\n-. 2 seater Panjang : 120 cm\r\n-. 1 seater Panjang : 80 cm\r\n-. Lebar : 72 cm\r\n-. Tinggi dudukan dr bawah 40cm\r\n-. Tinggi kayu belakang 79cm\r\n\r\n* Bahan : Kayu dan Busa', 0, 0, '2021-06-10 20:27:59', '2021-06-10 20:27:59'),
('lemari-baju-minimalis-dengan-laci-2', 'lemari', 'Lemari Baju Minimalis Dengan Laci', 13000000, 1, 'collection6355_1623288033.jpg', 'Lemari Baju Minimalis HPL\r\nBahan Material dari bahan berkwalitas\r\nUkuran : 2,5 Meter x 2 Meter\r\n\r\nSpesifikasi Bahan:\r\n1, Playwood blokmin 18 mili\r\n2, Laminating HPL Taco \r\n3, Fitting Engesel slowmotion', 6, 11, '2021-06-10 01:20:33', '2021-06-10 01:31:39'),
('lemari-bawah-tangga-mini-2', 'lemari', 'Lemari Bawah Tangga Mini', 5000000, 1, 'f7afa2b71e8341459e104507b88325af-23_1623288151.jpg', 'Lemari  Bawah Tangga Minimalis HPL\r\nBahan Material dari bahan berkwalitas\r\nUkuran : 1 Meter x 2 Meter\r\n\r\nSpesifikasi Bahan :\r\n1, Playwood blokmin 18 mili\r\n2, Laminating HPL Taco Black Doff (custom ) untuk lapisan luar, warna putih melamin untuk bagian dalam lemari/rak.\r\n3, Fitting Engesel slowmotion', 0, 0, '2021-06-10 01:22:31', '2021-06-10 01:22:31'),
('lemari-bawah-tangga-minimalis-2', 'lemari', 'Lemari Bawah Tangga Minimalis', 6700000, 1, 'f75fd23bb0f6b1e176c5e057dd45ea5d_1623287894.jpg', 'Lemari Rak Sepatu Bawah Tangga Minimalis HPL\r\nBahan Material dari bahan berkwalitas\r\nUkuran : 2 meter x 1,5 meter\r\n\r\nSpesifikasi Bahan :\r\n1, Playwood blokmin 18 mili\r\n2, Laminating HPL Taco', 0, 0, '2021-06-10 01:18:14', '2021-06-10 01:32:10'),
('lemari-pakaian-3-pintu-2', 'lemari', 'Lemari Pakaian 3 Pintu', 4000000, 10, 'siantano_lemari-pakaian-3-pintu---siantano-lp-383-ss---medan_full02_1623092236_1623189847.jpg', 'Lemari Baju Minimalis HPL\r\nBahan Material dari bahan berkwalitas\r\nUkuran : 1,5 Meter x 2 Meter\r\n\r\nSpesifikasi Bahan:\r\n1, Playwood blokmin 18 mili\r\n2, Laminating HPL Taco \r\n3, Fitting Engesel slowmotion', 0, 0, '2021-06-08 22:04:07', '2021-06-10 01:32:40'),
('meja-belajar-minimalis-2', 'meja', 'Meja Belajar Minimalis', 4500000, 1, 'meja-belajar-anak-ada-laci-1_1623356321.jpg', 'Meja Belajar Minimalis HPL\r\nBahan Material dari bahan berkwalitas\r\n\r\n1, Playwood blokmin 18 mili\r\n2, Laminating HPL Taco white untuk lapisan luar, warna putih melamin untuk bagian dalam Meja.\r\n3. Size 90x40x72cm', 0, 2, '2021-06-10 20:18:41', '2021-11-01 14:52:31'),
('meja-cafe-minimalis-2', 'meja', 'Meja Cafe Minimalis', 500000, 30, 'Meja-Cafe-Minimalis-Minerva2_1623092009_1623189741.jpg', 'Meja Cafe Minimalis HPL\r\nBahan Material dari bahan berkwalitas\r\n\r\n1, Playwood blokmin 18 mili\r\n2, Laminating HPL Taco  lapisan luar\r\n3. Size 90x40x72cm', 0, 0, '2021-06-08 22:02:21', '2021-06-10 20:20:09'),
('meja-kantor-minimalis-2', 'meja', 'Meja Kantor Minimalis', 5000000, 1, '4613fc230a1b521b1972e6366f218ae8_1623288550.jpg', 'Meja Kantor Minimalis HPL\r\nBahan Material dari bahan berkwalitas\r\n\r\n1, Playwood blokmin 18 mili\r\n2, Laminating HPL Taco white untuk lapisan luar, warna putih melamin untuk bagian dalam Meja.\r\n3. Size 90x40x72cm', 0, 1, '2021-06-10 01:29:10', '2021-11-01 14:44:43'),
('meja-tamu-2', 'meja', 'Meja Tamu', 4500000, 2, '0646b2409ed735dfebb62ab723def519_1623288471.jpg', 'Meja Tamu  Minimalis HPL\r\nBahan Material dari bahan berkwalitas\r\n\r\n1, Playwood blokmin 18 mili\r\n2, Laminating HPL Taco Black Doff (custom ) untuk lapisan luar, warna putih melamin untuk bagian dalam Meja.\r\n3. Size 60x40x72cm', 0, 1, '2021-06-10 01:27:51', '2021-11-01 14:42:05'),
('tempat-tidur-anak-cowo-minimalis-2', 'tempat_tidur', 'Tempat Tidur Anak Cowo Minimalis', 7000000, 1, 'tempat-tidur-anak-minimalis_1623356080.jpg', 'SPESIFIKASI PRODUK\r\nDimension:\r\n* Overall Dimension : 1 meter x 2 meter\r\n* Ketinggian dari lantai ke rangka : 23cm\r\n* Ketinggian Kaki : 3cm\r\n\r\nBahan Material:\r\n* Upholstery: Vienna Polyesther / Cherokee Sythetic Leather\r\n* Busa : Super Premium Yellow 32\r\n\r\n* Frame : Kayu Solid Certified Meranti / Plywood\r\n* Ambalan : Solid Acacia Wood / Kayu Akasia\r\n* Kaki : Solid Acacia Wood / Kayu Akasia\r\n* Finishing : Melamine\r\n\r\n*Process : Handcrafted\r\n*Style : Modern Contemporary\r\n\r\nProduk tidak termasuk Kasur / Springbed / Bantal atau Accessories lainnya', 0, 0, '2021-06-10 01:35:19', '2021-06-10 20:14:40'),
('tempat-tidur-anak-minimalis-2', 'tempat_tidur', 'Tempat Tidur Anak Minimalis', 7000000, 2, 'Tempat-Tidur-Anak-Jati-Minimalis-3_1623286716.jpg', 'SPESIFIKASI PRODUK\r\nDimension:\r\n* Overall Dimension : 1 meter x 2 meter\r\n* Ketinggian dari lantai ke rangka : 23cm\r\n* Ketinggian Kaki : 3cm\r\n\r\nBahan Material:\r\n* Upholstery: Vienna Polyesther / Cherokee Sythetic Leather\r\n* Busa : Super Premium Yellow 32\r\n\r\n* Frame : Kayu Solid Certified Meranti / Plywood\r\n* Ambalan : Solid Acacia Wood / Kayu Akasia\r\n* Kaki : Solid Acacia Wood / Kayu Akasia\r\n* Finishing : Melamine\r\n\r\n*Process : Handcrafted\r\n*Style : Modern Contemporary\r\n\r\nProduk tidak termasuk Kasur / Springbed / Bantal atau Accessories lainnya', 0, 0, '2021-06-10 00:58:36', '2021-06-10 01:34:48'),
('tempat-tidur-laci-minimalis', 'tempat_tidur', 'Tempat Tidur Laci Minimalis', 7000000, 1, 'Dipan_Laci_Minimalis_1623286554.jpg', 'Tempat tidur  minimalis dengan laci mini.\r\n\r\nSPESIFIKASI PRODUK\r\nDimension:\r\n* Overall Dimension : P (102 / 132 / 172 / 192 / 212cm) x L 214cm x T 95cm\r\n* Ketinggian dari lantai ke rangka : 23cm\r\n* Ketinggian Kaki : 3cm\r\n\r\nBahan Material:\r\n* Upholstery: Vienna Polyesther / Cherokee Sythetic Leather\r\n* Busa : Super Premium Yellow 32\r\n\r\n* Frame : Kayu Solid Certified Meranti / Plywood\r\n* Ambalan : Solid Acacia Wood / Kayu Akasia\r\n* Kaki : Solid Acacia Wood / Kayu Akasia\r\n* Finishing : Melamine\r\n\r\n*Process : Handcrafted\r\n*Style : Modern Contemporary\r\n\r\nProduk tidak termasuk Kasur / Springbed / Bantal atau Accessories lainnya', 0, 0, '2021-06-10 00:55:54', '2021-06-10 00:55:54'),
('tempat-tidur-minimalis', 'tempat_tidur', 'Tempat Tidur Minimalis', 8000000, 3, 'R3cc806b484af8c19f85a31dbdb19430a_1623286450.jpg', 'SPESIFIKASI PRODUK\r\nDimension:\r\n* Overall Dimension : P (102 / 132 / 172 / 192 / 212cm) x L 214cm x T 95cm\r\n* Ketinggian dari lantai ke rangka : 23cm\r\n* Ketinggian Kaki : 3cm\r\n\r\nBahan Material:\r\n* Upholstery: Vienna Polyesther / Cherokee Sythetic Leather\r\n* Busa : Super Premium Yellow 32\r\n\r\n* Frame : Kayu Solid Certified Meranti / Plywood\r\n* Ambalan : Solid Acacia Wood / Kayu Akasia\r\n* Kaki : Solid Acacia Wood / Kayu Akasia\r\n* Finishing : Melamine\r\n\r\n*Process : Handcrafted\r\n*Style : Modern Contemporary\r\n\r\nProduk tidak termasuk Kasur / Springbed / Bantal atau Accessories lainnya', 0, 1, '2021-06-10 00:54:10', '2021-09-27 03:07:18');

-- --------------------------------------------------------

--
-- Struktur dari tabel `confirm_regis`
--

CREATE TABLE `confirm_regis` (
  `id` varchar(20) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `telp` varchar(30) NOT NULL,
  `alamat` text NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `code` varchar(10) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `confirm_regis`
--

INSERT INTO `confirm_regis` (`id`, `nama`, `telp`, `alamat`, `email`, `password`, `code`, `created_at`, `updated_at`) VALUES
('1621960522', 'Afif Defriant', '081313131313', 'Bekasi Utara', 'napis@gmail.com', 'eyJpdiI6IkR0ZWZMQjlIM0xWR1VmN3ZoUHZiYkE9PSIsInZhbHVlIjoiUDUrUWhFM1lRS09zdWNHMDFsL0Z6dz09IiwibWFjIjoiZTdjNmE1ZTc3NTBhZjM4MzNmYmQwNzFhODNjMWFlOGI1NWQ4MGZkZDY0MzdhNmQ3NDI2YTA0N2Q0MDRiZmU1YyJ9', '4385', '2021-05-25 09:35:22', '2021-05-25 09:35:49'),
('1621961234', 'Afif Defriant', '081313131313', 'Bekasi Utara', 'napis@gmail.com', 'eyJpdiI6IlpadGM3UTgxNUVBQ3dhN0J5a1cwZWc9PSIsInZhbHVlIjoiMnhLSU54aGlTTTM4dUk3QjU2QjdwUT09IiwibWFjIjoiN2YxMDU4ZDYzN2M0ZDIzZDRlZWIyNzQ1OWQ1NjllMmUxNjcxMmQ1YWJlNmRmODViMjExNGIwYzRjZDg1ZDVhZCJ9', '8691', '2021-05-25 09:47:14', '2021-05-25 09:47:22'),
('1621961282', 'Afif Defriant', '081313131313', 'Bekasi Utara', 'napis@gmail.com', 'eyJpdiI6ImJ2c1RBVU9td3V6MGtjbWUxalZMWmc9PSIsInZhbHVlIjoiRjhYKzBzYytGTlJxZWZxcmc1blZzQT09IiwibWFjIjoiNmU0ODljMzg4OGRlMDIyMWEyMTQyNGRkNmJmNDMwZTM4ZTlmZjZjMTY1MDVjYWI3MjUzMTBjOTg0YjNjYzIwMyJ9', '2730', '2021-05-25 09:48:02', '2021-05-25 09:48:09'),
('1621961325', 'Afif Defriant', '081313131313', 'Bekasi Utara', 'napis@gmail.com', 'eyJpdiI6IldoWmljMmlyL3FIT2lOM1hQNkNYVEE9PSIsInZhbHVlIjoiZnNCVkxYWVZFUVladlBpVW4zOEc1QT09IiwibWFjIjoiMTg5YmM1NjY5NzZmMmY1YmIxN2NlZjY1NmQxZTQ1N2M0OTIxNzgxYzBiNTkzYmVmOTliMWY0MDJiOGQwNjllNiJ9', '2805', '2021-05-25 09:48:45', '2021-05-25 09:48:52'),
('1621961462', 'Afif Defriant', '081313131313', 'Bekasi Utara', 'napis@gmail.com', 'eyJpdiI6InFkYU1Rb3VoT1JJL0RmdVlQcVFSWmc9PSIsInZhbHVlIjoiZzg5ZG1YZkorcEJOUWtEU3krZGNyZz09IiwibWFjIjoiYTVjNGYzZjNjZDUwMGZkNzY3MWFlNDI0ZDE4MDY2ODVkZTgxMDFjOWRhN2Y2NzQxMWI4Y2YxNDZhNmU4NGRkYiJ9', '2116', '2021-05-25 09:51:03', '2021-05-25 09:51:03'),
('1621961501', 'Afif Defriant', '081313131313', 'Bekasi Utara', 'napis@gmail.com', 'eyJpdiI6IlhsYkRlOFZTRElkcjgxYXcrbWNEK2c9PSIsInZhbHVlIjoiVlN5ZkFteDhHQUgzVlVYT1BjMkdTdz09IiwibWFjIjoiMjg4YWFmNGE4YTEwNGIwZjg4ZGFmM2VlMjM2OTcwZTMwNWUwZjgyMTgxMjZmNjBjNzkwZDVhYWRiODFhODQ2MSJ9', '9233', '2021-05-25 09:51:41', '2021-05-25 09:51:49'),
('1621961619', 'Afif Defriant', '081313131313', 'Bekasi Utara', 'napis@gmail.com', 'eyJpdiI6IjVUbXphaEY4S3gzdHFDNTYwNEc2QWc9PSIsInZhbHVlIjoiSlpUOGVqaVFnNEV4RjVVeGd6cW03dz09IiwibWFjIjoiYTM3OWJhZTMyMGY1NzBlMzU0NDcyNDUyNTM5NjEzNzA5Y2IxM2E2Y2YwZjYyODZlNzQ3M2UxZmJiNzg4M2M2YSJ9', '6570', '2021-05-25 09:53:39', '2021-05-25 09:53:46'),
('1621961663', 'Afif Defriant', '081313131313', 'Bekasi Utara', 'napis@gmail.com', 'eyJpdiI6InkrdUxWYlVsN0JxaVVqejRaY3NFWEE9PSIsInZhbHVlIjoieVkzMi9ZK2NHcDIwR3NVRWFxaHNoZz09IiwibWFjIjoiMDZmMDdmZDYzY2FjMDBhYTAyYmVjOGRhNTdhNGE3NTg4M2E4MDQ5OTMxMDNmNGZkYmQ0OWEzMzFmNWFjOTYxMiJ9', '0893', '2021-05-25 09:54:23', '2021-05-25 09:54:23'),
('1621962841', 'Afif Defriant', '081313131313', 'Bekasi Utara', 'napis@gmail.com', 'eyJpdiI6IlhoMFdTODV0SjhvSVRmcXJ5aElDY2c9PSIsInZhbHVlIjoiVXhUVmJ1SzFKL2IxRElZR2xLQXpaZz09IiwibWFjIjoiYjFlZjkxZjI2YTY5YmZhZjllMzYwNmUzNGYwOGE4ZjJhNTc3NmFlYmVhMzdhOTkzOTBiMzA0MDNlNWI0NGI5NyJ9', '6869', '2021-05-25 10:14:01', '2021-05-25 10:14:01');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `keranjang`
--

CREATE TABLE `keranjang` (
  `id` bigint(20) NOT NULL,
  `user_id` varchar(20) NOT NULL,
  `barang_id` varchar(50) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `harga` varchar(100) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `total` varchar(100) NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `keranjang`
--

INSERT INTO `keranjang` (`id`, `user_id`, `barang_id`, `nama`, `harga`, `jumlah`, `total`, `gambar`, `url`, `created_at`, `updated_at`) VALUES
(180, '35', 'kursi-kecil', 'Kursi Kecil', '150000', 1, '150000', 'J5u8qI6BOjyTnHmXgrT64w_1623092099_1623189718.jpg', '/produk/kursi-kecil', '2021-07-14 07:21:52', '2021-07-14 07:22:22');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `notifikasi`
--

CREATE TABLE `notifikasi` (
  `id` bigint(20) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `jenis` varchar(20) NOT NULL,
  `notif` text NOT NULL,
  `url` varchar(255) NOT NULL,
  `is_read` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `notifikasi`
--

INSERT INTO `notifikasi` (`id`, `user_id`, `jenis`, `notif`, `url`, `is_read`, `created_at`, `updated_at`) VALUES
(59, '26', 'pesanan', 'Pesananmu telah dikonfirmasi oleh admin', '/pesanan/2606057096', 1, '2021-06-05 15:53:31', '2021-11-04 03:30:10'),
(60, '26', 'pembayaran', 'Pembayaran telah divalidasi', '/pesanan/2606057096', 1, '2021-06-05 15:53:55', '2021-11-04 03:30:10'),
(61, '26', 'pesanan', 'Pesananmu sedang dikirim ke Bekasi Utara', '/pesanan/2606057096', 1, '2021-06-05 15:54:11', '2021-11-04 03:30:10'),
(62, '26', 'pesanan', 'Pesananmu telah tiba di tujuan', '/pesanan/2606057096', 1, '2021-06-05 15:54:18', '2021-11-04 03:30:10'),
(63, '26', 'pesanan', 'Pesananmu telah dikonfirmasi oleh admin', '/pesanan/2606053944', 1, '2021-06-05 15:57:14', '2021-11-04 03:30:10'),
(64, '26', 'pembayaran', 'Pembayaran telah divalidasi', '/pesanan/2606053944', 1, '2021-06-05 15:57:25', '2021-11-04 03:30:10'),
(65, '26', 'pesanan', 'Pesananmu sedang dikirim ke Bekasi Utara', '/pesanan/2606053944', 1, '2021-06-05 15:58:37', '2021-11-04 03:30:10'),
(66, '26', 'pesanan', 'Pesananmu telah tiba di tujuan', '/pesanan/2606053944', 1, '2021-06-05 15:58:47', '2021-11-04 03:30:10'),
(67, '26', 'pesanan', 'Pesananmu telah dikonfirmasi oleh admin', '/pesanan/2606064012', 1, '2021-06-06 14:42:49', '2021-11-04 03:30:10'),
(68, '26', 'pembayaran', 'Bukti pembayaran tidak valid', '/pesanan/2606064012', 1, '2021-06-06 14:43:19', '2021-11-04 03:30:10'),
(69, '26', 'pembayaran', 'Pembayaran telah divalidasi', '/pesanan/2606064012', 1, '2021-06-06 14:43:37', '2021-11-04 03:30:10'),
(70, '26', 'pesanan', 'Pesananmu sedang dikirim ke Bekasi Utara', '/pesanan/2606064012', 1, '2021-06-06 14:44:20', '2021-11-04 03:30:10'),
(71, '26', 'pesanan', 'Pesananmu telah tiba di tujuan', '/pesanan/2606064012', 1, '2021-06-06 14:44:32', '2021-11-04 03:30:10'),
(72, '26', 'pesanan', 'Pesananmu telah dikonfirmasi oleh admin', '/pesanan/2606081378', 1, '2021-06-07 19:26:34', '2021-11-04 03:30:10'),
(73, '26', 'pembayaran', 'Bukti pembayaran tidak valid', '/pesanan/2606081378', 1, '2021-06-07 19:28:21', '2021-11-04 03:30:10'),
(74, '26', 'pembayaran', 'Pembayaran telah divalidasi', '/pesanan/2606081378', 1, '2021-06-07 19:28:34', '2021-11-04 03:30:10'),
(75, '26', 'pesanan', 'Pesananmu sedang dikirim ke Bekasi Utara', '/pesanan/2606081378', 1, '2021-06-07 19:29:32', '2021-11-04 03:30:10'),
(76, '26', 'pesanan', 'Pesananmu telah tiba di tujuan', '/pesanan/2606081378', 1, '2021-06-07 19:30:06', '2021-11-04 03:30:10'),
(77, '26', 'pesanan', 'Pesananmu telah dikonfirmasi oleh admin', '/pesanan/2606081378', 1, '2021-06-07 19:38:55', '2021-11-04 03:30:10'),
(78, '26', 'pembayaran', 'Bukti pembayaran tidak valid', '/pesanan/2606081378', 1, '2021-06-07 19:47:50', '2021-11-04 03:30:10'),
(79, '26', 'pembayaran', 'Pembayaran telah divalidasi', '/pesanan/2606081378', 1, '2021-06-07 19:48:08', '2021-11-04 03:30:10'),
(80, '26', 'pesanan', 'Pesananmu sedang dikirim ke Bekasi Utara', '/pesanan/2606081378', 1, '2021-06-07 19:48:16', '2021-11-04 03:30:10'),
(81, '26', 'pesanan', 'Pesananmu telah tiba di tujuan', '/pesanan/2606081378', 1, '2021-06-07 19:48:23', '2021-11-04 03:30:10'),
(82, '26', 'custom_pesanan', 'Pesananmu telah dikonfirmasi oleh admin', '/pesanan/2606081559', 1, '2021-06-08 08:46:37', '2021-11-04 03:30:10'),
(83, '26', 'pembayaran', 'Bukti pembayaran tidak valid', '/pesanan/2606081559', 1, '2021-06-08 08:57:25', '2021-11-04 03:30:10'),
(84, '26', 'pembayaran', 'Pembayaran telah divalidasi', '/pesanan/2606081559', 1, '2021-06-08 08:58:25', '2021-11-04 03:30:10'),
(85, '26', 'custom_pesanan', 'Admin merubah estimasi ketersediaan barang.', '/pesanan/2606081559', 1, '2021-06-08 09:00:59', '2021-11-04 03:30:10'),
(86, '26', 'custom_pesanan', 'Admin merubah estimasi selesai pengerjaan barang.', '/pesanan/2606081559', 1, '2021-06-08 09:02:51', '2021-11-04 03:30:10'),
(87, '26', 'custom_pesanan', 'Barang custom pesananmu siap untuk dikirim', '/pesanan/2606081559', 1, '2021-06-08 09:03:04', '2021-11-04 03:30:10'),
(88, '26', 'custom_pesanan', 'Pesananmu sedang dikirim ke Bekasi Utara', '/pesanan/2606081559', 1, '2021-06-08 09:04:01', '2021-11-04 03:30:10'),
(89, '26', 'custom_pesanan', 'Pesananmu telah tiba di tujuan', '/pesanan/2606081559', 1, '2021-06-08 09:04:11', '2021-11-04 03:30:10'),
(90, '26', 'custom_pesanan', 'Pesananmu telah dikonfirmasi oleh admin', '/pesanan/2606083914', 1, '2021-06-08 09:47:54', '2021-11-04 03:30:10'),
(91, '26', 'pembayaran', 'Pembayaran telah divalidasi', '/pesanan/2606083914', 1, '2021-06-08 09:48:14', '2021-11-04 03:30:10'),
(92, '26', 'custom_pesanan', 'Admin merubah estimasi selesai pengerjaan barang.', '/pesanan/2606083914', 1, '2021-06-08 09:48:28', '2021-11-04 03:30:10'),
(93, '26', 'custom_pesanan', 'Barang custom pesananmu siap untuk dikirim', '/pesanan/2606083914', 1, '2021-06-08 09:49:18', '2021-11-04 03:30:10'),
(94, '26', 'custom_pesanan', 'Pesananmu sedang dikirim ke Bekasi Utara', '/pesanan/2606083914', 1, '2021-06-08 09:49:28', '2021-11-04 03:30:10'),
(95, '26', 'custom_pesanan', 'Pesananmu telah tiba di tujuan', '/pesanan/2606083914', 1, '2021-06-08 09:49:39', '2021-11-04 03:30:10'),
(96, '26', 'pesanan', 'Pesananmu telah dikonfirmasi oleh admin', '/pesanan/2606097479', 1, '2021-06-08 21:39:37', '2021-11-04 03:30:10'),
(97, '26', 'pembayaran', 'Pembayaran telah divalidasi', '/pesanan/2606097479', 1, '2021-06-08 21:48:12', '2021-11-04 03:30:10'),
(98, '26', 'pesanan', 'Pesananmu sedang dikirim ke Bekasi Utara', '/pesanan/2606097479', 1, '2021-06-08 21:48:28', '2021-11-04 03:30:10'),
(99, '26', 'pesanan', 'Pesananmu telah tiba di tujuan', '/pesanan/2606097479', 1, '2021-06-08 21:48:35', '2021-11-04 03:30:10'),
(100, '31', 'pesanan', 'Pesananmu dibatalkan oleh admin, Note : barang habis', '/pesanan/3106094790', 1, '2021-06-09 00:39:00', '2021-07-13 19:27:33'),
(101, '31', 'pesanan', 'Pesananmu telah dikonfirmasi oleh admin', '/pesanan/3106093269', 1, '2021-06-09 00:41:39', '2021-07-13 19:27:33'),
(102, '31', 'pembayaran', 'Bukti pembayaran tidak valid', '/pesanan/3106093269', 1, '2021-06-09 00:44:24', '2021-07-13 19:27:33'),
(103, '31', 'pembayaran', 'Pembayaran telah divalidasi', '/pesanan/3106093269', 1, '2021-06-09 00:45:29', '2021-07-13 19:27:33'),
(104, '31', 'pesanan', 'Pesananmu sedang dikirim ke Bekasi', '/pesanan/3106093269', 1, '2021-06-09 00:45:42', '2021-07-13 19:27:33'),
(105, '31', 'pesanan', 'Pesananmu telah tiba di tujuan', '/pesanan/3106093269', 1, '2021-06-09 00:46:15', '2021-07-13 19:27:33'),
(106, '31', 'custom_pesanan', 'Pesananmu telah dikonfirmasi oleh admin', '/pesanan/3106090144', 1, '2021-06-09 00:50:34', '2021-07-13 19:27:33'),
(107, '31', 'pembayaran', 'Pembayaran telah divalidasi', '/pesanan/3106090144', 1, '2021-06-09 00:51:05', '2021-07-13 19:27:33'),
(108, '31', 'custom_pesanan', 'Admin merubah estimasi selesai pengerjaan barang.', '/pesanan/3106090144', 1, '2021-06-09 00:51:27', '2021-07-13 19:27:33'),
(109, '31', 'custom_pesanan', 'Admin merubah estimasi selesai pengerjaan barang.', '/pesanan/3106090144', 1, '2021-06-09 00:51:41', '2021-07-13 19:27:33'),
(110, '31', 'custom_pesanan', 'Barang custom pesananmu siap untuk dikirim', '/pesanan/3106090144', 1, '2021-06-09 00:52:36', '2021-07-13 19:27:33'),
(111, '31', 'custom_pesanan', 'Pesananmu sedang dikirim ke Bekasi', '/pesanan/3106090144', 1, '2021-06-09 00:52:48', '2021-07-13 19:27:33'),
(112, '31', 'custom_pesanan', 'Pesananmu telah tiba di tujuan', '/pesanan/3106090144', 1, '2021-06-09 00:52:58', '2021-07-13 19:27:33'),
(113, '31', 'custom_pesanan', 'Pesananmu telah dikonfirmasi oleh admin', '/pesanan/3106097791', 1, '2021-06-09 00:55:14', '2021-07-13 19:27:33'),
(114, '31', 'pesanan', 'Pesananmu telah dikonfirmasi oleh admin', '/pesanan/3106096399', 1, '2021-06-09 00:56:40', '2021-07-13 19:27:33'),
(115, '31', 'pembayaran', 'Pembayaran telah divalidasi', '/pesanan/3106096399', 1, '2021-06-09 00:58:44', '2021-07-13 19:27:33'),
(116, '31', 'pesanan', 'Pesananmu sedang dikirim ke Bekasi', '/pesanan/3106096399', 1, '2021-06-09 00:58:50', '2021-07-13 19:27:33'),
(117, '31', 'pesanan', 'Pesananmu telah tiba di tujuan', '/pesanan/3106096399', 1, '2021-06-09 00:59:01', '2021-07-13 19:27:33'),
(118, '31', 'pesanan', 'Pesananmu telah dikonfirmasi oleh admin', '/pesanan/3106091489', 1, '2021-06-09 03:10:33', '2021-07-13 19:27:33'),
(119, '31', 'pesanan', 'Pesananmu telah dikonfirmasi oleh admin', '/pesanan/3106091489', 1, '2021-06-09 03:10:35', '2021-07-13 19:27:33'),
(120, '31', 'pesanan', 'Pesananmu telah dikonfirmasi oleh admin', '/pesanan/3106091489', 1, '2021-06-09 03:10:36', '2021-07-13 19:27:33'),
(121, '31', 'pesanan', 'Pesananmu dibatalkan oleh admin, Note : ufuf', '/pesanan/3106090404', 1, '2021-06-10 20:31:20', '2021-07-13 19:27:33'),
(122, '31', 'pesanan', 'Pesananmu dibatalkan oleh admin, Note : ufuf', '/pesanan/3106091639', 1, '2021-06-10 20:32:59', '2021-07-13 19:27:33'),
(123, '31', 'pesanan', 'Pesananmu telah dikonfirmasi oleh admin', '/pesanan/3106116139', 1, '2021-06-10 20:59:59', '2021-07-13 19:27:33'),
(124, '31', 'pesanan', 'Pesananmu telah dikonfirmasi oleh admin', '/pesanan/3106117997', 1, '2021-06-10 21:00:01', '2021-07-13 19:27:33'),
(125, '31', 'pesanan', 'Pesananmu telah dikonfirmasi oleh admin', '/pesanan/3106117236', 1, '2021-06-10 21:00:23', '2021-07-13 19:27:33'),
(126, '31', 'pesanan', 'Pesananmu telah dikonfirmasi oleh admin', '/pesanan/3106115760', 1, '2021-06-10 21:23:35', '2021-07-13 19:27:33'),
(127, '26', 'pesanan', 'Pesananmu telah dikonfirmasi oleh admin', '/pesanan/2606117983', 1, '2021-06-11 01:37:31', '2021-11-04 03:30:10'),
(128, '31', 'pesanan', 'Pesananmu telah dikonfirmasi oleh admin', '/pesanan/3106168913', 1, '2021-06-16 03:30:52', '2021-07-13 19:27:33'),
(129, '31', 'pembayaran', 'Pembayaran telah divalidasi', '/pesanan/3106168913', 1, '2021-06-16 03:35:23', '2021-07-13 19:27:33'),
(130, '31', 'custom_pesanan', 'Pesananmu dibatalkan oleh admin, Note : barang habis', '/pesanan/3106141806', 1, '2021-06-16 03:49:56', '2021-07-13 19:27:33'),
(131, '31', 'custom_pesanan', 'Pesananmu telah dikonfirmasi oleh admin', '/pesanan/3106163848', 1, '2021-06-16 15:33:01', '2021-07-13 19:27:33'),
(132, '31', 'pembayaran', 'Pembayaran telah divalidasi', '/pesanan/3106163848', 1, '2021-06-16 15:43:52', '2021-07-13 19:27:33'),
(133, '31', 'custom_pesanan', 'Barang custom pesananmu siap untuk dikirim', '/pesanan/3106163848', 1, '2021-06-16 15:44:04', '2021-07-13 19:27:33'),
(134, '31', 'custom_pesanan', 'Pesananmu sedang dikirim ke Bekasi', '/pesanan/3106163848', 1, '2021-06-16 15:44:14', '2021-07-13 19:27:33'),
(135, '31', 'custom_pesanan', 'Pesananmu telah tiba di tujuan', '/pesanan/3106163848', 1, '2021-06-16 15:44:28', '2021-07-13 19:27:33'),
(136, '31', 'custom_pesanan', 'Pesananmu telah dikonfirmasi oleh admin', '/pesanan/3106164065', 1, '2021-06-16 16:01:19', '2021-07-13 19:27:33'),
(137, '31', 'pembayaran', 'Pembayaran telah divalidasi', '/pesanan/3106164065', 1, '2021-06-16 16:01:37', '2021-07-13 19:27:33'),
(138, '31', 'custom_pesanan', 'Admin merubah estimasi selesai pengerjaan barang.', '/pesanan/3106164065', 1, '2021-06-16 16:35:21', '2021-07-13 19:27:33'),
(139, '31', 'custom_pesanan', 'Barang custom pesananmu siap untuk dikirim', '/pesanan/3106164065', 1, '2021-06-16 17:18:08', '2021-07-13 19:27:33'),
(140, '31', 'custom_pesanan', 'Pesananmu sedang dikirim ke Bekasi', '/pesanan/3106164065', 1, '2021-06-16 17:46:59', '2021-07-13 19:27:33'),
(141, '31', 'pesanan', 'Pesananmu telah dikonfirmasi oleh admin', '/pesanan/3106164814', 1, '2021-06-17 18:25:43', '2021-07-13 19:27:33'),
(142, '31', 'pembayaran', 'Pembayaran telah divalidasi', '/pesanan/3106164814', 1, '2021-06-17 18:27:04', '2021-07-13 19:27:33'),
(143, '31', 'pesanan', 'Pesananmu sedang dikirim ke Bekasi', '/pesanan/3106164814', 1, '2021-06-17 18:56:18', '2021-07-13 19:27:33'),
(144, '31', 'pesanan', 'Pesananmu telah tiba di tujuan', '/pesanan/3106164814', 1, '2021-06-17 18:56:24', '2021-07-13 19:27:33'),
(145, '31', 'pesanan', 'Pesananmu telah dikonfirmasi oleh admin', '/pesanan/3106181261', 1, '2021-06-17 19:25:23', '2021-07-13 19:27:33'),
(146, '31', 'pembayaran', 'Pembayaran telah divalidasi', '/pesanan/3106181261', 1, '2021-06-17 19:25:48', '2021-07-13 19:27:33'),
(147, '31', 'custom_pesanan', 'Admin merubah estimasi selesai pengerjaan barang.', '/pesanan/3106181261', 1, '2021-06-17 19:26:44', '2021-07-13 19:27:33'),
(148, '31', 'custom_pesanan', 'Barang custom pesananmu siap untuk dikirim', '/pesanan/3106181261', 1, '2021-06-17 19:42:31', '2021-07-13 19:27:33'),
(149, '31', 'custom_pesanan', 'Pesananmu sedang dikirim ke Bekasi', '/pesanan/3106181261', 1, '2021-06-17 19:45:23', '2021-07-13 19:27:33'),
(150, '31', 'custom_pesanan', 'Pesananmu telah tiba di tujuan', '/pesanan/3106164065', 1, '2021-06-17 19:50:09', '2021-07-13 19:27:33'),
(151, '31', 'pesanan', 'Pesananmu telah dikonfirmasi oleh admin', '/pesanan/3106166808', 1, '2021-06-18 02:05:36', '2021-07-13 19:27:33'),
(152, '33', 'custom_pesanan', 'Pesananmu dibatalkan oleh admin, Note : ddd', '/pesanan/3306207284', 1, '2021-06-19 23:56:20', '2021-06-19 23:56:23'),
(153, '33', 'pesanan', 'Pesananmu telah dikonfirmasi oleh admin', '/pesanan/3306205561', 0, '2021-06-19 23:57:57', '2021-06-19 23:57:57'),
(154, '33', 'pembayaran', 'Pembayaran telah divalidasi', '/pesanan/3306205561', 0, '2021-06-20 00:12:35', '2021-06-20 00:12:35'),
(155, '31', 'pesanan', 'Pesananmu telah dikonfirmasi oleh admin', '/pesanan/3106205005', 1, '2021-06-20 19:23:09', '2021-07-13 19:27:33'),
(156, '31', 'pesanan', 'Pesananmu telah dikonfirmasi oleh admin', '/pesanan/3106218881', 1, '2021-06-20 19:23:20', '2021-07-13 19:27:33'),
(157, '31', 'pesanan', 'Pesananmu telah dikonfirmasi oleh admin', '/pesanan/3106212649', 1, '2021-06-20 19:29:50', '2021-07-13 19:27:33'),
(158, '31', 'custom_pesanan', 'Pesananmu telah dikonfirmasi oleh admin', '/pesanan/3106218686', 1, '2021-06-20 19:34:19', '2021-07-13 19:27:33'),
(159, '31', 'pembayaran', 'Pembayaran telah divalidasi', '/pesanan/3106218686', 1, '2021-06-20 19:35:00', '2021-07-13 19:27:33'),
(160, '31', 'custom_pesanan', 'Barang custom pesananmu siap untuk dikirim', '/pesanan/3106218686', 1, '2021-06-20 19:35:53', '2021-07-13 19:27:33'),
(161, '31', 'custom_pesanan', 'Pesananmu sedang dikirim ke Bekasi', '/pesanan/3106218686', 1, '2021-06-20 19:37:00', '2021-07-13 19:27:33'),
(162, '31', 'pesanan', 'Pesananmu telah dikonfirmasi oleh admin', '/pesanan/3106213103', 1, '2021-06-20 20:07:00', '2021-07-13 19:27:33'),
(163, '31', 'custom_pesanan', 'Pesananmu telah tiba di tujuan', '/pesanan/3106218686', 1, '2021-06-20 20:15:17', '2021-07-13 19:27:33'),
(164, '31', 'pembayaran', 'Pembayaran telah divalidasi', '/pesanan/3106212649', 1, '2021-06-21 14:42:36', '2021-07-13 19:27:33'),
(165, '31', 'pesanan', 'Pesananmu sedang dikirim ke Bekasi', '/pesanan/3106212649', 1, '2021-06-21 14:42:49', '2021-07-13 19:27:33'),
(166, '33', 'pesanan', 'Pesananmu sedang dikirim ke Bandung', '/pesanan/3306205561', 0, '2021-06-21 14:42:51', '2021-06-21 14:42:51'),
(167, '31', 'pesanan', 'Pesananmu telah tiba di tujuan', '/pesanan/3106212649', 1, '2021-06-21 14:43:03', '2021-07-13 19:27:33'),
(168, '33', 'pesanan', 'Pesananmu telah tiba di tujuan', '/pesanan/3306205561', 0, '2021-06-21 14:43:07', '2021-06-21 14:43:07'),
(169, '31', 'pesanan', 'Pesananmu telah dikonfirmasi oleh admin', '/pesanan/3106242681', 1, '2021-06-23 18:20:24', '2021-07-13 19:27:33'),
(170, '31', 'pembayaran', 'Pembayaran telah divalidasi', '/pesanan/3106242681', 1, '2021-06-23 18:21:05', '2021-07-13 19:27:33'),
(171, '31', 'pesanan', 'Pesananmu sedang dikirim ke Bekasi', '/pesanan/3106242681', 1, '2021-06-23 18:21:21', '2021-07-13 19:27:33'),
(172, '31', 'pesanan', 'Pesananmu telah tiba di tujuan', '/pesanan/3106242681', 1, '2021-06-23 18:21:34', '2021-07-13 19:27:33'),
(173, '31', 'pesanan', 'Pesananmu telah dikonfirmasi oleh admin', '/pesanan/3107144582', 1, '2021-07-13 17:07:09', '2021-07-13 19:27:33'),
(174, '31', 'pembayaran', 'Pembayaran telah divalidasi', '/pesanan/3107144582', 1, '2021-07-13 17:07:48', '2021-07-13 19:27:33'),
(175, '31', 'pesanan', 'Pesananmu sedang dikirim ke Bekasi', '/pesanan/3107144582', 1, '2021-07-13 18:25:39', '2021-07-13 19:27:33'),
(176, '31', 'pesanan', 'Pesananmu telah tiba di tujuan', '/pesanan/3107144582', 1, '2021-07-13 18:25:55', '2021-07-13 19:27:33'),
(177, '31', 'custom_pesanan', 'Pesananmu telah dikonfirmasi oleh admin', '/pesanan/3107140374', 1, '2021-07-13 18:30:08', '2021-07-13 19:27:33'),
(178, '31', 'pembayaran', 'Pembayaran telah divalidasi', '/pesanan/3107140374', 1, '2021-07-13 18:30:54', '2021-07-13 19:27:33'),
(179, '31', 'custom_pesanan', 'Admin merubah estimasi selesai pengerjaan barang.', '/pesanan/3107140374', 1, '2021-07-13 18:31:32', '2021-07-13 19:27:33'),
(180, '31', 'custom_pesanan', 'Barang custom pesananmu siap untuk dikirim', '/pesanan/3107140374', 1, '2021-07-13 18:31:38', '2021-07-13 19:27:33'),
(181, '31', 'custom_pesanan', 'Pesananmu sedang dikirim ke Bekasi', '/pesanan/3107140374', 1, '2021-07-13 18:31:46', '2021-07-13 19:27:33'),
(182, '31', 'custom_pesanan', 'Pesananmu telah tiba di tujuan', '/pesanan/3107140374', 1, '2021-07-13 18:31:56', '2021-07-13 19:27:33'),
(183, '34', 'pesanan', 'Pesananmu telah dikonfirmasi oleh admin', '/pesanan/3407145347', 1, '2021-07-14 01:09:49', '2021-07-21 15:53:39'),
(184, '34', 'pesanan', 'Pesananmu telah dikonfirmasi oleh admin', '/pesanan/3407147095', 1, '2021-07-14 01:23:30', '2021-07-21 15:53:39'),
(185, '34', 'pembayaran', 'Pembayaran telah divalidasi', '/pesanan/3407145347', 1, '2021-07-14 01:23:40', '2021-07-21 15:53:39'),
(186, '34', 'pesanan', 'Pesananmu sedang dikirim ke Bekasi', '/pesanan/3407145347', 1, '2021-07-14 01:23:57', '2021-07-21 15:53:39'),
(187, '34', 'pesanan', 'Pesananmu telah tiba di tujuan', '/pesanan/3407145347', 1, '2021-07-14 01:24:04', '2021-07-21 15:53:39'),
(188, '34', 'pembayaran', 'Pembayaran telah divalidasi', '/pesanan/3407147095', 1, '2021-07-14 01:24:49', '2021-07-21 15:53:39'),
(189, '34', 'pesanan', 'Pesananmu sedang dikirim ke Bekasi', '/pesanan/3407147095', 1, '2021-07-14 01:24:55', '2021-07-21 15:53:39'),
(190, '34', 'pesanan', 'Pesananmu telah tiba di tujuan', '/pesanan/3407147095', 1, '2021-07-14 01:24:59', '2021-07-21 15:53:39'),
(191, '34', 'pesanan', 'Pesananmu telah dikonfirmasi oleh admin', '/pesanan/3407215015', 1, '2021-07-21 15:51:05', '2021-07-21 15:53:39'),
(192, '34', 'pembayaran', 'Pembayaran telah divalidasi', '/pesanan/3407215015', 1, '2021-07-21 15:52:07', '2021-07-21 15:53:39'),
(193, '34', 'pesanan', 'Pesananmu sedang dikirim ke Bekasi', '/pesanan/3407215015', 1, '2021-07-21 15:53:11', '2021-07-21 15:53:39'),
(194, '34', 'pesanan', 'Pesananmu telah tiba di tujuan', '/pesanan/3407215015', 1, '2021-07-21 15:53:15', '2021-07-21 15:53:39'),
(195, '26', 'pesanan', 'Pesananmu dibatalkan oleh admin, Note : stock kosong', '/pesanan/2610110222', 1, '2021-10-11 03:53:32', '2021-11-04 03:30:10'),
(196, '28', 'pesanan', 'Pesananmu telah dikonfirmasi oleh admin', '/pesanan/2811043720', 1, '2021-11-04 02:43:07', '2021-11-04 02:45:21'),
(197, '28', 'pembayaran', 'Pembayaran telah divalidasi', '/pesanan/2811043720', 1, '2021-11-04 02:44:19', '2021-11-04 02:45:21'),
(198, '28', 'pesanan', 'Pesananmu sedang dikirim ke Bekasi Utara', '/pesanan/2811043720', 1, '2021-11-04 02:44:32', '2021-11-04 02:45:21'),
(199, '28', 'pesanan', 'Pesananmu telah tiba di tujuan', '/pesanan/2811043720', 1, '2021-11-04 02:45:15', '2021-11-04 02:45:21'),
(200, '26', 'pesanan', 'Pesananmu telah dikonfirmasi oleh admin', '/pesanan/2611042700', 1, '2021-11-04 03:29:08', '2021-11-04 03:30:10'),
(201, '26', 'pembayaran', 'Pembayaran telah divalidasi', '/pesanan/2611042700', 1, '2021-11-04 03:29:48', '2021-11-04 03:30:10'),
(202, '26', 'pesanan', 'Pesananmu sedang dikirim ke Bekasi Utara', '/pesanan/2611042700', 1, '2021-11-04 03:29:57', '2021-11-04 03:30:10'),
(203, '26', 'pesanan', 'Pesananmu telah tiba di tujuan', '/pesanan/2611042700', 1, '2021-11-04 03:30:04', '2021-11-04 03:30:10');

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pesanan`
--

CREATE TABLE `pesanan` (
  `id` varchar(25) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `jenis_pesanan` varchar(20) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `telp` varchar(50) NOT NULL,
  `alamat` text NOT NULL,
  `total` int(11) DEFAULT NULL,
  `status` varchar(50) NOT NULL,
  `konfirmasi` datetime DEFAULT NULL,
  `menunggu_validasi` datetime DEFAULT NULL,
  `validasi` datetime DEFAULT NULL,
  `pengiriman` datetime DEFAULT NULL,
  `tiba_di_tujuan` datetime DEFAULT NULL,
  `bukti_pembayaran` varchar(255) DEFAULT NULL,
  `estimasi_stok` datetime DEFAULT NULL,
  `stok_ready` datetime DEFAULT NULL,
  `alasan_batal` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pesanan`
--

INSERT INTO `pesanan` (`id`, `user_id`, `jenis_pesanan`, `nama`, `telp`, `alamat`, `total`, `status`, `konfirmasi`, `menunggu_validasi`, `validasi`, `pengiriman`, `tiba_di_tujuan`, `bukti_pembayaran`, `estimasi_stok`, `stok_ready`, `alasan_batal`, `created_at`, `updated_at`) VALUES
('2610110222', '26', 'pesanan', 'Afif Defriant', '081313131313', 'Bekasi Utara', 24000000, 'batal', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'stock kosong', '2021-10-11 03:53:11', '2021-10-11 03:53:32'),
('2611042700', '26', 'pesanan', 'Afif Defriant', '081313131313', 'Bekasi Utara', 700000, 'selesai', '2021-11-04 10:29:08', '2021-11-04 10:29:28', '2021-11-04 10:29:48', '2021-11-04 10:29:57', '2021-11-04 10:30:04', 'contoh_2611042700.jpg', NULL, NULL, NULL, '2021-11-04 03:28:25', '2021-11-04 03:30:07'),
('2811043720', '28', 'pesanan', 'Wahyu Andriyan P', '081313131313', 'Bekasi Utara', 300000, 'selesai', '2021-11-04 09:43:07', '2021-11-04 09:44:05', '2021-11-04 09:44:19', '2021-11-04 09:44:32', '2021-11-04 09:45:15', 'contoh_2811043720.jpg', NULL, NULL, NULL, '2021-11-04 02:42:44', '2021-11-04 02:45:19'),
('3106242681', '31', 'pesanan', 'AJI JATI MUSHAFA', '089629990495', 'Bekasi', 5000000, 'selesai', '2021-06-24 01:20:24', '2021-06-24 01:20:46', '2021-06-24 01:21:05', '2021-06-24 01:21:21', '2021-06-24 01:21:34', 'Contoh-Bukti-Transfer-BRI-Asli-atau-Palsu_3106242681.jpg', NULL, NULL, NULL, '2021-06-23 18:19:43', '2021-06-23 18:21:41'),
('3107140374', '31', 'custom_pesanan', 'AJI JATI MUSHAFA', '089629990495', 'Bekasi', 12000000, 'selesai', '2021-07-14 01:30:08', '2021-07-14 01:30:44', '2021-07-14 01:30:54', '2021-07-14 01:31:46', '2021-07-14 01:31:56', 'Contoh-Bukti-Transfer-BRI-Asli-atau-Palsu_3107140374.jpg', '2021-07-20 00:00:00', '2021-07-14 01:31:38', NULL, '2021-07-13 18:29:43', '2021-07-13 18:32:00'),
('3107144582', '31', 'pesanan', 'AJI JATI MUSHAFA', '089629990495', 'Bekasi', 7000000, 'selesai', '2021-07-14 00:07:09', '2021-07-14 00:07:33', '2021-07-14 00:07:48', '2021-07-14 01:25:39', '2021-07-14 01:25:55', 'Contoh-Bukti-Transfer-BRI-Asli-atau-Palsu_3107144582.jpg', NULL, NULL, NULL, '2021-07-13 17:06:37', '2021-07-13 18:26:10'),
('3407145347', '34', 'pesanan', 'AJI JATI', '089629990495', 'Bekasi', 6000000, 'selesai', '2021-07-14 08:09:49', '2021-07-14 08:23:19', '2021-07-14 08:23:40', '2021-07-14 08:23:57', '2021-07-14 08:24:04', 'Contoh-Bukti-Transfer-BRI-Asli-atau-Palsu_3407145347.jpg', NULL, NULL, NULL, '2021-07-14 01:07:12', '2021-07-14 06:14:46'),
('3407215015', '34', 'pesanan', 'AJI JATI', '089629990495', 'Bekasi', 12000000, 'selesai', '2021-07-21 22:51:05', '2021-07-21 22:52:00', '2021-07-21 22:52:07', '2021-07-21 22:53:11', '2021-07-21 22:53:15', 'Contoh-Bukti-Transfer-BRI-Asli-atau-Palsu_3407215015.jpg', NULL, NULL, NULL, '2021-07-21 15:50:13', '2021-07-21 15:53:34');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pesanan_barang`
--

CREATE TABLE `pesanan_barang` (
  `id` bigint(20) NOT NULL,
  `pesanan_id` varchar(50) NOT NULL,
  `barang_id` varchar(50) DEFAULT NULL,
  `nama` varchar(100) NOT NULL,
  `warna` varchar(255) DEFAULT NULL,
  `panjang` varchar(20) DEFAULT NULL,
  `lebar` varchar(20) DEFAULT NULL,
  `harga` varchar(50) DEFAULT NULL,
  `jumlah` int(11) NOT NULL,
  `total` varchar(50) DEFAULT NULL,
  `gambar` varchar(255) NOT NULL,
  `detail_barang` text DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `terjual` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pesanan_barang`
--

INSERT INTO `pesanan_barang` (`id`, `pesanan_id`, `barang_id`, `nama`, `warna`, `panjang`, `lebar`, `harga`, `jumlah`, `total`, `gambar`, `detail_barang`, `url`, `terjual`, `created_at`, `updated_at`) VALUES
(126, '3106242681', 'meja-kantor-minimalis-2', 'Meja Kantor Minimalis', NULL, NULL, NULL, '5000000', 1, '5000000', '4613fc230a1b521b1972e6366f218ae8_1623288550.jpg', NULL, '/produk/meja-kantor-minimalis-2', NULL, '2021-06-23 18:19:43', '2021-06-23 18:19:43'),
(127, '3107144582', 'tempat-tidur-anak-cowo-minimalis-2', 'Tempat Tidur Anak Cowo Minimalis', NULL, NULL, NULL, '7000000', 1, '7000000', 'tempat-tidur-anak-minimalis_1623356080.jpg', NULL, '/produk/tempat-tidur-anak-cowo-minimalis-2', NULL, '2021-07-13 17:06:37', '2021-07-13 17:06:37'),
(128, '3107140374', NULL, 'lemari', 'TH 991 J', '3', '2', '12000000', 1, '12000000', 'lemari_3107140374.jpg', '2 Unit dengan kombinasi warna hitam', NULL, NULL, '2021-07-13 18:29:43', '2021-07-13 18:29:43'),
(129, '3407145347', 'kursi-tamu-kayu-jati-minimalis', 'Kursi Tamu Kayu Jati Minimalis', NULL, NULL, NULL, '6000000', 1, '6000000', 'Kursi Tamu Minimalis 3_1623356879.jpg', NULL, '/produk/kursi-tamu-kayu-jati-minimalis', NULL, '2021-07-14 01:07:12', '2021-07-14 01:07:12'),
(130, '3407147095', 'kitchen-set-minimalis', 'Kitchen Set Minimalis', NULL, NULL, NULL, '10000000', 1, '10000000', 'e8yn02w5u6a8o4ccgzshco6yno9i483n_1623285974.jpg', NULL, '/produk/kitchen-set-minimalis', NULL, '2021-07-14 01:10:27', '2021-07-14 01:10:27'),
(132, '3407215015', 'kitchen-set-minimalis-3', 'Kitchen Set Minimalis', NULL, NULL, NULL, '12000000', 1, '12000000', 'kitchen set design_1623286069.jpg', NULL, '/produk/kitchen-set-minimalis-3', 'terjual', '2021-07-21 15:50:13', '2021-07-21 15:52:07'),
(133, '2610110222', 'kitchen-set-minimalis-2', 'Kitchen Set Minimalis', NULL, NULL, NULL, '12000000', 2, '24000000', 'image-1-1024x1024_1623286011.jpg', NULL, '/produk/kitchen-set-minimalis-2', NULL, '2021-10-11 03:53:11', '2021-10-11 03:53:11'),
(135, '2811043720', 'kursi-kecil', 'Kursi Kecil', NULL, NULL, NULL, '150000', 2, '300000', 'J5u8qI6BOjyTnHmXgrT64w_1623092099_1623189718.jpg', NULL, '/produk/kursi-kecil', 'terjual', '2021-11-04 02:42:44', '2021-11-04 02:44:19'),
(136, '2611042700', 'kursi-direktur', 'Kursi direktur', NULL, NULL, NULL, '700000', 1, '700000', 'kursi direktur-1634446164_1635821862.jpg', NULL, '/produk/kursi-direktur', 'terjual', '2021-11-04 03:28:25', '2021-11-04 03:29:48');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telp` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `telp`, `alamat`, `email`, `image`, `email_verified_at`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(26, 'Afif Defriant', '081313131313', 'Bekasi Utara', 'defriant17@gmail.com', NULL, NULL, '$2y$10$Z1MJBPDB2P/5NKObAieSXepuxrS0mX3n1ah53HMZecL4N5SgmIsSq', 'user', NULL, '2021-05-20 09:13:45', '2021-05-20 09:13:45'),
(28, 'Wahyu Andriyan P', '081313131313', 'Bekasi Utara', 'wahyu@gmail.com', NULL, NULL, '$2y$10$d0rOAzOmyjx.Hw20HQYeyew9qCI4XLyNB21PfTigUrpmilrC0CV66', 'user', NULL, '2021-05-23 10:54:23', '2021-05-23 10:54:23'),
(29, 'Afif Defriant', '081313131313', 'Bekasi Utara', 'afif@gmail.com', NULL, NULL, '$2y$10$.m47vGA3mmZ1WMPFPb3A7ObCoNaJKYo63LHDpO/rfVP079cC2Tr1e', 'user', NULL, '2021-05-24 04:35:45', '2021-05-24 04:35:45'),
(30, 'Admin', '081313131313', 'Bekasi Utara', 'admin@admin.com', NULL, NULL, '$2y$10$8zGFQ2nSWPE07QFBxjQqlul3DuSrTn/sp7.x.k5wcXH6Vwb6XXRda', 'admin', NULL, '2021-05-26 07:51:19', '2021-05-26 07:51:19'),
(31, 'Manager', '089629990495', 'Bekasi', 'manager@tujuhsamudra.com', NULL, NULL, '$2y$10$p8ruMozYXrySicTmyl5Ovu3YS2EwWzZ67fuxIZJ00FFFHgfrq50s.', 'owner', NULL, '2021-06-09 00:36:41', '2021-06-09 00:36:41'),
(32, 'Repo', '12345678890', 'Bekasi', 'repo@gmail.com', NULL, NULL, '$2y$10$HMFRfrL0wCy/6zixvciPOOJLlH7gZpOpuw7c6zXJyzojEF81vl01G', 'user', NULL, '2021-06-17 15:20:07', '2021-06-17 15:20:07'),
(33, 'Budi', '089675446775', 'Bandung', 'budi@gmail.com', NULL, NULL, '$2y$10$2Cjp7GNe0Oo7q3W27YnWJuDzCpTZGWWBVfagisaeLQbdBTr2VbaWi', 'user', NULL, '2021-06-19 23:22:59', '2021-06-19 23:22:59'),
(34, 'AJI JATI', '089629990495', 'Bekasi', 'ajijati@gmail.com', NULL, NULL, '$2y$10$xqk2IQoCnBrdk/yEQFTtqOt.JpzOpYd9tRbjkkLkyLwOQ/D5hGvty', 'user', NULL, '2021-07-14 01:06:18', '2021-07-14 01:06:18'),
(35, 'Budi', '08976555697076', 'Bekasi', 'budi1@gmail.com', NULL, NULL, '$2y$10$24pk8w6NNhvdl5LCyqxnd.TsagbrHYo.ZvYzwUFyi/xHZpHBb6AnC', 'user', NULL, '2021-07-14 07:20:56', '2021-07-14 07:20:56');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `confirm_regis`
--
ALTER TABLE `confirm_regis`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `keranjang`
--
ALTER TABLE `keranjang`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `notifikasi`
--
ALTER TABLE `notifikasi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `pesanan`
--
ALTER TABLE `pesanan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pesanan_barang`
--
ALTER TABLE `pesanan_barang`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `keranjang`
--
ALTER TABLE `keranjang`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=188;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `notifikasi`
--
ALTER TABLE `notifikasi`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=204;

--
-- AUTO_INCREMENT untuk tabel `pesanan_barang`
--
ALTER TABLE `pesanan_barang`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
