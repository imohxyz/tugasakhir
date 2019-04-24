<?php namespace App\Http\Controllers;

	use Session;
	use Request;
	use DB;
	use CRUDBooster;

	class AdminTopupController extends \crocodicstudio\crudbooster\controllers\CBController {

	    public function cbInit() {

			# START CONFIGURATION DO NOT REMOVE THIS LINE
			$this->title_field = "id";
			$this->limit = "20";
			$this->orderby = "id,desc";
			$this->global_privilege = false;
			$this->button_table_action = true;
			$this->button_bulk_action = true;
			$this->button_action_style = "button_icon";
			$this->button_add = true;
			$this->button_edit = true;
			$this->button_delete = true;
			$this->button_detail = true;
			$this->button_show = true;
			$this->button_filter = true;
			$this->button_import = true;
			$this->button_export = true;
			$this->table = "topup";
			# END CONFIGURATION DO NOT REMOVE THIS LINE

			# START COLUMNS DO NOT REMOVE THIS LINE
			$this->col = [];
			if(CRUDBooster::myPrivilegeId()==2 || CRUDBooster::myPrivilegeId()==1){
    			$this->col[] = ["label"=>"Member","name"=>"member_id","join"=>"member,nama"];
    			$this->col[] = ["label"=>"Teller","name"=>"teller_id","join"=>"teller,nama"];
    			$this->col[] = ["label"=>"Agen","name"=>"agen_id","join"=>"agen,nama"];
			}
			$this->col[] = ["label"=>"Master","name"=>"master_id","join"=>"master,nama"];
			$this->col[] = ["label"=>"Nominal","name"=>"nominal"];
			$this->col[] = ["label"=>"Bukti Pembayaran","name"=>"bukti_pembayaran","image"=>true];
			$this->col[] = ["label"=>"Tanggal","name"=>"tanggal"];
			$this->col[] = ["label"=>"Status","name"=>"approve"];
			# END COLUMNS DO NOT REMOVE THIS LINE

			# START FORM DO NOT REMOVE THIS LINE
			$this->form = [];
			if(CRUDBooster::myPrivilegeId()==2 || CRUDBooster::myPrivilegeId()==1){
    			$this->form[] = ['label'=>'Member','name'=>'member_id','type'=>'select2','validation'=>'integer|min:0','width'=>'col-sm-10','datatable'=>'member,nama'];
    			$this->form[] = ['label'=>'Teller','name'=>'teller_id','type'=>'select2','validation'=>'integer|min:0','width'=>'col-sm-10','datatable'=>'teller,nama'];
    			$this->form[] = ['label'=>'Agen','name'=>'agen_id','type'=>'select2','validation'=>'integer|min:0','width'=>'col-sm-10','datatable'=>'agen,nama'];
    			$this->form[] = ['label'=>'Master','name'=>'master_id','type'=>'select2','validation'=>'integer|min:0','width'=>'col-sm-10','datatable'=>'master,nama'];
			}
			$this->form[] = ['label'=>'Nominal','name'=>'nominal','type'=>'number','validation'=>'integer|min:0|required','width'=>'col-sm-10'];
			$this->form[] = ['label'=>'Bukti Pembayaran','name'=>'bukti_pembayaran','type'=>'upload','validation'=>'min:1|max:255|required','width'=>'col-sm-10'];
			# END FORM DO NOT REMOVE THIS LINE

			# OLD START FORM
			//$this->form = [];
			//if(CRUDBooster::myPrivilegeId()==2 || CRUDBooster::myPrivilegeId()==1){
			//$this->form[] = ['label'=>'Member','name'=>'member_id','type'=>'select2','validation'=>'integer|min:0','width'=>'col-sm-10','datatable'=>'member,nama'];
			//$this->form[] = ['label'=>'Teller','name'=>'teller_id','type'=>'select2','validation'=>'integer|min:0','width'=>'col-sm-10','datatable'=>'teller,nama'];
			//$this->form[] = ['label'=>'Agen','name'=>'agen_id','type'=>'select2','validation'=>'integer|min:0','width'=>'col-sm-10','datatable'=>'agen,nama'];
			//$this->form[] = ['label'=>'Master','name'=>'master_id','type'=>'select2','validation'=>'integer|min:0','width'=>'col-sm-10','datatable'=>'master,nama'];
			//}
			//$this->form[] = ['label'=>'Nominal','name'=>'nominal','type'=>'number','validation'=>'integer|min:0','width'=>'col-sm-10'];
			//$this->form[] = ['label'=>'Bukti Pembayaran','name'=>'bukti_pembayaran','type'=>'upload','validation'=>'min:1|max:255','width'=>'col-sm-10'];
			//if(CRUDBooster::getCurrentMethod() == 'getEdit' or CRUDBooster::getCurrentMethod() == 'postEditSave'){
			//$this->form[] = ['label'=>'Approve','name'=>'approve','type'=>'radio','validation'=>'required|min:1|max:255','width'=>'col-sm-10','dataenum'=>'0;1'];
			//$this->form[] = ['label'=>'Tanggal','name'=>'tanggal','type'=>'datetime','validation'=>'required|date_format:Y-m-d H:i:s','width'=>'col-sm-10'];
			//}
			# OLD END FORM

			/* 
	        | ---------------------------------------------------------------------- 
	        | Sub Module
	        | ----------------------------------------------------------------------     
			| @label          = Label of action 
			| @path           = Path of sub module
			| @foreign_key 	  = foreign key of sub table/module
			| @button_color   = Bootstrap Class (primary,success,warning,danger)
			| @button_icon    = Font Awesome Class  
			| @parent_columns = Sparate with comma, e.g : name,created_at
	        | 
	        */
	        $this->sub_module = array();

            
	        /* 
	        | ---------------------------------------------------------------------- 
	        | Add More Action Button / Menu
	        | ----------------------------------------------------------------------     
	        | @label       = Label of action 
	        | @url         = Target URL, you can use field alias. e.g : [id], [name], [title], etc
	        | @icon        = Font awesome class icon. e.g : fa fa-bars
	        | @color 	   = Default is primary. (primary, warning, succecss, info)     
	        | @showIf 	   = If condition when action show. Use field alias. e.g : [id] == 1
	        | 
	        */
	        $this->addaction = array();
	        if(CRUDBooster::myPrivilegeId()==6){
    	        $this->addaction[] = ['label'=>'Terima','icon'=>'fa fa-money','color'=>'success','url'=>CRUDBooster::mainpath('approve').'/[id]','showIf'=>'[approve] == "0"'];
    	        
    	        $this->addaction[] = ['label'=>'Tolak','icon'=>'fa fa-close','color'=>'danger','url'=>CRUDBooster::mainpath('tolak').'/[id]','showIf'=>'[approve] == "0"'];
	        }
	        /* 
	        | ---------------------------------------------------------------------- 
	        | Add More Button Selected
	        | ----------------------------------------------------------------------     
	        | @label       = Label of action 
	        | @icon 	   = Icon from fontawesome
	        | @name 	   = Name of button 
	        | Then about the action, you should code at actionButtonSelected method 
	        | 
	        */
	        $this->button_selected = array();

	                
	        /* 
	        | ---------------------------------------------------------------------- 
	        | Add alert message to this module at overheader
	        | ----------------------------------------------------------------------     
	        | @message = Text of message 
	        | @type    = warning,success,danger,info        
	        | 
	        */
	        $this->alert        = array();
	                

	        
	        /* 
	        | ---------------------------------------------------------------------- 
	        | Add more button to header button 
	        | ----------------------------------------------------------------------     
	        | @label = Name of button 
	        | @url   = URL Target
	        | @icon  = Icon from Awesome.
	        | 
	        */
	        $this->index_button = array();



	        /* 
	        | ---------------------------------------------------------------------- 
	        | Customize Table Row Color
	        | ----------------------------------------------------------------------     
	        | @condition = If condition. You may use field alias. E.g : [id] == 1
	        | @color = Default is none. You can use bootstrap success,info,warning,danger,primary.        
	        | 
	        */
	        $this->table_row_color = array();     	          

	        
	        /*
	        | ---------------------------------------------------------------------- 
	        | You may use this bellow array to add statistic at dashboard 
	        | ---------------------------------------------------------------------- 
	        | @label, @count, @icon, @color 
	        |
	        */
	        $this->index_statistic = array();



	        /*
	        | ---------------------------------------------------------------------- 
	        | Add javascript at body 
	        | ---------------------------------------------------------------------- 
	        | javascript code in the variable 
	        | $this->script_js = "function() { ... }";
	        |
	        */
	        $this->script_js = NULL;


            /*
	        | ---------------------------------------------------------------------- 
	        | Include HTML Code before index table 
	        | ---------------------------------------------------------------------- 
	        | html code to display it before index table
	        | $this->pre_index_html = "<p>test</p>";
	        |
	        */
	        $this->pre_index_html = null;
	        
	        
	        
	        /*
	        | ---------------------------------------------------------------------- 
	        | Include HTML Code after index table 
	        | ---------------------------------------------------------------------- 
	        | html code to display it after index table
	        | $this->post_index_html = "<p>test</p>";
	        |
	        */
	        $this->post_index_html = null;
	        
	        
	        
	        /*
	        | ---------------------------------------------------------------------- 
	        | Include Javascript File 
	        | ---------------------------------------------------------------------- 
	        | URL of your javascript each array 
	        | $this->load_js[] = asset("myfile.js");
	        |
	        */
	        $this->load_js = array();
	        
	        
	        
	        /*
	        | ---------------------------------------------------------------------- 
	        | Add css style at body 
	        | ---------------------------------------------------------------------- 
	        | css code in the variable 
	        | $this->style_css = ".style{....}";
	        |
	        */
	        $this->style_css = NULL;
	        
	        
	        
	        /*
	        | ---------------------------------------------------------------------- 
	        | Include css File 
	        | ---------------------------------------------------------------------- 
	        | URL of your css each array 
	        | $this->load_css[] = asset("myfile.css");
	        |
	        */
	        $this->load_css = array();
	        
	        
	    }
	    
        public function getApprove($id) {
            if(CRUDBooster::myPrivilegeId()==6){
                $data_topup = CRUDBooster::first('topup',$id);
    	        if($data_topup->approve!=0){
    	            CRUDBooster::redirect(CRUDBooster::mainpath(),'Pengajuan Topup ini sudah di approve sebelumnya !','danger');
    				return;
    	        }else{
                    if($data_topup->member_id != null && $data_topup->agen_id == null && $data_topup->teller_id == null){
                        DB::table('member')
                        ->where('id', $data_topup->member_id)
                        ->increment('saldo', $data_topup->nominal);
                    }else if($data_topup->member_id == null && $data_topup->agen_id != null && $data_topup->teller_id == null){
                        DB::table('agen')
                        ->where('id', $data_topup->agen_id)
                        ->increment('saldo', $data_topup->nominal);
                    }else{
                        DB::table('teller')
                        ->where('id', $data_topup->teller_id)
                        ->increment('saldo', $data_topup->nominal);
                    }
                    $data_user = DB::Table('cms_users')
                    ->join('master as mas', 'cms_users_id', '=', 'cms_users.id')
                    ->select([
    		            'cms_users.id as cms_id',
    		            'mas.id as master_id'
    	            ])
    	            ->where('cms_users.id','=',CRUDBooster::myId())
    	            ->first();
    	            
    	            DB::table('topup')
                    ->where('id', $id)
                    ->update([
                        'master_id' => $data_user->master_id,
                        'approve' => "1"
                        ]);
                    $postdata['master_id'] = $data_user->master_id;
                    CRUDBooster::redirect(CRUDBooster::mainpath(),'Topup Berhasil Diterima','success');
    	        }
            }else{
                CRUDBooster::redirect(CRUDBooster::adminPath(),trans('crudbooster.denied_access'));    
            }
        }
        
        public function getTolak($id) {
            if(CRUDBooster::myPrivilegeId()==6){
                $data_topup = CRUDBooster::first('topup',$id);
    	        if($data_topup->approve!=0){
    	            CRUDBooster::redirect(CRUDBooster::mainpath(),'Pengajuan Topup ini sudah di approve sebelumnya !','danger');
    				return;
    	        }else{
    	            $data_user = DB::Table('cms_users')
                    ->join('master as mas', 'cms_users_id', '=', 'cms_users.id')
                    ->select([
    		            'cms_users.id as cms_id',
    		            'mas.id as master_id'
    	            ])
    	            ->where('cms_users.id','=',CRUDBooster::myId())
    	            ->first();
                    DB::table('topup')
                    ->where('id', $id)
                    ->update([
                        'master_id' => $data_user->master_id,
                        'approve' => "2"
                        ]);
                    CRUDBooster::redirect(CRUDBooster::mainpath(),'Topup Berhasil Ditolak','success');
    	        }
            }else{
                CRUDBooster::redirect(CRUDBooster::adminPath(),trans('crudbooster.denied_access'));    
            }
            
        }

	    /*
	    | ---------------------------------------------------------------------- 
	    | Hook for button selected
	    | ---------------------------------------------------------------------- 
	    | @id_selected = the id selected
	    | @button_name = the name of button
	    |
	    */
	    public function actionButtonSelected($id_selected,$button_name) {
	        //Your code here
	            
	    }


	    /*
	    | ---------------------------------------------------------------------- 
	    | Hook for manipulate query of index result 
	    | ---------------------------------------------------------------------- 
	    | @query = current sql query 
	    |
	    */
	    public function hook_query_index(&$query) {
	        //Your code here
	        if(CRUDBooster::myPrivilegeId()==3){
	            $query
	            ->join('agen as ag', 'agen_id', '=', 'ag.id')
	            ->join('cms_users as user', 'cms_users_id', '=', 'user.id')
	            ->where('user.id_cms_privileges','=',CRUDBooster::myPrivilegeId());
	        }else if(CRUDBooster::myPrivilegeId()==4){
	            $query
	            ->join('teller as tell', 'teller_id', '=', 'tell.id')
	            ->join('cms_users as user', 'cms_users_id', '=', 'user.id')
	            ->where('user.id_cms_privileges','=',CRUDBooster::myPrivilegeId());
	        }else if(CRUDBooster::myPrivilegeId()==5){
	           $query
	            ->join('member as mem', 'member_id', '=', 'mem.id')
	            ->join('cms_users as user', 'cms_users_id', '=', 'user.id')
	            ->where('user.id_cms_privileges','=',CRUDBooster::myPrivilegeId());
	        }
	            
	    }

	    /*
	    | ---------------------------------------------------------------------- 
	    | Hook for manipulate row of index table html 
	    | ---------------------------------------------------------------------- 
	    |
	    */    
	    public function hook_row_index($column_index,&$column_value) {	        
	    	//Your code here
	        if(CRUDBooster::myPrivilegeId()==6 || CRUDBooster::myPrivilegeId()==5 || CRUDBooster::myPrivilegeId()==4 || CRUDBooster::myPrivilegeId()==3){
    	    	if($column_index==5){
    	    	    if($column_value=="1"){
    	    	        $column_value = '<span class="label label-success" style="font-size: 13px;">Diterima</span>';
    	    	    }else if($column_value=="0"){
    	    	        $column_value = '<span class="label label-primary" style="font-size: 13px;">Proses</span>';
    	    	    }else{
    	    	        $column_value = '<span class="label label-danger" style="font-size: 13px;">Ditolak</span>';
    	    	    }
    	    	}
	        }
	        if($column_index==1){
	            if($column_value == ""){
	                $column_value = "Sedang di Proses";
	            }
	        }
	        if(CRUDBooster::myPrivilegeId()==2 || CRUDBooster::myPrivilegeId()==1){
	            if($column_index==5){
                    $column_value = number_format($column_value);
    	        }
	        }else{
    	        if($column_index==2){
                    $column_value = number_format($column_value);
    	        }
	        }
	        
	    }

	    /*
	    | ---------------------------------------------------------------------- 
	    | Hook for manipulate data input before add data is execute
	    | ---------------------------------------------------------------------- 
	    | @arr
	    |
	    */
	    public function hook_before_add(&$postdata) {
            //Your code 
            date_default_timezone_set('Asia/Jakarta');
            $tanggal = date("Y-m-d H:i:s");
	        $postdata['approve'] = 0;
	        $postdata['tanggal'] = $tanggal;
	        if(CRUDBooster::myPrivilegeId()==3){
	            $data_user = DB::Table('cms_users')
	                ->join('agen as ag', 'cms_users_id', '=', 'cms_users.id')
	                ->select([
    		            'cms_users.id as cms_id',
    		            'ag.id as agen_id'
		            ])
		            ->where('cms_users.id','=',CRUDBooster::myId())
		            ->first();
	            $postdata['agen_id'] = $data_user->agen_id;
	        }else if(CRUDBooster::myPrivilegeId()==4){
	            $data_user = DB::Table('cms_users')
	                ->join('teller as tel', 'cms_users_id', '=', 'cms_users.id')
	                ->select([
    		            'cms_users.id as cms_id',
    		            'tel.id as teller_id'
		            ])
		            ->where('cms_users.id','=',CRUDBooster::myId())
		            ->first();
	            $postdata['teller_id'] = $data_user->teller_id;
	        }else if(CRUDBooster::myPrivilegeId()==5){
	            $data_user = DB::Table('cms_users')
	                ->join('member as mem', 'cms_users_id', '=', 'cms_users.id')
	                ->select([
    		            'cms_users.id as cms_id',
    		            'mem.id as member_id'
		            ])
		            ->where('cms_users.id','=',CRUDBooster::myId())
		            ->first();
	            $postdata['member_id'] = $data_user->member_id;
	        }
	    }

	    /* 
	    | ---------------------------------------------------------------------- 
	    | Hook for execute command after add public static function called 
	    | ---------------------------------------------------------------------- 
	    | @id = last insert id
	    | 
	    */
	    public function hook_after_add($id) {        
	        //Your code here

	    }

	    /* 
	    | ---------------------------------------------------------------------- 
	    | Hook for manipulate data input before update data is execute
	    | ---------------------------------------------------------------------- 
	    | @postdata = input post data 
	    | @id       = current id 
	    | 
	    */
	    public function hook_before_edit(&$postdata,$id) {        
	        //Your code here

	    }

	    /* 
	    | ---------------------------------------------------------------------- 
	    | Hook for execute command after edit public static function called
	    | ----------------------------------------------------------------------     
	    | @id       = current id 
	    | 
	    */
	    public function hook_after_edit($id) {
	        //Your code here 

	    }

	    /* 
	    | ---------------------------------------------------------------------- 
	    | Hook for execute command before delete public static function called
	    | ----------------------------------------------------------------------     
	    | @id       = current id 
	    | 
	    */
	    public function hook_before_delete($id) {
	        //Your code here

	    }

	    /* 
	    | ---------------------------------------------------------------------- 
	    | Hook for execute command after delete public static function called
	    | ----------------------------------------------------------------------     
	    | @id       = current id 
	    | 
	    */
	    public function hook_after_delete($id) {
	        //Your code here

	    }



	    //By the way, you can still create your own method in here... :) 


	}