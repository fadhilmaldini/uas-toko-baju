-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 04 Jan 2021 pada 16.06
-- Versi server: 10.4.16-MariaDB
-- Versi PHP: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `uas`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_barang`
--

CREATE TABLE `t_barang` (
  `id_barang` int(11) NOT NULL,
  `nm_barang` varchar(50) NOT NULL,
  `ft_barang` varchar(50) NOT NULL,
  `deskripsi` text NOT NULL,
  `harga_asli` int(11) NOT NULL,
  `harga_promo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `t_barang`
--

INSERT INTO `t_barang` (`id_barang`, `nm_barang`, `ft_barang`, `deskripsi`, `harga_asli`, `harga_promo`) VALUES
(1, 'DIOR Oversized  Tshirt Logo Black ', 'tshirt 1.JPG', 'DIOR Oversized Tshirt black With Dior Logo\r\nSize : S , M , L , XL , XXL \r\n\r\n———————\r\n———————\r\nSize: S - XXL\r\nCotton Combed 30s\r\n———————\r\n T-Shirt\r\n———————\r\n\r\nSIZE INTERNATIONAL ( LUAR )\r\nSize Chart:\r\nS: Lebar Dada 48cm, Panjang 65cm, P.Lengan 19cm\r\nM: Lebar Dada 50cm, Panjang 67cm, P.Lengan 20cm\r\nL: Lebar Dada 52cm, Panjang 69cm, P.Lengan 21cm\r\nXL: Lebar Dada 56cm, Panjang 71cm, P.Lengan 22cm\r\nXXL: Lebar Dada 60cm, Panjang 76cm, P.Lengan 24cm', 125, 90),
(2, 'AMIRI Oversized Tshirt black', 'tshirt 2.JPG', 'AMIRI Tshirt With Oversized Cutting\r\nSize : S , M , L , XL , XXL \r\n\r\n———————\r\n———————\r\nSize: S - XXL\r\nCotton Combed 30s \r\n———————\r\n T-Shirt\r\n———————\r\n\r\nSIZE INTERNATIONAL ( LUAR )\r\nSize Chart:\r\nS: Lebar Dada 48cm, Panjang 65cm, P.Lengan 19cm\r\nM: Lebar Dada 50cm, Panjang 67cm, P.Lengan 20cm\r\nL: Lebar Dada 52cm, Panjang 69cm, P.Lengan 21cm\r\nXL: Lebar Dada 56cm, Panjang 71cm, P.Lengan 22cm\r\nXXL: Lebar Dada 60cm, Panjang 76cm, P.Lengan 24cm', 125, 90),
(3, 'AMIRI Grateful Dead Tshirt', 'tshirt 3.JPG', 'Grateful Dead Grapich Printed On Front\r\nSize : S , M , L , XL , XXL \r\n\r\n———————\r\n———————\r\nSize: S - XXL\r\nCotton Combed 30s \r\n———————\r\n T-Shirt\r\n———————\r\n\r\nSIZE INTERNATIONAL ( LUAR )\r\nSize Chart:\r\nS: Lebar Dada 48cm, Panjang 65cm, P.Lengan 19cm\r\nM: Lebar Dada 50cm, Panjang 67cm, P.Lengan 20cm\r\nL: Lebar Dada 52cm, Panjang 69cm, P.Lengan 21cm\r\nXL: Lebar Dada 56cm, Panjang 71cm, P.Lengan 22cm\r\nXXL: Lebar Dada 60cm, Panjang 76cm, P.Lengan 24cm', 125, 90),
(4, 'AMIRI Oversized Tshirt White', 'tshirt 4.JPG', 'Amiri Tshirt With Oversized Cutiing\r\nSize : S , M , L , XL , XXL \r\n\r\n———————\r\n———————\r\nSize: S - XXL\r\nCotton Combed 30s \r\n———————\r\n T-Shirt\r\n———————\r\n\r\nSIZE INTERNATIONAL ( LUAR )\r\nSize Chart:\r\nS: Lebar Dada 48cm, Panjang 65cm, P.Lengan 19cm\r\nM: Lebar Dada 50cm, Panjang 67cm, P.Lengan 20cm\r\nL: Lebar Dada 52cm, Panjang 69cm, P.Lengan 21cm\r\nXL: Lebar Dada 56cm, Panjang 71cm, P.Lengan 22cm\r\nXXL: Lebar Dada 60cm, Panjang 76cm, P.Lengan 24cm', 125, 90),
(5, 'AMIRI MX1 SUEDE JEAN', 'pants 1.JPG', 'DISTRESSED ITALIAN DENIM SKINNY JEANS ABRASIONS AND DISTRESSING THROUGHOUT SUEDE PATCHES AT KNEES CLASSIC AMIRI 5 POCKET \r\nSize Chart :\r\n\r\n28 : Lingkar Pinggang 78cm x Panjang 98\r\n29 : Lingkar Pinggang 80cm x Panjang 98\r\n30 : Lingkar Pinggang 82cm x Panjang 99\r\n31 : Lingkar Pinggang 84cm x Panjang 100\r\n32 : Linhkar Pinggang 86cm x Panjang 102\r\n34 : Lingkar Pinggang 88cm x Panjang 105', 450, 290),
(6, 'AMIRI MX1 JEAN', 'pants 2.JPG', 'DISTRESSED ITALIAN DENIM SKINNY JEANS ABRASIONS AND DISTRESSING THROUGHOUT LEATHER PATCHES AT KNEES CLASSIC AMIRI 5 POCKET\r\nSize Chart :\r\n\r\n28 : Lingkar Pinggang 78cm x Panjang 98\r\n29 : Lingkar Pinggang 80cm x Panjang 98\r\n30 : Lingkar Pinggang 82cm x Panjang 99\r\n31 : Lingkar Pinggang 84cm x Panjang 100\r\n32 : Linhkar Pinggang 86cm x Panjang 102\r\n34 : Lingkar Pinggang 88cm x Panjang 105', 450, 290),
(7, 'AMIRI TACTICAL CARGO', 'pants 3.JPG', 'TALIAN DENIM CARGO PANTS CARGO POCKETS THORUGHOUT\r\nSize Chart :\r\n\r\n28 : Lingkar Pinggang 78cm x Panjang 98\r\n29 : Lingkar Pinggang 80cm x Panjang 98\r\n30 : Lingkar Pinggang 82cm x Panjang 99\r\n31 : Lingkar Pinggang 84cm x Panjang 100\r\n32 : Linhkar Pinggang 86cm x Panjang 102\r\n34 : Lingkar Pinggang 88cm x Panjang 105', 600, 490),
(8, 'AMIRI 5 POCKET LEATHER PANT', 'pants 4.JPG', 'FIVE POCKET LEATHER PANT AMIRI HARDWARE\r\nSize Chart :\r\n\r\n28 : Lingkar Pinggang 78cm x Panjang 98\r\n29 : Lingkar Pinggang 80cm x Panjang 98\r\n30 : Lingkar Pinggang 82cm x Panjang 99\r\n31 : Lingkar Pinggang 84cm x Panjang 100\r\n32 : Linhkar Pinggang 86cm x Panjang 102\r\n34 : Lingkar Pinggang 88cm x Panjang 105', 999, 799),
(9, 'AMIRI BONE RUNNER', 'sepatu 1.JPG', '\r\nINSPIRED BY RETRO SPORTS SNEAKERS METALLIC STAMPED LOGO AT FRONT TONGUE HAND-CUT AND SEWN CLASSIC SKELETON LEATHER APPLIQUÉS VESUVIO SUEDE UPPER ATHLETIC MESH LINING VULCANIZED RUBBER OUTSOLE MOLDED EVA FOOTBED\r\nSize Chart: \r\n36 : 23.1 cm\r\n37 ; 23.8  cm\r\n38 ; 24.7 cm\r\n39 ; 25.2 cm\r\n40 ; 26.1  cm\r\n41 ; 26.5 cm\r\n42 ; 27.4 cm\r\n43 ; 28.3 cm\r\n44 ; 28.8 cm', 699, 450),
(10, 'AMIRI SKEL TOP', 'sepatu 2.JPG', 'GENUINE LEATHER UPPER NYLON TONGUE RUBBER OUTSOLE HAND CUT AND EDGE PAINTED LEATHER BONES APPLIQUÉ ATHLETIC MESH LINING MOLDED EVA FOOTBED\r\nSize Chart: \r\n36 : 23.1 cm\r\n37 ; 23.8  cm\r\n38 ; 24.7 cm\r\n39 ; 25.2 cm\r\n40 ; 26.1  cm\r\n41 ; 26.5 cm\r\n42 ; 27.4 cm\r\n43 ; 28.3 cm\r\n44 ; 28.8 cm', 699, 450),
(11, 'AMIRI CHELSEA LEATHER SOLE BOOT', 'sepatu 3.JPG', 'POINTED TOE CHELSEA BOOTS CREPE SOLE WITH BLOCK HEELLONG HAIR CALF UPPER WITH ELASTIC STRETCH SIDE\r\nSize Chart: \r\n36 : 23.1 cm\r\n37 ; 23.8  cm\r\n38 ; 24.7 cm\r\n39 ; 25.2 cm\r\n40 ; 26.1  cm\r\n41 ; 26.5 cm\r\n42 ; 27.4 cm\r\n43 ; 28.3 cm\r\n44 ; 28.8 cm\r\n', 999, 869),
(12, 'AMIRI BANDANA BUCKLE BOOT', 'sepatu 4.JPG', 'OUR BUCKLE BOOT ADORNED WITH VINTAGE BANDANA STRAPS AND ADJUSTABLE CUBAN CHAIN ACROSS FOREFOOT. BANDANA DOUBLE BUCKLE CLOSURE ADJUSTABLE NICKEL CHAIN AND HARDWARE\r\nSize Chart: \r\n36 : 23.1 cm\r\n37 ; 23.8  cm\r\n38 ; 24.7 cm\r\n39 ; 25.2 cm\r\n40 ; 26.1  cm\r\n41 ; 26.5 cm\r\n42 ; 27.4 cm\r\n43 ; 28.3 cm\r\n44 ; 28.8 cm', 999, 899),
(13, 'DIOR TOTEBAG', 'acc 1.JPG', 'Simple Handcrafting DIOR TOTEBAG, With Canvas Matereial and Dior Patch logo.\r\npanjang, lebar, tinggi\r\npanjang: 30cm\r\nlebar: 12cm\r\ntinggi: 25cm', 499, 240),
(14, 'DIOR BUCKET HAT', 'acc 2.JPG', 'The bucket hat is an iconic design from the 1990s, reimagined in a distinguished version. Crafted in technical cotton canvas, it is embellished with a black and brown Dior Oblique motif jacquard and black leather detailing at the brim’s edge for a refined look. The bucket hat will lend the finishing touch to any casual look.', 450, 199),
(15, 'DIOR BELT', 'acc 3.JPG', 'The 35 mm belt is adjustable in length and is crafted in beige and black Dior Oblique jacquard and lined with black grained calfskin. The palladium-finish brass buckle is subtly embellished with an engraved \'DIOR\' signature. The belt can be paired with any casual attire.', 600, 499),
(16, 'DIOR SADDLE BAG', 'acc 4.JPG', 'Maria Grazia Chiuri brings a fresh update to the iconic Saddle bag. The heritage design showcases the emblematic \'D\'-stirrup magnetic clasp and Saddle flap with the signature \'CD\' structure on both sides of the handle. Crafted in black grained calfskin and embellished with antique gold-finish metal hardware, the modern style may be customized with alternative straps.', 999, 499);

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_masukan`
--

CREATE TABLE `t_masukan` (
  `id_saran` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `saran` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_pesan`
--

CREATE TABLE `t_pesan` (
  `id_pesan` int(11) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `hp` varchar(15) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `kode_pos` int(11) NOT NULL,
  `alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `t_pesan`
--

INSERT INTO `t_pesan` (`id_pesan`, `id_barang`, `nama`, `hp`, `jumlah`, `kode_pos`, `alamat`) VALUES
(14, 3, 'FADHIL MALDINI', '08215534790', 1, 4106, 'semarang');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `t_barang`
--
ALTER TABLE `t_barang`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indeks untuk tabel `t_masukan`
--
ALTER TABLE `t_masukan`
  ADD PRIMARY KEY (`id_saran`);

--
-- Indeks untuk tabel `t_pesan`
--
ALTER TABLE `t_pesan`
  ADD PRIMARY KEY (`id_pesan`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `t_barang`
--
ALTER TABLE `t_barang`
  MODIFY `id_barang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `t_masukan`
--
ALTER TABLE `t_masukan`
  MODIFY `id_saran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT untuk tabel `t_pesan`
--
ALTER TABLE `t_pesan`
  MODIFY `id_pesan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
