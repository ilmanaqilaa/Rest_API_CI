<?php 

defined('BASEPATH') OR exit('No direct script access allowed');


require APPPATH . '/libraries/REST_Controller.php';
use Restserver\Libraries\REST_Controller;

class Novel extends REST_Controller {

    function __construct($config = 'rest') {
        parent::__construct($config);
        $this->load->database();
        }

        //Menampilkan data novel
        function index_get(){
            $id = $this->get('id');
            if ($id == ''){
                $novel = $this->db->get('novel')->result();
            }else{
                $this->db->where('id', $id);
                $novel = $this->db->get('novel')->result();
            }
            $this->response($novel, 200);
        }

        //Kirim atau Tambah data novel baru
        function index_post(){
            $data = array(
                'id'    => $this->post('id'),
                'nama'  => $this->post('nama'),
                'harga' => $this->post('harga'));
            $insert = $this->db->insert('novel', $data);
            if($insert){
                $this -> response($data, 200);
            } else {
                $this->response(array('status' => 'fail', 502));
            }
        }

        //Ubah data novel yang udah terinput
        function index_put() {
            $id = $this->put('id');;
            $data = array(
                'id'    => $this->put('id'),
                'nama'  => $this->put('nama'),
                'harga' => $this->put('harga'));
            $this->db->where('id', $id);
            $update = $this->db->update('novel', $data);
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
            $delete = $this->db->delete('novel');
            if ($delete) {
                $this->response(array('status' => 'success'), 201);
            } else   {
                $this->response(array('status' => 'fail', 502));
            }
        }
}
?>