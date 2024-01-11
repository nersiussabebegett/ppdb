<?php defined('BASEPATH') or die("ip anda sudah tercatat oleh sistem kami") ?>
<!-- Modal -->


<div class="row">
    <div class="col-12">
        <div class="card">
            <div class="card-header">
                <h4>Data Siswa Aktif</h4>
                <div class="card-header-action">
                    <a class="btn btn-primary" href="mod_siswa/export_excel.php" role="button"> Download Excel</a>
					<button type="button" class="btn btn-danger m-b-5" data-toggle="modal" data-target="#importdata"><i class="sidebar-item-icon fa fa-upload"></i>
        Import Data
    </button>&nbsp;

    <!-- Modal -->
    <div class="modal fade" id="importdata" tabindex="-1" role="dialog" aria-labelledby="modelTitleId" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <form id="form-import">
                    <div class="modal-header">
                        <h5 class="modal-title">Import Data</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <div class="form-group">
                            <label for="file">Import File Excel</label>
                            <input type="file" class="form-control-file" name="file" id="file" placeholder="" aria-describedby="helpfile" required>
                            <small id="helpfile" class="form-text text-muted">File harus .xls</small>
                        </div>
                       
               			<p><a href="template_excel/importsiswa.xls">Download Format</a></p>
				
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        <button type="submit" class="btn btn-primary">Save</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
                     
					
                </div>
            </div>
            <div class="card-body">
                <div class="table-responsive">
                    <table style="font-size: 12px" class="table table-striped table-sm" id="table-1">
                        <thead>
                            <tr>
                                <th class="text-center">
                                    No
                                </th>
                                <th>Nis Lokal</th>
								<th>NISN</th>
                                <th>Nama Siswa</th>
								<th>Jenis Kelmain</th>
                                <th>kelas</th>
                                <th>Foto</th>
								  
                                <th>Action</th>
							
                            </tr>
                        </thead>
                        <tbody>
                           <?php
                            $query = mysqli_query($koneksi, "select * from siswa where status='1'");
                            $no = 0;
                            while ($siswa = mysqli_fetch_array($query)) {
                                $no++;
                            ?>
                                <tr>
                                    <td><?= $no; ?></td>
                                    <td><?= $siswa['nis'] ?></td>
									 <td><?= $siswa['nisn'] ?></td>
                                    <td><?= $siswa['nama'] ?></td>
									<td><?= $siswa['jenkel'] ?></td>
                                    <td><?= $siswa['kelas'] ?></td>
							        <td><img src="../<?= $siswa['foto'] ?>" class="img-thumbnail" width="30"></td>
									
                                    					
									   
									<td>
									
                                        <a data-toggle="tooltip" data-placement="top" title="" data-original-title="detail siswa" href="?pg=detailsiswa&id=<?= enkripsi($siswa['id_siswa']) ?>" class="btn btn-sm btn-success"><i class="fas fa-eye    "></i></a>
                                        <!-- Button trigger modal -->
										
                                        <button type="button" class="btn btn-sm btn-primary" data-toggle="modal" data-target="#modal-foto<?= $no ?>">
                                            <i class="fas fa-upload    "></i>
                                        </button>
										<div class="modal fade" id="modal-foto<?= $no ?>" tabindex="-1" role="dialog" aria-labelledby="modelTitleId" aria-hidden="true">
                                            <div class="modal-dialog" role="document">
                                                <div class="modal-content">
                                                    <form id="form-foto<?= $no ?>">
													<input type="hidden" value="<?= $siswa['id_siswa'] ?>" name="id_siswa" class="form-control" ="">
                                                        <div class="modal-header">
                                                            <h5 class="modal-title">Upload Foto Siswa</h5>
                                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                                <span aria-hidden="true">&times;</span>
                                                            </button>
                                                        </div>
                                                        <div class="modal-body">
                                                        
														<div class="card" id="settings-card">
															
															<div class="card-body"
															
															<div class="form-group row align-items-center">
																
																<div class="col-sm-6 col-md-12">

																	<div class="custom-file">
																		<input type="file" name="foto" class="custom-file-input" id="site-foto">
																		<label class="custom-file-label">Upload Foto</label>
																	</div>
																</div>

															</div>
															<div class="card-footer bg-whitesmoke text-md-right">
															<button type="submit" class="btn btn-primary" id="save-btn">Save Changes</button>
															<button class="btn btn-secondary" type="button">Reset</button>
															</div>
															</div>
														
														
                                                        </div>
                                                        
                                                    </form>
                                                </div>
                                            </div>
                                        </div>
										<script>
										$('.custom-file-input').on('change', function() {
											let fileName = $(this).val().split('\\').pop();
											$(this).next('.custom-file-label').addClass("selected").html(fileName);
										});
										$('#form-foto<?= $no ?>').on('submit', function(e) {
											e.preventDefault();
											$.ajax({
												type: 'post',
												url: 'mod_formulir/crud_formulir.php?pg=foto',
												data: new FormData(this),
												processData: false,
												contentType: false,
												cache: false,
												beforeSend: function() {
													$('form-foto<?= $no ?>').on("click", function(e) {
														e.preventDefault();
													});
												},
												success: function(data) {

													iziToast.success({
														title: 'Mantap! ',
														message: 'Data berhasil disimpan',
														position: 'topRight'
													});
													setTimeout(function() {
														window.location.reload();
													}, 2000);


												}
											});
										});
							</script>
										
										<button type="button" class="btn btn-sm btn-primary" data-toggle="modal" data-target="#modal-edit<?= $no ?>">
                                            <i class="fas fa-edit    "></i>
                                        </button>
										 <button data-id="<?= $siswa['id_siswa'] ?>" class="hapus btn-sm btn btn-danger"><i class="fas fa-trash    "></i></button>
								
                                       
                                        <!-- Modal -->
                                        <div class="modal fade" id="modal-edit<?= $no ?>" tabindex="-1" role="dialog" aria-labelledby="modelTitleId" aria-hidden="true">
                                            <div class="modal-dialog" role="document">
                                                <div class="modal-content">
                                                    <form id="form-edit<?= $no ?>">
                                                        <div class="modal-header">
                                                            <h5 class="modal-title">Edit Data</h5>
                                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                                <span aria-hidden="true">&times;</span>
                                                            </button>
                                                        </div>
                                                        <div class="modal-body">
                                                            <h5><i class="fas fa-home    "></i> Data Diri Siswa</h5>
															<input type="hidden" value="<?= $siswa['id_siswa'] ?>" name="id_siswa" class="form-control" ="">

															<div class="form-group row mb-2">
												<label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">NISN</label>
												<div class="col-sm-12 col-md-8">
													<input type="number" name="nisn" class="form-control" value="<?= $siswa['nisn'] ?>" >
												</div>
											</div>
											<div class="form-group row mb-2">
												<label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">NIK</label>
												<div class="col-sm-12 col-md-8">
													<input type="number" name="nik" class="form-control" value="<?= $siswa['nik'] ?>" >
												</div>
											</div>
											<div class="form-group row mb-2">
												<label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">No KK</label>
												<div class="col-sm-12 col-md-8">
													<input type="number" name="nokk" class="form-control" value="<?= $siswa['no_kk'] ?>" >
												</div>
											</div>
											<div class="form-group row mb-2">
												<label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">Nama Lengkap</label>
												<div class="col-sm-12 col-md-8">
													<input type="text" name="nama" class="form-control" value="<?= $siswa['nama'] ?>" >
												</div>
											</div>
											<div class="form-group row mb-2">
												<label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">Tempat</label>
												<div class="col-sm-12 col-md-8">
													<input type="text" name="tempat" class="form-control" value="<?= $siswa['tempat_lahir'] ?>" >
												</div>
											</div>
											<div class="form-group row mb-2">
												<label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">Tgl Lahir</label>
												<div class="col-sm-12 col-md-8">
													<input type="text" name="tgllahir" class="form-control datepicker" value="<?= $siswa['tgl_lahir'] ?>" >
												</div>
											</div>
											<div class="form-group row mb-2">
												<label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">Jenis Kelamin</label>
												<div class="col-sm-12 col-md-8">
													<select class='form-control' name='jenkel' >
														<option value=''>Pilih Jenis Kelamin</option>";
														<?php foreach ($jeniskelamin as $val => $key) { ?>
															<?php if ($siswa['jenkel'] == $val) { ?>
																<option value='<?= $val ?>' selected><?= $key ?> </option>
															<?php  } else { ?>
																<option value='<?= $val ?>'><?= $key ?> </option>
															<?php } ?>
														<?php } ?>
													</select>
												</div>
											</div>
											<div class="form-group row mb-2">
												<label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">Agama</label>
												<div class="col-sm-12 col-md-8">
													<select class='form-control' name='agama' >
														<option value=''>Pilih Agama</option>";
														<?php foreach ($agama as $val) { ?>
															<?php if ($siswa['agama'] == $val) { ?>
																<option value='<?= $val ?>' selected><?= $val ?> </option>
															<?php  } else { ?>
																<option value='<?= $val ?>'><?= $val ?> </option>
															<?php } ?>
														<?php } ?>
													</select>
												</div>
											</div>
											<div class="form-group row mb-2">
												<label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">No Handphone</label>
												<div class="col-sm-12 col-md-8">
													<input type="number" name="nohp" class="form-control" value="<?= $siswa['no_hp'] ?>" >
												</div>
											</div>
											<div class="form-group row mb-2">
												<label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">Asal Sekolah</label>
												<div class="col-sm-12 col-md-8">
													<input type="text" name="asal" class="form-control" value="<?= $siswa['asal_sekolah'] ?>" >
												</div>
											</div>
											<div class="form-group row mb-2">
												<label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">Anak Ke</label>
												<div class="col-sm-12 col-md-8">
													<input type="number" name="anakke" class="form-control" value="<?= $siswa['anak_ke'] ?>" >
												</div>
											</div>
											<div class="form-group row mb-2">
												<label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">Jumlah Saudara</label>
												<div class="col-sm-12 col-md-8">
													<input type="number" name="saudara" class="form-control" value="<?= $siswa['saudara'] ?>" >
												</div>
											</div>
											<div class="form-group row mb-2">
												<label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">Tinggi Badan (Cm)</label>
												<div class="col-sm-12 col-md-8">
													<input type="number" name="tinggi" class="form-control" value="<?= $siswa['tinggi'] ?>" >
												</div>
											</div>
											<div class="form-group row mb-2">
												<label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">Berat Badan (Kg)</label>
												<div class="col-sm-12 col-md-8">
													<input type="number" name="berat" class="form-control" value="<?= $siswa['berat'] ?>" >
												</div>
											</div>
											<div class="form-group row mb-2">
												<label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">Status Dalam Keluarga</label>
												<div class="col-sm-12 col-md-8">
													<input type="text" name="statuskeluarga" class="form-control" value="<?= $siswa['status_keluarga'] ?>" >
												</div>
											</div>
											<div class="form-group row mb-2">
												<label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">No KIP</label>
												<div class="col-sm-12 col-md-8">
													<input type="text" name="kip" class="form-control" value="<?= $siswa['no_kip'] ?>" placeholder="kosongkan jika tidak punya KIP">
												</div>
											</div>
											 <div class="form-group row mb-2">
												<label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">Kelas</label>
												<div class="col-sm-12 col-md-8">
													<select class='form-control' name='kelas' required>>
													<option value="">Pilih Kelas</option>
													<?php $qu = mysqli_query($koneksi, "select * from jenjang where status='1'");
													while ($jenjang = mysqli_fetch_array($qu)) {
													?>
														<option value="<?= $jenjang['id_jenjang'] ?>"> <?= $jenjang['nama_jenjang'] ?></option> 
													<?php } ?>

												</select>
												
											</div>
											</div>
											
											<h5><i class="fas fa-home    "></i> Data Alamat</h5>
											<div class="form-group row mb-2">
												<label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">Alamat</label>
												<div class="col-sm-12 col-md-8">
													<input type="text" name="alamat" class="form-control" value="<?= $siswa['alamat'] ?>" placeholder="nama jalan / kampung" >
												</div>
											</div>
											<div class="form-group row mb-2">
												<label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">RT / RW</label>
												<div class="col-sm-6 col-xs-6 col-md-4">
													<input type="number" name="rt" class="form-control" value="<?= $siswa['rt'] ?>" >
												</div>
												<div class="col-sm-6 col-xs-6 col-md-4">
													<input type="number" name="rw" class="form-control" value="<?= $siswa['rw'] ?>" >
												</div>
											</div>
											<div class="form-group row mb-2">
												<label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">Desa</label>
												<div class="col-sm-12 col-md-8">
													<input type="text" name="desa" class="form-control" value="<?= $siswa['desa'] ?>" >
												</div>
											</div>
											<div class="form-group row mb-2">
												<label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">Kecamatan</label>
												<div class="col-sm-12 col-md-8">
													<input type="text" name="kecamatan" class="form-control" value="<?= $siswa['kecamatan'] ?>" >
												</div>
											</div>
											<div class="form-group row mb-2">
												<label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">Kabupaten / Kota</label>
												<div class="col-sm-12 col-md-8">
													<input type="text" name="kota" class="form-control" value="<?= $siswa['kota'] ?>" >
												</div>
											</div>
											<div class="form-group row mb-2">
												<label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">Provinsi</label>
												<div class="col-sm-12 col-md-8">
													<input type="text" name="provinsi" class="form-control" value="<?= $siswa['provinsi'] ?>" >
												</div>
											</div>
											<div class="form-group row mb-2">
												<label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">Kode Pos</label>
												<div class="col-sm-12 col-md-8">
													<input type="number" name="kodepos" class="form-control" value="<?= $siswa['kode_pos'] ?>" >
												</div>
											</div>
											<div class="form-group row mb-2">
												<label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">Tinggal Bersama</label>
												<div class="col-sm-12 col-md-8">
													<select class='form-control' name='tinggal' >
														<option value=''>Pilih Tinggal</option>";
														<?php foreach ($jenistinggal as $val) { ?>
															<?php if ($siswa['tinggal'] == $val) { ?>
																<option value='<?= $val ?>' selected><?= $val ?> </option>
															<?php  } else { ?>
																<option value='<?= $val ?>'><?= $val ?> </option>
															<?php } ?>
														<?php } ?>
													</select>
												</div>
											</div>
											<div class="form-group row mb-2">
												<label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">Jarak Ke Sekolah (Meter)</label>
												<div class="col-sm-12 col-md-8">
													<input type="number" name="jarak" class="form-control" value="<?= $siswa['jarak'] ?>" >
												</div>
											</div>
											<div class="form-group row mb-2">
												<label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">Berapa Menit Kesekolah</label>
												<div class="col-sm-12 col-md-8">
													<input type="number" name="waktu" class="form-control" value="<?= $siswa['waktu'] ?>" >
												</div>
											</div>
											<div class="form-group row mb-2">
												<label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">Transportasi</label>
												<div class="col-sm-12 col-md-8">
													<select class='form-control' name='transportasi' >
														<option value=''>Pilih Transportasi</option>";
														<?php foreach ($transport as $val) { ?>
															<?php if ($siswa['transportasi'] == $val) { ?>
																<option value='<?= $val ?>' selected><?= $val ?> </option>
															<?php  } else { ?>
																<option value='<?= $val ?>'><?= $val ?> </option>
															<?php } ?>
														<?php } ?>
													</select>
												</div>
											</div>
											<h5><i class="fas fa-user-check    "></i> Data Lengkap Ayah</h5>
                                <div class="form-group row mb-2">
                                    <label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">NIK Ayah</label>
                                    <div class="col-sm-12 col-md-5">
                                        <input type="number" name="nikayah" class="form-control" value="<?= $siswa['nik_ayah'] ?>" >
                                    </div>
                                </div>
                                <div class="form-group row mb-2">
                                    <label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">Nama Ayah</label>
                                    <div class="col-sm-12 col-md-7">
                                        <input type="text" name="namaayah" class="form-control" value="<?= $siswa['nama_ayah'] ?>" >
                                    </div>
                                </div>
                                <div class="form-group row mb-2">
                                    <label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">Tempat Lahir</label>
                                    <div class="col-sm-12 col-md-5">
                                        <input type="text" name="tempatayah" class="form-control" value="<?= $siswa['tempat_ayah'] ?>" >
                                    </div>
                                </div>
                                <div class="form-group row mb-2">
                                    <label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">Tanggal Lahir</label>
                                    <div class="col-sm-12 col-md-4">
                                        <input type="text" name="tglayah" class="datepicker form-control" value="<?= $siswa['tgl_lahir_ayah'] ?>" >
                                    </div>
                                </div>
                                <div class="form-group row mb-2">
                                    <label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">Pendidikan</label>
                                    <div class="col-sm-12 col-md-7">
                                        <select class='form-control' name='pendidikan_ayah' >
                                            <option value=''>Pilih Penghasilan</option>";
                                            <?php foreach ($pendidikan as $val) { ?>
                                                <?php if ($siswa['pendidikan_ayah'] == $val) { ?>
                                                    <option value='<?= $val ?>' selected><?= $val ?> </option>
                                                <?php  } else { ?>
                                                    <option value='<?= $val ?>'><?= $val ?> </option>
                                                <?php } ?>
                                            <?php } ?>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group row mb-2">
                                    <label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">Pekerjaan</label>
                                    <div class="col-sm-12 col-md-7">
                                        <select class='form-control' name='pekerjaan_ayah' >
                                            <option value=''>Pilih Pekerjaan</option>";
                                            <?php foreach ($pekerjaan as $val) { ?>
                                                <?php if ($siswa['pekerjaan_ayah'] == $val) { ?>
                                                    <option value='<?= $val ?>' selected><?= $val ?> </option>
                                                <?php  } else { ?>
                                                    <option value='<?= $val ?>'><?= $val ?> </option>
                                                <?php } ?>
                                            <?php } ?>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group row mb-2">
                                    <label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">Penghasilan</label>
                                    <div class="col-sm-12 col-md-7">
                                        <select class='form-control' name='penghasilan_ayah' >
                                            <option value=''>Pilih Penghasilan</option>";
                                            <?php foreach ($penghasilan as $val) { ?>
                                                <?php if ($siswa['penghasilan_ayah'] == $val) { ?>
                                                    <option value='<?= $val ?>' selected><?= $val ?> </option>
                                                <?php  } else { ?>
                                                    <option value='<?= $val ?>'><?= $val ?> </option>
                                                <?php } ?>
                                            <?php } ?>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group row mb-2">
                                    <label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">No HP Ayah</label>
                                    <div class="col-sm-12 col-md-5">
                                        <input type="number" name="nohpayah" class="form-control" value="<?= $siswa['no_hp_ayah'] ?>">
                                    </div>
                                </div>
								<h5><i class="fas fa-user-check    "></i> Data Lengkap ibu</h5>
                                <div class="form-group row mb-2">
                                    <label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">NIK ibu</label>
                                    <div class="col-sm-12 col-md-5">
                                        <input type="number" name="nikibu" class="form-control" value="<?= $siswa['nik_ibu'] ?>" >
                                    </div>
                                </div>
                                <div class="form-group row mb-2">
                                    <label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">Nama ibu</label>
                                    <div class="col-sm-12 col-md-7">
                                        <input type="text" name="namaibu" class="form-control" value="<?= $siswa['nama_ibu'] ?>" >
                                    </div>
                                </div>
                                <div class="form-group row mb-2">
                                    <label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">Tempat Lahir</label>
                                    <div class="col-sm-12 col-md-5">
                                        <input type="text" name="tempatibu" class="form-control" value="<?= $siswa['tempat_ibu'] ?>" >
                                    </div>
                                </div>
                                <div class="form-group row mb-2">
                                    <label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">Tanggal Lahir</label>
                                    <div class="col-sm-12 col-md-4">
                                        <input type="text" name="tglibu" value="" class="datepicker form-control" value="<?= $siswa['tgl_lahir_ibu'] ?>" >
                                    </div>
                                </div>
                                <div class="form-group row mb-2">
                                    <label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">Pendidikan</label>
                                    <div class="col-sm-12 col-md-7">
                                        <select class='form-control' name='pendidikan_ibu' >
                                            <option value=''>Pilih Penghasilan</option>";
                                            <?php foreach ($pendidikan as $val) { ?>
                                                <?php if ($siswa['pendidikan_ibu'] == $val) { ?>
                                                    <option value='<?= $val ?>' selected><?= $val ?> </option>
                                                <?php  } else { ?>
                                                    <option value='<?= $val ?>'><?= $val ?> </option>
                                                <?php } ?>
                                            <?php } ?>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group row mb-2">
                                    <label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">Pekerjaan</label>
                                    <div class="col-sm-12 col-md-7">
                                        <select class='form-control' name='pekerjaan_ibu' >
                                            <option value=''>Pilih Pekerjaan</option>";
                                            <?php foreach ($pekerjaan as $val) { ?>
                                                <?php if ($siswa['pekerjaan_ibu'] == $val) { ?>
                                                    <option value='<?= $val ?>' selected><?= $val ?> </option>
                                                <?php  } else { ?>
                                                    <option value='<?= $val ?>'><?= $val ?> </option>
                                                <?php } ?>
                                            <?php } ?>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group row mb-2">
                                    <label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">Penghasilan</label>
                                    <div class="col-sm-12 col-md-7">
                                        <select class='form-control' name='penghasilan_ibu' >
                                            <option value=''>Pilih Penghasilan</option>";
                                            <?php foreach ($penghasilan as $val) { ?>
                                                <?php if ($siswa['penghasilan_ibu'] == $val) { ?>
                                                    <option value='<?= $val ?>' selected><?= $val ?> </option>
                                                <?php  } else { ?>
                                                    <option value='<?= $val ?>'><?= $val ?> </option>
                                                <?php } ?>
                                            <?php } ?>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group row mb-2">
                                    <label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">No Hp Ibu</label>
                                    <div class="col-sm-12 col-md-5">
                                        <input type="number" name="nohpibu" class="form-control" value="<?= $siswa['no_hp_ibu'] ?>">
                                    </div>
                                </div>
											
																	
																	
																	<div class="modal-footer">
																		<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
																		<button type="submit" class="btn btn-primary">Save</button>
																	</div>
																</form>
															</div>
														</div>
													</div>
												</td>
												 
											</tr>
											<script>
												$('#form-edit<?= $no ?>').submit(function(e) {
													e.preventDefault();
													$.ajax({
														type: 'POST',
														url: 'mod_siswa/crud_siswa.php?pg=ubahcepat',
														data: $(this).serialize(),
														success: function(data) {

															iziToast.success({
																title: 'OKee!',
																message: 'Status Berhasil diubah',
																position: 'topRight'
															});
															setTimeout(function() {
																window.location.reload();
															}, 1000);
															$('#modal-edit<?= $no ?>').modal('hide');
															//$('#bodyreset').load(location.href + ' #bodyreset');
														}
													});
													return false;
												});
											</script>
										<?php }
										?>
										

									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>
<script>
    //IMPORT FILE PENDUKUNG 
    $('#form-import').on('submit', function(e) {
        e.preventDefault();
        $.ajax({
            type: 'post',
            url: 'mod_siswa/crud_siswa.php?pg=import',
            data: new FormData(this),
            processData: false,
            contentType: false,
            cache: false,
            beforeSend: function() {
                $('form button').on("click", function(e) {
                    e.preventDefault();
                });
            },
            success: function(data) {

                $('#importdata').modal('hide');
                iziToast.success({
                    title: 'Mantap!',
                    message: data,
                    position: 'topRight'
                });
                setTimeout(function() {
                    window.location.reload();
                }, 2000);


            }
        });
    });
	

    var cleaveI = new Cleave('.nisn', {

        blocks: [10]

    });
    var cleaveI = new Cleave('.nohp', {
        blocks: [4, 4, 4, 5]
    });
    $('#form-tambah').submit(function(e) {
        e.preventDefault();
        $.ajax({
            type: 'POST',
            url: 'mod_siswa/crud_daftar.php?pg=tambah',
            data: $(this).serialize(),
            beforeSend: function() {
                $('form button').on("click", function(e) {
                    e.preventDefault();
                });
            },
            success: function(data) {

                iziToast.success({
                    title: 'Mantap!',
                    message: 'data berhasil disimpan',
                    position: 'topRight'
                });
                setTimeout(function() {
                    window.location.reload();
                }, 2000);
                $('#tambahdata').modal('hide');
                //$('#bodyreset').load(location.href + ' #bodyreset');
            }
        });
        return false;
    });

    
</script>
<script>
$('#table-1').on('click', '.hapus', function() {
        var id = $(this).data('id');
        console.log(id);
        swal({
            title: 'Are you sure?',
            text: 'Akan menghapus data ini!',
            icon: 'warning',
            buttons: true,
            dangerMode: true,
        }).then((result) => {
            if (result) {
                $.ajax({
                    url: 'mod_siswa/crud_siswa.php?pg=hapus',
                    method: "POST",
                    data: 'id_siswa=' + id,
                    success: function(data) {
                        iziToast.error({
                            title: 'Horee!',
                            message: 'Data Berhasil dihapus',
                            position: 'topRight'
                        });
                        setTimeout(function() {
                            window.location.reload();
                        }, 2000);
                    }
                });
            }
        })

    });
</script>