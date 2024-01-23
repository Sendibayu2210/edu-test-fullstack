<?php
defined('BASEPATH') OR exit('No direct script access allowed');


require FCPATH . "vendor/autoload.php";
use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;
use PhpOffice\PhpSpreadsheet\IOFactory;
use PhpOffice\PhpSpreadsheet\Worksheet\Worksheet;

use PhpOffice\PhpSpreadsheet\Reader\BaseReader;
use PhpOffice\PhpSpreadsheet\Reader\Exception;
use PhpOffice\PhpSpreadsheet\Reader\Exception\ReaderException;


class SiswaController extends CI_Controller {
	
	public function __construct()
	{
		parent::__construct();
		checkLogin($this);
		$this->load->model('LembagaModel','lembaga');
		$this->load->model('SiswaModel','siswa');
	}


	public function viewDataStudents($offset='')
	{						
		
		// $search = '';
		// $lembaga = '';	
		$search = $this->session->userdata('search');
		$lembaga = $this->session->userdata('lembaga');				

		if(isset($_GET['search'])){
			$search = $_GET['search'];
			$this->session->set_userdata('search', $_GET['search']);
		}
		if(isset($_GET['lembaga'])){
			$lembaga = $_GET['lembaga'];
			$this->session->set_userdata('lembaga', $_GET['lembaga']);
		}		

		if($this->input->get('search')==''){
			$search = '';
			$this->session->set_userdata('search', '');
		}

		$config['base_url'] = base_url('siswa');
		$config['total_rows'] = sizeof($this->siswa->getSiswa($lembaga, $search)); // Ganti dengan method yang mengambil total data dari model Anda
		$config['per_page'] = 10;
		$config['uri_segment'] = 2; // Sesuaikan dengan segment URI yang digunakan untuk menentukan halaman

		// custom style
		$config['full_tag_open'] = '<ul class="pagination">';        
		$config['full_tag_close'] = '</ul>';        
		$config['first_link'] = 'First';        
		$config['last_link'] = 'Last';        
		$config['first_tag_open'] = '<li class="page-item"><span class="page-link">';        
		$config['first_tag_close'] = '</span></li>';        
		$config['prev_link'] = '&laquo';        
		$config['prev_tag_open'] = '<li class="page-item"><span class="page-link">';        
		$config['prev_tag_close'] = '</span></li>';        
		$config['next_link'] = '&raquo';        
		$config['next_tag_open'] = '<li class="page-item"><span class="page-link">';        
		$config['next_tag_close'] = '</span></li>';        
		$config['last_tag_open'] = '<li class="page-item"><span class="page-link">';        
		$config['last_tag_close'] = '</span></li>';        
		$config['cur_tag_open'] = '<li class="page-item active"><a class="page-link" href="#">';        
		$config['cur_tag_close'] = '</a></li>';        
		$config['num_tag_open'] = '<li class="page-item"><span class="page-link">';        
		$config['num_tag_close'] = '</span></li>';
	
		$this->pagination->initialize($config);
	
		// Ambil halaman dari URI
		$page = ($this->uri->segment($config['uri_segment'])) ? $this->uri->segment($config['uri_segment']) : 0;		
	
		// Ambil data untuk halaman tertentu dari model		

		$number = $this->uri->segment(2);
		if($number==''){
			$number = 1;
		}else{
			$number= $number+1;
		}

		$data=[
			'title' => 'Data Siswa',
			'lembaga' => $this->lembaga->getLembaga(),
			'siswa' => $this->siswa->getSiswa($lembaga, $search, $config['per_page'], $page),
			'links' => $this->pagination->create_links(),
			'startNumber' => $number,
			'titlePage' => 'Daftar Siswa',
			'sidebar' => 'siswa',
		];		

		$this->load->view('template/header',$data);
		$this->load->view('siswa/dataSiswa',$data);
		$this->load->view('template/footer',$data);		
	}

	public function viewAddStudent()
	{
		$data=[
			'title' => 'Data Siswa',
			'lembaga' => $this->lembaga->getLembaga(),
			'titlePage' => 'Tambah Siswa',		
			'sidebar' => 'siswa',	
		];		
		$this->load->view('template/header',$data);
		$this->load->view('siswa/addSiswa',$data);
		$this->load->view('template/footer',$data);	
	}

	public function viewEditStudent($id)
	{
		$data=[
			'title' => 'Data Siswa',
			'lembaga' => $this->lembaga->getLembaga(),	
			'siswa' => $this->siswa->detailSiswa($id),
			'titlePage' => 'Edit Siswa',	
			'sidebar' => 'siswa',		
		];		
		
		$this->load->view('template/header',$data);
		$this->load->view('siswa/editSiswa',$data);
		$this->load->view('template/footer',$data);	
	}


	public function validationDataStudents()
	{				
		// Mengatur aturan validasi untuk file
		$this->form_validation->set_rules('nis', 'NIS', 'required|numeric', array(
			'required' => 'Kolom %s harus diisi.',
			'numeric' => 'Kolom %s harus berupa angka.'
		));
		
		$this->form_validation->set_rules('nama', 'Nama', 'required', array(
			'required' => 'Kolom %s harus diisi.'
		));
		
		$this->form_validation->set_rules('email', 'Email', 'required|valid_email', array(
			'required' => 'Kolom %s harus diisi.',
			'valid_email' => 'Format %s tidak valid.'
		));
		
		$this->form_validation->set_rules('lembaga', 'ID Lembaga', 'required|numeric', array(
			'required' => 'Kolom %s harus diisi.',
			'numeric' => 'Kolom %s harus berupa angka.'
		));
		
		$this->form_validation->set_rules('foto', 'Foto', 'callback_check_upload', array(
			'check_upload' => 'Upload %s gagal. Pastikan format file dan ukuran file sesuai aturan. <br><b>Format jpg/png, maximal : 100kb</b>'
		));		
		
		// Menjalankan validasi
		if ($this->form_validation->run() == FALSE) {
			// Jika validasi gagal, kembalikan pesan kesalahan				
			if(isset($_GET['id'])){												
				$this->viewEditStudent($_GET['id']);			
			}else{
				if(!$this->upload->do_upload('foto')){
					$this->viewAddStudent();			
				}
			}	
			
			$this->session->set_flashdata('warning','Mohon lengkapi semua form yang telah disediakan');
			$this->viewAddStudent();	
			

		} else {
			// Jika upload berhasil, lanjutkan dengan pemrosesan data siswa
			$idSiswa = $this->input->post('id-siswa');
			$nis = $this->input->post('nis');
			$nama = $this->input->post('nama');
			$email = $this->input->post('email');
			$idLembaga = $this->input->post('lembaga');			


			$dataInsert = [
				'nis' => htmlspecialchars(trim($nis)),
				'nama' => htmlspecialchars(trim($nama)),
				'email' => htmlspecialchars(trim($email)),
				'foto' => $this->upload->data('file_name'), // Ambil nama file yang diunggah
				'id_lembaga' => htmlspecialchars(trim($idLembaga)),
				'created_at' => date('Y-m-d H:i:s'),
				'updated_at' => date('Y-m-d H:i:s'),
			];	
					
			if($idSiswa!=''){
				unset($dataInsert['created_at']);				
				if($this->upload->data('file_name')==''){
					unset($dataInsert['foto']);
				}

				$update = $this->db->set($dataInsert)->where('id', $idSiswa)->update('tbl_siswa');
				if($update){
					$this->session->set_flashdata('success','Data siswa berhasil diperbaharui');
				}else{
					$this->session->set_flashdata('warning','Data siswa gagal diperbaharui');
				}
				redirect('siswa');
			}else{
				// create

				$checkNIS = $this->db->select('*')->from('tbl_siswa')->where('nis', $nis)->get()->result();
				if($checkNIS){
					$this->session->set_flashdata('warning', 'Maaf! NIS '. $nis. ' sudah ada');
					redirect($this->agent->referrer());
				}

				$insert = $this->db->insert('tbl_siswa', $dataInsert);
				if($insert){
					// Hanya opsional agar sync di database
					$authInsert = [
						'nomor_induk' => $dataInsert['nis'],
						'role' => 'siswa',
						'password' => password_hash('123', PASSWORD_DEFAULT),
					];
					$this->db->insert('tbl_auth', $authInsert);
					
					$this->session->set_flashdata('success','Data siswa berhasil diperbaharui');
				}else{
					$this->session->set_flashdata('warning','Data siswa gagal diperbaharui');
				}
				redirect('siswa');
			}			
			// Jika semua berhasil, kembalikan 'success'
			return 'success';
		}
	}

	public function deleteStudent()
	{
		$id = $this->input->post('id');
		$detailStudent = $this->siswa->detailSiswa($id);
		$delete = $this->db->where('id', $id)->delete('tbl_siswa');			
		if($delete){
			$this->db->where('nomor_induk', $detailStudent->nis)->delete('tbl_auth'); // delete auth
			 // delete image
			 $imagePath = FCPATH . 'assets/upload/foto/'. $detailStudent->foto;
			 if (file_exists($imagePath)) {
				unlink($imagePath);				
			} 
			$this->session->set_flashdata('success','Data siswa berhasil dihapus');
		}else{
			$this->session->set_flashdata('warning','Data siswa gagal dihapus');
		}
		redirect('siswa');
	}

	// Callback function untuk validasi upload file
	public function check_upload()
	{				
		$path = FCPATH . 'assets/upload/foto';				
		// Mengecek dan membuat direktori jika belum ada
		if (!is_dir($path)) {
			if (!mkdir($path, 0777, true)) {
				die('Failed to create folders...');
			}
		}

		// Konfigurasi upload
		$config['upload_path']   = $path;
		$config['allowed_types'] = 'jpg|png';
		$config['max_size']      = 100; // in KB

		$this->upload->initialize($config);

		if (!$this->upload->do_upload('foto')) {
			if($this->input->post('id-siswa')!=''){
				return TRUE;
			}
			// Jika validasi upload gagal, tambahkan pesan kesalahan ke validasi
			$this->form_validation->set_message('check_upload', $this->upload->display_errors());
			return FALSE;
		} else {						
			return TRUE;
		}
	}

	public function exportDataStudent()
	{
		$spreadsheet = new Spreadsheet();
		$sheet = $spreadsheet->getActiveSheet();		

		$sheet->setCellValue('A1', "No");
		$sheet->setCellValue('B1', "NIS");
		$sheet->setCellValue('C1', "NAMA SISWA");
		$sheet->setCellValue('D1', "EMAIL");		
		$sheet->setCellValue('E1', "LEMBAGA");		

		$startRow = 2;

		$lembaga = $this->input->post('lembaga');
		$dataSiswa = $this->siswa->getSiswa($lembaga);		
		
		$no=1;
		foreach($dataSiswa as $index => $dt){
			$sheet->setCellValue('A' . $startRow, $no);
			$sheet->setCellValue('B' . $startRow, $dt->nis);
			$sheet->setCellValue('C' . $startRow, $dt->nama);
			$sheet->setCellValue('D' . $startRow, $dt->email);
			$sheet->setCellValue('E' . $startRow, $dt->nama_lembaga);
			$no++;
			$startRow++;
		}		
		

		$fileName= 'Data Siswa - ' . date('Ymd');
		// Proses file excel
		header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
		header('Content-Disposition: attachment; filename="'.$fileName.'.xlsx"'); // Set nama file excel nya
		header('Cache-Control: max-age=0');
		$writer = new Xlsx($spreadsheet);
		$writer->save('php://output');	
	}

}
