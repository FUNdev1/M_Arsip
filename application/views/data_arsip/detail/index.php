







<!-- BAR DALAM Mulai ----------------------------------------------->
<!----- Penting- --> 
        <div class="container-fluid">

    
        <!-- KLASIFIKASI PERTAMA -->  
          <div class="card shadow mb-4">
            <div class="card-header py-3">
              <center><h6 class="m-0 font-weight-bold text-primary">Data Detail <?php echo $data_tambahan->klasifikasi; ?></h6></center>
            </div>
            
            <div class="card-body">
              <div class="table-responsive"> 
              <a href="<?php echo base_url(); ?>data_arsip_tambahan?id=<?php echo $data_tambahan->umum; ?>"class="btn btn-primary"><i class="fas fa-arrow-left"></i> Klasifikasi</a>
              <a href="<?php echo base_url(); ?>data_arsip_detail/tambah?tambahan=<?php echo $data_tambahan->id; ?>"class="btn btn-success"><i class="fa fa-plus-circle"></i> Tambah Data</a><p>
              <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                  <!-- Koding Get Data Dari Database -->  
                  <thead>
                    <tr>
                      <th>No</th>
                      <th>Kode</th>
                      <th>Nama File</th>
                      <th>Unit Pengolahan</th>
                      <th>Tgl Dibuat</th>
                      <th>Media</th>
                      <th>Kelengkapan</th>
                      <th>Tingkat Doc</th>
                      <th>Isi Ringkasan</th>
                      <th>Pengaturan</th>
                    </tr>
                  </thead>
                  <tbody>
                    <?php 
                    $i = 1;
                    foreach ($data_detail as $b) {
                    ?>
                    <tr>
                      <td><?php echo $i++; ?></td>
                      <td><?php echo $b->kode; ?></td>
                      <td><?php echo $b->nama; ?></td>
                      <td><?php echo $b->unit.' Bandel'; ?></td>
                      <td><?php echo date('d F Y', strtotime($b->tgl)); ?></td>
                      <td><?php echo $b->media; ?></td>
                      <td><?php echo $b->kelengkapan; ?></td>
                      <td><?php echo $b->tingkat; ?></td>
                      <td><?php echo $b->ringkasan; ?></td>
                      <td>
                        <a href="<?php echo base_url(); ?>data_arsip_detail?id=<?php echo $data_tambahan->id; ?>&informasi=<?php echo $b->id; ?>"class="btn btn-dark"><i class="fas fa-eye"></i> Lihat Informasi</a>

                        <?php
                        if($b->file != null)
                        {
                        ?>
                        <a href="<?php echo base_url(); ?>data_arsip_detail/upload/<?php echo $b->id; ?>"class="btn btn-primary"><i class="fa fa-cloud-upload-alt"></i></a>
                        <?php
                        }
                        else
                        {
                        ?>
                        <a href="<?php echo base_url(); ?>data_arsip_detail/download/<?php echo $b->id; ?>"class="btn btn-primary"><i class="fa fa-download"></i></a>
                        <?php
                        }
                        ?>


                        <a href="<?php echo base_url(); ?>data_arsip_detail/edit/<?php echo $b->id; ?>"class="btn btn-info"><i class="fa fa-edit"></i></a>
                        <a onclick="return confirm('Anda Yakin Akan Menghapus Data Ini?')" href="<?php echo base_url(); ?>data_arsip_detail/hapus?id=<?php echo $b->id; ?>&tambahan=<?php echo $data_tambahan->id; ?>"class="btn btn-danger"><i class="fa fa-trash"></i></a>
                      </td>
                    </tr> 
                    <?php
                    $i++;
                    }
                    ?>  
                  </tbody>     
                </table>       
              </div>
            </div>
          </div>
        </div>
        <!-- END KLASIFIKASI PERTAMA -->

        <?php
        if(isset($_GET['informasi']))
        {
        ?>
        <!-- KLASIFIKASI KEDUA -->  
          <div class="card shadow col-md-4" style="margin-left: 25px">
            <div class="card-header py-3">
              <center><h6 class="m-0 font-weight-bold text-primary">Informasi</h6></center>
            </div>
            
            <div class="card-body">
              <div class="table-responsive"> 
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                  <tr>
                    <td>Masalah</td>
                    <td><?php echo $data_informasi->masalah; ?></td>
                  </tr> 
                  <tr>
                    <td>Nilai Guna</td>
                    <td><?php echo $data_informasi->nilai; ?></td>
                  </tr>
                  <tr>
                    <td>Aktif</td>
                    <td><?php echo $data_informasi->aktif; ?></td>
                  </tr>
                  <tr>
                    <td>Lama Documen</td>
                    <td>
                      <?php
                        $awal  = date_create($data_informasi->tgl);
                        $akhir = date_create(); // waktu sekarang
                        $diff  = date_diff( $awal, $akhir );
                        echo $diff->days.' hari';
                      ?>
                    </td>
                  <tr>
                    <td>Dokumen</td>
                    <td><?php echo $data_informasi->dokumen; ?></td>
                  </tr>
                  <tr>
                    <td>Tahun Dimusnahkan</td>
                    <td><?php echo date('d F Y', strtotime($data_informasi->musnah)); ?></td>
                  </tr>
                </table>       
              </div>
            </div>
          </div>
        <!-- END KLASIFIKASI KEDUA -->
        <?php
        }
        ?>
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





