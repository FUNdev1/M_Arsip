<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class laporan extends CI_Controller {

	/**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://example.com/index.php/welcome
	 *	- or -
	 * 		http://example.com/index.php/welcome/index
	 *	- or -
	 * Since this controller is set as the default controller in
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/welcome/<method_name>
	 * @see https://codeigniter.com/user_guide/general/urls.html
	 */

//	public function index()
//	{
//	{
//		$this->load->library('mypdf');
//		$this->mypdf->generate('Laporan/cetak');
//	}
//}

function __construct()
	{
		parent::__construct();
		if($this->session->userdata('status') != "login")
		{
			redirect(base_url("login"));
		}
		$this->load->model('m_login');
		$this->load->model('m_admin');
	}
	public function index()
	{
		$data['data_user'] = $this->m_admin->select_all('user')->result();

		if($this->session->userdata('level') == '1')
		{
			$this->load->view('main/header.php');
			$this->load->view('laporan/index.php', $data);
			$this->load->view('main/footer.php');
			
		}
		else
		{
			$this->load->view('main/user_header.php');
			$this->load->view('laporan/index.php', $data);
			$this->load->view('main/footer.php');	
		
		}
	
	}

		public function cetak()
		{
			{
				$post = $this->input->post();

				$data['kode'] = $post['kode'];
				$data['korektor'] = $post['korektor'];
				$data['nd'] = $post['nd'];
				$data['hasil'] = $post['hasil'];
				$data['ringkasan'] = $post['ringkasan'];

				$this->load->library('mypdf');
				$this->mypdf->generate('Laporan/cetak', $data);
			}
		}


		


}