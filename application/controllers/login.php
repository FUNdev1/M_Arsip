<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class login extends CI_Controller {

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
		$this->load->model('m_login');
		$this->load->model('m_admin');
	}
	public function index()
	{
		$this->load->view('login/index.php');
	}
	public function register()
	{
		$this->load->view('register.php');
	}
	public function aksi_login()
	{
		$username = $this->input->post('username');
		$password = $this->input->post('password');

		if($username=="" || $password=="")
		{
			redirect(base_url("login?al=2"));
		}
		else
		{
			$md_pass = md5($password);

			$where1 = array(
				'username' => $username,
				'password' => $md_pass 
			);

			$cek_login = $this->m_login->cek_login('user', $where1);
			$data_user = $this->m_login->select_where('user', $where1)->result_array();
			if($cek_login)
			{
				foreach ($data_user as $a) {
					$id_user = $a['id_user'];
					$level = $a['level'];
				}
				$data_session = array(
					'status' => "login",
					'id' => $id_user,
					'level' => $level);

				$this->session->set_userdata($data_session);
				if($level == '1')
				{
					redirect(base_url("admin"));
				}
				else
				{
					redirect(base_url("pegawai"));
				}
			}
			else
			{
				redirect(base_url("login?al=1"));
			}
		}
	}
	function aksi_register()
	{
		$post = $this->input->post();

		//cek username
		$where = array(
			'username' => $post['username']
		);
		$cek_username = $this->m_admin->select_where('user', $where)->num_rows();
		if($cek_username>=1)
		{
			redirect(base_url("login/register?as=1"));
		}
		else
		{
			$post = $this->input->post();
			$password = $post['password'];
			$data = array(
				'level' => '5',
				'username' => $post['username'],
				'nama' => $post['nama'],
				'no_hp' => $post['no_hp'],
				'password' => md5($password)
			);

			$this->m_login->regist_user('user', $data);
			redirect(base_url('login'));
		}
	}
	function logout()
	{
		$this->session->sess_destroy();
		redirect(base_url('login'));
	}
}
