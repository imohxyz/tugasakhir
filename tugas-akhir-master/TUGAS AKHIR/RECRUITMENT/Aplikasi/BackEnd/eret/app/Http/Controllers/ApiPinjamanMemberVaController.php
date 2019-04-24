<?php namespace App\Http\Controllers;

		use Session;
		use Request;
		use DB;
		use CRUDBooster;

		class ApiPinjamanMemberVaController extends \crocodicstudio\crudbooster\controllers\ApiController {
		    private $nomor_va;
		    function __construct() {    
				$this->table       = "pinjaman_member";        
				$this->permalink   = "pinjaman_member_va";    
				$this->method_type = "post";    
		    }
		

		    public function hook_before(&$postdata) {
		        //This method will be execute before run the main process
		        $this->nomor_va = $postdata['nomor_va'];
		    }

		    public function hook_query(&$query) {
		        //This method is to customize the sql query
		        $query
		        ->join('agen as agn', 'agn.id', '=', 'pinjaman_member.agen_id')
		        ->join('member as mem', 'member_id', '=', 'mem.id')
		        ->select([
		            'pinjaman_member.*',
		            'agn.nama as nama_agen',
		            'agn.id as id_agen',
		            'mem.nama as nama_member',
		            'mem.id as id_member',
		            'agn.nomor_va as nomor_va_agen'
		            ])
		        ->where('pinjaman_member.approve','=','0')
		        ->where('agn.nomor_va','=',$this->nomor_va)
                ->orderBy('agn.id', 'ASC')
                ->groupBy('pinjaman_member.id');

		    }

		    public function hook_after($postdata,&$result) {
		       //This method will be execute after run the main process
		        
            }

		}