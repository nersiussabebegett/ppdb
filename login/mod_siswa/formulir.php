<?php defined('BASEPATH') or die("ip anda sudah tercatat oleh sistem kami") ?>
<?php $siswa = fetch($koneksi, 'siswa', ['id_siswa' => dekripsi($_GET['id'])]); ?>

			<div class="row">
    <div class="col-12 col-sm-12 col-lg-12">
        <div class="card author-box card-primary">
            <div class="card-header">
                <h4>Data diri Siswa</h4>
                <div class="card-header-action">
                   
					
                </div>
            </div>
            <div class="card-body">
                <div class="author-box-left">
                    <img alt="image" src="../<?= $siswa['foto'] ?>" class="rounded-circle author-box-picture">
                    <div class="clearfix"></div>
                    <br>
                    <div class="author-box-job">Status Siswa</div>
                    <?php if ($siswa['status'] == 1) { ?>
                        <span class="badge badge-success">Aktif</span>
                    <?php } else { ?>
                        <span class="badge badge-danger">Tidak Aktif</span>
                    <?php } ?>
                </div>
		
                <div class="author-box-details">

                    <ul class="nav nav-pills" id="myTab3" role="tablist">
                        <li class="nav-item col-sm-12 col-md-3">
                            <a class="nav-link active" id="home-tab3" data-toggle="tab" href="#home3" role="tab" aria-controls="home" aria-selected="true"><i class="fas fa-user    "></i> Data Diri</a>
                        </li>
                        <li class="nav-item col-sm-12 col-md-3">
                            <a class="nav-link" id="contact-tab3" data-toggle="tab" href="#contact3" role="tab" aria-controls="contact" aria-selected="false"><i class="fas fa-home    "></i> Data Alamat</a>
                        </li>
                        <li class="nav-item col-sm-12 col-md-3">
                            <a class="nav-link" id="profile-tab3" data-toggle="tab" href="#profile3" role="tab" aria-controls="profile" aria-selected="false"><i class="fas fa-user-friends    "></i> Orang Tua</a>
                        </li>
						 

                    </ul>
                    <div class="tab-content" id="myTabContent2">
                        <div class="tab-pane fade show active" id="home3" role="tabpanel" aria-labelledby="home-tab3">
						
                            <form id="form-datadiri">
								<input type="hidden" name="id_siswa" value="<?php echo $siswa['id_siswa'] ?>">
								<div class="form-group row mb-2">
                                    <label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">NIS Lokal</label>
                                    <div class="col-sm-12 col-md-7">
                                        <input type="text" name="nis" class="form-control" value="<?= $siswa['nis'] ?>" >
                                    </div>
                                </div>
                                <div class="form-group row mb-2">
                                    <label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">Jurusan</label>
                                    <div class="col-sm-12 col-md-7">
                                        <select class='form-control' name='jurusan' >
                                            <option value="<?= $siswa['jurusan'] ?>"><?= $siswa['jurusan'] ?></option>
													<?php $qu = mysqli_query($koneksi, "select * from jurusan where status='1'");
													while ($jur = mysqli_fetch_array($qu)) {
													?>
														<option value="<?= $jur['id_jurusan'] ?>"> <?= $jur['nama_jurusan'] ?></option>
														<?php } ?>
                                        </select>
                                    </div>
									
                                </div>
								<div class="form-group row mb-2">
                                    <label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">Kelas</label>
                                    <div class="col-sm-12 col-md-7">
                                        <select class='form-control' name='kelas' >
                                            <option value="<?= $siswa['kelas'] ?>"><?= $siswa['kelas'] ?></option>
													<?php $qu = mysqli_query($koneksi, "select * from kelas where status='1'");
													while ($jur = mysqli_fetch_array($qu)) {
													?>
														<option value="<?= $jur['id_kelas'] ?>"> <?= $jur['nama_kelas'] ?></option>
														<?php } ?>
                                        </select>
                                    </div>
									
                                </div>
                                
                               
                                
								<div class="form-group row mb-2">
                                    <label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">NISN</label>
                                    <div class="col-sm-12 col-md-7">
                                        <input type="number" name="nisn" class="form-control" value="<?= $siswa['nisn'] ?>" >
                                    </div>
                                </div>
                                <div class="form-group row mb-2">
                                    <label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">NIK</label>
                                    <div class="col-sm-12 col-md-7">
                                        <input type="number" name="nik" class="form-control" value="<?= $siswa['nik'] ?>" >
                                    </div>
                                </div>
                                <div class="form-group row mb-2">
                                    <label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">No KK</label>
                                    <div class="col-sm-12 col-md-7">
                                        <input type="number" name="nokk" class="form-control" value="<?= $siswa['no_kk'] ?>" >
                                    </div>
                                </div>
                                <div class="form-group row mb-2">
                                    <label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">Nama Lengkap</label>
                                    <div class="col-sm-12 col-md-7">
                                        <input type="text" name="nama" class="form-control" value="<?= $siswa['nama'] ?>" >
                                    </div>
                                </div>
                                <div class="form-group row mb-2">
                                    <label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">Tempat</label>
                                    <div class="col-sm-12 col-md-7">
                                        <input type="text" name="tempat" class="form-control" value="<?= $siswa['tempat_lahir'] ?>" >
                                    </div>
                                </div>
                                <div class="form-group row mb-2">
                                    <label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">Tgl Lahir</label>
                                    <div class="col-sm-12 col-md-7">
                                        <input type="text" name="tgllahir" class="form-control datepicker" value="<?= $siswa['tgl_lahir'] ?>" >
                                    </div>
                                </div>
                                <div class="form-group row mb-2">
                                    <label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">Jenis Kelamin</label>
                                    <div class="col-sm-12 col-md-7">
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
                                    <div class="col-sm-12 col-md-7">
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
                                    <div class="col-sm-12 col-md-7">
                                        <input type="number" name="nohp" class="form-control" value="<?= $siswa['no_hp'] ?>" >
                                    </div>
                                </div>
                                <div class="form-group row mb-2">
                                    <label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">Asal Sekolah</label>
                                    <div class="col-sm-12 col-md-7">
                                        <input type="text" name="asal" class="form-control" value="<?= $siswa['asal_sekolah'] ?>" >
                                    </div>
                                </div>
                                <div class="form-group row mb-2">
                                    <label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">Anak Ke</label>
                                    <div class="col-sm-12 col-md-7">
                                        <input type="text" name="anakke" class="form-control" value="<?= $siswa['anak_ke'] ?>" >
                                    </div>
                                </div>
                                <div class="form-group row mb-2">
                                    <label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">Jumlah Saudara</label>
                                    <div class="col-sm-12 col-md-7">
                                        <input type="text" name="saudara" class="form-control" value="<?= $siswa['saudara'] ?>" >
                                    </div>
                                </div>
                                <div class="form-group row mb-2">
                                    <label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">Pernah PAUD</label>
                                    <div class="col-sm-12 col-md-7">
                                        <input type="text" name="paud" class="form-control" value="<?= $siswa['paud'] ?>" >
                                    </div>
                                </div>
                                <div class="form-group row mb-2">
                                    <label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">Pernah TK/RA</label>
                                    <div class="col-sm-12 col-md-7">
                                        <input type="text" name="tk" class="form-control" value="<?= $siswa['tk'] ?>" >
                                    </div>
                                </div>
								<div class="form-group row mb-2">
                                    <label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">Cita Cita</label>
                                    <div class="col-sm-12 col-md-7">
                                        <input type="text" name="citacita" class="form-control" value="<?= $siswa['citacita'] ?>" >
                                    </div>
                                </div>
								<div class="form-group row mb-2">
                                    <label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">Hobi</label>
                                    <div class="col-sm-12 col-md-7">
                                        <input type="text" name="hobi" class="form-control" value="<?= $siswa['hobi'] ?>" >
                                    </div>
                                </div>
                                <div class="form-group row mb-2">
                                    <label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">Status Dalam Keluarga (kandung/tiri)</label>
                                    <div class="col-sm-12 col-md-7">
                                        <input type="text" name="statuskeluarga" class="form-control" value="<?= $siswa['status_keluarga'] ?>" >
                                    </div>
                                </div>
                                <div class="form-group row mb-2">
                                    <label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">No KIP</label>
                                    <div class="col-sm-12 col-md-7">
                                        <input type="text" name="kip" class="form-control" value="<?= $siswa['no_kip'] ?>" placeholder="kosongkan jika tidak punya KIP">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <p>*Harap isi data alamat dengan sebenar-benarnya</p>
                                    <center><button id="btnsimpan" type="submit" class="btn btn-primary btn-lg mt-2">Simpan Data Diri</button></center>
                                </div>
                            </form>
                        </div>
                        <div class="tab-pane fade" id="contact3" role="tabpanel" aria-labelledby="contact-tab3">
                            <form id="form-alamat">
                               <input type="hidden" name="id_siswa" value="<?php echo $siswa['id_siswa'] ?>">
                                <div class="form-group row mb-2">
                                    <label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">Alamat</label>
                                    <div class="col-sm-12 col-md-7">
                                        <input type="text" name="alamat" class="form-control" value="<?= $siswa['alamat'] ?>" placeholder="nama jalan / kampung" >
                                    </div>
                                </div>
                                <div class="form-group row mb-2">
                                    <label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">RT / RW</label>
                                    <div class="col-sm-3 col-md-3">
                                        <input type="number" name="rt" class="form-control" value="<?= $siswa['rt'] ?>"placeholder="RT" >
                                    </div>
                                    <div class="col-sm-3 col-xs-3 col-md-3">
                                        <input type="number" name="rw" class="form-control" value="<?= $siswa['rw'] ?>" placeholder="RW" >
                                    </div>
                                </div>
                                <div class="form-group row mb-2">
                                    <label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">Desa</label>
                                    <div class="col-sm-12 col-md-7">
                                        <input type="text" name="desa" class="form-control" value="<?= $siswa['desa'] ?>" >
                                    </div>
                                </div>
                                <div class="form-group row mb-2">
                                    <label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">Kecamatan</label>
                                    <div class="col-sm-12 col-md-7">
                                        <input type="text" name="kecamatan" class="form-control" value="<?= $siswa['kecamatan'] ?>" >
                                    </div>
                                </div>
                                <div class="form-group row mb-2">
                                    <label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">Kabupaten / Kota</label>
                                    <div class="col-sm-12 col-md-7">
                                        <input type="text" name="kota" class="form-control" value="<?= $siswa['kota'] ?>" >
                                    </div>
                                </div>
                                <div class="form-group row mb-2">
                                    <label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">Provinsi</label>
                                    <div class="col-sm-12 col-md-7">
                                        <input type="text" name="provinsi" class="form-control" value="<?= $siswa['provinsi'] ?>" >
                                    </div>
                                </div>
                                <div class="form-group row mb-2">
                                    <label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">Kode Pos</label>
                                    <div class="col-sm-12 col-md-7">
                                        <input type="number" name="kodepos" class="form-control" value="<?= $siswa['kode_pos'] ?>" >
                                    </div>
                                </div>
                                <div class="form-group row mb-2">
                                    <label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">Tinggal Bersama</label>
                                    <div class="col-sm-12 col-md-7">
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
                                    <div class="col-sm-12 col-md-7">
                                        
										<select name="jarak"  value="<?= $siswa['jarak'] ?>" class="form-control input-sm input-select"required>
                                                    <option value="<?= $siswa['jarak'] ?>"
													  ><?= $siswa['jarak'] ?></option>
													  <option value="Kurang dari 5 Km"
													  >Kurang dari 5 Km</option>
																	<option value="Antara 5 - 10 Km"
													  >Antara 5 - 10 Km</option>
																	<option value="Antara 11 - 20 Km"
													  >Antara 11 - 20 Km</option>
																	<option value="Antara 21 - 30 Km"
													 >Antara 21 - 30 Km</option>
																	<option value="Lebih dari 30 Km"
													  >Lebih dari 30 Km</option>
                                                  </select>
                                    </div>
                                </div>
                                <div class="form-group row mb-2">
                                    <label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">Berapa Menit Kesekolah</label>
                                    <div class="col-sm-12 col-md-7">
                                        <input type="number" name="waktu" class="form-control" value="<?= $siswa['waktu'] ?>" >
                                    </div>
                                </div>
                                <div class="form-group row mb-2">
                                    <label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">Transportasi</label>
                                    <div class="col-sm-12 col-md-7">
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
                                <div class="form-group">
                                    <p>*Harap isi data alamat dengan sebenar-benarnya</p>
                                    <center><button type="submit" class="btn btn-primary btn-lg mt-2">Simpan Data Alamat</button></center>
                                </div>
                            </form>
                        </div>
                        <div class="tab-pane fade" id="profile3" role="tabpanel" aria-labelledby="profile-tab3">
                            <form id="form-orangtua">
                                <input type="hidden" name="id_siswa" value="<?php echo $siswa['id_siswa'] ?>">
                                
								
								<div class="form-group row mb-2">
                                    <label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">Status Ayah</label>
                                    
									 <div class="col-sm-12 col-md-7"><select class="form-control" name="status_ayah"required>

								   <option value="<?= $siswa['status_ayah'] ?>"><?= $siswa['status_ayah'] ?></option>
									<option value="Masih Hidup">Masih Hidup</option>
									<option value="Meninggal Dunia">Meninggal Dunia</option>
									<option value="Tidak Diketahui">Tidak Diketahui</option>
									
									</select></div>
                                 </div>
								 <div class="form-group row mb-2">
                                    <label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">NIK Ayah</label>
                                    <div class="col-sm-12 col-md-7">
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
                                    <div class="col-sm-12 col-md-7">
                                        <input type="text" name="tempat_ayah" class="form-control" value="<?= $siswa['tempat_ayah'] ?>" >
                                    </div>
                                </div>
								<div class="form-group row mb-2">
                                    <label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">Tgl Lahir Ayah </label>
                                    <div class="col-sm-12 col-md-7">
                                        <input type="text" name="tahunayah" class="form-control datepicker" value="<?= $siswa['tahun_ayah'] ?>" >
                                    </div>
                                </div>
                                
                                <div class="form-group row mb-2">
                                    <label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">Pendidikan</label>
                                    <div class="col-sm-12 col-md-7">
                                        <select class='form-control' name='pendidikan_ayah' >
                                            <option value=''>Pilih Pendidikan</option>";
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
                                    <div class="col-sm-12 col-md-7">
                                        <input type="number" name="nohpayah" class="form-control" value="<?= $siswa['no_hp_ayah'] ?>">
                                    </div>
                                </div>
                               
                                <div class="form-group row mb-2">
                                    <label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">Status ibu</label>
                                    
									 <div class="col-sm-12 col-md-7"><select class="form-control" name="status_ibu"required>

								   <option value="<?= $siswa['status_ibu'] ?>"><?= $siswa['status_ibu'] ?></option>
									<option value="Masih Hidup">Masih Hidup</option>
									<option value="Meninggal Dunia">Meninggal Dunia</option>
									<option value="Tidak Diketahui">Tidak Diketahui</option>
									
									</select></div>
                                 </div>
								 <div class="form-group row mb-2">
                                    <label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">NIK ibu</label>
                                    <div class="col-sm-12 col-md-7">
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
                                    <div class="col-sm-12 col-md-7">
                                        <input type="text" name="tempat_ibu" class="form-control" value="<?= $siswa['tempat_ibu'] ?>" >
                                    </div>
                                </div>
								<div class="form-group row mb-2">
                                    <label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">Tgl Lahir Ibu </label>
                                    <div class="col-sm-12 col-md-7">
                                        <input type="text" name="tahunibu" class="form-control datepicker" value="<?= $siswa['tahun_ibu'] ?>" >
                                    </div>
                                </div>
                                
                                <div class="form-group row mb-2">
                                    <label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">Pendidikan</label>
                                    <div class="col-sm-12 col-md-7">
                                        <select class='form-control' name='pendidikan_ibu' >
                                            <option value=''>Pilih Pendidikan</option>";
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
                                    <div class="col-sm-12 col-md-7">
                                        <input type="number" name="nohpibu" class="form-control" value="<?= $siswa['no_hp_ibu'] ?>">
                                    </div>
                                </div>
                                
                                <div class="form-group">
                                    <p>*Harap isi data orang tua dengan sebenar-benarnya</p>
                                    <center><button id="btnsimpan" type="submit" class="btn btn-primary btn-lg mt-2">Simpan Data Orang Tua</button></center>
                                </div>
                            </form>
                        </div>
						

                    </div>


                </div>
            </div>
        </div>
    </div>
		
</div>


<script>
	$('.form-control').keyup(function(event) {

        $(this).val($(this).val().toUpperCase());
    });
    $(document).ready(function() {
        $('#form-datadiri').submit(function(e) {
            e.preventDefault();
            $.ajax({
                type: 'POST',
                url: 'mod_siswa/crud_siswa.php?pg=simpandatadiri',
                data: $(this).serialize(),
                beforeSend: function() {
                    $('#btnsimpan').prop('disabled', true);
                },
                success: function(data) {
                    var json = data;
                    $('#btnsimpan').prop('disabled', false);
                    if (data == 'ok') {
                        iziToast.success({
                            title: 'Terima Kasih!',
                            message: 'Data Diri Anda berhasil disimpan',
                            position: 'topCenter'
                        });

                    } else {
                        iziToast.error({
                            title: 'Maaf!',
                            message: json,
                            position: 'topCenter'
                        });
                    }
                    $('#bodyreset').load(location.href + ' #bodyreset');
                }
            });
            return false;
        });
        $('#form-alamat').submit(function(e) {
            e.preventDefault();
            $.ajax({
                type: 'POST',
                url: 'mod_siswa/crud_siswa.php?pg=simpanalamat',
                data: $(this).serialize(),
                beforeSend: function() {
                    $('#btnsimpan').prop('disabled', true);
                },
                success: function(data) {
                    var json = data;
                    $('#btnsimpan').prop('disabled', false);
                    if (data == 'ok') {
                        iziToast.success({
                            title: 'Terima Kasih!',
                            message: 'Data Alamat anda berhasil disimpan',
                            position: 'topCenter'
                        });

                    } else {
                        iziToast.error({
                            title: 'Maaf!',
                            message: json,
                            position: 'topCenter'
                        });
                    }
                    $('#bodyreset').load(location.href + ' #bodyreset');
                }
            });
            return false;
        });
        $('#form-orangtua').submit(function(e) {
            e.preventDefault();
            $.ajax({
                type: 'POST',
                 url: 'mod_siswa/crud_siswa.php?pg=simpanortu',
                data: $(this).serialize(),
                beforeSend: function() {
                    $('#btnsimpan').prop('disabled', true);
                },
                success: function(data) {
                    var json = data;
                    $('#btnsimpan').prop('disabled', false);
                    if (data == 'ok') {
                        iziToast.success({
                            title: 'Terima Kasih!',
                            message: 'Data Orang Tua anda berhasil disimpan',
                            position: 'topCenter'
                        });

                    } else {
                        iziToast.error({
                            title: 'Maaf!',
                            message: json,
                            position: 'topCenter'
                        });
                    }
                    //$('#bodyreset').load(location.href + ' #bodyreset');
                }
            });
            return false;
        });
        // $("#form-datadiri").validate({
        //     rules: {
        //         "b[firstname]": {
        //             : true
        //         },
        //         "b[email]": {
        //             : true,
        //             email: true
        //         },
        //         "book[contact]": {
        //             : true
        //         }
        //     },
        //     submitHandler: function(form) {
        //         var formData = $(form).serialize();
        //         alert(formData); // for demo
        //         // comment out ajax for demo
        //         /*
        //         $.ajax({
        //             url: "bs_client_function.php?action=new_b",
        //             type: "post",
        //             data: formData,
        //             beforeSend: function () {

        //             },
        //             success: function (data) {

        //             }
        //         });
        //         */
        //     }
        // });

    });
</script>
