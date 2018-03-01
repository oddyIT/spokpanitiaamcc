<?php 
	if ( ! defined('BASEPATH')) exit('No direct script access allowed');

	
	/**
	* 
	*/
	class M_kriteria extends CI_Model
	{

		var $table = 'tb_kriteria';
		
		function __construct()
		{
			parent::__construct();
		}

		public function getAllKriteria() {
			$this->db->from($this->table);
			return $this->db->get();
		}

		public function addNewKriteria($data) {
			$this->db->insert($this->table, $data);
		}
	}
?>