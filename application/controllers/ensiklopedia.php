<?php 

defined('BASEPATH') OR exit('No direct script access allowed');


require APPPATH . '/libraries/REST_Controller.php';
use Restserver\Libraries\REST_Controller;

class Ensiklopedia extends REST_Controller {

    function __construct($config = 'rest') {
        parent::__construct($config);
        $this->load->database();
        }

        //Menampilkan data ensiklopedia
        function index_get(){
            $id = $this->get('id');
            if ($id == ''){
                $ensiklopedia = $this->db->get('ensiklopedia')->result();
            }else{
                $this->db->where('id', $id);
                $ensiklopedia = $this->db->get('ensiklopedia')->result();
            }
            $this->response($ensiklopedia, 200);
        }

        //Kirim atau Tambah data ensiklopedia baru
        function index_post(){
            $data = array(
                'id'    => $this->post('id'),
                'nama'  => $this->post('nama'),
                'harga' => $this->post('harga'));
            $insert = $this->db->insert('ensiklopedia', $data);
            if($insert){
                $this -> response($data, 200);
            } else {
                $this->response(array('status' => 'fail', 502));
            }
        }

        //Ubah data ensiklopedia yang udah terinput
        function index_put() {
            $id = $this->put('id');;
            $data = array(
                'id'    => $this->put('id'),
                'nama'  => $this->put('nama'),
                'harga' => $this->put('harga'));
            $this->db->where('id', $id);
            $update = $this->db->update('ensiklopedia', $data);
            if ($update){
                $this->response($data, 200);
            } else {
                $this->response(array('status' => 'fail', 502));
            }
        }

        //delete data
        function index_delete() {
            $id = $this->delete('id');
            $this->db->where('id', $id);
            $delete = $this->db->delete('ensiklopedia');
            if ($delete) {
                $this->response(array('status' => 'success'), 201);
            } else   {
                $this->response(array('status' => 'fail', 502));
            }
        }
}
?>