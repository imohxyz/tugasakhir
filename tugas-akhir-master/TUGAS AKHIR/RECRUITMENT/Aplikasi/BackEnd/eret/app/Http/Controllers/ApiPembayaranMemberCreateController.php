<?php namespace App\Http\Controllers;

		use Session;
		use Request;
		use DB;
		use CRUDBooster;

		class ApiPembayaranMemberCreateController extends \crocodicstudio\crudbooster\controllers\ApiController {
            private $id_tagihan;
            private $id_member;
		    function __construct() {    
				$this->table       = "pembayaran_member";        
				$this->permalink   = "pembayaran_member_create";    
				$this->method_type = "post";    
		    }
		

		    public function hook_before(&$postdata) {
		        //This method will be execute before run the main process
		        date_default_timezone_set('Asia/Jakarta');
    			$postdata['tanggal'] = date("Y-m-d H:i:s");
    			$postdata['nomor_pembayaran'] = "M".date("ymd").date("His");
    			$this->id_tagihan = $postdata['id_tagihan'];
    			$this->id_member = $postdata['id_member'];
    			$postdata['id_tagihan'] = "";
    			$postdata['id_member'] = "";
    			
    			

		    }

		    public function hook_query(&$query) {
		        //This method is to customize the sql query

		    }

		    public function hook_after($postdata,&$result) {
		        //This method will be execute after run the main process
		        if($result['api_message'] = 'success'){
		            DB::table('detail_pembayaran_member')->insert([
								'tagihan_member_id' => $this->id_tagihan, 
								'pembayaran_member_id' => $result['id'],
								'jumlah' => $postdata['total']
					]);	
    		        if($postdata['agen_id']==null && $postdata['teller_id'] != null){
    			        $nomor = "TL-".date("ymd").date("His");
    		            DB::table('tagihan_teller')->insert([
								'teller_id' => $postdata['teller_id'], 
								'kategori_tagihan_teller_id' => 1,
								'pembayaran_agen_id' => null,
								'pembayaran_member_id' => $result['id'],
								'nomor' => $nomor,
								'tanggal' => $postdata['tanggal'],
								'status' => "Belum Lunas",
								'total_tagihan' => $postdata['total']
					    ]);	
    		        }else if($postdata['agen_id']!=null && $postdata['teller_id'] == null){
    		            $nomor = "TA-".date("ymd").date("His");
    		            DB::table('tagihan_agen')->insert([
								'agen_id' => $postdata['agen_id'], 
								'kategori_tagihan_agen_id' => 1,
								'pembayaran_member_id' => $result['id'],
								'nomor' => $nomor,
								'tanggal' => $postdata['tanggal'],
								'status' => "Belum Lunas",
								'total_tagihan' => $postdata['total']
						]);	
    		        }
		        }

		    }

		}