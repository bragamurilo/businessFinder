<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Categorias_model extends CI_Model{

	public function get(){
		return $this->db->get('categorias')->result();
	}	
}
