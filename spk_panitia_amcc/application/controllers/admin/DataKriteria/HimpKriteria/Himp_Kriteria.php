<?php 
	/**
	* 
	*/
	class Himp_Kriteria extends CI_Controller
	{	
		public function index()
		{
			$this->load->view('admin/datakriteria/Himpunan/himp_kriteria');
		}
		public function tambahHimp()
		{
			$this->load->view('admin/datakriteria/Himpunan/tambah');
		}
		public function editHimp()
		{
			$this->load->view('admin/datakriteria/Himpunan/ubah');
		}
		
	}
 ?>