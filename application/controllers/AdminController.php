<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class AdminController extends CI_Controller {

	public function __construct(){
		parent::__construct();
		$this->load->model('login_model');
		$this->load->model('empresas_model');
		$this->load->model('categorias_model');
		$this->load->model('cidades_estados_model');
	}

	public function index()
	{
		if($this->input->post()){
	        $data = $this->input->post();

	        for ($i = 0; $i < 1000; $i++) {
				 $data['senha'] = md5($data['senha']);
			}

	     	$usuario = $this->login_model->findUser($data);
	 
	        if($this->input->post()){
		        $data = $this->input->post();

		        for ($i = 0; $i < 1000; $i++) {
					 $data['senha'] = md5($data['senha']);
				}

		     	$usuario = $this->login_model->findUser($data);
		 
		        if($usuario){
	        		$sessao_usuario = array(
		        		"id"    => $usuario->id_adm,
		        		"login" => $usuario->login,
		        	);
		         	$this->session->set_userdata("session_admin", $sessao_usuario);
	            	redirect('admin');
		        }
		        else{
		            $this->session->set_flashdata('fail','Incorrect username or password!');
		            redirect('admin');
		        }
			}
		}

		$this->load->view('layout/header');
		if(!$this->session->userdata('session_admin')){
			$this->load->view('login/index');
	    }
	    else{
	    	$data = array(
	    		'results' => $this->empresas_model->get()
	    	);

			$this->parser->parse('admin/index', $data);
		}
			$this->load->view('layout/footer');
	}

	function slug( $string )
	{
	   return preg_replace( array( '/([`^~\'"])/', '/([-]{2,}|[-+]+|[\s]+)/', '/(,-)/' ), array( null, '-', ', ' ), iconv( 'UTF-8', 'ASCII//TRANSLIT', $string ) );
	}

	public function novo(){
		if($this->input->post()){
			$data = $this->input->post();
			$data['slug'] = $this->slug($data['titulo']);

			if($this->empresas_model->insert($data)){
				$this->session->set_flashdata('success','Registration successfully Complete!');
				redirect('admin');
			}
			else{
				redirect('admin/novo');
			}
		}
		
		$this->load->view('layout/header');
		if(!$this->session->userdata('session_admin')){
			$this->load->view('login/index');
	    }
	    else{
	    	$data = array(
	    		'results'   => $this->empresas_model->get(),
	    		'categorys' => $this->categorias_model->get(),
	    		'cidades' 	=> $this->cidades_estados_model->getCidades(),
	    		'estados' 	=> $this->cidades_estados_model->getEstados()
	    	);

			$this->parser->parse('admin/novo', $data);
		}
			$this->load->view('layout/footer');
	}
}
