<?php namespace App\Http\Controllers;

		use Session;
		use Request;
		use DB;
		use CRUDBooster;

		class ApiListMemberCariController extends \crocodicstudio\crudbooster\controllers\ApiController {
		    
		    private $nama;
		    private $nomor_va;
		    function __construct() {    
				$this->table       = "member";        
				$this->permalink   = "list_member_cari";    
				$this->method_type = "get";  
		    }
		

		    public function hook_before(&$postdata) {
		        //This method will be execute before run the main process
		        $this->nama = $postdata['nama'];
		        $this->nomor_va = $postdata['nomor_va'];
		    }

		    public function hook_query(&$query) {
		        //This method is to customize the sql query
		        $query
		        ->select(['member.*'])
		        ->where('member.nama', 'like', '%' . $this->nama . '%')
		        ->orderBy('member.nama', 'DESC');
		    }

		    public function hook_after($postdata,&$result) {
		        //This method will be execute after run the main process
		        
		    }

		}