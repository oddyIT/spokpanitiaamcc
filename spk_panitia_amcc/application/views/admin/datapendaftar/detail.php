<?php $this->load->view('admin/template/header'); ?>

<div class="page-content d-flex align-items-stretch"> 
  <!-- Side Navbar -->
  <nav class="side-navbar">
    <!-- Sidebar Header-->
    <div class="sidebar-header d-flex align-items-center">
      <div class="avatar"><img src="<?=base_url('assets/img/amcc-logo.png')?>" alt="" class="img-fluid rounded-circle"></div>
      <div class="title">
        <h1 class="h4">AMCC</h1>
        <p>Seleksi Panitia Kegiatan</p>
      </div>
    </div>
    <!-- Sidebar Navidation Menus--><span class="heading">Main</span>
    <ul class="list-unstyled">
      <li><a href="<?=site_url('admin/Beranda')?>"> <i class="icon-home"></i>Beranda </a></li>

      <li class="active"><a href="<?=site_url('admin/DataPendaftar/Pendaftar')?>"> <i class="icon-user"></i>Data Pendaftar </a></li>

      <li><a href="<?=site_url('admin/DataKriteria/Kriteria/Kriteria')?>"> <i class="icon-interface-windows"></i>Data Kriteria </a>
      </li>

      <li><a href="<?=site_url('admin/DataKriteria/HimpKriteria/Himp_Kriteria')?>"> <i class="icon-interface-windows"></i>Himpunan Kriteria </a>
      </li>

      <li><a href="<?=site_url('admin/DataPerhitungan/Perhitungan')?>"> <i class="icon-padnote"></i>Perhitungan </a></li>

      <li><a href="<?=site_url('admin/DataHasil/Hasil')?>"> <i class="fa fa-bar-chart"></i>Hasil </a></li>

      <li><a href="<?=site_url('admin/Pengaturan')?>"> <i class="fa fa-gear"></i>Pengaturan</a></li>
    </ul>
    <ul class="list-unstyled">
      <li class="nav-item"><a href="<?=site_url('auth/Auth')?>" class="nav-link logout"> <i class="fa fa-sign-out">Logout</i></a></li>
    </ul>
  </nav>
  <div class="content-inner">
    <!-- Page Header-->
    <header class="page-header">
      <div class="container-fluid">
        <h2 class="no-margin-bottom">Informasi Pendaftar</h2>
      </div>
    </header>
    <br>
    <!-- Detail data Pendaftar-->  
    <div class="container-fluid">
      <div class="row">
        <div class="col-lg-6">
          <div class="card">
            <div class="card-header d-flex align-items-center">       
              <h3 class="h4">Identitas Diri</h3>
            </div>
            <div class="card-body">
              <table class="table table-striped table-hover">
                <tr>
                  <td>Nama Peserta</td>
                  <td></td>           
                </tr>
                <tr>
                  <td>NIM</td>
                  <td></td>
                </tr>
                <tr>
                  <td>Program Studi</td>
                  <td></td>
                </tr>
                <tr>
                  <td>Email</td>
                  <td></td>
                </tr>
                <tr>
                  <td>Alamat</td>
                  <td></td>
                </tr>
                <tr>
                  <td>IPK</td>
                  <td></td>
                </tr>
                <tr>
                  <td>No. HP</td>
                  <td></td>
                </tr>
                <tr>
                  <td>Keahlian</td>
                  <td></td>
                </tr>
                <tr>
                  <td>Pengalaman</td>
                  <td></td>
                </tr>
                <tr>
                  <td>Motivasi</td>
                  <td></td>
                </tr>
                <tr>
                  <td>Pilihan Posisi 1</td>
                  <td></td>
                </tr>
                <tr>
                  <td>Pilihan Posisi 2</td>
                  <td></td>
                </tr>
                <tr>
                  <td>IPK</td>
                  <td></td>
                </tr>
              </table>
            </div><!-- card-body -->
          </div><!-- card -->
        </div>
      </div><!-- row -->
    </div>
    <?php $this->load->view('admin/template/footer'); ?>