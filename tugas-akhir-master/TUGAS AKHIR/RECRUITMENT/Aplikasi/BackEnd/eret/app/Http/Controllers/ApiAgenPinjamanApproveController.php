<?php namespace App\Http\Controllers;

		use Session;
		use Request;
		use DB;
		use CRUDBooster;

		class ApiAgenPinjamanApproveController extends \crocodicstudio\crudbooster\controllers\ApiController {

		    function __construct() {    
				$this->table       = "pinjaman_member";        
				$this->permalink   = "agen_pinjaman_approve";    
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
		        if($result['api_message'] == "success"){
		            date_default_timezone_set('Asia/Jakarta');
        			$tanggal = date("Y-m-d H:i:s");
	                $data_pinjam = CRUDBooster::first('pinjaman_member',$postdata['id']);
		            if($postdata['ubah'] == "1"){
                        $nominal_margin = ($data_pinjam->margin * $data_pinjam->keuntungan) / 100;
                        $nominal_tagihan = $data_pinjam->jumlah + $nominal_margin;
                            // menambah saldo
                        DB::table('agen')
                        ->where('id', $data_pinjam->agen_id)
                        ->increment('saldo', $data_pinjam->jumlah);
                        
                        // mengubah approve
                        DB::table('pinjaman_member')
                        ->where('id', $postdata['id'])
                        ->update([
                            'approve' => "1"
                            ]);
                            
                        // Menambah Tagihan Member
                        date_default_timezone_set('Asia/Jakarta');
                        $nomor = "TM-".date("ymd").date("His");
        	            DB::table('tagihan_member')->insert([
        						'member_id' => $data_pinjam->member_id, 
        						'kategori_tagihan_member_id' => 8,
        						'nomor' => $nomor,
        						'tanggal' => $tanggal,
        						'status' => "Belum Lunas",
        						'total_tagihan' => $nominal_tagihan,
        						'pinjaman_member_id'=>$data_pinjam->id
        				]);
		            }else{
		                // mengubah approve
                        DB::table('pinjaman_member')
                        ->where('id', $postdata['id'])
                        ->update([
                            'approve' => "2"
                            ]);
		            }
		        }

		    }

		}