<?php namespace App\Http\Controllers;

		use Session;
		use Request;
		use DB;
		use CRUDBooster;

		class ApiHistoryTopupController extends \crocodicstudio\crudbooster\controllers\ApiController {

		    function __construct() {    
				$this->table       = "topup";        
				$this->permalink   = "history_topup";    
				$this->method_type = "get";    
		    }
		

		    public function hook_before(&$postdata) {
		        //This method will be execute before run the main process
		        
		    }

		    public function hook_query(&$query) {
		        //This method is to customize the sql query
		        $query
		        ->select([
		            DB::raw('DATE_FORMAT(topup.tanggal, "%d %M %Y %H:%i:%s") as tanggal'),
		            DB::raw('format(topup.nominal, 0) as nominal'),
		            'topup.approve as approve',
		            ]);
		    }

		    public function hook_after($postdata,&$result) {
		        //This method will be execute after run the main process
		      //  $data_topup = DB::table('topup')
		      //  ->select([
		      //      DB::raw('DATE_FORMAT(topup.tanggal, "%d %M %Y %H:%i:%s") as tanggal'),
		      //      DB::raw('format(topup.nominal, 0) as nominal'),
		      //      'topup.approve as approve',
		      //      ])
		      //  ->get()
		      //  ->toArray();
		      //  foreach($result['data'] as $detailtopup){
		      //      foreach($data_topup as $value){
		      //          if($detailtopup->approve == 0){
		      //              echo "Proses";
		      //          }elseif($detailtopup->approve == 1){
		      //              echo "Diterima";
		      //          }else{
		      //              echo "Ditolak";
		      //          }
    		  //      }
    		  //    //  $detailtopup->jumlah_tagihan = number_format($detailtopup->jumlah_tagihan);
		      //  }
		      
		      foreach($result['data'] as $data_topup){
		          if($data_topup->approve == "0"){
		              $data_topup->status = "blue";
		              $data_topup->keterangan = "Proses";
		          }else if($data_topup->approve == "1"){
		              $data_topup->status = "green";
		              $data_topup->keterangan = "Diterima";
		          }else{
		              $data_topup->status = "red";
		              $data_topup->keterangan = "Ditolak";
		          }
		      }
		    }

		}