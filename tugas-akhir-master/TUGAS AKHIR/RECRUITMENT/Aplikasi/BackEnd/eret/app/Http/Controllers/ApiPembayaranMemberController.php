<?php namespace App\Http\Controllers;

		use Session;
		use Request;
		use DB;
		use CRUDBooster;

		class ApiPembayaranMemberController extends \crocodicstudio\crudbooster\controllers\ApiController {

		    function __construct() {    
				$this->table       = "tagihan_member";        
				$this->permalink   = "pembayaran_member";    
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
		        date_default_timezone_set('Asia/Jakarta');
    			$tanggal = date("Y-m-d H:i:s");
    			$nomor_pembayaran = "M".date("ymd").date("His");
    			
                // 	tagihan
		        if($postdata['agen_id']==null && $postdata['teller_id'] != null){
		          //  create pembayaran member
		            $pembayaran_id = DB::table('pembayaran_member')->insertGetId([
								'teller_id' => $postdata['teller_id'], 
								'nomor_pembayaran' => $nomor_pembayaran,
								'tanggal' => $tanggal,
								'total' => $postdata['total']
					]);
				// 	create detail pembayaran member
    				DB::table('detail_pembayaran_member')->insert([
    								'tagihan_member_id' => $postdata['id'], 
    								'pembayaran_member_id' => $pembayaran_id,
    								'jumlah' => $postdata['total']
    					]);	
    				// 	create tagihan teller
    				$nomor = "TL-".date("ymd").date("His");
		            DB::table('tagihan_teller')->insert([
							'teller_id' => $postdata['teller_id'], 
							'kategori_tagihan_teller_id' => 1,
							'pembayaran_agen_id' => null,
							'pembayaran_member_id' =>$pembayaran_id,
							'nomor' => $nomor,
							'tanggal' => $tanggal,
							'status' => "Belum Lunas",
							'total_tagihan' => $postdata['total']
				    ]);
				    $result['api_message'] = "success";
		        }else if($postdata['agen_id'] !=null && $postdata['teller_id'] == null){
		            $pembayaran_id = DB::table('pembayaran_member')->insertGetId([
								'agen_id' => $postdata['agen_id'], 
								'nomor_pembayaran' => $nomor_pembayaran,
								'tanggal' => $tanggal,
								'total' => $postdata['total']
					]);
					// 	create detail pembayaran member
    				DB::table('detail_pembayaran_member')->insert([
    								'tagihan_member_id' => $postdata['id'], 
    								'pembayaran_member_id' => $pembayaran_id,
    								'jumlah' => $postdata['total']
    					]);
    				// 	create tagihan agen
    				$nomor = "TA-".date("ymd").date("His");
    		            DB::table('tagihan_agen')->insert([
								'agen_id' => $postdata['agen_id'], 
								'kategori_tagihan_agen_id' => 1,
								'pembayaran_member_id' => $pembayaran_id,
								'nomor' => $nomor,
								'tanggal' => $tanggal,
								'status' => "Belum Lunas",
								'total_tagihan' => $postdata['total']
						]);
						$result['api_message'] = "success";
		        }else{
			            $row = CRUDBooster::first('member',$postdata['id_member']);
			            if($row->saldo < $postdata['total']){
						    $result['api_message'] = "Saldo Anda Tidak Mencukupi";
			            }else{
			                //  create pembayaran member
        		            $pembayaran_id = DB::table('pembayaran_member')->insertGetId([
        								'nomor_pembayaran' => $nomor_pembayaran,
        								'tanggal' => $tanggal,
        								'total' => $postdata['total']
        					]);
        				    // 	create detail pembayaran member
            				DB::table('detail_pembayaran_member')->insert([
            								'tagihan_member_id' => $postdata['id'], 
            								'pembayaran_member_id' => $pembayaran_id,
            								'jumlah' => $postdata['total']
            				]);
            				DB::table('member')
                            ->where('id',$postdata['id_member'])
                            ->decrement('saldo',$postdata['total']);
        			        $result['api_message'] = "success";
			            }
		        }
		        
		      // merubah status tagihan
		        $total_tagihan = DB::table('detail_pembayaran_member')
		        ->select([
                    DB::raw('sum(detail_pembayaran_member.jumlah) as bayar_tagihan')
		            ])
		        ->where('tagihan_member_id','=',$postdata['id'])
		        ->groupBy('tagihan_member_id')
		        ->first();
    			$tagihan = CRUDBooster::first('tagihan_member',$postdata['id']);
    			if($tagihan->total_tagihan <= $total_tagihan->bayar_tagihan){
    			    // mengubah status
                    DB::table('tagihan_member')
                    ->where('id', $postdata['id'])
                    ->update([
                        'status' => "Lunas"
                        ]);
    			}
		    }

		}