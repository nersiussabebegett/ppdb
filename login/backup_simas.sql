
/*---------------------------------------------------------------
  SQL DB BACKUP 03.04.2021 10:21 
  HOST: localhost
  DATABASE: ppdbpro
  TABLES: *
  ---------------------------------------------------------------*/

/*---------------------------------------------------------------
  TABLE: `bayar`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `bayar`;
CREATE TABLE `bayar` (
  `id_bayar` varchar(20) NOT NULL,
  `id_user` int(10) NOT NULL,
  `id_daftar` int(10) NOT NULL,
  `jumlah` int(10) NOT NULL,
  `tgl_bayar` date NOT NULL,
  `keterangan` int(10) DEFAULT NULL,
  `bukti` varchar(50) DEFAULT NULL,
  `verifikasi` int(1) NOT NULL DEFAULT 0,
  `hapus` int(1) DEFAULT NULL,
  PRIMARY KEY (`id_bayar`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
INSERT INTO `bayar` VALUES   ('202004110001','0','346','500000','2020-04-11',NULL,'bukti_transaksi/bukti_202004110001.jpg','1',NULL);
INSERT INTO `bayar` VALUES ('202004110003','0','347','500000','2020-04-11',NULL,'bukti_transaksi/bukti_202004110003.jpg','1',NULL);
INSERT INTO `bayar` VALUES ('202004120001','5','10','2000000','2020-04-12',NULL,NULL,'1',NULL);

/*---------------------------------------------------------------
  TABLE: `biaya`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `biaya`;
CREATE TABLE `biaya` (
  `id_biaya` varchar(50) NOT NULL,
  `nama_biaya` varchar(200) NOT NULL,
  `jumlah` int(10) NOT NULL,
  `status` varchar(200) NOT NULL,
  PRIMARY KEY (`id_biaya`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
INSERT INTO `biaya` VALUES   ('LAINLAIN','Daftar Ulang','500000','1');

/*---------------------------------------------------------------
  TABLE: `daftar`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `daftar`;
CREATE TABLE `daftar` (
  `id_daftar` int(11) NOT NULL AUTO_INCREMENT,
  `no_daftar` varchar(20) DEFAULT NULL,
  `jenis` int(1) DEFAULT NULL,
  `nis` varchar(30) DEFAULT NULL,
  `nik` varchar(30) DEFAULT NULL,
  `no_kk` varchar(30) DEFAULT NULL,
  `nisn` varchar(30) NOT NULL,
  `nama` varchar(128) NOT NULL,
  `foto` varchar(128) NOT NULL,
  `jenkel` varchar(1) DEFAULT NULL,
  `tempat_lahir` varchar(128) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `asal_sekolah` varchar(128) DEFAULT NULL,
  `npsn_asal` varchar(20) DEFAULT NULL,
  `kelas` varchar(11) DEFAULT NULL,
  `jurusan` varchar(11) DEFAULT '',
  `jenjang` varchar(11) DEFAULT NULL,
  `agama` varchar(50) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `rt` varchar(5) DEFAULT NULL,
  `rw` varchar(5) DEFAULT NULL,
  `desa` varchar(128) DEFAULT NULL,
  `kecamatan` varchar(128) DEFAULT NULL,
  `kota` varchar(128) DEFAULT NULL,
  `provinsi` varchar(128) DEFAULT NULL,
  `kode_pos` varchar(6) DEFAULT NULL,
  `transportasi` varchar(128) DEFAULT NULL,
  `no_hp` varchar(16) DEFAULT NULL,
  `email` varchar(128) DEFAULT NULL,
  `anak_ke` int(2) DEFAULT NULL,
  `saudara` int(11) DEFAULT NULL,
  `tinggi` int(3) DEFAULT NULL,
  `berat` int(3) DEFAULT NULL,
  `status_keluarga` varchar(50) DEFAULT NULL,
  `tinggal` varchar(128) DEFAULT NULL,
  `jarak` varchar(128) DEFAULT NULL,
  `waktu` varchar(128) DEFAULT NULL,
  `nik_ayah` varchar(16) DEFAULT NULL,
  `nama_ayah` varchar(128) DEFAULT NULL,
  `tempat_ayah` varchar(128) DEFAULT NULL,
  `tgl_lahir_ayah` date DEFAULT NULL,
  `status_ayah` varchar(128) DEFAULT NULL,
  `pendidikan_ayah` varchar(128) DEFAULT NULL,
  `pekerjaan_ayah` varchar(128) DEFAULT NULL,
  `penghasilan_ayah` varchar(128) DEFAULT NULL,
  `no_hp_ayah` varchar(16) DEFAULT NULL,
  `nik_ibu` varchar(16) DEFAULT NULL,
  `nama_ibu` varchar(128) DEFAULT NULL,
  `tempat_ibu` varchar(128) DEFAULT NULL,
  `tgl_lahir_ibu` date DEFAULT NULL,
  `status_ibu` varchar(128) DEFAULT NULL,
  `pendidikan_ibu` varchar(128) DEFAULT NULL,
  `pekerjaan_ibu` varchar(128) DEFAULT NULL,
  `penghasilan_ibu` varchar(128) DEFAULT NULL,
  `no_hp_ibu` varchar(16) DEFAULT NULL,
  `nik_wali` varchar(16) DEFAULT NULL,
  `nama_wali` varchar(128) DEFAULT NULL,
  `tempat_wali` varchar(128) DEFAULT NULL,
  `tgl_lahir_wali` date DEFAULT NULL,
  `pendidikan_wali` varchar(50) DEFAULT NULL,
  `pekerjaan_wali` varchar(50) DEFAULT NULL,
  `penghasilan_wali` varchar(50) DEFAULT NULL,
  `no_hp_wali` varchar(16) DEFAULT NULL,
  `no_ijazah` varchar(128) DEFAULT NULL,
  `no_shun` varchar(128) DEFAULT NULL,
  `no_ujian` varchar(128) DEFAULT NULL,
  `no_kip` varchar(30) DEFAULT NULL,
  `file_kip` varchar(256) DEFAULT NULL,
  `kk` text DEFAULT NULL,
  `ijazah` varchar(256) DEFAULT NULL,
  `akta` varchar(256) DEFAULT NULL,
  `file_shun` varchar(256) DEFAULT NULL,
  `tgl_keluar` date DEFAULT NULL,
  `alasan_keluar` varchar(100) DEFAULT NULL,
  `surat_keluar` varchar(255) DEFAULT NULL,
  `level` varchar(10) DEFAULT NULL,
  `aktif` int(1) DEFAULT 0,
  `status` int(1) DEFAULT 0,
  `sekolah_tujuan` varchar(10) DEFAULT NULL,
  `npsn_sekolah_tujuan` varchar(10) DEFAULT NULL,
  `tgl_daftar` date DEFAULT NULL,
  `tgl_konfirmasi` date DEFAULT NULL,
  `baju` varchar(10) DEFAULT NULL,
  `bayar` varchar(100) DEFAULT NULL,
  `online` int(1) DEFAULT 0,
  `password` text DEFAULT NULL,
  PRIMARY KEY (`id_daftar`),
  UNIQUE KEY `no_daftar` (`no_daftar`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
INSERT INTO `daftar` VALUES   ('3','PPDB2021001','1',NULL,'6101076005010002','','0032613269','TUGIMAN','default.png','P','Ruhui Rahayu','2002-06-23','','1236',NULL,'TKJ',NULL,'Islam','Jl. Ahmad Yani Ruhui Rahayu','','','Ruhui Rahayu','Tanjung Palas Utara','Bulungan','Kalimanatn Utara','','Sepeda Motor','',NULL,'0','0','0','0','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','0',NULL,NULL,NULL,NULL,NULL,NULL,'1','1');
INSERT INTO `daftar` VALUES ('4','PPDB2021002','1',NULL,'','','111111','ABANG KURNIA','default.png','','BULUNGAN','2021-04-01','SMK 4','1237',NULL,'IPA',NULL,'Islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'082342398998',NULL,'0','0','0','0','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','0',NULL,NULL,NULL,NULL,NULL,NULL,'1','1');
INSERT INTO `daftar` VALUES ('5','PPDB2021003','1',NULL,NULL,NULL,'000123','Contoh2','default.png',NULL,'Tanjung Selor','2021-04-03',NULL,'',NULL,'IPS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','0',NULL,NULL,NULL,NULL,NULL,NULL,'1','1');
INSERT INTO `daftar` VALUES ('6','PPDB2021004','1',NULL,NULL,NULL,'543243','Contoh4','default.png',NULL,'Balangsade','2021-04-03',NULL,NULL,NULL,'IPS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'082342398998',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','0',NULL,NULL,NULL,NULL,NULL,NULL,'1','1');
INSERT INTO `daftar` VALUES ('7','PPDB2021005','1',NULL,NULL,NULL,'765432','Nama 1','default.png',NULL,'BULUNGAN','2021-04-03',NULL,NULL,NULL,'IPS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'082342398998',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','0',NULL,NULL,NULL,NULL,NULL,NULL,'1','1');
INSERT INTO `daftar` VALUES ('8','PPDB2021006','1',NULL,'','','098765','Nasrulloh','default.png','L','Gunung Sari','2021-04-03','',NULL,NULL,'IPS',NULL,'Islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'082342398998',NULL,'0','0','0','0','',NULL,NULL,NULL,'','','','2021-04-03',NULL,'','','','','','','','2021-04-03',NULL,'SD Sederajat','Pedagang','Rp. 500.000 s/d Rp. 999.000','','','','','2021-04-03','','','','',NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','0',NULL,NULL,NULL,NULL,NULL,NULL,'1','1');

/*---------------------------------------------------------------
  TABLE: `guru`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `guru`;
CREATE TABLE `guru` (
  `id_guru` int(11) NOT NULL AUTO_INCREMENT,
  `nisn` varchar(30) NOT NULL,
  `nama` varchar(128) NOT NULL,
  `foto` varchar(128) NOT NULL,
  `jenkel` varchar(1) DEFAULT NULL,
  `tempat_lahir` varchar(128) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `asal_sekolah` varchar(128) DEFAULT NULL,
  `npsn_asal` varchar(20) DEFAULT NULL,
  `kelas` varchar(11) DEFAULT NULL,
  `jurusan` varchar(11) DEFAULT '',
  `jenjang` varchar(11) DEFAULT NULL,
  `agama` varchar(50) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `rt` varchar(5) DEFAULT NULL,
  `rw` varchar(5) DEFAULT NULL,
  `desa` varchar(128) DEFAULT NULL,
  `kecamatan` varchar(128) DEFAULT NULL,
  `kota` varchar(128) DEFAULT NULL,
  `provinsi` varchar(128) DEFAULT NULL,
  `kode_pos` varchar(6) DEFAULT NULL,
  `transportasi` varchar(128) DEFAULT NULL,
  `no_hp` varchar(16) DEFAULT NULL,
  `email` varchar(128) DEFAULT NULL,
  `anak_ke` int(2) DEFAULT NULL,
  `saudara` int(11) DEFAULT NULL,
  `tinggi` int(3) DEFAULT NULL,
  `berat` int(3) DEFAULT NULL,
  `status_keluarga` varchar(50) DEFAULT NULL,
  `tinggal` varchar(128) DEFAULT NULL,
  `jarak` varchar(128) DEFAULT NULL,
  `waktu` varchar(128) DEFAULT NULL,
  `nik_ayah` varchar(16) DEFAULT NULL,
  `nama_ayah` varchar(128) DEFAULT NULL,
  `tempat_ayah` varchar(128) DEFAULT NULL,
  `tgl_lahir_ayah` date DEFAULT NULL,
  `status_ayah` varchar(128) DEFAULT NULL,
  `pendidikan_ayah` varchar(128) DEFAULT NULL,
  `pekerjaan_ayah` varchar(128) DEFAULT NULL,
  `penghasilan_ayah` varchar(128) DEFAULT NULL,
  `no_hp_ayah` varchar(16) DEFAULT NULL,
  `nik_ibu` varchar(16) DEFAULT NULL,
  `nama_ibu` varchar(128) DEFAULT NULL,
  `tempat_ibu` varchar(128) DEFAULT NULL,
  `tgl_lahir_ibu` date DEFAULT NULL,
  `status_ibu` varchar(128) DEFAULT NULL,
  `pendidikan_ibu` varchar(128) DEFAULT NULL,
  `pekerjaan_ibu` varchar(128) DEFAULT NULL,
  `penghasilan_ibu` varchar(128) DEFAULT NULL,
  `no_hp_ibu` varchar(16) DEFAULT NULL,
  `nik_wali` varchar(16) DEFAULT NULL,
  `nama_wali` varchar(128) DEFAULT NULL,
  `tempat_wali` varchar(128) DEFAULT NULL,
  `tgl_lahir_wali` date DEFAULT NULL,
  `pendidikan_wali` varchar(50) DEFAULT NULL,
  `pekerjaan_wali` varchar(50) DEFAULT NULL,
  `penghasilan_wali` varchar(50) DEFAULT NULL,
  `no_hp_wali` varchar(16) DEFAULT NULL,
  `no_ijazah` varchar(128) DEFAULT NULL,
  `no_shun` varchar(128) DEFAULT NULL,
  `no_ujian` varchar(128) DEFAULT NULL,
  `no_kip` varchar(30) DEFAULT NULL,
  `file_kip` varchar(256) DEFAULT NULL,
  `file_kk` varchar(256) DEFAULT NULL,
  `file_ijazah` varchar(256) DEFAULT NULL,
  `file_akte` varchar(256) DEFAULT NULL,
  `file_shun` varchar(256) DEFAULT NULL,
  `tgl_keluar` date DEFAULT NULL,
  `alasan_keluar` varchar(100) DEFAULT NULL,
  `surat_keluar` varchar(255) DEFAULT NULL,
  `level` varchar(10) DEFAULT NULL,
  `aktif` int(1) DEFAULT 0,
  `status` int(1) DEFAULT 0,
  `petugas_guru` varchar(10) DEFAULT NULL,
  `petugas_konfirmasi` varchar(10) DEFAULT NULL,
  `tgl_guru` date DEFAULT NULL,
  `tgl_konfirmasi` date DEFAULT NULL,
  `baju` varchar(10) DEFAULT NULL,
  `bayar` varchar(100) DEFAULT NULL,
  `online` int(1) DEFAULT 0,
  `password` text DEFAULT NULL,
  PRIMARY KEY (`id_guru`)
) ENGINE=InnoDB AUTO_INCREMENT=352 DEFAULT CHARSET=latin1;

/*---------------------------------------------------------------
  TABLE: `histori`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `histori`;
CREATE TABLE `histori` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_permohonan` varchar(30) NOT NULL,
  `nik` int(30) NOT NULL,
  `status` int(1) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `keterangan` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
INSERT INTO `histori` VALUES   ('1','201907070001','123','1','2019-07-07 22:57:31','Silahkan datang ke desa/kelurahan setempat untuk pengumpulan berkas persyaratan permohonan  dan konfirmasi');
INSERT INTO `histori` VALUES ('2','201907070001','0','2','2019-07-08 05:26:33','pemberkasan sedang kami proses silahkan untuk menunggu');
INSERT INTO `histori` VALUES ('4','202004040001','12','1','2020-04-05 01:25:29','Silahkan datang ke desa/kelurahan setempat untuk pengumpulan berkas persyaratan permohonan  dan konfirmasi');
INSERT INTO `histori` VALUES ('5','202004040002','12','1','2020-04-05 01:25:55','Permohonan sudah berhasil masuk, mohon untuk menunggu proses pengecekan data');

/*---------------------------------------------------------------
  TABLE: `jenis`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `jenis`;
CREATE TABLE `jenis` (
  `id_jenis` varchar(50) NOT NULL,
  `nama_jenis` varchar(50) NOT NULL,
  `status` int(1) NOT NULL,
  PRIMARY KEY (`id_jenis`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
INSERT INTO `jenis` VALUES   ('PD','Pindahan','1');
INSERT INTO `jenis` VALUES ('SB','Siswa Baru','1');

/*---------------------------------------------------------------
  TABLE: `jenjang`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `jenjang`;
CREATE TABLE `jenjang` (
  `id_jenjang` varchar(5) NOT NULL,
  `nama_jenjang` varchar(50) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `wali` int(11) NOT NULL,
  PRIMARY KEY (`id_jenjang`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
INSERT INTO `jenjang` VALUES   ('10','Kelas X','1','0');
INSERT INTO `jenjang` VALUES ('11','Kelas XI','1','0');
INSERT INTO `jenjang` VALUES ('12','Kelas XII','1','0');

/*---------------------------------------------------------------
  TABLE: `jurusan`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `jurusan`;
CREATE TABLE `jurusan` (
  `id_jurusan` varchar(50) NOT NULL,
  `nama_jurusan` varchar(100) DEFAULT NULL,
  `kuota` int(10) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  PRIMARY KEY (`id_jurusan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
INSERT INTO `jurusan` VALUES   ('IPA','IPA','200','1');
INSERT INTO `jurusan` VALUES ('IPS','IPS','20','1');

/*---------------------------------------------------------------
  TABLE: `kelas`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `kelas`;
CREATE TABLE `kelas` (
  `id_kelas` varchar(50) NOT NULL,
  `nama_kelas` varchar(100) DEFAULT NULL,
  `kuota` int(10) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  PRIMARY KEY (`id_kelas`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
INSERT INTO `kelas` VALUES   ('10','Kelas X','108','1');
INSERT INTO `kelas` VALUES ('11','Kelas XI','108','1');
INSERT INTO `kelas` VALUES ('12','Kelas XII','108','1');

/*---------------------------------------------------------------
  TABLE: `kontak`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `kontak`;
CREATE TABLE `kontak` (
  `id_kontak` int(11) NOT NULL AUTO_INCREMENT,
  `nama_kontak` varchar(50) DEFAULT NULL,
  `no_kontak` varchar(50) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  PRIMARY KEY (`id_kontak`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
INSERT INTO `kontak` VALUES   ('1','Nasrulloh','081210654096','1');
INSERT INTO `kontak` VALUES ('2','Tugiman','081282656407','1');

/*---------------------------------------------------------------
  TABLE: `pengumuman`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `pengumuman`;
CREATE TABLE `pengumuman` (
  `id_pengumuman` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `judul` varchar(255) DEFAULT NULL,
  `pengumuman` text DEFAULT NULL,
  `tgl` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `jenis` int(1) DEFAULT 0,
  PRIMARY KEY (`id_pengumuman`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
INSERT INTO `pengumuman` VALUES   ('2','5','Info Aplikasi','<p>Alhamdulillah Tepat Tanggal 1 April 2021, Aplikasi SIMAS Atau Sistem Informasi Madrasah&amp;Sekolah ini Bisa selesai. Semoga Kedepannya Bisa Lebih Baik Lagi</p>','2021-04-01 23:57:01','2');

/*---------------------------------------------------------------
  TABLE: `sekolah`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `sekolah`;
CREATE TABLE `sekolah` (
  `npsn` varchar(16) NOT NULL,
  `nama_sekolah` varchar(50) DEFAULT NULL,
  `alamat` varchar(50) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  PRIMARY KEY (`npsn`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
INSERT INTO `sekolah` VALUES   ('1235','SMK 2','ALAMAT 2','1');
INSERT INTO `sekolah` VALUES ('1236','SMK 3','ALAMAT 3','1');
INSERT INTO `sekolah` VALUES ('1237','SMK 4','ALAMAT 4','1');
INSERT INTO `sekolah` VALUES ('1238','SMK 5','ALAMAT 5','1');
INSERT INTO `sekolah` VALUES ('1239','SMK 6','ALAMAT 6','1');
INSERT INTO `sekolah` VALUES ('1240','SMK 7','ALAMAT 7','1');
INSERT INTO `sekolah` VALUES ('1241','SMK 8','ALAMAT 8','1');

/*---------------------------------------------------------------
  TABLE: `setting`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `setting`;
CREATE TABLE `setting` (
  `id_setting` int(1) NOT NULL,
  `nama_sekolah` varchar(100) NOT NULL,
  `jenjang` int(11) NOT NULL,
  `nsm` varchar(30) NOT NULL,
  `npsn` varchar(30) DEFAULT NULL,
  `status` text NOT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `kota` varchar(30) DEFAULT NULL,
  `provinsi` varchar(30) DEFAULT NULL,
  `logo` varchar(50) DEFAULT NULL,
  `favicon` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `no_telp` varchar(50) DEFAULT NULL,
  `klikchat` text DEFAULT NULL,
  `livechat` text DEFAULT NULL,
  `nolivechat` varchar(50) DEFAULT NULL,
  `infobayar` text DEFAULT NULL,
  `syarat` text DEFAULT NULL,
  `kab` text NOT NULL,
  `kec` text NOT NULL,
  `web` text NOT NULL,
  `kepala` text NOT NULL,
  `nip` text NOT NULL,
  `ppdb` text DEFAULT NULL,
  `kop` varchar(50) NOT NULL,
  `logo_ppdb` varchar(100) NOT NULL,
  PRIMARY KEY (`id_setting`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
INSERT INTO `setting` VALUES   ('1','MA Nurul Mujahidah NW Tanjung Selor','1','131265010003','69977331','Swasta','Jalan Salak RT 06 RW 01 Desa Gunung Sari KM 12','Bulungan','Kalimantan Utara','assets/img/logo/logo.png',NULL,'ma52nwkaltara@gmail.com','087854743264','Assalamualaikum%2525252525252525252525252525252525252525252525252Bselamat%2525252525252525252525252525252525252525252525252Bsiang','Assalamualaikum%252525252525252525252525252525252525252525252525252C%2525252525252525252525252525252525252525252525252Bmohon%2525252525252525252525252525252525252525252525252Binfo%2525252525252525252525252525252525252525252525252Bpendaftaran','087854743264','<p>Silahkan melakukan proses pembayaran melalui No Rekening dibawah ini :</p><p>0000000000000</p><p>A/N SMK HS AGUNG</p><p>BANK NASIONAL INDONESIA</p><p>Setelah melakukan proses pembayaran harap konfirmasikan pembayaran di menu tambah pembayaran.</p><p>setelah itu akan dilakukan pengechekan oleh Panitia PPDB SMK HS AGUNG.</p>','<p>Syarat Pendaftaran</p>','Bulungan','Tanjung Selor','ma.nwkaltara.or.id','SOPIAN HADI,S.Kom.I','-','1','assets/img/kop/kop.png','assets/img/logo/logo_ppdb.png');

/*---------------------------------------------------------------
  TABLE: `siswa`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `siswa`;
CREATE TABLE `siswa` (
  `id_siswa` int(11) NOT NULL AUTO_INCREMENT,
  `no_siswa` varchar(20) DEFAULT NULL,
  `jenis` int(1) DEFAULT NULL,
  `nis` varchar(30) DEFAULT NULL,
  `nik` varchar(30) DEFAULT NULL,
  `no_kk` varchar(30) DEFAULT NULL,
  `nisn` varchar(30) NOT NULL,
  `nama` varchar(128) NOT NULL,
  `foto` varchar(128) NOT NULL,
  `jenkel` varchar(1) DEFAULT NULL,
  `tempat_lahir` varchar(128) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `asal_sekolah` varchar(128) DEFAULT NULL,
  `npsn_asal` varchar(20) DEFAULT NULL,
  `kelas` varchar(11) DEFAULT NULL,
  `jurusan` varchar(11) DEFAULT '',
  `jenjang` varchar(11) DEFAULT NULL,
  `agama` varchar(50) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `rt` varchar(5) DEFAULT NULL,
  `rw` varchar(5) DEFAULT NULL,
  `desa` varchar(128) DEFAULT NULL,
  `kecamatan` varchar(128) DEFAULT NULL,
  `kota` varchar(128) DEFAULT NULL,
  `provinsi` varchar(128) DEFAULT NULL,
  `kode_pos` varchar(6) DEFAULT NULL,
  `transportasi` varchar(128) DEFAULT NULL,
  `no_hp` varchar(16) DEFAULT NULL,
  `email` varchar(128) DEFAULT NULL,
  `anak_ke` int(2) DEFAULT NULL,
  `saudara` int(11) DEFAULT NULL,
  `tinggi` int(3) DEFAULT NULL,
  `berat` int(3) DEFAULT NULL,
  `status_keluarga` varchar(50) DEFAULT NULL,
  `tinggal` varchar(128) DEFAULT NULL,
  `jarak` varchar(128) DEFAULT NULL,
  `waktu` varchar(128) DEFAULT NULL,
  `nik_ayah` varchar(16) DEFAULT NULL,
  `nama_ayah` varchar(128) DEFAULT NULL,
  `tempat_ayah` varchar(128) DEFAULT NULL,
  `tgl_lahir_ayah` date DEFAULT NULL,
  `status_ayah` varchar(128) DEFAULT NULL,
  `pendidikan_ayah` varchar(128) DEFAULT NULL,
  `pekerjaan_ayah` varchar(128) DEFAULT NULL,
  `penghasilan_ayah` varchar(128) DEFAULT NULL,
  `no_hp_ayah` varchar(16) DEFAULT NULL,
  `nik_ibu` varchar(16) DEFAULT NULL,
  `nama_ibu` varchar(128) DEFAULT NULL,
  `tempat_ibu` varchar(128) DEFAULT NULL,
  `tgl_lahir_ibu` date DEFAULT NULL,
  `status_ibu` varchar(128) DEFAULT NULL,
  `pendidikan_ibu` varchar(128) DEFAULT NULL,
  `pekerjaan_ibu` varchar(128) DEFAULT NULL,
  `penghasilan_ibu` varchar(128) DEFAULT NULL,
  `no_hp_ibu` varchar(16) DEFAULT NULL,
  `nik_wali` varchar(16) DEFAULT NULL,
  `nama_wali` varchar(128) DEFAULT NULL,
  `tempat_wali` varchar(128) DEFAULT NULL,
  `tgl_lahir_wali` date DEFAULT NULL,
  `pendidikan_wali` varchar(50) DEFAULT NULL,
  `pekerjaan_wali` varchar(50) DEFAULT NULL,
  `penghasilan_wali` varchar(50) DEFAULT NULL,
  `no_hp_wali` varchar(16) DEFAULT NULL,
  `no_ijazah` varchar(128) DEFAULT NULL,
  `no_shun` varchar(128) DEFAULT NULL,
  `no_ujian` varchar(128) DEFAULT NULL,
  `no_kip` varchar(30) DEFAULT NULL,
  `file_kip` varchar(256) DEFAULT NULL,
  `file_kk` varchar(256) DEFAULT NULL,
  `file_ijazah` varchar(256) DEFAULT NULL,
  `surat_masuk` varchar(256) DEFAULT NULL,
  `tgl_masuk` date DEFAULT NULL,
  `tgl_keluar` date DEFAULT NULL,
  `alasan_keluar` varchar(100) DEFAULT NULL,
  `surat_keluar` varchar(255) DEFAULT NULL,
  `level` varchar(10) DEFAULT NULL,
  `aktif` int(1) DEFAULT 0,
  `status` int(1) DEFAULT 0,
  `petugas_siswa` varchar(10) DEFAULT NULL,
  `petugas_konfirmasi` varchar(10) DEFAULT NULL,
  `tgl_siswa` date DEFAULT NULL,
  `tgl_konfirmasi` date DEFAULT NULL,
  `baju` varchar(10) DEFAULT NULL,
  `bayar` varchar(100) DEFAULT NULL,
  `online` int(1) DEFAULT 0,
  `password` text DEFAULT NULL,
  PRIMARY KEY (`id_siswa`),
  UNIQUE KEY `no_siswa` (`no_siswa`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=latin1;
INSERT INTO `siswa` VALUES   ('3','0032613269',NULL,'131265010003180013','6101076005010002','','0032613269','ALDI HIDAYAT','','L','Ruhui Rahayu','2002-06-23','','','12','',NULL,'Islam','Jl. Ahmad Yani Ruhui Rahayu','','','Ruhui Rahayu','Tanjung Palas Utara','Bulungan','Kalimanatn Utara','','','',NULL,'0','0','0','0','','Bersama Orang Tua','','','','Sapruddin','','2021-03-30',NULL,'','','','','','Nurjannah','','2021-04-01',NULL,'','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','1',NULL,NULL,NULL,NULL,NULL,NULL,'1','0032613269');
INSERT INTO `siswa` VALUES ('4',NULL,NULL,'131265010003200041','6404106005040002','','0020062732','ANANDA AFRIAN','','P','Tanjung Selor','2002-10-25','','','12','',NULL,NULL,'Tanjung Selor',NULL,NULL,'','','Bulungan','Kalimantan Utara',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','Afriansyah',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','1',NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL);
INSERT INTO `siswa` VALUES ('5',NULL,NULL,'131265010003180014','6101126005010002','','0035123199','FATHUL MU\'IN','','L','Kerta buana','2002-12-24','','','12','',NULL,NULL,'tanjung palas utara',NULL,NULL,'','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','Muhammad',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','Hultiah',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','1',NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL);
INSERT INTO `siswa` VALUES ('6',NULL,NULL,'131265010003180016','6404036412010001','64040431803070004','0029241420','FITRI WULANDARI','','P','Karang agung','2003-01-01','','','12','',NULL,NULL,'Karang Agung, Tanjung Plas Utara',NULL,NULL,'Karang Agung','Tanjung Palas Utara','Bulungan','Kalimantan Utara',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'6404030107740032','Suwono',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'6404034107760024','Mayati',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','1',NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL);
INSERT INTO `siswa` VALUES ('7',NULL,NULL,'131265010003180017','6404061506020001','6404060607090018','0011119946','LALU DARWAHADI KUSUMA','','L','Kuta','2003-04-16','','','12','',NULL,NULL,'Tanjung Buka',NULL,NULL,'Tanjung Buka','Tanjung Palas Tengah','Bulungan','Klaimantan Utara',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'6404063112500004','Mamiq Satriawan',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'6404067112740003','Inaq Satriawan',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','1',NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL);
INSERT INTO `siswa` VALUES ('8',NULL,NULL,'131265010003180018','6404050101030003','6404051508070105','0031790610','LUTPIANSYAH','','L','Gunung Sari','2002-07-07','','','12','',NULL,NULL,'Jl.Cermai 3 Rt 09 Rw 02 Desa Gunung Sari',NULL,NULL,'Gunung Sari','Tanjung Selor','Bulungan','Kalimantan Utara',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'6404050107690147','Aris',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'6404054107700153','Wariyem',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','1',NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL);
INSERT INTO `siswa` VALUES ('9',NULL,NULL,'131265010003180021','6404031604030001','6404032105070020','0032613263','MUHAMAD TEDY RIYANTO','','L','Bulungan','2003-04-16','','','12','',NULL,NULL,'Jl. Diponegoro Rt. 05 Rw. 02 Desa Ruhui Rahayu',NULL,NULL,'Ruhui Rahayu','Tanjung Palas Utara','Bulungan','Kalimantan Utara',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'6404030605760001','Suharyanto',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'6404036705680002','Ginten',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','1',NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL);
INSERT INTO `siswa` VALUES ('10',NULL,NULL,'131265010003180022','6404054707020002','6404051408070082','9728646677','RANI','','P','Gunung Sari','2002-07-07','','','12','',NULL,NULL,'Gunung Sari, Blok B',NULL,NULL,'Gunung Sari','Tanjung Selor','Bulungan','Kalimantan Utara',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'6404050903720002','Maharudin',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'6404054505840005','Nurhayati',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','1',NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL);
INSERT INTO `siswa` VALUES ('11',NULL,NULL,'131265010003190023','6403031504040001','6403030703080024','0044451499','ABDUL LATIF','','L','Makajang','2004-04-16','MTs Nurul Huda Sambaliung','30410049','11','',NULL,NULL,'Desa Mangkajang RT 04 Kec. Sambaliung,Kab. Berau',NULL,NULL,'Pesayan','Sambaliung','berau','Kalimantan Timur',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'6400303170866000','Buniamin',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'6403034205710001','Siti Hamidah',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','1',NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL);
INSERT INTO `siswa` VALUES ('12',NULL,NULL,'131265010003190024','6404032408020001','','0021818665','AHMAD SALMAN','','L','Karang Agung','2002-08-24','','','11','',NULL,NULL,'Desa Ruhui Rahayu',NULL,NULL,'','','','Kalimantan Utara',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','Tasehan',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','Bunimah',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','1',NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL);
INSERT INTO `siswa` VALUES ('13',NULL,NULL,'131265010003190026','6404066402040001','','0037436789','BADARIANSYAH','','L','Tanjung Palas','2003-12-26','','','11','',NULL,NULL,'Jalan Sabanar Lama Tanjung Selor',NULL,NULL,'','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','Asbullah',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','Rosmawati',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','1',NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL);
INSERT INTO `siswa` VALUES ('14',NULL,NULL,'131265010003190027','6404055105030003','6404050205050002','0035570648','GINA NOVITA SARI','','P','Gunung Sari','2003-11-11','SMP NEGERI 5 TANJUNG SELOR','','11','',NULL,NULL,'Gunung sari',NULL,NULL,'Gunung Sari','Tanjung Selor','Bulungan','Kalimantan Utara',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'6404051110740001','Hardi Rahman',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'6404055008740001','Siti Hadijah',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','1',NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL);
INSERT INTO `siswa` VALUES ('15',NULL,NULL,'131265010003190028','6404051505040003','','0042981588','M.ALI SAPUTRA','','L','Gunung Sari','2004-05-15','','','11','',NULL,NULL,'Desa Gunung Sari',NULL,NULL,'','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','Laholong Leco',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','Sapina',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','1',NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL);
INSERT INTO `siswa` VALUES ('16',NULL,NULL,'131265010003200040','6404052508040004','6404052804080000','0043331469','M.DANDI SAPUTRA','','L','Tanjung Selor','2003-07-15','MTS Negeri Tanjung Selor','','11','',NULL,NULL,'Jl.Jendral Sudirman, Tanjung Selor Hulu',NULL,NULL,'','Tanjung Selor Hulu','Bulungan','Kalimantan Utara',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','Kamarianto',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','1',NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL);
INSERT INTO `siswa` VALUES ('17',NULL,NULL,'131265010003190029','6404032105040002','','0043931564','MUHAMAD JAMIL','','L','Ruhui Rahayu','2004-05-21','','','11','',NULL,NULL,'Ruhui Rahayu,',NULL,NULL,'','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','Herman',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','Adiniah',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','1',NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL);
INSERT INTO `siswa` VALUES ('18',NULL,NULL,'131265010003200042','6404056005040002','','0043273450','SARAH ALYA ZALIYANTI','','P','Tanjung Selor','2003-12-10','','','11','',NULL,NULL,'Tanjung selor',NULL,NULL,'','','Bulungan','Kalimantan Utara',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','Ramli',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','1',NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL);
INSERT INTO `siswa` VALUES ('19',NULL,NULL,'131265010003190036','','','0044726680','SITI SOFIYATI MAULA','','P','Peringga Baya','2003-07-13','SMP ISLAM TAHFIZH','69944203','11','',NULL,NULL,'Penyangkar Lombok Timur',NULL,NULL,'Pringga Jurang Utara','Montong Gading','Lombok Timur','NTB',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','H.Afifuddin',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','Hamdiah',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','1',NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL);
INSERT INTO `siswa` VALUES ('20',NULL,NULL,'131265010003190037','6404052012030001','','0035570653','SUKRON ZAILANI','','L','Gunung Sari','2002-09-07','','','11','',NULL,NULL,'Desa Gunung Sari',NULL,NULL,'','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','Sidik',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','Erna mardiana',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','1',NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL);
INSERT INTO `siswa` VALUES ('21',NULL,NULL,'131265010003190038','6473015307030009','6501041306190003','0035571480','ULFA EDA','','P','Tarakan','2004-08-25','MTS NURUL HUDA SAMBALIUNG','','11','',NULL,NULL,'Sajau Hilir',NULL,NULL,'Sajau Hilir','Tanjung Palas Timur','Bulungan','Klaimantan Utara',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','Ambo Upe',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'6473015302780003','Ruwaeda',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','1',NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL);
INSERT INTO `siswa` VALUES ('22',NULL,NULL,'131265010003190039','6473015307030009','','0023084267','ZAENUR ARI RAHMAN','','L','Aik Bukak','2004-05-20','','','11','',NULL,NULL,'Desa Gunung Sari',NULL,NULL,'','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','Mansur',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','Zakiyah',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','1',NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL);
INSERT INTO `siswa` VALUES ('23',NULL,NULL,'131265010003200050','6404031100040001','','0052384314','AHMAD SOIM','','L','bulungan','2004-09-11','','','10','',NULL,NULL,'Desa Ruhui Rahayu',NULL,NULL,'','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','1',NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL);
INSERT INTO `siswa` VALUES ('24',NULL,NULL,'131265010003200043','6403035511040001','','0045277128','IRNA DAMAYANTI','','P','Berau','2004-11-15','','','10','',NULL,NULL,'Desa Mangkajang Kec. Sambaliung,Kab. Berau',NULL,NULL,'','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','Rasyid',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','1',NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL);
INSERT INTO `siswa` VALUES ('25',NULL,NULL,'131265010003200051','6404030810030002','6404032105070006','0037593750','M.TOYIBULLOH','','L','Ruhui Rahayu','2003-10-08','','','10','',NULL,NULL,'Jl RA Kartini Desa Ruhui Rahayu',NULL,NULL,'Ruhui Rahayu','Tanjung Palas Utara','Bulungan','Kalimantan Utara',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'6404030101710001','Mujahidin',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','Huriyati',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','1',NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL);
INSERT INTO `siswa` VALUES ('26',NULL,NULL,'131265010003200045','6404031505050002','','0059994331','MUHAMMAD RIQI','','L','Ruhui Rahayu','2005-05-15','','','10','',NULL,NULL,'Desa Ruhui Rahayu',NULL,NULL,'','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','1',NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL);
INSERT INTO `siswa` VALUES ('27',NULL,NULL,'131265010003200044','6473032211040007','','0049474598','MUHAMMAD SYAWAL','','L','Tarakan','2004-11-22','','','10','',NULL,NULL,'Tarakan',NULL,NULL,'','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','1',NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL);
INSERT INTO `siswa` VALUES ('28',NULL,NULL,'131265010003200046','6403030811040001','','0043063968','MUHAMMAD WISANG GENI','','L','Berau','2004-11-08','','','10','',NULL,NULL,'Desa Mangkajang Kec. Sambaliung,Kab. Berau',NULL,NULL,'','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','Harjuno',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','1',NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL);
INSERT INTO `siswa` VALUES ('29',NULL,NULL,'131265010003200049','6404056801040001','','0043772793','NISHA RIZKA','','P','Tanjung Selor','2004-01-20','','','10','',NULL,NULL,'Jalan Sabanar Lama Tanjung Selor',NULL,NULL,'','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','1',NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL);
INSERT INTO `siswa` VALUES ('30',NULL,NULL,'131265010003200048','6404045407040002','','0048580491','SUSI HERAWATI','','P','Mangkupadi','2004-07-14','','','10','',NULL,NULL,'Kampung Baru, desa Mangkupadi',NULL,NULL,'','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','1',NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL);
INSERT INTO `siswa` VALUES ('31',NULL,NULL,'131265010003200047','6403036003030002','','0032999763','TRIYA WAHYUNI BR SARAGIH','','P','Kuala','2003-03-20','','','10','',NULL,NULL,'Desa Mangkajang Kec. Sambaliung,Kab. Berau',NULL,NULL,'','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','Samsuri Saragih',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','1',NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL);

/*---------------------------------------------------------------
  TABLE: `user`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `nama_user` varchar(128) NOT NULL,
  `level` varchar(128) NOT NULL,
  `username` varchar(128) NOT NULL,
  `password` text NOT NULL,
  `status` int(1) NOT NULL,
  `foto` int(11) NOT NULL,
  `mapel` text NOT NULL,
  `nuptk` text NOT NULL,
  `jenkel` varchar(20) NOT NULL,
  `tempat_lahir` text NOT NULL,
  `tgl_lahir` date NOT NULL,
  `tmt` year(4) NOT NULL,
  `no_sk` text NOT NULL,
  `jenis` text NOT NULL,
  `no_hp` varchar(20) NOT NULL,
  `nik` int(11) NOT NULL,
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `id_user` (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=latin1;
INSERT INTO `user` VALUES   ('5','NASRULLOH','admin','admin','$2y$10$j5STRMVkhno25h93TJGDUupdr4L7CDEQQZCOwyFyqFO5QfCteP3H.','1','0','','','','','0000-00-00','0000','','','','0');
INSERT INTO `user` VALUES ('54','KHAIRUL FATHI,QH','gtk','fathi','$2y$10$zY60mlQ4BHJPs3APwaALkuyQSl7n8Ghdzn/hqvavcnj0f4gATOn1u','1','0','','','L','','2021-04-02','2018','','','','0');
INSERT INTO `user` VALUES ('45','SOPIAN HADI,S.Kom.I','gtk','guru1','$2y$10$a1IrEP3N.6x1rGF2A7mbMOavsQXqOH3QAL1QVrgA089nTn575ta7q','1','0','','','L','','2021-04-02','2017','','','','0');
INSERT INTO `user` VALUES ('46','H. SUKRI IRWAN QH.,S.Pd.I','gtk','guru2','$2y$10$N1pBOvg0gUqbdV.JEuRDyeam/IJUHHtlyTWF287ZyrhTKqZv5dCzm','1','0','','','L','','2021-04-02','2017','','','','0');
INSERT INTO `user` VALUES ('47','M.ZAINUL MI`ROJI,QH.,S.Pd.I','gtk','guru3','$2y$10$1bLHOX8jJGLLECow/fdhzOBUNFsLZJz7hZAWCovfY5PAmPimopYvK','1','0','','','L','','2021-04-02','2017','','','','0');
INSERT INTO `user` VALUES ('48','HILMIATI,QH.,S.Pd.I','gtk','guru4','$2y$10$9zTTzevsikGmUybD0ZzikenzlV2nZPdXqx3KFlJMXPi2wDuCxrp0G','1','0','','','P','','2021-04-02','2017','','','','0');
INSERT INTO `user` VALUES ('49','FATIMATUZZAHROH,S.Pd','gtk','guru5','$2y$10$i1lODCivKN9vyPLOfLbCgu66a/i73hEg66rOESAnOCgwioIScg9VW','1','0','','','P','','2021-04-02','2018','','','','0');
INSERT INTO `user` VALUES ('50','RIANA FETRININGRUM,S.Pd','gtk','guru6','$2y$10$IKGYg7q9sETv6NVELqRA5OMh8eAx4g0GqecVhxUu3R.NmiKiFWSDO','1','0','','','P','','2021-04-02','2017','','','','0');
INSERT INTO `user` VALUES ('51','AGUNG SUTRISNO,S.Pd','gtk','guru7','$2y$10$spFuQwH2wVQYoQneRUSWleJs3ONIZOowPxKrwaVzrdlzOrz3nm4Su','1','0','','','L','','2021-04-02','2018','','','','0');
INSERT INTO `user` VALUES ('52','SRI WAHYUDIANI,S.Pd','gtk','guru8','$2y$10$0/CqnxvE96eYhoMRJH1NFObjUUhdVfk0NdtmzxJqM/h.mH/utMmpG','1','0','','','P','','2021-04-02','2020','','','','0');
INSERT INTO `user` VALUES ('57','HAMIRI,S.Pd','gtk','hamiri','$2y$10$rd6vFag7wC9I.xNUtNDHiecSLzS3K6qM61O3vmh7DdFnfWzE.40s2','1','0','','','L','','2021-04-02','2020','','','','0');
INSERT INTO `user` VALUES ('59','JAMUDDIN,QH.,S.Pd.I','gtk','jam','$2y$10$nbo6suJmE84.hww5PPIHB.WGwKr5ajdqLJEzC3dcB/QT9jXErf4uK','1','0','','','L','','0000-00-00','2019','','','','0');
INSERT INTO `user` VALUES ('4','SOPIAN HADI,S.Kom.I','kepala','kepala','$2y$10$69q8OgLIu6S2OdXGJpUaw.Y04JwyKH9gtAvMBcT127P7PF/ZiCefm','1','0','','','','','0000-00-00','0000','','','','0');
INSERT INTO `user` VALUES ('61','MARTIN RENO WIJOYO,S.Kom','gtk','martin','$2y$10$vOY/AYWhztmGOsbMcjgLbelA2r9rynnZFGN4wa7b1G2hQor75dMpG','1','0','','','L','','0000-00-00','2021','','','','0');
INSERT INTO `user` VALUES ('55','NASRULLOH','gtk','nas','$2y$10$1L4gQWfHN2p5arhvzfpB.eJPBxW7YlRbBtg9HiPkTl4vMVj5TikCi','1','0','','','L','','0000-00-00','2018','','','','0');
INSERT INTO `user` VALUES ('56','SITI RAUHUN,QH','gtk','R','$2y$10$OGUztJNGog9zdDxAd/SM7eKgeNVOOVUQc2Mk3ZviHE7/Swgyb95Si','1','0','','','P','','0000-00-00','2020','','','','0');
INSERT INTO `user` VALUES ('58','SITI RAEHANUN,QH.,S.Pd.I','gtk','rae','$2y$10$EdO8QvbnH3Ilx.KPKrQAKOZSOYaaQU0ZD62SRBKdTFDPsJWoERS9W','1','0','','','P','','0000-00-00','2020','','','','0');
INSERT INTO `user` VALUES ('60','RIZQI ULVATURROHMI,S.Pd','gtk','rizki','$2y$10$IbzeE5VHBLMd1PLHl2aqTe0dBZj9VOrU/.dhNln5Vejkc4/9naCme','1','0','','','P','','0000-00-00','2020','','','','0');
INSERT INTO `user` VALUES ('53','WINA LAELA,S.Pd','gtk','wina','$2y$10$.udnKVKDrNnOr480t4HT8uV64MzZMJ5nZuD9LyvHHuI11zKIDMaHG','1','0','','','P','','0000-00-00','2018','','','','0');
