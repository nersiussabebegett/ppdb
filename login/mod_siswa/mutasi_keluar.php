<?php defined('BASEPATH') or die("ip anda sudah tercatat oleh sistem kami") ?>
<div class="row">
    <div class="col-12">
        <div class="card">
            <div class="card-header">
                <h4>Data Siswa Aktif</h4>
                <div class="card-header-action">
                    

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
                                <th>NISN</th>
                                <th>Nama Siswa</th>
                                
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php
                            $query = mysqli_query($koneksi, "select * from daftar where status='1'");
                            $no = 0;
                            while ($daftar = mysqli_fetch_array($query)) {
                                $no++;
                            ?>
                                <tr>
                                    <td><?= $no; ?></td>
                                    <td><?= $daftar['nisn'] ?></td>
                                    <td><?= $daftar['nama'] ?></td>
                                    
                                    <td>
                                        

                                       <button type="button" class="btn btn-sm btn-primary" data-toggle="modal" data-target="#modal-edit<?= $no ?>">
                                            <i class="fas fa-info    "></i> Mutasikan
                                        </button>
										 <!-- Modal -->
                                        <div class="modal fade" id="modal-edit<?= $no ?>" tabindex="-1" role="dialog" aria-labelledby="modelTitleId" aria-hidden="true">
                                            <div class="modal-dialog" role="document">
                                                <div class="modal-content">
                                                    <form id="form-edit<?= $no ?>">
                                                        <div class="modal-header">
                                                            <h5 class="modal-title">Edit Data Mutasi</h5>
                                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                                <span aria-hidden="true">&times;</span>
                                                            </button>
                                                        </div>
                                                        <div class="modal-body">
                                                            <input type="hidden" value="<?= $daftar['id_daftar'] ?>" name="id_daftar" class="form-control" ="">
                                                            <div class="form-group">
                                                                <label>Nama siswa</label>
                                                                <input type="text" name="nama" value="<?= $daftar['nama'] ?>" class="form-control" ="">
                                                            </div>
                                                            <div class="form-group">
                                                                <label>Sekolah Tujuan</label>
                                                                <input type="text" name="sekolah_tujuan" value="<?= $daftar['sekolah_tujuan'] ?>" class="form-control" ="">
                                                            </div>
                                                            
                                                            <div class="form-group">
                                                                <label>Npsn Sekolah Tujuan</label>
                                                                <input type="text" name="npsn_sekolah_tujuan" value="<?= $daftar['npsn_sekolah_tujuan'] ?>" class="form-control" ="">
                                                            </div>
															<div class="form-group">
                                                                <label>Tanggal Mutasi</label>
                                                                 <input type="text" class="form-control datepicker" name="tgl_keluar" >
                                                            </div>
															<div class="form-group">
                                                                <label>Alasan Mutasi</label>
                                                                <input type="text" name="alasan_keluar" value="<?= $daftar['alasan_keluar'] ?>" class="form-control" ="">
                                                            </div>
                                                            <div class="form-group">
                                                                <div class="control-label">Status Mutasi</div>
                                                                <label class="custom-switch mt-2">
                                                                    <input type="checkbox" name="status" class="custom-switch-input" value='1' <?php if ($daftar['status'] == 3) {
                                                                                                                                                    echo "checked";
                                                                                                                                                } ?>>
                                                                    <span class="custom-switch-indicator"></span>
                                                                    <span class="custom-switch-description"> Mutasikan</span>
                                                                </label>
                                                            </div>
                                                        </div>
                                                        <div class="modal-footer">
                                                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                                            <button type="submit" class="btn btn-primary">Proses</button>
                                                        </div>
                                                    </form>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                </tr>

                                    </td>
                                </tr>

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
                                    $('#form-edit<?= $no ?>').submit(function(e) {
                                        e.preventDefault();
                                        $.ajax({
                                            type: 'POST',
                                            url: 'mod_siswa/crud_siswa.php?pg=mutasi',
                                            data: $(this).serialize(),
                                            success: function(data) {
                                                if (data == 'OK') {
                                                    iziToast.success({
                                                        title: 'OKee!',
                                                        message: 'Data Berhasil diubah',
                                                        position: 'topRight'
                                                    });
                                                    setTimeout(function() {
                                                        window.location.reload();
                                                    }, 2000);
                                                    $('#modal-edit<?= $no ?>').modal('hide');
                                                } else {
                                                    iziToast.error({
                                                        title: 'Maaf!',
                                                        message: 'Data Gagal ditambahkan atau username sudah ada',
                                                        position: 'topRight'
                                                    });
                                                }

                                                //$('#bodyreset').load(location.href + ' #bodyreset');
                                            }
                                        });
                                        return false;
                                    });
                                </script>


<div class="row">
    <div class="col-12">
        <div class="card">
            <div class="card-header">
                <h4>Data Siswa Mutasi Keluar</h4>
            </div>
            <div class="card-body">
                <div class="table-responsive">
                    <table class="table table-striped table-sm" id="table-1">
                        <thead>
                            <tr>
                                <th class="text-center">
                                    No
                                </th>
                                <th>Nama Siswa</th>
                                <th>Sekolah Tujuan</th>
                                <th>Tanggal</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php
                            $query = mysqli_query($koneksi, "select * from daftar where status='3'");
                            $no = 0;
                            while ($daftar = mysqli_fetch_array($query)) {
                                $no++;
                            ?>
                                <tr>
                                    <td><?= $no; ?></td>
                                    <td><?= $daftar['nama'] ?></td>
                                    <td><?= $daftar['sekolah_tujuan'] ?></td>
                                    <td><?= $daftar['tgl_keluar'] ?></td>
                                   
                                    <td>
                                       
                                        <button type="button" class="btn btn-sm btn-primary" data-toggle="modal" data-target="#modal-edit<?= $no ?>">
                                            <i class="fas fa-edit    "></i> Edit
                                        </button>

                                        <!-- Modal -->
                                        <div class="modal fade" id="modal-edit<?= $no ?>" tabindex="-1" role="dialog" aria-labelledby="modelTitleId" aria-hidden="true">
                                            <div class="modal-dialog" role="document">
                                                <div class="modal-content">
                                                    <form id="form-edit<?= $no ?>">
                                                        <div class="modal-header">
                                                            <h5 class="modal-title">Edit Data Mutasi</h5>
                                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                                <span aria-hidden="true">&times;</span>
                                                            </button>
                                                        </div>
                                                        <div class="modal-body">
                                                            <input type="hidden" value="<?= $daftar['id_daftar'] ?>" name="id_daftar" class="form-control" ="">
                                                            <div class="form-group">
                                                                <label>Nama siswa</label>
                                                                <input type="text" name="nama" value="<?= $daftar['nama'] ?>" class="form-control" ="">
                                                            </div>
                                                            <div class="form-group">
                                                                <label>Sekolah Tujuan</label>
                                                                <input type="text" name="sekolah_tujuan" value="<?= $daftar['sekolah_tujuan'] ?>" class="form-control" ="">
                                                            </div>
                                                            
                                                            <div class="form-group">
                                                                <label>Npsn Sekolah Tujuan</label>
                                                                <input type="text" name="npsn_sekolah_tujuan" value="<?= $daftar['npsn_sekolah_tujuan'] ?>" class="form-control" ="">
                                                            </div>
															<div class="form-group">
                                                                <label>Tanggal Mutasi</label>
                                                                <input type="date" name="tgl_keluar" value="<?= $daftar['tgl_keluar'] ?>" class="form-control" ="">
                                                            </div>
															<div class="form-group">
                                                                <label>alasan Mutasi</label>
                                                                <input type="text" name="alasan_keluar" value="<?= $daftar['alasan_keluar'] ?>" class="form-control" ="">
                                                            </div>
                                                            <div class="form-group">
                                                                <div class="control-label">Status Mutasi</div>
                                                                <label class="custom-switch mt-2">
                                                                    <input type="checkbox" name="status" class="custom-switch-input" value='1' <?php if ($user['status'] == 3) {
                                                                                                                                                    echo "checked";
                                                                                                                                                } ?>>
                                                                    <span class="custom-switch-indicator"></span>
                                                                    <span class="custom-switch-description"> Mutasikan</span>
                                                                </label>
                                                            </div>
                                                        </div>
                                                        <div class="modal-footer">
                                                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                                            <button type="submit" class="btn btn-primary">Proses</button>
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
                                            url: 'mod_siswa/crud_daftar.php?pg=edit_mutasi',
                                            data: $(this).serialize(),
                                            success: function(data) {
                                                if (data == 'OK') {
                                                    iziToast.success({
                                                        title: 'OKee!',
                                                        message: 'Data Berhasil diubah',
                                                        position: 'topRight'
                                                    });
                                                    setTimeout(function() {
                                                        window.location.reload();
                                                    }, 2000);
                                                    $('#modal-edit<?= $no ?>').modal('hide');
                                                } else {
                                                    iziToast.error({
                                                        title: 'Maaf!',
                                                        message: 'Data Gagal ditambahkan atau username sudah ada',
                                                        position: 'topRight'
                                                    });
                                                }

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

