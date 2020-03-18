







<!-- BAR DALAM Mulai ----------------------------------------------->
<!----- Penting- --> 
        <div class="container-fluid">

    
        <!-- KLASIFIKASI PERTAMA -->  
          <div class="card shadow mb-4">
            <div class="card-header py-3">
              <center><h6 class="m-0 font-weight-bold text-primary">Edit Data Detail</h6></center>
            </div>
            
            <div class="card-body">
              <div class="table-responsive">
                <form class="user" method="post" action="<?php echo base_url(); ?>data_arsip_detail/edit_aksi">
                  <input type="hidden" name="id" value="<?php echo $data_edit->iddetail; ?>">
                  <div class="form-group">
                    Kode Klasifikasi
                    <input type="text" class="form-control form-control-user" name="kode" placeholder="Kode Klasifikasi Data" value="<?php echo $data_edit->kode; ?>">
                  </div>
                  <div class="form-group">
                    Klasifikasi Tambahan
                    <input type="hidden" name="tambahan" value="<?php echo $data_edit->idtambahan; ?>" readonly>
                    <input type="text" class="form-control form-control-user" placeholder="Kode Klasifikasi Data" value="<?php echo $data_edit->klasifikasi; ?>" readonly>
                  </div>
                  <div class="form-group">
                    Nama Klasifikasi
                    <input type="text" class="form-control form-control-user" name="nama" placeholder="Nama Klasifikasi" value="<?php echo $data_edit->namadetail; ?>">
                  </div>
                  <div class="form-group">
                    Unit Pengolahan
                    <input type="text" class="form-control form-control-user" name="unit" placeholder="Unit Pengolahan" value="<?php echo $data_edit->unit; ?>">
                  </div>
                  <div class="form-group">
                    Tanggal Dibuat
                    <input type="date" class="form-control form-control-user" name="tgl" placeholder="Tanggal Dibuat" value="<?php echo $data_edit->tgl; ?>">
                  </div>
                  <div class="form-group">
                    Media
                    <input type="text" class="form-control form-control-user" name="media" placeholder="Media" value="<?php echo $data_edit->media; ?>">
                  </div>
                  <div class="form-group">
                    Kelengkapan
                    <input type="text" class="form-control form-control-user" name="kelengkapan" placeholder="Kelengkapan" value="<?php echo $data_edit->kelengkapan; ?>">
                  </div>
                  <div class="form-group">
                    Tingkat Doc
                    <select class="form-control form-control" name="tingkat">
                      <option value=""> -- Tingkat Doc --</option>
                      <option value="asli" <?php if($data_edit->tingkat=='asli') { ?> selected <?php } ?> >Asli</option>
                      <option value="fotocopy" <?php if($data_edit->tingkat == 'fotocopy') { ?> selected <?php } ?> >Fotocopy</option>
                      <option value="salinan" <?php if($data_edit->tingkat == 'salinan') { ?> selected <?php } ?>>Salinan</option>
                      <option value="tembusan" <?php if($data_edit->tingkat == 'tembusan') { ?> selected <?php } ?>>Tembusan</option>
                      <option value="pertinggal" <?php if($data_edit->tingkat == 'pertinggal') { ?> selected <?php } ?>>Pertinggal</option>
                    </select> 
                  </div>
                  <div class="form-group">
                    Isi Ringkasan
                    <textarea name="ringkasan" class="form-control form-control-user" ><?php echo $data_edit->ringkasan; ?></textarea>
                  </div>
                  <div class="form-group">
                    File <br>
                    <input type="file" name="file" class="form-contol">
                  </div>
                  <div class="form-group">
                    Masalah
                    <input type="text" class="form-control form-control-user" name="masalah" placeholder="Masalah" value="<?php echo $data_edit->masalah; ?>">
                  </div>
                  <div class="form-group">
                    Nilai
                    <input type="text" class="form-control form-control-user" name="nilai" placeholder="Nilai" value="<?php echo $data_edit->nilai; ?>">
                  </div>
                  <div class="form-group">
                    Aktif
                    <input type="text" class="form-control form-control-user" name="aktif" placeholder="Aktif" value="<?php echo $data_edit->aktif; ?>">
                  </div>
                  <div class="form-group">
                    Dokumen
                    <input type="text" class="form-control form-control-user" name="dokumen" placeholder="Dokumen" value="<?php echo $data_edit->dokumen; ?>">
                  </div>
                  <div class="form-group">
                    Musnah
                    <input type="date" class="form-control form-control-user" name="musnah" placeholder="Musnah" value="<?php echo $data_edit->musnah; ?>">
                  </div>
                  <button type="submit" class="btn btn-info"><i class="fa fa-edit"></i>Simpan Data</button>
                </form>
              </div>
            </div>
          </div>
        </div>
       <!-- END KLASIFIKASI PERTAMA -->
<!-- BAR DALAM Mulai ----------------------------------------------->




   



<!-- BAR BAWAH Mulai ----------------------------------------------->
<footer class="sticky-footer bg-white">
        <div class="container my-auto">
          <div class="copyright text-center my-auto">
            <span>Copyright &copy; Firman Arivianto 2019</span>
          </div>
        </div>
      </footer>
    </div>
  </div>
<!-- BAR BAWAH Selesai ----------------------------------------------->









 <!-- TOMBOL Scrol Atas Mulai  ----------------------------------------------->
 <a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
  </a>
<!-- TOMBOL Scrol Atas Selesai  ----------------------------------------------->



