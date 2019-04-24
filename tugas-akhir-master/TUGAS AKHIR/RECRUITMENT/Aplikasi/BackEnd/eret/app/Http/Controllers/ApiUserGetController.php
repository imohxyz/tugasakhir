<?php namespace App\Http\Controllers;

		use Session;
		use Request;
		use DB;
		use CRUDBooster;

		class ApiUserGetController extends \crocodicstudio\crudbooster\controllers\ApiController {

		    function __construct() {    
				$this->table       = "cms_users";        
				$this->permalink   = "user_get";    
				$this->method_type = "post";    
		    }
		

		    public function hook_before(&$postdata) {
		        //This method will be execute before run the main process

		    }

		    public function hook_query(&$query) {
		        //This method is to customize the sql query

		    }

		    public function hook_after($postdata,&$result) {
		        //This method will be execute after run the main process
		        if($result['id_cms_privileges']==5){
    		        $data_user = DB::table('member')->where('cms_users_id', $result['id'])->first();
		        }else if($result['id_cms_privileges']==4){
		            $data_user = DB::table('teller')->where('cms_users_id', $result['id'])->first();
		        }else{
		            $data_user = DB::table('agen')->where('cms_users_id', $result['id'])->first();
		        }
		        $result['ktp'] = $data_user->ktp;
		        $result['alamat'] = $data_user->alamat;
		        $result['nomor_va'] = $data_user->nomor_va;
		        $result['saldo'] = $data_user->saldo;
		        $result['tabungan'] = $data_user->tabungan;
		        $result['id_user'] = $data_user->id;

		    }

		}