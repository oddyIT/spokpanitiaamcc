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

      <li><a href="<?=site_url('admin/DataPendaftar/Pendaftar')?>"> <i class="icon-user"></i>Data Pendaftar </a></li>

      <li><a href="<?=site_url('admin/DataKriteria/Kriteria/Kriteria')?>"> <i class="icon-interface-windows"></i>Data Kriteria </a>
      </li>

      <li><a href="<?=site_url('admin/DataKriteria/HimpKriteria/Himp_Kriteria')?>"> <i class="icon-interface-windows"></i>Himpunan Kriteria </a>
      </li>

      <li><a href="<?=site_url('admin/DataPerhitungan/Perhitungan')?>"> <i class="icon-padnote"></i>Perhitungan </a></li>

      <li><a href="<?=site_url('admin/DataHasil/Hasil')?>"> <i class="fa fa-bar-chart"></i>Hasil </a></li>

      <li class="active"><a href="<?=site_url('admin/Pengaturan')?>"> <i class="fa fa-gear"></i>Pengaturan </a></li>
    </ul>
    <ul class="list-unstyled">
      <li class="nav-item"><a href="<?=site_url('auth/Auth')?>" class="nav-link logout"> <i class="fa fa-sign-out">Logout</i></a></li>
    </ul>
  </nav>
  <div class="content-inner">
    <!-- Page Header-->
    <header class="page-header">
      <div class="container-fluid">
        <h2 class="no-margin-bottom">Pengaturan</h2>
      </div>
    </header>
    <br>
    <div class="container-fluid" style="margin-left: 25%; margin-right: 25%; padding: 50px;" >
      <div class="row">
        <div class="col-lg-6" >
          <div class="card">
            <div class="card-body">
              <div class="card-header d-flex align-items-center">   
                <h3 class="h4">Pengaturan</h3>
              </div>
              <table class="table">
                <tr>
                  <td>
                    <label class="col-md-12 control-label" for="name">Pendaftaran Peserta</label>
                    <td>
                      <div class="col-md-12">
                        <input type="radio" name="r_pd" value="1">Aktif<br/>
                      </div>
                      <br>
                      <div class="col-md-12">
                        <input type="radio" name="r_pd" value="0">Tidak Aktif<br/>
                      </div>
                    </td>
                  </tr>
                  <tr>
                    <td>
                     <label class="col-md-12 control-label" for="name">Pengumuman Seleksi</label>
                   </td>
                   <td>
                    <div class="col-md-12">
                      <input type="radio" name="r_pm" value="1">Dipublikasikan<br/>
                    </div>
                    <br>
                    <div class="col-md-12">
                      <input type="radio" name="r_pm" value="0">Tidak Dipublikasi<br/>
                    </div>
                  </td>
                </tr>
              </table>
            </div> <!-- card-body -->
          </div><!-- card -->
        </div>
      </div><!-- row -->
    </div>

    <?php $this->load->view('admin/template/footer'); ?>