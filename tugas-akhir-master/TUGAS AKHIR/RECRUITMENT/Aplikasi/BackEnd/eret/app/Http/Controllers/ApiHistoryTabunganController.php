<?php namespace App\Http\Controllers;

		use Session;
		use Request;
		use DB;
		use CRUDBooster;

		class ApiHistoryTabunganController extends \crocodicstudio\crudbooster\controllers\ApiController {
		    private $member_id;
            private $kategori_id;
		    function __construct() {    
				$this->table       = "tagihan_member";        
				$this->permalink   = "history_tabungan";    
				$this->method_type = "get";    
		    }
		

		    public function hook_before(&$postdata) {
		        //This method will be execute before run the main process
		        $this->member_id = $postdata['member_id'];
                $this->kategori_tagihan_member_id = $postdata['kategori_tagihan_member_id'];
		    }

		    public function hook_query(&$query) {
		        //This method is to customize the sql query
		        $query
		        ->select([
		            'tagihan_member.*',
		            DB::raw('DATE_FORMAT(tagihan_member.tanggal, "%d %M %Y %H:%i:%s") as tanggal'),
		            DB::raw('format(tagihan_member.total_tagihan, 0) as nominal'),
		            ])
                ->where('tagihan_member.member_id','=',$this->member_id)
                ->where('tagihan_member.kategori_tagihan_member_id','=',9);
		    }

		    public function hook_after($postdata,&$result) {
		        //This method will be execute after run the main process

		    }

		}