







<!-- BAR DALAM Mulai ----------------------------------------------->
<!----- Penting- --> 
        <div class="container-fluid">

    
        <!-- KLASIFIKASI PERTAMA -->  
          <div class="card shadow mb-4">
            <div class="card-header py-3">
              <center><h6 class="m-0 font-weight-bold text-primary">Tambah Data Detail</h6></center>
            </div>
            
            <div class="card-body">
              <div class="table-responsive">
                <form class="user" method="post" action="<?php echo base_url(); ?>data_arsip_detail/tambah_aksi">
                  <div class="form-group">
                    Kode Klasifikasi
                    <input type="text" class="form-control form-control-user" name="kode" placeholder="Kode Klasifikasi Data">
                  </div>
                  <div class="form-group">
                    Klasifikasi Tambahan
                    <input type="hidden" name="tambahan" value="<?php echo $data_tambah->id; ?>" readonly>
                    <input type="text" class="form-control form-control-user" placeholder="Kode Klasifikasi Data" value="<?php echo $data_tambah->klasifikasi; ?>" readonly>
                  </div>
                  <div class="form-group">
                    Nama File
                    <input type="text" class="form-control form-control-user" name="nama" placeholder="Nama Klasifikasi">
                  </div>
                  <div class="form-group">
                    Unit Pengolahan
                    <input type="text" class="form-control form-control-user" name="unit" placeholder="Unit Pengolahan">
                  </div>
                  <div class="form-group">
                    Tanggal Dibuat
                    <input type="date" class="form-control form-control-user" name="tgl" placeholder="Tanggal Dibuat">
                  </div>
                  <div class="form-group">
                    Media
                    <input type="text" class="form-control form-control-user" name="media" placeholder="Media">
                  </div>
                  <div class="form-group">
                    Kelengkapan
                    <input type="text" class="form-control form-control-user" name="kelengkapan" placeholder="Kelengkapan">
                  </div>
                  <div class="form-group">
                    Tingkat Doc
                    <select class="form-control form-control" name="tingkat">
                      <option value="" selected> -- Tingkat Doc --</option>
                      <option value="asli">Asli</option>
                      <option value="fotocopy">Fotocopy</option>
                      <option value="salinan">Salinan</option>
                      <option value="tembusan">Tembusan</option>
                      <option value="pertinggal">Pertinggal</option>
                    </select> 
                  </div>
                  <div class="form-group">
                    Isi Ringkasan
                    <textarea name="ringkasan" class="form-control form-control-user" ></textarea>
                  </div>
                  <div class="form-group">
                    File <br>
                    <input type="file" name="file" class="form-contol">
                  </div>
                  <div class="form-group">
                    Masalah
                    <input type="text" class="form-control form-control-user" name="masalah" placeholder="Masalah">
                  </div>
                  <div class="form-group">
                    Nilai
                    <input type="text" class="form-control form-control-user" name="nilai" placeholder="Nilai">
                  </div>
                  <div class="form-group">
                    aktif
                    <input type="text" class="form-control form-control-user" name="aktif" placeholder="Aktif">
                  </div>
                  <div class="form-group">
                    Dokumen
                    <input type="text" class="form-control form-control-user" name="dokumen" placeholder="Dokumen">
                  </div>
                  <div class="form-group">
                    Musnah
                    <input type="date" class="form-control form-control-user" name="musnah" placeholder="Musnah">
                  </div>
                  <button type="submit" class="btn btn-success"><i class="fa fa-plus-circle"></i> Tambah Data</button>
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



