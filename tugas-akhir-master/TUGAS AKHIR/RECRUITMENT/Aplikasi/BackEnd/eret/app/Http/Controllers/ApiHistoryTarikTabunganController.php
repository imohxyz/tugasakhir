<?php namespace App\Http\Controllers;

		use Session;
		use Request;
		use DB;
		use CRUDBooster;

		class ApiHistoryTarikTabunganController extends \crocodicstudio\crudbooster\controllers\ApiController {
		    private $member_id;
		    function __construct() {    
				$this->table       = "tarik_tabungan";        
				$this->permalink   = "history_tarik_tabungan";    
				$this->method_type = "get";    
		    }
		

		    public function hook_before(&$postdata) {
		        //This method will be execute before run the main process
		        $this->member_id = $postdata['member_id'];
		    }

		    public function hook_query(&$query) {
		        //This method is to customize the sql query
		        $query
		        ->select([
		            DB::raw('DATE_FORMAT(tarik_tabungan.tanggal, "%d %M %Y %H:%i:%s") as tanggal'),
		            DB::raw('format(tarik_tabungan.nominal, 0) as nominal')
		            ])
                ->where('tarik_tabungan.member_id','=',$this->member_id);
		    }

		    public function hook_after($postdata,&$result) {
		        //This method will be execute after run the main process

		    }

		}