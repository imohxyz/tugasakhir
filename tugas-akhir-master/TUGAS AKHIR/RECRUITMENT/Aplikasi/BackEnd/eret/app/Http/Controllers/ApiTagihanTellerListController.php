<?php namespace App\Http\Controllers;

		use Session;
		use Request;
		use DB;
		use CRUDBooster;

		class ApiTagihanTellerListController extends \crocodicstudio\crudbooster\controllers\ApiController {

		    function __construct() {    
				$this->table       = "tagihan_teller";        
				$this->permalink   = "tagihan_teller_list";    
				$this->method_type = "get";    
		    }
		

		    public function hook_before(&$postdata) {
		        //This method will be execute before run the main process

		    }

		    public function hook_query(&$query) {
		        //This method is to customize the sql query
		        $query
		      //  ->leftJoin('detail_pembayaran_teller as dpa', 'dpa.tagihan_teller_id', '=', 'tagihan_teller.id')
		        ->join('kategori_tagihan_teller as ktt', 'ktt.id', '=', 'tagihan_teller.kategori_tagihan_teller_id')
		        ->select([
		            'tagihan_teller.*',
		            'ktt.nama_kategori as nama_tagihan',
		            'ktt.id',
                    DB::raw('sum(tagihan_teller.total_tagihan) as jumlah_tagihan'),
                    // DB::raw('IFNULL(sum(dpa.jumlah), 0 ) as bayar_tagihan'),
		            ])
		        ->where('tagihan_teller.status','=','Belum Lunas')
                ->orderBy('ktt.id', 'ASC')
                ->groupBy('tagihan_teller.kategori_tagihan_teller_id');

		    }

		    public function hook_after($postdata,&$result) {
		        //This method will be execute after run the main process
		        $data_tagihan = DB::table('detail_pembayaran_teller')
		        ->join('tagihan_teller as tt', 'tt.id', '=', 'detail_pembayaran_teller.tagihan_teller_id')
		        ->join('kategori_tagihan_teller as ktt', 'ktt.id', '=', 'tt.kategori_tagihan_teller_id')
		        ->select([
		            'detail_pembayaran_teller.id',
		            'tt.kategori_tagihan_teller_id as kategori_id',
		            'detail_pembayaran_teller.jumlah as jumlah_bayar',
                    DB::raw('sum(detail_pembayaran_teller.jumlah) as bayar_tagihan')
		            ])
		        ->where('teller_id','=',$postdata['teller_id'])
                ->groupBy('tt.kategori_tagihan_teller_id');
		  //      ->get()
				// ->toArray();
		  //      foreach($result['data'] as $data_teller){
		  //          foreach($data_tagihan as $value){
		  //              if($data_teller->kategori_tagihan_teller_id == $value->kategori_id){
		  //                  $data_teller->jumlah_tagihan = $data_teller->jumlah_tagihan - $value->bayar_tagihan;
		  //              }
		  //          }
		  //           $data_teller->jumlah_tagihan = number_format($data_teller->jumlah_tagihan);
		  //      }
		    }

		}