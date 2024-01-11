<?php
require("../../config/database.php");
require("../../config/function.php");
require("../../config/functions.crud.php");
session_start();
$id = $_SESSION['id_daftar'];
if ($pg == 'konfirmasi') {
    $data = [
        'tgl_konfirmasi'              => $_POST['tgl_konfirmasi'],
		'konfirmasi'              => 1
    ];

     $exec = update($koneksi, 'daftar', $data, ['id_daftar' => $id]);
    if ($exec) {
        $pesan = [
            'pesan' => 'Selamat.... Data Anda Berhasil Di Konfirmasi'
        ];
        echo 'ok';
    } else {
        $pesan = [
            'pesan' => mysqli_error($koneksi)
        ];
        echo mysqli_error($koneksi);
    }
}
if ($pg == 'simpandatadiri') {
    $status = (isset($_POST['status'])) ? 1 : 0;
    $data = [
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

     $exec = update($koneksi, 'daftar', $data, ['id_daftar' => $id]);
    if ($exec) {
        $pesan = [
            'pesan' => 'ok'
        ];
        echo 'ok';
    } else {
        $pesan = [
            'pesan' => mysqli_error($koneksi)
        ];
        echo mysqli_error($koneksi);
    }
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

    $exec = update($koneksi, 'daftar', $data, ['id_daftar' => $id]);
    if ($exec) {
        $pesan = [
            'pesan' => 'ok'
        ];
        echo 'ok';
    } else {
        $pesan = [
            'pesan' => mysqli_error($koneksi)
        ];
        echo mysqli_error($koneksi);
    }
}
if ($pg == 'simpanortu') {

    $data = [
        'status_ayah'            => $_POST['status_ayah'],
		'nik_ayah'            => $_POST['nikayah'],
        'nama_ayah'           => mysqli_escape_string($koneksi, $_POST['namaayah']),
        'tahun_ayah'         => mysqli_escape_string($koneksi, $_POST['tahunayah']),
        
        'pendidikan_ayah'     => $_POST['pendidikan_ayah'],
        'pekerjaan_ayah'      => $_POST['pekerjaan_ayah'],
        'penghasilan_ayah'    => $_POST['penghasilan_ayah'],
        'no_hp_ayah'          => $_POST['nohpayah'],
        'status_ibu'            => $_POST['status_ibu'],
		'nik_ibu'             => $_POST['nikibu'],
        'nama_ibu'            => mysqli_escape_string($koneksi, $_POST['namaibu']),
        'tahun_ibu'          => mysqli_escape_string($koneksi, $_POST['tahunibu']),
        
        'pendidikan_ibu'      => $_POST['pendidikan_ibu'],
        'pekerjaan_ibu'       => $_POST['pekerjaan_ibu'],
        'penghasilan_ibu'     => $_POST['penghasilan_ibu'],
        'no_hp_ibu'           => $_POST['nohpibu'],
        'nik_wali'            => $_POST['nikwali'],
        'nama_wali'           => mysqli_escape_string($koneksi, $_POST['namawali']),
        'tahun_wali'         => mysqli_escape_string($koneksi, $_POST['tahunwali']),
        
        'pendidikan_wali'     => $_POST['pendidikan_wali'],
        'pekerjaan_wali'      => $_POST['pekerjaan_wali'],
        'penghasilan_wali'    => $_POST['penghasilan_wali'],
        'no_hp_wali'          => $_POST['nohpwali'],
    ];

   $exec = update($koneksi, 'daftar', $data, ['id_daftar' => $id]);
    if ($exec) {
        $pesan = [
            'pesan' => 'ok'
        ];
        echo 'ok';
    } else {
        $pesan = [
            'pesan' => mysqli_error($koneksi)
        ];
        echo mysqli_error($koneksi);
    }
}
