/*
SQLyog Enterprise - MySQL GUI v7.02 
MySQL - 5.5.48-cll : Database - root
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

USE `root`;

/*Table structure for table `authentication` */

DROP TABLE IF EXISTS `authentication`;

CREATE TABLE `authentication` (
  `id_auth` int(11) NOT NULL AUTO_INCREMENT,
  `nama_user` text NOT NULL,
  `email_user` text NOT NULL,
  `nomor_telepon_user` text,
  `auth` text,
  `password_user` text,
  `tanggal_aktif` date DEFAULT NULL,
  PRIMARY KEY (`id_auth`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `authentication` */

/*Table structure for table `cabang` */

DROP TABLE IF EXISTS `cabang`;

CREATE TABLE `cabang` (
  `id_cabang` int(11) NOT NULL AUTO_INCREMENT,
  `cabang` int(11) DEFAULT NULL,
  `email` text,
  `password` text,
  `nama_penanggung_jawab` text,
  `nomor_telepon_penanggung_jawab` text,
  `nomor_telepon_cabang` text,
  `alamat_cabang` text,
  `nomor_rekening_cabang` text,
  `bank` text,
  `kota` text,
  `kode_pos` text,
  `id_kota` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_cabang`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

/*Data for the table `cabang` */

insert  into `cabang`(`id_cabang`,`cabang`,`email`,`password`,`nama_penanggung_jawab`,`nomor_telepon_penanggung_jawab`,`nomor_telepon_cabang`,`alamat_cabang`,`nomor_rekening_cabang`,`bank`,`kota`,`kode_pos`,`id_kota`) values ('22','27','thelibertee@yahoo.com','081230301945','rendy soegianto','081230301945','081230301945','royal residence b10/130','7920474122','bca','Surabaya','60227','0'),('12','23','warlockcreativestudio@yahoo.co.id','MANIFESTOFREBELISM2011','TISES DAVID ABRAHAM S.','081217175452','081217175452','JL. KLAMPIS JAYA A 19, SURABAYA','6140350808','BCA',NULL,NULL,NULL),('3','8','kwu.hmtc@gmail.com','5juni2015','yahya','023381203128','031323141241','jalan teknik kimia no 14 sukolilo',NULL,NULL,NULL,NULL,NULL),('7','21','AAAA@gmail.com','momomomomomo','momomomo','90909090909090','1928302910901','momomomomomomo',NULL,NULL,NULL,NULL,NULL),('8','21','jJla@gmail.com','seveindonesia','aaa','9999999999999999','88888888888888','aa','9999999999999','0',NULL,NULL,NULL),('9','21','aaaaaaa@gmail.com','seveindonesia','aaa','9999999999999999','99999999999999999','dada','81818111111','0',NULL,NULL,NULL),('10','21','aaaaaaaaaaaaaa@ga.com','seveindonesia','adajwi','99999999999999999','9999999999999999999','ajjdsaj','82873739938891','0',NULL,NULL,NULL),('11','21','jA@d.com','seveindonesia','dasdasda','2222222222222222222','33333333333333333','Kkaks','312348934898','KM',NULL,NULL,NULL),('14','22','fikry@gmail.com','fkfkfk','fikry','31201983','318920312793','jalan jalan','23183231231','mandiri',NULL,NULL,NULL),('15','13','brilianwm@gmail.com','saycool2012','Brilian Widya M','082141791313','082141791313','Keputih Perintis VI/28','1250630928','BCA',NULL,NULL,NULL),('16','15','zilch.streetwear@yahoo.com','Eastcoast123','Yusman Adi Pradana','085655222568','085655222568','Rungkut Asri RL II D /18','512-033-1673','2',NULL,NULL,NULL),('17','18','diana@gmail.com','shanana','Ipul','08563007581','000000','jalan airlangga nomor 35','3880369511','BCA',NULL,NULL,NULL),('21','35','khatami_jambi@yahoo.com','tahunbaru','kh','08997878844','98989567890','jl jbajj','123456789876543','central asia','jambi','21322','0'),('20','1','trapwindows@gmail.com','alfalink','Didit Sepiyanto','085746692273','085746692273','Jl Bhaskara 1','085746692273','BNI','Kulon Progo','532432','210');

/*Table structure for table `jml_produk` */

DROP TABLE IF EXISTS `jml_produk`;

CREATE TABLE `jml_produk` (
  `id_produk` int(11) DEFAULT NULL,
  `id_cabang` int(11) DEFAULT NULL,
  `u1` int(11) DEFAULT '0',
  `u2` int(11) DEFAULT '0',
  `u3` int(11) DEFAULT '0',
  `u4` int(11) DEFAULT '0',
  `u5` int(11) DEFAULT '0',
  `u6` int(11) DEFAULT '0',
  `u7` int(11) DEFAULT '0',
  `u8` int(11) DEFAULT '0',
  `u9` int(11) DEFAULT '0',
  `u10` int(11) DEFAULT '0',
  `u11` int(11) DEFAULT '0',
  `u12` int(11) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `jml_produk` */

insert  into `jml_produk`(`id_produk`,`id_cabang`,`u1`,`u2`,`u3`,`u4`,`u5`,`u6`,`u7`,`u8`,`u9`,`u10`,`u11`,`u12`) values ('93','0','1','1','1','1','1','1','0','0','0','0','0','0'),('102','0','1','1','1','1','1','1','1','1','1','1','1','1'),('105','0','12','0','0','0','0','0','0','0','0','0','0','0'),('104','0','0','1','1','1','1','1','1','1','1','1','1','1'),('101','14','12','100','30','20','10','2','0','0','0','0','0','0'),('106','4','0','0','0','0','2','2','0','0','0','0','0','0'),('108','21','1','0','0','0','0','0','0','0','0','0','0','0'),('131','20','12','12','12','12','12','12','0','0','0','0','0','0');

/*Table structure for table `kategori` */

DROP TABLE IF EXISTS `kategori`;

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL AUTO_INCREMENT,
  `kategori` int(11) DEFAULT NULL,
  `nama_kategori` text,
  PRIMARY KEY (`id_kategori`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `kategori` */

insert  into `kategori`(`id_kategori`,`kategori`,`nama_kategori`) values ('1','1','Accessories'),('2','1','Outwears'),('3','1','Tops'),('4','1','Bottoms'),('5','1','Footwears');

/*Table structure for table `memberauthentication` */

DROP TABLE IF EXISTS `memberauthentication`;

CREATE TABLE `memberauthentication` (
  `id_memberauth` int(11) NOT NULL AUTO_INCREMENT,
  `nama_member` text NOT NULL,
  `email_member` text NOT NULL,
  `nohp_member` text,
  `alamat_member` text,
  `memberauth` text,
  `password_member` text,
  `tanggalaktif_memberauth` date DEFAULT NULL,
  `kode_pos` text,
  `kota` text,
  `id_kota` text,
  PRIMARY KEY (`id_memberauth`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;

/*Data for the table `memberauthentication` */

insert  into `memberauthentication`(`id_memberauth`,`nama_member`,`email_member`,`nohp_member`,`alamat_member`,`memberauth`,`password_member`,`tanggalaktif_memberauth`,`kode_pos`,`kota`,`id_kota`) values ('1','Fikry Khariytamim','fikry.labsky08@gmail.com','Jalan TB Simatupang No 64 60111','+6281703434379','c4ca4238a0b923820dcc509a6f75849b','fk7322810','2016-04-09',NULL,NULL,NULL),('2','Fikry Khariytamim','fikry.labsky08@gmail.com','Jalan TB Simatupang No 64 60111','+6281703434379','c81e728d9d4c2f636f067f89cc14862c','fk7322810','2016-04-09',NULL,NULL,NULL),('3','Fikry Khariytamim','fikry.labsky08@gmail.com','Jalan TB Simatupang No 64 60111','+6281703434379','eccbc87e4b5ce2fe28308fd9f2a7baf3','fk7322810','2016-04-09',NULL,NULL,NULL),('4','Fikry Khariytamim','fikry.labsky08@gmail.com','Jalan TB Simatupang No 64 60111','+6281703434379','a87ff679a2f3e71d9181a67b7542122c','fk7322810','2016-04-09',NULL,NULL,NULL),('5','Fikry Khariytamim','fikry.labsky08@gmail.com','Jalan TB Simatupang No 64 60111','+6281703434379','e4da3b7fbbce2345d7772b0674a318d5','fk7322810','2016-04-09',NULL,NULL,NULL),('6','Fikry Khariytamim','fikry.labsky08@gmail.com','Jalan TB Simatupang No 64 60111','+6281703434379','1679091c5a880faf6fb5e6087eb1b2dc','fk7322810','2016-04-09',NULL,NULL,NULL),('7','khatami','khatami_jambi@yahoo.com','jl. sm malik ibrahim no 03, surabaya','082175790553','8f14e45fceea167a5a36dedd4bea2543','tahunbaru','2016-04-08',NULL,NULL,NULL),('8','Kurniawan','Kurniawandwiarianto@gmail.com','Jl. Masjid darul fallah rt.05/03 no.40 petukangan utara pesangrahan jakarta selatan kode pos 12260','082123107332','c9f0f895fb98ab9159f51fd0297e236d','iwan100196','2016-04-08',NULL,NULL,NULL),('9','Kurniawan','Kurniawandwiarianto@gmail.com','Jl. Masjid darul fallah rt.05/03 no.40 petukangan utara pesangrahan jakarta selatan kode pos 12260','082123107332','45c48cce2e2d7fbdea1afc51c7c6ad26','iwan100196','2016-04-08',NULL,NULL,NULL),('10','Kurniawan','Kurniawandwiarianto@gmail.com','Jl. Masjid darul fallah rt.05/03 no.40 petukangan utara pesangrahan jakarta selatan kode pos 12260','082123107332','d3d9446802a44259755d38e6d163e820','iwan100196','2016-04-08',NULL,NULL,NULL),('11','Kurniawan','Kurniawandwiarianto@gmail.com','Jl. Masjid darul fallah rt.05/03 no.40 petukangan utara pesangrahan jakarta selatan kode pos 12260','082123107332','6512bd43d9caa6e02c990b0a82652dca','iwan100196','2016-04-08',NULL,NULL,NULL),('12','Kurniawan','Kurniawandwiarianto@gmail.com','Jl. Masjid darul fallah rt.05/03 no.40 petukangan utara pesangrahan jakarta selatan kode pos 12260','082123107332','c20ad4d76fe97759aa27a0c99bff6710','100196','2016-04-08',NULL,NULL,NULL),('13','Pandji Bagaskara','pandjie.bagaskara@yahoo.com','Duren Sawit','085781733327','c51ce410c124a10e0db5e4b97fc2af39','123456','2016-04-02',NULL,NULL,NULL),('14','Khatami','khatami_jambi@yahoo.com','Jalan tengah no 52, banjar antar kelod, bali','082175790553','aab3238922bcc25a6f606eb525ffdc56','tahunvaru','2016-04-08',NULL,NULL,NULL),('15','Faiq Purnomo','atmosumarto@gmail.com','Jalan Batu Kramat 2 No.27 Rt.17/05 Condet Jaktim','082114009415','9bf31c7ff062936a96d3c8bd1f8f2ff3','mottymotty49','2016-04-08',NULL,NULL,NULL),('16','Faiq Purnomo','atmosumarto@gmail.com','Jalan Batu Kramat 2 No.27 Rt.17/05 Condet Jaktim','082114009415','c74d97b01eae257e44aa9d5bade97baf','mottymotty49','2016-04-08',NULL,NULL,NULL),('17','Pandji Bagaskara','pandjie.bagaskara@yahoo.com','Duren Sawit','085781733327','70efdf2ec9b086079795c442636b55fb','123456','2016-04-02',NULL,NULL,NULL),('18','valdy','pvaldy@yahoo.com','RPL','08123456789','6f4922f45568161a8cdf4ad2299f6d23','beneran','2016-04-06',NULL,NULL,NULL),('19','valdy','pvaldy@yahoo.com','RPL','08123456789','1f0e3dad99908345f7439f8ffabdffc4','gilalundro','2016-04-06',NULL,NULL,NULL),('20','valdy','pvaldy@yahoo.com','RPL','08123456789','98f13708210194c475687be6106a3b84','bijipeler','2016-04-06',NULL,NULL,NULL),('21','valdy','pvaldy@yahoo.com','RPL','08123456789','3c59dc048e8850243be8079a5c74d079','bijipeler','2016-04-06',NULL,NULL,NULL),('22','Fikry Khariytamim','fikry.labsky08@gmail.com','Komplek Hankam Joglo, jalan bazoka raya no.24 Blok i, Jakarta Barat','+6281703434379','b6d767d2f8ed5d21a44b0e5886680cb9','afrizalakmal','2016-04-09',NULL,NULL,NULL),('23','Faiq','atmosumarto@gmail.com','Condet','082114009415','37693cfc748049e45d87b8c7d8b9aacd','mottymotty49','2016-04-08',NULL,NULL,NULL),('24','kurniawan dwi arianto','kurniawandwiarianto@gmail.com','jl.masjid darul fallah rt05/03 no 40 petukangan utara pesangrahan jaksel 12260','082123107332','1ff1de774005f8da13f42943881c655f','082123','2016-04-08',NULL,NULL,NULL),('25','Khatami','Khatami_jambi@yahoo.com','Jl. Sm malik ibrahim no 03','082175790553','8e296a067a37563370ded05f5a3bf3ec','tahunbaru','2016-04-08',NULL,NULL,NULL),('26','Fikry Khariytamim','fikry.labsky08@gmail.com','Jalan Surabaya Jakarta timur','14044','4e732ced3463d06de0ca9a15b6153677','afrizalakmal','2016-04-09','Jakarta Barat','+6281703434332',NULL),('27','Fikry Khairytamim','fikry.labsky08@gmail.com','+6281703434332','Komplek Hankam Joglo, jalan bazoka raya no.24 Blok i, Jakarta Barat','02e74f10e0327ad868d138f2b4fdd6f0','afrizalakmal','2016-04-09','14044','Jakarta Barat','151'),('28','Fikry Khairytamim','fikry.labsky08@gmail.com','+6281703434379','Komplek Hankam Joglo, jalan bazoka raya no.24 Blok i, Jakarta Barat','33e75ff09dd601bbe69f351039152189','afrizalakmal','2016-04-09','14002','Jakarta Barat','151'),('29','Dea Ayu Oktaviani','ochadea12@gmail.com','085649194112','Jalan Pangeran Diponegoro 130 Templek Gadungan Puncu','6ea9ab1baa0efb9e19094440c317e21b','dea12101997','2016-04-09','64292','Kediri','178');

/*Table structure for table `pesan_distro` */

DROP TABLE IF EXISTS `pesan_distro`;

CREATE TABLE `pesan_distro` (
  `id_pesan` int(11) NOT NULL AUTO_INCREMENT,
  `id_distro` int(11) DEFAULT NULL,
  `id_produk` int(11) DEFAULT NULL,
  `pesan` text,
  `tanggal` date DEFAULT NULL,
  PRIMARY KEY (`id_pesan`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `pesan_distro` */

insert  into `pesan_distro`(`id_pesan`,`id_distro`,`id_produk`,`pesan`,`tanggal`) values ('1','222',NULL,'fdsfdsfdsf','2016-03-25'),('2','1',NULL,'cxzcxzcxzc','2016-03-25'),('3','18',NULL,'Produk sudah ditambahkan ke distro Anda, harap menambah keterangan pada daftar produk','2016-03-25'),('4','1',NULL,'Produk sudah ditambahkan ke distro Anda, harap menambah keterangan pada daftar produk','2016-03-27'),('5','39',NULL,'Produk sudah ditambahkan ke distro Anda, harap menambah keterangan pada daftar produk','2016-04-06');

/*Table structure for table `produk` */

DROP TABLE IF EXISTS `produk`;

CREATE TABLE `produk` (
  `id_produk` int(11) NOT NULL AUTO_INCREMENT,
  `id_toko` int(11) DEFAULT NULL,
  `nama_produk` text,
  `brand` text,
  `id_brand` text,
  `deskripsi_produk` text,
  `produk_kategori` int(11) DEFAULT NULL,
  `harga` float DEFAULT NULL,
  `diskon` float DEFAULT NULL,
  `penyimpanan` int(11) DEFAULT NULL,
  `berat` float DEFAULT NULL,
  `status_tampil` int(11) DEFAULT NULL,
  `gender` text,
  `tipe` int(11) DEFAULT NULL,
  `link_payment` text,
  PRIMARY KEY (`id_produk`),
  KEY `produk_kategori` (`produk_kategori`)
) ENGINE=MyISAM AUTO_INCREMENT=136 DEFAULT CHARSET=latin1;

/*Data for the table `produk` */

insert  into `produk`(`id_produk`,`id_toko`,`nama_produk`,`brand`,`id_brand`,`deskripsi_produk`,`produk_kategori`,`harga`,`diskon`,`penyimpanan`,`berat`,`status_tampil`,`gender`,`tipe`,`link_payment`) values ('77','13','Classic Logo-Black','cool like',NULL,'100% Cotton Combed 30s\r\nWhite Discharge Ink.\r\nWoven and Satin Label.','16','105000',NULL,'0','1','1','3','1',NULL),('80','13','Classic Logo-White','cool like',NULL,'100% Cotton combed 30s\r\nBlack SW ink.\r\nWoven and satin label','16','105000',NULL,'0','1','1','3','1',NULL),('134','1','','','','','10','0','0','0','0','0','1','1',NULL),('135','39','ba','nn','nn','aaaaa','2','120000','0','0','1000','0','1','0',NULL),('111','15','Plain Beanie TT','Zilch','zilch01','Beaniehat','1','120000','30','0','1000','0','3','0',NULL),('112','15','Plain Beanie RB','Zilch','zilch 2','beaniehat','1','120000','30','0','1000','1','3','0',NULL),('113','15','Dayton Flannel','Zilch','zilch 3','?','14','235000','0','0','1000','1','1','1',NULL),('114','15','League Slingbag','Zilch','zlch 4','Daily slingbag with D300 Cordura material','2','145000','30','0','1000','1','3','0',NULL),('115','15','Slice Snapback','Zilch','zilch 5','?','1','150000','30','0','1000','1','1','0',NULL),('116','15','Regular Tanktop Grey','Zilch','zlch 6','32s Combed Cotton','15','135000','0','0','1000','1','1','1',NULL),('117','15','Corps Jacket','Zilch','zilch 7','Half zipped parka styling jacket with Milky Taslon construction (waterproof).\r\n2 secure pocket, 2 zipped pocket, hood/hem/cuff adjustment, & cotton net lining.','10','325000','30','0','1000','1','1','1',NULL),('118','23','hoodie','warlock','warlock 1','?','9','0','0','0','1000','0','3','1',NULL),('120','23','baju','warlock','warlock 2','?','16','0','0','0','1000','0','1','1',NULL),('121','23','gelang 1','warlock','warlock 3','?','3','0','0','0','1000','0','1','0',NULL),('122','23','gelang 2','warlock','warlock 4','?','3','0','0','0','1000','0','1','0',NULL),('123','23','gelang 3','warlock','warlock 5','?','3','0','0','0','1000','0','1','0',NULL),('124','23','cap','warlock','warlock 6','?','3','0','0','0','1000','0','1','0',NULL),('125','23','kaos 2','warlock','warlock 7','?','3','0','0','0','1000','0','1','0',NULL),('133','18','','','','','14','0','0','0','0','0','1','1',NULL),('127','18','2','lollypop','lollypop 2','?','14','0','0','0','1000','0','2','1',NULL),('128','18','3','lollypop','lollypop 3','?','17','0','0','0','1000','0','2','1',NULL),('129','18','4','lollypop','lollypop 4','?','14','0','0','0','1000','0','1','1',NULL),('130','18','5','lollypop','lollypop 5','?','14','0','0','0','1000','0','1','1',NULL),('131','1','sepeda','','','','8','500000','0','0','0','0','1','1',NULL),('132','1','','','','','4','0','0','0','0','0','2','0',NULL),('110','1','trellp','blabla','123','dqwewqewq','1','12000','12','0','123','0','1','0',NULL);

/*Table structure for table `subcategory` */

DROP TABLE IF EXISTS `subcategory`;

CREATE TABLE `subcategory` (
  `pk_subcategory` int(11) NOT NULL AUTO_INCREMENT,
  `id_subcategory` int(11) DEFAULT NULL,
  `subcategory` text,
  `tipe` int(11) DEFAULT NULL,
  PRIMARY KEY (`pk_subcategory`)
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;

/*Data for the table `subcategory` */

insert  into `subcategory`(`pk_subcategory`,`id_subcategory`,`subcategory`,`tipe`) values ('1','1','Caps','0'),('2','1','Bags','0'),('3','1','Watches','0'),('4','1','Wallets','0'),('5','1','Eyewear','0'),('6','1','Cases','0'),('7','1','Electronics','0'),('23','5','Boots','2'),('24','5','Casual Shoes','2'),('25','5','Sneakers','2'),('8','2','Blazers','1'),('9','2','Hoodies','1'),('10','2','Jackets','1'),('11','2','Knitwear','1'),('14','3','Shirts','1'),('16','3','T-Shirts','1'),('15','3','Tank Tops','1'),('12','2','Vest','1'),('13','2','Sweaters','1'),('17','3','Polo','1'),('19','4','Pants','3'),('20','4','Shorts','3'),('21','4','Jeans','3'),('22','4','Skirts','3'),('18','3','Dresses','1');

/*Table structure for table `toko` */

DROP TABLE IF EXISTS `toko`;

CREATE TABLE `toko` (
  `id_toko` int(11) NOT NULL AUTO_INCREMENT,
  `nama_toko` text,
  `email_toko` text,
  `nama_owner` text,
  `website` text,
  `nohp_toko` text,
  `alamat_toko` text,
  `password_toko` text,
  `nomor_teleponowner` text,
  `nomor_rekening_toko` text,
  `option_keuntungan` int(11) DEFAULT NULL,
  `bank` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_toko`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=latin1;

/*Data for the table `toko` */

insert  into `toko`(`id_toko`,`nama_toko`,`email_toko`,`nama_owner`,`website`,`nohp_toko`,`alamat_toko`,`password_toko`,`nomor_teleponowner`,`nomor_rekening_toko`,`option_keuntungan`,`bank`) values ('1','Owline','sepiyantodidit@gmail.com','Didit Sepiyanto','seve.id','085746692273','Jl. Mawar no 36','alfalink','085746692273','1000000','1','2'),('7','Flodistro','acuy@flodistro.com','Fauzi Rizkiansyah','www.flodistro.com','0224220376','Jl.Trunojoyo No.06','Flostore2008','081210019567',NULL,NULL,NULL),('10','Relic Syndct','relicsyndct@gmail.com','Erick Muhamad Nandar','www.relicindonesia.com','081224456998','Jl. Sultan Agung No. 5 Bandung 40115','Cibolerang#1980','081224456998','0160165740','0','2'),('13','Cool Like Clothing co.','coollikeclothing@yahoo.com','Brilian Widya Mustofa','coollikecloth.blogspot.com','082141791313','Jl. Delima no. 30 Kutorenon Sukodono Lumajang / Jl. Keputih Perintis VI / 28 Sukolilo Surabaya','staycool2012','082141791313','1250630928','0','2'),('14','Zallatra','azmi4081@gmail.com','Bahrul Ulum Azmi','www.zallatra.com','081366654020','JL.jurang no 493 , Bandung','zallatra123','081366654020','7771290314','1','2'),('15','Zilch Streetwear','zilchstreetwear@gmail.com','Evan','https://www.instagram.com/zilchstreetwear','085655222568','Jln. Rungkut Asri RL II D - 18','usmyass','082141520750','5120331673','0','2'),('18','Lollypop shop','lollypop_echo1@yahoo.com','Diana / ipul','https://www.instagram.com/lollypopsby/','08563007581','Jl. Airlangga 35, Surabaya','ramons','08563007581','3880369511','0','2'),('23','WARLOCK LTD','warlockcloth@yahoo.com','TISES DAVID ABRAHAM S.','https://www.instagram.com/warlocklimited/','081217175452','JL. KLAMPIS JAYA A 19, SURABAYA','MANIFESTOFREBELISM2011','081217175452','6140350808','1','2'),('24','Faith Hardwear Store','faithhardwearofficial@gmail.com','Yudha Heri Wibowo','https://www.instagram.com/faithhardwearstore/','08813131220','Raya Manyar 50, Surabaya','rahasia11','085730006468','1520285063','1','2'),('25','Cocaine Crimes','kingcffs@gmail.com','Ardiansyah','Cocainecrimes','081515117799','Jl wadung asri 8/5','kpnbs123','081515117799',NULL,NULL,NULL),('26','Selv','selvbyselvy@gmail.com','Selvy','Www.selvbyselvy.com','081249093999','Jalan tengah no 52, banjar antar kelod, bali','261891','081249093999',NULL,NULL,NULL),('27','The libertee','rendysugianto26@yahoo.com','Rendy Soegianto','Www.liberteeid.com','081230301945','Waiting, royal residence, surabaya','837837','0812430301945','7920474122','0','2'),('28','Forte','benitadea@yahoo.com','Benita','@forteofficial','082288122011','East emerald mansion tp1/29 citraland surabaya','panca5perkasa','082288122011',NULL,NULL,NULL),('29','Double You','alexa_wawolangi@yahoo.co.id','Alexandra','@doubleyou.id','089677666320','Jl sambiarum 12 blok 54A no.20 Surabaya','alexa30','089677666320',NULL,NULL,NULL),('30','Suavebatik','gabrielmarco@suavebatik.com','Gabriel marco','@suavebatik','082213897070','Apl tower west jakarta','suave1811','082213897070',NULL,NULL,NULL),('34','HOOLIGANS','sales@hooligans12th.com','Yudha asmara','www.hooligans12th.co.id','087722623515','jl.setra dago timur no 5 Antapani Bandung','hooligansseve','0818119832',NULL,NULL,NULL),('35','Nk','khatami@seveid.com','Khatami','Hh.hh','7883992','Surabaya','tahunbaru','082919373728','616162728281','0','1'),('36','Hardware legal','hatedeeplegal@gmail.com','David','Www.heteroseksual.com','08885115348','Menur 5 no.26 surabaya','hatedeeplegal','08885115348',NULL,NULL,NULL),('37','Scarpa & Co.','cleineapparel@gmail.com','Hara yuda','@cleineapparel','0315680689','Sini gunung 1/30','est2012','081232661111',NULL,NULL,NULL),('38','Boontie','akusukaboontie@yahoo.com','Hanna Mandiraatmadja','Boontie.com','0215842068','Komplek Taman Aries Blok D 10/12, ,Meruya Utara, Kembangan, Jakarta Barat 11620','030201abc','085718881870',NULL,NULL,NULL),('39','FaiqStore','atmosumarto@gmail.com','Faiq Purnomo','seveid.com','0218096407','Condet','mottymotty49','082114009415',NULL,NULL,NULL),('40','TOOTEE','sweetpoisonus@gmail.com','rega','tootee.com','0887654321','menteng','5029402qwe','0812345678',NULL,NULL,NULL);

/*Table structure for table `tokoauthentication` */

DROP TABLE IF EXISTS `tokoauthentication`;

CREATE TABLE `tokoauthentication` (
  `id_tokoauth` int(11) NOT NULL AUTO_INCREMENT,
  `nama_toko` text NOT NULL,
  `email_toko` text NOT NULL,
  `nohp_toko` text,
  `alamat_toko` text,
  `tokoauth` text,
  `password_toko` text,
  `tanggalaktif_tokoauth` date DEFAULT NULL,
  `nama_owner` text,
  `nomor_teleponowner` text,
  `website` text,
  `alamat` text,
  PRIMARY KEY (`id_tokoauth`)
) ENGINE=MyISAM AUTO_INCREMENT=104 DEFAULT CHARSET=latin1;

/*Data for the table `tokoauthentication` */

insert  into `tokoauthentication`(`id_tokoauth`,`nama_toko`,`email_toko`,`nohp_toko`,`alamat_toko`,`tokoauth`,`password_toko`,`tanggalaktif_tokoauth`,`nama_owner`,`nomor_teleponowner`,`website`,`alamat`) values ('1','Seve','sepiyantodidit@gmail.com','085746692273','Jl. mawar no 36','c4ca4238a0b923820dcc509a6f75849b','alfalink','2016-01-28','Didit Sepiyanto','085746692273','seve.id',NULL),('2','Seve','sepiyantodidit@gmail.com','085746692273','Jl. mawar no 36','c81e728d9d4c2f636f067f89cc14862c','alfalink','2016-01-28','Didit Sepiyanto','085746692273','seve.id',NULL),('3','Seve','sepiyantodidit@gmail.com','085746692273','Jl. mawar no 36','eccbc87e4b5ce2fe28308fd9f2a7baf3','alfalink','2016-01-28','Didit Sepiyanto','085746692273','seve.id',NULL),('4','Seve','sepiyantodidit@gmail.com','085746692273','Jl. mawar no 36','a87ff679a2f3e71d9181a67b7542122cn','alfalink','2016-01-28','Didit Sepiyanto','085746692273','seve.id',NULL),('5','Seve','sepiyantodidit@gmail.com','085746692273','Jl. mawar no 36','e4da3b7fbbce2345d7772b0674a318d5','alfalink','2016-01-28','Didit Sepiyanto','085746692273','seve.id',NULL),('6','Seve','sepiyantodidit@gmail.com','085746692273','Jl. mawar no 36','1679091c5a880faf6fb5e6087eb1b2dc','alfalink','2016-01-28','Didit Sepiyanto','085746692273','seve.id',NULL),('7','Seve','sepiyantodidit@gmail.com','085746692273','Jl. mawar no 36','8f14e45fceea167a5a36dedd4bea2543','alfalink','2016-01-28','Didit Sepiyanto','085746692273','seve.id',NULL),('8','Seve','sepiyantodidit@gmail.com','085746692273','Jl. mawar no 36','c9f0f895fb98ab9159f51fd0297e236d','alfalink','2016-01-28','Didit Sepiyanto','085746692273','seve.id',NULL),('9','Seve','sepiyantodidit@gmail.com','085746692273','Jl. mawar no 36','45c48cce2e2d7fbdea1afc51c7c6ad26','alfalink','2016-01-28','Didit Sepiyanto','085746692273','seve.id',NULL),('10','Seve','sepiyantodidit@gmail.com','085746692273','Jl. mawar no 36','d3d9446802a44259755d38e6d163e820','alfalink','2016-01-28','Didit Sepiyanto','085746692273','seve.id',NULL),('11','Swarna Nusantara','fikry.labsky08@gmail.com','0217322810','Komplek Hankam Joglo, jalan bazoka raya no.24 Blok i, Jakarta Barat','6512bd43d9caa6e02c990b0a82652dca','swarnanusantara','2016-03-10','Fikry khairytamim','08173283101','https://swarnanusantara.wordpress.com/',NULL),('12','Ganteng','khatami_jambi@yahoo.com','082175790553','Jambi','c20ad4d76fe97759aa27a0c99bff6710','tahunbaru','2016-03-09','Khatami','082175790553','Khatami.com',NULL),('13','Seve2','trapwindows@gmail.com','085746692273','alafasdsa','c51ce410c124a10e0db5e4b97fc2af39','alfalink','2016-03-19','Didit Sepiyanto','085746692273','seve.id',NULL),('14','Apa','khatami.tt@gmail.com','082175790553','Hshsh','aab3238922bcc25a6f606eb525ffdc56','apasaja','2016-03-19','Nk','082175790553','Tugas.com',NULL),('15','Seve2','sepiyantodidit@gmail.com','085746692273','sdas dsad as das das','9bf31c7ff062936a96d3c8bd1f8f2ff3','alfalink','2016-01-28','Didit Sepiyanto','085746692273','seveid',NULL),('16','Seve2','sepiyantodidit@gmail.com','090909',NULL,'c74d97b01eae257e44aa9d5bade97baf','alfalink','2016-01-28','dsad sad a','090898989','dsadas das','asdsad asd asd sa'),('17','Flodistro','acuy@flodistro.com','0224220376',NULL,'70efdf2ec9b086079795c442636b55fb','Flostore2008','2016-01-31','Fauzi Rizkiansyah','081210019567','www.flodistro.com','Jl.Trunojoyo No.06'),('18','Informatika ITS','fikry.labsky08@gmail.com','0217322810',NULL,'6f4922f45568161a8cdf4ad2299f6d23','hellyeah','2016-03-10','Fikry Khairytamim','081703434379','facebook.com','jalan bzaoka raya no 24 blok i joglo jakarta barat'),('19','Khairytamim','fikry.labsky08@gmail.com','08132130131',NULL,'1f0e3dad99908345f7439f8ffabdffc4','hellyeah','2016-03-10','Fikry Khairytamim','0817023234323','facebook.com','jlaan bazkora raya  no 24 blok i joglo jkarata barat'),('20','Khairytamim','fikry.labsky08@gmail.com','08132130131',NULL,'98f13708210194c475687be6106a3b84','hellyeah','2016-03-10','Fikry Khairytamim','0817023234323','facebook.com','jlaan bazkora raya  no 24 blok i joglo jkarata barat'),('21','Khairytamim','fikry.labsky08@gmail.com','08132130131',NULL,'3c59dc048e8850243be8079a5c74d079','hellyeah','2016-03-10','Fikry Khairytamim','0817023234323','facebook.com','jlaan bazkora raya  no 24 blok i joglo jkarata barat'),('22','Khairytamim','fikry.labsky08@gmail.com','08132130131',NULL,'b6d767d2f8ed5d21a44b0e5886680cb9','hellyeah','2016-03-10','Fikry Khairytamim','0817023234323','facebook.com','jlaan bazkora raya  no 24 blok i joglo jkarata barat'),('23','Khairytamim','fikry.labsky08@gmail.com','08132130131',NULL,'37693cfc748049e45d87b8c7d8b9aacd','hellyeah','2016-03-10','Fikry Khairytamim','0817023234323','facebook.com','jlaan bazkora raya  no 24 blok i joglo jkarata barat'),('24','Khairytamim','fikry.labsky08@gmail.com','08132130131',NULL,'1ff1de774005f8da13f42943881c655f','hellyeah','2016-03-10','Fikry Khairytamim','0817023234323','facebook.com','jlaan bazkora raya  no 24 blok i joglo jkarata barat'),('25','Khairytamim','fikry.labsky08@gmail.com','08132130131',NULL,'8e296a067a37563370ded05f5a3bf3ec','hellyeah','2016-03-10','Fikry Khairytamim','0817023234323','facebook.com','jlaan bazkora raya  no 24 blok i joglo jkarata barat'),('26','Khairytamim','fikry.labsky08@gmail.com','08132130131',NULL,'4e732ced3463d06de0ca9a15b6153677','hellyeah','2016-03-10','Fikry Khairytamim','0817023234323','facebook.com','jlaan bazkora raya  no 24 blok i joglo jkarata barat'),('27','dhhdy','khatami@seveid.com','77777',NULL,'02e74f10e0327ad868d138f2b4fdd6f0','tahunbaru','2016-03-20','hshs','777788','husush.cj','jambi'),('28','biji','andi.ersaldy@gmail.com','546789',NULL,'33e75ff09dd601bbe69f351039152189','bijibijiah','2016-02-03','Andi','3456789','biji.com','bijikusakit'),('29','Relic Syndct','relicsyndct@gmail.com','081224456998',NULL,'6ea9ab1baa0efb9e19094440c317e21b','Cibolerang#1980','2016-02-06','Erick Muhamad Nandar','081224456998','www.relicindonesia.com','Jl. Sultan Agung No. 5 Bandung 40115'),('30','FQDISTRO','atmosumarto@gmail.com','082114009415',NULL,'34173cb38f07f89ddbebc2ac9128303f','seveindonesia','2016-04-06','Faiq Purnomo','082114009415','faceboook.com','Condet'),('31','ersaldy','kaskus.resha@gmail.com','087887061221',NULL,'c16a5320fa475530d9583c34fd356ef5','bojongkenyot','2016-02-09','Ersaldy Raisha','087887061221','ersaldy.com','Bojong Kenyot'),('32','kwu hmtc','kwu.hmtc@gmail.com','31730173017',NULL,'6364d3f0f495b6ab9dcf8d3b5c6e0b01','hellyou','2016-02-11','mas yahya','0823183120','facebook.com','dsebdjsbdabdisl'),('33','TAPON LALA','trapwindows@gmail.com','085746692273',NULL,'182be0c5cdcd5072bb1864cdee4d3d6e','alfalink','2016-03-19','Didit Sepiyanto','085746692273','taponkatul.com','Jl. mawar no 36'),('34','Cool Like Clothing co.','coollikeclothing@yahoo.com','082141791313',NULL,'e369853df766fa44e1ed0ff613f563bd','staycool2012','2016-02-12','Brilian Widya Mustofa','082141791313','coollikecloth.blogspot.com','-'),('35','tami','khatami_jambi@yahoo.com','05215631.3',NULL,'1c383cd30b7c298ab50293adfecb7b18','tahunbaru','2016-03-09','khatami','02541844165','csds.dcs','seberang jalan'),('36','Awfeelgood','aw.feelgood@yahoo.com','087722277280',NULL,'19ca14e7ea6328a42e0eb13d585e4c22','Fatbutterfly89','2016-03-01','Cantya Van Hopper','087722277280','@awfeelgood','Jl Bahureksa no 15 Bandung'),('37','Zallatra','azmi4081@gmail.com','081366654020',NULL,'a5bfc9e07964f8dddeb95fc584cd965d','zallatra123','2016-03-01','Bahrul Ulum Azmi','081366654020','www.zallatra.com','JL.jurang no 493 , Bandung'),('38','Zilch Streetwear','zilchstreetwear@gmail.com','085655222568',NULL,'a5771bce93e200c36f7cd9dfd0e5deaa','usmyass','2016-03-02','Evan','082141520750','https://www.instagram.com/zilchstreetwear','Jln. Rungkut Asri RL II D - 18'),('39','Faiq Store','atmosumarto@gmail.com','08091000100',NULL,'d67d8ab4f4c10bf22aa353e27879133c','seveindonesia','2016-04-06','Faiq Pur','082114009415','quon.com','Puker'),('40','uye','pandjie.bagaskara@gmail.com','02232803183',NULL,'d645920e395fedad7bbbed0eca3fe2e0','anjaybanget','2016-03-04','pandjie','08173283101','khairytamim.vs.co','jalan persimpangan dago'),('41','quon','khatami_jambi@yahoo.com','05904',NULL,'3416a75f4cea9109507cacd8e2f2aefc','tahunbaru','2016-03-09','tami','088766767','lmglkxdmgklmxd.bb','quonbanget'),('42','Lollypop shop','lollypop_echo1@yahoo.com','08563007581',NULL,'a1d0c6e83f027327d8461063f4ac58a6','ramons','2016-03-05','Diana / ipul','08563007581','https://www.instagram.com/lollypopsby/','Jl. Airlangga 35'),('43','khatami store','khatami@seveid.com','082175790553',NULL,'17e62166fc8586dfa4d1bc0e1742c08b','tahunbaru','2016-03-20','khatami','082175790553','seveid.com','wisper113'),('44','pandjibagas','pandjie.bagaskara@yahoo.com','02148701206',NULL,'f7177163c833dff4b38fc8d2872f1ec6','123456','2016-03-07','Pandji','085781733327','www.pandji.com','Bumi Marina Emas'),('45','pandjibagas','pandjie.bagaskara@yahoo.com','02148701206',NULL,'6c8349cc7260ae62e3b1396831a8398f','123456','2016-03-07','Pandji','085781733327','www.pandji.com','Bumi Marina Emas'),('46','pandjibagas','pandjie.bagaskara@yahoo.com','02148701206',NULL,'d9d4f495e875a2e075a1a4a6e1b9770f','123456','2016-03-07','Pandji','085781733327','www.pandji.com','Bumi Marina Emas'),('47','pandjibagas','pandjie.bagaskara@yahoo.com','02148701206',NULL,'67c6a1e7ce56d3d6fa748ab6d9af3fd7','123456','2016-03-07','Pandji','085781733327','www.pandji.com','Bumi Marina Emas'),('48','pandjibagas','pandjie.bagaskara@yahoo.com','02148701206',NULL,'642e92efb79421734881b53e1e1b18b6','123456','2016-03-07','Pandji','085781733327','www.pandji.com','Bumi Marina Emas'),('49','pandjibagas','pandjie.bagaskara@yahoo.com','02148701206',NULL,'f457c545a9ded88f18ecee47145a72c0','123456','2016-03-07','Pandji','085781733327','www.pandji.com','Bumi Marina Emas'),('50','pandjibagas','pandjie.bagaskara@yahoo.com','02148701206',NULL,'c0c7c76d30bd3dcaefc96f40275bdc0a','123456','2016-03-07','Pandji','085781733327','www.pandji.com','Bumi Marina Emas'),('51','QUON','atmosumarto@gmail.com','0821010111',NULL,'2838023a778dfaecdc212708f721b788','seveindonesia','2016-04-06','QUON','082114009415','quon.com','Quon'),('52','KKK','faiqpurnomo@icloud.com','082102',NULL,'9a1158154dfa42caddbd0694a4e9bdc8','seveindonesia','2016-03-09','faiq','02999999999','seveid.com','jJla'),('53','Faiq','faiqpp@gmail.com','021812082011',NULL,'d82c8d1619ad8176d665453cfb2e55f0','seveindonesia','2016-03-09','Faiq','082114009415','quon.com','Jalajacondet'),('54','TOKOBAJU','faiqpp@gmail.com','089182893981',NULL,'a684eceee76fc522773286a895bc8436','seveindonesia','2016-03-09','FAIQ','082114009415','quon.com','Jlll'),('55','Hihihi','khatami_jambi@yahoo.com','2718183',NULL,'b53b3a3d6ab90ce0268229151c9bde11','hahaha','2016-03-09','Haha','08521236548','Hahaha.com','Jl. Hahahaha'),('56','faiq','faiq@seveid.com','9999999999999',NULL,'9f61408e3afb633e50cdf1b20de6f466','mottymotty','2016-03-09','faiq','082114009415','seveid.com','jdjakajdkaj'),('57','FQ Store','atmosumarto@gmail.com','0218096407',NULL,'72b32a1f754ba1c09b3695e0cb6cde7f','mottymotty','2016-04-06','Faiq','082114009415','seveid.com','Condet'),('58','faiqpurnomo','atmosumarto@gmail.com','820839820831',NULL,'66f041e16a60928b05a7e228a89c3799','mottymotty','2016-04-06','Faiq','08120920191','seveid.com','jdaijsdiajij'),('59','Swarna Nusantara','fikry.labsky08@gmail.com','0217322810',NULL,'093f65e080a295f8076b1c5722a46aa2','hellyeah','2016-03-10','Fikry khairytamim','08173283101','https://swarnanusantara.wordpress.com/','Komplek Hankam Joglo, jalan bazoka raya no.24 Blok i, Jakarta Barat'),('60','Owline 2','trapwindows@gmail.com','085746692273',NULL,'072b030ba126b2f4b2374f342be9ed44','ALFALINK','2016-03-19','Didit Sepiyanto','085746692273','owline.org','Jl. Mawar No 36 Sukapura'),('61','Owline Shop','trapwindows@gmail.com','085746692273',NULL,'7f39f8317fbdb1988ef4c628eba02591','alfalink','2016-03-19','Didit Sepiyanto','0857466922','owline.org','Jl. Mawar No 36'),('62','Owline Shop','trapwindows@gmail.com','085746692273',NULL,'44f683a84163b3523afe57c2e008bc8c','alfalink','2016-03-19','Didit Sepiyanto','0857466922','owline.org','Jl. Mawar No 36'),('63','Owline 2','trapwindows@gmail.com','085746692273',NULL,'03afdbd66e7929b125f8597834fa83a4','alfalink','2016-03-19','Didit Sepiyanto','085746692273','owline.org','Jl. Mawar No 36 Sukapura'),('64','Owline Shop','trapwindows@gmail.com','085746692273',NULL,'ea5d2f1c4608232e07d3aa3d998e5135','alfalink','2016-03-19','Didit Sepiyanto','085746692273','owline.org','Jl. Mawar No 36 Sukapura'),('65','Owline Shop','trapwindows@gmail.com','085746692273',NULL,'fc490ca45c00b1249bbe3554a4fdf6fb','alfalink','2016-03-19','Didit Sepiyanto','085746692273','owline.org','Jl. Mawar No 36 Sukapura'),('66','Owline Shop','trapwindows@gmail.com','085746692273',NULL,'3295c76acbf4caaed33c36b1b5fc2cb1','alfalink','2016-03-19','Didit Sepiyanto','085746692273','owline.org','Jl. Mawar No 36 Sukapura'),('67','Owline Shop','trapwindows@gmail.com','085746692273',NULL,'735b90b4568125ed6c3f678819b6e058','alfalink','2016-03-19','Didit Sepiyanto','085746692273','owline.org','Jl. Mawar No 36 Sukapura'),('68','Abc','khatami.tt@gmail.com','782818',NULL,'a3f390d88e4c41f2747bfa2f1b5f87db','tahunbaru','2016-03-19','Bca','08127878320','Abg.com','Jambi asli seberang'),('69','BuzzMod','fikry.labsky08@gmail.com','0217322810',NULL,'14bfa6bb14875e45bba028a21ed38046','hellyeah','2016-03-10','Fikry khairytamim','081703434379','Brazzers.com','jalan persimpangan dago'),('70','WARLOCK LTD','warlockcloth@yahoo.com','081217175452',NULL,'7cbbc409ec990f19c78c75bd1e06f215','MANIFESTOFREBELISM2011','2016-03-10','TISES DAVID ABRAHAM S.','081217175452','https://www.instagram.com/warlocklimited/','JL. KLAMPIS JAYA A 19, SURABAYA'),('71','Faith Hardwear','faithhardwearofficial@yahoo.com','08813131220',NULL,'e2c420d928d4bf8ce0ff2ec19b371514','rahasia11','2016-03-10','Yudha Heri Wibowo','085730006468','https://www.instagram.com/faithhardwearstore/','Raya Manyar 50 Surabaya'),('72','Faith Hardwear Store','faithhardwearofficial@gmail.com','08813131220',NULL,'32bb90e8976aab5298d5da10fe66f21d','rahasia11','2016-03-10','Yudha Heri Wibowo','085730006468','https://www.instagram.com/faithhardwearstore/','Raya Manyar 50 Surabaya'),('73','Cocaine Crimes','kingcffa@gmail.com','081515117799',NULL,'d2ddea18f00665ce8623e36bd4e3c7c5','kpnbs123','2016-03-12','Ardiansyah','081515117799','Cocainecrimes','Jl warung asri 8/5'),('74','Cocaine Crimes','kingcffa@gmail.com','081515117799',NULL,'ad61ab143223efbc24c7d2583be69251','kpnbs123','2016-03-12','Ardiansyah','081515117799','Cocainecrimes','Jl warung asri 8/5'),('75','Cocaine Crimes','kingcffs@gmail.com','081515117799',NULL,'d09bf41544a3365a46c9077ebb5e35c3','kpnbs123','2016-03-12','Ardiansyah','081515117799','Cocainecrimes','Jl wadung asri 8/5'),('76','Yek!','yekindo@gmail.com','081252333544',NULL,'fbd7939d674997cdb4692d34de8633c4','321255','2016-03-13','Yudhi','081252333544','Yekindo','Puri widya kencana j3-12 citraland'),('77','Preservee','sales@preservee.com','085859188032',NULL,'28dd2c7955ce926456240b2ff0100bde','ebiebi','2016-03-13','Veronica','085852925000','Preservee','Surabaya'),('78','Analisanya batik','_bridal@yahoo.com','0315022166',NULL,'35f4a8d465e6e1edc05f3d8ab658c551','123abcd','2016-03-13','Amelia kartikasari','082232890032','Www.ananyanara.com','Jl bawaan 32-34 surabaya'),('79','Castor','castormanfashion@gmail.com','081932891989',NULL,'d1fe173d08e959397adf34b1d77e88d7','castors9b','2016-03-13','Nico Putra','087777009501','Castor_manfashion','Green lake City, cluster amerika latin blok AL 5 no 27,Kosambi'),('80','Eleventh Apparel','eleventhaoparel@gmail.com','081331477777',NULL,'f033ab37c30201f73f142449d037028d','eleventh9291','2016-03-13','Deasy Tantra','081331477777','Mengaktualisasi.com','Ruko vila bukit mas RC-16, sby'),('81','Suavebatik','gabrielmarco@suavebatik.com','082213897070',NULL,'43ec517d68b6edd3015b3edc9a11367b','suave1811','2016-03-13','Gabriel marco','082213897070','@suavebatik','Apl tower west jakarta'),('82','Selv','selvbyselvy@gmail.com','081249093999',NULL,'9778d5d219c5080b9a6a17bef029331c','261891','2016-03-13','Selvy','081249093999','Www.selvbyselvy.com','Jalan tengah no 52, banjar antar kelod, bali'),('83','The libertee','rendysugianto26@yahoo.com','081230301945',NULL,'fe9fc289c3ff0af142b6d3bead98a923','837837','2016-03-13','Rendy','0812430301945','Www.liberteeid.com','Waiting, royal residence, surabaya'),('84','Forte','benitadea@yahoo.com','082288122011',NULL,'68d30a9594728bc39aa24be94b319d21','panca5perkasa','2016-03-13','Benita','082288122011','@forteofficial','East emerald mansion tp1/29 citraland surabaya'),('85','Double You','alexa_wawolangi@yahoo.co.id','089677666320',NULL,'3ef815416f775098fe977004015c6193','alexa30','2016-03-13','Alexandra','089677666320','@doubleyou.id','Jl sambiarum 12 blok 54A no.20 Surabaya'),('86','Hype','wulan1993@windowslive.com','08175298898',NULL,'93db85ed909c13838ff95ccfa94cebd9','hype909394','2016-03-13','Wulan','08175298898','Instagram.com/wear.hype','Manyar kerta adi no. 63 surabaya'),('87','Aaaa','khatami.tt@gmail.com','08272798289',NULL,'c7e1249ffc03eb9ded908c236bd1996d','tahunbaru','2016-03-19','Aaa','0879927172718','Hh.hh','Quon aja'),('88','Berlight brand','berlight@ymail.com','08175114286',NULL,'2a38a4a9316c49e5a833517c45d31070','sukses123','2016-03-19','Zainal abidin','08175114286','Www.berlightbrand.com','Jl demangan baru no. A1 sleman yogyakarta'),('89','HOOLIGANS','sales@hooligans12th.com','087722623515',NULL,'7647966b7343c29048673252e490f736','hooligansseve','2016-03-19','Yudha asmara','0818119832','www.hooligans12th.co.id','jl.setra dago timur no 5 Antapani Bandung'),('90','Faiq Store','atmosumarto@gmail.com','0218096407',NULL,'8613985ec49eb8f757ae6439e879bb2a','mottymotty49','2016-04-06','Faiq Purnomo','082114009415','seveid.com','Condet'),('91','IWAN','kurniawandwiarianto@gmail.com','08703434379',NULL,'54229abfcfa5649e7003b83dd4755294','hahahaha','2016-03-19','Kurniawan','81729272917','Ha ha ha','Gskd djzhsna'),('92','Trapwindows','trapwindows@gmail.com','085746692273',NULL,'92cc227532d17e56e07902b254dfad10','alfalink','2016-03-19','Didit Sepiyanto','085746692273','trapwindows@gmailcom','Jl. Bhaskara 1 No 26'),('93','FISAPOUS Flag Store','fisapous.id@gmail.com','085257742660',NULL,'98dce83da57b0395e163467c9dae521b','123456fsps','2016-03-19','Bogee Zhukma','085257742660','fisapous_identity','Jl.Mayjend Panjaitan 74 Malang-JATIM'),('94','FISAPOUS Flag Store','fisapous.id@gmail.com','085257742660',NULL,'f4b9ec30ad9f68f89b29639786cb62ef','123456fsps','2016-03-19','Bogee Zhukma','085257742660','fisapous_identity','Jl.Mayjend Panjaitan 74 Malang-JATIM'),('95','Nk','khatami@seveid.com','7883992',NULL,'812b4ba287f5ee0bc9d43bbf5bbe87fb','tahunbaru','2016-03-20','Khatami','082919373728','Hh.hh','Surabaya'),('96','Hardware legal','hatedeeplegal@gmail.com','08885115348',NULL,'26657d5ff9020d2abefe558796b99584','hatedeeplegal','2016-03-20','David','08885115348','Www.heteroseksual.com','Menur 5 no.26 surabaya'),('97','Scarpa & Co.','cleineapparel@gmail.com','0315680689',NULL,'e2ef524fbf3d9fe611d5a8e90fefdc9c','est2012','2016-03-26','Hara yuda','081232661111','@cleineapparel','Sini gunung 1/30'),('98','Aaaa','ahah@fmail.com','082638220',NULL,'ed3d2c21991e3bef5e069713af9fa6ca','qwerty','2016-04-03','Gshaha','639020018272','Hshsja.com','Hdhajakak'),('99','Hahakajshs','adjd@gmail.com','08738392901',NULL,'ac627ab1ccbdb62ec96e702f07f6425b','qwerty','2016-04-03','Hshskalas','08196565667','Shhshs.com','Hahskak'),('100','Boontie','akusukaboontie@yahoo.com','0215842068',NULL,'f899139df5e1059396431415e770c6dd','030201abc','2016-04-04','Hanna Mandiraatmadja','085718881870','Boontie.com','Komplek Taman Aries Blok D 10/12, ,Meruya Utara, Kembangan, Jakarta Barat 11620'),('101','FaiqStore','atmosumarto@gmail.com','0218096407',NULL,'38b3eff8baf56627478ec76a704e9b52','mottymotty49','2016-04-06','Faiq Purnomo','082114009415','seveid.com','Condet'),('102','muhammad.afifzulhilmi@gmail.com','reno.miazaki@gmail.com','0887654321',NULL,'ec8956637a99787bd197eacd77acce5e','87654321','2016-04-09','hilmi','0812345678','hilmistore.com','menteng'),('103','TOOTEE','sweetpoisonus@gmail.com','0887654321',NULL,'6974ce5ac660610b44d9b9fed0ff9548','5029402qwe','2016-04-09','rega','0812345678','tootee.com','menteng');

/*Table structure for table `transaksi_trial` */

DROP TABLE IF EXISTS `transaksi_trial`;

CREATE TABLE `transaksi_trial` (
  `id_transaksi` int(11) NOT NULL AUTO_INCREMENT,
  `id_toko` int(11) DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL,
  `nama_transaksi` text NOT NULL,
  `alamat_transaksi` text NOT NULL,
  `kuantitas` int(11) DEFAULT NULL,
  `kontak_transaksi` text NOT NULL,
  `ukuran` char(1) NOT NULL,
  `harga_total` int(11) NOT NULL,
  `id_produk` text NOT NULL,
  `email_transaksi` text NOT NULL,
  `kodepos_transaksi` text NOT NULL,
  `provinsi_transaksi` text NOT NULL,
  `kota_transaksi` text NOT NULL,
  `status` int(11) DEFAULT '0',
  `nama_produk` text,
  `berat_produk` float DEFAULT NULL,
  PRIMARY KEY (`id_transaksi`)
) ENGINE=MyISAM AUTO_INCREMENT=86 DEFAULT CHARSET=latin1;

/*Data for the table `transaksi_trial` */

insert  into `transaksi_trial`(`id_transaksi`,`id_toko`,`id_user`,`nama_transaksi`,`alamat_transaksi`,`kuantitas`,`kontak_transaksi`,`ukuran`,`harga_total`,`id_produk`,`email_transaksi`,`kodepos_transaksi`,`provinsi_transaksi`,`kota_transaksi`,`status`,`nama_produk`,`berat_produk`) values ('69','20',NULL,'tami','jl. sm quon 21',NULL,'082175790553','m','145000','107','khatami_jambi@yahoo.com','','jambi','jambi','0',NULL,NULL),('68','20',NULL,'Fikry Khairytamim','Jalan Kontol',NULL,'081703434379','S','130000','80','fikry.labsky08@gmail.com','','Jawa Timur','Surabaya','0',NULL,NULL),('67','20',NULL,'Fikry Khairytamim','Jalan Kontol',NULL,'081703434379','S','130000','80','fikry.labsky08@gmail.com','','Jawa Timur','Surabaya','0',NULL,NULL),('65',NULL,NULL,'Fikry Khairytamim','Jalan Kontol',NULL,'081703434379','S','130000','80','fikry.labsky08@gmail.com','','Jawa Timur','Surabaya','0',NULL,NULL),('66',NULL,NULL,'Fikry Khairytamim','Jalan Kontol',NULL,'081703434379','S','130000','80','fikry.labsky08@gmail.com','','Jawa Timur','Surabaya','0',NULL,NULL),('64',NULL,NULL,'fikry','haha',NULL,'0812308123','s','20000','','fikrya.fdsmfd@jforsf','','jakarta','kontol','0',NULL,NULL),('63',NULL,NULL,'fikry','haha',NULL,'0812308123','s','20000','','fikrya.fdsmfd@jforsf','','jakarta','kontol','0',NULL,NULL),('62',NULL,NULL,'Fikry Khairytamim','081703434379',NULL,'S','J','130000','','fikry.labsky08@gmail.com','','Jawa Timur','Surabaya','0',NULL,NULL),('61',NULL,NULL,'Fikry Khairytamim','081703434379',NULL,'S','J','130000','','fikry.labsky08@gmail.com','','Jawa Timur','Surabaya','0',NULL,NULL),('70',NULL,NULL,'tami','jl. sm quon 21',NULL,'082175790553','m','145000','107','khatami_jambi@yahoo.com','','jambi','jambi','0',NULL,NULL),('71',NULL,NULL,'tami','jkjhgfghj hghjh',NULL,'082175790553','n','225000','106','khatami_jambi@yahoo.com','','jambi','jambi','0',NULL,NULL),('72',NULL,NULL,'tami','kllkmnm, kl;',NULL,'082175790553','m','145000','107','khatami_jambi@yahoo.com','','jambi','jambi','0',NULL,NULL),('73',NULL,NULL,'tami','kllkmnm, kl;',NULL,'082175790553','m','145000','107','khatami_jambi@yahoo.com','','jambi','jambi','0',NULL,NULL),('74',NULL,NULL,'tami','kllkmnm, kl;',NULL,'082175790553','m','145000','107','khatami_jambi@yahoo.com','','jambi','jambi','0',NULL,NULL),('75',NULL,NULL,'tami','kllkmnm, kl;',NULL,'082175790553','m','145000','107','khatami_jambi@yahoo.com','','jambi','jambi','0',NULL,NULL),('76',NULL,NULL,'tami','kllkmnm, kl;',NULL,'082175790553','m','145000','107','khatami_jambi@yahoo.com','','jambi','jambi','0',NULL,NULL),('77',NULL,NULL,'tami','kllkmnm, kl;',NULL,'082175790553','m','145000','107','khatami_jambi@yahoo.com','','jambi','jambi','0',NULL,NULL),('78',NULL,NULL,'tami','kllkmnm, kl;',NULL,'082175790553','m','145000','107','khatami_jambi@yahoo.com','','jambi','jambi','0',NULL,NULL),('79',NULL,NULL,'tami','kllkmnm, kl;',NULL,'082175790553','m','145000','107','khatami_jambi@yahoo.com','','jambi','jambi','0',NULL,NULL),('80',NULL,NULL,'adsa','ADASDA',NULL,'123131','X','130000','80','asdsa','','ASDAD','ADSAD','0',NULL,NULL),('81',NULL,NULL,'Hekakehsbba','Hekalwndhdksnssvjsnsbsn hdhs',NULL,'07292081717','M','130000','80','Gagsk@gmail.com','','Jatim','Heha','0',NULL,NULL),('82',NULL,NULL,'Hahajak','Hahaja',NULL,'028262819','L','260000','113','Hahaj@gmail.com','','Gagaha','Bshsga','0',NULL,NULL),('83',NULL,NULL,'krvin','kasjklajkdljaskljdklas',NULL,'909023902394','m','130000','80','asdjklajdkasjkjdka`','','asdkjskjl','asjkjakl','0',NULL,NULL),('84',NULL,NULL,'ajjsdakjk','kljkjkljkl',NULL,'kjkjkjkjkl','m','130000','80','kjkjklj','','kjlkjlk','jkljklj','0',NULL,NULL),('85',NULL,NULL,'Fikry Khairytamim','jalan euyyyyyyy no14',NULL,'081703434379','S','0','','fikry.labsky08@gmail.com','14044','','Jakarta Selatan','0',NULL,NULL);

/*Table structure for table `ukuran0` */

DROP TABLE IF EXISTS `ukuran0`;

CREATE TABLE `ukuran0` (
  `id_produk` int(11) DEFAULT NULL,
  `ukuran` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `ukuran0` */

insert  into `ukuran0`(`id_produk`,`ukuran`) values ('88',''),('89','eqweqw eqw qweqweqwqweqw eqw eqw'),('90','sdsa s s sa  as das sa sa as as dsad sad as sad asdsa sa sa das'),('91','sadasd as as asasdasdasdas dsadas asd asdsa sadas   sadas asd'),('94','100 x 100 x 200'),('95','200 x 1000 x 500'),('100','aaaa'),('105','Size & Fit\r\n- One size\r\n- head circumference: 54 - 60 cm / 21.3 - 23.6 inchs'),('107','100 x 85'),('109','sdsadasd as dassa asdas'),('110',''),('111','?'),('112','?'),('114','?'),('115','?'),('119','efdsfds'),('121','?'),('122','?'),('123','?'),('124','?'),('125','?'),('132',''),('135','aaaaxa');

/*Table structure for table `ukuran1` */

DROP TABLE IF EXISTS `ukuran1`;

CREATE TABLE `ukuran1` (
  `id_produk` int(11) NOT NULL,
  `c1` float DEFAULT '0',
  `c2` float DEFAULT '0',
  `c3` float DEFAULT '0',
  `c4` float DEFAULT '0',
  `c5` float DEFAULT '0',
  `c6` float DEFAULT '0',
  `l1` float DEFAULT '0',
  `l2` float DEFAULT '0',
  `l3` float DEFAULT '0',
  `l4` float DEFAULT '0',
  `l5` float DEFAULT '0',
  `l6` float DEFAULT '0',
  `s1` float DEFAULT '0',
  `s2` float DEFAULT '0',
  `s3` float DEFAULT '0',
  `s4` float DEFAULT '0',
  `s5` float DEFAULT '0',
  `s6` float DEFAULT '0',
  PRIMARY KEY (`id_produk`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `ukuran1` */

insert  into `ukuran1`(`id_produk`,`c1`,`c2`,`c3`,`c4`,`c5`,`c6`,`l1`,`l2`,`l3`,`l4`,`l5`,`l6`,`s1`,`s2`,`s3`,`s4`,`s5`,`s6`) values ('74','1','1','2','0','1','22','0','0','0','0','0','0','0','0','0','0','0','0'),('75','2','1','2','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0'),('76','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0'),('77','0','0','1','2','0','0','0','0','0','0','0','0','0','0','0','0','0','0'),('78','0','0','1','1','1','0','0','0','0','0','0','0','0','0','0','0','0','0'),('79','0','0','2','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0'),('80','0','1','2','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0'),('81','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0'),('82','12','14','12','0','12','12','12','32','421','0','21','12','12','32','12','0','12','30.8'),('83','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1.4'),('84','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1.2'),('87','1','2','2','2','2','2','2','2','2','2','2','2','2','2','2','2','2','2'),('92','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1'),('93','30','20','20','20','20','20','40','20','20','20','20','20','20','20','20','20','20','20'),('96','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0'),('97','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0'),('98','0','90','20','20','20','20','0','90','20','20','20','20','0','90','20','20','20','20'),('101','0','20','20','20','20','20','0','20','20','20','20','20','0','20','20','20','20','20'),('106','20','30','40','50','60','70','10','20','30','40','50','60','1','2','3','4','5','6'),('108','0','1','2','3','4','5','0','2','3','4','5','6','0','3','4','5','6','7'),('113','42','46','51','56','61','66','70','72','75','77','80','82','0','0','0','0','0','0'),('116','42','46','51','56','61','66','70','72','75','77','80','82','0','0','0','0','0','0'),('117','0','51','53','57','62','65','0','71','73','75','77','80','0','70','72','76','80','80'),('118','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0'),('120','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0'),('126','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0'),('127','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0'),('128','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0'),('129','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0'),('130','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0'),('131','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0'),('133','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0'),('134','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0');

/*Table structure for table `ukuran2` */

DROP TABLE IF EXISTS `ukuran2`;

CREATE TABLE `ukuran2` (
  `id_produk` int(11) NOT NULL,
  `u36` float DEFAULT '0',
  `u37` float DEFAULT '0',
  `u38` float DEFAULT '0',
  `u39` float DEFAULT '0',
  `u40` float DEFAULT '0',
  `u41` float DEFAULT '0',
  `u42` float DEFAULT '0',
  `u43` float DEFAULT '0',
  `u44` float DEFAULT '0',
  `u45` float DEFAULT '0',
  `u46` float DEFAULT '0',
  `u47` float DEFAULT '0',
  PRIMARY KEY (`id_produk`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `ukuran2` */

insert  into `ukuran2`(`id_produk`,`u36`,`u37`,`u38`,`u39`,`u40`,`u41`,`u42`,`u43`,`u44`,`u45`,`u46`,`u47`) values ('104','15','12','12','11','12','121','12','121','12','12','21','21');

/*Table structure for table `ukuran3` */

DROP TABLE IF EXISTS `ukuran3`;

CREATE TABLE `ukuran3` (
  `id_produk` int(11) NOT NULL,
  `i27` float DEFAULT '0',
  `i28` float DEFAULT '0',
  `i29` float DEFAULT '0',
  `i30` float DEFAULT '0',
  `i31` float DEFAULT '0',
  `i32` float DEFAULT '0',
  `i33` float DEFAULT '0',
  `i34` float DEFAULT '0',
  `i35` float DEFAULT '0',
  `i36` float DEFAULT '0',
  `i37` float DEFAULT '0',
  `i38` float DEFAULT '0',
  `w27` float DEFAULT '0',
  `w28` float DEFAULT '0',
  `w29` float DEFAULT '0',
  `w30` float DEFAULT '0',
  `w31` float DEFAULT '0',
  `w32` float DEFAULT '0',
  `w33` float DEFAULT '0',
  `w34` float DEFAULT '0',
  `w35` float DEFAULT '0',
  `w36` float DEFAULT '0',
  `w37` float DEFAULT '0',
  `w38` float DEFAULT '0',
  `h27` float DEFAULT '0',
  `h28` float DEFAULT '0',
  `h29` float DEFAULT '0',
  `h30` float DEFAULT '0',
  `h31` float DEFAULT '0',
  `h32` float DEFAULT '0',
  `h33` float DEFAULT '0',
  `h34` float DEFAULT '0',
  `h35` float DEFAULT '0',
  `h36` float DEFAULT '0',
  `h37` float DEFAULT '0',
  `h38` float DEFAULT '0',
  `t27` float DEFAULT '0',
  `t28` float DEFAULT '0',
  `t29` float DEFAULT '0',
  `t30` float DEFAULT '0',
  `t31` float DEFAULT '0',
  `t32` float DEFAULT '0',
  `t33` float DEFAULT '0',
  `t34` float DEFAULT '0',
  `t35` float DEFAULT '0',
  `t36` float DEFAULT '0',
  `t37` float DEFAULT '0',
  `t38` float DEFAULT '0',
  PRIMARY KEY (`id_produk`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `ukuran3` */

insert  into `ukuran3`(`id_produk`,`i27`,`i28`,`i29`,`i30`,`i31`,`i32`,`i33`,`i34`,`i35`,`i36`,`i37`,`i38`,`w27`,`w28`,`w29`,`w30`,`w31`,`w32`,`w33`,`w34`,`w35`,`w36`,`w37`,`w38`,`h27`,`h28`,`h29`,`h30`,`h31`,`h32`,`h33`,`h34`,`h35`,`h36`,`h37`,`h38`,`t27`,`t28`,`t29`,`t30`,`t31`,`t32`,`t33`,`t34`,`t35`,`t36`,`t37`,`t38`) values ('86','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1.4'),('99','20','20','20','20','20','20','20','20','20','20','20','20','20','20','20','20','20','20','20','20','20','20','20','20','20','20','20','20','20','20','20','20','20','20','20','20','20','20','20','20','20','20','20','20','20','20','20','20'),('102','12','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','0','0');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `nama_user` text,
  `email_user` text,
  `nomor_telepon_user` text,
  `password_user` text,
  `kode_pos` text,
  `kota` text,
  `provinsi` text,
  `alamat_user` text,
  `id_kota` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

/*Data for the table `user` */

insert  into `user`(`id_user`,`nama_user`,`email_user`,`nomor_telepon_user`,`password_user`,`kode_pos`,`kota`,`provinsi`,`alamat_user`,`id_kota`) values ('1','didit sepiyanto','sepiyantodidit@gmail.com','085746692273','alfalink','','Surabaya','Jawa Timur','Jl. Bhaskara 1 no 26 Surabaya','444'),('2','Didit Sepiyanto','trapwindows@gmail.com','085746692273','alfalink',NULL,NULL,NULL,NULL,NULL),('3','Faiq','atmosumarto@gmail.com','082114009415','seveindonesia',NULL,NULL,NULL,'Condet',NULL),('5','Khatami','khatami_jambi@yahoo.com','082175790553','tahunbaru',NULL,NULL,NULL,'Jl. Sm malik ibrahim no 03',NULL),('6','Muhamad Faiq','faiqpurnomo@icloud.com','082114009415','seveindonesia',NULL,NULL,NULL,NULL,NULL),('7','David De Gea','muktidga@gmail.com','085745965341','password',NULL,NULL,NULL,NULL,NULL),('8','Faiz','faizmukti@gmail.com','085745965341','dementor0',NULL,NULL,NULL,NULL,NULL),('9','Pandji Bagaskara','pandjie.bagaskara@yahoo.com','085781733327','123456',NULL,NULL,NULL,'Duren Sawit',NULL),('11','kurniawan dwi arianto','kurniawandwiarianto@gmail.com','082123107332','082123',NULL,NULL,NULL,'jl.masjid darul fallah rt05/03 no 40 petukangan utara pesangrahan jaksel 12260',NULL),('12','Fikry Khairytamim','fikry.labsky08@gmail.com','+6281703434379','afrizalakmal','14002','Jakarta Barat',NULL,'Komplek Hankam Joglo, jalan bazoka raya no.24 Blok i, Jakarta Barat','151'),('13','Dea Ayu Oktaviani','ochadea12@gmail.com','085649194112','dea12101997','64292','Kediri',NULL,'Jalan Pangeran Diponegoro 130 Templek Gadungan Puncu','178');

/* Procedure structure for procedure `buat_auth` */

/*!50003 DROP PROCEDURE IF EXISTS  `buat_auth` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `buat_auth`(nama_ text, email_ text, nomor_telepon_ text, password_ text)
BEGIN
	insert into authentication (nama_user,email_user,nomor_telepon_user, password_user) values (nama_, email_, nomor_telepon_, password_);
	update authentication set auth=md5(id_auth), tanggal_aktif=now() where email_user=email_;
	SELECT auth from authentication where email_user = email_ order by id_auth desc LIMIT 1;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `buat_auth_member` */

/*!50003 DROP PROCEDURE IF EXISTS  `buat_auth_member` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `buat_auth_member`(nama_ text, email_ text, alamt_ text,kodepos_ text, kota_ text, nomor_telepon_ text, password_ text,kotakota_ text)
BEGIN
	insert into memberauthentication (nama_member,email_member,alamat_member,kode_pos, kota,nohp_member, password_member, id_kota) values (nama_, email_, alamt_, kodepos_, kota_, nomor_telepon_, password_, kotakota_);
	update memberauthentication set memberauth=md5(id_memberauth), tanggalaktif_memberauth=now() where email_member=email_;
	SELECT memberauth from memberauthentication where email_member = email_ order by id_memberauth desc LIMIT 1;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `buat_auth_toko` */

/*!50003 DROP PROCEDURE IF EXISTS  `buat_auth_toko` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `buat_auth_toko`(nama_toko_ text, email_toko_ text, nama_owner_ text, nomor_teleponowner_ text, website_ text, nomor_telepontoko_ text, alamat_ text, password_ text)
BEGIN
	insert into tokoauthentication (nama_toko,email_toko,nama_owner,nomor_teleponowner,website, nohp_toko, alamat, password_toko) 
		values (nama_toko_, email_toko_, nama_owner_, nomor_teleponowner_, website_, nomor_telepontoko_, alamat_, password_);
	update tokoauthentication set tokoauth=md5(id_tokoauth), tanggalaktif_tokoauth=now() where email_toko=email_toko_;
	SELECT tokoauth from tokoauthentication where email_toko = email_toko_ order by id_tokoauth desc LIMIT 1;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `buat_cabang` */

/*!50003 DROP PROCEDURE IF EXISTS  `buat_cabang` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `buat_cabang`(cabang_ int, email_ text, password_ text, nama_penanggung_jawab_ text,
 nomor_telepon_penanggung_jawab_ text, nomor_telepon_cabang_ text, 
alamat_cabang_ text, nomor_rekening text, bank_ text, kota_ text, kode_pos_ text, id_kota_ text)
BEGIN
	insert into cabang (cabang, email, password, nama_penanggung_jawab, nomor_telepon_penanggung_jawab, nomor_telepon_cabang, 
alamat_cabang,nomor_rekening_cabang,bank,kota,kode_pos,id_kota) values (cabang_, email_, password_, nama_penanggung_jawab_, nomor_telepon_penanggung_jawab_, nomor_telepon_cabang_, 
alamat_cabang_, nomor_rekening, bank_,kota_, kode_pos_, id_kota_);
    END */$$
DELIMITER ;

/* Procedure structure for procedure `buat_toko` */

/*!50003 DROP PROCEDURE IF EXISTS  `buat_toko` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `buat_toko`(nama_toko_ text, 
email_toko_ text, nama_owner_ text, nomor_teleponowner_ text, 
website_ text, nomor_telepontoko_ text, alamat_ text, password_ text)
BEGIN
	set @check_email = (SELECT email_toko FROM toko WHERE email_toko=email_toko_);
	IF (isnull(@check_email)=0) THEN
		update toko set nama_toko = nama_toko_, 
		nama_owner = nama_owner_, nomor_teleponowner =nomor_teleponowner_,
		website = website_, nohp_toko =nomor_telepontoko_,
		alamat_toko = alamat_ where email_toko= email_toko_;
	ELSE
		insert into toko (nama_toko,email_toko,nama_owner,nomor_teleponowner,website, nohp_toko, alamat_toko, password_toko) 
		values (nama_toko_, email_toko_, nama_owner_, nomor_teleponowner_, website_, nomor_telepontoko_, alamat_, password_);
	END IF;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `buat_user` */

/*!50003 DROP PROCEDURE IF EXISTS  `buat_user` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `buat_user`(nama_ text, email_ text, alamat_ text, nomor_telepon_ text, password_ text, kodepos_ text, kota_ text, idkota_ text)
BEGIN
	set @check_email = (SELECT email_user FROM user WHERE email_user=email_);
	IF (isnull(@check_email)=0) THEN
		update user set nama_user = nama_, nomor_telepon_user = nomor_telepon_,
		alamat_user = alamat_, kode_pos = kodepos_, kota = kota_,id_kota = idkota_ where email_user= email_;
	ELSE
		insert into user (nama_user,email_user,nomor_telepon_user, alamat_user, password_user, kode_pos, kota, id_kota) 
		values (nama_, email_, nomor_telepon_, alamat_, password_, kodepos_, kota_, idkota_);
	END IF;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `cek_alamat` */

/*!50003 DROP PROCEDURE IF EXISTS  `cek_alamat` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `cek_alamat`(id_user_ int)
BEGIN
	set @kode_pos = (select kode_pos from user where id_user=id_user_);
	set @provinsi = (select provinsi from user where id_user=id_user_);
	set @kota = (select kota from user where id_user=id_user_);
	set @alamat = (select alamat_user from user where id_user=id_user_);
	
	IF (isnull(@kode_pos)=0 or isnull(@provinsi)=0 or isnull(@kota)=0 or isnull(@alamat)=0) THEN
		select 1 as 'status';
	ELSE
		select 0 as 'status';
	END IF;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `daftar_produk_saya` */

/*!50003 DROP PROCEDURE IF EXISTS  `daftar_produk_saya` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `daftar_produk_saya`(id_toko_ int)
BEGIN
    select * from produk JOIN (toko) on (toko.id_toko = id_toko_ and produk.id_toko = id_toko_ and produk.id_toko = toko.id_toko);
    END */$$
DELIMITER ;

/* Procedure structure for procedure `daftar_produk_saya_cabang` */

/*!50003 DROP PROCEDURE IF EXISTS  `daftar_produk_saya_cabang` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `daftar_produk_saya_cabang`(id_toko_ int, email_ text)
BEGIN
	select * from produk JOIN (cabang) on (cabang.email = email_ and cabang.cabang = id_toko_ and produk.id_toko = id_toko_ and produk.id_toko = cabang.cabang);
    END */$$
DELIMITER ;

/* Procedure structure for procedure `detail_produk` */

/*!50003 DROP PROCEDURE IF EXISTS  `detail_produk` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `detail_produk`(id_produk_ int)
BEGIN
	select * from produk where id_produk = id_produk_ and status_tampil = 1;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `detail_produk_perbrand` */

/*!50003 DROP PROCEDURE IF EXISTS  `detail_produk_perbrand` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `detail_produk_perbrand`(id_toko_ int)
BEGIN
	select * from produk where id_toko = id_toko_ and status_tampil = 1;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `edit_norek` */

/*!50003 DROP PROCEDURE IF EXISTS  `edit_norek` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `edit_norek`(id_toko_ int, norek_ text, opsi_ int, bank_ int)
BEGIN
	update toko set nomor_rekening_toko = norek_, option_keuntungan = opsi_ , bank = bank_ where id_toko = id_toko_;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `edit_norek_cabang` */

/*!50003 DROP PROCEDURE IF EXISTS  `edit_norek_cabang` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `edit_norek_cabang`(id_toko_ int, norek_ text, bank_ int)
BEGIN
	update cabang set nomor_rekening_cabang = norek_, bank = bank_ where id_cabang = id_toko_;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `edit_produk` */

/*!50003 DROP PROCEDURE IF EXISTS  `edit_produk` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `edit_produk`(id_produk_ int, id_toko_ int)
BEGIN
	select * from produk where id_produk = id_produk_ and id_toko = id_toko_;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `gaktampil_home` */

/*!50003 DROP PROCEDURE IF EXISTS  `gaktampil_home` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `gaktampil_home`(id_produk_ int)
BEGIN
	update produk set status_tampil = 0 where id_produk = id_produk_;
END */$$
DELIMITER ;

/* Procedure structure for procedure `get_email_toko` */

/*!50003 DROP PROCEDURE IF EXISTS  `get_email_toko` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `get_email_toko`(id_produk_ int)
BEGIN
	select * from toko where id_toko in
	(select id_toko from produk where id_produk = id_produk_);
    END */$$
DELIMITER ;

/* Procedure structure for procedure `get_id_terakhir_produk` */

/*!50003 DROP PROCEDURE IF EXISTS  `get_id_terakhir_produk` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `get_id_terakhir_produk`(id_toko_ int)
BEGIN
     select id_produk + 1 as 'id_produk' from produk where id_toko = id_toko order by id_produk desc LIMIT 1;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `hapus_cabang` */

/*!50003 DROP PROCEDURE IF EXISTS  `hapus_cabang` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `hapus_cabang`(id_cabang_ int)
BEGIN
	DELETE FROM cabang WHERE id_cabang = id_cabang_;
END */$$
DELIMITER ;

/* Procedure structure for procedure `hapus_daftarproduk` */

/*!50003 DROP PROCEDURE IF EXISTS  `hapus_daftarproduk` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `hapus_daftarproduk`(id_produk_ int)
BEGIN
	DELETE FROM produk WHERE id_produk = id_produk_;
END */$$
DELIMITER ;

/* Procedure structure for procedure `hapus_produk` */

/*!50003 DROP PROCEDURE IF EXISTS  `hapus_produk` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `hapus_produk`(id_produk_ int)
BEGIN
	update produk set status_tampil = 0 where id_produk = id_produk_;
END */$$
DELIMITER ;

/* Procedure structure for procedure `lihat_cabang` */

/*!50003 DROP PROCEDURE IF EXISTS  `lihat_cabang` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `lihat_cabang`(cabang_ int)
BEGIN
	select * from cabang where cabang = cabang_;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `lihat_info_cabang` */

/*!50003 DROP PROCEDURE IF EXISTS  `lihat_info_cabang` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `lihat_info_cabang`(id_toko_ int)
BEGIN
	select * from cabang where id_cabang = id_toko_;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `lihat_info_toko` */

/*!50003 DROP PROCEDURE IF EXISTS  `lihat_info_toko` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `lihat_info_toko`(id_toko_ int)
BEGIN
	select * from toko where id_toko = id_toko_;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `list_produk_category` */

/*!50003 DROP PROCEDURE IF EXISTS  `list_produk_category` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `list_produk_category`(id_ int,id2_ int)
BEGIN
    select * from produk where produk_kategori BETWEEN id_ and id2_ and status_tampil = 1;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `list_produk_home` */

/*!50003 DROP PROCEDURE IF EXISTS  `list_produk_home` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `list_produk_home`()
BEGIN
    select * from produk;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `list_produk_percategory` */

/*!50003 DROP PROCEDURE IF EXISTS  `list_produk_percategory` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `list_produk_percategory`(id_ int)
BEGIN
    select * from produk where produk_kategori = id_ and status_tampil = 1;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `login` */

/*!50003 DROP PROCEDURE IF EXISTS  `login` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `login`(email_ text, password_ text)
BEGIN
	select * from user where email_user=email_ and password_user = password_;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `login_cabang` */

/*!50003 DROP PROCEDURE IF EXISTS  `login_cabang` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `login_cabang`(email_ text, password_ text)
BEGIN
	select id_cabang, cabang, nama_penanggung_jawab, email from cabang where email=email_ and password = password_;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `login_toko` */

/*!50003 DROP PROCEDURE IF EXISTS  `login_toko` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `login_toko`(email_ text, password_ text)
BEGIN
      select * from toko where email_toko=email_ and password_toko = password_;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `login_user` */

/*!50003 DROP PROCEDURE IF EXISTS  `login_user` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `login_user`(email_ text, password_ text)
BEGIN
	select id_user,nama_user, email_user from user where email_user = email_ and password_user = password_;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `nama_subcategory` */

/*!50003 DROP PROCEDURE IF EXISTS  `nama_subcategory` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `nama_subcategory`(id_ int)
BEGIN
	select subcategory from subcategory where pk_subcategory = id_;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `pemesanan` */

/*!50003 DROP PROCEDURE IF EXISTS  `pemesanan` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `pemesanan`(id_toko_ int)
BEGIN
	SELECT * from transaksi_trial where id_toko = id_toko_ and status = 0;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `pemesanan_sukses` */

/*!50003 DROP PROCEDURE IF EXISTS  `pemesanan_sukses` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `pemesanan_sukses`()
BEGIN
    END */$$
DELIMITER ;

/* Procedure structure for procedure `select_detail_ukuran_barang` */

/*!50003 DROP PROCEDURE IF EXISTS  `select_detail_ukuran_barang` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `select_detail_ukuran_barang`(id_produk_ int, tipe_ int)
BEGIN
	if(tipe_ = 0) then
		select * from ukuran0 where id_produk = id_produk_;
	elseif(tipe_ = 1) then
		select * from ukuran1 where id_produk = id_produk_;
	elseif(tipe_ = 2) then
		select * from ukuran2 where id_produk = id_produk_;
	elseif(tipe_ = 3) then
		select * from ukuran3 where id_produk = id_produk_;
	end if;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `select_id_toko` */

/*!50003 DROP PROCEDURE IF EXISTS  `select_id_toko` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `select_id_toko`(email_ text)
BEGIN
    select id_toko from toko where email = email_;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `show_brand` */

/*!50003 DROP PROCEDURE IF EXISTS  `show_brand` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `show_brand`()
BEGIN
	select nama_toko,id_toko from toko;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `show_kategori` */

/*!50003 DROP PROCEDURE IF EXISTS  `show_kategori` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `show_kategori`()
BEGIN
	select * from kategori;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `show_subcategory` */

/*!50003 DROP PROCEDURE IF EXISTS  `show_subcategory` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `show_subcategory`(id_ int)
BEGIN
	select * from subcategory where id_subcategory = id_;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `show_tipe_category` */

/*!50003 DROP PROCEDURE IF EXISTS  `show_tipe_category` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `show_tipe_category`(id_subcategory_ int)
BEGIN
	select tipe from subcategory where pk_subcategory = id_subcategory_;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `show_tipe_per_produk` */

/*!50003 DROP PROCEDURE IF EXISTS  `show_tipe_per_produk` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `show_tipe_per_produk`(id_produk_ int)
BEGIN
	select tipe from subcategory where pk_subcategory = (select produk_kategori from produk where id_produk =  id_produk_);
    END */$$
DELIMITER ;

/* Procedure structure for procedure `show_transaksi_trial` */

/*!50003 DROP PROCEDURE IF EXISTS  `show_transaksi_trial` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `show_transaksi_trial`()
BEGIN
	select * from tranksaksi_trial;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `show_ukuran_dua` */

/*!50003 DROP PROCEDURE IF EXISTS  `show_ukuran_dua` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `show_ukuran_dua`(id_produk_ int)
BEGIN
	select * from ukuran2 where id_produk = id_produk_;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `show_ukuran_nol` */

/*!50003 DROP PROCEDURE IF EXISTS  `show_ukuran_nol` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `show_ukuran_nol`(id_produk_ int)
BEGIN
	select * from ukuran0 where id_produk = id_produk_;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `show_ukuran_satu` */

/*!50003 DROP PROCEDURE IF EXISTS  `show_ukuran_satu` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `show_ukuran_satu`(id_produk_ int)
BEGIN
	select * from ukuran1 where id_produk = id_produk_;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `show_ukuran_tiga` */

/*!50003 DROP PROCEDURE IF EXISTS  `show_ukuran_tiga` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `show_ukuran_tiga`(id_produk_ int)
BEGIN
	select * from ukuran3 where id_produk = id_produk_;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `simpan_jumlah_produk` */

/*!50003 DROP PROCEDURE IF EXISTS  `simpan_jumlah_produk` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `simpan_jumlah_produk`(id_produk_ int,id_cabang_ int,u1_ int,u2_ int,u3_ int,u4_ int,u5_ int,u6_ int,u7_ int,u8_ int,u9_ int,u10_ int,u11_ int,u12_ int)
BEGIN
	set @check_data = (SELECT id_produk FROM jml_produk WHERE id_produk=id_produk_ and id_cabang=id_cabang_);
	IF (isnull(@check_data)=0) THEN
		update jml_produk set u1 = u1_,u2 = u2_,u3 = u3_,u4 = u4_,u5 = u5_,u6 = u6_,u7 = u7_,u8 = u8_,u9 = u9_,u10 = u10_,u11 = u11_,u12 = u12_
		where id_produk = id_produk_;
	ELSE
		insert into jml_produk(id_produk,id_cabang,u1,u2,u3,u4,u5,u6,u7,u8,u9,u10,u11,u12) 
		values (id_produk_,id_cabang_,u1_,u2_,u3_,u4_,u5_,u6_,u7_,u8_,u9_,u10_,u11_,u12_);
	END IF;
	#select * from jml_produk where id_produk = id_produk_ and id_cabang = id_cabang_;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `simpan_pengaturan_toko` */

/*!50003 DROP PROCEDURE IF EXISTS  `simpan_pengaturan_toko` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `simpan_pengaturan_toko`(nama_toko_ text, nama_owner_ text, nohp_toko_ text,
nomor_teleponowner_ text, website_ text, alamat_toko_ text, email_toko_ text)
BEGIN
	update toko set nama_toko = nama_toko_, nama_owner = nama_owner_, nohp_toko = nohp_toko_,
	nomor_teleponowner = nomor_teleponowner_, website = website_, alamat_toko=alamat_toko_ where email_toko= email_toko_;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `simpan_produk` */

/*!50003 DROP PROCEDURE IF EXISTS  `simpan_produk` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `simpan_produk`(nama_produk_ text, deskripsi_produk_ text,
	harga_ float, s_ int, m_ int, l_ int, xl_ int, xxl_ int, id_produk_ int,penyimpanan_ int, berat_ float, produk_kategori_ int , deskripsi_ukuran_ text)
BEGIN
	update produk set nama_produk=nama_produk_, deskripsi_produk=deskripsi_produk_, harga=harga_, s=s_, m=m_,l=l_,xl=xl_,xxl=xxl_, penyimpanan=penyimpanan_,
berat=berat_, produk_kategori=produk_kategori_, deskripsi_ukuran=deskripsi_ukuran_ where id_produk = id_produk_;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `simpan_produk_tipe0` */

/*!50003 DROP PROCEDURE IF EXISTS  `simpan_produk_tipe0` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `simpan_produk_tipe0`(id_produk_ int, nama_produk_ text, deskripsi_produk_ text, harga_ float, penyimpanan_ int, berat_ float, gender_ text, brand_ text, id_brand_ text, diskon_ float,
keterangan_ukuran_ text)
BEGIN
	update produk set nama_produk = nama_produk_, deskripsi_produk = deskripsi_produk_, harga = harga_, penyimpanan = penyimpanan_, berat = berat_, gender = gender_, brand = brand_, id_brand=id_brand_, diskon =diskon_ where id_produk = id_produk_;
	set @id_produk = (select id_produk from produk order by id_produk desc limit 1);
	update ukuran0 set ukuran = keterangan_ukuran_ where id_produk = id_produk_;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `simpan_produk_tipe1` */

/*!50003 DROP PROCEDURE IF EXISTS  `simpan_produk_tipe1` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `simpan_produk_tipe1`(id_produk_ int,nama_produk_ text, deskripsi_produk_ text, harga_ float,  penyimpanan_ int, berat_ float, gender_ text, brand_ text, id_brand_ text, diskon_ float,
c1_ float, c2_ float, c3_ float, c4_ float, c5_ float, c6_ float, l1_ float, l2_ float, l3_ float, l4_ float, l5_ float, l6_ float, s1_ float, s2_ float, s3_ float, s4_ float, s5_ float, s6_ float
)
BEGIN
	update produk set nama_produk = nama_produk_, deskripsi_produk = deskripsi_produk_, harga = harga_, penyimpanan = penyimpanan_, berat=berat_, gender=gender_, brand=brand_, id_brand=id_brand_, diskon=diskon_ where id_produk=id_produk_;
	update ukuran1 set c1=c1_, c2=c2_, c3=c3_, c4=c4_, c5=c5_, c6=c6_, l1=l1_, l2=l2_, l3=l3_, l4=l4_, l5=l5_, l6=l6_, s1=s1_, s2=s2_, s3=s3_, s4=s4_, s5=s5_, s6=s6_ where id_produk=id_produk_;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `simpan_produk_tipe2` */

/*!50003 DROP PROCEDURE IF EXISTS  `simpan_produk_tipe2` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `simpan_produk_tipe2`(id_produk_ int, nama_produk_ text, deskripsi_produk_ text, harga_ float, penyimpanan_ int, berat_ float, gender_ text, status_tampil_ int, brand_ text, id_brand_ text, diskon_ float,
u36_ int, u37_ int, u38_ int, u39_ int, u40_ int, u41_ int, u42_ int, u43_ int,u44_ int, u45_ int, u46_ int, u47_ int)
BEGIN
	update produk set nama_produk = nama_produk_, deskripsi_produk=deskripsi_produk_, harga=harga_, penyimpanan =penyimpanan_, berat =berat_, gender =gender_, brand=brand_, id_brand =id_brand_, diskon=diskon_ where id_produk= id_produk_;
	update ukuran2 set u36=u36_, u37=u37_, u38=u38_, u39=u39_, u40=u40_, u41=u41_, u42=u42_, u43=u43_, u44=u44_, u45=u45_, u46=u46_, u47=u47_ where id_produk= id_produk_;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `simpan_produk_tipe3` */

/*!50003 DROP PROCEDURE IF EXISTS  `simpan_produk_tipe3` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `simpan_produk_tipe3`(id_produk_ int, nama_produk_ text, deskripsi_produk_ text, harga_ float, penyimpanan_ int, berat_ float, gender_ text,  brand_ text, id_brand_ text, diskon_ float,
i27_ float, i28_ float, i29_ float, i30_ float, i31_ float, i32_ float, i33_ float, i34_ float, i35_ float,i36_ float, i37_ float, i38_ float,
w27_ float, w28_ float, w29_ float, w30_ float, w31_ float, w32_ float, w33_ float, w34_ float, w35_ float,w36_ float, w37_ float, w38_ float,
h27_ float, h28_ float, h29_ float, h30_ float, h31_ float, h32_ float, h33_ float, h34_ float, h35_ float,h36_ float, h37_ float, h38_ float,
t27_ float, t28_ float, t29_ float, t30_ float, t31_ float, t32_ float, t33_ float, t34_ float, t35_ float,t36_ float, t37_ float, t38_ float)
BEGIN
	update produk set nama_produk = nama_produk_, deskripsi_produk=deskripsi_produk_, harga=harga_, penyimpanan =penyimpanan_, berat =berat_, gender =gender_, brand=brand_, id_brand =id_brand_, diskon=diskon_ where id_produk= id_produk_;
	update ukuran3 set i27=i27_ , i28=i28_ , i29=i29_ , i30=i30_ , i31=i31_ , i32=i32 , i33=i33_ , i34=i34_ , i35=i35_ ,i36=i36_ , i37=i37_ , i38=i38_, 
	w27=w27_ , w28=w28_ , w29=w29_ , w30=w30_ , w31=w31_ , w32=w32_ , w33=w33_ , w34=w34_ , w35=w35_ ,w36=w36_ , w37=w37_ , w38=w38_ ,
	h27=h27_ , h28=h28_ , h29=h29_ , h30=h30_ , h31=h31_ , h32=h32_ , h33=h33_ , h34=h34_ , h35=h35_ ,h36=h36_ , h37=h37_ , h38=h38_ ,
	t27=t27_ , t28=t28_ , t29=t29_ , t30=t30_ , t31=t31_ , t32=t32_ , t33=t33_ , t34=t34_ , t35=t35_ ,t36=t36_ , t37=t37_ , t38=t38_ 
	where id_produk= id_produk_;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `tambah` */

/*!50003 DROP PROCEDURE IF EXISTS  `tambah` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `tambah`(nama_transaksi_ text, bank_ int)
BEGIN
	INSERT INTO transaksi_trial (nomor_rekening, bank) values 
	(no_rekening_ , bank_);
    END */$$
DELIMITER ;

/* Procedure structure for procedure `tambah_produk` */

/*!50003 DROP PROCEDURE IF EXISTS  `tambah_produk` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `tambah_produk`(nama_produk_ text, deskripsi_produk_ text,
	harga_ float, s_ int, m_ int, l_ int, xl_ int, xxl_ int, id_toko_ int,penyimpanan_ int, berat_ float, produk_kategori_ int , deskripsi_ukuran_ text)
BEGIN
	insert into produk (nama_produk, deskripsi_produk, harga, s, m, l, xl, xxl, id_toko, penyimpanan, berat, produk_kategori, deskripsi_ukuran) values 
	(nama_produk_, deskripsi_produk_, harga_, s_, m_, l_, xl_, xxl_, id_toko_, penyimpanan_, berat_, produk_kategori_, deskripsi_ukuran_);
    END */$$
DELIMITER ;

/* Procedure structure for procedure `tambah_produk_tipe0` */

/*!50003 DROP PROCEDURE IF EXISTS  `tambah_produk_tipe0` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `tambah_produk_tipe0`(nama_produk_ text, deskripsi_produk_ text, harga_ float, id_toko_ int, penyimpanan_ int, berat_ float, produk_kategori_ int, gender_ text, status_tampil_ int,tipe_ int, brand_ text, id_brand_ text, diskon_ float,
keterangan_ukuran_ text)
BEGIN
	insert into produk (nama_produk, deskripsi_produk, harga, id_toko, penyimpanan, berat, produk_kategori, gender, status_tampil, tipe, brand, id_brand, diskon) values 
	(nama_produk_, deskripsi_produk_, harga_, id_toko_, penyimpanan_, berat_, produk_kategori_, gender_, status_tampil_, tipe_, brand_, id_brand_, diskon_);
	set @id_produk = (select id_produk from produk order by id_produk desc limit 1);
	insert into ukuran0 (id_produk, ukuran) 
	values (@id_produk, keterangan_ukuran_);
	select @id_produk as 'id_produk';
    END */$$
DELIMITER ;

/* Procedure structure for procedure `tambah_produk_tipe1` */

/*!50003 DROP PROCEDURE IF EXISTS  `tambah_produk_tipe1` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `tambah_produk_tipe1`(nama_produk_ text, deskripsi_produk_ text, harga_ float, id_toko_ int, penyimpanan_ int, berat_ float, produk_kategori_ int, gender_ text, status_tampil_ int,tipe_ int, brand_ text, id_brand_ text, diskon_ float,
c1_ float, c2_ float, c3_ float, c4_ float, c5_ float, c6_ float, l1_ float, l2_ float, l3_ float, l4_ float, l5_ float, l6_ float, s1_ float, s2_ float, s3_ float, s4_ float, s5_ float, s6_ float
)
BEGIN
	insert into produk (nama_produk, deskripsi_produk, harga, id_toko, penyimpanan, berat, produk_kategori, gender, status_tampil, tipe, brand, id_brand, diskon) values 
	(nama_produk_, deskripsi_produk_, harga_, id_toko_, penyimpanan_, berat_, produk_kategori_, gender_, status_tampil_, tipe_, brand_, id_brand_, diskon_);
	set @id_produk = (select id_produk from produk order by id_produk desc limit 1);
	insert into ukuran1 (id_produk, c1, c2, c3, c4, c5, c6, l1, l2, l3, l4, l5, l6, s1, s2, s3, s4, s5, s6) 
values (@id_produk, c1_, c2_, c3_, c4_, c5_, c6_, l1_, l2_, l3_, l4_, l5_, l6_, s1_, s2_, s3_, s4_, s5_, s6_);
select @id_produk as 'id_produk';
END */$$
DELIMITER ;

/* Procedure structure for procedure `tambah_produk_tipe2` */

/*!50003 DROP PROCEDURE IF EXISTS  `tambah_produk_tipe2` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `tambah_produk_tipe2`(nama_produk_ text, deskripsi_produk_ text, harga_ float, id_toko_ int, penyimpanan_ int, berat_ float, produk_kategori_ int, gender_ text, status_tampil_ int,tipe_ int, brand_ text, id_brand_ text, diskon_ float,
u36_ int, u37_ int, u38_ int, u39_ int, u40_ int, u41_ int, u42_ int, u43_ int,u44_ int, u45_ int, u46_ int, u47_ int)
BEGIN
	insert into produk (nama_produk, deskripsi_produk, harga, id_toko, penyimpanan, berat, produk_kategori, gender, status_tampil, tipe, brand, id_brand, diskon) values 
	(nama_produk_, deskripsi_produk_, harga_, id_toko_, penyimpanan_, berat_, produk_kategori_, gender_, status_tampil_, tipe_, brand_, id_brand_, diskon_);
	set @id_produk = (select id_produk from produk order by id_produk desc limit 1);
	insert into ukuran2 (id_produk, u36, u37, u38, u39, u40, u41, u42, u43, u44, u45, u46, u47) 
	values (@id_produk, u36_, u37_, u38_, u39_, u40_, u41_, u42_, u43_, u44_, u45_, u46_, u47_);
	select @id_produk as 'id_produk';
    END */$$
DELIMITER ;

/* Procedure structure for procedure `tambah_produk_tipe3` */

/*!50003 DROP PROCEDURE IF EXISTS  `tambah_produk_tipe3` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `tambah_produk_tipe3`(nama_produk_ text, deskripsi_produk_ text, harga_ float, id_toko_ int, penyimpanan_ int, berat_ float, produk_kategori_ int, gender_ text, status_tampil_ int,tipe_ int, brand_ text, id_brand_ text, diskon_ float,
i27_ float, i28_ float, i29_ float, i30_ float, i31_ float, i32_ float, i33_ float, i34_ float, i35_ float,i36_ float, i37_ float, i38_ float,
w27_ float, w28_ float, w29_ float, w30_ float, w31_ float, w32_ float, w33_ float, w34_ float, w35_ float,w36_ float, w37_ float, w38_ float,
h27_ float, h28_ float, h29_ float, h30_ float, h31_ float, h32_ float, h33_ float, h34_ float, h35_ float,h36_ float, h37_ float, h38_ float,
t27_ float, t28_ float, t29_ float, t30_ float, t31_ float, t32_ float, t33_ float, t34_ float, t35_ float,t36_ float, t37_ float, t38_ float
)
BEGIN
	insert into produk (nama_produk, deskripsi_produk, harga, id_toko, penyimpanan, berat, produk_kategori, gender, status_tampil, tipe, brand, id_brand, diskon) values 
	(nama_produk_, deskripsi_produk_, harga_, id_toko_, penyimpanan_, berat_, produk_kategori_, gender_, status_tampil_, tipe_, brand_, id_brand_, diskon_);
	set @id_produk = (select id_produk from produk order by id_produk desc limit 1);
	insert into ukuran3 (id_produk, i27 , i28 , i29 , i30 , i31 , i32 , i33 , i34 , i35 ,i36 , i37 , i38 ,
	w27 , w28 , w29 , w30 , w31 , w32 , w33 , w34 , w35 ,w36 , w37 , w38 ,
	h27 , h28 , h29 , h30 , h31 , h32 , h33 , h34 , h35 ,h36 , h37 , h38 ,
	t27 , t28 , t29 , t30 , t31 , t32 , t33 , t34 , t35 ,t36 , t37 , t38 
) 
	values (@id_produk, i27_ , i28_ , i29_ , i30_ , i31_ , i32_ , i33_ , i34_ , i35_ ,i36_ , i37_ , i38_ ,
	w27_ , w28_ , w29_ , w30_ , w31_ , w32_ , w33_ , w34_ , w35_ ,w36_ , w37_ , w38_ ,
	h27_ , h28_ , h29_ , h30_ , h31_ , h32_ , h33_ , h34_ , h35_ ,h36_ , h37_ , h38_ ,
	t27_ , t28_ , t29_ , t30_ , t31_ , t32_ , t33_ , t34_ , t35_ ,t36_ , t37_ , t38_ 
);
select @id_produk as 'id_produk';
    END */$$
DELIMITER ;

/* Procedure structure for procedure `tambah_transaksi_trial` */

/*!50003 DROP PROCEDURE IF EXISTS  `tambah_transaksi_trial` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `tambah_transaksi_trial`(nama_transaksi_ text,alamat_transaksi_ text,kontak_transaksi_ text, ukuran_ text,harga_total_ text,id_ text,email_transaksi_ text, kode_pos_transaksi_ text, kota_transaksi_ text)
BEGIN
	INSERT INTO transaksi_trial (nama_transaksi, alamat_transaksi, kontak_transaksi, ukuran, harga_total, email_transaksi, kodepos_transaksi, kota_transaksi,id_produk) values 
	(nama_transaksi_,alamat_transaksi_,kontak_transaksi_,ukuran_,harga_total_, email_transaksi_,kode_pos_transaksi_, kota_transaksi_,id_);
	SELECT nama_toko, email_toko, nomor_rekening_toko, bank FROM toko where id_toko IN
	(SELECT id_toko FROM produk where id_produk = id_);
    END */$$
DELIMITER ;

/* Procedure structure for procedure `tampil_home` */

/*!50003 DROP PROCEDURE IF EXISTS  `tampil_home` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `tampil_home`(id_produk_ int)
BEGIN
	update produk set status_tampil = 1 where id_produk = id_produk_;
END */$$
DELIMITER ;

/* Procedure structure for procedure `vendor_transaksi_trial` */

/*!50003 DROP PROCEDURE IF EXISTS  `vendor_transaksi_trial` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `vendor_transaksi_trial`(id_ text)
BEGIN
	SELECT nama_toko, email_toko, nomor_rekening_toko, bank FROM toko where id_toko IN
	(SELECT id_toko FROM produk where id_produk = id_);
    END */$$
DELIMITER ;

/* Procedure structure for procedure `verify_email` */

/*!50003 DROP PROCEDURE IF EXISTS  `verify_email` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `verify_email`(auth_ text)
BEGIN
	set @check_verify = (SELECT auth FROM authentication WHERE auth=auth_);
	set @nama_user = (SELECT nama_user FROM authentication WHERE auth=auth_);
	set @email_user = (SELECT email_user FROM authentication WHERE auth=auth_);
	set @nomor_telepon_user = (SELECT nomor_telepon_user FROM authentication WHERE auth=auth_);
	set @password_user = (SELECT password_user FROM authentication WHERE auth=auth_);
	IF (isnull(@check_verify)=0) THEN
		call buat_user(@nama_user, @email_user, @nomor_telepon_user, @password_user);
		select 'sukses' as 'status';
	ELSE
		select 'gagal' as 'status';	
	END IF;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `verify_email_member` */

/*!50003 DROP PROCEDURE IF EXISTS  `verify_email_member` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `verify_email_member`(auth_ text)
BEGIN
	set @check_verify = (SELECT memberauth FROM memberauthentication WHERE memberauth=auth_);
	set @nama_member = (SELECT nama_member FROM memberauthentication WHERE memberauth=auth_);
	set @email_member = (SELECT email_member FROM memberauthentication WHERE memberauth=auth_);
	set @nohp_member = (SELECT nohp_member FROM memberauthentication WHERE memberauth=auth_);
	set @alamat_member = (SELECT alamat_member FROM memberauthentication WHERE memberauth=auth_);
	set @password_member = (SELECT password_member FROM memberauthentication WHERE memberauth=auth_);
	set @kodepos = (SELECT kode_pos FROM memberauthentication WHERE memberauth=auth_);
	set @kota = (SELECT kota FROM memberauthentication WHERE memberauth=auth_);
	set @idkota = (SELECT id_kota FROM memberauthentication WHERE memberauth=auth_);
	IF (isnull(@check_verify)=0) THEN
		call buat_user(@nama_member, @email_member, @alamat_member, @nohp_member, @password_member, @kodepos, @kota, @idkota);
		select 'sukses' as 'status';
	ELSE
		select 'gagal' as 'status';	
	END IF;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `verify_email_toko` */

/*!50003 DROP PROCEDURE IF EXISTS  `verify_email_toko` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `verify_email_toko`(auth_ text)
BEGIN
	set @check_verify = (SELECT tokoauth FROM tokoauthentication WHERE tokoauth=auth_);
	set @nama_toko = (SELECT nama_toko FROM tokoauthentication WHERE tokoauth=auth_);
	set @email_toko = (SELECT email_toko FROM tokoauthentication WHERE tokoauth=auth_);
	set @nohp_toko = (SELECT nohp_toko FROM tokoauthentication WHERE tokoauth=auth_);
	set @alamat_toko = (SELECT alamat_toko FROM tokoauthentication WHERE tokoauth=auth_);
	set @password_toko = (SELECT password_toko FROM tokoauthentication WHERE tokoauth=auth_);
	set @nama_owner = (SELECT nama_owner FROM tokoauthentication WHERE tokoauth=auth_);
	set @nomor_teleponowner = (SELECT nomor_teleponowner FROM tokoauthentication WHERE tokoauth=auth_);
	set @website = (SELECT website FROM tokoauthentication WHERE tokoauth=auth_);
	set @alamat = (SELECT alamat FROM tokoauthentication WHERE tokoauth=auth_);
	IF (isnull(@check_verify)=0) THEN
		call buat_toko(@nama_toko, @email_toko, @nama_owner, @nomor_teleponowner, @website, 
			@nohp_toko, @alamat, @password_toko);
		select 'sukses' as 'status';
	ELSE
		select 'gagal' as 'status';	
	END IF;
    END */$$
DELIMITER ;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
