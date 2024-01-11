<?php
require("../../config/database.php");
// Skrip berikut ini adalah skrip yang bertugas untuk meng-export data tadi ke excell
header("Content-type: application/vnd-ms-excel");
header("Content-Disposition: attachment; filename=Data_PPDB.xls");
session_start();
if (!isset($_SESSION['id_user'])) {
    die('Anda tidak diijinkan mengakses langsung');
}
?>
<style>
    .str {
        mso-number-format: \@;
    }
</style>

	<center>
		<h3>DATA SISWA </h3>
	</center>
<table border="1">
    <thead>
        <tr>
            <th class="text-left">
               No
            </th>
<th>No Daftar</th>
<th>NISN</th>
<th>NIK</th>
<th>Nama Siswa</th>
<th>Jenis Kelamin</th>
<th>Tempat Lahir</th>
<th>Tanggal Lahir</th>
<th>Alamat</th>
<th>Provinsi</th>
<th>Kota</th>
<th>Kecamatan</th>
<th>Desa</th>
<th>Cita Cita</th>
<th>Hobi</th>
<th>No KK</th>
<th>Status Ayah</th>
<th>Nama Ayah</th>
<th>Nik Ayah</th>
<th>Tahun Lahir Ayah</th>
<th>Pendidikan Ayah</th>
<th>Pekerjaan Ayah</th>
<th>Penghasilan Ayah</th>
<th>Status ibu</th>
<th>Nama Ibu</th>
<th>Nik Ibu</th>
<th>Tahun Lahir Ibu</th>
<th>Pendidikan Ibu</th>
<th>Pekerjaan Ibu</th>
<th>Penghasilan Ayah</th>
<th>NPSN</th>
<th>ASAL SEKOLAH</th>
<th>Kelas</th>
<th>Agama</th>
<th>No HP</th>
<th>Anak Ke</th>
<th>Jumlah Saudara</th>
<th>Pernah Paud</th>
<th>Pernah TK</th>
<th>Jenis Tempat Tinggal</th>
<th>Kode Pos </th>
<th>Jarak Sekolah</th>
<th>Jarak Tempuh </th>
<th>Transport </th>
<th>password </th>
<th>Jenis Daftar</th>
<th>Tanggal Daftar</th>
<th>Alamat Lengkap</th>

			
        </tr>
    </thead>
    <tbody>
        <?php
        $query = mysqli_query($koneksi, "select * from daftar");
        $no = 0;
        while ($siswa = mysqli_fetch_array($query)) {
            $no++;
        ?>
            <tr>
                <td><?= $no; ?></td>
<td><?= $siswa['no_daftar'] ?></td>
<td class="str"><?= $siswa['nisn'] ?></td>
<td class="str"><?= $siswa['nik'] ?></td>
<td><?= $siswa['nama'] ?></td>
<td><?= $siswa['jenkel'] ?></td>
<td><?= $siswa['tempat_lahir'] ?></td>
<td class="str"><?= $siswa['tgl_lahir'] ?></td>
<td><?= $siswa['alamat'] ?></td>
<td><?= $siswa['provinsi'] ?></td>
<td><?= $siswa['kota'] ?></td>
<td><?= $siswa['kecamatan'] ?></td>
<td><?= $siswa['desa'] ?></td>
<td><?= $siswa['citacita'] ?></td>
<td><?= $siswa['hobi'] ?></td>
<td class="str"><?= $siswa['no_kk'] ?></td>
<td><?= $siswa['status_ayah'] ?></td>
<td><?= $siswa['nama_ayah'] ?></td>
<td class="str"><?= $siswa['nik_ayah'] ?></td>
<td class="str"><?= $siswa['tahun_ayah'] ?></td>
<td><?= $siswa['pendidikan_ayah'] ?></td>
<td><?= $siswa['pekerjaan_ayah'] ?></td>
<td><?= $siswa['penghasilan_ayah'] ?></td>
<td><?= $siswa['status_ibu'] ?></td>
<td><?= $siswa['nama_ibu'] ?></td>
<td class="str"><?= $siswa['nik_ibu'] ?></td>
<td class="str"><?= $siswa['tahun_ayah'] ?></td>
<td><?= $siswa['pendidikan_ibu'] ?></td>
<td><?= $siswa['pekerjaan_ibu'] ?></td>
<td><?= $siswa['penghasilan_ibu'] ?></td>
<td><?= $siswa['npsn_asal'] ?></td>
<td><?= $siswa['asal_sekolah'] ?></td>
<td><?= $siswa['kelas'] ?></td>
 <td><?= $siswa['agama'] ?></td>
<td class="str"><?= $siswa['no_hp'] ?></td>
<td class="str"><?= $siswa['anak_ke'] ?></td>
<td class="str"><?= $siswa['saudara'] ?></td>
<td><?= $siswa['paud'] ?></td>
 <td><?= $siswa['tk'] ?></td>
 <td><?= $siswa['tinggal'] ?></td>
<td class="str"><?= $siswa['kode_pos'] ?></td>
<td><?= $siswa['jarak'] ?></td>
<td class="str"><?= $siswa['waktu'] ?></td>
<td><?= $siswa['transportasi'] ?></td>
<td class="str"><?= $siswa['password'] ?></td>
<td class="str"><?= $siswa['jenis'] ?></td>
<td class="str"><?= $siswa['tgl_daftar'] ?></td>
<td><?= $siswa['alamat'] ?>,RT <?= $siswa['rt'] ?>, RW <?= $siswa['rw'] ?></td>


            </tr>

        <?php }
        ?>


    </tbody>
</table>