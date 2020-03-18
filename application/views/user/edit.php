







<!-- BAR DALAM Mulai ----------------------------------------------->
<!----- Penting- --> 
        <div class="container-fluid">

    
        <!-- KLASIFIKASI PERTAMA -->  
          <div class="card shadow mb-4">
            <div class="card-header py-3">
              <center><h6 class="m-0 font-weight-bold text-primary">Edit Management User</h6></center>
            </div>
            
            <div class="card-body">
              <div class="table-responsive">
                <form class="user" method="post" action="<?php echo base_url(); ?>user/edit_aksi">
                  <input type="hidden" name="id" value="<?php echo $data_user->id; ?>">
                  <div class="form-group">
                    <label>Username</label>
                    <input type="text" class="form-control form-control-user" name="username" placeholder="Username" value="<?php echo $data_user->username; ?>">
                  </div>
                  <div class="form-group">
                    <label>Password</label>
                    <input type="hidden" name="password_lama" value="<?php echo $data_user->password; ?>">
                    <input type="password" class="form-control form-control-user" name="password" placeholder="Password">
                  </div>
                  <div class="form-group">
                    <label>Level</label>
                    <div class="radio" style="margin-left: 10px">
                      <label><input type="radio" name="level" value="1" <?php if($data_user->level=='1') { ?> checked <?php } ?>> Administrator</label>
                    </div>
                    <div class="radio" style="margin-left: 10px">
                      <label><input type="radio" name="level" value="2" <?php if($data_user->level=='2') { ?> checked <?php } ?>> Userbiasa</label>
                    </div>
                  </div>
                  <button type="submit" class="btn btn-warning"><i class="fa fa-edit"></i> Update User</button>
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




