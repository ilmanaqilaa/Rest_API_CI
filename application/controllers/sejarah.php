<?php 

defined('BASEPATH') OR exit('No direct script access allowed');


require APPPATH . '/libraries/REST_Controller.php';
use Restserver\Libraries\REST_Controller;

class Sejarah extends REST_Controller {

    function __construct($config = 'rest') {
        parent::__construct($config);
        $this->load->database();
        }

        //Menampilkan data sejarah
        function index_get(){
            $id = $this->get('id');
            if ($id == ''){
                $sejarah = $this->db->get('sejarah')->result();
            }else{
                $this->db->where('id', $id);
                $sejarah = $this->db->get('sejarah')->result();
            }
            $this->response($sejarah, 200);
        }

        //Kirim atau Tambah data sejarah baru
        function index_post(){
            $data = array(
                'id'    => $this->post('id'),
                'nama'  => $this->post('nama'),
                'harga' => $this->post('harga'));
            $insert = $this->db->insert('sejarah', $data);
            if($insert){
                $this -> response($data, 200);
            } else {
                $this->response(array('status' => 'fail', 502));
            }
        }

        //Ubah data sejarah yang udah terinput
        function index_put() {
            $id = $this->put('id');;
            $data = array(
                'id'    => $this->put('id'),
                'nama'  => $this->put('nama'),
                'harga' => $this->put('harga'));
            $this->db->where('id', $id);
            $update = $this->db->update('sejarah', $data);
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
            $delete = $this->db->delete('sejarah');
            if ($delete) {
                $this->response(array('status' => 'success'), 201);
            } else   {
                $this->response(array('status' => 'fail', 502));
            }
        }
}
?>