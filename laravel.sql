-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3306
-- Thời gian đã tạo: Th3 23, 2021 lúc 09:43 AM
-- Phiên bản máy phục vụ: 5.7.31
-- Phiên bản PHP: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `laravel`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category_product`
--

DROP TABLE IF EXISTS `category_product`;
CREATE TABLE IF NOT EXISTS `category_product` (
  `category_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `category_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `category_image` varchar(255) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `category_product`
--

INSERT INTO `category_product` (`category_id`, `category_name`, `category_desc`, `category_status`, `created_at`, `updated_at`, `category_image`) VALUES
(1, 'Đồng hồ thời trang', 'Đồng hồ thời trang', 0, NULL, NULL, '1.jpg'),
(2, 'Đồng hồ thông minh', 'Đồng hồ thông minh', 0, NULL, NULL, '2.jpg'),
(3, 'Định vị trẻ em', 'Định vị trẻ em', 0, NULL, NULL, '3.jpg'),
(4, 'Dây đồng hồ', 'Dây đồng hồ', 0, NULL, NULL, '4.jpg'),
(5, 'Pin đồng hồ', 'Pin đồng hồ', 0, NULL, NULL, '5.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(7, '2014_10_12_000000_create_users_table', 1),
(8, '2014_10_12_100000_create_password_resets_table', 1),
(9, '2019_10_13_051047_create_tbl_admin_table', 1),
(10, '2019_10_13_113824_create_category_product_table', 1),
(11, '2019_10_24_025414_create_tbl_brand', 1),
(12, '2019_10_24_084356_create_tbl_product', 1),
(13, '2019_11_10_052835_create-table-address', 2),
(14, '2019_11_10_053521_create-table-district', 3),
(15, '2019_11_10_120143_create-table-checkout', 4),
(16, '2019_11_10_121024_create-table-oder', 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_address`
--

DROP TABLE IF EXISTS `tbl_address`;
CREATE TABLE IF NOT EXISTS `tbl_address` (
  `address_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `address_city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_district` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`address_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_address`
--

INSERT INTO `tbl_address` (`address_id`, `address_city`, `address_district`, `address_desc`) VALUES
(1, 'Hồ Chí Minh', '1', '1'),
(2, 'Hà Nội', '2', '1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_admin`
--

DROP TABLE IF EXISTS `tbl_admin`;
CREATE TABLE IF NOT EXISTS `tbl_admin` (
  `admin_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `admin_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_phone` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_admin`
--

INSERT INTO `tbl_admin` (`admin_id`, `admin_email`, `admin_password`, `admin_name`, `admin_phone`, `created_at`, `updated_at`) VALUES
(1, 'admin@gmail.com', '21232f297a57a5a743894a0e4a801fc3', 'Hồ Quốc Duy', '0123456789', NULL, NULL),
(2, 'A@gmail.com', '25f9e794323b453885f5181f1b624d0b', 'a', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_brand`
--

DROP TABLE IF EXISTS `tbl_brand`;
CREATE TABLE IF NOT EXISTS `tbl_brand` (
  `brand_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `brand_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`brand_id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_brand`
--

INSERT INTO `tbl_brand` (`brand_id`, `brand_name`, `brand_desc`, `brand_status`, `created_at`, `updated_at`) VALUES
(21, 'KORLEX', 'KORLEX', 0, NULL, NULL),
(20, 'FOSSIL', 'FOSSIL', 0, NULL, NULL),
(19, 'SRWATCH', 'SRWATCH', 0, NULL, NULL),
(18, 'CASIO', 'CASIO', 0, NULL, NULL),
(17, 'Citizen', 'Citizen', 0, NULL, NULL),
(16, 'Zeblaze', 'Zeblaze', 0, NULL, NULL),
(15, 'Huiwei', 'Huiwei', 0, NULL, NULL),
(14, 'Xiaomi', 'Xiaomi', 0, NULL, NULL),
(13, 'Samsung', 'Samsung', 0, NULL, NULL),
(12, 'Apple', 'Apple', 0, NULL, NULL),
(22, 'ORIENT', 'ORIENT', 0, NULL, NULL),
(23, 'Masstel', 'Masstel', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_checkout`
--

DROP TABLE IF EXISTS `tbl_checkout`;
CREATE TABLE IF NOT EXISTS `tbl_checkout` (
  `checkout_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_oder` int(11) NOT NULL,
  `checkout_address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `checkout_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `checkout_total` int(11) NOT NULL,
  `checkout_id_oder` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`checkout_id`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_checkout`
--

INSERT INTO `tbl_checkout` (`checkout_id`, `id_oder`, `checkout_address`, `checkout_desc`, `checkout_total`, `checkout_id_oder`, `email`) VALUES
(26, 0, 'Hồ Chí Minh / quận 2 / 180 cao lỗ', '', 2961000, '25loyqpisv', 'hoquocduy198@gmail.com');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_district`
--

DROP TABLE IF EXISTS `tbl_district`;
CREATE TABLE IF NOT EXISTS `tbl_district` (
  `district_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `district_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `district_city` int(11) NOT NULL,
  `district_desc` int(11) NOT NULL,
  PRIMARY KEY (`district_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_district`
--

INSERT INTO `tbl_district` (`district_id`, `district_name`, `district_city`, `district_desc`) VALUES
(1, 'quận 1', 1, 2),
(2, 'quận 2', 1, 2),
(3, 'quận 3', 1, 2),
(4, 'quận 4', 1, 2),
(5, 'Ba đình', 2, 2),
(6, 'Đống Đa', 2, 2),
(7, 'Cầu Giấy', 2, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_oder`
--

DROP TABLE IF EXISTS `tbl_oder`;
CREATE TABLE IF NOT EXISTS `tbl_oder` (
  `oder_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `checkout_id` int(11) NOT NULL,
  `oder_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `oder_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_qty` int(11) NOT NULL,
  PRIMARY KEY (`oder_id`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_oder`
--

INSERT INTO `tbl_oder` (`oder_id`, `checkout_id`, `oder_name`, `oder_price`, `order_qty`) VALUES
(27, 26, 'Đồng hồ Nam Casio MTP-X300L-7EVDF', '2178000', 1),
(28, 26, 'Đồng hồ Nữ Casio LA670WA-7SDF', '783000', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_product`
--

DROP TABLE IF EXISTS `tbl_product`;
CREATE TABLE IF NOT EXISTS `tbl_product` (
  `product_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_status` int(11) NOT NULL,
  `product_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `product_gia` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_product`
--

INSERT INTO `tbl_product` (`product_id`, `product_name`, `product_desc`, `product_status`, `product_image`, `category_id`, `brand_id`, `product_gia`, `created_at`, `updated_at`) VALUES
(11, 'Đồng hồ Nữ Casio LA670WA-7SDF', 'Tinh hoa của sự sáng tạo\r\nThương hiệu đồng hồ nổi tiếng đến từ Nhật Bản không ngừng cải tiến và cho ra mắt những dòng sản phẩm chất lượng phù hợp với nhiều đối tượng khách hàng. Những dòng sản phẩm nổi tiếng của Casio là: G-Shock với thiết kế mạnh mẽ cùng độ bền cao, Edifice thiết kế hiện đại cùng nhiều tính năng vượt trội, Sheen với thiết kế cổ điển và sang trọng,…', 0, 'Casio-152.jpg', 1, 18, 783000, NULL, NULL),
(12, 'Đồng hồ Nam Casio MTP-X300L-7EVDF', 'Thiết kế tinh tế trong từng chi tiết, là sự lựa chọn đáng tin cậy dành cho các quý ông lịch lãm\r\n\r\nĐồng hồ nam Casio MTP-X300L-7EVDF thuộc hãng Casio đến từ Nhật Bản, sẽ khiến bạn hài lòng về chất lượng mà chiếc đồng hồ mang lại.\r\n\r\nHạn chế hư hỏng khi va đập ở mức độ vừa phải\r\n\r\n- Mặt kính trong suốt với độ cứng cao, có thể đánh bóng lại như mới khi bị trầy xước nhẹ.\r\n\r\n- Đồng hồ Casio có khung viền chắc chắn, chịu lực tốt, chống oxi hóa và ăn mòn hiệu quả.\r\n\r\nKhả năng chống nước 5 ATM, an toàn khi tắm, rửa tay và đi mưa, không đeo đồng hồ nam khi lặn, bơi\r\n\r\nXem giờ dễ dàng và thuận tiện hơn với định dạng giờ ở dạng 24 giờ trên đồng hồ Casio nam\r\n\r\nNắm bắt nhiều thông tin thời gian hơn với tiện ích lịch thứ và lịch ngày \r\n\r\nDây đồng hồ có trọng lượng nhẹ, êm ái và mềm mại, không gây khó chịu khi đeo trong thời gian dài', 0, 'Casio-217.jpg', 1, 18, 2178000, NULL, NULL),
(13, 'Apple Watch S5 40mm viền nhôm dây cao su', 'Đặc điểm nổi bật của Apple Watch S5 40mm viền nhôm dây cao su\r\n\r\nApple Watch S5 hồng chắc chắn là một trong những chiếc đồng hồ thông minh hiện đại đáng sở hữu nhất hiện nay. Máy được tích hợp màn hình Always-on luôn bật, đồng bộ nhạc với Apple Music, tính năng la bàn,...\r\nMàn hình OLED luôn hiển thị\r\nMàn hình hiển thị sắc nét, màu sắc chân thực ngay cả dưới trời nắng gắt. Tính năng luôn bật sáng màn hình xem giờ tiện lợi ngay cả khi đang lái xe. Bên cạnh đó, màn hình sẽ tự động giảm độ sáng khi không cần thiết để tăng tối đa thời lượng pin.', 0, 'apple-166.jpg', 2, 12, 11490000, NULL, NULL),
(14, 'Đồng hồ thông minh Samsung Galaxy Watch Active R500', 'Với thiết kế tối giản nhưng không kém phần thanh lịch, đồng hồ thông minh mới nhất của Samsung - Galaxy Watch Active, sẽ mang đến cho bạn trải nghiệm công nghệ và tính năng theo dõi sức khỏe tuyệt vời.', 0, 'samsung-19.jpg', 2, 13, 5490000, NULL, NULL),
(15, 'Masstel Super Hero', 'Đồng hồ thông minh Masstel Super Hero Xanh Dương có thiết kế năng động và màu sắc tươi tắn, phù hợp với hầu hết các trẻ em. Bên cạnh đó, chất liệu silicone không những an toàn đối với trẻ em mà còn mang đến cảm giác đeo thoải mái, cho các bé cả ngày thỏa thích học và chơi.', 0, 'masstel-183.jpg', 3, 23, 1490000, NULL, NULL),
(16, 'Dây đeo Apple Watch 44mm Apple Sport Loop MWU12 Khaki', 'Dây đeo Apple Watch 44mm Apple Sport Loop MWU12 Khaki thiết kế đơn giản với phong cách thể thao cá tính năng động. Phù hợp với các bạn trẻ khi sử dụng Apple Watch với mặt 42mm và 44mm...', 0, 'day-196.jpg', 4, 12, 1490000, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Hồ Quốc Duy', 'hoquocduy@gmail.com', '123456', NULL, NULL, NULL),
(2, 'abc', 'abc@gmail.com', '$2y$10$bCMk2R3sM81KkmjWygRqP.SEI9dJCllRk4aAsGR9f4FgNKAJEwD0q', 'LuARqSxtdwrCu6ZNlG8giuq6I160QJjBuWhmMTZUyPdFB7R9KKCveWl1SuIO', '2019-12-18 18:14:17', '2019-12-18 18:14:17'),
(3, 'ssaa', 'abcd@gmail.com', '$2y$10$TEgQ66hklof5sf9/EPKhnubrR.uS0rCXZ5ByLKjGgEbW8Y.TQ1Ktu', NULL, '2019-12-18 18:20:00', '2019-12-18 18:20:00'),
(4, 'hoquocduy', 'hoquocduy198@gmail.com', '$2y$10$OpNCgnvGiOicxiSM8qRpguo0fI6e1JYKL20UypLsfmPLuv0xMqv72', NULL, '2020-06-01 03:23:53', '2020-06-01 03:23:53'),
(5, 'ntnngan', 'DH51703779@student.stu.edu.vn', '$2y$10$iLhTYvvxvLTA0bPf9iaGvOiaNju9KQ.Azk3PRYs5M9CHJKO42cOAG', NULL, '2021-03-17 10:05:27', '2021-03-17 10:05:27');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
