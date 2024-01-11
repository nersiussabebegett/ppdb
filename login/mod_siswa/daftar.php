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
					<button type="button" class="btn btn-icon icon-left btn-warning" data-toggle="modal" data-target="#hapusdata">
                        <i class="fa fa-trash"></i> Hapus Siswa
                    </button>

    <!-- Modal -->
	<div class="modal fade" id="hapusdata" tabindex="-1" role="dialog" aria-labelledby="modelTitleId" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <form id="form-konfirmasi">
                <div class="modal-header">
                    <h5 class="modal-title">Hapus Data Siswa</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    
                    Terdapat <b><?= rowcount($koneksi, 'siswa') ?></b> Jumlah data Siswa Akan Di Hapus.
                    

                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-primary">Hapus Semua</button>
                </div>
            </form>
        </div>
    </div>
</div>
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
                    <table style="font-size: 12px" class="table table-striped table-sm table-bordered" cellspacing="0" id="table-1"width="700%">
                        <thead>
                            <tr>
                                <th class="text-center">
                                    No
                                </th>
                                <th>Jurusan</th>
                                <th>NIS</th>
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
                                <th>Tempat Ayah</th>
                                <th>Tgl Lahir Ayah</th>
                                <th>Pendidikan Ayah</th>
                                <th>Pekerjaan Ayah</th>
                                <th>Penghasilan Ayah</th>
                                <th>Status ibu</th>
                                <th>Nama Ibu</th>
                                <th>Nik Ibu</th>
                                <th>Tempat Lahir Ibu</th>
                                <th>Tgl Lahir Ibu</th>
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
                                <th>Waktu Tempuh </th>
                                <th>Transport </th>
                                <th>password </th>
                                <th>Alamat Lengkap</th>

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
                                    <td class="str"><?= $siswa['jurusan'] ?></td>
                                    <td class="str"><?= $siswa['nis'] ?></td>
                                    <td class="str"><?= $siswa['nisn'] ?></td>
                                    <td class="str"><?= $siswa['nik'] ?></td>
                                    <td><?= $siswa['nama'] ?></td>
                                    <td><?= $siswa['jenkel'] ?></td>
                                    <td><?= $siswa['tempat_lahir'] ?></td>
                                    <td class="date"><?= $siswa['tgl_lahir'] ?></td>
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
                                    <td><?= $siswa['tempat_ayah'] ?></td>
                                    <td class="str"><?= $siswa['tahun_ayah'] ?></td>
                                    <td><?= $siswa['pendidikan_ayah'] ?></td>
                                    <td><?= $siswa['pekerjaan_ayah'] ?></td>
                                    <td><?= $siswa['penghasilan_ayah'] ?></td>
                                    <td><?= $siswa['status_ibu'] ?></td>
                                    <td><?= $siswa['nama_ibu'] ?></td>
                                    <td class="str"><?= $siswa['nik_ibu'] ?></td>
                                    <td class="str"><?= $siswa['tempat_ibu'] ?></td>
                                    <td class="str"><?= $siswa['tahun_ibu'] ?></td>
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
                                    <td><?= $siswa['alamat'] ?>,RT <?= $siswa['rt'] ?>, RW <?= $siswa['rw'] ?></td>
							        <td><img src="../<?= $siswa['foto'] ?>" class="img-thumbnail" width="30"></td>
									
                                    					
									   
									<td>
									
                                       
										 <a data-toggle="tooltip" data-placement="top" title="" data-original-title="ubah siswa" href="?pg=ubahsiswa&id=<?= enkripsi($siswa['id_siswa']) ?>" class="btn btn-sm btn-success"><i class="fas fa-edit    "></i></a>
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
										
										
										 <button data-id="<?= $siswa['id_siswa'] ?>" class="hapus btn-sm btn btn-danger"><i class="fas fa-trash    "></i></button>
								
                                       
                                       
							<?php }
										?>
						</tbody></table></div>
					</div>
				</div>
			</div></div>
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
<script>
$('#form-konfirmasi').submit(function(e) {
            e.preventDefault();
        swal({
            title: 'Apa kamu yakin ?',
            text: 'Akan Menghapus data anda ?',
            icon: 'warning',
            buttons: true,
            dangerMode: true,
        }).then((result) => {
            if (result) {
                $.ajax({
                    url: 'mod_siswa/crud_siswa.php?pg=konfirmasi',
                    method: "POST",
                    data: $(this).serialize(),
                    success: function(data) {
                        iziToast.success({
                            title: 'Terimakasih!',
                            message: 'Data Berhasil di Hapus',
                            position: 'topRight'
                        });
                        setTimeout(function() {
                            window.location.reload();
                        }, 1000);
                    }
                });
            }
        })

    });
</script>