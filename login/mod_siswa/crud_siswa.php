<?php
require("../../config/excel_reader.php");
require("../../config/database.php");
require("../../config/function.php");
require("../../config/functions.crud.php");
session_start();
if (!isset($_SESSION['id_user'])) {
    die('Anda tidak diijinkan mengakses langsung');
}
if ($pg == 'ubah') {
    $data = [
        'nama_siswa' => $_POST['nama'],
        'alamat' => $_POST['alamat']
    ];
    $npsn = $_POST['npsn'];
    $exec = update($koneksi, 'siswa', $data, ['npsn' => $npsn]);
    echo $exec;
}
if ($pg == 'mutasi') {
    $data = [
        'nama' => $_POST['nama'],
        'sekolah_tujuan' => $_POST['sekolah_tujuan'],
		
       
     ];
    $id_daftar = $_POST['id_daftar'];
    update($koneksi, 'daftar', $data, ['id_daftar' => $id_daftar]);
}
if ($pg == 'tambah') {
    $data = [
        'npsn'          => $_POST['npsn'],
        'nama_siswa'   => $_POST['nama'],
        'alamat'         => $_POST['alamat'],
        'status'         => 1
    ];
    $exec = insert($koneksi, 'siswa', $data);
    echo $exec;
}
if ($pg == 'hapus') {
    $id_siswa = $_POST['id_siswa'];
    delete($koneksi, 'siswa', ['id_siswa' => $id_siswa]);
}

if ($pg == 'tidaklulus') {
    $id = $_POST['id'];
    update($koneksi, 'siswa', ['keterangan' => 0], ['id' => $id]);
}
if ($pg == 'lulus') {
    $id = $_POST['id'];
    update($koneksi, 'siswa', ['keterangan' => 1], ['id' => $id]);
}
if ($pg == 'upload') {
    $id = $_POST['id'];
    update($koneksi, 'siswa', ['keterangan' => 1], ['id' => $id]);
}
if ($pg == 'mutasimasuk') {
    $nama = str_replace("'", "`", $_POST['nama']);
    $data = [
        'jenis' => $_POST['jenis'],
		'surat_masuk' => $_POST['surat_masuk'],
		'tgl_masuk' => $_POST['tgl_masuk'],
		'pekerjaan_ayah' => $_POST['pekerjaan_ayah'],
		'jenkel' => $_POST['jenkel'],
		'nama_ayah' => $_POST['nama_ayah'],
        'nisn' => $_POST['nisn'],
		'kelas' => $_POST['kelas'],
        'nama' => ucwords(strtoupper($nama)),
		'asal_sekolah' => $_POST['asal_sekolah'],
        'status'         => 1,
        'foto' => 'default.png'

    ];
    $exec = insert($koneksi, 'siswa', $data);
    echo mysqli_error($koneksi);
}
if ($pg == 'lulus') {

    $data = [
        'status' => 2,
		'kelas' => 0
    ];
    $where = [
        'id_siswa' => $_POST['id_siswa']
    ];
    update($koneksi, 'siswa', $data, $where);
    delete($koneksi, 'bayar', $where);
}
if ($pg == 'batallulus') {

    $data = [
        'status' => 1,
		'kelas' => 12
    ];
    $where = [
        'id_siswa' => $_POST['id_siswa']
    ];
    update($koneksi, 'siswa', $data, $where);
    delete($koneksi, 'bayar', $where);
}
if ($pg == 'ubahcepat') {
    $nama = str_replace("'", "`", $_POST['nama']);
    $data = [
        'nis'              => $_POST['nis'],
		'nisn'              => $_POST['nisn'],
        'nik'               => $_POST['nik'],
        'no_kk'             => $_POST['nokk'],
        'nama'              => mysqli_escape_string($koneksi, $_POST['nama']),
        'tempat_lahir'      => mysqli_escape_string($koneksi, $_POST['tempat']),
        'tgl_lahir'         => $_POST['tgllahir'],
        'jenkel'            => $_POST['jenkel'],
        'no_hp'             => $_POST['nohp'],
        'asal_sekolah'      => $_POST['asal'],
		'npsn_asal'      => $_POST['npsn_asal'],
        'anak_ke'           => $_POST['anakke'],
        'saudara'           => $_POST['saudara'],
        'paud'            => $_POST['paud'],
        'tk'             => $_POST['tk'],
        'status_keluarga'   => $_POST['statuskeluarga'],
        'agama'              => $_POST['agama'],
        'no_kip'              => $_POST['kip'],
		'kelas'              => $_POST['kelas'],
		'alamat'            => mysqli_escape_string($koneksi, $_POST['alamat']),
        'rt'                => $_POST['rt'],
        'rw'                => $_POST['rw'],
        'desa'              => mysqli_escape_string($koneksi, $_POST['desa']),
        'kecamatan'         => mysqli_escape_string($koneksi, $_POST['kecamatan']),
        'kota'              => mysqli_escape_string($koneksi, $_POST['kota']),
        'provinsi'          => mysqli_escape_string($koneksi, $_POST['provinsi']),
        'kode_pos'          => $_POST['kodepos'],
        'tinggal'           => $_POST['tinggal'],
        'jarak'             => $_POST['jarak'],
        'waktu'             => $_POST['waktu'],
        'transportasi'      => $_POST['transportasi'],
		'nik_ayah'            => $_POST['nikayah'],
		'status_ayah'            => $_POST['status_ayah'],
		'ststus_ibu'            => $_POST['ststus_ibu'],
        'nama_ayah'           => mysqli_escape_string($koneksi, $_POST['namaayah']),
        'tahun_ayah'         => mysqli_escape_string($koneksi, $_POST['tahunayah']),
        
        'pendidikan_ayah'     => $_POST['pendidikan_ayah'],
        'pekerjaan_ayah'      => $_POST['pekerjaan_ayah'],
        'penghasilan_ayah'    => $_POST['penghasilan_ayah'],
        'no_hp_ayah'          => $_POST['nohpayah'],
		'nik_ibu'             => $_POST['nikibu'],
        'nama_ibu'            => mysqli_escape_string($koneksi, $_POST['namaibu']),
        'tahun_ibu'          => mysqli_escape_string($koneksi, $_POST['tahunibu']),
       
        'pendidikan_ibu'      => $_POST['pendidikan_ibu'],
        'pekerjaan_ibu'       => $_POST['pekerjaan_ibu'],
        'penghasilan_ibu'     => $_POST['penghasilan_ibu'],
        'no_hp_ibu'           => $_POST['nohpibu'],
    ];
    $id_siswa = $_POST['id_siswa'];
    update($koneksi, 'siswa', $data, ['id_siswa' => $id_siswa]);
}
if ($pg == 'import') {
    if (isset($_FILES['file']['name'])) {
        $file = $_FILES['file']['name'];
        $temp = $_FILES['file']['tmp_name'];
        $ext = explode('.', $file);
        $ext = end($ext);
        if ($ext <> 'xls') {
            echo "harap pilih file excel .xls";
        } else {
            $data = new Spreadsheet_Excel_Reader($temp);
            $hasildata = $data->rowcount($sheet_index = 0);
            $sukses = $gagal = 0;

            mysqli_query($koneksi, "siswa");
            for ($i = 2; $i <= $hasildata; $i++) {
				$nis = $data->val($i, 2);
				$nisn = addslashes($data->val($i, 3));
				$nik = addslashes($data->val($i, 4));
				$nama = addslashes($data->val($i, 5));
				$jenkel = $data->val($i, 6);
				$tempat_lahir = addslashes($data->val($i, 7));
				$tgl_lahir = addslashes($data->val($i, 8));
				$alamat = $data->val($i, 9);
				$provinsi = $data->val($i, 10);
				$kota = $data->val($i, 11);
				$kecamatan = $data->val($i,12);
				$desa = $data->val($i, 13);
				$citacita = $data->val($i, 14);
				$hobi = $data->val($i, 15);
				$no_kk = $data->val($i, 16);
				$status_ayah = $data->val($i, 17);
				$nama_ayah = $data->val($i, 18);
				$nik_ayah = $data->val($i, 19);
				$tempat_ayah = $data->val($i, 20);
				$tahun_ayah = $data->val($i, 21);
				$pendidikan_ayah = $data->val($i, 22);
				$pekerjaan_ayah = $data->val($i, 23);
				$penghasilan_ayah = $data->val($i, 24);
				$status_ibu = $data->val($i, 25);
				$nama_ibu = $data->val($i, 26);
				$nik_ibu = $data->val($i, 27);
				$tempat_ibu = $data->val($i, 28);
				$tahun_ibu = $data->val($i, 29);
				$pendidikan_ibu = $data->val($i, 30);
				$pekerjaan_ibu = $data->val($i, 31);
				$penghasilan_ibu = $data->val($i, 32);
				$npsn_asal = $data->val($i, 33);
				$asal_sekolah = $data->val($i, 34);
				$kelas = $data->val($i, 35);
				$agama = $data->val($i, 36);
				$no_hp = $data->val($i, 37);
				$anak_ke = $data->val($i, 38);
				$saudara = $data->val($i, 39);
				$paud = $data->val($i, 40);
				$tk= $data->val($i, 41);
				$tinggal = $data->val($i, 42);
				$kode_pos = $data->val($i, 43);
				$jarak = $data->val($i, 44);
				$waktu = $data->val($i, 45);
				$transportasi = $data->val($i, 46);
				$password = $data->val($i, 47);


				
                
                ;

                if ($nama <> "") {
                    $datax = [
                        
                        'nis' => $nis,
						'nisn' => $nisn,
						'password' => $nisn,
						'nik' => $nik,
						'nama'  => strtoupper($nama),
						'jenkel' => $jenkel,
						'tempat_lahir' => $tempat_lahir,
						'tgl_lahir' => $tgl_lahir,
						'alamat' => $alamat,
						'provinsi' => $provinsi,
						'kota' => $kota,
						'kecamatan' => $kecamatan,
						'desa' => $desa,
						'no_kk' => $no_kk,
						'nama_ayah' => $nama_ayah,
						'tempat_ayah' => $tempat_ayah,
						'tahun_ayah' => $tahun_ayah,
						'nik_ayah' => $pendidikan_ayah,
						'pendidikan_ayah' => $pendidikan_ayah,
						'pekerjaan_ayah' => $pekerjaan_ayah,
						'penghasilan_ayah' => $penghasilan_ayah,
						'nama_ibu' => $nama_ibu,
						'tempat_ibu' => $tempat_ibu,
						'tahun_ibu' => $tahun_ibu,
						'nik_ibu' => $nik_ibu,
						'pendidikan_ibu' => $pendidikan_ibu,
						'pekerjaan_ibu' => $pekerjaan_ibu,
						'penghasilan_ibu' => $penghasilan_ibu,
						'npsn_asal' => $npsn_asal,
						'asal_sekolah' => $asal_sekolah,
						'kelas' => $kelas,
						'agama' => $agama,
						'no_hp' => $no_hp,
						'anak_ke' => $anak_ke,
						'saudara' => $saudara,
						'paud' => $paud,
						'tk' => $tk,
						'tinggal' => $tinggal,
						'kode_pos' => $kode_pos,
						'jarak' => $jarak,
						'waktu' => $waktu,
						'transportasi' => $transportasi,
						'citacita' => $citacita,
						'hobi' => $hobi,
						'status_ayah' => $status_ayah,
						'status_ibu' => $status_ibu,
						'password' => $password,

						
                        'status' => 1
                    ];
                    $exec = insert($koneksi, 'siswa', $datax);
                    echo mysqli_error($koneksi);
                    ($exec) ? $sukses++ : $gagal++;
                }
            }
            $total = $hasildata - 1;
            echo "Berhasil: $sukses | Gagal: $gagal | Dari: $total";
        }
    } else {
        echo "gagal";
    }
}

if ($pg == 'konfirmasi') {
    $$data = [
        
    ];

     $exec = delete($koneksi, 'siswa', $data, ['id_siswa' => $id]);
    if ($exec) {
        $pesan = [
            'pesan' => 'Selamat.... Data Siswa Berhasil Dikosongkan'
        ];
        echo 'ok';
    } else {
        $pesan = [
            'pesan' => mysqli_error($koneksi)
        ];
        echo mysqli_error($koneksi);
    }
}
if ($pg == 'import2') {
    if (isset($_FILES['file']['name'])) {
        $file = $_FILES['file']['name'];
        $temp = $_FILES['file']['tmp_name'];
        $ext = explode('.', $file);
        $ext = end($ext);
        if ($ext <> 'xls') {
            echo "harap pilih file excel .xls";
        } else {
            $data = new Spreadsheet_Excel_Reader($temp);
            $hasildata = $data->rowcount($sheet_index = 0);
            $sukses = $gagal = 0;

            mysqli_query($koneksi, "daftar");
            for ($i = 2; $i <= $hasildata; $i++) {
				$no_daftar = $data->val($i, 2);
				$nisn = addslashes($data->val($i, 3));
				$nik = addslashes($data->val($i, 4));
				$nama = addslashes($data->val($i, 5));
				$jenkel = $data->val($i, 6);
				$tempat_lahir = addslashes($data->val($i, 7));
				$tgl_lahir = addslashes($data->val($i, 8));
				$alamat = $data->val($i, 9);
				$provinsi = $data->val($i, 10);
				$kota = $data->val($i, 11);
				$kecamatan = $data->val($i,12);
				$desa = $data->val($i, 13);
				$citacita = $data->val($i, 14);
				$hobi = $data->val($i, 15);
				$no_kk = $data->val($i, 16);
				$status_ayah = $data->val($i, 17);
				$nama_ayah = $data->val($i, 18);
				$tahun_ayah = $data->val($i, 19);
				$nik_ayah = $data->val($i, 20);
				$pendidikan_ayah = $data->val($i, 21);
				$pekerjaan_ayah = $data->val($i, 22);
				$penghasilan_ayah = $data->val($i, 23);
				$status_ibu = $data->val($i, 24);
				$nama_ibu = $data->val($i, 25);
				$nik_ibu = $data->val($i, 26);
				$tahun_ibu = $data->val($i, 27);
				$pendidikan_ibu = $data->val($i, 28);
				$pekerjaan_ibu = $data->val($i, 29);
				$penghasilan_ibu = $data->val($i, 30);
				$npsn_asal = $data->val($i, 31);
				$asal_sekolah = $data->val($i, 32);
				$kelas = $data->val($i, 33);
				$agama = $data->val($i, 34);
				$no_hp = $data->val($i, 35);
				$anak_ke = $data->val($i, 36);
				$saudara = $data->val($i, 37);
				$paud = $data->val($i, 38);
				$tk= $data->val($i, 39);
				$tinggal = $data->val($i, 40);
				$kode_pos = $data->val($i, 41);
				$jarak = $data->val($i, 42);
				$waktu = $data->val($i, 43);
				$transportasi = $data->val($i, 44);
				$password = $data->val($i, 45);
				$jenis = $data->val($i, 46);
				$tgl_daftar = $data->val($i, 47);


				
                
                ;

                if ($nama <> "") {
                    $datax = [
                        
                        'no_daftar' => $no_daftar,
						'nisn' => $nisn,
						
						'nik' => $nik,
						'nama'  => strtoupper($nama),
						'jenkel' => $jenkel,
						'tempat_lahir' => $tempat_lahir,
						'tgl_lahir' => $tgl_lahir,
						'alamat' => $alamat,
						'provinsi' => $provinsi,
						'kota' => $kota,
						'kecamatan' => $kecamatan,
						'desa' => $desa,
						'no_kk' => $no_kk,
						'nama_ayah' => $nama_ayah,
						'tahun_ayah' => $tahun_ayah,
						'nik_ayah' => $pendidikan_ayah,
						'pendidikan_ayah' => $pendidikan_ayah,
						'pekerjaan_ayah' => $pekerjaan_ayah,
						'penghasilan_ayah' => $penghasilan_ayah,
						'nama_ibu' => $nama_ibu,
						'tahun_ibu' => $tahun_ibu,
						'nik_ibu' => $nik_ibu,
						'pendidikan_ibu' => $pendidikan_ibu,
						'pekerjaan_ibu' => $pekerjaan_ibu,
						'penghasilan_ibu' => $penghasilan_ibu,
						'npsn_asal' => $npsn_asal,
						'asal_sekolah' => $asal_sekolah,
						'kelas' => $kelas,
						'agama' => $agama,
						'no_hp' => $no_hp,
						'anak_ke' => $anak_ke,
						'saudara' => $saudara,
						'paud' => $paud,
						'tk' => $tk,
						'tinggal' => $tinggal,
						'kode_pos' => $kode_pos,
						'jarak' => $jarak,
						'waktu' => $waktu,
						'transportasi' => $transportasi,
						'citacita' => $citacita,
						'hobi' => $hobi,
						'status_ayah' => $status_ayah,
						'status_ibu' => $status_ibu,
						'password' => $password,
						'jenis' => $jenis,
						'tgl_daftar' => $tgl_daftar,

						
                        'status' => 1
                    ];
                    $exec = insert($koneksi, 'daftar', $datax);
                    echo mysqli_error($koneksi);
                    ($exec) ? $sukses++ : $gagal++;
                }
            }
            $total = $hasildata - 1;
            echo "Berhasil: $sukses | Gagal: $gagal | Dari: $total";
        }
    } else {
        echo "gagal";
    }
}
if ($pg == 'simpandatadiri') {
    $status = (isset($_POST['status'])) ? 1 : 0;
    $data = [
        'nis'              => $_POST['nis'],
		'jurusan'              => $_POST['jurusan'],
		'kelas'              => $_POST['kelas'],
		'nisn'              => $_POST['nisn'],
        'nik'               => $_POST['nik'],
        'no_kk'             => $_POST['nokk'],
        'nama'              => mysqli_escape_string($koneksi, $_POST['nama']),
        'tempat_lahir'      => mysqli_escape_string($koneksi, $_POST['tempat']),
        'tgl_lahir'         => $_POST['tgllahir'],
        'jenkel'            => $_POST['jenkel'],
        'no_hp'             => $_POST['nohp'],
        'asal_sekolah'      => $_POST['asal'],
        'anak_ke'           => $_POST['anakke'],
        'saudara'           => $_POST['saudara'],
        'paud'            => $_POST['paud'],
        'tk'             => $_POST['tk'],
		'citacita'            => $_POST['citacita'],
        'hobi'             => $_POST['hobi'],
        'status_keluarga'   => $_POST['statuskeluarga'],
        'agama'              => $_POST['agama'],
        'no_kip'              => $_POST['kip']

    ];
	$where = [
         'id_siswa' => $_POST['id_siswa']
    ];
    update($koneksi, 'siswa', $data, $where);
    echo mysqli_error($koneksi);
    
                    echo "ok";
}

if ($pg == 'simpanalamat') {

    $data = [
        'alamat'            => mysqli_escape_string($koneksi, $_POST['alamat']),
        'rt'                => $_POST['rt'],
        'rw'                => $_POST['rw'],
        'desa'              => mysqli_escape_string($koneksi, $_POST['desa']),
        'kecamatan'         => mysqli_escape_string($koneksi, $_POST['kecamatan']),
        'kota'              => mysqli_escape_string($koneksi, $_POST['kota']),
        'provinsi'          => mysqli_escape_string($koneksi, $_POST['provinsi']),
        'kode_pos'          => $_POST['kodepos'],
        'tinggal'           => $_POST['tinggal'],
        'jarak'             => $_POST['jarak'],
        'waktu'             => $_POST['waktu'],
        'transportasi'      => $_POST['transportasi']

    ];
	$where = [
         'id_siswa' => $_POST['id_siswa']
    ];
    update($koneksi, 'siswa', $data, $where);
    echo mysqli_error($koneksi);
    
                    echo "ok";
}
if ($pg == 'simpanortu') {

    $data = [
        'status_ayah'            => $_POST['status_ayah'],
		'nik_ayah'            => $_POST['nikayah'],
        'nama_ayah'           => mysqli_escape_string($koneksi, $_POST['namaayah']),
        'tempat_ayah'             => $_POST['tempat_ayah'],
		'tahun_ayah'         => mysqli_escape_string($koneksi, $_POST['tahunayah']),
        
        'pendidikan_ayah'     => $_POST['pendidikan_ayah'],
        'pekerjaan_ayah'      => $_POST['pekerjaan_ayah'],
        'penghasilan_ayah'    => $_POST['penghasilan_ayah'],
        'no_hp_ayah'          => $_POST['nohpayah'],
        'status_ibu'            => $_POST['status_ibu'],
		'nik_ibu'             => $_POST['nikibu'],
        'nama_ibu'            => mysqli_escape_string($koneksi, $_POST['namaibu']),
        'tempat_ibu'             => $_POST['tempat_ibu'],
		'tahun_ibu'          => mysqli_escape_string($koneksi, $_POST['tahunibu']),
        
        'pendidikan_ibu'      => $_POST['pendidikan_ibu'],
        'pekerjaan_ibu'       => $_POST['pekerjaan_ibu'],
        'penghasilan_ibu'     => $_POST['penghasilan_ibu'],
        'no_hp_ibu'           => $_POST['nohpibu'],
        
    ];
	$where = [
         'id_siswa' => $_POST['id_siswa']
    ];
    update($koneksi, 'siswa', $data, $where);
    echo mysqli_error($koneksi);
    
                    echo "ok";
}
