







<!-- BAR DALAM Mulai ----------------------------------------------->
<!----- Penting- --> 
        <div class="container-fluid">

    
        <!-- KLASIFIKASI PERTAMA -->  
          <div class="card shadow mb-4">
            <div class="card-header py-3">
              <center><h6 class="m-0 font-weight-bold text-primary">Tambah Klasifikasi Tambahan</h6></center>
            </div>
            
            <div class="card-body">
              <div class="table-responsive">
                <form class="user" method="post" action="<?php echo base_url(); ?>data_arsip_tambahan/tambah_aksi">
                  <div class="form-group">
                    Kode Klasifikasi
                    <input type="text" class="form-control form-control-user" name="kode" placeholder="Kode Klasifikasi Data">
                  </div>
                  <div class="form-group">
                    Klasifikasi Umum
                    <input type="hidden" name="umum" value="<?php echo $data_tambah->id; ?>" readonly>
                    <input type="text" class="form-control form-control-user" placeholder="Kode Klasifikasi Data" value="<?php echo $data_tambah->klasifikasi; ?>" readonly>
                  </div>
                  <div class="form-group">
                   Klasifikasi Tambahan
                    <input type="text" class="form-control form-control-user" name="nama" placeholder="Nama Klasifikasi">
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





