<?php defined('BASEPATH') or die("ip anda sudah tercatat oleh sistem kami") ?>
<div class="row">
    <div class="col-12">
        <div class="card">
            <div class="card-header">
                <h4>Data Alumni</h4>
                <div class="card-header-action">
                    <a class="btn btn-primary" href="mod_daftar/export_diterima.php" role="button"> Download Excel</a>

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
                                <th>Status</th>
                               
                            </tr>
                        </thead>
                        <tbody>
                            <?php
                            $query = mysqli_query($koneksi, "select * from siswa where status='2'");
                            $no = 0;
                            while ($siswa = mysqli_fetch_array($query)) {
                                $no++;
                            ?>
                                <tr>
                                    <td><?= $no; ?></td>
                                    <td><?= $siswa['nisn'] ?></td>
                                    <td><?= $siswa['nama'] ?></td>
                                    <td>
                                        <?php if ($siswa['status'] == 2) { ?>
                                            <span class="badge badge-success">Alumni</span>
                                        <?php } else { ?>
                                            <span class="badge badge-warning">siswa Aktif</span>
                                        <?php } ?>
                                    
									<button data-id="<?= $siswa['id_siswa'] ?>" class="batallulus btn-sm btn btn-warning"><i class="fa fa-oke    "></i> Batalkan</button>
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