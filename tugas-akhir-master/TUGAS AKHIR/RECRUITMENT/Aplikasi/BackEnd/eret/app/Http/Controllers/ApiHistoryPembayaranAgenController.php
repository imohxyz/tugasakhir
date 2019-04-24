<?php namespace App\Http\Controllers;

		use Session;
		use Request;
		use DB;
		use CRUDBooster;

		class ApiHistoryPembayaranAgenController extends \crocodicstudio\crudbooster\controllers\ApiController {
		    private $agen_id;
            private $kategori_id;
		    function __construct() {    
				$this->table       = "detail_pembayaran_agen";        
				$this->permalink   = "history_pembayaran_agen";    
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
		        ->join('pembayaran_agen as pa', 'pa.id', '=', 'detail_pembayaran_agen.pembayaran_agen_id')
		        ->join('tagihan_agen as ta', 'ta.id', '=', 'detail_pembayaran_agen.tagihan_agen_id')
		        ->select([
		            'detail_pembayaran_agen.*',
		            DB::raw('DATE_FORMAT(pa.tanggal, "%d %M %Y") as tanggal'),
		            DB::raw('format(detail_pembayaran_agen.jumlah, 0) as nominal'),
		            'ta.agen_id',
		            'ta.kategori_tagihan_agen_id',
		            ])
                ->where('ta.agen_id','=',$this->agen_id)
                ->where('ta.kategori_tagihan_agen_id','=',$this->kategori_id);
		    }

		    public function hook_after($postdata,&$result) {
		        //This method will be execute after run the main process

		    }

		}