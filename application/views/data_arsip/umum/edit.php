







<!-- BAR DALAM Mulai ----------------------------------------------->
<!----- Penting- --> 
        <div class="container-fluid">

    
        <!-- KLASIFIKASI PERTAMA -->  
          <div class="card shadow mb-4">
            <div class="card-header py-3">
              <center><h6 class="m-0 font-weight-bold text-primary">Edit Klasifikasi Umum</h6></center>
            </div>
            
            <div class="card-body">
              <div class="table-responsive">
                <form class="user" method="post" action="<?php echo base_url(); ?>data_arsip/edit_aksi">
                  <input type="hidden" name="id" value="<?php echo $data_edit->id; ?>">
                  <div class="form-group">
                    Kode
                    <input type="text" class="form-control form-control-user" name="kode" placeholder="Kode Klasifikasi Data" value="<?php echo $data_edit->kode; ?>">
                  </div>
                  <div class="form-group">
                    Nama Klasifikasi
                    <input type="text" class="form-control form-control-user" name="nama" placeholder="Nama Klasifikasi" value="<?php echo $data_edit->klasifikasi; ?>">
                  </div>
                  <button type="submit" class="btn btn-info"><i class="fa fa-edit"></i> Simpan Data</button>
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



