<?php namespace App\Http\Controllers;

		use Session;
		use Request;
		use DB;
		use CRUDBooster;

		class ApiPembayaranAgenController extends \crocodicstudio\crudbooster\controllers\ApiController {

		    function __construct() {    
				$this->table       = "tagihan_agen";        
				$this->permalink   = "pembayaran_agen";    
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
    			$nomor_pembayaran = "A".date("ymd").date("His");
		        if($postdata['agen_id']==null && $postdata['teller_id'] != null){
		          //  create pembayaran agen
		            $pembayaran_id = DB::table('pembayaran_agen')->insertGetId([
								'teller_id' => $postdata['teller_id'], 
								'nomor_pembayaran' => $nomor_pembayaran,
								'tanggal' => $tanggal,
								'total' => $postdata['total']
					]);
				// 	create detail pembayaran agen
    				DB::table('detail_pembayaran_agen')->insert([
    								'tagihan_agen_id' => $postdata['id'], 
    								'pembayaran_agen_id' => $pembayaran_id,
    								'jumlah' => $postdata['total']
    					]);	
    				// 	create tagihan teller
    				$nomor = "TL-".date("ymd").date("His");
		            DB::table('tagihan_teller')->insert([
							'teller_id' => $postdata['teller_id'], 
							'kategori_tagihan_teller_id' => 1,
							'pembayaran_agen_id' => null,
							'pembayaran_agen_id' =>$pembayaran_id,
							'nomor' => $nomor,
							'tanggal' => $tanggal,
							'status' => "Belum Lunas",
							'total_tagihan' => $postdata['total']
				    ]);
				    $result['api_message'] = "success";
		        }else{
			            $row = CRUDBooster::first('agen',$postdata['id_agen']);
			            if($row->saldo < $postdata['total']){
						    $result['api_message'] = "Saldo Anda Tidak Mencukupi";
			            }else{
			                //  create pembayaran agen
        		            $pembayaran_id = DB::table('pembayaran_agen')->insertGetId([
        								'nomor_pembayaran' => $nomor_pembayaran,
        								'tanggal' => $tanggal,
        								'total' => $postdata['total']
        					]);
        				    // 	create detail pembayaran agen
            				DB::table('detail_pembayaran_agen')->insert([
            								'tagihan_agen_id' => $postdata['id'], 
            								'pembayaran_agen_id' => $pembayaran_id,
            								'jumlah' => $postdata['total']
            				]);
            				DB::table('agen')
                            ->where('id',$postdata['id_agen'])
                            ->decrement('saldo',$postdata['total']);
        			        $result['api_message'] = "success";
			            }
		        }

		    }

		}