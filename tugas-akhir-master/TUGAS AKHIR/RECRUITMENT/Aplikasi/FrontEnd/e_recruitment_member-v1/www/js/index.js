// --------------------------------------------------DATA AWAL----------------------------
      window.disabledBackButton=true;
      var provinsi = [];
      var kota = [];
      var kecamatan = [];
      var kelurahan = [];
      var jumlah_page = 0;

      function Buka(){
        jumlah_page = parseInt(jumlah_page) + 1;
      }
      function Kembali(){
        jumlah_page = parseInt(jumlah_page) - 1;
      }
      function logout(){
        for(var i=0;i < jumlah_page;i++){
          backPage();
        }
      }
      function GetFormattedDate(tanggal) {
          var month = format(tanggal.getMonth() + 1);
          var day = format(tanggal.getDate());
          var year = format(tanggal.getFullYear());
          return month + "/" + day + "/" + year;
      }

        function get_kelurahan(){
          $.ajax({
              type: "GET",
              dataType: "json",
              url: "http://admin.bengkelbumi.id/api/kelurahan_list",
              success: function(result) {
                if(result.api_message=="success"){
                  kelurahan = result.data;
                  // alert("kelurahan:"+kelurahan[0].nama);
                }else{
                  alert("Ambil Data Kelurahan Gagal");
                }
              },
              error: function (request, error) {
                 alert("Data Kelurahan Error"+error);
            },
          });
        }
        function get_kecamatan(){
          $.ajax({
              type: "GET",
              dataType: "json",
              url: "http://admin.bengkelbumi.id/api/kecamatan_list",
              success: function(result) {
                if(result.api_message=="success"){
                  kecamatan = result.data;
                  // alert("kecamatan:"+kecamatan[0].nama);
                }else{
                  alert("Ambil Data Kecamatan Gagal");
                }
              },
              error: function (request, error) {
                 alert("Data Kecamatan Error"+error);
            },
          });
        }

        function get_kota(){
          $.ajax({
              type: "GET",
              dataType: "json",
              url: "http://admin.bengkelbumi.id/api/kota_list",
              success: function(result) {
                if(result.api_message=="success"){
                  kota = result.data;
                  // alert("Kota:"+kota[0].nama);
                }else{
                  alert("Ambil Data Kota Gagal");
                }
              },
              error: function (request, error) {
                 alert("Data Kota Error"+error);
            },
          });
        }

        function get_provinsi(){
           $.ajax({
              type: "GET",
              dataType: "json",
              url: "http://admin.bengkelbumi.id/api/provinsi_list",
              success: function(result) {
                if(result.api_message=="success"){

                  // for(var i=0;i < result.data.length;i++){
                  //   var obj = {};
                  //   obj["id"] = result.data[i].id;
                  //   obj["nama"] = result.data[i].nama;
                  //   provinsi.push(obj);
                  // }
                  provinsi = result.data;
                  // alert("provinsi:"+provinsi[0].nama);
                }else{
                  alert("Ambil Data Provinsi Gagal");
                }
                  closeLoading();
              },
              error: function (request, error) {
                alert("Data Provinsi Error"+error);
                closeLoading();
            },
          });
        }
// ------------------------------------------------------------------------------------------------------


        function get_wilayah() {
          loading('Tunggu Sebentar...');
          get_kelurahan();
          get_kecamatan();
          get_kota();
          get_provinsi();
          // +", provinsi:"+provinsi[0].nama+", kelurahan:"+kelurahan[0].nama+", kecamatan:"+kecamatan[0].nama
        }
// ---------------------------------------LOGIN-----------------------------------------------------
function login(){
  var emaila = document.getElementById("login_email").value;
  var pass = document.getElementById("login_pass").value;
  if(emaila == "" || pass == ""){
  	alert("Email atau Password tidak boleh kosong");
    closeLoading('btn_menu');
  }else{
  $.ajax({
      type: "GET",
      dataType: "json",
      url: "http://recruitment.bitkit.id/api/login_pelamar",
      data: {email:emaila,password:pass},
      success: function(result) {
        if(result.api_message=="success"){
          data_pribadi(result);
          Buka();
          openPage('dashboard');
          document.getElementById("login_email").value = "";
          document.getElementById("login_pass").value = "";
        }else{
          alert("Login Gagal");
        }
        closeLoading('btn_menu');
      },
      error: function (request, error) {
         alert(error);
        closeLoading('btn_menu');
    },
  });
  //closeLoading('btn_menu');
  }
}
var jumlah_anggota = "";
var data_anggota = {};

function data_pribadi(result){
  get_detail_anggota(result.id);
  data_anggota["id_user"] = result.id;
  data_anggota["nama_anggota"] = result.name;
  data_anggota["email_anggota"] = result.email;
}

function get_detail_anggota(id_user){
loading('Tunggu Sebentar...');
  $.ajax({
      type: "GET",
      dataType: "json",
      // url: "http://admin.bengkelbumi.id/api/anggota_read",
      url: "http://recrutment.bitkit.id/api/pelamar_detail",
      data: {cms_user_id:id_user},
      success: function(result) {
        if(result.api_message=="success"){
          data_anggota["id_anggota"] = result.id;
          data_anggota["ktp_anggota"] = result.no_ktp;
          // data_anggota["tabungan_anggota"] = result.tabungan;
          // data_anggota["nama_tipe"] = result.tipe_nama;
          // data_anggota["lahan_anggota"] = result.lahan;
          // document.getElementById("saldo_anggota").innerHTML = "Rp."+result.tunai+",-";
        }else{
          alert("Data Anggota Error");
          // document.getElementById("saldo_anggota").innerHTML = "Rp.0,-";
        }
      },
      error: function (request, error) {
         alert(error);
         // document.getElementById("saldo_anggota").innerHTML = "Rp.0,-";
    },
  });
  // get_anggota();
}
// function get_anggota(){
//   $.ajax({
//       type: "GET",
//       dataType: "json",
//       url: "http://admin.bengkelbumi.id/api/anggota_list",
//       success: function(result) {
//         if(result.api_message=="success"){
//           jumlah_anggota = result.data.length;
//           document.getElementById("jumlah_anggota").innerHTML = jumlah_anggota;
//         }else{
//           alert("Data Anggota Error");
//           document.getElementById("jumlah_anggota").innerHTML = "0";
//         }
//         closeLoading();
//       },
//       error: function (request, error) {
//          alert(error);
//          document.getElementById("jumlah_anggota").innerHTML = "0";
//          closeLoading();
//     },
//   });
// }
// ----------------------------------------------------------------------------------------------------------

// -------------------------------------------------REGISTER-------------------------------------------------
var data_register = {};

function register_1(){
  var daftar_nama = document.getElementById("daftar_nama").value;
  var daftar_email = document.getElementById("daftar_email").value;
  var daftar_password = document.getElementById("daftar_password").value;
  var daftar_password2 = document.getElementById("daftar_password2").value;
  if(daftar_nama=="" || daftar_email=="" || daftar_password=="" || daftar_password2==""){
  	alert("Form tidak boleh ada yang kosong");
  	closeLoading('btn_daftar1');
  }else{
  	if(daftar_password==daftar_password2){
	  $.ajax({
	      type: "GET",
	      dataType: "json",
	      // url: "http://admin.bengkelbumi.id/api/register",
        url: "http://recrutment.bitkit.id/api/pelamar_registrasi",
	      data: {name:daftar_nama,email:daftar_email,password:daftar_password,id_cms_privileges:2},
	      success: function(result) {
	        if(result.api_message=="success"){

	          data_register["id"] = result.id;
	          data_register["nama"] = daftar_nama;
	          data_register["email"] = daftar_email;
	          openPage('signup_2');
	          get_wilayah();

	        }else{
	          alert("Daftar Gagal");
	        }
	        closeLoading('btn_daftar1');
	      },
	      error: function (request, error) {
	         alert(error);
	        closeLoading('btn_daftar1');
	    },
	  });
  	}else{
  		alert("Password tidak sama");
  		closeLoading('btn_daftar1');
  	}
  }
}


function register_2(){
    var daftar2_provinsi = document.getElementById("daftar2_provinsi").value;
    var daftar2_kota = document.getElementById("daftar2_kota").value;
    var daftar2_kecamatan = document.getElementById("daftar2_kecamatan").value;
    var daftar2_kelurahan = document.getElementById("daftar2_kelurahan").value;
    var daftar2_tipe = document.getElementById("daftar2_tipe").value;
    var daftar2_ktp = document.getElementById("daftar2_ktp").value;
    var daftar2_rekening = document.getElementById("daftar2_rekening").value;
    var daftar2_alamat = document.getElementById("daftar2_alamat").value;
    var daftar2_rt = document.getElementById("daftar2_rt").value;
    var daftar2_rw = document.getElementById("daftar2_rw").value;
    var daftar2_notel = document.getElementById("daftar2_notel").value;
    var daftar2_lahan = document.getElementById("daftar2_lahan").value;
    var daftar2_email = data_register["email"];
    if(daftar2_provinsi=="" || daftar2_kota=="" || daftar2_kecamatan=="" || daftar2_kelurahan=="" || daftar2_tipe=="" || daftar2_ktp=="" || daftar2_rekening=="" || daftar2_alamat=="" || daftar2_rt=="" ||daftar2_rw=="" || daftar2_notel=="" || daftar2_lahan=="" || daftar2_email==""){
    	alert("Form tidak boleh ada yang kosong");
        closeLoading("btn_lanjut");
    }else{
	    $.ajax({
	      type: "GET",
	      dataType: "json",
	      url: "http://admin.bengkelbumi.id/api/pengguna_create",
	      data: {email:daftar2_email,mobile:daftar2_notel},
	      success: function(result) {
	        if(result.api_message=="success"){
	          tambah_anggota(daftar2_tipe,result.id,daftar2_rekening,daftar2_ktp,daftar2_alamat,daftar2_rt,daftar2_rw,daftar2_provinsi,daftar2_kota,daftar2_kecamatan,daftar2_kelurahan,daftar2_lahan);
	        }else{
	          alert("Daftar Pengguna Gagal");
	        }
	      },
	      error: function (request, error) {
	         alert("Error Daftar Pengguna : "+error);
	        },
	    });
    }
}
function tambah_anggota(tipe_id,pengguna_id,rekening,ktp,alamat,rt,rw,provinsi_id,kota_kabupaten_id,kecamatan_id,kelurahan_id,lahan){
  var cms_id = data_register["id"];
  var cms_nama = data_register["nama"];
      $.ajax({
      type: "POST",
      dataType: "json",
      url: "http://admin.bengkelbumi.id/api/anggota_create",
      data: {tipe_id:tipe_id,
        pengguna_id:pengguna_id,
        cms_user_id:cms_id,
        nama:cms_nama,
        rekening:rekening,
        ktp:ktp,
        alamat:alamat,
        rt:rt,
        rw:rw,
        provinsi_id:provinsi_id,
        kota_kabupaten_id:kota_kabupaten_id,
        kecamatan_id:kecamatan_id,
        kelurahan_id:kelurahan_id,
        lahan:lahan,
        tabungan:0,
        tunai:0},
      success: function(result) {
        if(result.api_message=="success"){
          // data_register["id_anggota"] = result.id;
          alert("Register Berhasil");
          backPage();
          backPage();
        }else{
          alert("Register Gagal");
        }
          closeLoading("btn_lanjut");
      },
      error: function (request, error) {
         alert("Error Daftar Anggota : "+error);
          closeLoading("btn_lanjut");
        },
    });
}

// function register_3(){
//   var status_jamu = document.getElementById("status_jamu").checked;
//   var status_jst = document.getElementById("status_jst").checked;
//   var status_jagung = document.getElementById("status_jagung").checked;
//   var status_padi = document.getElementById("status_padi").checked;
//   var status_sayur = document.getElementById("status_sayur").checked;
//   var id_anggota = data_register["id_anggota"];
//   var today = new Date();
//   var dd = today.getDate();
//   var mm = today.getMonth()+1; //January is 0!
//   var yyyy = today.getFullYear();
//   var tanggal = yyyy+"-"+mm+"-"+dd;

//   if(status_jamu==true){
//     // var obj = {};
//     // obj["anggota_id"] = id_anggota;
//     // obj["produk_id"] = ;
//     // obj["tanggal"] = tanggal;
//     daftar3_produk.push(document.getElementById("status_jamu").value);
//   }

//   if(status_jst==true){
//     daftar3_produk.push(document.getElementById("status_jst").value);
//   }

//   if(status_jagung==true){
//     daftar3_produk.push(document.getElementById("status_jagung").value);
//   }

//   if(status_padi==true){
//     daftar3_produk.push(document.getElementById("status_padi").value);
//   }

//   if(status_sayur==true){
//     daftar3_produk.push(document.getElementById("status_sayur").value);
//   }

//   $.ajax({
//       type: "POST",
//       dataType: "json",
//       url: "http://admin.bengkelbumi.id/api/produksi_create",
//       data: {anggota_id:id_anggota,produk_id:daftar3_produk[0],tanggal:tanggal},
//       success: function(result) {
//         if(result.api_message=="success"){

//           alert("Data Berhasil Tersimpan");
//           backPage();
//           backPage();
//           backPage();
//         }else{
//           alert("Simpan Data Gagal");
//         }
//         closeLoading('btn_regis3');
//       },
//       error: function (request, error) {
//          alert("Error Register Produk :"+error);
//         closeLoading('btn_regis3');
//     },
//   });

// }


// ----------------------------------------------------------------------------------------------------------

// ----------------------------------------------------TRANSAKSI-------------------------------------------
var list_produk = [];
var produk = [];
var penyakit = [];
var total_list = 0;
var produksi = [];
var riwayat_beli = [];
var riwayat_jual = [];
var penyakit_id = 0;
var jumlah_beli_produksi = 0;
var harga_beli_produksi = 0;
var id_beli_produksi = 0;

function tampil_saldo(){
  document.getElementById("saldo_tunai").innerHTML =  "Rp. "+data_anggota["saldo_anggota"]+",-";
  document.getElementById("saldo_tabungan").innerHTML =  "Rp. "+data_anggota["tabungan_anggota"]+",-";
}

function get_produk(){
  loading('Tunggu Sebentar...');
  $.ajax({
      type: "GET",
      dataType: "json",
      url: "http://admin.bengkelbumi.id/api/produk_list",
      success: function(result) {
        if(result.api_message=="success"){
          produk = result.data;
        }else{
          alert("Data Produk Error");
        }
        closeLoading();
      },
      error: function (request, error) {
         alert("Error Get Produk :"+error);
        closeLoading();
    },
  });
}

function tambah_list(){
  var obj = {};
  var id_produk = "";
  var status=0;
  var nama_produk = "none";
  var harga_produk = 0;
  alert({
    title:'Form Tambah',
    message:'<strong>Jenis Produk</strong><br><select id="produk_select"><option>----- Klik Disini -----</option><option data="produk" value="${id}">${nama}</option></select><br><strong>Jumlah</strong><br><input type="number" id="qty" value="1">',
    buttons:[
      {
        label: 'Tambah',
        onclick: function(){
          id_produk = "";
          id_produk = document.getElementById("produk_select").value;

          var jumlah_produk = document.getElementById("qty").value;
          if(jumlah_produk>0){
            for(var x=0;x<list_produk.length;x++){
              if(list_produk[x].id==id_produk){
                status=1;
                break;
              }else{
                status=0;
              }
            }
            if(status==0){
              for(var i=0;i<produk.length;i++){
                    if(produk[i].id==id_produk){
                      nama_produk = produk[i].nama;
                      harga_produk = produk[i].jual;
                      var subtotal = parseInt(harga_produk) * parseInt(jumlah_produk);
                      obj = {};
                      obj["id"] = id_produk;
                      obj["produk"] = nama_produk;
                      obj["harga"] = harga_produk;
                      obj["jumlah"] = parseInt(jumlah_produk);
                      obj["subtotal"] = subtotal;
                      list_produk.push(obj);
                      total_list = parseInt(total_list) + parseInt(subtotal);
                }
              }
            }else{
              alert("Produk sudah ada di dalam list");
            }
          }else{
            alert("Penjualan produk minimal 1");
          }

          document.getElementById("total_bayar").innerHTML = "Total Bayar : Rp "+total_list+",-";
          closeAlert();
        }
      },
      {
        label:'Batal',
        onclick: function(){
          closeAlert();
        }
      }
    ]
  });
}

function tambah_list_beli(){
  var obj = {};
  var id_produk = "";
  var status=0;
  var nama_produk = "none";
  var harga_produk = 0;
  alert({
    title:'Form Tambah',
    message:'<strong>Jenis Produk</strong><br><select id="produk_select"><option>----- Klik Disini -----</option><option data="produk" value="${id}">${nama}</option></select><br><strong>Jumlah</strong><br><input type="number" id="qty" value="1">',
    buttons:[
      {
        label: 'Tambah',
        onclick: function(){
          id_produk = "";
          id_produk = document.getElementById("produk_select").value;

          var jumlah_produk = document.getElementById("qty").value;
          if(jumlah_produk>0){
            for(var x=0;x<list_produk.length;x++){
              if(list_produk[x].id==id_produk){
                status=1;
                break;
              }else{
                status=0;
              }
            }
            if(status==0){
              for(var i=0;i<produk.length;i++){
                    if(produk[i].id==id_produk){
                      nama_produk = produk[i].nama;
                      if(data_anggota["nama_tipe"] == "Umum"){
                        harga_produk = produk[i].beli;  
                      }else{
                        harga_produk = produk[i].beli_anggota;
                      }
                      var subtotal = parseInt(harga_produk) * parseInt(jumlah_produk);
                      obj = {};
                      obj["id"] = id_produk;
                      obj["produk"] = nama_produk;
                      obj["harga"] = harga_produk;
                      obj["jumlah"] = parseInt(jumlah_produk);
                      obj["subtotal"] = subtotal;
                      list_produk.push(obj);
                      total_list = parseInt(total_list) + parseInt(subtotal);
                }
              }
            }else{
              alert("Produk sudah ada di dalam list");
            }
          }else{
            alert("Penjualan produk minimal 1");
          }

          document.getElementById("total_bayar").innerHTML = "Total Bayar : Rp "+total_list+",-";
          closeAlert();
        }
      },
      {
        label:'Batal',
        onclick: function(){
          closeAlert();
        }
      }
    ]
  });
}

function hapus_list(index,subtotal){
  total_list = parseInt(total_list) - parseInt(subtotal);
  document.getElementById("total_bayar").innerHTML = "Total Bayar : Rp "+total_list+",-";
  // delete list_produk[index];
  list_produk.splice(index,1);
}

function addZero(i) {
    if (i < 10) {
        i = "0" + i;
    }
    return i;
}

function proses_jual(){
  loadingElement('btn_jual');
  var myDate = new Date();
  var day = addZero(myDate.getDate());
  var monthIndex = addZero(parseInt(myDate.getMonth()) + 1);
  var year = myDate.getFullYear();
  var h = addZero(myDate.getHours());
  var m = addZero(myDate.getMinutes());
  var s = addZero(myDate.getSeconds());

  var full_tanggal = year+"-"+monthIndex+"-"+day+" "+ h + ":" + m + ":" + s;
  var jenis_id = 1;
  var jual_anggota_id = data_anggota["id_anggota"];
  // var total = document.getElementById("total_bayar").innerHTML;
  var bayar_id = document.getElementById("bayar_id").value;
  // var total_1 = total.replace("Total Bayar : Rp ","");
  // var total_2 = total_1.replace(",-","");
  var transaksi_id = "";
  var nomor = year+monthIndex+day+h+m+s+"";
  $.ajax({
    // JSON.stringify(list_produk)
      type: "POST",
      dataType: "json",
      url: "http://admin.bengkelbumi.id/api/transaksi_create",
      data: {tanggal:full_tanggal,nomor:nomor,jenis_id:jenis_id,jual_anggota_id:jual_anggota_id,total:total_list,bayar_id:bayar_id,bayar:0,detail:JSON.stringify(list_produk)},
      success: function(result) {
        if(result.api_message=="berhasil"){
          transaksi_id = result.id;
          // detail_jual(transaksi_id);
          alert("Jual Produk Berhasil");
          closeLoading('btn_jual');
          reset_jual();
        }else{
          alert("Jual Produk Gagal : "+result.api_message);
          closeLoading('btn_jual');
          // reset_jual();
          
        }
      },
      error: function (request, error,data) {
         alert("Error Jual Produk :"+data);
          closeLoading('btn_jual');
        // reset_jual();
    },
  });
}

function proses_beli(){
  loadingElement('btn_beli_eceran');
  if(total_list > data_anggota["saldo_anggota"]){
    alert("Saldo Anda Tidak Cukup");
    closeLoading('btn_beli_eceran');
  }else{
    var myDate = new Date();
    var day = addZero(myDate.getDate());
    var monthIndex = addZero(parseInt(myDate.getMonth()) + 1);
    var year = myDate.getFullYear();
    var h = addZero(myDate.getHours());
    var m = addZero(myDate.getMinutes());
    var s = addZero(myDate.getSeconds());

    var full_tanggal = year+"-"+monthIndex+"-"+day+" "+ h + ":" + m + ":" + s;
    var jenis_id = 2;
    var beli_anggota_id = data_anggota["id_anggota"];
    // var total = document.getElementById("total_bayar").innerHTML;
    var bayar_id = document.getElementById("bayar_id").value;
    // var total_1 = total.replace("Total Bayar : Rp ","");
    // var total_2 = total_1.replace(",-","");
    var transaksi_id = "";
    var nomor = year+monthIndex+day+h+m+s+"";
    $.ajax({
      // JSON.stringify(list_produk)
        type: "POST",
        dataType: "json",
        url: "http://admin.bengkelbumi.id/api/transaksi_create",
        data: {tanggal:full_tanggal,nomor:nomor,jenis_id:jenis_id,beli_anggota_id:beli_anggota_id,total:total_list,bayar_id:bayar_id,bayar:total_list,detail:JSON.stringify(list_produk)},
        success: function(result) {
          if(result.api_message=="berhasil"){
            transaksi_id = result.id;
            // detail_jual(transaksi_id);
            alert("Beli Produk Berhasil");
            closeLoading('btn_beli_eceran');
            reset_beli();
          }else{
            alert("Beli Produk Gagal : "+result.api_message);
            closeLoading('btn_beli_eceran');
            // reset_beli();
          }
        },
        error: function (request, error,data) {
           alert("Error Beli Produk :"+data);
            closeLoading('btn_beli_eceran');
          // reset_beli();
      },
    });
  }
}

function reset_jual(){
  document.getElementById("total_bayar").innerHTML = "Total Bayar : Rp "+total_list+",-";
  // berhasil_jual = list_produk;
  data_anggota["saldo_anggota"] = parseInt(data_anggota["saldo_anggota"]) + total_list;
  openPage("jual_transaksi_konfirm",tampil_berhasil_jual);
}

function reset_beli(){
  document.getElementById("total_bayar").innerHTML = "Total Bayar : Rp "+total_list+",-";
  // berhasil_jual = list_produk;
  data_anggota["saldo_anggota"] = parseInt(data_anggota["saldo_anggota"]) - total_list;
  openPage("beli_transaksi_konfirm",tampil_berhasil_jual);
}

function tampil_berhasil_jual(){
  document.getElementById("berhasil_total").innerHTML = "Total : <strong>Rp "+total_list+",-</strong>";
  // list_produk = [];
  // total_list = 0;
}

function reset_list_produk(){
  list_produk = [];
  total_list = 0;
  jumlah_beli_produksi = 0;
  harga_beli_produksi = 0;
}

function get_penyakit(){
  loading('Tunggu Sebentar...');
  $.ajax({
      type: "GET",
      dataType: "json",
      url: "http://admin.bengkelbumi.id/api/penyakit_list",
      success: function(result) {
        if(result.api_message=="success"){
          penyakit = result.data;
        }else{
          alert("Gagal Ambil Data Penyakit :"+result.api_message);
        }
        closeLoading();
      },
      error: function (request, error) {
         alert("Error Get Penyakit :"+error);
        closeLoading();
    },
  });
}

function get_obat(){
  loading('Tunggu Sebentar...');
  $.ajax({
      type: "GET",
      dataType: "json",
      data: {penyakit_id: penyakit_id},
      url: "http://admin.bengkelbumi.id/api/obat_list",
      success: function(result) {
        if(result.api_message=="success"){
          var data_obat = [];
          data_obat = result.data;
          for(var i=0;i<data_obat.length;i++){
                  var obj = {};
                  obj["id"] = data_obat[i].produk_id;
                  obj["produk"] = data_obat[i].produk_nama;
                  var harga = 0;
                  if(data_anggota["nama_tipe"] == "Umum"){
                    harga = parseInt(data_obat[i].produk_harga);
                  }else{
                    harga = parseInt(data_obat[i].produk_harga_anggota);
                  }
                  obj["harga"] = harga;
                  obj["jumlah"] = parseInt(data_obat[i].dosis);
                  obj["subtotal"] = harga * data_obat[i].dosis;
                  list_produk.push(obj);
                  total_list = parseInt(total_list) + parseInt(obj["subtotal"]);
          }
          document.getElementById("obat_total").innerHTML = "Total Bayar : Rp "+total_list+",-";
          // obat = result.data;
        }else{
          document.getElementById("obat_total").innerHTML = "Total Bayar : Rp 0,-";
          alert("Gagal Ambil Data Obat :"+result.api_message);
        }
        closeLoading();
      },
      error: function (request, error) {
         alert("Error Get Obat :"+error);
        closeLoading();
    },
  });
}


function proses_beli_obat(){
  loadingElement('btn_beli_obat');
  var radios = document.getElementsByName('id_penyakit');
  for (var i = 0, length = radios.length; i < length; i++){
    if (radios[i].checked){
      // do whatever you want with the checked radio
      penyakit_id = radios[i].value;
      // only one radio can be logically checked, don't check the rest
      break;
    }
  }
  openPage("beli_transaksi_obat_konfirm",get_obat);
  closeLoading('btn_beli_obat');
}

function proses_simpan_beli_obat(){
  loadingElement('btn_simpan_beli_obat');
  if(total_list > data_anggota["saldo_anggota"]){
    alert("Saldo Anda Tidak Cukup");
    closeLoading('btn_simpan_beli_obat');
  }else{
    var myDate = new Date();
    var day = addZero(myDate.getDate());
    var monthIndex = addZero(parseInt(myDate.getMonth()) + 1);
    var year = myDate.getFullYear();
    var h = addZero(myDate.getHours());
    var m = addZero(myDate.getMinutes());
    var s = addZero(myDate.getSeconds());

    var full_tanggal = year+"-"+monthIndex+"-"+day+" "+ h + ":" + m + ":" + s;
    var jenis_id = 2;
    var beli_anggota_id = data_anggota["id_anggota"];
    // var total = document.getElementById("total_bayar").innerHTML;
    var bayar_id = document.getElementById("bayar_id").value;
    // var total_1 = total.replace("Total Bayar : Rp ","");
    // var total_2 = total_1.replace(",-","");
    var nomor = year+monthIndex+day+h+m+s+"";
    $.ajax({
      // JSON.stringify(list_produk)
        type: "POST",
        dataType: "json",
        url: "http://admin.bengkelbumi.id/api/transaksi_create",
        data: {tanggal:full_tanggal,nomor:nomor,jenis_id:jenis_id,beli_anggota_id:beli_anggota_id,penyakit_id:penyakit_id,total:total_list,bayar_id:bayar_id,bayar:total_list},

        success: function(result) {
          if(result.api_message=="berhasil"){
            transaksi_id = result.id;
            // detail_jual(transaksi_id);
            alert("Beli Produk Berhasil");
            closeLoading('btn_simpan_beli_obat');
            backPage();backPage();backPage();
            data_anggota["saldo_anggota"] = parseInt(data_anggota["saldo_anggota"]) - total_list;
            reset_list_produk();
          }else{
            alert("Beli Produk Gagal : "+result.api_message);
            closeLoading('btn_simpan_beli_obat');
            // backPage();backPage();backPage();
            // data_anggota["saldo_anggota"] = parseInt(data_anggota["saldo_anggota"]) - total_list;
            // reset_list_produk();
          }
        },
        error: function (request, error,data) {
          alert("Error Beli Produk :"+data);
          closeLoading('btn_simpan_beli_obat');
          // backPage();backPage();backPage();
          // data_anggota["saldo_anggota"] = parseInt(data_anggota["saldo_anggota"]) - total_list;
          // reset_list_produk();
      },
    });
  }
}

function get_produksi(){
  loading('Tunggu Sebentar...');
  var myDate = new Date();
  var day = addZero(myDate.getDate());
  var monthIndex = addZero(parseInt(myDate.getMonth()) + 1);
  var year = myDate.getFullYear();
  var full_tanggal = year+"-"+monthIndex+"-"+day;
  $.ajax({
      type: "GET",
      dataType: "json",
      data: {anggota_id: data_anggota['id_anggota']},
      url: "http://admin.bengkelbumi.id/api/produksi_list",
      success: function(result) {
        if(result.api_message=="success"){
          var data_produksi = [];
          data_produksi = result.data;
          produksi = [];
          
          for(var i=0;i<data_produksi.length;i++){
            var obj = {};
            obj["id_produksi"] = data_produksi[i].id;
            obj["produk_nama"] = data_produksi[i].produk_nama;
            obj["tanggal"] = data_produksi[i].tanggal;
            obj["lahan"] = data_produksi[i].produk_lahan;
            obj["pupuk"] = data_produksi[i].produk_pupuk;
            obj["jumlah"] = data_produksi[i].produk_jumlah;

            // menentukan harga beli berdasarkan tipe anggota
            if(data_anggota["nama_tipe"] == "Umum"){
              harga_beli_produksi = data_produksi[i].produksi_beli;
            }else{
              harga_beli_produksi = data_produksi[i].produksi_beli_anggota;
            }
             
             // --------------------------------------------------



            if(full_tanggal > obj["tanggal"]){
              obj["produksi_status"] = "red-200"; 
            }else{
              if(data_produksi[i].produksi_status== ""){
                obj["produksi_status"] = "green-200";
              }else{
                obj["produksi_status"] = "red-200";
              }
              // obj["produksi_status"] = "green-200"; 
            }
            produksi.push(obj);
          }
          // produksi = data_produksi;
          data_produksi = [];
        }else{
          alert("Gagal Ambil Data Produksi :"+result.api_message);
        }
        closeLoading();
      },
      error: function (request, error) {
         alert("Error Get Produksi :"+error);
        closeLoading();
    },
  });
}

function tampil_beli_produksi_konfirm(){
  document.getElementById("qty_produksi_konfirm").innerHTML = "Qty : "+jumlah_beli_produksi+" x "+harga_beli_produksi;
  document.getElementById("subtotal_produksi_konfirm").innerHTML = "Sub Total : <strong>Rp "+total_list+",-</strong>";
  document.getElementById("produksi_total").innerHTML = "Total Bayar : Rp "+total_list+",-";
}

function proses_beli_produksi(status,data_id_produksi){
  if(status=="green-200"){
    for(var i=0;i<produksi.length;i++){
      if(produksi[i].id_produksi == data_id_produksi){
        id_beli_produksi = data_id_produksi;
        if(produksi[i].lahan==1){
          jumlah_beli_produksi = ((produksi[i].pupuk * data_anggota["lahan_anggota"]) / produksi[i].jumlah);
        }else{
          jumlah_beli_produksi = produksi[i].jumlah;
        }
      total_list = jumlah_beli_produksi * harga_beli_produksi;
      openPage("beli_transaksi_produksi_konfirm",tampil_beli_produksi_konfirm);
        break;
      }
    }
  }else{
    alert("Produksi sudah kadaluarsa");
  }
 
}
function proses_simpan_beli_produksi(){
  loadingElement('btn_simpan_beli_produksi');
  if(total_list > data_anggota["saldo_anggota"]){
    alert("Saldo Anda Tidak Cukup");
    closeLoading('btn_simpan_beli_produksi');
  }else{
    var myDate = new Date();
    var day = addZero(myDate.getDate());
    var monthIndex = addZero(parseInt(myDate.getMonth()) + 1);
    var year = myDate.getFullYear();
    var h = addZero(myDate.getHours());
    var m = addZero(myDate.getMinutes());
    var s = addZero(myDate.getSeconds());

    var full_tanggal = year+"-"+monthIndex+"-"+day+" "+ h + ":" + m + ":" + s;
    var jenis_id = 2;
    var beli_anggota_id = data_anggota["id_anggota"];
    // var total = document.getElementById("total_bayar").innerHTML;
    var bayar_id = document.getElementById("bayar_id").value;
    // var total_1 = total.replace("Total Bayar : Rp ","");
    // var total_2 = total_1.replace(",-","");
    var nomor = year+monthIndex+day+h+m+s+"";
    $.ajax({
      // JSON.stringify(list_produk)
        type: "POST",
        dataType: "json",
        url: "http://admin.bengkelbumi.id/api/transaksi_create",
        data: {tanggal:full_tanggal,nomor:nomor,jenis_id:jenis_id,beli_anggota_id:beli_anggota_id,produksi_id:id_beli_produksi,total:total_list,bayar_id:bayar_id,bayar:total_list},

        success: function(result) {
          if(result.api_message=="berhasil"){
            transaksi_id = result.id;
            // detail_jual(transaksi_id);
            alert("Beli Produk Berhasil");
            closeLoading('btn_simpan_beli_produksi');
            backPage();backPage();backPage();backPage();
            data_anggota["saldo_anggota"] = parseInt(data_anggota["saldo_anggota"]) - total_list;
            reset_list_produk();
          }else{
            alert("Beli Produk Gagal : "+result.api_message);
            closeLoading('btn_simpan_beli_produksi');
            // backPage();backPage();backPage();
            // data_anggota["saldo_anggota"] = parseInt(data_anggota["saldo_anggota"]) - total_list;
            // reset_list_produk();
          }
        },
        error: function (request, error,data) {
          alert("Error Beli Produk :"+data);
          closeLoading('btn_simpan_beli_produksi');
          // backPage();backPage();backPage();
          // data_anggota["saldo_anggota"] = parseInt(data_anggota["saldo_anggota"]) - total_list;
          // reset_list_produk();
      },
    });
  }
}

function riwatar_transaksi_beli(){
  loading('Tunggu Sebentar...');
  var beli_anggota_id = data_anggota["id_anggota"];
  $.ajax({
      type: "GET",
      dataType: "json",
      data: {beli_anggota_id:beli_anggota_id},
      url: "http://admin.bengkelbumi.id/api/transaksi_list_beli",
      success: function(result) {
        if(result.api_message=="success"){
          riwayat_beli = result.data;
          riwatar_transaksi_jual(beli_anggota_id);
        }else{
          alert("Gagal Ambil Data Transaksi Beli :"+result.api_message);
          closeLoading();
        }
      },
      error: function (request, error) {
         alert("Error Get Transaksi Beli :"+error);
        closeLoading();
    },
  });
}

function riwatar_transaksi_jual(id_anggota){
  $.ajax({
      type: "GET",
      dataType: "json",
      data: {jual_anggota_id:id_anggota},
      url: "http://admin.bengkelbumi.id/api/transaksi_list_jual",
      success: function(result) {
        if(result.api_message=="success"){
          riwayat_jual = result.data;
        }else{
          alert("Gagal Ambil Data Transaksi Beli :"+result.api_message);
        }
        closeLoading();
      },
      error: function (request, error) {
        alert("Error Get Transaksi Beli :"+error);
        closeLoading();
    },
  });
}

// -------------------------------------------------------------------------------------------------------

// -------------------------------------MASA TANAM--------------------------------------------------------
// function tanggal_panen() {

//   var myDate = new Date(); // From model.

//   cordova.plugins.DateTimePicker.show({
//     mode: "date",
//     date: myDate,
//     allowOldDates: true,
//     allowFutureDates: true,
//     minDate: null,
//     maxDate: null,
//     minuteInterval: 15,
//     locale: "EN",
//     okText: "Pilih",
//     cancelText: "Keluar",
//     android: {
//       theme: 16974126, // Theme_DeviceDefault_Dialog
//       calendar: false,
//       is24HourView: true
//     },
//     success: function(newDate) {
//       // Handle new date.
//       console.info(newDate);
//     //   navigator.globalization.dateToString(
//     //     newDate,
//     //     function (date) { 
//     //       alert('Tanggal yang di Pilih: ' + date.value + '\n');
//     //       $("#tanggal_panen").text(date.value); },
//     //     function () { alert('Error getting dateString\n'); },
//     //     { formatLength: 'short', selector: 'date' }
//     // );
//     var mydate = new Date();
//     var str = mydate.toString("MMMM yyyy");
//     alert(str);

//     },
//     cancel: function() {
//       console.info("Cancelled");
//     },
//     error: function (err) {
//       // Handle error.
//       console.error(err);
//     }
//   });
// }

var has_produk = [];

function get_has_produk(){
  loading('Tunggu Sebentar...');
  $.ajax({
      type: "GET",
      dataType: "json",
      url: "http://admin.bengkelbumi.id/api/anggota_has_produk_list",
      data: {anggota_id:data_anggota['id_anggota']},
      success: function(result) {
        if(result.api_message=="success"){
          has_produk = result.data;
          if(has_produk.length==0){
            alert("Isi Produk yang dimiliki terlebih dahulu");
            backPage();
          }
        }else{
          alert("Data Has Produk Error");
        }
        closeLoading();
      },
      error: function (request, error) {
         alert("Error Get Has Produk :"+error);
        closeLoading();
    },
  });
}
function tanggal_tanam() {
  var myDate = new Date(); // From model.

  cordova.plugins.DateTimePicker.show({
    mode: "date",
    date: myDate,
    allowOldDates: true,
    allowFutureDates: true,
    minDate: null,
    maxDate: null,
    minuteInterval: 15,
    locale: "EN",
    okText: "Pilih",
    cancelText: "Keluar",
    android: {
      theme: 16974126, // Theme_DeviceDefault_Dialog
      calendar: false,
      is24HourView: true
    },
    success: function(newDate) {
      // Handle new date.
      console.info(newDate);
    //   navigator.globalization.dateToString(
    //     newDate,
    //     function (date) {
    //       $("#tanggal_tanam").text(date.value); },
    //     function () { alert('Error getting dateString\n'); },
    //     { formatLength: 'short', selector: 'date' }
    // );
        var day = newDate.getDate();
        var monthIndex = parseInt(newDate.getMonth()) + 1;
        var year = newDate.getFullYear();
        var tanggal = year+"-"+monthIndex+"-"+day;
        $("#tanggal_tanam").text(tanggal);
    },
    cancel: function() {
      console.info("Cancelled");
    },
    error: function (err) {
      // Handle error.
      console.error(err);
    }
  });
}


function add_masa_tanam(){
  var anggota_id = data_anggota["id_anggota"];
  var radios = document.getElementsByName("masa_produk");
  var produk_id = "";
  var tanggal = document.getElementById("tanggal_tanam").innerHTML;
  for (var i = 0, length = radios.length; i < length; i++){
    if (radios[i].checked){
      // do whatever you want with the checked radio
      produk_id = radios[i].value;
      // only one radio can be logically checked, don't check the rest
      break;
    }
  }

  if(anggota_id=="" || produk_id=="" || tanggal=="Klik Disini"){
    alert("Form tidak boleh ada yang kosong");
    closeLoading('btn_masa_tanam');
  }else{
  $.ajax({
      type: "POST",
      dataType: "json",
      url: "http://admin.bengkelbumi.id/api/produksi_create",
      data: {anggota_id:anggota_id,produk_id:produk_id,tanggal:tanggal},
      success: function(result) {
        if(result.api_message=="success"){
          alert("Data Berhasil Tersimpan");
          closeLoading('btn_masa_tanam');
          backPage();
        }else{
          alert("Simpan Data Gagal : "+result.api_message);
        }
          closeLoading('btn_masa_tanam');
      },
      error: function (request, error) {
         alert("Error Simpan Data :"+error);
          closeLoading('btn_masa_tanam');
    },
  });
  }
}

// -------------------------------------------------------------------------------------------------------

// ----------------------------------------------- Produk yang Dimiliki -----------------------------------
var daftar3_produk = [];
var data_anggota_has_produk = [];
function anggota_has_produk(){
  loading('Tunggu Sebentar...');
  daftar3_produk = [];
  openPage("signup_3");
  var anggota_id = data_anggota["id_anggota"];
  get_anggota_has_produk(anggota_id);
  closeLoading();
}

function get_anggota_has_produk(anggota_id){
  $.ajax({
      type: "GET",
      dataType: "json",
      url: "http://admin.bengkelbumi.id/api/anggota_has_produk_read",
      data: {anggota_id:anggota_id},
      success: function(result) {
        if(result.api_message=="success"){
          data_anggota_has_produk = result.data;
          if(result.data.length==0){
            // closeLoading();
          }else{
            for(i=0;i<=result.data.length;i++){
              if(result.data[i].produk_id==1){
                $("#status_padi").prop( "checked", true ); 
              }else if(result.data[i].produk_id==2){
                $("#status_jagung").prop( "checked", true );
              }else if(result.data[i].produk_id==3){
                $("#status_jst").prop( "checked", true );
              }else if(result.data[i].produk_id==4){
                $("#status_jamu").prop( "checked", true );
              }else if(result.data[i].produk_id==5){
                $("#status_sayur").prop( "checked", true );
              }
            }
            // closeLoading();
          }
        }else{
          alert("Gagal Memuat Data : "+result.api_message);
          // closeLoading();
        }
      },
      error: function (request, error) {
         alert("Error Simpan Data :"+error);
          // closeLoading();
    },
  });
}

function add_anggota_has_produk(){
  var status_jamu = document.getElementById("status_jamu").checked;
  var status_jst = document.getElementById("status_jst").checked;
  var status_jagung = document.getElementById("status_jagung").checked;
  var status_padi = document.getElementById("status_padi").checked;
  var status_sayur = document.getElementById("status_sayur").checked;
  var id_anggota = data_anggota["id_anggota"];

  if(status_jamu==true){
    daftar3_produk.push(document.getElementById("status_jamu").value);
  }

  if(status_jst==true){
    daftar3_produk.push(document.getElementById("status_jst").value);
  }

  if(status_jagung==true){
    daftar3_produk.push(document.getElementById("status_jagung").value);
  }

  if(status_padi==true){
    daftar3_produk.push(document.getElementById("status_padi").value);
  }

  if(status_sayur==true){
    daftar3_produk.push(document.getElementById("status_sayur").value);
  }

  // proses s/impan
  if(data_anggota_has_produk.length==0){
    proses_anggota_has_produk(id_anggota,daftar3_produk);
    alert("Berhasil Menyimpan Data");
    closeLoading('btn_regis3');
  }else{
    
    $.ajax({
    type: "GET",
    dataType: "json",
    url: "http://admin.bengkelbumi.id/api/anggota_has_produk_delete",
    data: {anggota_id:id_anggota},
    success: function(result) {
      if(result.api_message=="success"){
        proses_anggota_has_produk(id_anggota,daftar3_produk);
        alert("Berhasil Menyimpan Data");
      }else{
        alert("Gagal Delete anggota_has_produk");
      }
      closeLoading('btn_regis3');
    },
    error: function (request, error) {
       alert("Error Delete anggota_has_produk :"+error);
       closeLoading('btn_regis3');
      },
    });
  }
}

function proses_anggota_has_produk(id_anggota,has_produk){
  for(var i=0;i<has_produk.length;i++){
    $.ajax({
      type: "POST",
      dataType: "json",
      url: "http://admin.bengkelbumi.id/api/anggota_has_produk_create",
      data: {anggota_id:id_anggota,produk_id:has_produk[i]},
      success: function(result) {
        // alert(result.api_message);
      },
      error: function (request, error,data) {
          // alert(data);
      },
    }); 
  }
}
// -------------------------------STOK------------------------------
var kolom_chart = [];
var nominal_chart = [];
var warna_chart = [];
var warna_dibeli_chart = [];
var list_chart = [];
var sudah_dibeli = [];
var barChart = "";

function ubah_bulan(index){
  var bulan = ["Januari", "Februari", "Maret", "April", "Mei", "Juni",
  "Juli", "Agustus", "September", "Oktober", "November", "Desember"];
  return bulan[index];
}
function reset_chart(){
  kolom_chart = [];
  nominal_chart = [];
  warna_chart = [];
  list_chart = [];
}
function tampil_chart(){ 
  loading('Tunggu Sebentar...');
  reset_chart();
  var tanggal_stok = new Date();
  var tanggal_before = new Date();

  var Mindex = parseInt(tanggal_stok.getMonth()) + 1;
  var monthIndex = addZero(Mindex);
  var year = tanggal_stok.getFullYear();
  document.getElementById("stok_tanggal").innerHTML = ubah_bulan(tanggal_stok.getMonth())+" "+year;
  // tambah tanggal
  tanggal_stok.setMonth(tanggal_stok.getMonth() + 1);
  document.getElementById("next_stok").value = tanggal_stok;
  // ---------------

  // kurang tanggal
  tanggal_before.setMonth(tanggal_before.getMonth() - 1);
  document.getElementById("before_stok").value = tanggal_before;
  // -------------
  var bulan_tahun = year+"-"+monthIndex+"-01";
            $.ajax({
                type: "GET",
                dataType: "json",
                url: "http://admin.bengkelbumi.id/api/stok_list_by_tanggal",
                data: {tanggal_post:bulan_tahun},
                success: function(result) {
                  if(result.api_message=="success"){
                    for(var i=0;i<result.data.length;i++){
                      var obj = {};
                      var stok = result.data[i].has_produk * result.data[i].jumlah_lahan;
                      obj["nama_produk"] = result.data[i].nama;
                      obj["stok_produk"] = stok;
                      list_chart.push(obj);
                      kolom_chart.push(result.data[i].nama);
                      nominal_chart.push(stok);
                      warna_chart.push("rgb(255, 179, 0)");
                      // sudah_dibeli.push(result.data[i].sudah_dibeli);
                      // warna_dibeli_chart.push("rgb(255, 59, 0)");
                    }
                    chart_bar(nominal_chart,kolom_chart,warna_chart);

                    // new Chartist.Bar('#chartist-strauss', {
                    //       labels: kolom_chart,
                    //       series: [nominal_chart],
                    //     });
                  }else{
                    alert("Data Stok Error");
                  }
                  closeLoading();
                },
                error: function (request, error) {
                   alert("Error Stok Produk :"+error);
                  closeLoading();
              },
            });
}


  function ubah_stok_next(){
    loading('Tunggu Sebentar...');
    barChart.destroy();
    reset_chart();
    var set_index = document.getElementById("next_stok").value;
    var tanggal_stok = new Date(set_index);
    var tanggal_before = new Date(set_index);

    // tanggal_stok.setMonth(parseInt(set_index) - 1);
    var Mindex = parseInt(tanggal_stok.getMonth()) + 1;
    var monthIndex = addZero(Mindex);
    var year = tanggal_stok.getFullYear();
    document.getElementById("stok_tanggal").innerHTML = ubah_bulan(tanggal_stok.getMonth())+" "+year;
    // tanggal_stok = tanggal_stok.setMonth(parseInt(set_tanggal));
    // var monthIndex = addZero(tanggal_stok.getMonth());

    tanggal_stok.setMonth(tanggal_stok.getMonth() + 1);
    document.getElementById("next_stok").value = tanggal_stok;
    // document.getElementById("before_stok").value = parseInt(Mindex) - 1;
    tanggal_before.setMonth(tanggal_before.getMonth() - 1);
    document.getElementById("before_stok").value = tanggal_before;

    var bulan_tahun = year+"-"+monthIndex+"-01";
            $.ajax({
                type: "GET",
                dataType: "json",
                url: "http://admin.bengkelbumi.id/api/stok_list_by_tanggal",
                data: {tanggal_post:bulan_tahun},
                success: function(result) {
                  if(result.api_message=="success"){
                    for(var i=0;i<result.data.length;i++){
                      var obj = {};
                      var stok = result.data[i].has_produk * result.data[i].jumlah_lahan;
                      obj["nama_produk"] = result.data[i].nama;
                      obj["stok_produk"] = stok;
                      list_chart.push(obj);
                      kolom_chart.push(result.data[i].nama);
                      nominal_chart.push(stok);
                      warna_chart.push("rgb(255, 179, 0)");
                      // sudah_dibeli.push(result.data[i].sudah_dibeli);
                      // warna_dibeli_chart.push("rgb(255, 59, 0)");
                    }
                    chart_bar(nominal_chart,kolom_chart,warna_chart);

                    // new Chartist.Bar('#chartist-strauss', {
                    //       labels: kolom_chart,
                    //       series: [nominal_chart],
                    //     });
                  }else{
                    alert("Data Stok Error");
                  }
                  closeLoading();
                },
                error: function (request, error) {
                   alert("Error Stok Produk :"+error);
                  closeLoading();
              },
            });
  }

  function ubah_stok_before(){
    loading('Tunggu Sebentar...');
    barChart.destroy();
    reset_chart();
    var set_index = document.getElementById("before_stok").value;
    var tanggal_stok = new Date(set_index);
    var tanggal_before = new Date(set_index);

    // tanggal_stok.setMonth(parseInt(set_index) - 1);
    var Mindex = parseInt(tanggal_stok.getMonth()) + 1;
    var monthIndex = addZero(Mindex);
    var year = tanggal_stok.getFullYear();
    document.getElementById("stok_tanggal").innerHTML = ubah_bulan(tanggal_stok.getMonth())+" "+year;
    // tanggal_stok = tanggal_stok.setMonth(parseInt(set_tanggal));
    // var monthIndex = addZero(tanggal_stok.getMonth());
    
    tanggal_stok.setMonth(tanggal_stok.getMonth() + 1);
    document.getElementById("next_stok").value = tanggal_stok;
    // document.getElementById("before_stok").value = parseInt(Mindex) - 1;
    tanggal_before.setMonth(tanggal_before.getMonth() - 1);
    document.getElementById("before_stok").value = tanggal_before;
    var bulan_tahun = year+"-"+monthIndex+"-01";
            $.ajax({
                type: "GET",
                dataType: "json",
                url: "http://admin.bengkelbumi.id/api/stok_list_by_tanggal",
                data: {tanggal_post:bulan_tahun},
                success: function(result) {
                  if(result.api_message=="success"){
                    for(var i=0;i<result.data.length;i++){
                      var obj = {};
                      var stok = result.data[i].has_produk * result.data[i].jumlah_lahan;
                      obj["nama_produk"] = result.data[i].nama;
                      obj["stok_produk"] = stok;
                      list_chart.push(obj);
                      kolom_chart.push(result.data[i].nama);
                      nominal_chart.push(stok);
                      warna_chart.push("rgb(255, 179, 0)");
                      // sudah_dibeli.push(result.data[i].sudah_dibeli);
                      // warna_dibeli_chart.push("rgb(255, 59, 0)");
                    }
                    chart_bar(nominal_chart,kolom_chart,warna_chart);

                    // new Chartist.Bar('#chartist-strauss', {
                    //       labels: kolom_chart,
                    //       series: [nominal_chart],
                    //     });
                  }else{
                    alert("Data Stok Error");
                  }
                  closeLoading();
                },
                error: function (request, error) {
                   alert("Error Stok Produk :"+error);
                  closeLoading();
              },
            });

  }
  function chart_bar(nominal_c,kolom_c,warna_c){
    var densityData = {
                      label: 'Stok',
                      data: nominal_c,
                      backgroundColor: warna_c
                    };

                    // var terjualData = {
                    //   label: 'Terjual',
                    //   data: sudah_dibeli,
                    //   backgroundColor: warna_dibeli_chart
                    // };
 
                    barChart = new Chart(document.getElementById("bar-chart"), {
                      type: 'horizontalBar',
                      data: {
                        labels: kolom_c,
                        datasets: [densityData]
                      },
                      options: {
                        legend: { display: false },
                        title: {
                          display: true,
                          text: 'Jumlah Stok Saat Ini'
                        }
                      }
                    });
  }
// -----------------------------------------------------------------------

