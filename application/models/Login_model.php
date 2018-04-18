<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Login_model extends CI_Model{

	public function findUser($data){
		$this->db->where('login', $data['login']);
		$this->db->where('senha', $data['senha']);
		$usuario = $this->db->get('admin')->row();
		return $usuario;
    	
	}	
}
