<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class data_arsip_tambahan extends CI_Controller {

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
		$get = $this->input->get();

		$where_induk = array(
			'id' => $get['id']
		);
		$data['data_induk'] = $this->m_admin->select_where('umum', $where_induk)->row();

		$where = array(
			'umum' => $get['id']
		);
		$data['data_tambahan'] = $this->m_admin->select_where('tambahan', $where)->result();

		if($this->session->userdata('level') == '1')
		{
			$this->load->view('main/header.php');
			$this->load->view('data_arsip/tambahan/index.php', $data);
			$this->load->view('main/footer.php');
		}
		else
		{
			$this->load->view('main/user_header.php');
			$this->load->view('data_arsip/tambahan/index.php', $data);
			$this->load->view('main/footer.php');
		}
	}
	public function tambah()
	{
		$get = $this->input->get();

		$where = array(
			'id' => $get['umum']
		);
		
		$data['data_tambah'] = $this->m_admin->select_where('umum', $where)->row();

		if($this->session->userdata('level') == '1')
		{
			$this->load->view('main/header.php');
			$this->load->view('data_arsip/tambahan/tambah.php', $data);
			$this->load->view('main/footer.php');
		}
		else
		{
			$this->load->view('main/user_header.php');
			$this->load->view('data_arsip/tambahan/tambah.php', $data);
			$this->load->view('main/footer.php');
		}
	}
	function tambah_aksi()
	{
		$post = $this->input->post();

		$data = array(
			'kode' => $post['kode'],
			'umum' => $post['umum'],
			'klasifikasi' => $post['nama']
		);

		$this->m_admin->insert_data('tambahan', $data);

		redirect(base_url('data_arsip_tambahan?id='.$post['umum']));
	}
	public function edit($id)
	{
		$where = array(
			'tambahan.id' => $id
		);
		$data['data_edit'] = $this->m_admin->select_join_type_where('tambahan.id as idtambahan, tambahan.kode, tambahan.umum, tambahan.klasifikasi as klasifikasitambahan, umum.id as idumum, umum.klasifikasi as klasifikasiumum', 'tambahan', 'umum', 'tambahan.umum = umum.id', 'left', $where)->row();

		if($this->session->userdata('level') == '1')
		{
			$this->load->view('main/header.php');
			$this->load->view('data_arsip/tambahan/edit.php', $data);
			$this->load->view('main/footer.php');
		}
		else
		{
			$this->load->view('main/user_header.php');
			$this->load->view('data_arsip/tambahan/edit.php', $data);
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
			'umum' => $post['umum'],
			'klasifikasi' => $post['nama']
		);

		$this->m_admin->update_data('tambahan', $set, $where);

		redirect(base_url('data_arsip_tambahan?id='.$post['umum']));
	}
	function hapus()
	{
		$get = $this->input->get();

		$where = array(
			'id' => $get['id']
		);
		$this->m_admin->delete_where('tambahan', $where);

		redirect(base_url('data_arsip_tambahan?id='.$get['umum']));
	}
}