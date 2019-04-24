// var data =[];  
// var obj = {};
// obj["nama"] = "";
// data.push(obj);

// function detail(nama){
//   data[0].nama = nama;
//   openPage('detail_tagihan');
// }

// var data_history =[];  
// var obj2 = {};
// obj2["nama"] = "";
// data_history.push(obj2);
// function history(nama){
//   data_history[0].nama = nama;
//   openPage('history');
// }
var list_member = [];

        function showMyCustomizedAlert(){
          alert({
            title:'Konfirmasi',
            message:'Anda ingin Menabung sebesar Rp.300.000,-',
            buttons:[
              {
                label: 'OK',
                onclick: function(){
                  closeAlert();
                }
              },
              {
                label:'Cancel',
                onclick: function(){
                  closeAlert();
                }
              }
            ]
          });
        }

function copy_va(nomor){
cordova.plugins.clipboard.copy(nomor);
alert('Nomor Va Berhasil Dicopy')}

//  open function index
var data_user = {};
function get_user_data(id){
  $.ajax({
        type: "GET",
        dataType: "json",
        url: "http://eret.shakti.id/public/api/user_get?id="+id,
        success: function(result) {
          if(result.api_message=="success"){
            data_user['id'] = result.id;
            data_user["name"] = result.name;
            data_user['photo'] = result.photo;
            data_user['email'] = result.email;
            data_user['id_cms_privileges'] = result.id_cms_privileges;
            data_user['cms_privileges_name'] = result.cms_privileges_name;
            data_user['status'] = result.status;
            data_user['ktp'] = result.ktp;
            data_user['alamat'] = result.alamat;
            data_user['nomor_va'] = result.nomor_va;
            data_user['saldo'] = result.saldo;
            data_user['tabungan'] = result.tabungan;
            data_user['id_user'] = result.id_user;
            closeLoading();
            openPage('dashboard',load_data_dashboard);
          }else{
            alert("Gagal Memuat Data User");
            closeLoading();
          }
        },
        error: function (request, error) {
           alert("Memuat Data Error : "+error);
           closeLoading();
      },
    });
}

function get_user_data2(id){
  $.ajax({
        type: "GET",
        dataType: "json",
        url: "http://eret.shakti.id/public/api/member_tabungan_refresh?id="+id,
        success: function(result) {
          if(result.api_message=="success"){
            member_tabungan = result.tabungan;
            var data_params = {};
            data_params["id"] = member_id;
            data_params["nama"] = member_nama;
            data_params["nomor_va"] = member_va;
            data_params["saldo"] = member_saldo;
            data_params["tabungan"] = member_tabungan;
            load_data_list_transaksi2(data_params);
            closeLoading();
          }else{
            alert("Gagal Memuat Data Member");
            closeLoading();
          }
        },
        error: function (request, error) {
           alert("Memuat Data Member : "+error);
           closeLoading();
      },
    });
}

function load_data_dashboard(){
  new QRCode(document.getElementById("dashboard_qrcode"), data_user['nomor_va']);
  document.getElementById("dashboard_nama").innerHTML = data_user['name'];
  document.getElementById("dashboard_nomor_va").innerHTML = data_user['nomor_va'];
}

function login(){
  loading('Memuat...');
  var login_email = document.getElementById("login_email").value;
  var login_pass = document.getElementById("login_password").value;
  if(login_email == "" || login_pass == ""){
    alert("Email atau Password tidak boleh kosong");
    closeLoading();
  }else{
    $.ajax({
        type: "POST",
        dataType: "json",
        url: "http://eret.shakti.id/public/api/login_agen",
        data: {
          email:login_email,
          password:login_pass
        },
        success: function(result) {
          if(result.api_message=="success"){
            get_user_data(result.id);
            alert("Login Berhasil");
          }else{
            alert("Username atau Password Salah");
            closeLoading();
          }
        },
        error: function (request, error) {
           alert("Login Error : "+error);
            closeLoading();
      },
    });
  }
}
function ganti_password(){
  loading('Memuat...');
  var password_lama = document.getElementById("password_lama").value;
  var password_baru = document.getElementById("password_baru").value;
  $.ajax({
        type: "POST",
        dataType: "json",
        url: "http://eret.shakti.id/public/api/ganti_password",
        data: {
          id:data_user['id'],
          password:password_lama,
          password_baru:password_baru
        },
        success: function(result) {
          if(result.api_message=="success"){
            alert("Password Baru Berhasil Disimpan");
            document.getElementById("password_lama").value = "";
            document.getElementById("password_baru").value = "";
            closeLoading();
          }else{
            alert("Password Lama Salah");
            closeLoading();
          }
        },
        error: function (request, error) {
           alert("Login Error : "+error);
            closeLoading();
        },
  });
}
// close function index

// open function list transaksi
var member_id = 1;
// var nomor_va_member = "";
// var nama_member = "";
// var saldo = 0;
var list_transaksi = [];
var member_nama = "";
var member_va = "";
var member_tabungan = "";
var member_saldo = "";
function load_data_list_transaksi(params){
  document.getElementById("list_nama").innerHTML = params.nama;
  member_nama = params.nama;
  member_va = params.nomor_va;
  member_tabungan = params.tabungan;
  member_saldo = 0;
  document.getElementById("list_nomor_va").innerHTML = params.nomor_va;
  loading('Memuat...');
  $.ajax({
        type: "GET",
        dataType: "json",
        url: "http://eret.shakti.id/public/api/tagihan_member_list?member_id="+params.id,
        success: function(result) {
          if(result.api_message=="success"){
            list_transaksi = result.data;
            // document.getElementById("list_saldo").innerHTML = MobileUI.formatMoney(params.saldo,0);
            document.getElementById("list_tabungan").innerHTML = MobileUI.formatMoney(params.tabungan,0);
            member_id = params.id;
            closeLoading();
          }else{
            alert("Gagal Memuat Data Pembayaran");
            closeLoading();
          }
        },
        error: function (request, error) {
           alert("Error Memuat Data Pembayaran : "+error);
            closeLoading();
        },
  });
}

function load_data_list_transaksi2(params){
  document.getElementById("list_nama").innerHTML = params.nama;
  member_nama = params.nama;
  member_va = params.nomor_va;
  member_tabungan = params.tabungan;
  member_saldo = 0;
  document.getElementById("list_nomor_va").innerHTML = params.nomor_va;
  $.ajax({
        type: "GET",
        dataType: "json",
        url: "http://eret.shakti.id/public/api/tagihan_member_list?member_id="+params.id,
        success: function(result) {
          if(result.api_message=="success"){
            list_transaksi = result.data;
            // document.getElementById("list_saldo").innerHTML = MobileUI.formatMoney(params.saldo,0);
            document.getElementById("list_tabungan").innerHTML = MobileUI.formatMoney(params.tabungan,0);
            member_id = params.id;
          }else{
            alert("Gagal Memuat Data Pembayaran");
          }
        },
        error: function (request, error) {
           alert("Error Memuat Data Pembayaran : "+error);
        },
  });
}
// close function list transaksi

// open function list member
function get_member(){
  loading('Tunggu Sebentar...');
  $.ajax({
      type: "GET",
      dataType: "json",
      url: "http://eret.shakti.id/public/api/list_member",
      success: function(result) {
        if(result.api_message=="success"){
          list_member = result.data;
        }else{
          alert("Data Member Error");
        }
        closeLoading();
      },
      error: function (request, error) {
         alert("Error Get Member :"+error);
        closeLoading();
    },
  });
}
// close function list member

// open function cari member
function cari_member(){
  loading('Memuat...');
  var cari = document.getElementById("cari").value;
  $.ajax({
        type: "POST",
        dataType: "json",
        url: "http://eret.shakti.id/public/api/list_member_cari",
        data: {
          nama:cari
        },
        success: function(result) {
          if(result.api_message=="success"){
            list_member = result.data;
            closeLoading();
          }else{
            alert("Data Member Error");
            closeLoading();
          }
        },
        error: function (request, error) {
           alert("Error Get Member : "+error);
            closeLoading();
        },
  });
}
// close function cari member

// open function history
var history_data = [];
// var kategori_id = "";
function load_data_history(params){
  document.getElementById("history_title").innerHTML = "Record Pembayaran "+params.nama;
  // document.getElementById("list_nama").innerHTML = list_transaksi[0].nama_member;
  // document.getElementById("list_nomor_va").innerHTML = list_transaksi[0].nomor_va;
  // member_id = params.id;
  // kategori_id = params.idkat;
  loading('Memuat...');
  $.ajax({
        type: "GET",
        dataType: "json",
        url: "http://eret.shakti.id/public/api/history_pembayaran_member?member_id="+member_id+"&kategori_id="+params.id,
        success: function(result) {
          if(result.api_message=="success"){
            history_data = result.data;
            closeLoading();
          }else{
            alert("Gagal Memuat Data History");
            closeLoading();
          }
        },
        error: function (request, error) {
           alert("Error Memuat Data History : "+error);
            closeLoading();
        },
  });
}
// close function history

// open function detail tagihan member
var detail_tagihan_data = [];
function load_data_detil_tagihan(params){
  document.getElementById("detail_tagihan_title").innerHTML = "Record "+params.nama;
  // document.getElementById("list_nama").innerHTML = list_transaksi[0].nama_member;
  // document.getElementById("list_nomor_va").innerHTML = list_transaksi[0].nomor_va;
  // member_id = params.id;
  // kategori_id = params.idkatdet;
  loading('Memuat...');
  $.ajax({
        type: "GET",
        dataType: "json",
        url: "http://eret.shakti.id/public/api/tagihan_member_detail_new?member_id="+member_id+"&kategori_id="+params.id,
        success: function(result) {
          if(result.api_message=="success"){
            detail_tagihan_data = result.data;
            closeLoading();
          }else{
            alert("Gagal Memuat Data Detail Tagihan");
            closeLoading();
          }
        },
        error: function (request, error) {
          alert("Error Memuat Data Detail Tagihan : "+error);
          closeLoading();
        },
  });
}
// close function detail tagihan member

// open function bayar tagihan
var tagihan_id = "";
var biaya_tagihan = "";
function load_data_tagihan(params){
  loading('Memuat...');
  document.getElementById("bayar_nama").innerHTML = "Bayar "+params.nama;
  document.getElementById("bayar_nominal").innerHTML = "Tagihan : "+params.jumlah;
  tagihan_id = params.id;
  biaya_tagihan = params.jumlah;
  biaya_tagihan = biaya_tagihan.replace(",","");
  closeLoading();
}

function bayar_tagihan(){
  loading('Memuat...');
  var total = document.getElementById("bayar_menggunakan_saldo").value
  // alert(biaya_tagihan+" < "+total);
  if(biaya_tagihan < total){
    alert("Nominal Pembayaran Tidak Boleh Melebihi Nominal Tagihan");
    closeLoading();
  }else{
    if(tagihan_id==""){
      alert("Tagihan ID Tidak Ditemukan");
      closeLoading();
    }else{
      $.ajax({
            type: "POST",
            dataType: "json",
            url: "http://eret.shakti.id/public/api/pembayaran_member",
            data: {
              id:tagihan_id,
              agen_id:data_user['id_user'],
              total:total
            },
            success: function(result) {
              if(result.api_message=="success"){
                closeLoading();
                alert("Pembayaran Tagihan Berhasil");
                backPage();
                backPage();
                var data_params = {};
                data_params["id"] = member_id;
                data_params["nama"] = member_nama;
                data_params["nomor_va"] = member_va;
                data_params["saldo"] = member_saldo;
                data_params["tabungan"] = member_tabungan;
                load_data_list_transaksi2(data_params);
              }else{
                alert(result.api_message+"");
                closeLoading();
              }
            },
            error: function (request, error) {
              alert("Error Membayar Tagihan : "+error);
              closeLoading();
            },
      });
    }
  }
}
// close function bayar tagihan

// open function detail tagihan agen
var detail_tagihan_data_agen = [];
function load_data_detil_tagihan_agen(){
  // document.getElementById("detail_tagihan_title").innerHTML = "Record "+params.nama;
  // kategori_tagihan_agen_id=params.id;
  loading('Memuat...');
  $.ajax({
        type: "GET",
        dataType: "json",
        url: "http://eret.shakti.id/public/api/tagihan_agen_list?agen_id="+data_user['id_user'],
        success: function(result) {
          if(result.api_message=="success"){
            detail_tagihan_data_agen = result.data;
            document.getElementById("list_tagihan").innerHTML = "Rp. "+MobileUI.formatMoney(detail_tagihan_data_agen[0].jumlah_tagihan,0);
            closeLoading();
          }else{
            alert("Gagal Memuat Data Detail Tagihan");
            closeLoading();
          }
        },
        error: function (request, error) {
          alert("Error Memuat Data Detail Tagihan : "+error);
          closeLoading();
        },
  });
}
// close function detail tagihan agen

// open function topup member
function kirim_topup(){
  loading('Memuat...');
  var gambar = $('#topup_gambar')[0].files[0];
  var nominal = document.getElementById("topup_nominal").value
  if(gambar == null || nominal == null){
    alert("Gambar atau Nominal Topup Tidak Boleh Kosong");
    closeLoading();
  }else{
    var fd = new FormData();
    fd.append('agen_id',data_user['id_user']);
    fd.append('nominal',nominal);
    fd.append('bukti_pembayaran',gambar);
    fd.append('member_id',member_id);
    $.ajax({
            type: "POST",
            contentType: false,
            processData: false,
            dataType: "json",
            url: "http://eret.shakti.id/public/api/top_up_create",
            data: fd,
            success: function(result) {
              if(result.api_message=="success"){
                closeLoading();
                alert("Pengiriman Bukti Topup Berhasil");
                backPage();
                // list_transaksi;
              }else{
                alert(result.api_message+"");
                closeLoading();
              }
            },
            error: function (request, error) {
              alert("Error Membayar Tagihan : "+error);
              closeLoading();
            },
      });
  }
}
// close function topup member

// open function topup agen
function kirim_topup_agen(){
  loading('Memuat...');
  var gambar = $('#topup_gambar')[0].files[0];
  var nominal = document.getElementById("topup_nominal").value
  if(gambar == null || nominal == null){
    alert("Gambar atau Nominal Topup Tidak Boleh Kosong");
    closeLoading();
  }else{
    var fd = new FormData();
    fd.append('agen_id',data_user['id_user']);
    fd.append('nominal',nominal);
    fd.append('bukti_pembayaran',gambar);
    $.ajax({
            type: "POST",
            contentType: false,
            processData: false,
            dataType: "json",
            url: "http://eret.shakti.id/public/api/top_up_create",
            data: fd,
            success: function(result) {
              if(result.api_message=="success"){
                closeLoading();
                alert("Pengiriman Bukti Topup Berhasil");
                backPage();
                // list_transaksi;
              }else{
                alert(result.api_message+"");
                closeLoading();
              }
            },
            error: function (request, error) {
              alert("Error Membayar Tagihan : "+error);
              closeLoading();
            },
      });
  }
}
// close function topup agen

// open function scan member
var nomor_virtual = "";
var nama_member = "";
var saldo_member = "";
function scan_member(){
 cordova.plugins.barcodeScanner.scan(
      function (result) {
          if(result.cancelled == true){
            alert("Scan QRCode gagal");
          }else{
            if(result.format == "QR_CODE"){
              nomor_virtual = result.text;
              loading('Memuat...');
              $.ajax({
                    type: "POST",
                    dataType: "json",
                    url: "http://eret.shakti.id/public/api/tagihan_member_list_va",
                    data: {
                          nomor_va:result.text
                    },
                    success: function(result) {
                      if(result.api_message=="success"){
                        list_transaksi = result.data;
                        closeLoading();
                        nama_member = list_transaksi[0].nama_member;
                        saldo_member = MobileUI.formatMoney(list_transaksi[0].saldo_member,0);
                        tabungan_member = MobileUI.formatMoney(list_transaksi[0].tabungan_member,0);
                        member_id = list_transaksi[0].id_member;
                        openPage('detil_member',load_data_scan);
                        // document.getElementById("list_tagihan").innerHTML = tagihan_teller;
                      }else{
                        alert("Gagal Memuat Data Detail Tagihan");
                        closeLoading();
                      }
                    },
                    error: function (request, error) {
                      alert("Error Memuat Data Detail Tagihan : "+error);
                      closeLoading();
                    },
              });
            }else{
              alert("Format Barcode Tidak Sesuai");
            }
          }
      },
      function (error) {
          alert("Scan Error: " + error);
      },
      {
          preferFrontCamera : false, // iOS and Android
          showFlipCameraButton : true, // iOS and Android
          showTorchButton : true, // iOS and Android
          torchOn: false, // Android, launch with the torch switched on (if available)
          saveHistory: true, // Android, save scan history (default false)
          prompt : "Letakan QRCode Di Area", // Android
          resultDisplayDuration: 500, // Android, display scanned text for X ms. 0 suppresses it entirely, default 1500
          formats : "QR_CODE", // default: all but PDF_417 and RSS_EXPANDED
          orientation : "portrait", // Android only (portrait|landscape), default unset so it rotates with the device
          disableAnimations : true, // iOS
          disableSuccessBeep: false // iOS and Android
      }
   );  
}

function load_data_scan(){
document.getElementById("list_nomor_va").innerHTML = nomor_virtual;
document.getElementById("list_nama").innerHTML = nama_member;
document.getElementById("list_tabungan").innerHTML = tabungan_member;
}
// close function scan member

// open function list pinjaman
// var list_pinjaman= [];
var list_transaksi_pinjaman = [];
function load_data_list_transaksi_pinjaman(){
  loading('Memuat...');
  $.ajax({
        type: "GET",
        dataType: "json",
        url: "http://eret.shakti.id/public/api/member_pinjaman_list?agen_id="+data_user['id_user'],
        success: function(result) {
          if(result.api_message=="success"){
            list_transaksi_pinjaman = result.data;
            closeLoading();
          }else{
            alert("Gagal Memuat Data Pembayaran");
            closeLoading();
          }
        },
        error: function (request, error) {
           alert("Error Memuat Data Pembayaran : "+error);
            closeLoading();
        },
  });
}

function ubah_status_pinjaman(id,ubah){
  loading('Memuat...');
  $.ajax({
        type: "POST",
        dataType: "json",
        url: "http://eret.shakti.id/public/api/agen_pinjaman_approve",
        data: {
              id:id,
              ubah:ubah
            },
        success: function(result) {
          if(result.api_message=="success"){
            backPage();
            alert("Berhasil Mengubah Status Pinjaman");
            closeLoading();
          }else{
            alert("Gagal Mengubah Status Pinjaman");
            closeLoading();
          }
        },
        error: function (request, error) {
           alert("Error Mengubah Status Pinjaman : "+error);
            closeLoading();
        },
  });
}
// close function list pinjaman

// open function detail tagihan pinjaman member
var detail_tagihan_data_pinjaman = [];
function load_data_detil_tagihan_pinjaman(params){
  document.getElementById("detail_tagihan_title").innerHTML = "Record "+params.nama;
  // member_id = params.id;
  // kategori_id = params.idkatdet;
  loading('Memuat...');
  $.ajax({
        type: "GET",
        dataType: "json",
        url: "http://eret.shakti.id/public/api/tagihan_member_detail_pinjaman?member_id="+member_id+"&kategori_id=8",
        success: function(result) {
          if(result.api_message=="success"){
            detail_tagihan_data_pinjaman = result.data;
            closeLoading();
          }else{
            alert("Gagal Memuat Data Detail Tagihan Pinjaman");
            closeLoading();
          }
        },
        error: function (request, error) {
          alert("Error Memuat Data Detail Tagihan Pinjaman : "+error);
          closeLoading();
        },
  });
}
// close function detail tagihan pinjaman member

// open function history topup
var history_data_topup = [];
function load_data_history_topup(params){
  document.getElementById("history_title").innerHTML = "Riwayat Topup";
  loading('Memuat...');
  $.ajax({
        type: "GET",
        dataType: "json",
        url: "http://eret.shakti.id/public/api/history_topup?member_id="+member_id,
        success: function(result) {
          if(result.api_message=="success"){
            history_data_topup = result.data;
            closeLoading();
          }else{
            alert("Gagal Memuat Data History Topup");
            closeLoading();
          }
        },
        error: function (request, error) {
           alert("Error Memuat Data History Topup : "+error);
            closeLoading();
        },
  });
}
// close function history topup

// open function history tabungan
var history_data_tabungan = [];
var history_data_tarik_tabungan = [];
function load_data_history_tabungan(params){
  // document.getElementById("history_title").innerHTML = "Riwayat Setor Tabungan ";
  loading('Memuat...');
  $.ajax({
        type: "GET",
        dataType: "json",
        url: "http://eret.shakti.id/public/api/history_tabungan?member_id="+member_id+"&kategori_tagihan_member_id=9",
        success: function(result) {
          if(result.api_message=="success"){
            history_data_tabungan = result.data;
            closeLoading();
          }else{
            alert("Gagal Memuat Data Riwayat Tabungan");
            closeLoading();
          }
        },
        error: function (request, error) {
           alert("Error Memuat Data Riwayat Tabungan : "+error);
            closeLoading();
        },
  });
  $.ajax({
        type: "GET",
        dataType: "json",
        url: "http://eret.shakti.id/public/api/history_tarik_tabungan?member_id="+data_user['id_user'],
        success: function(result) {
          if(result.api_message=="success"){
            history_data_tarik_tabungan = result.data;
            closeLoading();
          }else{
            alert("Gagal Memuat Data Riwayat Tarik Tabungan");
            closeLoading();
          }
        },
        error: function (request, error) {
           alert("Error Memuat Data Riwayat Tarik Tabungan : "+error);
            closeLoading();
        },
  });
}
// close function history tabungan

// open function setor tabungan
function setor_tabungan(){
  loading('Memuat...');
  var nabung = document.getElementById("nabung").value
  var fd = new FormData();
  fd.append('agen_id',data_user['id_user']);
  fd.append('total_tabungan',nabung);
  fd.append('member_id',member_id);
  $.ajax({
    type: "POST",
    contentType: false,
    processData: false,
    dataType: "json",
    url: "http://eret.shakti.id/public/api/setor_tabungan",
    data: fd,
    success: function(result) {
      if(result.api_message=="success"){
        closeLoading();
        alert("Setor Tabungan Berhasil");
        backPage();
        get_user_data2(member_id);
      }else{
        alert(result.api_message+"");
        closeLoading();
      }
    },
    error: function (request, error) {
      alert("Error Setor Tabungan : "+error);
      closeLoading();
    },
  });
}
// close function setor tabungan