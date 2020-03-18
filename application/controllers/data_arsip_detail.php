<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class data_arsip_detail extends CI_Controller {

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

		$where = array(
			'id' => $get['id']
		);
		$data['data_tambahan'] = $this->m_admin->select_where('tambahan', $where)->row();

		$where = array(
			'tambahan' => $get['id']
		);
		$data['data_detail'] = $this->m_admin->select_where('detail', $where)->result();

		if(isset($get['informasi']))
		{
			$where = array(
				'id' => $get['informasi']
			);

			$data['data_informasi'] = $this->m_admin->select_where('detail', $where)->row();

		}
		if($this->session->userdata('level') == '1')
		{
			$this->load->view('main/header.php');
			$this->load->view('data_arsip/detail/index.php', $data);
			$this->load->view('main/footer.php');
		}
		else
		{
			$this->load->view('main/user_header.php');
			$this->load->view('data_arsip/detail/index.php', $data);
			$this->load->view('main/footer.php');
		}
	}
	public function tambah()
	{
		$get = $this->input->get();

		$where = array(
			'id' => $get['tambahan']
		);
		
		$data['data_tambah'] = $this->m_admin->select_where('tambahan', $where)->row();

		if($this->session->userdata('level') == '1')
		{
			$this->load->view('main/header.php');
			$this->load->view('data_arsip/detail/tambah.php', $data);
			$this->load->view('main/footer.php');
		}
		else
		{
			$this->load->view('main/user_header.php');
			$this->load->view('data_arsip/detail/tambah.php', $data);
			$this->load->view('main/footer.php');
		}
	}
	function tambah_aksi()
	{
		$post = $this->input->post();

		$data = array(
			'kode' => $post['kode'],
			'tambahan' => $post['tambahan'],
			'nama' => $post['nama'],
			'unit' => $post['unit'],
			'tgl' => $post['tgl'],
			'media' => $post['media'],
			'kelengkapan' => $post['kelengkapan'],
			'tingkat' => $post['tingkat'],
			'ringkasan' => $post['ringkasan'],
			'file' => $post['file'],
			'masalah' => $post['masalah'],
			'nilai' => $post['nilai'],
			'aktif' => $post['aktif'],
			'dokumen' => $post['dokumen'],
			'musnah'  => $post['musnah']
		);

		$this->m_admin->insert_data('detail', $data);

		redirect(base_url('data_arsip_detail?id='.$post['tambahan']));
	}
	public function edit($id)
	{
		$where = array(
			'detail.id' => $id
		);
		$data['data_edit'] = $this->m_admin->select_join_type_where('detail.id as iddetail, detail.kode, detail.tambahan, detail.nama as namadetail, detail.unit, detail.tgl, detail.media, detail.kelengkapan, detail.tingkat, detail.ringkasan, detail.file, detail.masalah, detail.nilai, detail.aktif, detail.dokumen, detail.musnah, tambahan.id as idtambahan, tambahan.klasifikasi', 'detail', 'tambahan', 'detail.tambahan = tambahan.id', 'left', $where)->row();

		if($this->session->userdata('level') == '1')
		{
			$this->load->view('main/header.php');
			$this->load->view('data_arsip/detail/edit.php', $data);
			$this->load->view('main/footer.php');
		}
		else
		{
			$this->load->view('main/user_header.php');
			$this->load->view('data_arsip/detail/edit.php', $data);
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
			'tambahan' => $post['tambahan'],
			'nama' => $post['nama'],
			'unit' => $post['unit'],
			'tgl' => $post['tgl'],
			'media' => $post['media'],
			'kelengkapan' => $post['kelengkapan'],
			'tingkat' => $post['tingkat'],
			'ringkasan' => $post['ringkasan'],
			'file' => $post['file'],
			'masalah' => $post['masalah'],
			'nilai' => $post['nilai'],
			'aktif' => $post['aktif'],
			'dokumen' => $post['dokumen'],
			'musnah'  => $post['musnah']
		);

		$this->m_admin->update_data('detail', $set, $where);

		redirect(base_url('data_arsip_detail?id='.$post['tambahan']));
	}
	function hapus()
	{
		$get = $this->input->get();

		$where = array(
			'id' => $get['id']
		);
		$this->m_admin->delete_where('detail', $where);

		redirect(base_url('data_arsip_detail?id='.$get['tambahan']));
	}
}