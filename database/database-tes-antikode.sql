-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: backendtest_db
-- ------------------------------------------------------
-- Server version	8.0.19

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `brand`
--

DROP TABLE IF EXISTS `brand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `brand` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `imagePathLogo` varchar(400) NOT NULL,
  `imagePathBanner` varchar(400) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brand`
--

LOCK TABLES `brand` WRITE;
/*!40000 ALTER TABLE `brand` DISABLE KEYS */;
INSERT INTO `brand` VALUES (1,'Samsung','https://pbs.twimg.com/profile_images/1185000318918107136/HH-_8MHl.jpg','https://w7.pngwing.com/pngs/767/885/png-transparent-samsung-galaxy-logo-samsung-galaxy-note-8-samsung-galaxy-s8-samsung-galaxy-s7-samsung-galaxy-tab-series-galaxy-s8-text-logo-mobile-phones.png'),(2,'Xiaomi','https://i.pinimg.com/originals/f6/dc/36/f6dc36a0e79b6c92e4fd74ecdbb0d4e1.jpg','https://w7.pngwing.com/pngs/165/192/png-transparent-xiaomi-mi-a1-xiaomi-mi-1-logo-smartphone-angle-electronics-text.png'),(3,'Vivo','https://seeklogo.com/images/V/vivo-mobile-phones-logo-6C28635F1B-seeklogo.com.png','https://image.pngaaa.com/721/95721-middle.png'),(4,'Oppo','https://siliguriobserver.com/wp-content/uploads/2020/09/oppo-logo-BECA4F3EAB-seeklogo.com_.png','https://cdn.goto.com.pk/uploads/brands/banner/2019/7/5d3ff0ed41a21.lp-banner-mobile-.jpg'),(5,'Apple','https://img2.pngdownload.id/20180505/xaq/kisspng-iphone-4s-iphone-6-iphone-x-5aedf901934d33.1270536315255452176034.jpg','https://1000logos.net/wp-content/uploads/2017/02/Symbol-of-the-iPhone-logo.jpg');
/*!40000 ALTER TABLE `brand` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `outlet`
--

DROP TABLE IF EXISTS `outlet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `outlet` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `imagePath` varchar(400) NOT NULL,
  `address` varchar(400) NOT NULL,
  `longitude` decimal(9,6) NOT NULL,
  `latitude` decimal(9,6) NOT NULL,
  `brand_id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `outlet`
--

LOCK TABLES `outlet` WRITE;
/*!40000 ALTER TABLE `outlet` DISABLE KEYS */;
INSERT INTO `outlet` VALUES (1,'Samsung Experience Store - Lippo Mall Puri','https://lh5.googleusercontent.com/p/AF1QipOg0qzN6cShIoh-5RxF5QKB-kJdpO10ZI0PzeHx=w614-h240-k-no','Lippo Mall Puri JLippo Mall Puri Jl. Puri Indah Raya, Blok U1 (CBD Puri Indah, RT.3/RW.2, Kembangan Sel., Kec. Kembangan, Kota Jakarta Barat, Daerah Khusus Ibukota Jakarta 11610',106.739030,-6.188178,1),(2,'Samsung Multi Experience Store - Senayan Park','https://lh5.googleusercontent.com/p/AF1QipOgci0SKAL2hMgARhopE1YRuFuj-JL5t05J7QJT=w426-h240-k-no','Mall Senayan Park, Jl. Gerbang Pemuda No.3, RT.1/RW.3, Gelora, Kecamatan Tanah Abang, Kota Jakarta Pusat, Daerah Khusus Ibukota Jakarta 10270',106.803087,-6.206033,1),(3,'Xiaomi Store - Emporium Pluit','https://lh5.googleusercontent.com/p/AF1QipMHCYzXXYuQLJSuFKBlZcBQjIc7W4nXbvtyjWYZ=w408-h306-k-no','Mall Emporium Pluit Jalan Pluit Selatan Raya No.2-37 RT.23/RW.8 Penjaringan Lt. 2 No. 37, RT.23/RW.8, Penjaringan, Kec. Penjaringan, Kota Jkt Utara, Daerah Khusus Ibukota Jakarta 14440',106.790811,-6.127268,2),(4,'Xiaomi Store - Gandaria City','https://lh5.googleusercontent.com/p/AF1QipMtB3aP00hH9nMmvHVg1mCzdvkF3uSm5CHtkn_h=w408-h544-k-no','Gandaria City Lt. 1, Jl. Sultan Iskandar Muda No.RT.10, RT.10/RW.6, North Kebayoran Lama, Kebayoran Lama, South Jakarta City, Jakarta 12240',106.783509,-6.241751,2),(5,'Vivo Store - CIPUTRA MALL','https://lh5.googleusercontent.com/p/AF1QipPhYJRvCRebBUWC2eTeZFgVY_DoX7QXeDtfe5D-=w408-h306-k-no','MALL CIPUTRA LANTAI 1 UNIT 43 CIPUTRA MALL KOTA JAKARTA BARAT LT. 1 UNIT 43, RT.1/RW.16, Pd. Pinang, Kec. Kby. Lama, Kota Jakarta Selatan, Daerah Khusus Ibukota Jakarta 11840',106.782447,-6.257895,3),(6,'Vivo Store - ARTHA GADING MALL','https://lh5.googleusercontent.com/p/AF1QipMFdeebLTr5AA0HIbtHAINDbp39QE-YHi0RXVEv=w408-h305-k-no','Mall Artha Gading, Jl. Boulevard Artha Gading, RT.18/RW.8, Klp. Gading Bar., Kec. Klp. Gading, Kota Jkt Utara, Daerah Khusus Ibukota Jakarta 14240',106.892279,-6.133908,3),(7,'Oppo Store - ITC Roxy Mas','https://lh5.googleusercontent.com/p/AF1QipPbQl65FqXu7atyhJ9JXwExrVhJy5WkLgPGutE_=w426-h240-k-no','ITC ROXY MAS, Jl. Pangeran Jayakarta No.109, RW.8, Cideng, Kec Gambir, Kota Jakarta Pusat, Daerah Khusus Ibukota Jakarta 12130',106.803701,-6.164784,4),(8,'Oppo Store - Mall Matahari Daan Mogot Baru','https://streetviewpixels-pa.googleapis.com/v1/thumbnail?panoid=jHYBDAwYJgG_nichXhecOg&cb_client=search.gws-prod.gps&w=408&h=240&yaw=39.809177&pitch=0&thumbfov=100','Mall Daan Mogot, Jl. Tanah Lot No.21, RT.8/RW.12, Kalideres, Kec. Kalideres, Kota Jakarta Barat, Daerah Khusus Ibukota Jakarta 11840',106.714150,-6.151317,4),(9,'iBox - Plaza Indonesia','https://lh5.googleusercontent.com/p/AF1QipMhxJWuZsUbWKwb_EQhtjwUu-ME498Ry8sphZ1n=s0?imgmax=0','Jl. M.H. Thamrin No.28-30, RT.9/RW.5, Gondangdia, Kec. Menteng, Kota Jakarta Pusat, Daerah Khusus Ibukota Jakarta 10350',106.820661,-6.187881,5),(10,'iBox Store - Senayan City','https://lh5.googleusercontent.com/p/AF1QipPeVTC50FOvXLwcMw98cuLUOtQ54IZGcNOfmfki=s0?imgmax=0','Senayan City Lt. 4 No. 29, Jalan Asia Afrika, RT.1/RW.3, Gelora, Kecamatan Tanah Abang, Kota Jakarta Pusat, Daerah Khusus Ibukota Jakarta 10270',106.797457,-6.226579,5);
/*!40000 ALTER TABLE `outlet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `imagePath` varchar(400) NOT NULL,
  `price` int NOT NULL,
  `brand_id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'Samsung Galaxy Z Fold3 5G','https://images.samsung.com/id/smartphones/galaxy-z-fold3-5g/buy/zfold3_carousel_mainsinglekv_pc.jpg?imwidth=2560',24999000,1),(2,'Samsung Galaxy Z Flip 3 5G','https://images.samsung.com/id/smartphones/galaxy-z-flip3-5g/buy/zflip3_carousel_marketingsinglekv_pc.jpg?imwidth=2560',14999000,1),(3,'Xiaomi Mi Mix FOLD RAM 12/256','https://images.tokopedia.net/img/cache/900/VqbcmM/2021/4/28/6b76c94f-692c-4880-9dde-854712c479d4.png',29900000,2),(4,'Xiaomi Mi 10 Ultra 8GB/256GB','https://images.tokopedia.net/img/cache/900/VqbcmM/2021/3/6/45c6133a-dfdb-45aa-abae-23c4282aefaf.jpg',19499000,2),(5,'Vivo X70 Pro [12/256] RAM 12GB ROM 256GB','https://images.tokopedia.net/img/VqbcmM/2021/10/21/f6f06d58-e80f-4857-9f09-1cf6524e2177.jpg',10999000,3),(6,'Oppo Find X3 Pro 5G RAM 12GB/ROM 256GB','https://images.tokopedia.net/img/cache/900/VqbcmM/2021/7/5/bef2cd13-8aaa-4072-82d3-8dd8700598ab.jpg',13699000,4),(7,'iPhone 13 Mini 5G','https://images.tokopedia.net/img/VqbcmM/2021/11/1/3c3e9638-b88b-4587-b195-f1c166f6f7d4.jpg',13999000,5),(8,'iPhone 13 Pro Max 5G 1TB DUAL SIM','https://images.tokopedia.net/img/VqbcmM/2021/10/28/d3b83784-8a3a-415d-99c1-2292443cd28c.jpg',29600000,5);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-09 11:36:51
