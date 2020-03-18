<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class data_arsip extends CI_Controller {

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
		if($this->session->userdata('status') != "login")
		{
			redirect(base_url("login"));
		}
		$this->load->model('m_login');
		$this->load->model('m_admin');
	}
	public function index()
	{
		$data['data_umum'] = $this->m_admin->select_all('umum')->result();

		if($this->session->userdata('level') == '1')
		{
			$this->load->view('main/header.php');
			$this->load->view('data_arsip/umum/index.php', $data);
			$this->load->view('main/footer.php');
		}
		else
		{
			$this->load->view('main/user_header.php');
			$this->load->view('data_arsip/umum/index.php', $data);
			$this->load->view('main/footer.php');
		}
	}
	public function tambah()
	{
		if($this->session->userdata('level') == '1')
		{
			$this->load->view('main/header.php');
			$this->load->view('data_arsip/umum/tambah.php');
			$this->load->view('main/footer.php');
		}
		else
		{
			$this->load->view('main/user_header.php');
			$this->load->view('data_arsip/umum/tambah.php');
			$this->load->view('main/footer.php');
		}
	}
	function tambah_aksi()
	{
		$post = $this->input->post();

		$data = array(
			'kode' => $post['kode'],
			'spesial_id' => '1',
			'klasifikasi' => $post['nama']
		);

		$this->m_admin->insert_data('umum', $data);

		redirect(base_url('data_arsip'));
	}
	public function edit($id)
	{
		$where = array(
			'id' => $id
		);
		$data['data_edit'] = $this->m_admin->select_where('umum', $where)->row();

		if($this->session->userdata('level') == '1')
		{
			$this->load->view('main/header.php');
			$this->load->view('data_arsip/umum/edit.php', $data);
			$this->load->view('main/footer.php');
		}
		else
		{
			$this->load->view('main/user_header.php');
			$this->load->view('data_arsip/umum/edit.php', $data);
			$this->load->view('main/footer.php');
		}
	}
	function edit_aksi()
	{
		$post = $this->input->post();

		$where = array(
			'id' => $post['id']);
		$set = array(
			'kode' => $post['kode'],
			'klasifikasi' => $post['nama']
		);

		$this->m_admin->update_data('umum', $set, $where);

		redirect(base_url('data_arsip'));
	}
	function hapus($id)
	{
		$where = array(
			'id' => $id
		);
		$this->m_admin->delete_where('umum', $where);

		redirect(base_url('data_arsip'));
	}
}