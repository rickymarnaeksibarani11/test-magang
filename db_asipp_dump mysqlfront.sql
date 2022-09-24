# Host: localhost  (Version 5.7.33)
# Date: 2022-05-22 12:57:30
# Generator: MySQL-Front 6.1  (Build 1.26)


#
# Structure for table "migrations"
#

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

#
# Data for table "migrations"
#


#
# Structure for table "password_resets"
#

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

#
# Data for table "password_resets"
#


#
# Structure for table "tb_berita"
#

DROP TABLE IF EXISTS `tb_berita`;
CREATE TABLE `tb_berita` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `judul` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `gambar` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isi` text COLLATE utf8_unicode_ci NOT NULL,
  `tanggal` date NOT NULL,
  `id_user` bigint(20) NOT NULL,
  `view` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

#
# Data for table "tb_berita"
#


#
# Structure for table "tb_histori_akses"
#

DROP TABLE IF EXISTS `tb_histori_akses`;
CREATE TABLE `tb_histori_akses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

#
# Data for table "tb_histori_akses"
#


#
# Structure for table "tb_laporan_akhir_penelitian"
#

DROP TABLE IF EXISTS `tb_laporan_akhir_penelitian`;
CREATE TABLE `tb_laporan_akhir_penelitian` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `judul_penelitian` bigint(11) NOT NULL,
  `lama_penelitian` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `lama_penelitian_riil` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `file` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `jenis_luaran` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `jenis_luaran1` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `jenis_luaran2` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `jenis_luaran3` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `luaran` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `id_dosen` bigint(20) NOT NULL,
  `tanggal` date NOT NULL,
  `status` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

#
# Data for table "tb_laporan_akhir_penelitian"
#


#
# Structure for table "tb_laporan_akhir_pengabmas"
#

DROP TABLE IF EXISTS `tb_laporan_akhir_pengabmas`;
CREATE TABLE `tb_laporan_akhir_pengabmas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `judul_pengabmas` bigint(11) NOT NULL,
  `lama_pengabmas` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `lama_pengabmas_riil` int(11) NOT NULL,
  `file` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `jenis_luaran` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `jenis_luaran1` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `jenis_luaran2` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `jenis_luaran3` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `luaran` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `id_dosen` bigint(20) NOT NULL,
  `tanggal` date NOT NULL,
  `status` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

#
# Data for table "tb_laporan_akhir_pengabmas"
#


#
# Structure for table "tb_laporan_kemajuan_penelitian"
#

DROP TABLE IF EXISTS `tb_laporan_kemajuan_penelitian`;
CREATE TABLE `tb_laporan_kemajuan_penelitian` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `judul_penelitian` bigint(11) NOT NULL,
  `presentase_kemajuan` int(11) NOT NULL,
  `file` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `jenis_berkas` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `id_dosen` bigint(20) NOT NULL,
  `tanggal` date NOT NULL,
  `status` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

#
# Data for table "tb_laporan_kemajuan_penelitian"
#


#
# Structure for table "tb_laporan_kemajuan_pengabmas"
#

DROP TABLE IF EXISTS `tb_laporan_kemajuan_pengabmas`;
CREATE TABLE `tb_laporan_kemajuan_pengabmas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `judul_pengabmas` bigint(11) NOT NULL,
  `presentase_kemajuan` int(11) NOT NULL,
  `file` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `jenis_berkas` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `id_dosen` bigint(20) NOT NULL,
  `tanggal` date NOT NULL,
  `status` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

#
# Data for table "tb_laporan_kemajuan_pengabmas"
#


#
# Structure for table "tb_lookbook_penelitian"
#

DROP TABLE IF EXISTS `tb_lookbook_penelitian`;
CREATE TABLE `tb_lookbook_penelitian` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_usulan` bigint(20) NOT NULL,
  `judul_kegiatan` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `jenis_kegiatan` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `tanggal` date NOT NULL,
  `catatan` longtext COLLATE utf8_unicode_ci NOT NULL,
  `user` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

#
# Data for table "tb_lookbook_penelitian"
#


#
# Structure for table "tb_lookbook_pengabmas"
#

DROP TABLE IF EXISTS `tb_lookbook_pengabmas`;
CREATE TABLE `tb_lookbook_pengabmas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_usulan` bigint(20) NOT NULL,
  `judul_kegiatan` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `jenis_kegiatan` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `tanggal` date NOT NULL,
  `catatan` longtext COLLATE utf8_unicode_ci NOT NULL,
  `user` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

#
# Data for table "tb_lookbook_pengabmas"
#


#
# Structure for table "tb_pengaturan"
#

DROP TABLE IF EXISTS `tb_pengaturan`;
CREATE TABLE `tb_pengaturan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_instansi` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lembaga` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nama_lembaga` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ketua_lembaga` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ketua_nik` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alamat` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `kota` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `telepon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

#
# Data for table "tb_pengaturan"
#

INSERT INTO `tb_pengaturan` VALUES (1,'UNISOFT','LPPM','LEMBAGA PENELITIAN DAN PENGABDIAN MASYARAKAT','Gunawan, M.Kom,.','123456',NULL,'Jl. Indonesia Raya No.123','Purwokerto','(0281) 12345678','info@unisoft.edu','unisoft.edu','2022-01-18 15:08:57');

#
# Structure for table "tb_petunjuk"
#

DROP TABLE IF EXISTS `tb_petunjuk`;
CREATE TABLE `tb_petunjuk` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `petunjuk` longtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

#
# Data for table "tb_petunjuk"
#

INSERT INTO `tb_petunjuk` VALUES (1,'<p>Petunjuk upload laporan penelitian dan pengabdian kepada masyarakat di ASIPP, berikut panduannya:</p>','2022-01-19 19:00:54','2021-08-29 13:01:18');

#
# Structure for table "tb_reviewer_penelitian"
#

DROP TABLE IF EXISTS `tb_reviewer_penelitian`;
CREATE TABLE `tb_reviewer_penelitian` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_usulan` bigint(20) NOT NULL,
  `reviewer1` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `reviewer2` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `jenis` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `jenis_laporan` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

#
# Data for table "tb_reviewer_penelitian"
#


#
# Structure for table "tb_reviewer_pengabmas"
#

DROP TABLE IF EXISTS `tb_reviewer_pengabmas`;
CREATE TABLE `tb_reviewer_pengabmas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_usulan` bigint(20) NOT NULL,
  `reviewer1` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `reviewer2` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `jenis` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `created_at` int(11) NOT NULL,
  `jenis_laporan` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

#
# Data for table "tb_reviewer_pengabmas"
#


#
# Structure for table "tb_surattugas_penelitian"
#

DROP TABLE IF EXISTS `tb_surattugas_penelitian`;
CREATE TABLE `tb_surattugas_penelitian` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_lookbook` int(11) NOT NULL,
  `no_surat` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `nama_ketua` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `anggota_internal1` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `anggota_internal2` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `anggota_internal3` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `anggota_internal4` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `anggota_eksternal1` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `anggota_eksternal2` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `anggota_eksternal3` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `anggota_eksternal4` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `judul_penelitian` text COLLATE utf8_unicode_ci NOT NULL,
  `lama_penelitian` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `tanggal` date NOT NULL,
  `mahasiswa` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `alumni` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `admin` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `afiliasi` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `tempat` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `transport` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `afiliasi_internal1` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `afiliasi_internal2` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `afiliasi_internal3` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `afiliasi_internal4` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `afiliasi_eksternal1` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `afiliasi_eksternal2` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `afiliasi_eksternal3` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `afiliasi_eksternal4` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `afiliasi_mahasiswa` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `afiliasi_alumni` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `afiliasi_admin` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `keperluan` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

#
# Data for table "tb_surattugas_penelitian"
#


#
# Structure for table "tb_surattugas_pengabmas"
#

DROP TABLE IF EXISTS `tb_surattugas_pengabmas`;
CREATE TABLE `tb_surattugas_pengabmas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_lookbook` int(11) NOT NULL,
  `no_surat` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `nama_ketua` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `anggota_internal1` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `anggota_internal2` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `anggota_internal3` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `anggota_internal4` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `anggota_eksternal1` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `anggota_eksternal2` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `anggota_eksternal3` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `anggota_eksternal4` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `judul_pengabmas` text COLLATE utf8_unicode_ci NOT NULL,
  `lama_pengabmas` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `tanggal` date NOT NULL,
  `mahasiswa` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `alumni` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `admin` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `afiliasi` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `tempat` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `transport` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `afiliasi_internal1` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `afiliasi_internal2` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `afiliasi_internal3` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `afiliasi_internal4` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `afiliasi_eksternal1` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `afiliasi_eksternal2` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `afiliasi_eksternal3` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `afiliasi_eksternal4` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `afiliasi_mahasiswa` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `afiliasi_alumni` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `afiliasi_admin` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `keperluan` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

#
# Data for table "tb_surattugas_pengabmas"
#


#
# Structure for table "tb_tanggapan_penelitian"
#

DROP TABLE IF EXISTS `tb_tanggapan_penelitian`;
CREATE TABLE `tb_tanggapan_penelitian` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_usulan` bigint(20) NOT NULL,
  `id_reviewer` bigint(20) NOT NULL,
  `tanggapan` longtext COLLATE utf8_unicode_ci NOT NULL,
  `file` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `nilai_1` int(11) NOT NULL,
  `nilai_2` int(11) NOT NULL,
  `nilai_3` int(11) NOT NULL,
  `nilai_4` int(11) NOT NULL,
  `nilai_5` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `status` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `jenis_laporan` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `nilai_6` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

#
# Data for table "tb_tanggapan_penelitian"
#


#
# Structure for table "tb_tanggapan_pengabmas"
#

DROP TABLE IF EXISTS `tb_tanggapan_pengabmas`;
CREATE TABLE `tb_tanggapan_pengabmas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_usulan` bigint(20) NOT NULL,
  `id_reviewer` bigint(20) NOT NULL,
  `tanggapan` longtext COLLATE utf8_unicode_ci NOT NULL,
  `file` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `nilai_1` int(11) NOT NULL,
  `nilai_2` int(11) NOT NULL,
  `nilai_3` int(11) NOT NULL,
  `nilai_4` int(11) NOT NULL,
  `nilai_5` int(11) NOT NULL,
  `nilai_6` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `status` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `jenis_laporan` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

#
# Data for table "tb_tanggapan_pengabmas"
#


#
# Structure for table "tb_unduh"
#

DROP TABLE IF EXISTS `tb_unduh`;
CREATE TABLE `tb_unduh` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `file` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `keterangan` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tanggal` date NOT NULL,
  `id_status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

#
# Data for table "tb_unduh"
#

INSERT INTO `tb_unduh` VALUES (1,'PANDUAN PENELITIAN.pdf','PANDUAN PENELITIAN','2021-09-02',1,'2022-01-19 20:39:21','2021-09-02 01:20:11'),(2,'PANDUAN PKM.pdf','PANDUAN PKM','2021-09-02',2,'2022-01-19 20:39:15','2021-09-02 01:20:34'),(3,'Panduan ASIPP untuk Dosen.pdf','Panduan ASIPP untuk Dosen','2021-09-09',0,'2022-01-19 20:39:11','2021-09-09 04:59:55'),(4,'Panduan ASIPP untuk Operator.pdf','Panduan ASIPP untuk Operator','2021-09-09',0,'2022-01-19 20:39:08','2021-09-09 05:00:20'),(5,'Panduan ASIPP untuk Reviewer.pdf','Panduan ASIPP untuk Reviewer','2021-09-09',0,'2021-09-09 05:00:39','2021-09-09 05:00:39');

#
# Structure for table "tb_usulan_penelitian"
#

DROP TABLE IF EXISTS `tb_usulan_penelitian`;
CREATE TABLE `tb_usulan_penelitian` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_usulan` bigint(20) NOT NULL,
  `nama_ketua` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `anggota_internal1` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `anggota_internal2` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `anggota_internal3` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `anggota_internal4` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `anggota_eksternal1` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `anggota_eksternal2` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `anggota_eksternal3` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `anggota_eksternal4` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `judul_penelitian` text COLLATE utf8_unicode_ci NOT NULL,
  `file` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `jenis_penelitian` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `nama_institusi` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `alamat` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `tahun_pelaksanaan` int(11) NOT NULL,
  `biaya_mandiri` int(11) NOT NULL,
  `biaya_hibah_pt` int(11) NOT NULL,
  `biaya_hibah_luar` int(11) NOT NULL,
  `pemberi_hibah` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `id_dosen` bigint(20) NOT NULL,
  `tanggal` date NOT NULL,
  `status` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `user_confirm` int(11) NOT NULL,
  `luaran_wajib` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `luaran_tambahan` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `mahasiswa` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `alumni` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `admin` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

#
# Data for table "tb_usulan_penelitian"
#


#
# Structure for table "tb_usulan_pengabmas"
#

DROP TABLE IF EXISTS `tb_usulan_pengabmas`;
CREATE TABLE `tb_usulan_pengabmas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_usulan` bigint(20) NOT NULL,
  `nama_ketua` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `anggota_internal1` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `anggota_internal2` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `anggota_internal3` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `anggota_internal4` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `anggota_eksternal1` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `anggota_eksternal2` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `anggota_eksternal3` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `anggota_eksternal4` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `judul_pengabmas` text COLLATE utf8_unicode_ci NOT NULL,
  `file` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `jenis_pengabmas` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `nama_institusi` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `alamat` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `tahun_pelaksanaan` int(11) NOT NULL,
  `biaya_mandiri` int(11) NOT NULL,
  `biaya_hibah_pt` int(11) NOT NULL,
  `biaya_hibah_luar` int(11) NOT NULL,
  `pemberi_hibah` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `id_dosen` bigint(20) NOT NULL,
  `tanggal` date NOT NULL,
  `status` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `user_confirm` int(11) NOT NULL,
  `luaran_wajib` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `luaran_tambahan` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `mahasiswa` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `alumni` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `admin` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

#
# Data for table "tb_usulan_pengabmas"
#


#
# Structure for table "users"
#

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `foto` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_view` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `nik` bigint(20) NOT NULL,
  `jafung` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `institusi` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `fakultas` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `program_studi` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `no_handphone` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `level` int(11) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `pin` int(11) DEFAULT NULL,
  `nidn` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

#
# Data for table "users"
#

INSERT INTO `users` VALUES (1,'default.png','Administrator','admin@gmail.com','admin','$2y$10$H7eP59vP6raPh6/thkKU1OemfjPeDNwQgBawjaGzctSOkX8ehJq4W','admin123456789',123,'-','Test','-','-','0812456789',1,'ANOOf0STbEx8MDI7OAdZqH6tIEDnStDgNiW3vXY4lA5CgkrLVPKdydW75BJE','2020-08-19 04:23:21','2022-04-25 12:34:40',1,123),(2,'default.png','Operator ASIPP','lppm@gmail.com','operator','$2y$10$IBbtVrJ/zFh2/NQ/4NTcc.V3ksbpof4LvOP9OagcJpu/XIUdVxzZO','123456789',456,'-','','-','-','0812456789',3,'wx8GVirZnCmnNNPm1D51SHOrd2OxXJ51OSPoA25xHZDqgKhaHPo3Kdhjpc7S','2020-07-13 06:58:22','2022-04-24 16:35:09',3,NULL);
