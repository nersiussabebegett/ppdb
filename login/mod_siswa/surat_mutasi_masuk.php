<?php ob_start();
require "../../config/database.php";
require "../../config/function.php";
require "../../config/functions.crud.php";
include "../../assets/modules/phpqrcode/qrlib.php";
session_start();
if (!isset($_SESSION['id_user'])) {
    die('Anda tidak diijinkan mengakses langsung');
}
$siswa = fetch($koneksi, 'siswa', ['id_siswa' => dekripsi($_GET['id'])]);
// $tempdir = "../../temp/"; //Nama folder tempat menyimpan file qrcode
// if (!file_exists($tempdir)) //Buat folder bername temp
//     mkdir($tempdir);

// //isi qrcode jika di scan
// $codeContents = $bayar['id_bayar'] . '-' . $siswa['nama'];

// //simpan file kedalam temp
// //nilai konfigurasi Frame di bawah 4 tidak direkomendasikan

// QRcode::png($codeContents, $tempdir . $id_bayar . '.png', QR_ECLEVEL_L, 3, 6);

?>
<!-- General CSS Files -->
<meta content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no" name="viewport">
    <link rel="stylesheet" href="../../assets/modules/bootstrap/css/bootstrap.min.css">
     <link rel="shortcut icon" href="https://ma.nwkaltara.web.id/media_library/images/7c751732ad0e716986752287a3861548.png">

<!DOCTYPE html>

<html>
	<head>
		<title>Surat_Mutasi<?= $siswa['nama'] ?></title>
	</head>
	<body>
		<img src="../../<?= $setting['kop'] ?>" width="100%" />
    <body>
    
    
    <hr>
    <center>
        <h6><b>SURAT KETERANGAN PENERIMAAN MUTASI</b</h6>
		<p>Nomor : <?= $siswa['surat_masuk'] ?> </p>
        
    </center>

   <p>Yang bertanda tangan dibawah ini,Kepala <?= $setting['nama_sekolah'] ?> Kabupaten <?= $setting['kota'] ?>, dengan ini menerangkan bahwa:</p>
    
        	<table width="100%" border="0" cellpadding="0" cellspacing="0" style="border-bottom:0px solid #a5a5a5;">
			<tbody>
			<tr>
				<td width="35%" align="left">Nama Lengkap</td>
				<td width="5%" align="left">:</td>
				<td width="60%" align="left"><?= $siswa['nama'] ?></td>
			</tr>
			
			<tr>
				<td align="left">Jenis Kelamin</td>
				<td align="left">:</td>
				<td align="left"><?= ($siswa['jenkel'] == 'L') ? "Laki-Laki" : "Perempuan"; ?></td>
			</tr>
			<tr><td align="left">NISN</td><td align="left">:</td><td align="left"><?= $siswa['nisn'] ?></td></tr>
		
			<tr>
				<td align="left">Kelas</td>
				<td align="left">:</td>
				<td align="left"><?= $siswa['kelas'] ?></td>
			</tr>
			
			
			
			</tbody>
		</table>
		<br>
		<p>Sesuai dengan permohonan pindah/mutasi masuk oleh orang tua/wali siswa</p>
			
			<table width="100%" border="0" cellpadding="0" cellspacing="0" style="border-bottom:0px solid #a5a5a5;">
			<tbody>
			<tr>
				<td width="35%" align="left">Nama Orang Tua/Wali</td>
				<td width="5%" align="left">:</td>
				<td width="60%" align="left"><?= $siswa['nama_ayah'] ?></td>
			</tr>
			
			<tr>
				<td align="left">Pekerjaan</td>
				<td align="left">:</td>
				<td align="left"><?= $siswa['pekerjaan_ayah'] ?></td>
			</tr>
	
			</tbody>
		</table>
		<br>
		<p>Bahwa orang tua/wali siswa tersebut diatas telah mengajukan permohonan pindah ke <?= $setting['nama_sekolah'] ?> Kabupaten <?= $setting['kota'] ?>,dengan Alasan mengikuti Orang Tua</p>
		<br>
		<p>Demikian Surat keterangan ini dibuat untuk dipergunakan sebagaimana mestinya</p>
		
		<br>
		<table width="100%">
            <tr>
                <td style="text-align: center">
                    <img class="img" src="../../assets/img/blank.png">
                </td>
                <td>
				 
				</td>
                <td style="text-align: left">
                    <?= $setting['kota'] ?>, <?= date('d-M-Y ') ?>
                    <p>Kepala <?= $setting['nama_sekolah'] ?></p>
                    <br><br><br>
                    <?= $setting['kepala'] ?>
                    <p>Nip: <?= $setting['nip'] ?></p>
                    
                </td>
            </tr>
        </table>
       

    </div>
</body>

</html>
<?php

$html = ob_get_clean();
require_once '../../vendor/autoload.php';

use Dompdf\Dompdf;

$dompdf = new Dompdf();
$dompdf->loadHtml($html);
$dompdf->setPaper('A4', 'portrait');
$dompdf->render();
$dompdf->stream("Mutasi_" . $siswa['nama'] . ".pdf", array("Attachment" => false));
exit(0);
?>