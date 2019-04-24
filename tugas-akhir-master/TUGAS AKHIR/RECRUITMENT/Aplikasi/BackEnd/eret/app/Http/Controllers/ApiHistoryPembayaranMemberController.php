<?php namespace App\Http\Controllers;

		use Session;
		use Request;
		use DB;
		use CRUDBooster;

		class ApiHistoryPembayaranMemberController extends \crocodicstudio\crudbooster\controllers\ApiController {
        private $member_id;
        private $kategori_id;
		    function __construct() {    
				$this->table       = "detail_pembayaran_member";        
				$this->permalink   = "history_pembayaran_member";    
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
		        ->join('pembayaran_member as pm', 'pm.id', '=', 'detail_pembayaran_member.pembayaran_member_id')
		        ->join('tagihan_member as tm', 'tm.id', '=', 'detail_pembayaran_member.tagihan_member_id')
		        ->select([
		            'detail_pembayaran_member.*',
		            DB::raw('DATE_FORMAT(pm.tanggal, "%d %M %Y") as tanggal'),
		            DB::raw('format(detail_pembayaran_member.jumlah, 0) as nominal'),
		            'tm.member_id',
		            'tm.kategori_tagihan_member_id',
		            ])
                ->where('tm.member_id','=',$this->member_id)
                ->where('tm.kategori_tagihan_member_id','=',$this->kategori_id);
		    }

		    public function hook_after($postdata,&$result) {
		        //This method will be execute after run the main process

		    }

		}