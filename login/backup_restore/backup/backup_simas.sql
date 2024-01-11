
/*---------------------------------------------------------------
  SQL DB BACKUP 17.05.2021 09:46 
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
  `nisn` varchar(30) DEFAULT NULL,
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
  `paud` text DEFAULT NULL,
  `tk` text DEFAULT NULL,
  `status_keluarga` varchar(50) DEFAULT NULL,
  `tinggal` varchar(128) DEFAULT NULL,
  `jarak` varchar(128) DEFAULT NULL,
  `waktu` varchar(128) DEFAULT NULL,
  `nik_ayah` varchar(16) DEFAULT NULL,
  `nama_ayah` varchar(128) DEFAULT NULL,
  `tahun_ayah` year(4) DEFAULT NULL,
  `status_ayah` varchar(128) DEFAULT NULL,
  `pendidikan_ayah` varchar(128) DEFAULT NULL,
  `pekerjaan_ayah` varchar(128) DEFAULT NULL,
  `penghasilan_ayah` varchar(128) DEFAULT NULL,
  `no_hp_ayah` varchar(16) DEFAULT NULL,
  `nik_ibu` varchar(16) DEFAULT NULL,
  `nama_ibu` varchar(128) DEFAULT NULL,
  `tahun_ibu` year(4) DEFAULT NULL,
  `status_ibu` varchar(128) DEFAULT NULL,
  `pendidikan_ibu` varchar(128) DEFAULT NULL,
  `pekerjaan_ibu` varchar(128) DEFAULT NULL,
  `penghasilan_ibu` varchar(128) DEFAULT NULL,
  `no_hp_ibu` varchar(16) DEFAULT NULL,
  `nik_wali` varchar(16) DEFAULT NULL,
  `nama_wali` varchar(128) DEFAULT NULL,
  `tahun_wali` year(4) DEFAULT NULL,
  `pendidikan_wali` varchar(50) DEFAULT NULL,
  `pekerjaan_wali` varchar(50) DEFAULT NULL,
  `penghasilan_wali` varchar(50) DEFAULT NULL,
  `no_hp_wali` varchar(16) DEFAULT NULL,
  `no_ijazah` varchar(128) DEFAULT NULL,
  `no_shun` varchar(128) DEFAULT NULL,
  `no_ujian` varchar(128) DEFAULT NULL,
  `no_kip` varchar(30) DEFAULT NULL,
  `kip` varchar(256) DEFAULT NULL,
  `kk` text DEFAULT 'null',
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
  `konfirmasi` int(1) DEFAULT 0,
  `bayar` varchar(100) DEFAULT NULL,
  `online` int(1) DEFAULT 0,
  `password` text DEFAULT NULL,
  PRIMARY KEY (`id_daftar`),
  UNIQUE KEY `no_daftar` (`no_daftar`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
INSERT INTO `daftar` VALUES   ('1','PPDB2021001',NULL,NULL,'','','0000000000','SHAKYLLA PUTRI RAHMADHANY','','P','Tanjung Selor','2006-11-24','SMPN 1 TANJUNG SELOR','','','',NULL,'Islam','JLN SENGKAWIT GG MANDALA',NULL,NULL,'TANJUNG SELOR HILIR','TANJUNG SELOR','BULUNGAN','KALIMANTAN UTARA','77212','Jalan Kaki','08221146660',NULL,'0','0','30402559','',NULL,'Bersama Orang Tua','','','','','0000',NULL,'','','',NULL,'','','0000',NULL,'','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','1',NULL,NULL,NULL,'2021-04-11','0',NULL,'1','1');
INSERT INTO `daftar` VALUES ('2','PPDB2021002',NULL,NULL,NULL,NULL,'0043331469','NASRULLOH','assets/upload/foto_siswa/siswa57.jpg','P','BALANGSADE','2005-08-22','MTS NURUL MUJAHIDAH NW','',NULL,'',NULL,'Islam','JALAN PERUM PEMDA','','','BUMI RAHAYU','TANJUNG SELOR','BULUNGAN','KALIMANTAN UTARA','77212','Sepeda Motor','081348578986',NULL,'0','0','TIDAK','YA','KANDUNG','Bersama Orang Tua','3','','','AFRIANSYAH','0000',NULL,'','Karyawan Swasta','',NULL,'1975','SUSANTY','0000',NULL,'','Karyawan Swasta','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'assets/upload/kk/kk739.jpeg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','1',NULL,NULL,NULL,'2021-04-11','1',NULL,'1','1');
INSERT INTO `daftar` VALUES ('3','PPDB2021003',NULL,NULL,'','','0058476232','HAERUN NISA','','P','RUHUI RAHAYU','2004-12-27','MTS NURUL MUJAHIDAH NW','1','','',NULL,'Islam','JLN.R.A KARTINI',NULL,NULL,'RUHUI RAHAYU','TANJUNG PALAS UTARA','BULUNGAN','KALIMANTAN UTARA','77212','','085231608150',NULL,'5','5','69977327','',NULL,'Bersama Orang Tua','','','','ROPIKI','0000',NULL,'','Petani','',NULL,'2021','NURUL HASANAH','0000',NULL,'','Petani','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','1',NULL,NULL,NULL,NULL,NULL,NULL,'1','1');
INSERT INTO `daftar` VALUES ('4','PPDB2021004',NULL,NULL,'','','3061295000','NUR NATASYA','','P','TANJUNG SELOR','2006-12-29','MTS NURUL MUJAHIDAH NW','1','','',NULL,'Islam','TANJUNG SELOR HULU',NULL,NULL,'TANJUNG SELOR HULU','','BULUNGAN','KALIMANTAN UTARA','77211','','',NULL,'2','4','69977327','',NULL,'Bersama Orang Tua','','','SD Sederajat','ILIYAS','0000',NULL,'SD Sederajat','','',NULL,'2021','KAMSINA','0000',NULL,'SD Sederajat','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','1',NULL,NULL,NULL,NULL,NULL,NULL,'1','1');
INSERT INTO `daftar` VALUES ('5','PPDB2021005',NULL,NULL,'','','3060141611','MUHAMMAD ARIF MURABBIL ANAM','','L','BERAU','2006-01-08','MTS NURUL MUJAHIDAH NW','1','','',NULL,'Islam','SAMBALIUNG',NULL,NULL,'PESAYAN','SAMBALIUNG','BERAU','KALIMANTAN TIMUR','77371','Jalan Kaki','083153713745',NULL,'5','5','69977327','',NULL,'Bersama Orang Tua','5','1','','','0000',NULL,'','','',NULL,'','','0000',NULL,'','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','1',NULL,NULL,NULL,NULL,NULL,NULL,'1','1');
INSERT INTO `daftar` VALUES ('6','PPDB2021006',NULL,NULL,'6404090910030001','640409190710001','0030956969','INDRA ARIANDI','','L','SEKATAK BENGARA','2003-10-09','MTS NURUL MUJAHIDAH NW','','','',NULL,'Islam','JL.ADU LIMA',NULL,NULL,'','','BULUNGAN','KALIMANTAN UTARA','77212','','',NULL,'2','2','69977327','',NULL,'Bersama Orang Tua','','','SD Sederajat','NONO','0000',NULL,'SD Sederajat','Karyawan Swasta','Kurang dari Rp. 500.000',NULL,'2021','DARMAWATI','0000',NULL,'','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','1',NULL,NULL,NULL,NULL,NULL,NULL,'1','1');
INSERT INTO `daftar` VALUES ('7','PPDB2021007',NULL,NULL,'6404064106050001','6404060610070026','0059265130','RIANTI','','P','Bulungan','2005-06-01','SMP NEGERI 5 TANJUNG PALAS TENGAH','','','',NULL,'Islam','TIAS TANJUNG BUKA',NULL,NULL,'TANJUNG BUKA','TANJUNG PALAS TENGAH','BULUNGAN','KALIMANTAN UTARA','77253','Jalan Kaki','082331984230',NULL,'1','2','69812062','',NULL,'Bersama Orang Tua','15','5','SD Sederajat','RUSLAN','0000',NULL,'SD Sederajat','','Kurang dari Rp. 500.000',NULL,'1972','RUSMINI','0000',NULL,'SD Sederajat','','Tidak Berpenghasilan',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','1',NULL,NULL,NULL,NULL,NULL,NULL,'1','1');
INSERT INTO `daftar` VALUES ('8','PPDB2021008',NULL,NULL,'6404064312010002','6404060805130001','0011445739','NERI LARASWATI','','P','Bulungan','2004-02-11','SMP NEGERI 5 TANJUNG PALAS TENGAH','','','',NULL,'Islam','TIAS TANJUNG BUKA',NULL,NULL,'TANJUNG BUKA','TANJUNG PALAS TENGAH','BULUNGAN','KALIMANTAN UTARA','','Jalan Kaki','085348859625',NULL,'3','5','69812062','',NULL,'Bersama Orang Tua','25','8','SD Sederajat','IDRIS','0000',NULL,'SD Sederajat','','Kurang dari Rp. 500.000',NULL,'1974','NURHAYATI','0000',NULL,'SD Sederajat','Pedagang','Kurang dari Rp. 500.000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','1',NULL,NULL,NULL,NULL,NULL,NULL,'1','1');
INSERT INTO `daftar` VALUES ('9','PPDB2021009',NULL,NULL,'','','','RENALDI AHMAD RIFA`I','','','','0000-00-00','Lainnya','1','','',NULL,'','',NULL,NULL,'','','','','','','',NULL,'0','0','0','',NULL,'','','','','','0000',NULL,'','','',NULL,'','','0000',NULL,'','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','1',NULL,NULL,NULL,NULL,NULL,NULL,'1','1');

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
INSERT INTO `pengumuman` VALUES   ('2','5','Info Aplikasi','<p>Alhamdulillah Tepat Tanggal 1 April 2021, Aplikasi SIMAS Atau Sistem Informasi Madrasah&amp;Sekolah ini Bisa selesai. Semoga Kedepannya Bisa Lebih Baik Lagi</p>','2021-04-01 23:57:01','2');
INSERT INTO `pengumuman` VALUES ('3','5','Info PPDB Online 2021','<p><b>Gelombang Pertama</b> Tanggal 1 April 2021 Sampai 30 Mei 2021 <b>Gelombang Kedua </b>Tanggal 1 Juni Sampai Tanggal 30 Juni 2021</p><p>Note: Pendaftaran Gelombang Pertama Gratis Biaya Pendaftaran dan Biaya Daftar Ulang</p>','2021-04-08 01:30:31','1');

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
INSERT INTO `sekolah` VALUES   ('69977331','MTS NURUL MUJAHIDAH NW','ALAMAT 1','1');

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
  `tgl_pengumuman` date NOT NULL,
  `tgl_tutup` date NOT NULL,
  PRIMARY KEY (`id_setting`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
INSERT INTO `setting` VALUES   ('1','MA Nurul Mujahidah NW Tanjung Selor','1','131265010003','69977331','Swasta','Jalan Salak RT 06 RW 01 Desa Gunung Sari KM 12','Bulungan','Kalimantan Utara','assets/img/logo/logo.png',NULL,'ma52nwkaltara@gmail.com','087854743264','','','087854743264','<p>Untuk Info Pembayaran Bisa di Tulis disini melalui Fitur Setting PPDB</p>','<p><br></p><ol><li>Surat Keterangan Lulus</li><li>Akta Kelahiran</li><li>Kartu Keluarga</li></ol>','Bulungan','Tanjung Selor','ma.nwkaltara.web.id','SOPIAN HADI,S.Kom.I','-','0','assets/img/kop/kop.png','assets/img/logo/logo_ppdb.png','2021-04-10','2021-12-10');

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
  `paud` text DEFAULT NULL,
  `tk` text DEFAULT NULL,
  `status_keluarga` varchar(50) DEFAULT NULL,
  `tinggal` varchar(128) DEFAULT NULL,
  `jarak` varchar(128) DEFAULT NULL,
  `waktu` varchar(128) DEFAULT NULL,
  `nik_ayah` varchar(16) DEFAULT NULL,
  `nama_ayah` varchar(128) DEFAULT NULL,
  `tahun_ayah` year(4) DEFAULT NULL,
  `status_ayah` varchar(128) DEFAULT NULL,
  `pendidikan_ayah` varchar(128) DEFAULT NULL,
  `pekerjaan_ayah` varchar(128) DEFAULT NULL,
  `penghasilan_ayah` varchar(128) DEFAULT NULL,
  `no_hp_ayah` varchar(16) DEFAULT NULL,
  `nik_ibu` varchar(16) DEFAULT NULL,
  `nama_ibu` varchar(128) DEFAULT NULL,
  `tahun_ibu` year(4) DEFAULT NULL,
  `status_ibu` varchar(128) DEFAULT NULL,
  `pendidikan_ibu` varchar(128) DEFAULT NULL,
  `pekerjaan_ibu` varchar(128) DEFAULT NULL,
  `penghasilan_ibu` varchar(128) DEFAULT NULL,
  `no_hp_ibu` varchar(16) DEFAULT NULL,
  `nik_wali` varchar(16) DEFAULT NULL,
  `nama_wali` varchar(128) DEFAULT NULL,
  `tahun_wali` year(4) DEFAULT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=latin1;
INSERT INTO `siswa` VALUES   ('88','0032613269',NULL,'131265010003180013','6101076005010002','','0032613269','ALDI HIDAYAT','assets/upload/foto_siswa/siswa155.jpg','L','Ruhui Rahayu','2002-06-23','','','12','',NULL,'Islam','Jl. Ahmad Yani Ruhui Rahayu','','','Ruhui Rahayu','Tanjung Palas Utara','Bulungan','Kalimanatn Utara','','','',NULL,'0','0','YA','YA','','Bersama Orang Tua','Lebih dari 30 Km','','','Sapruddin','0000',NULL,'','','','','0000','Nurjannah','0000',NULL,'','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','1',NULL,NULL,NULL,NULL,NULL,NULL,'1','0032613269');
INSERT INTO `siswa` VALUES ('89',NULL,NULL,'131265010003200041','6404106005040002','','0020062732','ANANDA AFRIAN','','P','Tanjung Selor','2002-10-25','','','12','',NULL,'','Tanjung Selor',NULL,NULL,'','','Bulungan','Kalimantan Utara','','','',NULL,'0','0','','',NULL,'','','','','Afriansyah','0000',NULL,'','','',NULL,'','','0000',NULL,'','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','1',NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL);
INSERT INTO `siswa` VALUES ('90',NULL,NULL,'131265010003180014','6101126005010002','','0035123199','FATHUL MU\'IN','','L','Kerta buana','2002-12-24','','','12','',NULL,'','tanjung palas utara',NULL,NULL,'','','','','','','',NULL,'0','0','','',NULL,'','','','','Muhammad','0000',NULL,'','','',NULL,'','Hultiah','0000',NULL,'','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','1',NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL);
INSERT INTO `siswa` VALUES ('91',NULL,NULL,'131265010003180016','6404036412010001','64040431803070004','0029241420','FITRI WULANDARI','','P','Karang agung','2003-01-01','','','12','',NULL,'','Karang Agung, Tanjung Plas Utara',NULL,NULL,'Karang Agung','Tanjung Palas Utara','Bulungan','Kalimantan Utara','','','',NULL,'0','0','','',NULL,'','','','','Suwono','0000',NULL,'','','',NULL,'','Mayati','0000',NULL,'','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','1',NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL);
INSERT INTO `siswa` VALUES ('92',NULL,NULL,'131265010003180017','6404061506020001','6404060607090018','0011119946','LALU DARWAHADI KUSUMA','','L','Kuta','2003-04-16','','','12','',NULL,'','Tanjung Buka',NULL,NULL,'Tanjung Buka','Tanjung Palas Tengah','Bulungan','Klaimantan Utara','','','',NULL,'0','0','','',NULL,'','','','','Mamiq Satriawan','0000',NULL,'','','',NULL,'','Inaq Satriawan','0000',NULL,'','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','1',NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL);
INSERT INTO `siswa` VALUES ('93',NULL,NULL,'131265010003180018','6404050101030003','6404051508070105','0031790610','LUTPIANSYAH','','L','Gunung Sari','2002-07-07','','','12','',NULL,'','Jl.Cermai 3 Rt 09 Rw 02 Desa Gunung Sari',NULL,NULL,'Gunung Sari','Tanjung Selor','Bulungan','Kalimantan Utara','','','',NULL,'0','0','','',NULL,'','','','','Aris','0000',NULL,'','','',NULL,'','Wariyem','0000',NULL,'','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','1',NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL);
INSERT INTO `siswa` VALUES ('94',NULL,NULL,'131265010003180021','6404031604030001','6404032105070020','0032613263','MUHAMAD TEDY RIYANTO','','L','Bulungan','2003-04-16','','','12','',NULL,'','Jl. Diponegoro Rt. 05 Rw. 02 Desa Ruhui Rahayu',NULL,NULL,'Ruhui Rahayu','Tanjung Palas Utara','Bulungan','Kalimantan Utara','','','',NULL,'0','0','','',NULL,'','','','','Suharyanto','0000',NULL,'','','',NULL,'','Ginten','0000',NULL,'','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','1',NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL);
INSERT INTO `siswa` VALUES ('95',NULL,NULL,'131265010003180022','6404054707020002','6404051408070082','9728646677','RANI','','P','Gunung Sari','2002-07-07','','','12','',NULL,'','Gunung Sari, Blok B',NULL,NULL,'Gunung Sari','Tanjung Selor','Bulungan','Kalimantan Utara','','','',NULL,'0','0','','',NULL,'','','','','Maharudin','0000',NULL,'','','',NULL,'','Nurhayati','0000',NULL,'','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','1',NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL);
INSERT INTO `siswa` VALUES ('96',NULL,NULL,'131265010003190023','6403031504040001','6403030703080024','0044451499','ABDUL LATIF','','L','Makajang','2004-04-16','MTs Nurul Huda Sambaliung','30410049','11','',NULL,'','Desa Mangkajang RT 04 Kec. Sambaliung,Kab. Berau',NULL,NULL,'Pesayan','Sambaliung','berau','Kalimantan Timur','','','',NULL,'0','0','','',NULL,'','','','','Buniamin','0000',NULL,'','','',NULL,'','Siti Hamidah','0000',NULL,'','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','1',NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL);
INSERT INTO `siswa` VALUES ('97',NULL,NULL,'131265010003190024','6404032408020001','','0021818665','AHMAD SALMAN','','L','Karang Agung','2002-08-24','','','11','',NULL,'','Desa Ruhui Rahayu',NULL,NULL,'','','','Kalimantan Utara','','','',NULL,'0','0','','',NULL,'','','','','Tasehan','0000',NULL,'','','',NULL,'','Bunimah','0000',NULL,'','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','1',NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL);
INSERT INTO `siswa` VALUES ('98',NULL,NULL,'131265010003190026','6404066402040001','','0037436789','BADARIANSYAH','','L','Tanjung Palas','2003-12-26','','','11','',NULL,'','Jalan Sabanar Lama Tanjung Selor',NULL,NULL,'','','','','','','',NULL,'0','0','','',NULL,'','','','','Asbullah','0000',NULL,'','','',NULL,'','Rosmawati','0000',NULL,'','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','1',NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL);
INSERT INTO `siswa` VALUES ('99',NULL,NULL,'131265010003190027','6404055105030003','6404050205050002','0035570648','GINA NOVITA SARI','','P','Gunung Sari','2003-11-11','SMP NEGERI 5 TANJUNG SELOR','','11','',NULL,'','Gunung sari',NULL,NULL,'Gunung Sari','Tanjung Selor','Bulungan','Kalimantan Utara','','','',NULL,'0','0','','',NULL,'','','','','Hardi Rahman','0000',NULL,'','','',NULL,'','Siti Hadijah','0000',NULL,'','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','1',NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL);
INSERT INTO `siswa` VALUES ('100',NULL,NULL,'131265010003190028','6404051505040003','','0042981588','M.ALI SAPUTRA','','L','Gunung Sari','2004-05-15','','','11','',NULL,'','Desa Gunung Sari',NULL,NULL,'','','','','','','',NULL,'0','0','','',NULL,'','','','','Laholong Leco','0000',NULL,'','','',NULL,'','Sapina','0000',NULL,'','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','1',NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL);
INSERT INTO `siswa` VALUES ('101',NULL,NULL,'131265010003200040','6404052508040004','6404052804080000','0043331469','M.DANDI SAPUTRA','','L','Tanjung Selor','2003-07-15','MTS Negeri Tanjung Selor','','11','',NULL,'','Jl.Jendral Sudirman, Tanjung Selor Hulu',NULL,NULL,'','Tanjung Selor Hulu','Bulungan','Kalimantan Utara','','','',NULL,'0','0','','',NULL,'','','','','Kamarianto','0000',NULL,'','','',NULL,'','','0000',NULL,'','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','1',NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL);
INSERT INTO `siswa` VALUES ('102',NULL,NULL,'131265010003190029','6404032105040002','','0043931564','MUHAMAD JAMIL','','L','Ruhui Rahayu','2004-05-21','','','11','',NULL,'','Ruhui Rahayu,',NULL,NULL,'','','','','','','',NULL,'0','0','','',NULL,'','','','','Herman','0000',NULL,'','','',NULL,'','Adiniah','0000',NULL,'','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','1',NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL);
INSERT INTO `siswa` VALUES ('103',NULL,NULL,'131265010003200042','6404056005040002','','0043273450','SARAH ALYA ZALIYANTI','','P','Tanjung Selor','2003-12-10','','','11','',NULL,'','Tanjung selor',NULL,NULL,'','','Bulungan','Kalimantan Utara','','','',NULL,'0','0','','',NULL,'','','','','Ramli','0000',NULL,'','','',NULL,'','','0000',NULL,'','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','1',NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL);
INSERT INTO `siswa` VALUES ('104',NULL,NULL,'131265010003190036','','','0044726680','SITI SOFIYATI MAULA','','P','Peringga Baya','2003-07-13','SMP ISLAM TAHFIZH','69944203','11','',NULL,'','Penyangkar Lombok Timur',NULL,NULL,'Pringga Jurang Utara','Montong Gading','Lombok Timur','NTB','','','',NULL,'0','0','','',NULL,'','','','','H.Afifuddin','0000',NULL,'','','',NULL,'','Hamdiah','0000',NULL,'','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','1',NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL);
INSERT INTO `siswa` VALUES ('105',NULL,NULL,'131265010003190037','6404052012030001','','0035570653','SUKRON ZAILANI','','L','Gunung Sari','2002-09-07','','','11','',NULL,'','Desa Gunung Sari',NULL,NULL,'','','','','','','',NULL,'0','0','','',NULL,'','','','','Sidik','0000',NULL,'','','',NULL,'','Erna mardiana','0000',NULL,'','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','1',NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL);
INSERT INTO `siswa` VALUES ('106',NULL,NULL,'131265010003190038','6473015307030009','6501041306190003','0035571480','ULFA EDA','','P','Tarakan','2004-08-25','MTS NURUL HUDA SAMBALIUNG','','11','',NULL,'','Sajau Hilir',NULL,NULL,'Sajau Hilir','Tanjung Palas Timur','Bulungan','Klaimantan Utara','','','',NULL,'0','0','','',NULL,'','','','','Ambo Upe','0000',NULL,'','','',NULL,'','Ruwaeda','0000',NULL,'','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','1',NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL);
INSERT INTO `siswa` VALUES ('107',NULL,NULL,'131265010003190039','6473015307030009','','0023084267','ZAENUR ARI RAHMAN','','L','Aik Bukak','2004-05-20','','','11','',NULL,'','Desa Gunung Sari',NULL,NULL,'','','','','','','',NULL,'0','0','','',NULL,'','','','','Mansur','0000',NULL,'','','',NULL,'','Zakiyah','0000',NULL,'','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','1',NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL);
INSERT INTO `siswa` VALUES ('108',NULL,NULL,'131265010003200050','6404031100040001','','0052384314','AHMAD SOIM','','L','bulungan','2004-09-11','','','10','',NULL,'','Desa Ruhui Rahayu',NULL,NULL,'','','','','','','',NULL,'0','0','','',NULL,'','','','','','0000',NULL,'','','',NULL,'','','0000',NULL,'','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','1',NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL);
INSERT INTO `siswa` VALUES ('109',NULL,NULL,'131265010003200043','6403035511040001','','0045277128','IRNA DAMAYANTI','','P','Berau','2004-11-15','','','10','',NULL,'','Desa Mangkajang Kec. Sambaliung,Kab. Berau',NULL,NULL,'','','','','','','',NULL,'0','0','','',NULL,'','','','','Rasyid','0000',NULL,'','','',NULL,'','','0000',NULL,'','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','1',NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL);
INSERT INTO `siswa` VALUES ('110',NULL,NULL,'131265010003200051','6404030810030002','6404032105070006','0037593750','M.TOYIBULLOH','','L','Ruhui Rahayu','2003-10-08','','','10','',NULL,'','Jl RA Kartini Desa Ruhui Rahayu',NULL,NULL,'Ruhui Rahayu','Tanjung Palas Utara','Bulungan','Kalimantan Utara','','','',NULL,'0','0','','',NULL,'','','','','Mujahidin','0000',NULL,'','','',NULL,'','Huriyati','0000',NULL,'','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','1',NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL);
INSERT INTO `siswa` VALUES ('111',NULL,NULL,'131265010003200045','6404031505050002','','0059994331','MUHAMMAD RIQI','','L','Ruhui Rahayu','2005-05-15','','','10','',NULL,'','Desa Ruhui Rahayu',NULL,NULL,'','','','','','','',NULL,'0','0','','',NULL,'','','','','','0000',NULL,'','','',NULL,'','','0000',NULL,'','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','1',NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL);
INSERT INTO `siswa` VALUES ('112',NULL,NULL,'131265010003200044','6473032211040007','','0049474598','MUHAMMAD SYAWAL','','L','Tarakan','2004-11-22','','','10','',NULL,'','Tarakan',NULL,NULL,'','','','','','','',NULL,'0','0','','',NULL,'','','','','','0000',NULL,'','','',NULL,'','','0000',NULL,'','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','1',NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL);
INSERT INTO `siswa` VALUES ('113',NULL,NULL,'131265010003200046','6403030811040001','','0043063968','MUHAMMAD WISANG GENI','','L','Berau','2004-11-08','','','10','',NULL,'','Desa Mangkajang Kec. Sambaliung,Kab. Berau',NULL,NULL,'','','','','','','',NULL,'0','0','','',NULL,'','','','','Harjuno','0000',NULL,'','','',NULL,'','','0000',NULL,'','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','1',NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL);
INSERT INTO `siswa` VALUES ('114',NULL,NULL,'131265010003200049','6404056801040001','','0043772793','NISHA RIZKA','','P','Tanjung Selor','2004-01-20','','','10','',NULL,'','Jalan Sabanar Lama Tanjung Selor',NULL,NULL,'','','','','','','',NULL,'0','0','','',NULL,'','','','','','0000',NULL,'','','',NULL,'','','0000',NULL,'','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','1',NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL);
INSERT INTO `siswa` VALUES ('115',NULL,NULL,'131265010003200048','6404045407040002','','0048580491','SUSI HERAWATI','','P','Mangkupadi','2004-07-14','','','10','',NULL,'','Kampung Baru, desa Mangkupadi',NULL,NULL,'','','','','','','',NULL,'0','0','','',NULL,'','','','','','0000',NULL,'','','',NULL,'','','0000',NULL,'','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','1',NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL);
INSERT INTO `siswa` VALUES ('116',NULL,NULL,'131265010003200047','6403036003030002','','0032999763','TRIYA WAHYUNI BR SARAGIH','','P','Kuala','2003-03-20','','','10','',NULL,'','Desa Mangkajang Kec. Sambaliung,Kab. Berau',NULL,NULL,'','','','','','','',NULL,'0','0','','',NULL,'','','','','Samsuri Saragih','0000',NULL,'','','',NULL,'','','0000',NULL,'','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','1',NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL);

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
