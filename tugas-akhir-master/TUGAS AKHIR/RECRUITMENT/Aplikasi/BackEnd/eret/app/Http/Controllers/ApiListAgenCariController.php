<?php namespace App\Http\Controllers;

		use Session;
		use Request;
		use DB;
		use CRUDBooster;

		class ApiListAgenCariController extends \crocodicstudio\crudbooster\controllers\ApiController {
		    private $nama;
		    function __construct() {    
				$this->table       = "agen";        
				$this->permalink   = "list_agen_cari";    
				$this->method_type = "post";    
		    }
		

		    public function hook_before(&$postdata) {
		        //This method will be execute before run the main process
		        $this->nama = $postdata['nama'];
		    }

		    public function hook_query(&$query) {
		        //This method is to customize the sql query
		        $query
		        ->select(['agen.*'])
		        ->where('agen.nama', 'like', '%' . $this->nama . '%')
		        ->orderBy('agen.nama', 'DESC');
		    }

		    public function hook_after($postdata,&$result) {
		        //This method will be execute after run the main process

		    }

		}