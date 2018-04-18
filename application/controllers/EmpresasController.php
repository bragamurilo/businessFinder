<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class EmpresasController extends CI_Controller {

	public function __construct(){
		parent::__construct();
		$this->load->model('empresas_model');
	}

	public function index()
	{
		if($this->input->get()){
			$keyword = $this->input->get('keyword');
			$results = $this->empresas_model->find($keyword);

			$data = array(
				'results' => $results
			);


			$this->load->view('layout/header');

			if(count($results > 0))
				$this->parser->parse('finder/results', $data);
			else
				$this->session->set_flashdata('fail','No records found!');
				$this->load->view('layout/footer');
		}
		else{
			$this->load->view('layout/header');
			$this->load->view('finder/index');
			$this->load->view('layout/footer');
		}
	}

	public function details(){
		$slug = $this->uri->segment(1);

		$data = $this->empresas_model->details($slug);

		$this->load->view('layout/header');
		$this->parser->parse('finder/details', $data);
		$this->load->view('layout/footer');
	}
}
