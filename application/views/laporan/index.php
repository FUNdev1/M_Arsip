
<!-- BAR DALAM Mulai ----------------------------------------------->
<!----- Penting- --> 
        <div class="container-fluid">

    
        <!-- KLASIFIKASI PERTAMA -->  
          <div class="card shadow mb-4">
            <div class="card-header py-3">
              <center><h6 class="m-0 font-weight-bold text-primary">Laporan</h6></center>
            </div>
            
            <div class="card-body">
              <div class="table-responsive">
                <form class="user" method="post" action="<?php echo base_url(); ?>laporan/cetak/<?php ?>">
                <div class="form-group">
                    <input type="text" class="form-control form-control-user" name="kode" placeholder="KodeKlasifikasi">
                  </div>
                  <div class="form-group">
                    <input type="text" class="form-control form-control-user" name="korektor" placeholder="Nama Korektor">
                  </div>
                  <div class="form-group">
                    <input type="text" class="form-control form-control-user" name="nd" placeholder="Nomor Ditinitif">
                  </div>
                  <div class="form-group">
                    <input type="text" class="form-control form-control-user" name="hasil" placeholder="Hasil">
                  </div>
                  <div class="form-group">
                    <textarea name="ringkasan" class="form-control form-control-user" placeholder="Isi Ringkasang" ></textarea>
                  </div>


                  <button type="submit" class="btn btn-danger"><i class="fa fa-print"></i> Cetak Laporan</button>
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




