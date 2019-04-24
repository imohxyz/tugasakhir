<?php namespace App\Http\Controllers;

		use Session;
		use Request;
		use DB;
		use CRUDBooster;

		class ApiTagihanAgenDetailController extends \crocodicstudio\crudbooster\controllers\ApiController {
		    private $agen_id;
            private $kategori_id;
		    function __construct() {    
				$this->table       = "tagihan_agen";        
				$this->permalink   = "tagihan_agen_detail";    
				$this->method_type = "get";    
		    }
		

		    public function hook_before(&$postdata) {
		        //This method will be execute before run the main process
		        $this->agen_id = $postdata['agen_id'];
		        $this->kategori_id = $postdata['kategori_id'];
		    }

		    public function hook_query(&$query) {
		        //This method is to customize the sql query
		        $query
		        ->join('tagihan_agen as tm', 'kategori_tagihan_agen.id', '=', 'tm.kategori_tagihan_agen_id')
		      //  ->leftJoin('detail_pembayaran_agen as dpm', 'dpm.tagihan_agen_id', '=', 'tm.id')
		        ->select ([
		            'kategori_tagihan_agen.*',
		            'tm.id as id_tagihan',
		            'tm.nomor as nomor_tagihan',
		            DB::raw('DATE_FORMAT(tm.tanggal, "%d %M %Y") as tanggal'),
		            DB::raw('sum(tm.total_tagihan) as jumlah_tagihan'),
		            ])
		        ->where('status','=','Belum Lunas')
		        ->where('tm.agen_id','=',$this->agen_id)
		        ->where('kategori_tagihan_agen.id','=',$this->kategori_id)
                ->groupBy('tm.id');
		    }

		    public function hook_after($postdata,&$result) {
		        //This method will be execute after run the main process
		        $data_tagihan = DB::table('detail_pembayaran_agen')
		        ->join('tagihan_agen as tm', 'tm.id', '=', 'detail_pembayaran_agen.tagihan_agen_id')
		        ->select([
		            'tm.id as id_tagihan',
		            'tm.kategori_tagihan_agen_id as kategori_id',
                    DB::raw('sum(detail_pembayaran_agen.jumlah) as bayar_tagihan')
		            ])
		        ->where('agen_id','=',$this->agen_id)
		        ->where('tm.kategori_tagihan_agen_id','=',$this->kategori_id)
		        ->groupBy('tm.id')
		        ->get()
				->toArray();
				
		        foreach($result['data'] as $tagihan){
		            foreach($data_tagihan as $value){
		                if($tagihan->id_tagihan == $value->id_tagihan){
		                    $tagihan->jumlah_tagihan = $tagihan->jumlah_tagihan - $value->bayar_tagihan;
		                }
    		        }
    		        $tagihan->jumlah_tagihan = number_format($tagihan->jumlah_tagihan);
		        }
		    }

		}