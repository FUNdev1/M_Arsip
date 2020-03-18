<!DOCTYPE html>
<html lang="en">
<head>
<title>Aplikasi Management Arsip</title>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <link rel="icon" type="image/png" href="<?php echo base_url(); ?>assets/images/icons/iconatas.ico"/>
  <link href="<?php echo base_url(); ?>assets/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
  <link href="<?php echo base_url(); ?>assets/css/sb-admin-2.min.css" rel="stylesheet">
  <link href="<?php echo base_url(); ?>assets/vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">

</head>
<body id="page-top">



<!-- BAR KIRI MULAI ----------------------------------------------->
<!----- Penting- -->
    <div id="wrapper">
    <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

      
<!-- Side Bar Judul & Icon -->
        <a class="sidebar-brand d-flex align-items-center justify-content-center" href="<?php echo base_url(); ?>admin">
            <div class="sidebar-brand-icon rotate-n-15">
            <i class="fas fa-book"></i>
            </div>
            <div class="sidebar-brand-text mx-3">Aplikasi Management Arsip </div>
        </a>
        <hr class="sidebar-divider my-0">

 <!-- MENU BAR KANAN -->
        <li class="nav-item">
            <a class="nav-link" href="<?php echo base_url(); ?>admin">
            <i class="fas fa-fw fa-home"></i>
            <span>Home</span></a>
        </li>

       
     
        <li class="nav-item">
            <a class="nav-link" href="<?php echo base_url(); ?>data_arsip">
            <i class="fas fa-fw fa-tasks"></i>
            <span>Data Arsip</span></a>
        </li>

        <li class="nav-item">
            <a class="nav-link" href="<?php echo base_url(); ?>laporan">
            <i class="fas fa-fw fa-book "></i>
            <span>Laporan</span></a>
        </li>
        
        <li class="nav-item">
            <a class="nav-link" href="<?php echo base_url(); ?>user">
            <i class="fas fa-fw fa-user-friends"></i>
            <span>Management User</span></a>
        </li>

 <!-- COLAPSE MENUBAR KANAN -->
        <div class="text-center d-none d-md-inline">
        <button class="rounded-circle border-0" id="sidebarToggle"></button>
        </div>
        </ul>

<!----- Penting- -->
    <div id="content-wrapper" class="d-flex flex-column">
    <div id="content">
    <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">
   
<!-- BAR KIRI Selesai ----------------------------------------------->
           
            





<!-- BAR ATAS MULAI ------------------------------------------------->
<!----- Penting- -->
<ul class="navbar-nav ml-auto">
<li class="nav-item dropdown no-arrow d-sm-none">

<!-- LOGOUT-->
        <li class="nav-item dropdown no-arrow">
        <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
         <span class="mr-2 d-none d-lg-inline text-gray-600 small">Administrator</span>
         <img class="img-profile rounded-circle" src="<?php echo base_url(); ?>assets/images/icons/iconatas.ico">
         </a>

              <!-- Dropdown - MENU LOGOUT -->
                <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="userDropdown">
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item" href="<?php echo base_url(); ?>login/logout" data-toggle="modal" data-target="#logoutModal">
                    <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>Keluar
                    </a>
                </div>
                </li>
            </ul>
            </nav>
<!-- END LOGOUT-->
 <!-- BAR ATAS Selesai ----------------------------------------------->

