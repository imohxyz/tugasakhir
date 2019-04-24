<?php namespace App\Http\Controllers;

		use Session;
		use Request;
		use DB;
		use CRUDBooster;

		class ApiTarikTabunganController extends \crocodicstudio\crudbooster\controllers\ApiController {

		    function __construct() {    
				$this->table       = "tarik_tabungan";        
				$this->permalink   = "tarik_tabungan";    
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
		        date_default_timezone_set('Asia/Jakarta');
    			$tanggal = date("Y-m-d H:i:s");
    // 			$nominal = 0;
		        if($postdata['agen_id']==null && $postdata['teller_id'] != null){
		          //  create pengajuan pinjaman member
		            $tarik_id = DB::table('tarik_tabungan')->insertGetId([
								'teller_id' => $postdata['teller_id'], 
								'member_id' => $postdata['id_member'],
								'tanggal' => $tanggal,
								'nominal' => $postdata['total']
					]);
				    DB::table('member')
                            ->where('id',$postdata['id_member'])
                            ->decrement('tabungan',$postdata['total']);
        			        $result['api_message'] = "success";
		        }else if($postdata['agen_id'] !=null && $postdata['teller_id'] == null){
		            $tarik_id = DB::table('tarik_tabungan')->insertGetId([
								'agen_id' => $postdata['agen_id'], 
								'member_id' => $postdata['id_member'],
								'tanggal' => $tanggal,
								'nominal' => $postdata['total']
					]);
						DB::table('member')
                            ->where('id',$postdata['id_member'])
                            ->decrement('tabungan',$postdata['total']);
        			        $result['api_message'] = "success";
		        }
		    }

		}