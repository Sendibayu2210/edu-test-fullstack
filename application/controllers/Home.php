<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends CI_Controller {

	public function profile()
	{
		checkLogin($this);
		$data=[
			'title' => 'Profile Kandidat',
			'titlePage' => 'Profile',			
			'sidebar' => 'profile',
		];
		$this->load->view('template/header', $data);
		$this->load->view('profile/profile', $data);
		$this->load->view('template/footer');
	}
	
	
}
