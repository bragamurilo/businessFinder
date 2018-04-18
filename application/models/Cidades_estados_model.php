<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Cidades_estados_model extends CI_Model{

	public function getCidades(){
		return $this->db->get('cidades')->result();
	}

	public function getEstados(){
		return $this->db->get('estados')->result();
	}		
}
