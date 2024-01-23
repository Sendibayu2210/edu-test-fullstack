<?php

class SiswaModel extends CI_Model
{


    public function getSiswa($id_lembaga = '', $search = '', $limit='', $offset='')
    {
        $dataSiswa = $this->db->select('tbl_siswa.*, tbl_lembaga.id as id_lembaga, nama_lembaga')->from('tbl_siswa')->join('tbl_lembaga', 'tbl_lembaga.id=tbl_siswa.id_lembaga');
      
        if($id_lembaga != ''){
            $dataSiswa->where('id_lembaga', $id_lembaga);
        }

        if($search != ''){
            $dataSiswa->group_start();
            $dataSiswa->like('nama', $search)->or_like('nis', $search)->or_like('email', $search)->or_like('nama_lembaga', $search);
            $dataSiswa->group_end();
        }

        if($limit!=''){
            $dataSiswa->limit($limit, $offset);
        }
    
        $dataSiswa = $dataSiswa->order_by("nama", 'asc')->get()->result();
        return $dataSiswa;
    }

    public function detailSiswa($id)
    {
        $dataSiswa = $this->db->select('*')->from('tbl_siswa')->where('tbl_siswa.id',$id)->get()->row();      
        return $dataSiswa;
    }
}