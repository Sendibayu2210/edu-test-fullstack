<?php 


function checkLogin($CI){
    if($CI->session->userdata('isLoggedIn')==null){
        $CI->session->set_flashdata('warning','Anda harus login dahulu!');
        redirect('login');
    }
}

?>