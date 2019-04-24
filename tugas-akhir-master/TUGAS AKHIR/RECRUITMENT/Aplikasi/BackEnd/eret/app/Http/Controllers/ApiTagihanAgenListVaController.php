<?php namespace App\Http\Controllers;

		use Session;
		use Request;
		use DB;
		use CRUDBooster;

		class ApiTagihanAgenListVaController extends \crocodicstudio\crudbooster\controllers\ApiController {
		    private $nomor_va;
		    function __construct() {    
				$this->table       = "tagihan_agen";        
				$this->permalink   = "tagihan_agen_list_va";    
				$this->method_type = "post";    
		    }
		

		    public function hook_before(&$postdata) {
		        //This method will be execute before run the main process
		        $this->nomor_va = $postdata['nomor_va'];
		    }

		    public function hook_query(&$query) {
		        //This method is to customize the sql query
		        $query
		      //  ->leftJoin('detail_pembayaran_agen as dpm', 'dpm.tagihan_agen_id', '=', 'tagihan_agen.id')
		        ->join('kategori_tagihan_agen as kta', 'kta.id', '=', 'tagihan_agen.kategori_tagihan_agen_id')
		        ->join('agen as agn', 'tagihan_agen.agen_id', '=', 'agn.id')
		        ->select([
		            'tagihan_agen.*',
		            'kta.nama_kategori as nama_tagihan',
		            'kta.id',
		            'agn.nama as nama_agen',
		            'agn.saldo as saldo_agen',
		            'agn.id as id_agen',
                    DB::raw('sum(tagihan_agen.total_tagihan) as jumlah_tagihan'),
                    // DB::raw('IFNULL(sum(dpm.jumlah), 0 ) as bayar_tagihan'),
		            ])
		        ->where('tagihan_agen.status','=','Belum Lunas')
		        ->where('agn.nomor_va','=',$this->nomor_va)
                ->orderBy('kta.id', 'ASC')
                ->groupBy('tagihan_agen.kategori_tagihan_agen_id');
		    }

		    public function hook_after($postdata,&$result) {
		        //This method will be execute after run the main process
		        $data_tagihan = DB::table('detail_pembayaran_agen')
		        ->join('tagihan_agen as ta', 'ta.id', '=', 'detail_pembayaran_agen.tagihan_agen_id')
		        ->join('kategori_tagihan_agen as kta', 'kta.id', '=', 'ta.kategori_tagihan_agen_id')
		        ->join('agen as agn', 'ta.agen_id', '=', 'agn.id')
		        ->select([
		            'detail_pembayaran_agen.id',
		            'ta.kategori_tagihan_agen_id as kategori_id',
		            'detail_pembayaran_agen.jumlah as jumlah_bayar',
                    DB::raw('sum(detail_pembayaran_agen.jumlah) as bayar_tagihan')
		            ])
		        ->where('agn.nomor_va','=',$this->nomor_va)
                ->groupBy('ta.kategori_tagihan_agen_id')
		        ->get()
				->toArray();
		        foreach($result['data'] as $data_agen){
		            foreach($data_tagihan as $value){
		                if($data_agen->kategori_tagihan_agen_id == $value->kategori_id){
		                    $data_agen->jumlah_tagihan = $data_agen->jumlah_tagihan - $value->bayar_tagihan;
		                }
		            }
		             $data_agen->jumlah_tagihan = number_format($data_agen->jumlah_tagihan);
		        }
		    }

		}