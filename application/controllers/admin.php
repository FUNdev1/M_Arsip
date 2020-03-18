<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class admin extends CI_Controller {

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
	function __construct()
	{
		parent::__construct();
		if($this->session->userdata('status') != "login" || $this->session->userdata('level') != '1')
		{
			redirect(base_url("login"));
		}
		$this->load->model('m_login');
		$this->load->model('m_admin');
	}
	public function index()
	{
		$this->load->view('main/header.php');
		$this->load->view('admin/index.php');
		$this->load->view('main/footer.php');
	}
}