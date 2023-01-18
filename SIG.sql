-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 03, 2017 at 10:06 AM
-- Server version: 5.5.58-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `tugasakhir_gis`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_galeri`
--

CREATE TABLE IF NOT EXISTS `tb_galeri` (
  `id_galeri` int(11) NOT NULL AUTO_INCREMENT,
  `id_tempat` int(11) NOT NULL,
  `nama_galeri` varchar(255) NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `ket_galeri` text NOT NULL,
  PRIMARY KEY (`id_galeri`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=37 ;

--
-- Dumping data for table `tb_galeri`
--

INSERT INTO `tb_galeri` (`id_galeri`, `id_tempat`, `nama_galeri`, `gambar`, `ket_galeri`) VALUES
(17, 11, '', '7709a.jpg', ''),
(18, 12, '', '1039goa-lawah.jpg', ''),
(19, 12, 'Goa Lawah 1', '2443gua-lawah-1.jpg', ''),
(20, 12, 'Goa Lawah 2', '6752gua-lawah3.jpg', ''),
(21, 11, 'Lempuyang 1', '8479lempuyang.jpg', ''),
(22, 15, '', '5071pusering-jagat.jpg', ''),
(23, 10, 'Mandala 1', '7182mandapa-1.jpg', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>'),
(24, 10, 'Mandala 2', '9349mandapa-2.jpg', ''),
(25, 10, 'Mandala 3', '4694mandapa-3.jpg', ''),
(26, 10, 'Mandala 4', '8986mandapa-4.jpg', ''),
(27, 10, 'Mandala 5,6,7', '2425mandapa-567.jpg', ''),
(28, 10, 'Gambar 1', '7398besakih.jpg', ''),
(29, 10, 'Gambar 2', '7659besakih-2.jpg', ''),
(30, 13, 'Batukaru 1', '5413batukaru-1.jpg', '<p>barukaru tes keternagan</p>'),
(31, 13, 'Batukaru 2', '1935batukaru-2.jpg', ''),
(32, 11, 'Lempuyang 2', '5131lempuyang-3.jpg', ''),
(33, 14, 'Uluwatu 1', '6659uluwatu-1.jpg', ''),
(34, 14, 'Uluwatu 2', '6237uluwatu-2.jpg', ''),
(35, 15, 'Pusering jagat 1', '4421pusering-jagat-1.jpg', ''),
(36, 15, 'Pusering jagat 2', '6820pusering-jagat-2.jpg', '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_options`
--

CREATE TABLE IF NOT EXISTS `tb_options` (
  `option_name` varchar(16) NOT NULL,
  `option_value` text,
  PRIMARY KEY (`option_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_options`
--

INSERT INTO `tb_options` (`option_name`, `option_value`) VALUES
('default_lat', '-8.251889'),
('default_lng', '115.076818'),
('default_zoom', '10');

-- --------------------------------------------------------

--
-- Table structure for table `tb_tempat`
--

CREATE TABLE IF NOT EXISTS `tb_tempat` (
  `id_tempat` int(11) NOT NULL AUTO_INCREMENT,
  `nama_tempat` varchar(255) DEFAULT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `lat` double DEFAULT NULL,
  `lng` double DEFAULT NULL,
  `lokasi` varchar(255) DEFAULT NULL,
  `keterangan` text,
  PRIMARY KEY (`id_tempat`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `tb_tempat`
--

INSERT INTO `tb_tempat` (`id_tempat`, `nama_tempat`, `gambar`, `lat`, `lng`, `lokasi`, `keterangan`) VALUES
(10,'RSUD.Dr.R Soedjati Grobongan', '75731111.jpg',-7.084625131837857, 110.92011265287488, 'Jl. D. I. Panjaitan No.36, Ngabean, Purwodadi, Kec. Purwodadi, Kabupaten Grobogan, Jawa Tengah 58111', '<p style="text-align: justify;" align="justify"><strong><span class="bodytext"></span></strong></p>\r\n<p style="text-align: justify;" align="justify"><span class="bodytext"> <em></em><em></em></em> <em></em>)</span><span class="mantras">Resi Markandeya</span><span class="bodytext">.&nbsp;</span><span class="bodytext">Beliau berasal dan Hindustan (India), oleh para pengiring-pengiringnya disebut </span><span class="mantras">Batara Giri Rawang</span><span class="bodytext"> karena kesucian rohani, kecakapan dan kebijaksanaannya (sakti sidhi ngucap). Pada mulanya </span><span class="mantras">Sang Yogi Markandeya</span><span class="bodytext"> bertapa di gunung <em>Demulung</em>, kemudian pindah ke gunung Hyang (konon gunung Hyang itu adalah <em>DIYENG</em> di Jawa Tengah yang berasal dan kata <em>DI HYANG</em>). Sekian lamanya beliau bertapa di sana, mendapat titah dari Hyang Widhi Wasa agar beliau dan para pengikutnya merabas hutan di pulau <em>Dawa</em> setelah selesai, agar tanah itu dibagi-bagikan kepada para pengikutnya.&nbsp;</span><span class="mantras">Sang Yogi Markandeya</span><span class="bodytext"> melaksanakan titah itu dan segera berangkat ke arah timur bersama para pengiring-pengiringnya kurang lebih sejumlah 8000 orang. Setelah tiba di tempat yang dituju </span><span class="mantras">Sang Yogi Markandeya</span><span class="bodytext"> menyuruh semua para pengiringnya bekerja merabas hutan belantara, dilaksanakan sebagai mana mestinya.&nbsp;Saat merabas hutan, banyak para pengiring </span><span class="mantras">Sang Yogi Markandeya</span><span class="bodytext"> yang sakit, lalu mati dan ada juga yang mati dimakan binatang buas, karena tidak didahului dengan upacara yadnya (bebanten / sesaji).&nbsp;</span><span class="bodytext">Kemudian perabasan hutan dihentikan dan </span><span class="mantras">Sang Yogi Markandeya</span><span class="bodytext"> kembali lagi ke tempat pertapaannya semula (Konon ke gunung Raung di Jawa Timur. Selama beberapa waktu</span><span class="mantras">Sang Yogi Markandeya</span><span class="bodytext"> tinggal di gunung Raung. Pada suatu hari yang dipandang baik (<em>Dewasa Ayu</em>) beliau kembali ingin melanjutkan perabasan hutan itu untuk pembukaan daerah baru, disertai oleh para resi dan pertapa yang akan diajak bersama-sama memohon wara nugraha kehadapan <em>Hyang Widhi Wasa</em> bagi keberhasilan pekerjaan ini. Kali ini para pengiringnya berjumlah 4000 orang yang berasal dan <em>Desa Age</em> (penduduk di kaki gunung Raung) dengan membawa alat-alat pertanian selengkapnya termasuk bibit-bibit yang akan ditanam di hutan yang akan dirabas itu. Setelah tiba di tempat yang dituju, </span><span class="mantras">Sang Yogi Markandeya</span><span class="bodytext"> segera melakukan tapa yoga semadi bersama-sama para yogi lainnya dan mempersembahkan upakara yadnya, yaitu <em>Dewa Yadnya</em> dan <em>Buta Yadnya</em>. Setelah upacara itu selesai, para pengikutnya disuruh bekerja melanjutkan perabasan hutan tersebut, menebang pohon-pohonan dan lain-lainnya mulai dan selatan ke utara. Karena dipandang sudah cukup banyak hutan yang dirabas, maka berkat <em>asung wara nugraha</em> <em>Hyang Widhi Wasa</em>, </span><span class="mantras">Sang Yogi Markandeya</span><span class="bodytext">memerintahkan agar perabasan hutan, itu dihentikan dan beliau mulai mengadakan pembagian-pembagian tanah untuk para pengikut-pengikutnya masing-masing dijadikan sawah, tegal dan perumahan.&nbsp;</span><span class="bodytext">Di tempat di mana dimulai perabasan hutan itu </span><span class="mantras">Sang Yogi Markandeya</span><span class="bodytext"> menanam kendi (<em>payuk</em>) berisi air, juga <em>Pancadatu</em> yaitu berupa logam emas, perak, tembaga, besi dan perunggu disertai permata <em>Mirah Adi</em> (permata utama) dan <em>upakara (bebanten / sesajen)</em> selengkapnya diperciki <em>tirta Pangentas</em> (air suci). Tempat di mana sarana-sarana itu ditanam diberi nama<em>BASUKI</em>. Sejak saat itu para pengikut </span><span class="mantras">Sang Yogi Markandeya</span><span class="bodytext"> yang datang pada waktu-waktu berikutnya serta merabas hutan untuk pembukaan wilayah baru, tidak lagi ditimpa bencana sebagai mana yang pernah dialami dahulu. Demikianlah sedikit kutipan dari l<em>ontar Markandeya Purana</em> tentang asal mula adanya desa dan pura Besakih yang seperti disebutkan terdahulu bernama <em>Basuki</em> dan dalam perkembangannya kemudian sampai hari ini bernama <em>Besakih</em>.&nbsp;</span><span class="bodytext">Mungkin berdasarkan pengalaman tersebut, dan juga berdasarkan apa yang tercantum dalam ajaran-ajaran agama Hindu tentang <em>Panca Yadnya</em>, sampai saat ini setiap kali umat Hindu akan membangun sesuatu bangunan baik rumah, warung, kantor-kantor sampai kepada pembangunan Pura, demikian pula memulai bekerja di sawah ataupun di perusahaan-perusahaan, terlebih dahulu mereka mengadakan upakara <em>yadnya</em><em></em><em></em><em></em><em></em><em></em></span></p>\r\n<p style="text-align: justify;" align="justify"><strong><span class="bodytext">**Piodalan**</span></strong></p>\r\n<p style="text-align: justify;" align="justify"><span class="bodytext">1.Pura Pesimpangan. Piodalannya pada hari&nbsp;Anggara Keliwon Julungwangi</span></p>\r\n<p style="text-align: justify;" align="justify"><span class="bodytext">2.Piodalan&nbsp;Pura Dalem Puri ini pada hari&nbsp;Buda Keliwon ugu</span></p>\r\n<p style="text-align: justify;" align="justify"><span class="bodytext">3.Pura Manik Mas Piodalannya pada hari &nbsp;saniscara Keliwon Wariga</span></p>\r\n<p style="text-align: justify;" align="justify"><span class="bodytext">4.Pura Bangun Sakti&nbsp;Piodalannya pada hari&nbsp;Buda Pon Watugunung</span></p>\r\n<p style="text-align: justify;" align="justify"><span class="bodytext">5.Ulun Kulul piodalan di pura ini jatuh pada hari&nbsp;Saniscara keliwon kuningan</span></p>\r\n<p style="text-align: justify;" align="justify"><span class="bodytext">6.Piodalan di pura merajan Selonding pada hari Wraspati Keliwon Warigadian</span></p>\r\n<p style="text-align: justify;" align="justify"><span class="bodytext">7.Piodalan di pura Gua pada hari Buda Wage Kelawu&nbsp;atau Buda Cemeng Kelawu</span></p>\r\n<p style="text-align: justify;" align="justify"><span class="bodytext">8.Benua Kawaan&nbsp;piodalannya jatuh pada hari Sukra Umanis Kelawu</span></p>\r\n<p style="text-align: justify;" align="justify"><span class="bodytext">9.Merajan Kanginan&nbsp;piodalannya jatuh pada hari&nbsp;Saniscara Keliwon Kerulut</span></p>\r\n<p style="text-align: justify;" align="justify"><span class="bodytext">10. Pura Basukihan&nbsp;Piodalannya jatuh pada hari Buda Wage Kelawu</span></p>\r\n<p style="text-align: justify;" align="justify"><span class="bodytext">11.Pura Batu Madeg&nbsp; piodalan pada hari&nbsp;Soma Umanis Tolu</span></p>\r\n<p style="text-align: justify;" align="justify"><span class="bodytext">12.Pura Batu Kiduling Kreteg&nbsp;Piodalannya jatuh pada&nbsp;Anggara Wage Dungulan</span></p>\r\n<p style="text-align: justify;" align="justify"><span class="bodytext">13.Piodalan di Pura Gelap jatuh pada hari&nbsp;Soma Keliwon Wariga</span></p>\r\n<p style="text-align: justify;" align="justify"><span class="bodytext">14.Piodalan di Pura Pengubengan jatuh pada hari&nbsp;Budha Wage Kelawu</span></p>\r\n<p style="text-align: justify;" align="justify"><span class="bodytext">15.Piodalan di Pura Tirtha&nbsp;jatuh pada hari&nbsp;Budha Wage Kelawu</span></p>\r\n<p style="text-align: justify;" align="justify"><span class="bodytext">16.Piodalan di Pura Peninjoan pada hari&nbsp;Wraspati Wage Tolu</span></p>\r\n<p style="text-align: justify;" align="justify">&nbsp;</p>\r\n<p style="text-align: justify;" align="justify"><strong><span class="bodytext">**Denah Pura**</span></strong></p>\r\n<p style="text-align: justify;" align="justify"><strong><span class="bodytext">Pura Penataran Agung terdiri dan 7 mandala yang melambangkan "<span class="mantras">Sapta Loka</span>" atau tujuh lapisan alam, di tiap-tiap petak terdapat bangunan-bangunan palinggih.</span></strong></p>\r\n<p style="text-align: justify;" align="justify">1. Bale Pegat<br />2. Bale Kulkul<br />3. Bale Kulkul<br />4. Bale Palegongan<br />5. Bale Pagambuhan<br />6. Bale Mundar-mandir atau Bale Omkara<br />8.Bale Pawedaan<br />9.Bale Agung<br />10.Bale Kawas<br />11.Bale Pasamuhan Agung<br />12.Bale Papelik<br />13.Padmasana Tiga<br />14.Bale Tegeh Mpu Pradah<br />15.Bale Papelik Sang Hyang Siyem<br />16.Meru Tumpang-11<br />17.Meru Tumpang-9<br />18.Piasan Alit<br />19.Palinggih Babaturan<br />20.Bale Kembang Sirang<br />21.Bale Gong<br />22 Bale Papelik Kayu Selem<br />23 Bale Papelik Pasek Brejo<br />24 Bale Papelik Danghyang Dwijendra<br />25 Bale Papelik Manik Mas<br />26 Bale Gedong Arya Batu Lepang<br />27 Kehen<br />28 Meru Tumpang-7 Batara Geng<br />29 Meru Tumpang 11 Bhatari Gaya Tri<br />30 Bale Panggungan<br />31 Bale Pepelik Pelinggih Ida Ratu Ngalesung<br />32 Meru tumpang 5 I Gusti Ngurah Dauh<br />33 Meru tumpang 7 Bhatara Tulus Dewa<br />34 Meru tumpang 5 Bhatara Penataran<br />35 Meru tumpang 3 Bhatara Suka Luwih<br />36 Gedong Pelinggih Ida Gusti Teges<br />37 Gedong Pelinggih Hyang Angan Tiga<br />38 Bale Pepelik<br />39 Bale Kampuh<br />40 Bale Tegeh Pelinggih Hyang Widyadari<br />41 Bale Tegeh Pelinggih Hyang Widyadara<br />42 Bale Pepelik<br />43 Meru tumpang 11&nbsp;<br />44 Bebaturan Ratu Sedahan Manginte<br />45 Gedong Ida Ratu Ayu Subandar<br />46 Gedong Ida Ratu Ayu Ulang Alu<br />47 Pelinggih Arca<br />48 Meru tumpang 3&nbsp;<br />49 Bale Pepelik<br />50 Bale Pepelik<br />51 Meru tumpang 11&nbsp;<br /></p>'),


-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE IF NOT EXISTS `tb_user` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id_user`, `user`, `pass`) VALUES
(1, 'admin', 'admin');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
