<?php namespace App\Http\Controllers;

		use Session;
		use Request;
		use DB;
		use CRUDBooster;

		class ApiMemberPinjamanListController extends \crocodicstudio\crudbooster\controllers\ApiController {

		    function __construct() {    
				$this->table       = "pinjaman_member";        
				$this->permalink   = "member_pinjaman_list";    
				$this->method_type = "get";    
		    }
		

		    public function hook_before(&$postdata) {
		        //This method will be execute before run the main process

		    }

		    public function hook_query(&$query) {
		        //This method is to customize the sql query
		        $query
		        ->join('member as mem', 'mem.id', '=', 'member_id')
		        ->select([
		            'pinjaman_member.*',
		            DB::raw('DATE_FORMAT(tanggal, "%d %M %Y") as tanggal_pinjam'),
		            DB::raw('format(jumlah, 0) as jumlah'),
		            'mem.nama as nama_member'
		            ])
		        ->where('approve', '=' , 0);

		    }

		    public function hook_after($postdata,&$result) {
		        //This method will be execute after run the main process

		    }

		}