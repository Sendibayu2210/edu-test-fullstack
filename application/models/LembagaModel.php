<?php

class LembagaModel extends CI_Model
{


    public function getLembaga()
    {
        return $this->db->select('*')->from("tbl_lembaga")->order_by('nama_lembaga','asc')->get()->result();
    }
}