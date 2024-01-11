
			<section class='content'>
							<div class='col-md-12'>
								<div class='box box-solid'>
									<div class='box-header'>
										<h3 class='box-title'>Kartu Bukti Pendaftaran</h3>
										<div class='box-tools pull-right btn-group'>
											 <a class="btn btn-primary" href="" role="button"> <?= $siswa['nama'] ?></a>
										</div>
										<td><iframe name='kartu_pendafataran<?= $siswa['nisn'] ?>' src='mod_siswa/kartu_pendafataran.php?id=<?= enkripsi($siswa['id_siswa']) ?>' style='border:none;width:1px;height:1px;'></iframe><button onclick="frames['kartu_pendafataran<?= $siswa['nisn'] ?>'].print()" class='btn btn-sm btn-flat btn-primary'><i class='fa fa-print'></i> Cetak </button></td>
									</div>
									<div class='box-body' style='background:#c3c3c3; '>
		<center>							
<style>
			
			.box { border:1px solid #000; width:100%; height:130px; }
		</style>
 <font size="2">
 <font face="arial">
							<div style='background:#fff; width:80%; margin:0 auto; padding:35px; height:100%;'>
							<div  style='width:10.4cm;border:0px solid #666;'cellpadding='2' cellspacing='0' >
								
									<tr>
										<img src="../<?= $setting['kop'] ?>" width="130%" />
									</tr>
									
								
								<hr>
								<br>
								<br>
								<table border='0' width='100%' align='center'>
									<tr>
										<td width='100px' valign='top' align='center' rowspan='7'>
									<img src='../<?= $siswa['foto'] ?>' class='img'  style='max-width:60px' alt='+'>
									</td>
									</tr>
									<tr>
										<td valign='top'height='2px'>No Pendaftaran</td>
										<td valign='top'>: <?= $siswa['no_daftar'] ?></td>
									</tr>
									<tr>
										<td valign='top'height='2px'>Tanggal Konfirmasi</td>
										<td valign='top'>: <?= $siswa['tgl_konfirmasi'] ?></td>
									</tr>
									<tr>
										<td valign='top'height='2px'>Nama</td>
										<td valign='top'>: <?= $siswa['nama'] ?></td>
									</tr>
									<tr>
										<td valign='top'height='2px'>Jurusan</td>
										<td valign='top'>: <?= $siswa['jurusan'] ?></td>
									</tr>
									<tr>
										<td valign='top'>Asal Sekolah</td>
										<td valign='top'>: <?= $siswa['asal_sekolah'] ?></td>
									</tr>
									

									</table>
									<hr>	
									<br>
									
									<center>
									<table width="100% " style="margin-left: 230px;margin-right:20px;font-size:13px">

													<td width="60%">
														<right>
														<?= $setting['alamat'] ?>, <?= date('d-M-Y ') ?>
														<p>Kepala <?= $setting['nama_sekolah'] ?></p>
														<br><br><br>
														<?= $setting['kepala'] ?>
														<p>
														NIP.<?= $setting['nip'] ?>
														<p></p>
													</right>
													</td>

									</table>
													
			</div></div>
</font></font>
			</div></div></div></section>
