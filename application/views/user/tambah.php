







<!-- BAR DALAM Mulai ----------------------------------------------->
<!----- Penting- --> 
        <div class="container-fluid">

    
        <!-- KLASIFIKASI PERTAMA -->  
          <div class="card shadow mb-4">
            <div class="card-header py-3">
              <center><h6 class="m-0 font-weight-bold text-primary">Tambah Management User</h6></center>
            </div>
            
            <div class="card-body">
              <div class="table-responsive">
                <form class="user" method="post" action="<?php echo base_url(); ?>user/tambah_aksi">
                  <div class="form-group">
                    <label>Username</label>
                    <input type="text" class="form-control form-control-user" name="username" placeholder="Username">
                  </div>
                  <div class="form-group">
                    <label>Password</label>
                    <input type="password" class="form-control form-control-user" name="password" placeholder="Password">
                  </div>
                  <div class="form-group">
                    <label>Level</label>
                    <div class="radio" style="margin-left: 10px">
                      <label><input type="radio" name="level" value="1"> Administrator</label>
                    </div>
                    <div class="radio" style="margin-left: 10px">
                      <label><input type="radio" name="level" value="2"> Userbiasa</label>
                    </div>
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




