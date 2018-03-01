<?php 
	/**
	* 
	*/
	class Pendaftar extends CI_Controller
	{	
		public function __construct()
		{
			parent::__construct();
			
		}

		public function index()
		{
			$this->load->view('admin/datapendaftar/pendaftar');
		}
		
		/*detail*/
		public function DetailPendaftar()
		{
			$this->load->view('admin/datapendaftar/detail');
		}
		
	}
 ?>