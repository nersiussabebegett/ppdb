<ul class="sidebar-menu">
    <li class="menu-header bg-warning"></li>
    
		<li><a class="nav-link" href="?pg=formulir"><i class="fas fa-indent"></i> <span>Formulir</span><small class="label pull-right badge badge-danger">wajib</small></a></li>
		<li><a class="nav-link" href="?pg=berkas"><i class="fas fa-upload    "></i> <span>Upload Berkas</span><small class="label pull-right badge badge-danger">wajib</small></a></li>
		<?php if ($siswa['status'] == 1) { ?>
		<li><a class="nav-link" href="?pg=df_ulang"><i class="fas fa-address-card   "></i> <span>Daftar Ulang</span><small class="label pull-right badge badge-danger">wajib</small></a></li>
		<?php } else { ?>
		<li><a class="nav-link" href="#"><i class="fas fa-address-card   "></i> <span>Daftar Ulang</span><small class="label pull-right badge badge-danger">wajib</small></a></li>
		<?php } ?>
		<!------
		<li><a class="nav-link" href="?pg=bayar"><i class="fas fa-funnel-dollar fa-fw"></i> <span>Pembayaran</span></a></li>
		-------->
		<li><a class="nav-link" href="?pg=pengumuman"><i class="fas fa-bullhorn fa-fw"></i> <span>Pengumuman</span></a></li>
		<li><a class="nav-link" href="logout.php"><i class="btn-logout"> <span class="fa fa-sign-out-alt "></i></span>Logout</a></li>
</ul>
<div class="mt-4 mb-4 p-3 hide-sidebar-mini">
            <a href="https://<?= $setting['web'] ?>" class="btn btn-primary btn-lg btn-block btn-icon-split">
              <i class="fas fa-rocket"></i> Documentation
            </a>
          </div>
		  