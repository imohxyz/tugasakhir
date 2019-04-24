<?php namespace App\Http\Controllers;

		use Session;
		use Request;
		use DB;
		use CRUDBooster;

		class ApiTagihanMemberDetailNewController extends \crocodicstudio\crudbooster\controllers\ApiController {
            private $member_id;
            private $kategori_id;
		    function __construct() {    
				$this->table       = "kategori_tagihan_member";        
				$this->permalink   = "tagihan_member_detail_new";    
				$this->method_type = "get";    
		    }
		

		    public function hook_before(&$postdata) {
		        //This method will be execute before run the main process
		        $this->member_id = $postdata['member_id'];
		        $this->kategori_id = $postdata['kategori_id'];

		    }

		    public function hook_query(&$query) {
		        //This method is to customize the sql query
		        $query
		        ->join('tagihan_member as tm', 'kategori_tagihan_member.id', '=', 'tm.kategori_tagihan_member_id')
		      //  ->leftJoin('detail_pembayaran_member as dpm', 'dpm.tagihan_member_id', '=', 'tm.id')
		        ->select ([
		            'kategori_tagihan_member.*',
		            'tm.id as id_tagihan',
		            'tm.nomor as nomor_tagihan',
		            DB::raw('DATE_FORMAT(tm.tanggal, "%d %M %Y") as tanggal'),
		            DB::raw('sum(tm.total_tagihan) as jumlah_tagihan'),
		            ])
		        ->where('status','=','Belum Lunas')
		        ->where('tm.member_id','=',$this->member_id)
		        ->where('kategori_tagihan_member.id','=',$this->kategori_id)
                ->groupBy('tm.id');

		    }

		    public function hook_after($postdata,&$result) {
		        //This method will be execute after run the main process
		         $data_tagihan = DB::table('detail_pembayaran_member')
		        ->join('tagihan_member as tm', 'tm.id', '=', 'detail_pembayaran_member.tagihan_member_id')
		        ->select([
		            'tm.id as id_tagihan',
		            'tm.kategori_tagihan_member_id as kategori_id',
                    DB::raw('sum(detail_pembayaran_member.jumlah) as bayar_tagihan')
		            ])
		        ->where('member_id','=',$this->member_id)
		        ->where('tm.status','=','Belum Lunas')
		        ->where('tm.kategori_tagihan_member_id','=',$this->kategori_id)
		        ->groupBy('tm.id')
		        ->get()
				->toArray();
				
		        foreach($result['data'] as $tagihan){
		            foreach($data_tagihan as $value){
		                if($tagihan->id_tagihan == $value->id_tagihan){
		                  $tagihan->jumlah_tagihan = $tagihan->jumlah_tagihan - $value->bayar_tagihan;
		                  
		                  //$tagihan->jumlah_tagihan = $value->bayar_tagihan;
		                }
    		        }
    		        $tagihan->jumlah_tagihan = number_format($tagihan->jumlah_tagihan);
		        }

		    }

		}