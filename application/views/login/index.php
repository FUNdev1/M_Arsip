<!DOCTYPE html>
<html>
<head>
    
    <title>Aplikasi Management Arsip</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">	
	<link rel="icon" type="image/png" href="images/icons/iconatas.ico"/>
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>assets/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>assets/vendor/animate/animate.css">	
	<link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>assets/vendor/css-hamburgers/hamburgers.min.css">
	<link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>assets/vendor/select2/select2.min.css">
	<link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>assets/css/util.css">
	<link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>assets/css/main.css">

</head>
<body>
	<div class="limiter">
		<div class="container-login100">
			

	<form method="post" action="<?php echo base_url(); ?>login/aksi_login">
		<table>
        
					<span class="login100-form-title">
                    Aplikasi Management Arsip
                   
					<center>
					<div class="login100-pic js-tilt" data-tilt>
					<img src="<?php echo base_url(); ?>assets/images/loginarsip.png" alt="IMG">
					</div><p>
					</center>
				
                    <div class="wrap-input100 validate-input">
						<input class="input100" type="text" name="username" placeholder="Masukkan Username">
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-user" aria-hidden="true"></i>
						</span>
                    </div>
                   
                    <div class="wrap-input100 validate-input"data-validate >
						<input class="input100" type="password" name="password" placeholder="Masukkan Password">
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-lock" aria-hidden="true"></i>
						</span>
                    </div>
             
                
                <div class="container-login100-form-btn">
						<button class="login100-form-btn">
                        Masuk Aplikasi
						</button>
</div>
		
		</table>			
    </form>
    

<script src="<?php echo base_url(); ?>assets/vendor/jquery/jquery-3.2.1.min.js"></script>
<script src="<?php echo base_url(); ?>assets/vendor/bootstrap/js/popper.js"></script>
<script src="<?php echo base_url(); ?>assets/vendor/bootstrap/js/bootstrap.min.js"></script>
<script src="<?php echo base_url(); ?>assets/vendor/select2/select2.min.js"></script>
<script src="<?php echo base_url(); ?>assets/vendor/tilt/tilt.jquery.min.js"></script>
<script > $('.js-tilt').tilt({ scale: 1.1 })
</script>
<script src="<?php echo base_url(); ?>assets/js/main.js"></script>

</body>
</html>