<?php defined('BASEPATH') or die("ip anda sudah tercatat oleh sistem kami") ?>
<!-- Modal -->
<div class="modal fade" id="tambahdata" tabindex="-1" role="dialog" aria-labelledby="modelTitleId" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <form id="form-tambah">
                <div class="modal-header">
                    <h5 class="modal-title">Tambah Data Mutasi</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <label>No Surat</label>
                        <input type="text" name="surat_masuk" class="form-control " ="">
                    </div>
					<div class="form-group">
                        <label>Tanggal Masuk</label>
                        <input type="text" name="tgl_masuk" class="datepicker form-control " ="">
                    </div>
					<div class="form-group">
                        <label>NISN</label>
                        <input type="text" name="nisn" class="form-control " required="">
                    </div>
                    <div class="form-group">
                        <label>Nama Siswa</label>
                        <input type="text" name="nama" class="form-control" required="">
                    </div>
					
					<div class="form-group">
                        <label for="jenis">Jenis Kelamin</label>
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

                    <div class="form-group">
                        <label for="asal">Asal Sekolah</label>
                         <input type="text" name="asal_sekolah" class="form-control" required="">
                    </div>
					<div class="form-group">
                        <label for="asal">Kelas</label>
                        <select class="form-control" name="kelas" id="kelas">
                            <option value="10">Kelas X</option>
							<option value="11">Kelas XI</option>
							<option value="12">Kelas XII</option>
                        </select>
                    </div>
					<div class="form-group">
                        <label for="jenis">Jenis Pendaftaran</label>
                        <select class="form-control" name="jenis" id="jenis">
                            <option value="2">Pindahan</option>
                        </select>
                    </div>
                    
                    <div class="form-group">
                        <label>Nama Ayah</label>
                        <input type="text" name="nama_ayah" class="form-control" required="">
                    </div>
					<div class="form-group">
                        <label for="jenis">Pekerjaan Ayah</label>
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
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-primary">Save</button>
                </div>
            </form>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-12">
        <div class="card">
            <div class="card-header">
                <h4>Data Mutasi Masuk</h4>
                <div class="card-header-action">
                    <a class="btn btn-primary" href="mod_siswa/export_excel.php" role="button"> Download Excel</a>
                    <button type="button" class="btn btn-icon icon-left btn-primary" data-toggle="modal" data-target="#tambahdata">
                        <i class="far fa-edit"></i> Tambah Data
                    </button>
                </div>
            </div>
            <div class="card-body">
                <div class="table-responsive">
                    <table style="font-size: 12px" class="table table-striped table-sm" id="table-1">
                        <thead>
                            <tr>
                                <th class="text-center">
                                    #
                                </th>
                                <th>No Surat</th>
								<th>Nama Siswa</th>
                                <th>Asal Sekolah</th>
                                <th>Nama Ayah</th>
                                
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php
                            $query = mysqli_query($koneksi, "select * from siswa where jenis ='2'");
                            $no = 0;
                            while ($siswa = mysqli_fetch_array($query)) {
                                $no++;
                            ?>
                                <tr>
                                    <td><?= $no; ?></td>
                                    <td><?= $siswa['surat_masuk'] ?></td>
									<td><?= $siswa['nama'] ?></td>
                                    <td><?= $siswa['asal_sekolah'] ?></td>
                                    <td><?= $siswa['nama_ayah'] ?></td>
                                    
                                   
									
                                    <td>
                                        <a data-toggle="tooltip" data-placement="top" title="" data-original-title="Cetak Surat" href="mod_siswa/surat_mutasi_masuk.php?id=<?= enkripsi($siswa['id_siswa']) ?>" class="btn btn-sm btn-info"><i class="fas fa-download    "></i></a>
                                        <!-- Button trigger modal -->
                                         <button data-id="<?= $siswa['id_siswa'] ?>" class="hapus btn-sm btn btn-danger"><i class="fas fa-trash    "></i></button>
										 <!--<button type="button" class="btn btn-sm btn-primary" data-toggle="modal" data-target="#modal-edit<?= $no ?>">
                                            <i class="fas fa-edit    "></i>
                                        </button>
                                       
                                         Modal 
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
                                                            <input type="hidden" value="<?= $siswa['id_siswa'] ?>" name="id_siswa" class="form-control" required="">
															
                                                            <div class="form-group">
                                                                <div class="control-label">Pilih Status</div>
                                                                <div class="custom-switches-stacked mt-2">
                                                                    <label class="custom-switch">
                                                                        <input type="radio" name="status" value="0" class="custom-switch-input" checked>
                                                                        <span class="custom-switch-indicator"></span>
                                                                        <span class="custom-switch-description">Dipending</span>
                                                                    </label>
                                                                    <label class="custom-switch">
                                                                        <input type="radio" name="status" value="1" class="custom-switch-input">
                                                                        <span class="custom-switch-indicator"></span>
                                                                        <span class="custom-switch-description">Diterima</span>
                                                                    </label>
                                                                    <label class="custom-switch">
                                                                        <input type="radio" name="status" value="2" class="custom-switch-input">
                                                                        <span class="custom-switch-indicator"></span>
                                                                        <span class="custom-switch-description">Dicadangkan</span>
                                                                    </label>


                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="modal-footer">
                                                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                                            <button type="submit" class="btn btn-primary">Save</button>
                                                        </div>
                                                    </form>
                                                </div>
                                            </div>
                                        </div>-->
                                    </td>
                                </tr>
                                <script>
                                    $('#form-edit<?= $no ?>').submit(function(e) {
                                        e.preventDefault();
                                        $.ajax({
                                            type: 'POST',
                                            url: 'mod_siswa/crud_siswa.php?pg=status',
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

    $('#form-tambah').submit(function(e) {
        e.preventDefault();
        $.ajax({
            type: 'POST',
            url: 'mod_siswa/crud_siswa.php?pg=mutasimasuk',
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