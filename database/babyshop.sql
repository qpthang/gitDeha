-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 04, 2018 at 06:07 PM
-- Server version: 10.1.29-MariaDB
-- PHP Version: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `babyshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `email` varchar(500) NOT NULL,
  `password` varchar(500) NOT NULL,
  `fullname` varchar(500) NOT NULL,
  `phonenumber` varchar(20) NOT NULL,
  `address` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `email`, `password`, `fullname`, `phonenumber`, `address`) VALUES
(1, 'phanthang@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'Phan Quyết Thắng', '123456789', 'Hà Nam'),
(2, 'thanhvu@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'Vũ Tiến Thành', '123456789', 'Thái BÌnh');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(10) NOT NULL,
  `c_name` varchar(50) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `c_name`) VALUES
(2, 'Sữa Alaska'),
(3, 'Sữa XO'),
(4, 'Sữa Abbott'),
(5, 'Sữa Zin Zin'),
(6, 'Sữa Mộc Châu'),
(7, 'Sữa Ông Thọ'),
(8, 'Sữa Similac'),
(9, 'Sữa PediaSure'),
(10, 'Sữa Cô gái Hà Lan'),
(11, 'Sữa Vinamilk');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `n_id` int(10) NOT NULL,
  `n_name` varchar(500) CHARACTER SET utf8 DEFAULT NULL,
  `n_description` varchar(2000) CHARACTER SET utf8 DEFAULT NULL,
  `n_content` text CHARACTER SET utf8,
  `n_img` varchar(500) CHARACTER SET utf8 DEFAULT NULL,
  `n_hotnews` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`n_id`, `n_name`, `n_description`, `n_content`, `n_img`, `n_hotnews`) VALUES
(3, 'Vinamilk Sure Prevent Mới – Giải Pháp Dinh Dưỡng Đặc Biệt Cho Người Lớn Tuổi', '<p>Vinamilk Sure Prevent Mới &ndash; Giải Ph&aacute;p Dinh Dưỡng Đặc Biệt Cho Người Lớn Tuổi</p>\r\n', '<p><strong>Vinamilk Sure Prevent Mới &ndash; Phục Hồi Sức Khỏe, Vẹn Tr&ograve;n Niềm Vui</strong></p>\r\n\r\n<p>Bao nhi&ecirc;u tuổi được gọi l&agrave; &quot;Gi&agrave;&rdquo;?</p>\r\n\r\n<p>L&atilde;o h&oacute;a l&agrave; một quy luật tự nhi&ecirc;n kh&ocirc;ng ai c&oacute; thể tr&aacute;nh khỏi. Thế nhưng qu&aacute; tr&igrave;nh l&atilde;o ho&aacute; bắt đầu khi n&agrave;o, điều đ&oacute; t&ugrave;y thuộc v&agrave;o thể chất của từng người. C&oacute; những người vừa bước qua tuổi 40 đ&atilde; gặp c&aacute;c vấn đề về sức khỏe như tim mạch, huyết &aacute;p, tiều đường, lo&atilde;ng xương, k&eacute;m ăn, k&eacute;m ngủ&hellip; Lại c&oacute; những người tuy đ&atilde; ngo&agrave;i 60, sức khỏe vẫn dẻo dai, tinh thần vẫn trẻ trung vui tươi. Điều g&igrave; đ&atilde; tạo ra sự kh&aacute;c biệt như vậy?</p>\r\n\r\n<p>Một b&iacute; quyết đơn giản nhưng v&ocirc; c&ugrave;ng hữu hiệu l&agrave; người cao tuổi phải biết chủ động chăm s&oacute;c bản th&acirc;n một c&aacute;ch khoa học, phải lu&ocirc;n &yacute; thức r&egrave;n luyện sức khỏe, sống lạc quan vui vẻ v&agrave; đặc biệt quan trọng l&agrave; phải ch&uacute; &yacute; đến chế độ dinh dưỡng hợp l&yacute;.</p>\r\n\r\n<p>Giải ph&aacute;p &quot;3 TỐT&rdquo; d&agrave;nh cho người lớn:</p>\r\n\r\n<p><strong>1. ĂN NGỦ TỐT</strong></p>\r\n\r\n<p>Hiểu được t&acirc;m sinh l&yacute; k&eacute;m ăn, kh&oacute; ngủ thường gặp ở người lớn tuổi, Vinamilk Sure Prevent l&agrave; một trong c&aacute;c loại sữa cho người gầy yếu v&igrave; bổ sung đầy đủ c&aacute;c Vitamin nh&oacute;m B, A, C, E v&agrave; c&aacute;c khoảng chất như Kẽm, Magi&ecirc;, Selen gi&uacute;p tăng cường sức đề kh&aacute;ng, giảm t&igrave;nh trạng mệt mỏi, gi&uacute;p ăn ngon, ngủ ngon. Chất xơ h&ograve;a tan FOS gi&uacute;p tăng cường vi khuẩn c&oacute; lợi trong đường ruột, hỗ trợ sức khỏe của hệ ti&ecirc;u h&oacute;a cho người lớn.</p>\r\n\r\n<p><strong>2. TỐT CHO TIM MẠCH:</strong></p>\r\n\r\n<p>C&aacute;c bệnh l&yacute; về tim mạch ch&iacute;nh l&agrave; nỗi lo của đa số người cao tuổi. Nguy cơ mắc c&aacute;c bệnh tim mạch thường được nhắc đến do h&agrave;m lượng cholesterol cao. Chế độ ăn uống kh&ocirc;ng hợp l&iacute; sẽ l&agrave;m lượng Cholesterol xấu trong m&aacute;u tăng cao. Lượng Cholesterol xấu dư thừa sẽ t&iacute;ch tụ v&agrave; g&acirc;y ra c&aacute;c mảng xơ vữa tr&ecirc;n th&agrave;nh động mạch, l&agrave;m mạch m&aacute;u bị tắc nghẽn dẫn đến c&aacute;c cơn đau tim, đột quỵ hay chứng xơ vữa động mạch.</p>\r\n\r\n<p>C&aacute;c nh&agrave; khoa học đ&atilde; t&igrave;m ra 1 dưỡng chất gọi l&agrave; Sterol ester thực vật (plant sterol) - đ&acirc;y l&agrave; chất b&eacute;o được chiết xuất tự nhi&ecirc;n từ thực vật. Do cấu tr&uacute;c tương tự cholesterol, Sterol ester thực vật thay thế hữu hiệu cholesterol trong h&aacute;c hạt mixen; nhờ vậy, lượng cholesterol xấu hấp thụ từ ruột non v&agrave;o m&aacute;u c&oacute; thể giảm đến 30 - 40%.</p>\r\n\r\n<p>Vinamilk Sure Prevent đ&atilde; ứng dụng th&agrave;nh c&ocirc;ng đưa dưỡng chất Plant Sterol v&agrave;o c&ocirc;ng thức sản phẩm. Đ&acirc;y l&agrave; sự hợp t&aacute;c của những tiến bộ khoa học dinh dưỡng h&agrave;ng đầu thế giới giữa Vinamilk v&agrave; tập đo&agrave;n dinh dưỡng ADM. ADM l&agrave; một tập đo&agrave;n dinh dưỡng h&agrave;ng đầu thế giới với phạm vi hoạt động rộng khắp tr&ecirc;n to&agrave;n cầu: Nam Mỹ, Bắc Mỹ, ch&acirc;u &Acirc;u v&agrave; cả ch&acirc;u &Aacute;, điều đ&oacute; gi&uacute;p ADM cộng t&aacute;c hiệu quả với c&aacute;c đối t&aacute;c tr&ecirc;n to&agrave;n cầu để chăm s&oacute;c sức khỏe mọi người một c&aacute;ch tốt nhất, trong đ&oacute; Vinamilk ch&iacute;nh l&agrave; một trong những đối t&aacute;c chiến lược.</p>\r\n\r\n<p><strong>3. TỐT CHO XƯƠNG</strong></p>\r\n\r\n<p><a href=\"https://giacmosuaviet.com.vn/products/vinamilk-sure-prevent-hop-thiec-900g\">Vinamilk Sure Prevent</a>&nbsp;-&nbsp;Sữa cho người gầy&nbsp;yếu suy nhược, người lớn tuổi gi&uacute;p phục hồi sức khỏe nhanh ch&oacute;ng. Ngo&agrave;i ra Sure Prevent c&ograve;n được bổ sung th&ecirc;m Canxi &ndash; Phốt pho với tỉ lệ c&acirc;n đối, kết hợp với Vitamin D gi&uacute;p tăng cường hấp thụ Canxi tối ưu, tạo hệ xương vững chắc</p>\r\n', '15197431611490154817-2d2a4996e1ca8041957543f6eb49f63dbce25913d0ab3aadccd548a5ad16c29f.jpg', 0),
(4, 'Dinh Dưỡng Cho Mẹ Bầu Để Thai Nhi Phát Triển Não Bộ Tốt', '<h2>Dinh Dưỡng Cho Mẹ Bầu Để Thai Nhi Ph&aacute;t Triển N&atilde;o Bộ Tốt</h2>\r\n', '<h2>Đối với c&aacute;c mẹ bầu, một thai nhi khỏe mạnh v&agrave; ph&aacute;t triển to&agrave;n diện lu&ocirc;n l&agrave; mối quan t&acirc;m lớn nhất. Dinh dưỡng đầy đủ trong thai kỳ đ&atilde; được chứng minh li&ecirc;n quan chặt chẽ đến sự ph&aacute;t triển của thai, đặc biệt l&agrave; sự ph&aacute;t triển tr&iacute; n&atilde;o. Như vậy, để chọn&nbsp;sữa n&agrave;o tốt nhất cho mẹ bầu&nbsp;v&agrave; x&acirc;y dựng 1 chế độ dinh dưỡng hợp l&yacute; gi&uacute;p tối ưu ph&aacute;t triển tr&iacute; n&atilde;o cho b&eacute;, c&aacute;c mẹ h&atilde;y tham khảo b&agrave;i viết dưới đ&acirc;y nh&eacute;.</h2>\r\n\r\n<p><strong>C&aacute;c cột mốc quan trọng trong qu&aacute; tr&igrave;nh ph&aacute;t triển n&atilde;o thai nhi m&agrave; mẹ cần lưu &yacute;</strong></p>\r\n\r\n<p>Theo TS. BS Ho&agrave;ng Thị Diễm Tuyết, gi&aacute;m đốc bệnh viện H&ugrave;ng Vương, ngay từ tuần tuần thứ 3 của thai kỳ, n&atilde;o bộ của b&eacute; đ&atilde; bắt đầu h&igrave;nh th&agrave;nh nhưng phải đến khoảng tuần thứ 8, n&atilde;o bộ của b&eacute; mới thật sự ph&aacute;t triển, c&aacute;c tế b&agrave;o thần kinh trong n&atilde;o được ph&acirc;n nh&aacute;nh để kết nối với nhau, h&igrave;nh th&agrave;nh những &ldquo;đường m&ograve;n&rdquo; đầu ti&ecirc;n tr&ecirc;n n&atilde;o. Ch&iacute;nh v&igrave; vậy, ở thời điểm n&agrave;y, thai nhi đ&atilde; c&oacute; thể cảm nhận được th&ocirc;ng tin ph&aacute;t ra từ mẹ</p>\r\n', '1519743233', 1),
(5, 'Sữa Bầu Dielac Mama Gold Giúp Mẹ Khỏe – Bé Thông Minh', '<h2>Sữa Bầu Dielac Mama Gold Gi&uacute;p Mẹ Khỏe &ndash; B&eacute; Th&ocirc;ng Minh</h2>\r\n', '<p><strong>Hai dưỡng chất v&agrave;ng gi&uacute;p b&eacute; khỏe v&agrave; th&ocirc;ng minh từ trong bụng mẹ</strong></p>\r\n\r\n<p>+ Axit folic ngăn ngừa dị tật thai nhi</p>\r\n\r\n<p>Axit folic hay c&ograve;n gọi l&agrave; vitamin B9 rất cần thiết cho sự ph&aacute;t triển v&agrave; ph&acirc;n chia tế b&agrave;o v&agrave; sự h&igrave;nh th&agrave;nh của tế b&agrave;o m&aacute;u n&ecirc;n rất quan trọng với mẹ bầu. Axit folic c&ograve;n l&agrave; dưỡng chất cần thiết gi&uacute;p giảm thiểu tới 70% nguy cơ khuyết tật ống thần kinh v&agrave; dị tật bẩm sinh, t&aacute;c động t&iacute;ch cực quan trọng đến qu&aacute; tr&igrave;nh ph&aacute;t triển v&agrave; ph&acirc;n chia tế b&agrave;o trong cơ thể b&eacute;.</p>\r\n\r\n<p>Mẹ bầu cần bổ sung axit folic ngay từ khi chuẩn bị mang thai v&agrave; trog suốt thai kỳ, nhất l&agrave; 3 th&aacute;ng đầu ti&ecirc;n.</p>\r\n\r\n<p>Nguồn bổ sung axit folic cho mẹ: thực phẩm c&oacute; m&agrave;u xanh l&aacute; c&acirc;y, c&aacute;c loại rau l&aacute; mầm v&agrave; cải bắp, c&aacute;c loại đậu, c&aacute;c loại tr&aacute;i c&acirc;y như cam, bơ v&agrave; c&agrave; chua, gạo n&acirc;u v&agrave; c&aacute;c loại gạo nguy&ecirc;n c&aacute;m kh&aacute;c, sữa bầu như sữa Dielac Mama Gold&hellip;</p>\r\n\r\n<p>+ DHA ho&agrave;n thiện n&atilde;o bộ con y&ecirc;u</p>\r\n\r\n<p>DHA l&agrave; acid b&eacute;o thuộc nh&oacute;m omega-3, một th&agrave;nh phần ch&iacute;nh của m&agrave;ng tế b&agrave;o thần kinh v&agrave; mắt, cần thiết cho hoạt động t&acirc;m tr&iacute; v&agrave; thị lực. Khi mang thai, thai nhi đ&ograve;i hỏi được cung cấp một lượng DHA lớn để tương ứng với lượng DHA của n&atilde;o tăng l&ecirc;n trong thai kỳ v&agrave; trong c&aacute;c th&aacute;ng sau khi sinh. Khi được cung cấp đủ lượng DHA cần thiết, b&eacute; y&ecirc;u của mẹ sẽ sở hữu tr&iacute; nhớ tốt hơn, đ&ocirc;i mắt tinh nhanh, đồng thời cơ thể cũng đủ khỏe mạnh để chống lại c&aacute;c bệnh về đường h&ocirc; hấp, bệnh dị ứng, cảm lạnh, cảm c&uacute;m&hellip;</p>\r\n', '15197432841490154817-2d2a4996e1ca8041957543f6eb49f63dbce25913d0ab3aadccd548a5ad16c29f.jpg', 1),
(6, 'Lời Khuyên Của Chuyên Gia Cho Bé Có Giấc Ngủ Ngoan Và “Chất”', '<h2>Lời Khuy&ecirc;n Của Chuy&ecirc;n Gia Cho B&eacute; C&oacute; Giấc Ngủ Ngoan V&agrave; &ldquo;Chất&rdquo;</h2>\r\n', '<p>Trong thời gian những th&aacute;ng đầu đời, một ng&agrave;y của b&eacute; d&agrave;nh nhiều nhất cho việc ngủ v&agrave; b&eacute; chia thời gian ngủ của m&igrave;nh th&agrave;nh những giấc ngủ ngắn. L&agrave;m thế n&agrave;o để b&eacute; ngủ ngon v&agrave; chất lượng hơn? L&agrave;m thế n&agrave;o để b&eacute; vẫn vừa ngủ đủ vừa đ&aacute;p ứng được nhu cầu quan trọng hơn đ&oacute; l&agrave; măm sữa? C&aacute;ch nhận biết&nbsp;sữa tốt cho trẻ dưới 1 tuổi? C&aacute;c mẹ c&ugrave;ng t&igrave;m hiểu từ lời khuy&ecirc;n của c&aacute;c chuy&ecirc;n gia nh&eacute;.</p>\r\n\r\n<p><strong>Đủ đầy cho giấc ngủ của b&eacute;</strong></p>\r\n\r\n<p>Mỗi một ng&agrave;y b&eacute; sơ sinh d&agrave;nh đến hơn 16 giờ để ngủ v&agrave; giấc ngủ của b&eacute; chia th&agrave;nh nhiều giai đoạn: ngủ lơ mơ, ngủ h&eacute; mắt, ngủ ngắn, ngủ s&acirc;u v&agrave; ngủ rất s&acirc;u. L&uacute;c đầu những giấc ngủ của b&eacute; k&eacute;o d&agrave;i khoảng 3-4 giờ sau đ&oacute; sẽ thức dậy để măm măm v&agrave; qu&aacute; tr&igrave;nh n&agrave;y cứ lu&acirc;n phi&ecirc;n nhau. Qua thời gian, b&eacute; dần th&iacute;ch nghi với nhịp điệu cuộc sống b&ecirc;n ngo&agrave;i th&igrave; thời gian ngủ của b&eacute; sẽ ngắn hơn v&agrave; mỗi giấc ngủ sẽ d&agrave;i hơn.</p>\r\n\r\n<p><strong>Những điều mẹ cần biết cho b&eacute; giấc ngủ chất lượng v&agrave; đủ đầy c&aacute;c nhu cầu</strong></p>\r\n\r\n<ul>\r\n	<li><strong>Đ&aacute;nh thức b&eacute; dậy khi đến giờ ăn</strong>? Đ&acirc;y l&agrave; vấn đề c&ograve;n nhiều tranh luận. Bạn n&ecirc;n nhớ rằng dung t&iacute;ch dạ d&agrave;y trẻ c&ograve;n rất nhỏ v&agrave; thức ăn ch&iacute;nh của trẻ l&agrave; sữa. Sữa ti&ecirc;u h&oacute;a nhanh n&ecirc;n cần cho b&eacute; b&uacute; mỗi 2 &ndash; 3 giờ. Đối với b&eacute; măm sữa mẹ th&igrave; cứ khoảng 2 giờ b&eacute; sẽ dậy để b&uacute; một lần v&igrave; măm sữa mẹ b&eacute; sẽ nhanh đ&oacute;i hơn sữa c&ocirc;ng thức. Một b&eacute; sanh đủ th&aacute;ng v&agrave; khỏe mạnh, kh&ocirc;ng c&oacute; bệnh l&yacute;, th&igrave; kh&ocirc;ng cần đ&aacute;nh thức b&eacute; để cho b&uacute;. Theo khuyến nghị của Tổ chức Y tế Thế giới trẻ b&uacute; mẹ ho&agrave;n to&agrave;n b&uacute; theo nhu cầu, kh&ocirc;ng bắt buột phải c&oacute; thời gian cố định. Tuy nhi&ecirc;n đối với b&eacute; tăng trưởng chậm, mẹ n&ecirc;n đ&aacute;nh thức b&eacute; dậy đ&uacute;ng giờ măm măm (2-4 giờ/lần) nhằm đảm bảo b&eacute; c&oacute; đủ năng lượng từ việc ăn để ph&aacute;t triển cơ thể.</li>\r\n	<li><strong>Đảm bảo b&eacute; no trước khi đi ngủ.&nbsp;</strong>Khi b&eacute; thức dậy v&agrave; đ&ograve;i măm, mẹ h&atilde;y cho b&eacute; măm đủ sữa trước khi giấc ngủ tiếp theo bắt đầu. C&oacute; một điều th&uacute; vị của việc h&igrave;nh th&agrave;nh th&oacute;i quen b&uacute; đ&ecirc;m m&agrave; c&aacute;c mẹ thường rất sợ l&agrave;: nếu b&eacute; ngủ tiếp sau khi b&uacute; mới được một &iacute;t v&agrave; cảm thấy chưa no th&igrave; b&eacute; sẽ kh&ocirc;ng ngủ ngon v&agrave; giấc ngủ sẽ ngắn hơn, l&uacute;c b&eacute; thức dậy mẹ sẽ nghĩ b&eacute; đang đ&oacute;i v&agrave; cho măm tiếp, ch&iacute;nh đều n&agrave;y khi lặp lại nhiều lần sẽ h&igrave;nh th&agrave;nh n&ecirc;n th&oacute;i quen &ldquo;b&uacute; đ&ecirc;m&rdquo; ở b&eacute;. V&igrave; vậy mẹ cứ đ&aacute;nh thức b&eacute; dậy v&agrave; cho măm tiếp nếu b&eacute; ngủ khi chưa no. Việc b&eacute; b&uacute; một hơi d&agrave;i, khi b&uacute; c&oacute; thể ph&aacute;t ra tiếng g&ugrave; g&ugrave; v&agrave; sau đ&oacute; tỏ ra h&agrave;i l&ograve;ng rồi thiếp đi l&agrave; dấu hiệu chứng tỏ b&eacute; đ&atilde; no. Đặc biệt mẹ n&ecirc;n chọn c&aacute;c loại &quot;sữa m&aacute;t&quot; v&agrave; ph&ugrave; hợp với cơ địa để b&eacute; dễ hấp thu ti&ecirc;u h&oacute;a tốt v&agrave; ngủ ngon hơn mẹ nh&eacute;.</li>\r\n</ul>\r\n\r\n<p><em>Mẹ n&ecirc;n đảm bảo b&eacute; được măm sữa no trước khi đi ngủ</em></p>\r\n\r\n<ul>\r\n	<li><strong>Kh&ocirc;ng n&ecirc;n tập cho b&eacute; thức khuya&nbsp;</strong>v&igrave; sẽ khiến b&eacute; mệt, kh&oacute; ngủ, quấy đ&ecirc;m. Để tốt hơn cho b&eacute; mẹ n&ecirc;n cho b&eacute; ngủ sớm hơn b&igrave;nh thường 30 ph&uacute;t gi&uacute;p b&eacute; ngủ ngon hơn v&agrave; thức dậy sảng kho&aacute;i hơn.</li>\r\n	<li><strong>Để b&eacute; tự ngủ.</strong>&nbsp;Sau khi loại bỏ những t&aacute;c động khiến b&eacute; bị k&iacute;ch th&iacute;ch v&agrave; kh&ocirc;ng muốn ngủ, mẹ n&ecirc;n để b&eacute; tự đi v&agrave;o giấc ngủ. Nếu b&eacute; quấy kh&oacute;c mẹ c&oacute; thể chiều chuộng vỗ về b&eacute; một ch&uacute;t để b&eacute; b&igrave;nh tĩnh lại nhưng sau đ&oacute; vẫn đặt b&eacute; xuống giường để b&eacute; tự ngủ.</li>\r\n	<li><strong>Kh&ocirc;ng để b&eacute; ngủ c&ugrave;ng với th&uacute; cưng&nbsp;</strong>v&igrave; c&oacute; thể khiến b&eacute; mắc một số bệnh về đường h&ocirc; hấp, bị c&aacute;c lo&agrave;i vật sống k&iacute; sinh g&acirc;y dị dứng hoặc bị th&uacute; nu&ocirc;i (ch&oacute;, m&egrave;o&hellip;) l&agrave;m tổn thương l&agrave;n da non mềm.</li>\r\n</ul>\r\n\r\n<p><strong>Mẹ n&ecirc;n chuẩn bị g&igrave; để b&eacute; c&oacute; điều kiện ho&agrave;n hảo cho một giấc ngủ ngon</strong></p>\r\n', '1519743327', 1),
(7, 'Nguyên Do Khiến Bé Quấy Khóc Và Cách Chọn Sữa Cho Trẻ Sơ Sinh Phù Hợp', '<h2>Nguy&ecirc;n Do Khiến B&eacute; Quấy Kh&oacute;c V&agrave; C&aacute;ch Chọn Sữa Cho Trẻ Sơ Sinh Ph&ugrave; Hợp</h2>\r\n', '<h2>&nbsp;</h2>\r\n\r\n<p>Mặc d&ugrave; khoẻ mạnh nhưng c&aacute;c b&eacute; của mẹ lại hay c&oacute; hiện tượng kh&oacute;c dai dẳng, nhất l&agrave; c&aacute;c b&eacute; dưới 4 th&aacute;ng tuổi. Trung b&igrave;nh tổng thời gian b&eacute; kh&oacute;c tr&ecirc;n 3 tiếng đồng hồ một ng&agrave;y, mỗi tuần c&oacute; tr&ecirc;n 3 ng&agrave;y như thế v&agrave; xảy ra k&eacute;o d&agrave;i tr&ecirc;n 1 tuần, cơn kh&oacute;c thường xảy ra v&agrave;o chiều tối hay ban đ&ecirc;m. Khi đ&oacute;, mặt b&eacute; thường nhăn nh&oacute; kh&oacute; chịu, kh&oacute;c to kh&oacute; dỗ, đầu gối co l&ecirc;n, lưng cong tr&ocirc;ng rất đau đ&oacute;n. Vậy đ&acirc;u l&agrave; nguy&ecirc;n nh&acirc;n khiến b&eacute; quấy kh&oacute;c v&agrave; mẹ c&oacute; thể l&agrave;m g&igrave; để &ldquo;&aacute;p chế&rdquo; hiện tượng n&agrave;y? Những thắc mắc của mẹ sẽ được giải đ&aacute;p trong b&agrave;i viết dưới đ&acirc;y.</p>\r\n', '1519743369', 1);

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `order_id` int(11) NOT NULL,
  `ngaymua` date DEFAULT NULL,
  `thanhtien` float DEFAULT NULL,
  `ten` varchar(100) CHARACTER SET utf8 NOT NULL,
  `sdt` varchar(20) CHARACTER SET utf8 NOT NULL,
  `diachi` varchar(100) CHARACTER SET utf8 NOT NULL,
  `status` int(1) NOT NULL,
  `httt` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`order_id`, `ngaymua`, `thanhtien`, `ten`, `sdt`, `diachi`, `status`, `httt`) VALUES
(1, '2018-03-03', 125000, 'thành', '0985087869', 'Hà Nam', 0, 0),
(2, '2018-03-03', 125000, 'thành', '0985087869', 'Hà Nam', 0, 0),
(3, '2018-03-03', 125000, 'Thàh', '091233312', 'Hà Nội', 0, 0),
(4, '2018-03-03', 125000, 'a', '1234523456', 'a', 1, 0),
(5, '2018-03-03', 200000, 'a', '1234567', 'a', 1, 0),
(6, '2018-03-03', 200000, 'a', '1234567', 'a', 1, 0),
(7, '2018-03-03', 325000, 'thành', '09122233344', 'Hà Nội', 0, 0),
(8, '2018-03-03', 325000, 'thành', '09876554', 'thái bình', 0, 0),
(9, '2018-03-03', 125000, 'kiên', '098766544', 'hải dương', 0, 1),
(11, '2018-03-04', 200000, 'chiến', '01546879625', 'Ninh Bình', 0, 0),
(12, '2018-03-04', 200000, 'Hằng', '0966874108', 'Nam Định', 2, 1),
(13, '2018-03-04', 200000, 'thành', '01687995075', 'Thái Bình', 1, 1),
(21, '2018-03-04', 125000, 'thành', '12345678', 'hanoi', 0, 1),
(22, '2018-03-04', 125000, 'thắng', '098765432', 'Hà Nam', 0, 1),
(23, '2018-03-04', 125000, 'Kiên', '09876543', 'Nam Định', 0, 1),
(24, '2018-03-04', 123456, 'thành', '01687996076', 'Hà Nội', 0, 1),
(26, '2018-03-04', 200000, 'thanh', '0987654', 'thaibinh', 0, 1),
(29, '2018-03-04', 125000, 'nam', '09876543', 'thaibinh', 0, 1),
(30, '2018-03-04', 200000, 'thang', '0987654', 'hanam', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `order_detail`
--

CREATE TABLE `order_detail` (
  `order_detail_id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `o_number` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_detail`
--

INSERT INTO `order_detail` (`order_detail_id`, `order_id`, `product_id`, `o_number`) VALUES
(1, 6, 4, 1),
(2, 7, 4, 1),
(3, 7, 6, 1),
(4, 8, 4, 1),
(5, 8, 6, 1),
(6, 9, 6, 1),
(7, 11, 4, 1),
(8, 12, 4, 1),
(9, 13, 4, 1),
(10, 15, 4, 1),
(11, 18, 6, 1),
(12, 21, 6, 1),
(13, 22, 6, 1),
(14, 23, 6, 1),
(15, 24, 3, 1),
(16, 25, 4, 1),
(17, 26, 4, 1),
(18, 27, 4, 1),
(19, 28, 6, 1),
(20, 29, 6, 1),
(21, 30, 4, 1),
(22, 31, 6, 1),
(23, 32, 6, 1),
(24, 33, 3, 1),
(25, 34, 6, 1),
(26, 35, 6, 1),
(27, 36, 6, 1),
(28, 37, 6, 2),
(29, 37, 4, 1),
(30, 38, 6, 1),
(31, 39, 4, 1),
(32, 40, 6, 1),
(33, 41, 6, 1),
(34, 42, 3, 1),
(35, 43, 4, 1),
(36, 44, 6, 1),
(37, 45, 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `producer`
--

CREATE TABLE `producer` (
  `producer_id` int(10) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `phone` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `address` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(10) NOT NULL,
  `fk_category_id` int(10) DEFAULT NULL,
  `p_name` varchar(500) CHARACTER SET utf8 DEFAULT NULL,
  `p_description` varchar(2000) CHARACTER SET utf8 DEFAULT NULL,
  `p_content` text CHARACTER SET utf8,
  `p_img` varchar(500) CHARACTER SET utf8 DEFAULT NULL,
  `p_price` float DEFAULT NULL,
  `p_hotproduct` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `fk_category_id`, `p_name`, `p_description`, `p_content`, `p_img`, `p_price`, `p_hotproduct`) VALUES
(1, 11, 'SỮA BỘT VINAMILK SURE DIECERNA 900G (HỘP THIẾC)', '<p>SỮA BỘT VINAMILK SURE DIECERNA 900G (HỘP THIẾC)</p>\r\n', '<p>Quy c&aacute;ch th&ugrave;ng:&nbsp;12 hộp/th&ugrave;ng</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>T&ecirc;n sản phẩm: Thực phẩm bổ sung&nbsp;Sữa bột Vinamilk Sure Diecerna - Hộp thiếc 900g</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Đối tượng sử dụng:</strong>&nbsp;D&agrave;nh cho người bệnh tiểu đường hoặc tiền tiểu đường</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Sản phẩm dinh dưỡng đặc biệt Vinamilk Sure Diecerna được Viện Dinh Dưỡng Quốc Gia kiểm nghiệm l&acirc;m s&agrave;ng cho kết quả chỉ số đường huyết thấp khi sử dụng. B&ecirc;n cạnh hỗ trợ b&igrave;nh ổn đường huyết, Vinamilk Sure Diecerna c&ograve;n hỗ trợ cho hệ tim mạch, tăng cường sức đề kh&aacute;ng, giảm t&igrave;nh trạng mệt mỏi của người bệnh v&agrave; cung cấp dưỡng chất dễ ti&ecirc;u ho&aacute;, dễ hấp thu.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>1. Kiểm so&aacute;t đường huyết:</strong>&nbsp;c&ocirc;ng thức gi&uacute;p kiểm so&aacute;t đường huyết với đường hấp thu chậm Palatinose v&agrave; chất xơ h&ograve;a tan c&oacute; chỉ số đường huyết thấp kh&ocirc;ng l&agrave;m đường huyết tăng nhanh sau khi ăn.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>2. Hỗ trợ hệ tim mạch:</strong>&nbsp;Hệ dầu thực vật gi&agrave;u c&aacute;c axit b&eacute;o thiết yếu kh&ocirc;ng no MUFA, PUFA v&agrave; đặc biệt chưa DHA kh&ocirc;ng l&agrave;m tăng mỡ m&aacute;u v&agrave; l&agrave;m giảm cholesterol xấu, gi&uacute;p cho hệ tim mạch khỏe mạnh.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>3. Tăng cường sức đề kh&aacute;ng &amp; giảm t&igrave;nh trạng mệt mỏi:</strong>&nbsp;Sự kết hợp c&aacute;c vitamin A, C, E, vitamin nh&oacute;m B v&agrave; c&aacute;c kho&aacute;ng chất Magie, kẽm, Selen gi&uacute;p tăng cường sức đề kh&aacute;ng, giảm t&igrave;nh trạng mệt mỏi ở người bệnh.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>4. Dễ ti&ecirc;u h&oacute;a v&agrave; hấp thu:</strong>&nbsp;</p>\r\n\r\n<p>- Cung cấp c&aacute;c axit amin thiết yếu từ nguồn đạm dễ hấp thu: đạm sữa v&agrave; đạm đậu n&agrave;nh</p>\r\n\r\n<p>- Bổ sung chất xơ h&ograve;a tan inulin v&agrave; oligofructose gi&uacute;p tăng cường hệ vi khuẩn c&oacute; lợi trong đường ruột, hỗ trợ sức khỏe ti&ecirc;u h&oacute;a v&agrave; tăng khả năng hấp thu c&aacute;c kho&aacute;ng chất như Canxi v&agrave; Magie.</p>\r\n\r\n<p>- L-carnitin hỗ trợ qu&aacute; tr&igrave;nh chuyển h&oacute;a chất b&eacute;o th&agrave;nh năng lượng cung cấp cho cơ thể.</p>\r\n\r\n<hr />\r\n<p>Sữa d&agrave;nh cho người tiểu đường Vinamilk Sure Diecerna được Viện Dinh Dưỡng Quốc Gia chứng nhận l&acirc;m s&agrave;ng c&oacute; chỉ số đường huyết thấp GI =27.6. L&agrave; loại sữa tốt d&agrave;nh cho người tiểu đường v&agrave; tiền tiểu đường:</p>\r\n\r\n<p><strong>1. Bổ sung đường&nbsp;Palatinose&nbsp;gi&uacute;p b&igrave;nh ổn đường huyết</strong></p>\r\n\r\n<p><strong>2. Kết hợp&nbsp;MUFA, PUFA, DHA&nbsp;tốt cho hệ tim mạch</strong></p>\r\n\r\n<p><strong>3. Bổ sung chất xơ h&ograve;a tan&nbsp;inulin v&agrave; oligofructose&nbsp;tăng khả năng hấp thu, hỗ trợ hệ ti&ecirc;u h&oacute;a</strong></p>\r\n\r\n<p><strong>4. Bổ sung&nbsp;L-Carnitin&nbsp;hỗ trợ chuyển h&oacute;a chất b&eacute;o th&agrave;nh năng lượng</strong></p>\r\n', '1519958056images.jpg', 500000, 1),
(2, 11, 'SỮA TƯƠI TIỆT TRÙNG VINAMILK 100% ÍT ĐƯỜNG - HỘP GIẤY 1L', '<p>SỮA TƯƠI TIỆT TR&Ugrave;NG VINAMILK 100% &Iacute;T ĐƯỜNG - HỘP GIẤY 1L</p>\r\n', '<h5>M&Ocirc; TẢ SẢN PHẨM</h5>\r\n\r\n<p>Quy c&aacute;ch th&ugrave;ng: 12 hộp/th&ugrave;ng</p>\r\n\r\n<p><strong>T&ecirc;n sản phẩm: Thực phẩm bổ sung&nbsp;Sữa tươi tiệt tr&ugrave;ng Vinamilk 100% &Iacute;t Đường -&nbsp; Hộp giấy 1L</strong></p>\r\n\r\n<p>&bull; Được l&agrave;m từ 100% sữa b&ograve; tươi nguy&ecirc;n chất từ những n&ocirc;ng trại rộng lớn trải d&agrave;i khắp Việt Nam, gi&agrave;u c&aacute;c dưỡng chất tự nhi&ecirc;n, tươi ngon &amp; bổ dưỡng.</p>\r\n\r\n<p>&bull; Bổ sung Vitamin D3 theo chuẩn EFSA Ch&acirc;u &Acirc;u gi&uacute;p hỗ trợ miễn dịch, cho cả gia đ&igrave;nh th&ecirc;m khỏe mạnh để lu&ocirc;n sẵn s&agrave;ng l&agrave;m tốt những c&ocirc;ng việc quan trọng mỗi ng&agrave;y.</p>\r\n\r\n<p><strong><em>Lưu &yacute;:&nbsp;Kh&ocirc;ng d&agrave;nh cho trẻ dưới 1 tuổi</em></strong></p>\r\n', '15199580461458549754735_4901946.jpg', 30000, 1),
(3, 8, 'SỮA TƯƠI TIỆT TRÙNG VINAMILK 100% ÍT ĐƯỜNG - HỘP GIẤY 1L', '<p>SỮA TƯƠI TIỆT TR&Ugrave;NG VINAMILK 100% &Iacute;T ĐƯỜNG - HỘP GIẤY 1L</p>\r\n', '<h5>M&Ocirc; TẢ SẢN PHẨM</h5>\r\n\r\n<p>Quy c&aacute;ch th&ugrave;ng: 12 hộp/th&ugrave;ng</p>\r\n\r\n<p><strong>T&ecirc;n sản phẩm: Thực phẩm bổ sung&nbsp;Sữa tươi tiệt tr&ugrave;ng Vinamilk 100% &Iacute;t Đường -&nbsp; Hộp giấy 1L</strong></p>\r\n\r\n<p>&bull; Được l&agrave;m từ 100% sữa b&ograve; tươi nguy&ecirc;n chất từ những n&ocirc;ng trại rộng lớn trải d&agrave;i khắp Việt Nam, gi&agrave;u c&aacute;c dưỡng chất tự nhi&ecirc;n, tươi ngon &amp; bổ dưỡng.</p>\r\n\r\n<p>&bull; Bổ sung Vitamin D3 theo chuẩn EFSA Ch&acirc;u &Acirc;u gi&uacute;p hỗ trợ miễn dịch, cho cả gia đ&igrave;nh th&ecirc;m khỏe mạnh để lu&ocirc;n sẵn s&agrave;ng l&agrave;m tốt những c&ocirc;ng việc quan trọng mỗi ng&agrave;y.</p>\r\n\r\n<p><strong><em>Lưu &yacute;:&nbsp;Kh&ocirc;ng d&agrave;nh cho trẻ dưới 1 tuổi</em></strong></p>\r\n', '15199580364314423dielac_gold_step_1_900g.jpg', 123456, 1),
(4, 5, 'SỮA TƯƠI TIỆT TRÙNG VINAMILK 100% ÍT ĐƯỜNG - HỘP GIẤY 1L', '<p>SỮA TƯƠI TIỆT TR&Ugrave;NG VINAMILK 100% &Iacute;T ĐƯỜNG - HỘP GIẤY 1L</p>\r\n', '<h5>M&Ocirc; TẢ SẢN PHẨM</h5>\r\n\r\n<p>Quy c&aacute;ch th&ugrave;ng: 12 hộp/th&ugrave;ng</p>\r\n\r\n<p><strong>T&ecirc;n sản phẩm: Thực phẩm bổ sung&nbsp;Sữa tươi tiệt tr&ugrave;ng Vinamilk 100% &Iacute;t Đường -&nbsp; Hộp giấy 1L</strong></p>\r\n\r\n<p>&bull; Được l&agrave;m từ 100% sữa b&ograve; tươi nguy&ecirc;n chất từ những n&ocirc;ng trại rộng lớn trải d&agrave;i khắp Việt Nam, gi&agrave;u c&aacute;c dưỡng chất tự nhi&ecirc;n, tươi ngon &amp; bổ dưỡng.</p>\r\n\r\n<p>&bull; Bổ sung Vitamin D3 theo chuẩn EFSA Ch&acirc;u &Acirc;u gi&uacute;p hỗ trợ miễn dịch, cho cả gia đ&igrave;nh th&ecirc;m khỏe mạnh để lu&ocirc;n sẵn s&agrave;ng l&agrave;m tốt những c&ocirc;ng việc quan trọng mỗi ng&agrave;y.</p>\r\n\r\n<p><strong><em>Lưu &yacute;:&nbsp;Kh&ocirc;ng d&agrave;nh cho trẻ dưới 1 tuổi</em></strong></p>\r\n', '15199580203002954.jpg', 200000, 1),
(5, 6, 'SỮA TƯƠI TIỆT TRÙNG VINAMILK 100% ÍT ĐƯỜNG - HỘP GIẤY 1L', '<p>SỮA TƯƠI TIỆT TR&Ugrave;NG VINAMILK 100% &Iacute;T ĐƯỜNG - HỘP GIẤY 1L</p>\r\n', '<h5>M&Ocirc; TẢ SẢN PHẨM</h5>\r\n\r\n<p>Quy c&aacute;ch th&ugrave;ng: 12 hộp/th&ugrave;ng</p>\r\n\r\n<p><strong>T&ecirc;n sản phẩm: Thực phẩm bổ sung&nbsp;Sữa tươi tiệt tr&ugrave;ng Vinamilk 100% &Iacute;t Đường -&nbsp; Hộp giấy 1L</strong></p>\r\n\r\n<p>&bull; Được l&agrave;m từ 100% sữa b&ograve; tươi nguy&ecirc;n chất từ những n&ocirc;ng trại rộng lớn trải d&agrave;i khắp Việt Nam, gi&agrave;u c&aacute;c dưỡng chất tự nhi&ecirc;n, tươi ngon &amp; bổ dưỡng.</p>\r\n\r\n<p>&bull; Bổ sung Vitamin D3 theo chuẩn EFSA Ch&acirc;u &Acirc;u gi&uacute;p hỗ trợ miễn dịch, cho cả gia đ&igrave;nh th&ecirc;m khỏe mạnh để lu&ocirc;n sẵn s&agrave;ng l&agrave;m tốt những c&ocirc;ng việc quan trọng mỗi ng&agrave;y.</p>\r\n\r\n<p><strong><em>Lưu &yacute;:&nbsp;Kh&ocirc;ng d&agrave;nh cho trẻ dưới 1 tuổi</em></strong></p>\r\n', '15199580110000505_sua-pediasure-shake-mix-huong-vanilla-danh-cho-tre-bieng-an_550.jpeg', 400000, 0),
(6, 6, 'Sữa nutifood', '<p>C&oacute; nhiều hương vị tr&aacute;i c&acirc;y tự nhi&ecirc;n: d&acirc;u, sầu ri&ecirc;ng, cốm, dừa, khoai m&ocirc;n, đậu xanh</p>\r\n', '<p>C&oacute; nhiều hương vị tr&aacute;i c&acirc;y tự nhi&ecirc;n: d&acirc;u, sầu ri&ecirc;ng, cốm, dừa, khoai m&ocirc;n, đậu xanh&nbsp;C&oacute; nhiều hương vị tr&aacute;i c&acirc;y tự nhi&ecirc;n: d&acirc;u, sầu ri&ecirc;ng, cốm, dừa, khoai m&ocirc;n, đậu xanh&nbsp;C&oacute; nhiều hương vị tr&aacute;i c&acirc;y tự nhi&ecirc;n: d&acirc;u, sầu ri&ecirc;ng, cốm, dừa, khoai m&ocirc;n, đậu xanh</p>\r\n', '1519958003160-ged1319711169.jpg', 125000, 1),
(7, 8, 'SỮA SIMILAC IQ INTELLI - PRO SỐ 4 900G (2 - 6 TUỔI)', '<ul>\r\n	<li>Ph&aacute;t triển tr&iacute; tuệ v&agrave; thị gi&aacute;c</li>\r\n	<li>Gi&uacute;p tăng cường sức đề kh&aacute;ng</li>\r\n	<li>Ph&aacute;t triển tầm v&oacute;c</li>\r\n</ul>\r\n', '<p><strong><a href=\"https://bibomart.com.vn/sua-similac-t14.html\" title=\"sữa similac\">Sữa Similac</a>&nbsp;IQ Intelli - Pro</strong>&nbsp;số 4 900g&nbsp;l&agrave; thực phẩm đặc chế d&ugrave;ng thay thế bữa ăn phụ, bổ sung chế độ dinh dưỡng h&agrave;ng ng&agrave;y cho trẻ 2 - 6 tuổi.&nbsp;<a href=\"https://bibomart.com.vn/sua-bot-cho-tre-em-c178.html\" title=\"sữa bột\">Sữa bột</a>&nbsp;chứa c&aacute;c hệ dưỡng chất IQ-Plus v&agrave; Intell-Pro hỗ trợ sự ph&aacute;t triển n&atilde;o bộ v&agrave; thị gi&aacute;c, đồng thời Immunity gi&uacute;p tăng cường sức đề kh&aacute;ng c&ugrave;ng c&aacute;c dưỡng chất thiết yếu kh&aacute;c gi&uacute;p b&eacute; tăng trưởng tốt. Hương vani truyền thống thơm ngậy, hấp dẫn b&eacute; mang đến những bữa ăn ngon miệng v&agrave; th&iacute;ch th&uacute; cho trẻ.</p>\r\n\r\n<h3><strong>Th&agrave;nh phần nguy&ecirc;n liệu</strong></h3>\r\n\r\n<p><u>Sữa&nbsp;<a href=\"https://bibomart.com.vn/sua-bot-similac-c592.html\" title=\"similac\">Similac</a>&nbsp;IQ Intelli - Pro</u>&nbsp;số 4 c&oacute; th&agrave;nh phần nguy&ecirc;n liệu: Sữa kh&ocirc;ng b&eacute;o (~41,9%), dầu thực vật (dầu hướng dương gi&agrave;u oleic, dầu đậu n&agrave;nh, dầu dừa), lactose, sucrose, đạm whey c&ocirc; đặc, galactooligosacchiarid (GOS), Kho&aacute;ng chất (tricanxi phosphat, canxi carbonat, kalicitrat, kali hydroxit, natri clorid, sắt sulfat, kẽm sulfat, đồng sulfat, mangan sulfat, natri selanat), hương vani nh&acirc;n tạo,&nbsp;<a href=\"https://bibomart.com.vn/vitamin-thuc-pham-chuc-nang-c312.html\" title=\"vitamin\">Vitamin</a>&nbsp;(acid ascorbic, niacinamid, anfa-tocopheryl acetat, canxin d-pantothenat, retinyl palmitat, thiamin HCI, riboflavin, acid folic, phylloquinon, d-biotin, vitamin D3, cyanocobalamin), lecithin đậu n&agrave;nh (nguồn phospholipid), docosahexae-noic acid (DHA), cholin clorid, taurin, cholin bitartrat, arachidonic acid (AA), Nucleotide (cytidin 5&#39; -monophosphat, dinatri uridin 5&#39; -monophosphat, dinatri guanosin 5&#39; -monophosphat) ascorbyl palmitat, hỗn hợp tocopherol, Carotennoid (lutein, beta-caroten).</p>\r\n\r\n<p>C&oacute; thể chứa canxin clorid, magie clorid, kali iodid.</p>\r\n\r\n<h3><strong>Đặc điểm nổi bật của sản phẩm</strong></h3>\r\n\r\n<p><em><strong>Hệ dưỡng chất IQ-Plus gi&uacute;p ph&aacute;t triển tr&iacute; tuệ v&agrave; thị gi&aacute;c</strong></em></p>\r\n\r\n<p>-&nbsp;<a href=\"https://bibomart.com.vn/sua-similac-c592.html\">Sữa Similac</a>&nbsp;IQ&nbsp;Intelli - Pro&nbsp;chứa hệ dưỡng chất đặc biệt IQ bao gồm: DHA, AA, Lutein, Phospholipid, Omega 3, Omega 6, Taurine, Choline, Sắt, Kẽm, Acid Follic, Iod l&agrave; những dưỡng chất quan trọng gi&uacute;p ph&aacute;t triển n&atilde;o bộ của b&eacute;.</p>\r\n\r\n<p>- Similac l&agrave; d&ograve;ng sản phẩm chứa Intell-Pro: sự kết hợp độc đ&aacute;o của DHA v&agrave; Lutein l&agrave; hai dưỡng chất quan trọng hỗ trợ ph&aacute;t triển tr&iacute; n&atilde;o v&agrave; gi&uacute;p đ&ocirc;i mắt khỏe mạnh.</p>\r\n\r\n<p><em><strong>Immunify gi&uacute;p tăng cường sức đề kh&aacute;ng</strong></em></p>\r\n\r\n<p>Thiết kế khoa học hỗ trợ tăng cường sức đề kh&aacute;ng cho b&eacute; theo 3 cơ chế:</p>\r\n\r\n<p>+ Prebiotic th&uacute;c đẩy sự ph&aacute;t triển của c&aacute;c vi khuẩn c&oacute; lợi, gi&uacute;p tăng cường sức đề kh&aacute;ng đang ph&aacute;t triển của b&eacute;.</p>\r\n\r\n<p>+ &nbsp;Nucleotide gi&uacute;p cơ thể tạo kh&aacute;ng thể.</p>\r\n\r\n<p>+ C&aacute;c dưỡng chất chống oxy h&oacute;a như beta caroten, vitamin C, vitamin E gi&uacute;p bảo vệ tế b&agrave;o, tăng cường sức đề kh&aacute;ng.</p>\r\n\r\n<p><em><strong>Ph&aacute;t triển tầm v&oacute;c</strong></em></p>\r\n\r\n<p>- Tăng cường chất đạm v&agrave; giảm chất b&eacute;o, gi&uacute;p trẻ tăng trưởng v&agrave; khỏe mạnh.</p>\r\n\r\n<p>- Rất gi&agrave;u Canxi (so với Similac 3): 3 ly similac 4 mỗi ng&agrave;y đ&aacute;p ứng 100% nhu cầu canxi h&agrave;ng ng&agrave;y của trẻ, gi&uacute;p ph&aacute;t triển xương v&agrave; răng khỏe mạnh.</p>\r\n\r\n<p><em><strong>Gi&uacute;p hệ ti&ecirc;u h&oacute;a khỏe mạnh</strong></em></p>\r\n\r\n<p>Bổ sung GOS (prebiotic) gi&uacute;p k&iacute;ch th&iacute;ch sự ph&aacute;t triển của c&aacute;c vi khuẩn c&oacute; lợi, gi&uacute;p hệ ti&ecirc;u h&oacute;a của trẻ khỏe mạnh. GOS cũng gi&uacute;p ph&acirc;n của trẻ mềm hơn.</p>\r\n', '1519958208insulac.jpg', 468000, 0),
(8, 9, 'SỮA S-26 GOLD SỐ 4 900G (TRÊN 2 TUỔI)', '<ul>\r\n	<li>Ph&aacute;t triển tr&iacute; n&atilde;o tối ưu</li>\r\n	<li>Hỗ trợ tăng trưởng chiều cao</li>\r\n	<li>C&acirc;n bằng dinh dưỡng</li>\r\n</ul>\r\n', '<p><strong><a href=\"https://bibomart.com.vn/sua-cho-be-t558.html\" title=\"sữa\">Sữa</a>&nbsp;S-26&nbsp;Gold số 4</strong>&nbsp;900g l&agrave; sản phẩm dinh dưỡng c&ocirc;ng thức d&agrave;nh cho b&eacute; từ 2 tuổi trở l&ecirc;n th&iacute;ch hợp bổ sung c&ugrave;ng bữa ăn của b&eacute; để b&ugrave; đắp sự thiếu hụt dưỡng chất v&agrave; năng lượng trong khẩu phần ăn h&agrave;ng ng&agrave;y.&nbsp;<a href=\"https://bibomart.com.vn/sua-bot-cac-loai-c178.html\" title=\"sữa\">Sữa</a>&nbsp;S-26 Gold số 4 cung cấp đến 16 loại&nbsp;<a href=\"https://bibomart.com.vn/vitamin-thuc-pham-chuc-nang-c312.html\" title=\"vitamin\">vitamin</a>&nbsp;c&ugrave;ng c&aacute;c kho&aacute;ng chất thiết yếu, trong đ&oacute; c&oacute; Omega 3, sắt, vitamin C v&agrave; Canxi đạt từ 25 đến 50% theo khuyến nghị của RDI hỗ trợ ho&agrave;n hảo cho sự ph&aacute;t triển to&agrave;n diện của b&eacute; cả về thể chất, n&atilde;o bộ lẫn c&aacute;c gi&aacute;c quan, đảm bảo cho sự tăng trưởng khỏe mạnh của b&eacute; trong giai đoạn kh&aacute;m ph&aacute; v&agrave; tăng cường c&aacute;c hoạt động vui chơi.</p>\r\n\r\n<h3><strong>Đặc điểm nổi bật của sản phẩm</strong></h3>\r\n\r\n<p>-&nbsp;<u>Sữa S-26&nbsp;Gold số 4</u>&nbsp;cung cấp đến 16 loại vitamin (A, C, D, E, c&aacute;c vitamin nh&oacute;m B) v&agrave; c&aacute;c kho&aacute;ng chất (canxi, sắt, kẽm, phốt pho,...) gi&uacute;p c&acirc;n bằng dinh dưỡng, duy tr&igrave; sức khỏe trong cơ thể b&eacute; khi m&agrave; c&aacute;c bữa ăn h&agrave;ng ng&agrave;y kh&ocirc;ng đủ đảm bảo c&aacute;c dưỡng chất v&agrave; năng lượng thiết yếu phục vụ cho c&aacute;c hoạt động vui chơi của b&eacute;.</p>\r\n\r\n<p>- Sữa S-26 mang đến 100% nguồn Omega 3 từ thực vật c&oacute; chứa DHA kết hợp c&ugrave;ng AA trong Omega 6 gi&uacute;p b&eacute; ph&aacute;t triển tốt n&atilde;o bộ, hệ thần kinh v&agrave; thị gi&aacute;c trong giai đoạn ham kh&aacute;m ph&aacute;, học hỏi v&agrave; h&igrave;nh th&agrave;nh tư duy.</p>\r\n\r\n<p>- Đ&aacute;p ứng 50% theo khuyến nghị của RDI về lượng sắt cần cung cấp cho cơ thể b&eacute; trong giai đoạn từ 2 tuổi, hỗ trợ tăng trưởng vượt trội v&agrave; đảm bảo vận chuyển oxy đi khắp cơ thể, gi&uacute;p cơ thể lu&ocirc;n lu&ocirc;n tr&agrave;n đầy năng lượng. Tương ứng theo đ&oacute;, S-26 cũng đ&atilde; mang đến lượng vitamin C (đ&aacute;p ứng 50% khuyến nghị RDI) để cơ thể b&eacute; hấp thụ sắt tốt hơn kh&ocirc;ng chỉ từ sữa m&agrave; c&ograve;n từ c&aacute;c bữa ăn h&agrave;ng ng&agrave;y. Vitamin C c&ograve;n l&agrave; một yếu tố gi&uacute;p duy tr&igrave; hệ miễn dịch khỏe mạnh gi&uacute;p b&eacute; ph&ograve;ng chống những bệnh th&ocirc;ng thường.</p>\r\n\r\n<p>- Lượng Canxi bổ sung trong sữa S-26 đ&aacute;p ứng 32% theo khuyến nghị RDI gi&uacute;p duy tr&igrave; một hệ răng v&agrave; cấu tr&uacute;c xương chắc khỏe cho b&eacute;, hỗ trợ b&eacute; tăng trưởng chiều cao vượt trội.</p>\r\n', '1519958311IMG_4795.JPG', 330000, 0),
(9, 9, 'SỮA PEDIASURE BA 850G (1 - 10 TUỔI)', '<ul>\r\n	<li>Hệ dưỡng chất ti&ecirc;n tiến cho b&eacute; biếng ăn</li>\r\n	<li>Dinh dưỡng đầy đủ v&agrave; c&acirc;n đối</li>\r\n	<li>Tăng cường sức đề kh&aacute;ng</li>\r\n</ul>\r\n\r\n<p>Thương hiệu:&nbsp;<a href=\"https://bibomart.com.vn/abbott-b2200.html\">Abbott</a></p>\r\n\r\n<p>Abbott l&agrave; một thương hiệu tầm quốc tế được th&agrave;nh lập từ năm 1888, chuy&ecirc;n nghi&ecirc;n cứu, ph&aacute;t triển những...</p>\r\n', '<p><strong><a href=\"https://bibomart.com.vn/sua-bot-pediasure-t510.html\" title=\"sữa pediasure\">Sữa PediaSure</a>&nbsp;BA</strong>&nbsp;l&agrave; sản phẩm dinh dưỡng d&ugrave;ng bổ sung hoặc thay thế ho&agrave;n to&agrave;n bữa ăn của trẻ 1-10 tuổi, được đặc chế khoa học để cung cấp nguồn dinh dưỡng đầy đủ v&agrave; c&acirc;n đối, gi&uacute;p thay thế v&agrave; bổ sung kịp thời sự thiếu hụt của bữa ăn, cho trẻ khỏe mạnh v&agrave; ph&aacute;t triển tốt, kh&ocirc;ng bị suy dinh dưỡng hoặc b&eacute;o ph&igrave;, đặc biệt tốt khi d&ugrave;ng thường xuy&ecirc;n v&agrave; l&acirc;u d&agrave;i cho trẻ.&nbsp;<a href=\"https://bibomart.com.vn/sua-cho-be-t558.html\" title=\"sữa\">Sữa</a>&nbsp;đặc biệt ph&ugrave; hợp cho c&aacute;c b&eacute; biếng ăn, gi&uacute;p trẻ nhanh ch&oacute;ng bắt kịp v&agrave; tiếp tục đ&agrave; tăng trưởng tối ưu cả về thể chất v&agrave; tr&iacute; tuệ. Sản phẩm đ&oacute;ng hộp thiếc 850g an to&agrave;n vệ sinh thực phẩm khi sử dụng.</p>\r\n\r\n<h3><strong>Đặc điểm nổi bật của sản phẩm</strong></h3>\r\n\r\n<p>Nghi&ecirc;n cứu l&acirc;m s&agrave;ng tr&ecirc;n nh&oacute;m trẻ biếng ăn c&oacute; nguy cơ thiếu hụt dinh dưỡng đ&atilde; chứng minh: việc bổ sung&nbsp;<u>sữa&nbsp;PediaSure&nbsp;BA</u>&nbsp;c&ugrave;ng với chế độ dinh dưỡng h&agrave;ng ng&agrave;y gi&uacute;p trẻ ph&aacute;t triển nhanh v&agrave; tốt hơn về c&acirc;n nặng, chiều cao, giảm đ&aacute;ng kể nguy cơ vi&ecirc;m nhiễm đường h&ocirc; hấp tr&ecirc;n so với chế độ dinh dưỡng th&ocirc;ng thường.</p>\r\n\r\n<p>Hiệu quả của PediaSure đ&atilde; được nghi&ecirc;n cứu l&acirc;m s&agrave;ng chứng minh:</p>\r\n\r\n<p>- Gi&uacute;p trẻ biếng ăn cải thiện t&igrave;nh trạng dinh dưỡng.</p>\r\n\r\n<p>- Gi&uacute;p trẻ biếng ăn tăng trưởng v&agrave; ph&aacute;t triển khỏe mạnh.</p>\r\n\r\n<p>- Gi&uacute;p trẻ biếng ăn c&oacute; chỉ số ph&aacute;t triển c&acirc;n nặng v&agrave; chiều cao dưới chuẩn nhanh ch&oacute;ng ph&aacute;t triển bắt kịp v&agrave; tiếp tục đ&agrave; tăng trưởng tốt.</p>\r\n\r\n<p><em><strong>Hệ dưỡng chất ti&ecirc;n tiến SURE 3 SYSTEM d&agrave;nh cho trẻ biếng ăn</strong></em></p>\r\n\r\n<p>- Hệ phức hợp mới từ 3 nguồn đạm chất lượng cao c&ugrave;ng với hệ đường k&eacute;p ti&ecirc;n tiến gi&uacute;p trẻ ăn ngon miệng hơn, cung cấp năng lượng c&acirc;n đối để trẻ bắt kịp v&agrave; tiếp tục đ&agrave; tăng trưởng ho&agrave;n hảo.</p>\r\n\r\n<p>- Hệ chất b&eacute;o được đặc chế khoa học gi&agrave;u MCT gi&uacute;p dễ ti&ecirc;u h&oacute;a v&agrave; hấp thu. Gi&agrave;u AA, DHA, c&aacute;c&nbsp;<a href=\"https://bibomart.com.vn/vitamin-thuc-pham-chuc-nang-c312.html\" title=\"vitamin\">vitamin</a>&nbsp;v&agrave; kho&aacute;ng chất thiết yếu.</p>\r\n\r\n<p>- Dinh dưỡng đầy đủ v&agrave; c&acirc;n đối đảm bảo cung cấp đầy đủ những dưỡng chất cần thiết như một bữa ăn m&agrave; trẻ bị thiếu hụt hay bỏ bữa.</p>\r\n\r\n<p><em><strong>C&ocirc;ng thức ti&ecirc;n tiến</strong></em></p>\r\n\r\n<p>C&ocirc;ng thức ti&ecirc;n tiến mới với th&agrave;nh phần v&agrave; tỷ lệ th&iacute;ch hợp c&aacute;c vitamin v&agrave; kho&aacute;ng chất thiết yếu hỗ trợ trẻ biếng ăn nhanh ch&oacute;ng ph&aacute;t triển bắt kịp v&agrave; tiếp tục đ&agrave; tăng trưởng ho&agrave;n hảo.&nbsp;Cứ mỗi 1,000 ml PediaSure pha chuẩn cho trẻ từ 1- 8 tuổi hay 1,500 ml cho trẻ từ 9 &ndash; 13 tuổi cung cấp đầy đủ 100% nhu cầu đạm c&ugrave;ng với dưỡng chất thiết yếu kh&aacute;c theo khuyến c&aacute;o dinh dưỡng h&agrave;ng ng&agrave;y của Hoa Kỳ (DRIs).</p>\r\n\r\n<p><em><strong>Synbiotics gi&uacute;p tăng cường sức đề kh&aacute;ng</strong></em></p>\r\n\r\n<p>C&ocirc;ng thức độc đ&aacute;o với Synbiotics = Probiotic (vi sinh vật c&oacute; lợi) + prebiotic FOS / chất xơ gi&uacute;p tăng cường khả năng miễn dịch tự nhi&ecirc;n của trẻ bằng c&aacute;ch bổ sung vi sinh vật c&oacute; lợi để ức chế sự ph&aacute;t triển của nh&oacute;m vi sinh vật c&oacute; hại trong đường ti&ecirc;u h&oacute;a. Nhờ đ&oacute;, c&aacute;c dưỡng chất sẽ được hấp thu tốt hơn.</p>\r\n', '1519958461sua-pediasure-ba-850g-101142.jpg', 600000, 0),
(10, 3, 'SỮA MEIJI SỐ 9 800G (1 - 3 TUỔI)', '<ul>\r\n	<li>Sữa nội địa cao cấp của Nhật</li>\r\n	<li>Bổ sung gấp đ&ocirc;i Canxi hỗ trợ tăng trưởng chiều cao</li>\r\n	<li>DHA tốt cho hoạt động của n&atilde;o bộ</li>\r\n</ul>\r\n\r\n<p>Thương hiệu:&nbsp;<a href=\"https://bibomart.com.vn/meiji-b2465.html\">Meiji</a></p>\r\n\r\n<p>Meiji được th&agrave;nh lập từ năm 1917, c&oacute; trụ sở nghi&ecirc;n cứu đặt tại th&agrave;nh phố Odawara &ndash; Nhật Bản,...</p>\r\n', '<p><strong><a href=\"https://bibomart.com.vn/sua-meiji-c603.html\">Sữa Meiji</a>&nbsp;số 9</strong>&nbsp;800g ph&ugrave; hợp cho trẻ từ 1-3 tuổi, kh&ocirc;ng chỉ chứa c&aacute;c chất dinh dưỡng cơ bản như protein, chất b&eacute;o, carbohydrat m&agrave; c&ograve;n c&oacute; c&aacute;c&nbsp;<a href=\"https://bibomart.com.vn/vitamin-thuc-pham-chuc-nang-c312.html\" title=\"vitamin\">vitamin</a>&nbsp;v&agrave; kho&aacute;ng chất rất kh&oacute; c&oacute; được từ&nbsp;<a href=\"https://bibomart.com.vn/sua-cho-be-t558.html\" title=\"sữa\">sữa</a>&nbsp;b&ograve; v&agrave; thức ăn dạng rắn. Meiji c&ograve;n bổ sung cả axit docosahexaenoic (DHA), c&aacute;c nucleotides v&agrave; đặc biệt l&agrave; hệ chất xơ GOS hỗ trợ ti&ecirc;u h&oacute;a l&agrave;m n&ecirc;n đặc t&iacute;nh m&aacute;t của&nbsp;<a href=\"https://bibomart.com.vn/sua-bot-cac-loai-c178.html\" title=\"sữa\">sữa</a>&nbsp;gi&uacute;p th&uacute;c đẩy sự ph&aacute;t triển to&agrave;n diện cả về thể chất lẫn n&atilde;o bộ của trẻ trong suốt giai đoạn thơ ấu. Sản phẩm được d&ugrave;ng bổ sung c&ugrave;ng c&aacute;c bữa ăn h&agrave;ng ng&agrave;y của b&eacute;, đem đến nguồn năng lượng dồi d&agrave;o cho b&eacute; tiếp tục c&aacute;c hoạt động vui chơi v&agrave; kh&aacute;m ph&aacute;.</p>\r\n\r\n<h3><strong>Đặc điểm nổi bật của sản phẩm</strong></h3>\r\n\r\n<p><em><strong>Cung cấp nguồn dinh dưỡng v&agrave; năng lượng</strong></em></p>\r\n\r\n<p><u>Sữa Meiji số 9</u>&nbsp;cung cấp tr&ecirc;n 70% nhu cầu vitamin v&agrave; chất kho&aacute;ng cho trẻ 1 - 3 tuổi/ng&agrave;y theo khuyến nghị của FAO/WHO mang đến nguồn năng lượng v&agrave; hệ dinh dưỡng c&acirc;n bằng cho b&eacute;, tăng cường sức đề kh&aacute;ng để đảm bảo cho c&aacute;c hoạt động vui chơi trong ng&agrave;y v&agrave; một cơ thể khỏe mạnh.&nbsp;</p>\r\n\r\n<p>- Cung cấp chất lượng Protein tốt, bao gồm đạm Whey dễ ti&ecirc;u h&oacute;a v&agrave; hấp thu, kết hợp c&ugrave;ng nhiều dưỡng chất đảm bảo nguồn năng lượng mỗi ng&agrave;y.</p>\r\n\r\n<p>- Bổ sung lactose l&agrave; th&agrave;nh phần carbonhydrat ch&iacute;nh trong sữa Meiji. Chất n&agrave;y c&oacute; rất nhiều trong sữa mẹ v&agrave; l&agrave; nguồn năng lượng ch&iacute;nh cho trẻ nhỏ, đồng thời mang tới vị ngọt nhẹ cho sữa.</p>\r\n\r\n<p>- Bổ sung Nucleotides: cung cấp 6 mg của 5 loại Nucleotides ( axit adenylic, axit cytidylic, axit guanylic, axit inosinic, axit uridylic ) gi&uacute;p cơ thể tạo kh&aacute;ng thể.</p>\r\n\r\n<p>- Hơn 10 loại vitamin (vitamin A, C, D, K, E, c&aacute;c vitamin nh&oacute;m B) c&oacute; trong sữa Meiji l&agrave; c&aacute;c loại vitamin cần thiết đối với trẻ nhỏ kh&ocirc;ng chỉ mang đến hệ dinh dưỡng c&acirc;n bằng m&agrave; c&ograve;n n&acirc;ng cao đề kh&aacute;ng cho một cơ thể khỏe mạnh để chống chọi với c&aacute;c loại bệnh thường gặp.</p>\r\n\r\n<p><em><strong>Hỗ trợ ph&aacute;t triển n&atilde;o bộ</strong></em></p>\r\n\r\n<p>Sữa Meiji số 9 đặc biệt bổ sung DHA, c&aacute;c vi chất như sắt, kẽm, acid Follic v&agrave; hệ c&acirc;n bằng Omega 3 (axit-linolenic), Omega 6 (axit linoleic) tốt cho sự ph&aacute;t triển n&atilde;o bộ của b&eacute; trong giai đoạn từ 1 đến 3 tuổi - giai đoạn b&eacute; bắt đầu học hỏi, kh&aacute;m ph&aacute; v&agrave; tiếp thu những điều xung quanh.</p>\r\n\r\n<p><em><strong>Th&uacute;c đẩy tăng trưởng chiều cao&nbsp;</strong></em></p>\r\n\r\n<p>Lượng Canxi gấp đ&ocirc;i so với Meiji số 0 kết hợp c&ugrave;ng tỷ lệ Canxi/Photpho l&agrave; 2,0 v&agrave; Canxi/Magie trong sữa Meiji l&agrave; 7,6 theo đ&uacute;ng chuẩn FAO/WHO, đồng thời lượng vitamin D trong sữa cũng sẽ gi&uacute;p b&eacute; hấp thu Canxi một c&aacute;ch tốt hơn, do đ&oacute;, với việc sử dụng Meiji mỗi ng&agrave;y, b&eacute; sẽ được hỗ trợ để tăng cường chiều cao cũng như sự chắc khỏe của răng</p>\r\n\r\n<p><em><strong>Gi&uacute;p hệ ti&ecirc;u h&oacute;a khỏe mạnh</strong></em></p>\r\n\r\n<p>FOS (Fructo-oligosaccha ride) c&oacute; trong sữa Meiji l&agrave; chất xơ h&ograve;a tan gi&uacute;p trẻ hấp thu dinh dưỡng một c&aacute;ch tối đa v&agrave; tự nhi&ecirc;n nhất, đồng thời cho một hệ ti&ecirc;u h&oacute;a khỏe mạnh khiến trẻ ăn ngon miệng hơn, nhanh ch&oacute;ng tăng c&acirc;n.</p>\r\n', '1519958560sua-meiji-so-9-800g-100023_1.jpg', 400000, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`n_id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`order_detail_id`);

--
-- Indexes for table `producer`
--
ALTER TABLE `producer`
  ADD PRIMARY KEY (`producer_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `n_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `order_detail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `producer`
--
ALTER TABLE `producer`
  MODIFY `producer_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
