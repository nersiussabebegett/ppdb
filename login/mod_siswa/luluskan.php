<?php defined('BASEPATH') or die("ip anda sudah tercatat oleh sistem kami") ?>
<div class="row">
    <div class="col-12">
        <div class="card">
            <div class="card-header">
                <h4>Data Siswa Kelas Akhir</h4>
                <div class="card-header-action">
                    <a class="btn btn-primary" href="mod_daftar/export_diterima.php" role="button"> Download Excel</a>
					

                </div>
            </div>
            <div class="card-body">
                <div class="table-responsive">
                    <table style="font-size: 12px" class="table table-striped table-sm" id="table-1">
                        
						<thead>
						
                            <tr>
                                <th width='5px'><input type='checkbox' id='ceksemua'></th>
								<th class="text-center">
                                    #
                                </th>
                                <th>NISN</th>
                                <th>Nama Siswa</th>
                                <th>Status</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php
                            $query = mysqli_query($koneksi, "select * from siswa where kelas='12'");
							 
                            $no = 0;
                            while ($siswa = mysqli_fetch_array($query)) {
                                $no++;
                            ?>
                                <tr>
                                    <td><input type='checkbox' name='cekpilih[]' class='cekpilih' id='cekpilih-$no' value="<?= $siswa['id_siswa'] ?>"></td>
									<td><?= $no; ?></td>
                                    <td><?= $siswa['nisn'] ?></td>
                                    <td><?= $siswa['nama'] ?></td>
                                    <td>
                                        <?php if ($siswa['status'] == 1) { ?>
                                            <span class="badge badge-success">Siswa Aktif</span>
                                        <?php } else { ?>
                                            <span class="badge badge-warning">Lulus</span>
                                        <?php } ?>
                                    </td>
                                    <td>
									<?php if ($siswa['status'] == 1) { ?>
									 <button data-id="<?= $siswa['id_siswa'] ?>" class="lulus btn-sm btn btn-info"><i class="fa fa-oke    "></i> Luluskan</button>
									  <?php } else { ?>
									  <button data-id="<?= $siswa['id_siswa'] ?>" class="batallulus btn-sm btn btn-warning"><i class="fa fa-oke    "></i> Batalkan</button>
                                       <?php } ?>  

                                    
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
    $('#table-1').on('click', '.lulus', function() {
        var id = $(this).data('id');
        console.log(id);
        swal({
            title: 'Apa kamu yakin ?',
            text: 'Akan Meluluskan Siswa ini?',
            icon: 'warning',
            buttons: true,
            dangerMode: true,
        }).then((result) => {
            if (result) {
                $.ajax({
                    url: 'mod_siswa/crud_siswa.php?pg=lulus',
                    method: "POST",
                    data: 'id_siswa=' + id,
                    success: function(data) {
                        iziToast.success({
                            title: 'O o w!',
                            message: 'Data Berhasil di Luluskan',
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
    $('#table-1').on('click', '.batallulus', function() {
        var id = $(this).data('id');
        console.log(id);
        swal({
            title: 'Apa kamu yakin ?',
            text: 'Akan Membatalkann Siswa ini?',
            icon: 'warning',
            buttons: true,
            dangerMode: true,
        }).then((result) => {
            if (result) {
                $.ajax({
                    url: 'mod_siswa/crud_siswa.php?pg=batallulus',
                    method: "POST",
                    data: 'id_siswa=' + id,
                    success: function(data) {
                        iziToast.success({
                            title: 'O o w!',
                            message: 'Data Berhasil di Batalkan',
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