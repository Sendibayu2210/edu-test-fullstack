<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class AuthController extends CI_Controller {

	public function __construct()
	{
		parent::__construct();		
		$this->load->model('SiswaModel','siswa');
	}

	public function index()
	{
	    $this->login();
	}

	public function login()
	{
		
		if($this->session->userdata('roleLogin')==true){			
			redirect('siswa');
		}
		$this->load->view('auth/login');
		
	}

	public function checkLoginUser()
	{
		$nisEmail = $this->input->post("nis-email");
		$inputPassword = $this->input->post("password");

		$this->session->set_flashdata('nis-email', $nisEmail);

		$cekSiswa = $this->db->select('*')->from('tbl_siswa')->where('nis',$nisEmail)->or_where('email',$nisEmail)->get()->row();
		if($cekSiswa){
			// cek password			
			$cekPassword = $this->db->select('*')->from('tbl_auth')->where('nomor_induk', $cekSiswa->nis)->get()->row();
			if($cekPassword){				
				if(password_verify($inputPassword, $cekPassword->password)){
					$dataSet = [
						'nisLogin' => $cekSiswa->nis,
						'emailLogin' => $cekSiswa->email,
						'idSiswaLogin' => $cekSiswa->id,
						'roleLogin' => $cekPassword->role,
						'isLoggedIn'=>true,
					];
					$this->session->set_userdata($dataSet);
					redirect('siswa');
				}else{
					$this->session->set_flashdata('warning', 'Maaf! password tidak salah');
				}
			}else{
				$this->session->set_flashdata('warning', 'Maaf! data tidak ditemukan');
			}
		}else{				
			$this->session->set_flashdata('warning', 'Maaf! nis atau email tidak ditemukan');
		}

		redirect('login');
	}

	public function logout()
	{
		$this->session->sess_destroy();
		redirect('login');
	}
	
}
