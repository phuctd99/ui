-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost
-- Thời gian đã tạo: Th12 03, 2019 lúc 09:44 PM
-- Phiên bản máy phục vụ: 8.0.18-0ubuntu0.19.10.1
-- Phiên bản PHP: 7.3.11-0ubuntu0.19.10.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `xmovies`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `actor`
--

CREATE TABLE `actor` (
  `id_actor` int(11) NOT NULL,
  `actor_name` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `actor_image` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `actor_movie`
--

CREATE TABLE `actor_movie` (
  `id` int(11) NOT NULL,
  `id_movie` int(11) NOT NULL,
  `id_actor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `id_category` int(11) NOT NULL,
  `category_name` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`id_category`, `category_name`) VALUES
(2, 'Hành động'),
(3, 'Tình cảm'),
(4, 'Viễn tưởng'),
(5, 'Hoạt hình'),
(6, 'Tâm lý'),
(7, 'Kinh dị'),
(8, 'Hài hước');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_movie` int(11) NOT NULL,
  `content` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `likes` int(11) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `follow`
--

CREATE TABLE `follow` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_movie` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `movie`
--

CREATE TABLE `movie` (
  `id_movie` int(11) NOT NULL,
  `id_category` int(11) NOT NULL,
  `movie_name` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `movie_description` varchar(10000) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `movie_image` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `episodes` int(11) NOT NULL,
  `duration` int(11) NOT NULL,
  `country` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `director` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `publish_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `movie`
--

INSERT INTO `movie` (`id_movie`, `id_category`, `movie_name`, `movie_description`, `movie_image`, `episodes`, `duration`, `country`, `director`, `publish_date`) VALUES
(3, 8, '3 Chàng Ngốc', 'Bộ phim kể về tình bạn của ba anh chàng Farhan, Raju và Rancho từ khi họ còn là sinh viên đến khi trưởng thành. Trong thời gian ngồi trên giảng đường, Rancho đã có ảnh hưởng rất lớn đến cuộc sống, tương lai của Farhan và Raju. Sau khi ra trường, Rancho đột nhiên biến mất. 10 năm sau, khi tìm được manh mối về nơi sinh sống của cậu bạn thân năm xưa, Farhan và Raju quyết định lên đường tìm Rancho.', '3-chang-ngoc', 1, 170, 'Ấn Độ', 'Chưa rõ', '2009-12-25'),
(7, 2, 'Aladdin', 'Aladdin 2019 là phiên bản live action đầy màu sắc sống động được chuyển thể từ bộ phim hoạt hình kinh điển cả hãng phim Disney. Câu chuyện xoay quanh chàng hoàng tử khu ổ chuột Aladdin – một thanh niên trẻ tuổi dũng cảm và nàng công chúa Jasmine mạnh mẽ, đương nhiên phải kể đến thần đèn Genie – người nắm giữ chìa khóa thay đổi tương lại sau này của họ.', 'aladdin', 1, 123, 'Mỹ', 'Guy Ritchie', '2019-07-20'),
(8, 2, 'Alita: Thiên thần chiến binh', 'Tác phẩm live-action chuyển thể từ manga cùng tên của Yukito Kishiro. ALITA: BATTLE ANGEL (Thiên Thần Chiến Binh) hứa hẹn là một tác phẩm hành động viễn tưởng đỉnh cao qua bàn tay nhào nặn của những tên tuổi huyền thoại - James Cameron, Jon Landau và đạo diễn Robert Rodriguez. Phim lấy bối cảnh ở thế kỷ 26, xoay quanh nữ cyborg Alita (Rosa Salazar thủ vai). Cô bị bỏ rơi ở một bãi rác thải của Iron City và được cứu chữa bởi tiến sĩ Dyson Ido (Christoph Waltz thủ vai). Sau khi tỉnh dậy, cô không còn nhớ mình là ai và thế giới của cô đang sống như thế nào. Trong khi bác sĩ Ido ra sức che giấu quá khứ phức tạp của Alita thì người bạn mới là Hugo tìm cách giúp cô lấy lại ký ức. Alita dần phát hiện ra người cha nuôi của mình là một thợ săn tiền thưởng và sau đó, cô tham gia cùng với ông để tìm hiểu về quá khứ của mình. Cô dần phát hiện khả năng chiến đấu siêu phàm cũng như vai trò của cô giữa thế giới bị bao phủ bởi nhiều thế lực bóng tối.', 'alita-thien-than-chien-binh', 1, 150, 'Mỹ', 'Chưa rõ', '2019-03-18'),
(9, 7, 'Gonjiam: Bệnh viện ma ám', 'Một đội làm web series kinh dị tới một viện tâm thần bỏ hoang để stream trực tiếp.', 'benh-vien-ma-am', 1, 95, 'Hàn Quốc', 'Beom-Sik Jeong', '2018-03-28'),
(10, 2, 'Avengers: End game', 'Sau sự kiện hủy diệt tàn khốc, vũ trụ chìm trong cảnh hoang tàn. Với sự trợ giúp của những đồng minh còn sống sót, biệt đội siêu anh hùng Avengers tập hợp một lần nữa để đảo ngược hành động của Thanos và khôi phục lại trật tự của vũ trụ.', 'biet-doi-sieu-anh-hung', 1, 181, 'Mỹ', 'Anthony Russo, Joe Russo', '2019-04-26'),
(11, 7, 'Annabelle', 'Annabelle là câu chuyện về nguồn gốc của búp bê quỷ ám. Đi sâu vào bộ phim lần này Annabelle xuất hiện tại một gia đình vợ chồng trẻ. Món quà John tặng vợ mình nhân dịp sinh nhật và chuyển tói nhà mới chính là con búp bê Annabelle. Vào một đêm định mệnh, nhà của họ bị hai kẻ tâm thần đột nhập vào. Kể từ sau sự kiện kinh hoàng, nhiều hiện tượng kì quái bắt đầu xảy ra trong nhà và đều liên quan tới búp bê Annabelle.', 'bup-be-ma-am', 1, 99, 'Mỹ', 'John R. Leonetti', '2014-10-10'),
(12, 7, 'Búp bê sát nhân', 'Ma búp bê 5 (Seed of chucky) (2004) Phần 5 của loạt film về con búp bê giết người. Con của Chucky và Tiffany bị thất lạc bên Anh, trong khi hai bố mẹ thì chết sau phần 4. Hollywood thì đang dựng bộ phim về Chucky, với nữ diễn viên Jennifer Tilly đóng chính. Búp bê con bèn đến Hollywood và vô tình làm sống lại đôi búp bê giết người đáng sợ. Nhưng ngược lại với phụ huynh, búp bê con lại không thích giết chóc, và là một người tốt bụng... Chucky quyết định huấn luyện cho con mình trở thành một tên giết người hàng loạt.', 'bup-be-sat-nhan', 1, 81, 'Mỹ', 'Chưa rõ', '2004-03-12'),
(13, 8, 'Cặp đôi lầy lội', 'Một người phụ nữ thuê một con lừa bí ẩn để giúp lấy lại chiếc xe bị đánh cắp của mình từ một tên côn đồ ở Mumbai...', 'cap-doi-lay-loi', 1, 100, 'Ấn Độ', 'Sachin Yardi', '2019-05-31'),
(14, 8, 'Chiếc đầm ma quái', 'Phim lấy bối cảnh vào thời điểm cuối năm các cửa hàng thời trang ở Anh Quốc mở ra các chương trình đại hạ giá. Nhưng riêng ở cửa tiệm “Dentley and Soper”, có một sự thật đằng sau việc đại hạ giá này. Nó nằm ở chính chiếc đầm màu đỏ nổi bật đang được bày bán, chờ đợi nạn nhân tiếp theo của mình, vì khác với những chiếc đầm thông thường, một khi bạn đã mặc vào thì chắc chắn bạn sẽ không bao giờ có thể thoát khỏi nó.', 'chiec-dam-ma-quai', 1, 118, 'Anh', 'Peter Strickland', '2019-06-28'),
(15, 4, 'Chúa tể Godzilla: Đế vương bất tử', 'Sự xuất hiện của Godzilla trong quá khứ khiến con người phát hiện ra những sinh vật cổ đại Titan khổng lồ vẫn còn tồn tại trên Trái Đất. Sau trận chiến đánh bại kẻ thù, Godzilla mất tích vào lòng biển. Một ngày kia, Rồng ba đầu Ghidorah trỗi dậy kéo theo sự thức tỉnh của hàng trăm quái vật khổng lồ. Tất cả những gì chúng muốn là tranh giành quyền lực tối cao, thống lĩnh thế giới. Trong trận đại chiến hủy diệt chưa từng có trong lịch sử này, liệu \"Chúa tể của muôn loài\" Godzilla sẽ trở lại và là “đấng cứu thế” của nhân loại trước hiểm họa diệt vong?', 'chua-te-godzilla', 1, 131, 'Mỹ', 'Micheal Dougherty', '2019-05-29'),
(16, 7, 'Chú hề ma quái', 'IT - Chú Hề Ma Quái xoay quanh tình bạn thời thơ ấu bền chặt của 7 đứa trẻ trong nhóm The Loser. Những cậu bé, cô bé hồn nhiên ấy đang bị ám ảnh bởi một thế lực tà ác trong hình hài chú hề. Trailer tập trung lột tả sự ghê rợn của gã hề Pennywise. Hắn ta đã mang đến sự chết chóc cho thị trấn Derry trong hàng chục năm qua. Hắn có mặt ở khắp mọi nơi và liên tục khủng bố tinh thần lũ trẻ. Hắn “chơi đùa” trên nỗi sợ hãi của những đứa trẻ.', 'chu-he-ma-quai', 1, 135, 'Mỹ', 'Andy Muschietti', '2017-09-08'),
(17, 4, 'Chú voi biết bay', 'Dumbo xuất hiện khi hai đứa trẻ Milly và Joe được bố Holt Farrier do thủ vai Colin Farrell dẫn đến tham quan rạp xiếc. Dumbo lẩn trốn trong một mớ rơm và được Holt Farrier tìm thấy. Đôi mắt ngây thơ cùng vẻ ngoài đáng yêu của Dumbo lần đầu xuất hiện khiến gia đình Hobbins thấy như một phép màu.', 'chu-voi-biet-bay', 1, 112, 'Mỹ', 'Tim Burton', '2019-03-27'),
(18, 8, 'Chuyến đi của tình yêu', 'Câu chuyện của Jule và Jan cùng rời khỏi Berlin để đi du ngoạn về miền nam đất nước...', 'chuyen-di-cua-tinh-yeu', 1, 145, 'Đức', 'Hans Weingartner', '2018-07-19'),
(19, 3, 'Cô gái năm ấy chúng tôi cùng theo đuổi', 'Kha Cảnh Đằng và Thẩm Giai Nghi là bạn cùng lớp từ hồi cấp II. Trong khi Thẩm Giai Nghi vô cùng dễ thương xinh đẹp, được các bạn trai hết mực yêu quý thì Kha Cảnh Đằng lại nghịch ngợm, lười biếng. Chính tính cách khác biệt này khiến hai người hầu như chẳng nói chuyện với nhau cho đến khi một kỷ niệm không bao giờ quên xảy ra. Giữa hai người dần nảy sinh tình cảm nhưng sự bồng bột, thiếu chín chắn của tuổi trẻ đã tách Cảnh Đằng và Giai Nghi bước trên hai con đường khác nhau. Tuổi trẻ giống như một cơn mưa, cho dù bị cảm, vẫn muốn quay lại để được ướt mưa thêm một lần nữa.', 'co-gai-nam-ay-chung-toi-cung-theo-duoi', 1, 105, 'Đài Loan', 'Giddens Ko', '2011-08-19'),
(20, 6, 'Cuộc tình gian dối', 'Phim xoay quanh nhân vật Justin, một tiểu thuyết gia nổi tiếng, người nhận được khoản thừa kế lớn sau khi bố qua đời. Anh cho một phụ nữ NhậtTrung tên là Elaine thuê nhà và họ bắt đầu ngoại tình, gây ra rạn nứt hôn nhân với Jeanna Ho. Một đêm nọ, Elaine bất ngờ được tìm thấy đã chết trong ban công ngôi nhà. Khi bắt đầu điều tra, cảnh sát nhận ra rằng có rất nhiều yếu tố đáng ngờ trong vụ án khiến họ nghi ngờ rằng đây không phải là vụ bắt cóc hay trả thù bình thường đối với người chồng không chung thủy.', 'cuoc-tinh-gian-doi', 1, 90, 'Hồng Kông', 'Tôn Lập Cơ', '2019-06-20'),
(21, 2, 'Đặc vụ áo đen: Sứ mệnh toàn cầu', 'Bấy lâu nay, Đặc vụ Áo Đen luôn là những người hùng thầm lặng “ngầu” nhất, bảo vệ Trái Đất khỏi những hiểm họa xấu xa ngoài hành tinh. Trong cuộc phiêu lưu mới này, họ phải đối mặt với mối đe dọa mang tính toàn cầu lớn nhất từ trước đến giờ: truy tìm điệp viên hai mang ẩn mình trong tổ chức Men In Black.', 'dac-vu-ao-den-xu-menh-toan-cau', 1, 114, 'Mỹ', 'F. Gary Gray', '2019-06-12'),
(22, 4, 'Đại ca hóa soái ca', 'Đại Ca Hóa Soái Ca là câu chuyện hoán đổi linh hồn giữa cậu học sinh trung học Dong-hyun và tay xã hội đen máu mặt Pan-soo. Sau một tai nạn bất ngờ, linh hồn của ông chú trung niên Pan-soo tỉnh lại trong thân hình của Dong-hyun. Với thân phận mới, Pan-soo đã quyết định tìm hiểu nguyên nhân của vụ tráo đổi kỳ lạ này, bắt đầu từ vụ tai nạn khiến Dong-hyun rơi từ trên tầng cao xuống.', 'dai-ca-hoa-soai-ca', 1, 122, 'Hàn Quốc', 'Kang Hyo-Jin', '2019-01-09'),
(23, 5, 'Đẳng cấp thú cưng', 'Bối cảnh của phim diễn ra trong một căn hộ ở Manhattan, cuộc sống của Max như bị đảo lộn khi chủ nhân của mình mang về nhà con chó lai cẩu thả tên Duke. Nhưng rồi chúng phải bỏ các cuộc tranh cãi lại phía sau khi phát hiện ra một chú thỏ trắng đáng yêu tên là Snowball đang xây dựng một đội quân gồm các thú cưng bị bỏ rơi. Chúng quyết tâm trả thù tất cả vật nuôi đang hạnh phúc thuộc sở hữu của chủ nhân cũ...', 'dang-cap-thu-cung', 1, 90, 'Mỹ', 'Chưa rõ', '2016-07-01'),
(24, 2, 'Dị nhân 8: Phượng hoàng bóng tối', 'X-Men: Dark Phoenix là phần mở rộng của vũ trụ X-Men khi Jean Grey thức tỉnh và lĩnh hội được Phoenix Force (Thế Lực Phượng Hoàng) - đại diện cho tổng năng lượng, sức mạnh của vạn thể đã và luôn tồn tại. Nguồn sức mạnh vô tận đem lại cho Jean Grey năng lực khủng khiếp nhưng mặt tối của sức mạnh cũng thức tỉnh theo. Liệu nhóm X-Men sẽ làm gì để ngăn chặn sự diệt vong của nhân loại do Jean Grey cùng Phoenix Force gây ra?', 'di-nhan-8-phuong-hoang-bong-toi', 1, 113, 'Mỹ', 'Simon Kinberg', '2019-06-05'),
(25, 2, 'Quá nhanh quá nguy hiểm: Hobbs và Shaw', 'Sau 8 phim với phần doanh thu chạm mức 5 tỉ đô la Mỹ toàn cầu, giờ đây thương hiệu Fast & Furious sẽ trở lại với một phần ngoại truyện hoàn toàn độc lập với sự tham gia của Dwayne Johnson trong vai Luke Hobbs và Jason Statham trong vai Deckard Shaw trong Hobbs & Shaw. Câu chuyện giữa hai người tưởng như không đội trời chung là Đặc vụ An ninh Ngoại giao Mỹ Luke Hobbs và tên tội phạm đánh thuê khét tiếng Deckard Shaw khi họ bất đắc dĩ phải bắt tay hợp tác nhằm ngăn chặn âm mưu của trùm phản diện cực nguy hiểm trong diện bí ẩn Brixton.', 'fast-and-furious-hobbs-and-shaw', 1, 137, 'Mỹ', 'David Leitch', '2019-07-31'),
(26, 4, 'Giải cứu cứu thế giới', 'Bốn bạn trẻ gia nhập lực lượng để cứu thế giới khi một cuộc xâm lược của người ngoài hành tinh làm gián đoạn trại hè của họ...', 'giai-cuu-the-gioi', 1, 98, 'Mỹ', 'Mcg', '2019-05-24'),
(27, 8, 'Hắc bang đổi nghề', 'Bộ phim xoay quanh một diễn viên bị thương trong một vụ tai nạn bắn súng và tỉnh dậy tưởng mình sẽ làm trùm xã hội đen.', 'hac-bang-doi-nghe', 1, 90, 'Hồng Kông', 'Francis Ng', '2019-04-19'),
(28, 4, 'Kẻ chết không chết', 'Lấy bối cảnh thị trấn nhỏ yên bình bị khuấy động bởi đám xác sống. Nhưng điều ghê rợn không kém là các cư dân cũng thấy việc này rất bình thường và đối mặt với bọn thây ma một cách rất ung dung và điềm tĩnh. Nhân vật trung tâm của phim là hai viên cảnh sát do Bill Murray và Adam River thủ vai, trông họ là hai người tỉnh táo nhất khi cùng nhau lập kế hoạch và đi vòng vòng để giúp người chứ không trốn chui trốn lủi...', 'ke-chet-khong-chet', 1, 104, 'Mỹ, Thụy Diển', 'Jim Jarmusch', '2019-05-14'),
(29, 7, 'Lễ hội đẫm máu', 'Lễ Hội Đẫm Máu lấy câu chuyện xoay quanh cô gái Dani cùng bạn trai và 3 người bạn khác đi du lịch tới ngôi làng Hårga tại Thụy Điển. Chuyến đi của họ trùng vào dịp làng Hårga tổ chức lễ hội mừng ngày hạ chí. Tưởng rằng tất cả sẽ có một quãng thời gian vui vẻ bên nhau nhưng rồi mọi thứ bắt đầu trở nên không như ý muốn của mình và thậm chí còn đáng sợ gấp nhiều lần.', 'le-hoi-dam-mau', 1, 147, 'Mỹ', 'Ari Aster', '2019-07-03'),
(30, 4, 'Lời nguyền 8 chân', 'Dựa trên bài thơ cổ từ nhiều thế kỷ trước, LỜI NGUYỀN 8 CHÂN xoay quanh một gia đình chuyển đến căn biệt thự hẻo lánh và bị tấn công bởi con quái vật nhện khổng lồ. Trỗi dậy từ màn đêm, nó lao vào cuộc cuồng sát khốc liệt. Liệu ba mẹ con xấu số có thoát khỏi nanh vuốt của con nhện quỷ tàn ác?', 'loi-nguyen-8-chan', 1, 94, 'Mỹ', 'Micah Gallo', '2019-09-13'),
(31, 4, 'Mary Poppins trở lại', 'Trong bộ phim sắp ra mắt của hãng phim Disney, Mary Poppins Returns, một phần phim hoàn toàn mới kế thừa đúng tinh thần của tác phẩm gốc, Marry Popins quay trở về để giúp đỡ thế hệ sau của gia đình Banks tìm thấy niềm vui và điều kì diệu trong cuộc sống mà họ đang dần đánh mất. Emily Blunt hóa thân thành cô bảo mẫu gần như hoàn hảo với khả năng phép thuật đặc biệt. Cô có thể biến bất cứ công việc nào thành một chuyến phiêu lưu tuyệt vời khó quên. Bộ phim còn có sự góp mặt của Lin-Manuel Miranda thủ vai người bạn thân thiết của cô, Jack - một anh chàng làm nghề thắp đèn với lối sống tích cực, luôn luôn muốn đem ánh sáng đến khắp con phố ở London. bằng một cách thần kì nào đó đã quay trở lại cuộc sống của gia đình họ và cùng với sự giúp đỡ của Jack, cô đã mang niềm vui trở lại căn nhà của gia đình nhà Banks.', 'mary-poppins-tro-lai', 1, 130, 'Mỹ', 'Rob Marshall', '2018-12-19'),
(32, 3, 'Mới lạ', 'Bộ phim diễn ra tại Los Angeles hiện đại, khi những nam thanh nữ tú bắt đầu hẹn hò và yêu nhau qua mạng xã hội...', 'moi-la', 1, 117, 'Mỹ', 'Drake Doremus', '2017-11-03'),
(33, 6, 'Mong em hạnh phúc', 'K và Cream gặp nhau năm 16 tuổi tại trường trung học và dần thân thiết như người trong gia đình. Năm tháng thôi qua, K đi làm cho một hãng thu âm và Cream trở thành nhạc sĩ, họ vẫn sống với nhau dù không phải là một đôi. Một ngày kia, K bị chẩn đoán mắc bệnh bạch cầu, K do dự không tiết lộ bệnh tình của mình cũng như thổ lộ tình yêu với Cream vì sợ cô tổn thương. Trước khi không còn thời gian, K phải làm mọi thứ để Cream có thể ổn định và hạnh phúc.', 'mong-em-hanh-phuc', 1, 105, 'Đài Loan', 'Gavin Lin', '2019-01-11'),
(34, 3, 'Năm bước để yêu', 'Năm Bước Để Yêu nói về câu chuyện tình của Will và Stella khi cả hai đều mang căn bệnh u xơ nang. Với những người mắc căn bệnh này, họ không thể đến gần nhau và khoảng cách 6 bước chân là quy tắc bất khả kháng để cả hai không bị lây nhiễm vi khuẩn của nhau. Tuy nhiên, tình cảm vốn là điều khó nói. Đặc biệt là Will và Stella, dù không thể chạm được vào nhau nhưng họ vẫn chấp nhận dành tình cảm cho người còn lại, một cách chân thành nhất.', 'nam-buoc-de-yeu', 1, 116, 'Mỹ', 'Justin Baldoni', '2019-03-14'),
(35, 8, 'Ngày tựu trường', 'Ngày Tựu Trường là câu chuyện háo hức phô trương thành công của mình trước những kẻ bắt nạt mình lúc nhỏ và crush, hai người bạn thân nhất đã trải qua một đêm hoang dã trong cuộc họp lớp trung học của họ.', 'ngay_tuu_truong', 1, 83, 'Mỹ, Pháp', 'Julien War, Remy Four', '2019-08-30'),
(36, 5, 'Người dơi: Ác nhân bí ẩn', 'Batman: Hush là một bộ phim hoạt hình của DC, cũng là bộ phim hoạt hình số 35 của cả dòng phim. Batman: Hush kể về một nhân vật phản diện mới tên là Hush, với âm mưu lật đổ toàn bộ những chiến tích của Batman từ trước đến giờ. Hush muốn khiến cho sự nghiệp cũng như lý tưởng chính nghĩa của anh chàng người dơi sụp đổ. Liệu âm mưu của Hush có thành công', 'nguoi-doi-ac-nhan-bi-an', 1, 81, 'Mỹ', 'Justin Copeland', '2019-07-20'),
(37, 2, 'Người nhện: Xa nhà', 'Hậu chiến Vô Cực, Người Nhện Peter Parker và nhóm bạn thân cùng tham gia chuyến du lịch châu Âu của trường. Tuy nhiên, kế hoạch siêu anh hùng nghỉ phép của Peter nhanh chóng bị hủy bỏ sau khi cậu đồng ý giúp Nick Fury khám phá bí ẩn về những cuộc tấn công của nhóm kẻ thù mang sức mạnh nguyên tố đang tàn phá khắp lục địa.', 'nguoi-nhen-xa-nha', 1, 134, 'Mỹ', 'Jon Watts', '2019-06-28'),
(38, 6, 'Người quen xa lạ', 'Một nhóm bạn thân chơi với nhau đã được 30 năm. Vào đêm nọ, nhân dịp gặp mặt, bỗng một người đề nghị chơi trò chơi: Mỗi người đặt điện thoại lên bàn, bất kỳ ai nhận được tin nhắn hay cuộc gọi đều phải chia sẻ cùng nhau. Tưởng đơn giản nhưng không ngờ đây chính là trò “tự sát”. Từ đây, những góc khuất của mỗi người lần lượt bị tiết lộ.', 'nguoi-quen-xa-la', 1, 115, 'Hàn Quốc', 'Lee Jae-Kyu', '2018-10-31'),
(39, 8, 'Nhà có 6 anh em', 'Alan, một người sắp được làm bố thật bất ngờ khi anh phát hiện ra là một trong Sextuplets (sinh 6) cuộc tìm kiếm thêm 5 người anh em đã thất lạc từ lâu của Alan bắt đầu...', 'nha-co-6-anh-em', 1, 97, 'Mỹ', 'Michael Tiddes', '2019-08-16'),
(40, 2, 'Ninja rùa', 'Từ một nghiên cứu hóa học thất bại khiến cho những chú rùa bình thường bị đột biến thành khổng lồ với khả năng đi đứng và nói chuyện như người. Được một bậc thầy võ thuật nuôi nấng và dạy dỗ, bốn chú rùa con ngày nào đã trưởng thành, là những ninja bí mật chiến đấu bảo vệ chính nghĩa và hòa bình trong thế giới ngầm của thành phố New York.', 'ninja-rua', 1, 101, 'Mỹ', 'Jonathan Liebesman', '2014-08-08'),
(41, 3, 'Nụ hôn đầu', 'Đây là một câu chuyện tình lãng mạn và hài hước về Sa - 25 tuổi, độc thân, đã gặp Bass, một học sinh lớp 12 trên một chuyến xe buýt. Định mệnh trớ trêu đã trêu ngươi họ khi chỉ sau vài phút gặp mặt, họ có ngay nụ hôn đầu tiên dành cho nhau trên chuyến xe buýt đó, khi cả hai cùng ló đầu ra ngoài để xem một tai nạn trên đường. Bass giờ đây đã trở nên say đắm Sa, và đặt rõ quyết tâm sẽ giành được trái tim cô, bất chấp cô đã lờ đi những lời tán tỉnh của mình, bất chấp sự thiếu kinh nghiệm và khoảng cách tuổi tác giữa cả hai.', 'nu-hon-dau', 1, 106, 'Thái Lan', 'Kirati Nakintanon', '2012-01-26'),
(42, 7, 'Nụ hôn ma quái', 'Krasue: Inhuman kiss - Nụ hôn ma quái là câu chuyện ở một ngôi làng xa ở Thái, cô gái trẻ Sai mắc lời nguyền của Krasue – Ma lai rút ruột. Hàng đêm, đầu cô tách rời thân thể để săn lùng thú vật. Dân làng sợ hãi khi gia súc của mình chết hàng loạt và bắt đầu lùng bắt Krasue. Tuy nhiên, Noi - người bạn thân của Sai - vẫn sát cánh cùng cô bất chấp biết sự thật.', 'nu-hon-ma-quai', 1, 90, 'Thái Lan', 'Sitisiri Mongkolsiri', '2019-03-14'),
(43, 4, 'Nữ thần rắn 2', 'Soi, cô gái trẻ sinh ra và lớn lên ở một ngôi làng phía Bắc của Thái Lan. Cô dành cả thanh xuân để coi sóc đền thờ nữ thần Nakee nhằm tỏ lòng tôn kính. Nhưng những vụ án chết người kì lạ liên tiếp xảy ra khiến dân làng cho rằng đấy là điềm báo sự trở lại của Nữ Thần Rắn. Đồng thời coi Soi chính là hiện thân của Nữ thần rắn đang quay về báo thù. Soi sẽ phải làm cách nào với những điềm báo này.', 'nu-than-ran', 1, 93, 'Thái Lan', 'Pongpat Wachirabunjong', '2018-10-18'),
(44, 8, 'Phỏng vấn ngôi sao', 'Between Two Ferns: The Movie là hành trình lấy lại danh tiếng của Zach Galifianakis sau khi một sai lầm ở nhà đài anh làm việc. Để chuộc lỗi và giành lấy cơ hội thăng tiến, Zach thực hiện kế hoạch phỏng vấn những ngôi sao điện ảnh nổi tiếng cho chương trình Between Two Fern. Điều đặt biệt của bộ phim là những diễn viên trong phim không hề vào vai diễn mà đi tái hiện chính mình cho một talk-show thực tế lồng trong một bộ phim.', 'phong-van-ngoi-sao', 1, 82, 'Mỹ', 'Scott Aukerman', '2019-09-20'),
(45, 8, 'Quý cô Gloria Bell', 'Quý Cô Gloria Bell nói về một người phụ nữ vừa tìm thấy được tự do sau khi ly dị. Ban ngày, cô dành thời gian cho một công việc tại văn phòng và ban đêm bung lụa hết cỡ trên sàn nhảy của các câu lạc bộ khắp Los Angeles.', 'quy-co-gloria-bell', 1, 102, 'Mỹ, Chile', 'Sebastián Lelio', '2019-03-07'),
(46, 2, 'Quỷ đỏ', 'Được chuyển thể dựa trên bộ truyện tranh cùng tên nổi tiếng của tác giả Mike Mignola, phần “reboot” Hellboy là cuộc chiến giữa “Quỷ đỏ” (David Harbour - Stranger Things) và một ác nữ cổ xưa (Milla Jovovich - Resident Evil) đang lên kế hoạch tiêu diệt loài người.', 'quy-do-3', 1, 120, 'Mỹ, Anh, Bulgaria', 'Neil Marshall', '2019-04-09'),
(47, 2, 'Transformers 5: Chiến binh cuối cùng', '\"Chiến Binh Cuối Cùng\" phá nát những huyền thoại cốt lõi của loạt phim Transformers, và tái định nghĩa thế nào là anh hùng. Con người và các Transformer đang có chiến tranh, Optimus Prime đã biến mất. Chìa khóa để cứu tương lai của chúng ta đang được chôn vùi trong những bí mật của quá khứ, trong lịch sử ẩn còn được giữ kín của các Transformer trên Trái Đất. Trách nhiệm cứu thế giới đè lên vai của một đồng minh đặc biệt: Cade Yeager, người máy Bumblebee, một quý tộc Anh, và một Giáo sư đại học Oxford Trong đời ai cũng có khoảnh khắc chúng ta được chọn để tạo nên sự khác biệt. Trong Transformer: Chiến Binh Cuối Cùng, kẻ ác trở thành anh hùng. Anh hùng sẽ trở thành kẻ thủ ác. Chỉ một thế giới được tồn tại: của họ, hoặc của chúng ta.', 'robot-dai-chien', 1, 149, 'Mỹ', 'Micheal Bay', '2017-06-23'),
(48, 2, 'John Wick 3: Chuẩn bị chiến tranh', 'Sau khi trở thành \"giải thưởng lớn\" của giới sát thủ toàn cầu, siêu sát thủ John Wick phải cùng chú chó cưng lên đường chạy trốn. Với giá 14 triệu $, John Wick trở thành mục tiêu béo bở của bất cứ kẻ săn đầu người nào.', 'sat-thu-john-wick', 1, 130, 'Mỹ', 'Chad Stahelski', '2019-05-17'),
(49, 7, 'Sinh nhật chết chóc', 'Tree, một cô gái trẻ bị giết ngay vào đêm sinh nhật. Nhưng ngay sau đó, cô nhận ra mình bị rơi vào một vòng lặp thời gian khó lý giải, khiến cô trải qua ngày hôm đó hết lần này đến lần khác và đến tối cô lại tiếp tục bị giết theo nhiều cách khác nhau. Mọi chuyện sẽ chỉ kết thúc cô điều tra được kẻ sát nhân nấp sau chiếc mặt nạ đó là ai...', 'sinh-nhat-chet-choc', 1, 96, 'Mỹ', 'Christopher Landon', '2017-10-13'),
(50, 7, 'Sự thật sau khi tự sát', 'Một nữ sinh trung học mất tích bị nghi là đã tự sát. Khi họ điều tra ra một nữ sinh có vẻ ngoài u ám tên Yeong Hee là người cuối cùng nhìn thấy cô, những nghi vấn bắt đầu nổi lên. Yeong Hee nhanh chóng bị ném vào vòng xoáy những lời buộc tội, dẫn đến một cuộc săn lùng phù thủy được khơi mào bởi mẹ của cô gái mất tích và những người bạn học nhanh-chóng-tin-rằng-cô-có-tội. Trong quá trình điều tra tìm kiếm sự thật, Yeong Hee còn phải giải quyết cơn khủng hoảng hiện sinh của mình trước khi mọi thứ dần dần vượt khỏi tầm kiểm soát. After My Death kết thúc với một điều bí ẩn chưa được giải đáp để khiến người xem phải suy ngẫm kĩ hơn về những vấn đề đến từ áp lực từ đồng nghiệp cho đến chứng trầm cảm tuổi mới lớn và những nhân tố xã hội góp phần gây ra những vấn đề đó.', 'su-that-sau-khi-tu-sat', 1, 107, 'Hàn Quốc', 'Kim Ui-Seok', '2018-09-13'),
(51, 2, 'Tay đua huyền thoại', 'Một huyền thoại đua xe cổ (John Travolta) bị lôi kéo trở lại đường đua bẩn thỉu khi con trai ông (Toby Sebastian), một tay đua đầy tham vọng, gia nhập một đội đua đối thủ, gây ra cuộc cạnh tranh khốc liệt và nguy hiểm giữa cha và con trai.', 'tay-dua-huyen-thoai', 1, 87, 'Anh, Tây Ban Nha', 'Karzan Kader', '2019-02-22'),
(52, 4, 'Pokémon: Thám tử Pikachu', 'Pokemon: Detective Pikachu xoay quay hành trình truy tìm manh mối phá án về cái chết của Harry Goodman – thám tử mẫn cán ở thành phố Ryme của Tim Goodman và người bạn đồng hành siêu đáng yêu Pikachu. Là người duy nhất nghe được giọng nói thực của của Pikachu thay vì tiếng “Pika Pika” quen thuộc, Tim và Pikachu nhanh chóng trở thành bạn thân và cùng dấn thân vào cuộc điều tra những vụ mất tích bí ẩn trong thành phố. Trong hành trình phá án, cặp đôi “oan gia” này đã gây ra những tình huống trái ngang nhưng tràn đầy tiếng cười.', 'tham-tu-pikachu', 1, 104, 'Mỹ, Nhật Bản', 'Rob Letterman', '2019-05-03'),
(53, 8, 'Thằng em lý tưởng', 'Se Ha (Shin Ha Kyun) và Dong Goo (Lee Kwang Soo). Họ vốn không phải là anh em ruột thịt, nhưng sống chung cùng một mái nhà như bao người khác trong suốt 20 năm qua. Se Ha thông minh nhưng chẳng may bị khuyết tật, còn Dong Goo không thông minh lắm nhưng bù lại thì anh rất khỏe mạnh. Cho đến một ngày, sự xuất hiện của cô gái Mi Hyun đã làm thay đổi tất cả...', 'thang-em-ly-tuong', 1, 114, 'Hàn Quốc', 'Yook Sang-Hyo', '2019-05-01'),
(54, 8, 'Chàng ngố tập yêu', 'Andrei Ở tuổi dậy thì ham muốn tình dục, cậu ta vụng về, say mê yêu thầm cô bạn học Ramona quyến rũ nhưng thờ ơ. Cho đến một ngày Andrei gặp Anemona tuyệt đẹp khi đi nghỉ mát...', 'thang-ngo-tap-yeu', 1, 109, 'Romania', 'Cristina Jacob', '2019-02-14'),
(55, 2, 'Thế giới khủng long', 'Trong Jurassic World (Thế giới khủng long), lấy bối cảnh 22 năm sau sự kiện ở Công viên kỷ Jura phần 3. Công viên kỷ Jura ngày nào giờ đã trở thành công viên Khủng long thật sự. Tuy nhiên, khu tham quan này lại rất vắng khách, vì người dân không còn chuộng những con quái vật cổ đại nữa. Để thu hút khách trở lại, tập đoàn sở hữu Masrani quyết định lai tạo ra một loài khủng long mới, nhưng điều đó nhanh chóng dẫn đến thảm họa. Jurassic World sẽ là bộ phim bom tấn đầy hứa hẹn tiếp theo của “Star Lord” Chris Pratt, nam diễn viên đã ghi dấu ấn đậm nét trong Guardian of Galaxy vào năm ngoái.', 'the-gioi-khung-long', 1, 124, 'Mỹ', 'Colin Trevorrow', '2015-06-10'),
(56, 4, 'Thế thân', 'Avatar là câu chuyện về người anh hùng “bất đắc dĩ” Jake Sully – một cựu sĩ quan thủy quân lục chiến bị liệt nửa thân. Người anh em sinh đôi của anh được chọn để tham gia vào chương trình cấy gien với người ngoài hành tinh Na’vi nhằm tạo ra một giống loài mới có thể hít thở không khí tại hành tinh Pandora. Giống người mới này được gọi là Avatar. Sau khi anh của Jake bị giết, Jake được chọn để thay thế anh mình và đã trở thành một Avatar, Jake có nhiệm vụ đi tìm hiểu và nghiên cứu hành tinh Pandora. Những thông tin mà anh thu thập được rất có giá trị cho chiến dịch xâm chiếm hành tinh xanh thứ hai này của loài người.', 'the-than', 1, 162, 'Mỹ', 'James Cameron', '2009-12-16'),
(57, 7, 'Thòng lọng ma', 'Truyền thuyết về những ai treo cổ tự vẫn, thì hồn ma sẽ khó siêu thoát, âm hồn vất vưởng. Để xoa dịu linh hồn người chết, vùng ven biển Đài Loan tổ chức một buổi lễ gọi là “Gửi Đờm”.', 'thong-long-ma', 1, 106, 'Đài Loan', 'Shih-Han Liao', '2018-11-16'),
(58, 4, 'Tòa tháp địa ngục', 'DreadOut là bộ phim có sự tham gia của Caitlin Halderman, Jefri Nichol và Marsha Aruan. Jessica, Beni, Dian, Alex, Erik và Linda muốn tăng sự nổi tiếng của họ thông qua việc ghi lại cuộc phiêu lưu của họ để tải lên phương tiện truyền thông xã hội của họ ...', 'toa-thap-dia-nguc', 1, 97, 'Thái Lan', 'Kimo Stamboel', '2019-01-03'),
(59, 2, 'Trò chơi vương quyền 8', 'Game of Thrones - Trò Chơi Vương Quyền mùa thứ 8 là mùa cuối cùng của bộ phim truyền hình đình đám này. Những tưởng mùa phim này thì phe con người, hay ít ra là phương Bắc, sẽ đoàn kết chống lại Night King (Dạ Đế) nhưng Mẹ Rồng (Emilia Clarke) và Sansa Stark (Sophie Turner) lại lườm liếc nhau đến đau cả mắt. Nguyên nhân của hành động này đến từ việc người nhà Stark từng có thâm thù với Targaryen trong cuộc chiến tranh giành vương vị nhiều năm trước. Dân phương Bắc vốn đã ít tin người, huống gì là một nữ hoàng của kẻ địch năm xưa. Chưa kể, Jon Snow (Kit Harington) đã từ bỏ ngôi vị Vua phương Bắc (King of the North) chỉ để nhờ tới sự giúp đỡ. Game of Thrones phần cuối này không chỉ là cái kết cho toàn loạt phim mà còn quyết định xem ai sẽ là chủ nhân cuối cùng của Iron Throne (Ngôi Báu Sắt) hay liệu con người, với những mưu mô toan tính, có đáng sống trước sức mạnh của Bóng Trắng?', 'tro-choi-vuong-quyen', 6, 57, 'Mỹ, Anh', 'David Benioff, D.b. Weiss', '2019-04-14'),
(60, 8, 'Tứ đại gia', '4 anh chàng giàu có tán tỉnh những quý cô quyền lực, cố gắng có được những hợp đồng từ giới chính trị thượng lưu, ăn cắp tiền của giới tài phiệt chia cho người nghèo. Họ phải đối mặt với thách thức lớn nhất khi phỉa dối đầu với một chính trị gia khét tiếng và tham nhũng, người có kế hoạch phá hủy một ngôi làng để xây dựng một trung tâm mua sắm. Bốn anh chàng này cùng nhau lên kế hoạch cứu người nghèo trong làng.', 'tu-dai-gia', 1, 106, 'Nigeria', 'Toka McBaror', '2018-09-28'),
(61, 3, 'Từ khi có anh', 'Dựa trên nguyên tác ăn khách của cây bút Anna Todd, After kể về Tessa, một nữ sinh năm nhất đại học gương mẫu, hiếu thuận với mẹ và chung thủy với mối tình thời trung học của mình. Trên con đường trải đầy hoa hồng tuyệt đẹp của mình, Tessa đã gặp gỡ anh chàng Hardin Scott, một nam sinh nổi loạn đầy bí ẩn và quyến rũ. Cuộc hành trình bước vào thế giới cạm bẫy của Tessa bắt đầu từ đó.', 'tu-khi-co-anh', 1, 105, 'Mỹ', 'Jenny Gage', '2019-04-11'),
(62, 8, 'Xin chào, quý ông tỷ phú', 'Câu chuyện xoay quanh một cầu thủ bóng đá đang gặp khó khăn (Thẩm Đằng đóng) phát hiện mình có một người chú tỷ phú ở Đài Loan. Người chú hứa cho anh thừa kế gia tài nếu chứng tỏ được khả năng quản lý tài chính. Chàng cầu thủ được giao một tỷ nhân dân tệ (147 triệu USD) và phải tiêu hết trong một tháng với nhiều điều kiện như không được chi cho từ thiện, ma túy, đánh bạc hoặc mua các vật phẩm nghệ thuật.', 'xin-choa-quy-ong-ty-phu', 1, 118, 'Trung Quốc', 'Da-Mo Peng, Fei Yan', '2018-07-27'),
(63, 8, 'Yêu nhầm bạn thân', 'Yêu Nhầm Bạn Thân xoay quanh mối tình đơn phương của Palm – một tiếp viên hàng không. Ngay từ lúc còn ngồi trên ghế nhà trường, anh đã thầm yêu Gink, nhưng sau đó, quyết định giữ tình bạn thân thiết. 10 năm trôi qua, cả hai trưởng thành và vẫn giữ mối quan hệ bạn thân khác giới, những khi bên nào có trục trặc với người yêu, thì đều có bên kia xuất hiện làm “phao cứu sinh”.', 'yeu-nham-ban-than', 1, 118, 'Thái Lan', 'Chayanop Boonprakob', '2019-03-15'),
(64, 8, 'Yêu nhầm sếp bự', 'Là một bộ phim hài lãng mạn Mỹ năm 2019 của đạo diễn Jonathan Levine; YÊU NHẦM SẾP “BỰ được viết bởi Dan Sterling và Liz Hannah. Cốt truyện kể về một nhà báo bắt đầu dành thời gian với người giữ trẻ cũ của mình, người hiện đang tranh cử tổng thống. Tuy nhiên, tiếng sét ai tình đã xảy ra giữa hai người là điều mà không một ai trong số họ ngờ tới.', 'yeu-nham-sep-bu', 1, 125, 'Mỹ', 'Jonathan Levine', '2019-05-01');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slides`
--

CREATE TABLE `slides` (
  `id_slide` int(11) NOT NULL,
  `id_movie` int(11) NOT NULL,
  `banner` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `slides`
--

INSERT INTO `slides` (`id_slide`, `id_movie`, `banner`) VALUES
(1, 10, 'end-game'),
(2, 15, 'godzilla'),
(3, 56, 'avatar'),
(4, 16, 'it'),
(5, 59, 'game-of-thrones');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `dialnumber` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`, `dialnumber`) VALUES
(1, 'admin', 'Neverchange1239', 355469233);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `actor`
--
ALTER TABLE `actor`
  ADD PRIMARY KEY (`id_actor`);

--
-- Chỉ mục cho bảng `actor_movie`
--
ALTER TABLE `actor_movie`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_ac_mo_1` (`id_movie`),
  ADD KEY `fk_ac_mo_2` (`id_actor`);

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id_category`);

--
-- Chỉ mục cho bảng `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_com_mo` (`id_movie`),
  ADD KEY `fk_com_us` (`id_user`);

--
-- Chỉ mục cho bảng `follow`
--
ALTER TABLE `follow`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_fl_mo` (`id_movie`),
  ADD KEY `fk_fl_us` (`id_user`);

--
-- Chỉ mục cho bảng `movie`
--
ALTER TABLE `movie`
  ADD PRIMARY KEY (`id_movie`),
  ADD KEY `fk_mo_cate` (`id_category`);

--
-- Chỉ mục cho bảng `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`id_slide`),
  ADD KEY `fk_slide_mo` (`id_movie`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `actor`
--
ALTER TABLE `actor`
  MODIFY `id_actor` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `actor_movie`
--
ALTER TABLE `actor_movie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `id_category` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `follow`
--
ALTER TABLE `follow`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `movie`
--
ALTER TABLE `movie`
  MODIFY `id_movie` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT cho bảng `slides`
--
ALTER TABLE `slides`
  MODIFY `id_slide` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `actor_movie`
--
ALTER TABLE `actor_movie`
  ADD CONSTRAINT `fk_ac_mo_1` FOREIGN KEY (`id_movie`) REFERENCES `movie` (`id_movie`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_ac_mo_2` FOREIGN KEY (`id_actor`) REFERENCES `actor` (`id_actor`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `fk_com_mo` FOREIGN KEY (`id_movie`) REFERENCES `movie` (`id_movie`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_com_us` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `follow`
--
ALTER TABLE `follow`
  ADD CONSTRAINT `fk_fl_mo` FOREIGN KEY (`id_movie`) REFERENCES `movie` (`id_movie`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_fl_us` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `movie`
--
ALTER TABLE `movie`
  ADD CONSTRAINT `fk_mo_cate` FOREIGN KEY (`id_category`) REFERENCES `category` (`id_category`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `slides`
--
ALTER TABLE `slides`
  ADD CONSTRAINT `fk_slide_mo` FOREIGN KEY (`id_movie`) REFERENCES `movie` (`id_movie`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
