







<!-- BAR DALAM Mulai ----------------------------------------------->
<!----- Penting- --> 
        <div class="container-fluid">

    
        <!-- KLASIFIKASI PERTAMA -->  
          <div class="card shadow mb-4">
            <div class="card-header py-3">
              <center><h6 class="m-0 font-weight-bold text-primary">Klasifikasi Umum</h6></center>
            </div>
            
            <div class="card-body">
              <div class="table-responsive"> 
                <a href="<?php echo base_url(); ?>data_arsip/tambah"class="btn btn-success"><i class="fa fa-plus-circle"></i> Tambah Data</a><p>
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                  <!-- Koding Get Data Dari Database -->  
                  <thead>
                    <tr>
                      <th>No</th>
                      <th>Kode</th>
                      <th>Klasifikasi Umum</th>
                      <th>Pengaturan</th>
                    </tr>
                  </thead>
                  <tbody>
                    <?php 
                    $i = 1;
                    foreach ($data_umum as $a) {
                    ?>
                    <tr>
                      <td><?php echo $i++; ?></td>
                      <td><?php echo $a->kode; ?></td>
                      <td><?php echo $a->klasifikasi; ?></td>
                      <td>
                        <a href="<?php echo base_url(); ?>data_arsip_tambahan?id=<?php echo $a->id; ?>"class="btn btn-dark"><i class="fa fa-folder-open"></i> Detail</a>
                        <a href="<?php echo base_url(); ?>data_arsip/edit/<?php echo $a->id; ?>"class="btn btn-info"><i class="fa fa-edit"></i></a>
                        <a onclick="return confirm('Anda Yakin Akan Menghapus Data Ini?')" href="<?php echo base_url(); ?>data_arsip/hapus/<?php echo $a->id; ?>"class="btn btn-danger"><i class="fa fa-trash"></i></a>
                      </td>
                    </tr> 
                    <?php
                    }
                    ?>  
                  </tbody>     
                </table>       
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



