<?php 
	/**
	* 
	*/
	class Kriteria extends CI_Controller
	{	

		function __construct()
		{
			parent::__construct();
			$this->load->model("m_kriteria");
		}

		public function index()
		{
			$data['listKriteria'] = $this->m_kriteria->getAllKriteria();
			$this->load->view('admin/datakriteria/Kriteria/kriteria', $data);
		}

		public function addKriteria() {
			$data = array(
				'nama_kriteria' => $this->input->post('nama_kriteria'),
				'bobot' => $this->input->post('bobot_kriteria'),
				'keterangan' => $this->input->post('ket_kriteria')
				);

			$this->m_kriteria->addNewKriteria($data); //passing variable $data ke products_model

			redirect('Kriteria'); //redirect page ke halaman utama controller products
		}

		public function tambahKriteria()
		{
			$this->load->view('admin/datakriteria/Kriteria/tambah');
		}
		public function editKriteria()
		{
			$this->load->view('admin/datakriteria/Kriteria/ubah');
		}

	}
	?>