<?php namespace App\Http\Controllers;

		use Session;
		use Request;
		use DB;
		use CRUDBooster;

		class ApiUserGetController extends \crocodicstudio\crudbooster\controllers\ApiController {

		    function __construct() {    
				$this->table       = "cms_users";        
				$this->permalink   = "user_get";    
				$this->method_type = "get";    
		    }
		

		    public function hook_before(&$postdata) {
		        //This method will be execute before run the main process

		    }

		    public function hook_query(&$query) {
		        //This method is to customize the sql query

		    }

		    public function hook_after($postdata,&$result) {
		        //This method will be execute after run the main process
		        if($result['id_cms_privileges']==3){
    		        $data_user = DB::table('hrd')->where('cms_users_id', $result['id'])->first();
		        }else{
		            $data_user = DB::table('pelamar')->where('cms_users_id', $result['id'])->first();
		        }
		        $result['ktp'] = $data_user->ktp;
		        $result['alamat'] = $data_user->alamat;
		        $result['hp'] = $data_user->hp;
		        $result['id_user'] = $data_user->id;
		        $result['tempat_lahir'] = $data_user->tempat_lahir;
		        $result['tanggal_lahir'] = $data_user->tanggal_lahir;
		        $result['kerja_akhir'] = $data_user->kerja_akhir;
		        $result['jabatan_akhir'] = $data_user->jabatan_akhir;
		        $result['lamakerja_akhir'] = $data_user->lamakerja_akhir;
		        $result['deskripsi'] = $data_user->deskripsi;
		        $result['id_pend'] = $data_user->id_pend;
		        $result['jenis_kelamin'] = $data_user->jenis_kelamin;
		        $result['usia'] = $data_user->usia;
		    }

		}