<?php namespace App\Http\Controllers;

		use Session;
		use Request;
		use DB;
		use CRUDBooster;

		class ApiPinjamanMemberBayarController extends \crocodicstudio\crudbooster\controllers\ApiController {

		    function __construct() {    
				$this->table       = "pinjaman_member";        
				$this->permalink   = "pinjaman_member_bayar";    
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
    			$nomor_pinjaman = "P".date("ymd").date("His");
    			$approve = 0;
    			$margin = 25;
    // 			$keuntungan = 0;
		        if($postdata['agen_id']==null && $postdata['teller_id'] != null){
		          //  create pengajuan pinjaman member
		            $pinjaman_id = DB::table('pinjaman_member')->insertGetId([
								'teller_id' => $postdata['teller_id'], 
								'member_id' => $postdata['id_member'],
								'nomor' => $nomor_pinjaman,
								'tanggal' => $tanggal,
								'jumlah' => $postdata['total'],
								'approve' => $approve,
								'keuntungan' => $postdata['keuntungan'],
								'margin' => $margin
					]);
				    $result['api_message'] = "success";
		        }else if($postdata['agen_id'] !=null && $postdata['teller_id'] == null){
		            $pinjaman_id = DB::table('pinjaman_member')->insertGetId([
								'agen_id' => $postdata['agen_id'], 
								'member_id' => $postdata['id_member'],
								'nomor' => $nomor_pinjaman,
								'tanggal' => $tanggal,
								'jumlah' => $postdata['total'],
								'approve' => $approve,
								'keuntungan' => $postdata['keuntungan'],
								'margin' => $margin
					]);
				// 		$result['api_message'] = "success";
				// Buat Tagihan Member
						$nomor = "TM-".date("ymd").date("His");
    		            DB::table('tagihan_member')->insert([
								'member_id' => $postdata['id_member'], 
								'kategori_tagihan_member_id' => 8,
								'pinjaman_member_id' => $pinjaman_id,
								'nomor' => $nomor,
								'tanggal' => $tanggal,
								'status' => "Belum Lunas",
								'total_tagihan' => $postdata['total']
						]);
						$result['api_message'] = "success";
		        }
		    }

		}