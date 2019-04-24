<?php namespace App\Http\Controllers;

		use Session;
		use Request;
		use DB;
		use CRUDBooster;

		class ApiTagihanMemberListVaController extends \crocodicstudio\crudbooster\controllers\ApiController {
            private $nomor_va;
		    function __construct() {    
				$this->table       = "tagihan_member";        
				$this->permalink   = "tagihan_member_list_va";    
				$this->method_type = "post";    
		    }
		

		    public function hook_before(&$postdata) {
		        //This method will be execute before run the main process
                $this->nomor_va = $postdata['nomor_va'];
		    }

		    public function hook_query(&$query) {
		        $query
		      //  ->leftJoin('detail_pembayaran_member as dpm', 'dpm.tagihan_member_id', '=', 'tagihan_member.id')
		        ->join('kategori_tagihan_member as ktm', 'ktm.id', '=', 'tagihan_member.kategori_tagihan_member_id')
		        ->join('member as mem', 'member_id', '=', 'mem.id')
		        ->select([
		            'tagihan_member.*',
		            'ktm.nama_kategori as nama_tagihan',
		            'ktm.id',
		            'ktm.icon as icon_tagihan',
		            'mem.nama as nama_member',
		            'mem.saldo as saldo_member',
		            'mem.tabungan as tabungan_member',
		            'mem.id as id_member',
                    DB::raw('sum(tagihan_member.total_tagihan) as jumlah_tagihan'),
                    // DB::raw('IFNULL(sum(dpm.jumlah), 0 ) as bayar_tagihan'),
		            ])
		        ->where('tagihan_member.status','=','Belum Lunas')
		        ->where('mem.nomor_va','=',$this->nomor_va)
                ->orderBy('ktm.id', 'ASC')
                ->groupBy('tagihan_member.kategori_tagihan_member_id');

		    }

		    public function hook_after($postdata,&$result) {
		       //This method will be execute after run the main process
		        $data_tagihan = DB::table('detail_pembayaran_member')
		        ->join('tagihan_member as tm', 'tm.id', '=', 'detail_pembayaran_member.tagihan_member_id')
		        ->join('kategori_tagihan_member as ktm', 'ktm.id', '=', 'tm.kategori_tagihan_member_id')
		        ->join('member as mem', 'member_id', '=', 'mem.id')
		        ->select([
		            'detail_pembayaran_member.id',
		            'tm.kategori_tagihan_member_id as kategori_id',
		            'detail_pembayaran_member.jumlah as jumlah_bayar',
                    DB::raw('sum(detail_pembayaran_member.jumlah) as bayar_tagihan')
		            ])
		        ->where('mem.nomor_va','=',$this->nomor_va)
                ->groupBy('tm.kategori_tagihan_member_id')
		        ->get()
				->toArray();
		        foreach($result['data'] as $data_member){
		            foreach($data_tagihan as $value){
		                if($data_member->kategori_tagihan_member_id == $value->kategori_id){
		                    $data_member->jumlah_tagihan = $data_member->jumlah_tagihan - $value->bayar_tagihan;
		                }
		            }
		             $data_member->jumlah_tagihan = number_format($data_member->jumlah_tagihan);
		        }

		    }

		}