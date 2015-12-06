-- phpMyAdmin SQL Dump
-- version 4.2.12deb2+deb8u1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 06, 2015 at 12:15 AM
-- Server version: 5.5.46-0+deb8u1
-- PHP Version: 5.6.14-0+deb8u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `onlinejudge`
--

-- --------------------------------------------------------

--
-- Table structure for table `announcement`
--

CREATE TABLE IF NOT EXISTS `announcement` (
`id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `created_at` date NOT NULL,
  `content` text NOT NULL,
  `id_user` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `announcement`
--

INSERT INTO `announcement` (`id`, `title`, `created_at`, `content`, `id_user`) VALUES
(1, 'Authoring System', '2015-12-02', 'Hello!\r\nSo, we heard that you have set some problems, and you want people from all over the world to try your masterpieces. We are thrilled to invite you to propose them to Jollybee Online Judge, and try out our new authoring system! If your problems are interesting (of course!) and approved, they will be made available in the problem archive, or if you feel like holding a Jolly Challenge contest with them, just tell us!\r\n\r\nAll you need to do is to submit your problem idea and the solution. If your problem is approved, you will be asked to upload the test cases.\r\n\r\nTo get started, click on your username on header to go to the Authoring page, or click here. You can read the guidelines in that page.\r\nWe always welcome your problems (not the other ones).\r\n\r\nHappy coding!\r\nP.S. Jolly Challenge #13 will be held on December 11, 2015', 1),
(2, 'Jollybee Recruitment Phase 1 Result', '2015-12-01', 'This announcement is for Bina Nusantara University (Indonesia) students who participated in Jollybee Recruitment Phase 1 contest.\r\n\r\nTerima kasih atas partisipasi kalian dalam mengikuti seleksi tahap 1. Setelah kami pertimbangkan bersama dan juga merupakan keputusan bersama, kami menurunkan batas soal minimum yang diperlukan agar dapat lolos ke seleksi tahap 2 (Onsite Coding). Menjadi minimum solve 6 soal (sebelumnya 15 soal) mengacu pada scoreboard di bawah ini.\r\nScoreboard - Jollybee Recruitment Phase 1\r\n\r\nDan juga, perlu anda perhatikan, bahwa kami dapat melihat source code dalam seluruh tahap seleksi, dan secara mengejutkan kami menemukan sejumlah code yang sama persis dan terindikasi melakukan kecurangan. Sehingga kami mengetahui siapa-siapa saja yang meng-copas solusi.\r\n\r\nBagi peserta tahap 1 yang solve (AC) minimum 6 soal, harap mengisi google form di bawah ini mengenai data-data kalian.\r\nGoogle Form\r\nForm paling lambat diterima tanggal 27 Oktober 2015 23.59.00\r\n\r\nUntuk seluruh peserta seleksi tahap 2, jika anda ada kelas pada tanggal 31 Oktober 2015 jam 11.20 sampai 15.00. Harap mengirimkan scan / foto yang jelas binusian flazz card anda ke email herzbazt@gmail.com dengan judul "Flazz Card". Paling lambat diterima tanggal 27 Oktober 2015 23.59.00\r\n\r\nUntuk informasi lebih lanjut mengenai seleksi tahap 2 (Onsite Coding) akan kami umumkan di website jollybeeoj.com dalam beberapa hari kedepan. Harap selalu memeriksa jollybeeoj.com untuk informasi lebih lanjut.\r\n\r\nBagi peserta yang lolos tahap 1 namun tidak mendaftar ulang menggunakan google form diatas, dianggap mengundurkan diri dari seleksi penerimaan Jollybee dan tidak dapat mengikuti rangkaian tahap seleksi berikutnya\r\n\r\nJika ada pertanyaan maupun pernyataan yang kurang jelas, harap email ke herzbazt@gmail.com', 1),
(3, 'Jollybee Recruitment Phase 1 Result', '2015-12-01', 'This announcement is for Bina Nusantara University (Indonesia) students who participated in Jollybee Recruitment Phase 1 contest.\r\n\r\nTerima kasih atas partisipasi kalian dalam mengikuti seleksi tahap 1. Setelah kami pertimbangkan bersama dan juga merupakan keputusan bersama, kami menurunkan batas soal minimum yang diperlukan agar dapat lolos ke seleksi tahap 2 (Onsite Coding). Menjadi minimum solve 6 soal (sebelumnya 15 soal) mengacu pada scoreboard di bawah ini.\r\nScoreboard - Jollybee Recruitment Phase 1\r\n\r\nDan juga, perlu anda perhatikan, bahwa kami dapat melihat source code dalam seluruh tahap seleksi, dan secara mengejutkan kami menemukan sejumlah code yang sama persis dan terindikasi melakukan kecurangan. Sehingga kami mengetahui siapa-siapa saja yang meng-copas solusi.\r\n\r\nBagi peserta tahap 1 yang solve (AC) minimum 6 soal, harap mengisi google form di bawah ini mengenai data-data kalian.\r\nGoogle Form\r\nForm paling lambat diterima tanggal 27 Oktober 2015 23.59.00\r\n\r\nUntuk seluruh peserta seleksi tahap 2, jika anda ada kelas pada tanggal 31 Oktober 2015 jam 11.20 sampai 15.00. Harap mengirimkan scan / foto yang jelas binusian flazz card anda ke email herzbazt@gmail.com dengan judul "Flazz Card". Paling lambat diterima tanggal 27 Oktober 2015 23.59.00\r\n\r\nUntuk informasi lebih lanjut mengenai seleksi tahap 2 (Onsite Coding) akan kami umumkan di website jollybeeoj.com dalam beberapa hari kedepan. Harap selalu memeriksa jollybeeoj.com untuk informasi lebih lanjut.\r\n\r\nBagi peserta yang lolos tahap 1 namun tidak mendaftar ulang menggunakan google form diatas, dianggap mengundurkan diri dari seleksi penerimaan Jollybee dan tidak dapat mengikuti rangkaian tahap seleksi berikutnya\r\n\r\nJika ada pertanyaan maupun pernyataan yang kurang jelas, harap email ke herzbazt@gmail.com', 1);

-- --------------------------------------------------------

--
-- Table structure for table `problem`
--

CREATE TABLE IF NOT EXISTS `problem` (
`id` int(11) NOT NULL,
  `problem_name` varchar(255) NOT NULL,
  `problem_desc` text NOT NULL,
  `sample_input` varchar(255) NOT NULL,
  `sample_output` varchar(255) NOT NULL,
  `test_input` varchar(255) NOT NULL,
  `test_output` varchar(255) NOT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `problem`
--

INSERT INTO `problem` (`id`, `problem_name`, `problem_desc`, `sample_input`, `sample_output`, `test_input`, `test_output`, `created_by`) VALUES
(1, 'A + B + ...', 'Diberikan N buah angka, anda diminta untuk mengeluarkan jumlah dari angka-angka tersebut.', '10 439 298 -935 72 636 774 -509 -568 228 47', '482', '1 -184', '-184', 1),
(2, 'Deduksi Peringkat', 'Akhir-akhir ini Tedy sangat gemar memainkan Makanio, sebuah permainan online yang ia temukan secara tidak sengaja beberapa bulan yang lalu. Pada permainan ini, peringkat pemain ditentukan hanya berdasarkan poin yang berhasil diperoleh pemain; semakin besar poin yang diraih, maka peringkat pemain tersebut akan semakin tinggi (semakin mendekati peringkat 1).\r\n\r\nSuatu hari Tedy berhasil mendapatkan poin sebesar M pada permainan Makanio, dan Tedy ingin segera mengetahui peringkat yang ia dapatkan. Namun, peringkat resmi pada permainan ini hanya diumumkan seminggu sekali, sehingga Tedy harus menunggu beberapa hari hingga waktu pengumumannya.\r\n\r\nSetelah bermain-main untuk beberapa waktu, Tedy menyadari bahwa ia bisa mendapatkan informasi poin dari seluruh pemain yang ada (tentunya dengan cara yang legal). Dengan demikian, tentunya, secara teori, ia bisa menghitung sendiri peringkat yang ia peroleh berdasarkan poin-poin yang ada. Tetapi jumlah pemain Makanio sangatlah banyak, sehingga ia kewalahan menghitung peringkatnya. Tedy memang kurang pandai, tapi ia baik hati; bantulah Tedy dengan menulis program untuk menentukan peringkatnya.\r\n\r\nPerlu diperhatikan, jika terdapat pemain dengan poin yang sama, maka pemain-pemain tersebut akan medapatkan peringkat yang sama. Namun, peringkat berikutnya akan diloncati tergantung berapa banyak orang yang memiliki poin yang sama tadi. Dengan kata lain, peringkat seseorang adalah R jika terdapat tepat R - 1 pemain lain yang poinnya lebih baik dari dirinya. Untuk lebih jelasnya, perhatikan penjelasan contoh input di bawah.\r\n\r\n\r\n<p>Input</p>\r\n\r\nBaris pertama berisi sebuah bilangan bulat T (T ? 100) yang menyatakan banyaknya kasus yang harus ditangani. Input untuk setiap kasus dimulai dengan dua buah bilangan bulat N dan M (1 ? N ? 100; 1 ? M ? 100.000) yang menyatakan banyaknya pemain Makanio selain Tedy dan poin yang diperoleh Tedy secara berturut-turut. Baris berikutnya berisi N buah bilangan bulat Pi yang menyatakan poin dari pemain ke-i (1 ? Pi ? 100.000).\r\n\r\n\r\n<p>Output</p>\r\n\r\nUntuk setiap kasus, cetak "Kasus #K: X" dimana K adalah nomor kasus dimulai dari 1, dan X adalah peringkat Tedy yang mendapatkan poin sebesar M.', '4\r\n6 5\r\n2 5 3 6 3 3\r\n6 3\r\n2 5 3 6 3 3\r\n6 3\r\n2 5 3 6 5 3\r\n14 58477\r\n11447 51296 22546 99789 50634 83232 15328 67370 9511 81785 92744 45504 39069 82813', 'Kasus #1: 2\r\nKasus #2: 3\r\nKasus #3: 4\r\nKasus #4: 7', '46 52 5 3 6 3 36 32 5 3 6 3 36 32 5 3 6 5 314 5847711447 51296 22546 99789 50634 83232 15328 67370 9511 81785 92744 45504 39069 82813', 'Kasus #1: 2\r\nKasus #2: 3\r\nKasus #3: 4\r\nKasus #4: 7', 1),
(3, 'Random Number', 'Diberikan angka N, bangkitkan bilangan random sebanyak N yang tidak boleh sama satu sama lain', '4', '0 1 2 3 4', '2', '0 1', 1),
(4, 'Perkalian', 'Diberikan N angka, hitung hasil perkalian semuanya', '3 1 2 3', '6', '3 1 2 3', '6', 1),
(6, 'Perkalian manual', 'Tidak ada inputan, print hasil 2 x 2', 'tidak ada', 'tidak ada', '', '4', 1),
(7, 'Operator', 'TedDB adalah seorang murid dari suatu Sekolah Dasar. Ia diberi peer oleh guru matematika-nya. Peer yang diberikan adalah berikut ini\r\n\r\nDiberikan dua bilangan A dan B. Isi operator antara +, -, * atau / sehingga A <operator> B = C\r\n\r\n\r\nInput\r\n\r\nBaris pertama berisi bilangan bulat T, banyaknya kasus (T <= 1000).\r\n\r\nSetiap kasus berisi baris yang terdiri dari 3 integer A, B dan C. A, B dan C pasti bisa ditampung dalam int 32 bit (-(2^31) s/d (2^31 - 1))\r\n\r\n\r\nOutput\r\n\r\nUntuk baris i, 1<=i<=T, tuliskan "Kasus #i: " tanpa tanda petik dan ''+'', ''-'', ''*'', ''/'' atau ''TIDAK ADA SOLUSI''. Jika ada berbagai kemungkinan operator yang memenuhi cetak hanya satu operator dengan prioritas urutan +, -, *, /', '5\r\n1 2 3\r\n3 1 2\r\n2 2 4\r\n2 4 8\r\n3 7 0', 'Kasus #1: +\r\nKasus #2: -\r\nKasus #3: +\r\nKasus #4: *\r\nKasus #5: TIDAK ADA SOLUSI', '5\r\n1 2 3\r\n3 1 2\r\n2 2 4\r\n2 4 8\r\n3 7 0', 'Kasus #1: +\r\nKasus #2: -\r\nKasus #3: +\r\nKasus #4: *\r\nKasus #5: TIDAK ADA SOLUSI', 1),
(8, 'Go Went Gone', 'Juki akhirnya berhasil membeli sebuah handphone baru merek ternama. Karena Juki senang bermain game, Juki langsung menginstal sebuah game di handphone miliknya. Game tersebut bernama Go Went Gone. Sebuah game dimana Juki mengendalikan sebuah karakter yang bernama George yang terus berlari tanpa henti.\r\n\r\nJuki sekarang sedang bermain game Go Went Gone. Pada jalan tempat George berlari, terdapat N buah koin yang akan ditemui George. George bisa saja mengambil koin itu atau tidak mengambilnya (George dapat melompati koin tersebut). Masing-masing koin memiliki nilai tersendiri. Jika George mengambil suatu koin, maka nilai dari koin tersebut akan ditambahkan ke skor Juki (skor awal Juki adalah 0). Setelah membaca buku panduan tentang permainan Go Went Gone, Juki mengetahui nilai masing-masing koin yang akan ditemui George. Dengan informasi tersebut, Juki ingin mengetahui: berapakah skor maksimal yang bisa ia dapatkan ?\r\n\r\n\r\nInput\r\n\r\nBaris pertama berisi sebuah bilangan T (T &#8804; 100) yang menyatakan banyaknya kasus yang harus ditangani.\r\n\r\nUntuk setiap kasus, diawali sebuah bilangan N (1 &#8804; N &#8804; 1000) yang menyatakan banyaknya koin yang terdapat di jalan. Baris berikutnya berisi N buah bilangan Pi (-1000 &#8804; Pi &#8804; 1000) yang menyatakan nilai dari koin ke-i.\r\n\r\n\r\nOutput\r\n\r\nUntuk setiap kasus, output "Kasus #Y: Z" (tanpa tanda kutip) di mana Y adalah nomor kasus dimulai dari 1, dan Z adalah score maksimal yang bisa Juki dapatkan.', '2\r\n5\r\n10 -1 0 10 10\r\n3\r\n-1 -2 -3', 'Kasus #1: 30\r\nKasus #2: 0', '2\r\n5\r\n10 -1 0 10 10\r\n3\r\n-1 -2 -3', 'Kasus #1: 30\r\nKasus #2: 0', 1),
(9, 'Reversal', 'Diberikan N buah bilangan dengan suatu urutan, cetaklah N buah bilangan tersebut dalam urutan terbalik!\r\n\r\n\r\nInput\r\n\r\nBaris pertama berisi sebuah bilangan N (N &#8804; 1000) yang menyatakan banyaknya bilangan. \r\nBaris berikutnya berisi N buah bilangan, yaitu Yi (1 &#8804; Yi &#8804; 1000000000).\r\n\r\n\r\nOutput\r\n\r\nCetaklah N buah bilangan tersebut dalam urutan terbalik dari Input. Berikan sebuah spasi di antara dua buah bilangan.', '5\r\n1 5 4 7 8', '8 7 4 5 1', '10\r\n1 2 3 4 5 6 7 8 9 0', '9 8 7 6 5 4 3 2 1 0', 1),
(10, 'No Nol', 'Sebuah bilangan positif adalah sebuah bilangan yang lebih besar dari pada 0 (Nol). Lalu apakah angka nol itu ? Gladya benci dengan angka nol (0) karena bentuknya yang bulat, tidak mempunyai sudut, membosankan apa yang dikalikan dengan 0 hasilnya adalah 0, semua angka tidak bisa dibagi 0, dan sebagainya. Oleh karena itu jika Gladya melihat angka 0, maka dia akan berubah menjadi ''Mad''ya (Mad = Marah).\r\n\r\nKalian sebagai guru matematikanya Gladya akan memberikan sebuah ujian kepada Gladya. Kalian tau bahwa juga Gladya berubah menjadi Mad, maka ia tidak akan bisa mengerjakan sebuah pelajaran dengan baik. Oleh karena itu kalian harus menjaga Gladya untuk tidak berubah menjadi Madya. Diberikan sebuah bilangan X. Tentukan bilangan N terkecil sehingga jika nilai N (N &#8805; 0) ditambahkan dengan X hasilnya tidak mengandung digit 0.\r\n\r\n\r\nInput\r\n\r\nBaris pertama berisi sebuah bilangan T (T &#8804; 1000) yang menyatakan jumlah kasus. Untuk setiap kasus, berisi sebuah bilangan X (1 &#8804; X &#8804; 1000.000.000.000.000.000).\r\n\r\n\r\nOutput\r\n\r\nUntuk setiap kasus output "Kasus K: N" dimana K adalah nomor kasus dimulai dari 1 dan N adalah nilai yang diminta.', '2\r\n10\r\n12345', 'Kasus 1: 1\r\nKasus 2: 0', '2\r\n10\r\n12345', 'Kasus 1: 1\r\nKasus 2: 0', 1);

-- --------------------------------------------------------

--
-- Table structure for table `submission`
--

CREATE TABLE IF NOT EXISTS `submission` (
`id` int(11) NOT NULL,
  `submission_date` date NOT NULL,
  `id_problem` int(10) NOT NULL,
  `id_user` int(10) NOT NULL,
  `verdict` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
`id` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Username` varchar(255) NOT NULL,
  `role` int(11) NOT NULL DEFAULT '2'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `Name`, `Email`, `Password`, `Username`, `role`) VALUES
(1, 'Anthony Viriya', 'aviriya@binus.edu', 'javatar', 'javatar98', 1),
(2, 'Test User', 'test', 'test', 'test', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `announcement`
--
ALTER TABLE `announcement`
 ADD PRIMARY KEY (`id`), ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `problem`
--
ALTER TABLE `problem`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `submission`
--
ALTER TABLE `submission`
 ADD PRIMARY KEY (`id`), ADD KEY `id_problem` (`id_problem`), ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `announcement`
--
ALTER TABLE `announcement`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `problem`
--
ALTER TABLE `problem`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `submission`
--
ALTER TABLE `submission`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `announcement`
--
ALTER TABLE `announcement`
ADD CONSTRAINT `announcement_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`),
ADD CONSTRAINT `announcement_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`);

--
-- Constraints for table `submission`
--
ALTER TABLE `submission`
ADD CONSTRAINT `submission_ibfk_1` FOREIGN KEY (`id_problem`) REFERENCES `problem` (`id`),
ADD CONSTRAINT `submission_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
