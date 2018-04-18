<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Empresas_model extends CI_Model{

	public function get(){
		return $this->db->get('empresas')->result();
	}

	public function insert($data){
		return $this->db->insert('empresas', $data);
	}

	public function find($keyword){
		return $this->db->query("SELECT e.titulo, e.slug, c.titulo as titulo_categoria 
						  FROM empresas e
						  INNER JOIN categorias c ON c.id=e.id_categoria
						  WHERE e.titulo LIKE '%$keyword%' 
						  OR e.endereco LIKE '%$keyword%' 
						  OR e.cep LIKE '%$keyword%' 
						  OR e.cidade LIKE '%$keyword%' 
						  OR c.titulo LIKE '%$keyword%'")->result();
	}

	public function details($slug){
		$this->db->select('empresas.*, categorias.titulo as titulo_categoria');
		$this->db->where('empresas.slug', $slug);
		$this->db->join('categorias', 'categorias.id = empresas.id_categoria');
		return $this->db->get('empresas')->row();
	}
}