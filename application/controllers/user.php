<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class user extends CI_Controller {

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
		$data['data_user'] = $this->m_admin->select_all('user')->result();

		$this->load->view('main/header.php');
		$this->load->view('user/index.php', $data);
		$this->load->view('main/footer.php');
	}
	public function tambah()
	{
		$this->load->view('main/header.php');
		$this->load->view('user/tambah.php');
		$this->load->view('main/footer.php');
	}
	function tambah_aksi()
	{
		$post = $this->input->post();

		if($post['password'] != null)
		{
			$md_pass = md5($post['password']);
		}
		else
		{
			$md_pass = $post['password_lama'];
		}

		$data = array(
			'username' => $post['username'],
			'password' => $md_pass,
			'level' => $post['level']
		);

		$this->m_admin->insert_data('user', $data);

		redirect(base_url('user'));
	}
	public function edit($id)
	{
		$where = array(
			'id' => $id
		);
		$data['data_user'] = $this->m_admin->select_where('user', $where)->row();


		$this->load->view('main/header.php');
		$this->load->view('user/edit.php', $data);
		$this->load->view('main/footer.php');
	}
	function edit_aksi()
	{
		$post = $this->input->post();

		if($post['password'] != null)
		{
			$md_pass = md5($post['password']);
		}
		else
		{
			$md_pass = $post['password_lama'];
		}

		$where = array(
			'id' => $post['id'], );

		$set = array(
			'username' => $post['username'],
			'password' => $md_pass,
			'level' => $post['level']
		);

		$this->m_admin->update_data('user', $set, $where);

		redirect(base_url('user'));
	}
	function hapus($id)
	{
		$where = array(
			'id' => $id
		);
		$this->m_admin->delete_where('user', $where);

		redirect(base_url('user'));
	}
}