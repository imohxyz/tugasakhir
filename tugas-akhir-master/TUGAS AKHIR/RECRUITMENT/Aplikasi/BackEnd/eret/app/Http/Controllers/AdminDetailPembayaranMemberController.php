<?php namespace App\Http\Controllers;

	use Session;
	use Request;
	use DB;
	use CRUDBooster;

	class AdminDetailPembayaranMemberController extends \crocodicstudio\crudbooster\controllers\CBController {

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
			$this->table = "detail_pembayaran_member";
			# END CONFIGURATION DO NOT REMOVE THIS LINE

			# START COLUMNS DO NOT REMOVE THIS LINE
			$this->col = [];
			$this->col[] = ["label"=>"Nomor Pembayaran","name"=>"pembayaran_member_id","join"=>"pembayaran_member,nomor_pembayaran"];
			$this->col[] = ["label"=>"Nomor Tagihan","name"=>"tagihan_member_id","join"=>"tagihan_member,nomor"];
			$this->col[] = ["label"=>"Jumlah","name"=>"jumlah"];
			# END COLUMNS DO NOT REMOVE THIS LINE

			# START FORM DO NOT REMOVE THIS LINE
			$this->form = [];
			
			if(CRUDBooster::myPrivilegeId()==5){
			    $data_user = DB::Table('cms_users')
                ->join('member as mem', 'cms_users_id', '=', 'cms_users.id')
                ->select([
		            'cms_users.id as cms_id',
		            'mem.id as member_id'
	            ])
	            ->where('cms_users.id','=',CRUDBooster::myId())
	            ->first();
    			$this->form[] = ['label'=>'Nomor Tagihan','name'=>'tagihan_member_id','type'=>'select2','validation'=>'required|integer|min:0','width'=>'col-sm-10','datatable'=>'tagihan_member,nomor','datatable_where'=>'member_id='.$data_user->member_id];
			}else{
			    $this->form[] = ['label'=>'Nomor Tagihan','name'=>'tagihan_member_id','type'=>'select2','validation'=>'required|integer|min:0','width'=>'col-sm-10','datatable'=>'tagihan_member,nomor'];
			}
			$this->form[] = ['label'=>'Jumlah','name'=>'jumlah','type'=>'number','validation'=>'required|integer|min:0','width'=>'col-sm-10'];
			# END FORM DO NOT REMOVE THIS LINE

			# OLD START FORM
			//$this->form = [];
			//$this->form[] = ['label'=>'Nomor Tagihan','name'=>'tagihan_member_id','type'=>'select2','validation'=>'required|integer|min:0','width'=>'col-sm-10','datatable'=>'tagihan_member,nomor','datatable_where'=>'member_id='];
			//$this->form[] = ['label'=>'Jumlah','name'=>'jumlah','type'=>'number','validation'=>'required|integer|min:0','width'=>'col-sm-10'];
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
	        if(CRUDBooster::myPrivilegeId()==5){
	            $query
	            ->join('tagihan_member as tm','tm.id','=','tagihan_member_id')
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
	    	if($column_index==3){
	    	    $column_value = number_format($column_value);
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
	        //Your code here
	        date_default_timezone_set('Asia/Jakarta');
			$tanggal = date("Y-m-d H:i:s");
			$nomor_pembayaran = "M".date("ymd").date("His");
			$id_pembayaran = "";
	        if(CRUDBooster::myPrivilegeId()==5){
	            
	           // insert pembayaran
	            $id_pembayaran = DB::table('pembayaran_member')->insertGetId(
					[
						'nomor_pembayaran'  => $nomor_pembayaran, 
						'tanggal'           => $tanggal,
						'total'             => $postdata['jumlah']
					]
    			);
    			
                // 	get data user
    			$data_user = DB::Table('cms_users')
                ->join('member as mem', 'cms_users_id', '=', 'cms_users.id')
                ->select([
		            'cms_users.id as cms_id',
		            'mem.id as member_id'
	            ])
	            ->where('cms_users.id','=',CRUDBooster::myId())
	            ->first();
	            
	           // mengurangi saldo
    			DB::table('member')
                ->where('id',$data_user->member_id)
                ->decrement('saldo',$postdata['jumlah']);
	        }else if(CRUDBooster::myPrivilegeId()==3){
    			
                // 	get data user
    			$data_user = DB::Table('cms_users')
                ->join('agen as ag', 'cms_users_id', '=', 'cms_users.id')
                ->select([
		            'cms_users.id as cms_id',
		            'ag.id as agen_id'
	            ])
	            ->where('cms_users.id','=',CRUDBooster::myId())
	            ->first();
	            
	            // insert pembayaran
	            $id_pembayaran = DB::table('pembayaran_member')->insertGetId(
					[
					    'agen_id'           => $data_user->agen_id,
						'nomor_pembayaran'  => $nomor_pembayaran, 
						'tanggal'           => $tanggal,
						'total'             => $postdata['jumlah']
					]
    			);
	            
                $nomor = "TA-".date("ymd").date("His");
	            DB::table('tagihan_agen')->insert([
						'agen_id' => $data_user->agen_id, 
						'kategori_tagihan_agen_id' => 1,
						'pembayaran_member_id' => $id_pembayaran,
						'nomor' => $nomor,
						'tanggal' => $tanggal,
						'status' => "Belum Lunas",
						'total_tagihan' => $postdata['jumlah']
				]);
	        }else{
	            // 	get data user
    			$data_user = DB::Table('cms_users')
                ->join('teller as tell', 'cms_users_id', '=', 'cms_users.id')
                ->select([
		            'cms_users.id as cms_id',
		            'tell.id as teller_id'
	            ])
	            ->where('cms_users.id','=',CRUDBooster::myId())
	            ->first();
	            
	            // insert pembayaran
	            $id_pembayaran = DB::table('pembayaran_member')->insertGetId(
					[
					    'teller_id'           => $data_user->teller_id,
						'nomor_pembayaran'  => $nomor_pembayaran, 
						'tanggal'           => $tanggal,
						'total'             => $postdata['jumlah']
					]
    			);
	            
                $nomor = "TL-".date("ymd").date("His");
	            DB::table('tagihan_teller')->insert([
						'teller_id' => $data_user->teller_id, 
						'kategori_tagihan_teller_id' => 1,
						'pembayaran_member_id' => $id_pembayaran,
						'nomor' => $nomor,
						'tanggal' => $tanggal,
						'status' => "Belum Lunas",
						'total_tagihan' => $postdata['jumlah']
				]);
	        }
	        $postdata['pembayaran_member_id'] = $id_pembayaran;

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