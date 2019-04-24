<?php namespace App\Http\Controllers;

		use Session;
		use Request;
		use DB;
		use CRUDBooster;

		class ApiSetorTabunganController extends \crocodicstudio\crudbooster\controllers\ApiController {

		    function __construct() {    
				$this->table       = "tagihan_member";        
				$this->permalink   = "setor_tabungan";    
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
		        // Menambah Tagihan Member
	        date_default_timezone_set('Asia/Jakarta');
            $nomor = "TM-".date("ymd").date("His");
            $nomor_pembayaran = "M".date("ymd").date("His");
            $tanggal = date("Y-m-d H:i:s");
            $id_pembayaran = "";
            $id_tagihan = DB::table('tagihan_member')->insertGetId([
					'member_id' => $postdata['member_id'], 
					'kategori_tagihan_member_id' => 9,
					'nomor' => $nomor,
					'tanggal' => $tanggal,
					'status' => "Lunas",
					'total_tagihan' => $postdata['total_tabungan']
			]);
			DB::table('member')
                ->where('id', $postdata['member_id'])
                ->increment('tabungan', $postdata['total_tabungan']);
                
			if($postdata['agen_id'] !=null && $postdata['teller_id'] == null){
    			// insert pembayaran
                $id_pembayaran = DB::table('pembayaran_member')->insertGetId(
    				[
    				    'agen_id'           => $postdata['agen_id'],
    					'nomor_pembayaran'  => $nomor_pembayaran, 
    					'tanggal'           => $tanggal,
    					'total'             => $postdata['total_tabungan']
    				]
    			);
    			$nomor = "TA-".date("ymd").date("His");
	            DB::table('tagihan_agen')->insert([
						'agen_id' => $postdata['agen_id'], 
						'kategori_tagihan_agen_id' => 2,
						'pembayaran_member_id' => $id_pembayaran,
						'nomor' => $nomor,
						'tanggal' => $tanggal,
						'status' => "Belum Lunas",
						'total_tagihan' => $postdata['total_tabungan']
				]);
    			$result['api_message'] = "success";
			}elseif($postdata['agen_id']==null && $postdata['teller_id'] != null){
	            // insert pembayaran
                $id_pembayaran = DB::table('pembayaran_member')->insertGetId(
    				[
    				    'teller_id'         => $postdata['teller_id'],
    					'nomor_pembayaran'  => $nomor_pembayaran, 
    					'tanggal'           => $tanggal,
    					'total'             => $postdata['total_tabungan']
    				]
    			);
    			$nomor = "TL-".date("ymd").date("His");
	            DB::table('tagihan_teller')->insert([
						'teller_id' => $postdata['teller_id'], 
						'kategori_tagihan_teller_id' => 2,
						'pembayaran_member_id' => $id_pembayaran,
						'nomor' => $nomor,
						'tanggal' => $tanggal,
						'status' => "Belum Lunas",
						'total_tagihan' => $postdata['total_tabungan']
				]);
    			$result['api_message'] = "success";
			}
			$postdata['tagihan_member_id'] = $id_tagihan;
			$postdata['pembayaran_member_id'] = $id_pembayaran;

		    }

		}