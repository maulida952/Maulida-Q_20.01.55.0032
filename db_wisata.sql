-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 06 Nov 2023 pada 09.12
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_wisata`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `wisata`
--

CREATE TABLE `wisata` (
  `id_wisata` int(11) NOT NULL,
  `nama_wisata` varchar(255) NOT NULL,
  `alamat` text DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `kategori` enum('sejarah & budaya','kuliner','religi','wisata alam','wisata perbelanjaan','wisata hiburan') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `wisata`
--

INSERT INTO `wisata` (`id_wisata`, `nama_wisata`, `alamat`, `deskripsi`, `kategori`) VALUES
(1, 'Lawang Sewu', 'Jl. Pemuda No.160, Sekayu, Kec. Semarang Tengah, Kota Semarang, Jawa Tengah 50132', 'Bangunan bersejarah dengan seribu pintu.', 'sejarah & budaya'),
(2, 'Taman Srigunting', 'Tanjung Mas, Semarang Utara, Semarang City, Central Java 50174', 'Taman indah di tengah kota.', 'wisata alam'),
(3, 'Klenteng Sam Poo Kong', 'Jl. Simongan No.129, Bongsari, Kec. Semarang Barat, Kota Semarang, Jawa Tengah 50148', 'Klenteng bersejarah dengan arsitektur unik.', 'sejarah & budaya'),
(4, 'Pantai Marina', 'Tawangsari, Semarang City, Central Java 50144', 'Pantai yang menawarkan pemandangan indah.', 'wisata alam'),
(5, 'Museum Ronggowarsito', 'Jl. Abdulrahman Saleh No.1, Kalibanteng Kidul, Kec. Semarang Barat, Kota Semarang, Jawa Tengah 50149', 'Museum dengan koleksi sejarah kota Semarang.', 'sejarah & budaya'),
(6, 'Candi Gedong Songo', 'Jalan Ke Candi Gedong Songo, Candi, Krajan, Banyukuning, Bandungan, Kabupaten Semarang, Jawa Tengah 50614', 'Kompleks candi di lereng Gunung Ungaran.', 'sejarah & budaya'),
(7, 'Makam Kyai Saleh', 'Jl. Bendungan, Randusari, Kec. Semarang Sel., Kota Semarang, Jawa Tengah 50244', 'Tempat peristirahatan terakhir ulama terkenal.', 'religi'),
(8, 'Lumpia Cik Me Me Semarang', 'Jl. Gajahmada No.107, Miroto, Kec. Semarang Tengah, Kota Semarang, Jawa Tengah 50135', 'Kuliner khas Semarang yang terkenal.', 'kuliner'),
(9, 'Pasar Johar', 'Pasar Johar, Jl. K.H. Agus Salim, Kauman, Kec. Semarang Tengah, Kota Semarang, Jawa Tengah 50188', 'Pasar tradisional dengan berbagai produk lokal.', 'wisata perbelanjaan'),
(10, 'Taman Kyai Langgeng', 'Jl. Cemp. No.6, Kemirirejo, Kec. Magelang Tengah, Kota Magelang, Jawa Tengah 56122', 'Taman dengan nuansa Jawa yang tenang.', 'wisata alam'),
(11, 'Masjid Agung Jawa Tengah', ' Jl. Gajah Raya, Sambirejo, Kec. Gayamsari, Kota Semarang, Jawa Tengah 50166', 'Salah satu masjid terbesar di Jawa Tengah.', 'religi'),
(12, 'Kampoeng Semawis', 'Jl. Kranggan Dalam Jl. Gg. Warung No.50, Kauman, Kec. Semarang Tengah, Kota Semarang, Jawa Tengah 50139', 'Kawasan kuliner dengan berbagai makanan lezat.', 'kuliner'),
(13, 'Puncak Bandungan', 'Gunung, Candi, Bandungan, Semarang Regency, Central Java 50614', 'Puncak perbukitan dengan udara segar.', 'wisata alam'),
(14, 'Pusat Oleh-oleh Pandanaran', 'Tambakaji, Ngaliyan, Semarang City, Central Java', 'Tempat belanja oleh-oleh khas Semarang.', 'wisata perbelanjaan'),
(15, 'Taman KB Sambisari', 'Jl. Menteri Supeno No.11 A, Mugassari, Kec. Semarang Sel., Kota Semarang, Jawa Tengah 50249', 'Taman dengan fasilitas olahraga dan rekreasi.', 'wisata hiburan'),
(16, 'Museum Kereta Api Ambarawa', 'Jl. Stasiun No.1, Panjang Kidul, Panjang, Kec. Ambarawa, Kabupaten Semarang, Jawa Tengah 50614', 'Museum yang menampilkan koleksi kereta api.', 'sejarah & budaya'),
(17, 'Vihara Buddhagaya Watugong', 'Jl. Perintis Kemerdekaan, Pudakpayung, Kec. Banyumanik, Kota Semarang, Jawa Tengah 50265', 'Vihara dengan arsitektur megah.', 'religi'),
(18, 'Kedai Kopi Kulo', 'Jl. Kelud Raya No.15, Petompon, Kec. Gajahmungkur, Kota Semarang, Jawa Tengah 50237', 'Tempat nongkrong dengan kopi enak.', 'kuliner'),
(19, 'Alun-alun Semarang', 'Kauman, Semarang Tengah, Semarang City, Central Java 50188', 'Taman kota yang menjadi pusat kegiatan sosial.', 'wisata hiburan'),
(20, 'Kawasan Kota Lama', 'Jl. Letjen Suprapto No.22, Semarang Utara. ', 'Kawasan dengan bangunan bersejarah.', 'sejarah & budaya'),
(21, 'dusun semilir', 'Jl. Soekarno - Hatta No.49, Ngemple, Bawen, Ngemplak, Kabupaten Semarang, Jawa Tengah', 'sebuah destinasi wahana permainan', 'wisata hiburan'),
(22, 'Kampung Pelangi', 'Jl. DR. Sutomo No.89, Randusari, Kec. Semarang Sel., Kota Semarang, Jawa Tengah', 'sebuah kampung yang terlihat penuh warna pada seluruh tembok kampung', 'wisata hiburan'),
(23, 'Taman Wisata Mangrove Wonorejo', 'Tugurejo, Tugu, Semarang City, Central Java', 'Ekosistem mangrove yang indah untuk dinikmati', 'wisata alam'),
(24, 'Curug Lawe', 'Kalisidi, Ungaran Barat, Semarang Regency, Central Java', 'air terjun yang berada di Kawasan Gunung Ungaran di Semarang.', 'wisata alam'),
(25, 'Mie Kopyok Pak Dhuwur', 'Jl. Tanjung No.18A, Pandansari, Kec. Semarang Tengah, Kota Semarang, Jawa Tengah', 'makanan khas Kota Semarang', 'kuliner'),
(26, 'Pasar Peterongan', 'Jl. MT. Haryono No.936, Peterongan, Kec. Semarang Sel., Kota Semarang, Jawa Tengah', 'satu bangunan pasar tradisional yang dibangun pemerintah Kota Semarang', 'wisata perbelanjaan');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `wisata`
--
ALTER TABLE `wisata`
  ADD PRIMARY KEY (`id_wisata`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `wisata`
--
ALTER TABLE `wisata`
  MODIFY `id_wisata` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
