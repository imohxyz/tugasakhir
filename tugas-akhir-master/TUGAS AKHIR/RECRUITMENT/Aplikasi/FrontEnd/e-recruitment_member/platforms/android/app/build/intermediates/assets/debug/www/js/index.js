// function cek_login(){
if(localStorage.getItem("id_login") != null){
  loading('Memuat...');
  get_user_data(localStorage.getItem("id_login")+"");
}
// }
function logout(){
  localStorage.removeItem("id_login");
  backPage();
}

var datapendakhir = [];

function get_pendakhir(){
  $.ajax({
      type: "GET",
      dataType: "json",
      url: "http://recruitment.bitkit.id/api/pendakhir_list",
      success: function(result) {
        if(result.api_message=="success"){
          datapendakhir = result.data;
          // alert("kelurahan:"+kelurahan[0].nama);
        }else{
          alert("Ambil Data Pendidikan Terakhir Gagal");
        }
      },
      error: function (request, error) {
          alert("Data Pendidikan Terakhir Error"+error);
    },
  });
}

// funtion ambilpendakhir(){
//   loading('Tunggu Sebentar...');
//   get_pendakhir();
// }

//  open function ambil data user di index
var data_user = {};
function get_user_data(id){
  $.ajax({
        type: "GET",
        dataType: "json",
        url: "http://recruitment.bitkit.id/public/api/user_get?id="+id,
        success: function(result) {
          if(result.api_message=="success"){
            data_user['id'] = result.id;
            data_user["nama"] = result.nama;
            data_user['poto'] = result.poto;
            data_user['email'] = result.email;
            data_user['id_cms_privileges'] = result.id_cms_privileges;
            data_user['cms_privileges_name'] = result.cms_privileges_name;
            data_user['status'] = result.status;
            data_user['ktp'] = result.ktp;
            data_user['alamat'] = result.alamat;
            data_user['nomor_va'] = result.nomor_va;
            data_user['hp'] = result.hp;
            data_user['tempat_lahir'] = result.tempat_lahir;
            data_user['tanggal_lahir'] = result.tanggal_lahir;
            data_user['kerja_akhir'] = result.kerja_akhir;
            data_user['lamakerja_akhir'] = result.lamakerja_akhir;
            data_user['jabatan_akhir'] = result.jabatan_akhir;
            data_user['deskripsi'] = result.deskripsi;
            data_user['id_pend'] = result.id_pend;
            data_user['jenis_kelamin'] = result.jenis_kelamin;
            data_user['usia'] = result.usia;
            data_user['id_user'] = result.id_user;
            closeLoading();
            // openPage('dashboard',load_data_dashboard);
            openPage('menu_utama',load_data_dashboard);
            load_data_list_faq();
            load_data_history_lamaran();
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
        url: "http://recruitment.bitkit.id/public/api/user_get?id="+id,
        success: function(result) {
          if(result.api_message=="success"){
            data_user['id'] = result.id;
            data_user["nama"] = result.nama;
            data_user['poto'] = result.poto;
            data_user['email'] = result.email;
            data_user['id_cms_privileges'] = result.id_cms_privileges;
            data_user['cms_privileges_name'] = result.cms_privileges_name;
            data_user['status'] = result.status;
            data_user['ktp'] = result.ktp;
            data_user['alamat'] = result.alamat;
            data_user['nomor_va'] = result.nomor_va;
            data_user['hp'] = result.hp;
            data_user['tempat_lahir'] = result.tempat_lahir;
            data_user['tanggal_lahir'] = result.tanggal_lahir;
            data_user['kerja_akhir'] = result.kerja_akhir;
            data_user['lamakerja_akhir'] = result.lamakerja_akhir;
            data_user['jabatan_akhir'] = result.jabatan_akhir;
            data_user['deskripsi'] = result.deskripsi;
            data_user['id_pend'] = result.id_pend;
            data_user['jenis_kelamin'] = result.jenis_kelamin;
            data_user['usia'] = result.usia;
            data_user['id_user'] = result.id_user;
          }else{
            alert("Gagal Memuat Data User");
          }
        },
        error: function (request, error) {
           alert("Memuat Data Error : "+error);
      },
    });
}

function load_data_dashboard(){
  // new QRCode(document.getElementById("dashboard_qrcode"), data_user['nomor_va']);
  document.getElementById("dashboard_nama").innerHTML = data_user['nama'];
  document.getElementById("dashboard_ktp").innerHTML = data_user['ktp'];
}
// close function ambil data user di index

// open function login
function login(){
  loading('Memuat...');
  var login_email = document.getElementById("login_email").value;
  var login_pass = document.getElementById("login_password").value;
    $.ajax({
        type: "POST",
        dataType: "json",
        url: "http://recruitment.bitkit.id/public/api/login_pelamar",
        data: {
          email:login_email,
          password:login_pass
        },
        success: function(result) {
          if(result.api_message=="success"){
            get_user_data(result.id);
            localStorage.setItem("id_login", result.id);
            alert("Login Berhasil");
          }else{
            closeLoading();
            alert("Username atau Password Salah");
          }
        },
        error: function (request, error) {
           alert("Login Error : "+error);
            closeLoading();
      },
    });
}
// close function login

// open function ganti password
function ganti_password(){
  loading('Memuat...');
  var password_lama = document.getElementById("password_lama").value;
  var password_baru = document.getElementById("password_baru").value;
  $.ajax({
        type: "POST",
        dataType: "json",
        url: "http://recruitment.bitkit.id/public/api/ganti_password",
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
// close function ganti password

// open function register
// function register(){
//   loading('Memuat...');
//   // var poto = $('#regis_poto')[0].files[0];
//   var email = document.getElementById("regis_email").value
//   var nama = document.getElementById("regis_nama").value
//   var password = document.getElementById("regis_password").value
//   if(email == null || nama == null || password == null){
//     alert("Mohon Isi Semua Data!");
//     closeLoading();
//   }else{
//     var fd = new FormData();
//     fd.append('name',nama);
//     fd.append('password',password);
//     fd.append('email',email);
//     // fd.append('photo',poto);
//     $.ajax({
//             type: "POST",
//             contentType: false,
//             processData: false,
//             dataType: "json",
//             url: "http://recruitment.bitkit.id/public/api/pelamar_registrasi",
//             data: fd,
//             success: function(result) {
//               if(result.api_message=="success"){
//                 alert("Registrasi Sukses!");
//                 closeLoading();
//                 openPage('index');
//               }else{
//                 alert(result.api_message+"");
//                 closeLoading();
//               }
//             },
//             error: function (request, error) {
//               alert("Error Registrasi Pelamar : "+error);
//               closeLoading();
//             },
//       });
//   }
// }
// close function register

// open function register pelamar
var data_register = {};

function register_1(){
  var daftar_nama = document.getElementById("daftar_nama").value;
  var daftar_email = document.getElementById("daftar_email").value;
  var daftar_password = document.getElementById("daftar_password").value;
  var daftar_password2 = document.getElementById("daftar_password2").value;
  if(daftar_nama=="" || daftar_email=="" || daftar_password=="" || daftar_password2==""){
    alert("Mohon isi semua data!");
    closeLoading('btn_daftar1');
  }else{
    if(daftar_password==daftar_password2){
    $.ajax({
        type: "GET",
        dataType: "json",
        url: "http://recruitment.bitkit.id/api/register",
        data: {name:daftar_nama,email:daftar_email,password:daftar_password,id_cms_privileges:4},
        success: function(result) {
          if(result.api_message=="success"){
            data_register["id"] = result.id;
            data_register["nama"] = daftar_nama;
            data_register["email"] = daftar_email;
            openPage('signup_2');
            get_pendakhir();
          }else{
            alert("Registrasi Gagal");
          }
          closeLoading('btn_daftar1');
        },
        error: function (request, error) {
          alert("Error Registrasi Pelamar : "+error);
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
    var daftar2_ktp = document.getElementById("daftar2_ktp").value;
    var daftar2_hp = document.getElementById("daftar2_hp").value;
    var daftar2_alamat = document.getElementById("daftar2_alamat").value;
    var daftar2_tempat = document.getElementById("daftar2_tempat").value;
    var daftar2_tanggal = document.getElementById("daftar2_tanggal").value;
    var daftar2_pendakhir = document.getElementById("daftar2_pendakhir").value;
    var daftar2_kerjaakhir = document.getElementById("daftar2_kerjaakhir").value;
    var daftar2_jabatanakhir = document.getElementById("daftar2_jabatanakhir").value;
    var daftar2_lamakerjaakhir = document.getElementById("daftar2_lamakerjaakhir").value;
    var daftar2_kompetensi = document.getElementById("daftar2_kompetensi").value;
    var daftar2_jenkel = document.getElementById("daftar2_jenkel").value;
    var daftar2_poto = document.getElementById("daftar2_poto").value;
    var daftar2_email = data_register["email"];
    if(daftar2_ktp=="" || daftar2_email=="" || daftar2_hp=="" || daftar2_alamat=="" || daftar2_tempat=="" || daftar2_tanggal=="" || daftar2_pendakhir=="" || daftar2_kerjaakhir=="" || daftar2_jabatanakhir=="" || daftar2_lamakerjaakhir=="" || daftar2_kompetensi=="" || daftar2_poto=="" || daftar2_jenkel==""){
      alert("Mohon isi semua data!");
      closeLoading("btn_lanjut");
    }else{
      $.ajax({
        type: "GET",
        dataType: "json",
        url: "http://recruitment.bitkit.id/api/pengguna_create",
        data: {email:daftar2_email,mobile:daftar2_hp},
        success: function(result) {
          if(result.api_message=="success"){
            tambah_anggota(result.id,daftar2_alamat,daftar2_ktp,daftar2_hp,daftar2_tempat,daftar2_tanggal,daftar2_kerjaakhir,daftar2_jabatanakhir,daftar2_lamakerjaakhir,daftar2_pendakhir,daftar2_kompetensi,daftar2_poto,daftar2_jenkel);
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

function tambah_anggota(pengguna_id,alamat,no_ktp,no_hp,tempat_lahir,tanggal_lahir,kerja_akhir,jabatan_akhir,lamakerja_akhir,pend_akhir_id,deskripsi,poto,jenis_kelamin){
  var cms_id = data_register["id"];
  var cms_nama = data_register["nama"];
      $.ajax({
      type: "POST",
      dataType: "json",
      url: "http://recruitment.bitkit.id/api/anggota_create",
      data: {pengguna_id:pengguna_id,
        cms_user_id:cms_id,
        nama:cms_nama,
        alamat:alamat,
        no_ktp:no_ktp,
        no_hp:no_hp,
        tempat_lahir:tempat_lahir,
        tanggal_lahir:tanggal_lahir,
        kerja_akhir:kerja_akhir,
        jabatan_akhir:jabatan_akhir,
        lamakerja_akhir:lamakerja_akhir,
        pendakhir_id:pendakhir_id,
        deskripsi:deskripsi,
        poto:poto,
        jenis_kelamin:jenis_kelamin},
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
         alert("Error Daftar Pelamar : "+error);
          closeLoading("btn_lanjut");
        },
    });
}
// close function register pelamar

// open function list lowongan
var list_lowongan = [];
function load_data_list_lowongan(){
  loading('Memuat...');
  $.ajax({
        type: "GET",
        dataType: "json",
        url: "http://recruitment.bitkit.id/public/api/pelamar_list_lowongan",
        success: function(result) {
          if(result.api_message=="success"){
            closeLoading();
            list_lowongan = result.data;
          }else{
            alert("Gagal Memuat Data Lowongan");
            closeLoading();
          }
        },
        error: function (request, error) {
           alert("Error Memuat Data Lowongan : "+error);
            closeLoading();
        },
  });
}
function load_data_list_lowongan2(){
  $.ajax({
        type: "GET",
        dataType: "json",
        url: "http://recruitment.bitkit.id/public/api/pelamar_list_lowongan",
        success: function(result) {
          if(result.api_message=="success"){
            list_lowongan = result.data;
          }else{
            alert("Gagal Memuat Data Lowongan");
          }
        },
        error: function (request, error) {
           alert("Error Memuat Data Lowongan : "+error);
        },
  });
}
// close function list lowongan

// open function history lamaran
var history_lamaran_proses = [];
var history_lamaran_diterima = [];
var history_lamaran_ditolak = [];
function load_data_history_lamaran(){
  // document.getElementById("history_title").innerHTML = "Riwayat Tabungan ";
  loading('Memuat...');
  $.ajax({
        type: "GET",
        dataType: "json",
        url: "http://recruitment.bitkit.id/public/api/pelamar_history_lamaran_proses?pelamar_id="+data_user['id_user'],
        success: function(result) {
          if(result.api_message=="success"){
            history_lamaran_proses = result.data;
            closeLoading();
          }else{
            alert("Gagal Memuat Data Riwayat Lamaran Diproses");
            closeLoading();
          }
        },
        error: function (request, error) {
           alert("Error Memuat Data Riwayat Lamaran Diproses : "+error);
            closeLoading();
        },
  });
  $.ajax({
        type: "GET",
        dataType: "json",
        url: "http://recruitment.bitkit.id/public/api/pelamar_history_lamaran_diterima?pelamar_id="+data_user['id_user'],
        success: function(result) {
          if(result.api_message=="success"){
            history_lamaran_diterima = result.data;
            closeLoading();
          }else{
            alert("Gagal Memuat Data Riwayat Lamaran Diterima");
            closeLoading();
          }
        },
        error: function (request, error) {
           alert("Error Memuat Data Riwayat Lamaran Diterima : "+error);
            closeLoading();
        },
  });
  $.ajax({
        type: "GET",
        dataType: "json",
        url: "http://recruitment.bitkit.id/public/api/pelamar_history_lamaran_ditolak?pelamar_id="+data_user['id_user'],
        success: function(result) {
          if(result.api_message=="success"){
            history_lamaran_ditolak = result.data;
            closeLoading();
          }else{
            alert("Gagal Memuat Data Riwayat Lamaran Ditolak");
            closeLoading();
          }
        },
        error: function (request, error) {
           alert("Error Memuat Data Riwayat Lamaran Ditolak : "+error);
            closeLoading();
        },
  });
}
// close function history lamaran

// open function detail lowongan
var detail_lamaran_data = [];
function load_data_detil_lowongan(params){
  document.getElementById("detail_lowongan_title").innerHTML = params.nama;
  loading('Memuat...');
  $.ajax({
        type: "GET",
        dataType: "json",
        url: "http://recruitment.bitkit.id/public/api/lowongan_detail?lowongan_id="+params.id,
        success: function(result) {
          if(result.api_message=="success"){
            detail_lamaran_data = result.data;
            closeLoading();
          }else{
            alert("Gagal Memuat Data Detail Lowongan");
            closeLoading();
          }
        },
        error: function (request, error) {
          alert("Error Memuat Data Detail Lowongan : "+error);
          closeLoading();
        },
  });
}
// close function detail lowongan

// open function list faq
var list_faq = [];
function load_data_list_faq(){
  loading('Memuat...');
  $.ajax({
        type: "GET",
        dataType: "json",
        url: "http://recruitment.bitkit.id/public/api/faq",
        success: function(result) {
          if(result.api_message=="success"){
            list_faq = result.data;
            closeLoading();
          }else{
            alert("Gagal Memuat Data FAQ");
            closeLoading();
          }
        },
        error: function (request, error) {
           alert("Error Memuat Data FAQ : "+error);
            closeLoading();
        },
  });
}
// close function list faq

// open function history
var history_data = [];
function load_data_history(params){
  document.getElementById("history_title").innerHTML = "Record Pembayaran "+params.nama;
  loading('Memuat...');
  $.ajax({
        type: "GET",
        dataType: "json",
        url: "http://recruitment.bitkit.id/public/api/history_pembayaran_member?member_id="+data_user['id_user']+"&kategori_id="+params.id,
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

// open function detail tagihan
var detail_tagihan_data = [];
function load_data_detil_tagihan(params){
  document.getElementById("detail_tagihan_title").innerHTML = "Record "+params.nama;
  loading('Memuat...');
  $.ajax({
        type: "GET",
        dataType: "json",
        url: "http://recruitment.bitkit.id/public/api/tagihan_member_detail_new?member_id="+data_user['id_user']+"&kategori_id="+params.id,
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
// close function detail tagihan

// open function bayar tagihan
var tagihan_id = "";
var biaya_tagihan = "";
function load_data_tagihan(params){
  loading('Memuat...');
  document.getElementById("bayar_nama").innerHTML = "Bayar "+params.nama;
  document.getElementById("bayar_nominal").innerHTML = "Tagihan : "+params.jumlah;
  tagihan_id = params.id;
  var jumlah = params.jumlah;
  biaya_tagihan = jumlah.replace(",","");
  // alert(tagihan_id+"");
  closeLoading();
}

function bayar_tagihan(){
  loading('Memuat...');
  var total = document.getElementById("bayar_menggunakan_saldo").value
  // if(biaya_tagihan < total){
  //   alert("Nominal Pembayaran Tidak Boleh Melebihi Nominal Tagihan");
  //   closeLoading();
  // }else{
    if(tagihan_id==""){
      alert("Tagihan ID Tidak Ditemukan");
      closeLoading();
    }else{
      $.ajax({
            type: "POST",
            dataType: "json",
            url: "http://recruitment.bitkit.id/public/api/pembayaran_member",
            data: {
              id:tagihan_id,
              total:total,
              id_member:data_user['id_user']
            },
            success: function(result) {
              if(result.api_message=="success"){
                closeLoading();
                alert("Pembayaran Tagihan Berhasil");
                backPage();
                backPage();
                get_user_data2(data_user['id']);
                load_data_list_transaksi2();
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
  // }
}
// close function bayar tagihan

// open function topup
function kirim_topup(){
  loading('Memuat...');
  var gambar = $('#topup_gambar')[0].files[0];
  var nominal = document.getElementById("topup_nominal").value
  if(gambar == null || nominal == null){
    alert("Gambar atau Nominal Topup Tidak Boleh Kosong");
    closeLoading();
  }else{
    var fd = new FormData();
    fd.append('member_id',data_user['id_user']);
    fd.append('nominal',nominal);
    fd.append('bukti_pembayaran',gambar);
    $.ajax({
            type: "POST",
            contentType: false,
            processData: false,
            dataType: "json",
            url: "http://recruitment.bitkit.id/public/api/top_up_create",
            data: fd,
            success: function(result) {
              if(result.api_message=="success"){
                closeLoading();
                alert("Pengiriman Bukti Topup Berhasil");
                // openPage('list_transaksi', load_data_list_transaksi);
                backPage();
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
// close function topup

// open function scan agen
var list_transaksi_agen = [];
var nomor_virtual_agen = "";
var nama_agen = "";
// var saldo_agen = "";
function scan_agen(){
 cordova.plugins.barcodeScanner.scan(
      function (result) {
          if(result.cancelled == true){
            alert("Scan QRCode gagal");
          }else{
            if(result.format == "QR_CODE"){
              nomor_virtual_agen = result.text;
              loading('Memuat...');
              $.ajax({
                    type: "POST",
                    dataType: "json",
                    url: "http://recruitment.bitkit.id/public/api/pinjaman_member_va",
                    data: {
                          nomor_va:result.text
                    },
                    success: function(result) {
                      if(result.api_message=="success"){
                        list_transaksi_agen = result.data;
                        closeLoading();
                        nama_agen = list_transaksi_agen[0].nama_agen;
                        // saldo_agen = MobileUI.formatMoney(list_transaksi_agen[0].saldo_agen,0);
                        agen_id = list_transaksi_agen[0].id_agen;
                        openPage('pengajuan_pinjaman', load_data_scan_agen);
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

function load_data_scan_agen(){
document.getElementById("list_nomor_va").innerHTML = nomor_virtual_agen;
document.getElementById("list_nama").innerHTML = nama_agen;
// document.getElementById("list_saldo").innerHTML = saldo_agen;
}
// close function scan agen

// open function pinjaman member
function pengajuan_pinjaman(){
  loading('Memuat...');
  var total = document.getElementById("pinjem").value;
  var untung = document.getElementById("untung").value;
  $.ajax({
    type: "POST",
      dataType: "json",
      url: "http://recruitment.bitkit.id/public/api/pinjaman_member_bayar",
      data: {
        agen_id:list_transaksi_agen[0].id_agen,
        total:total,
        keuntungan:untung,
        id_member:data_user['id_user']
      },
      success: function(result) {
        if(result.api_message=="success"){
          closeLoading();
          alert("Pengajuan Pinjaman Berhasil");
          backPage();
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
// close function pinjaman member

// open function history topup
var history_data_topup = [];
function load_data_history_topup(params){
  document.getElementById("history_title").innerHTML = "Riwayat Topup";
  loading('Memuat...');
  $.ajax({
        type: "GET",
        dataType: "json",
        url: "http://eret.shakti.id/public/api/history_topup?member_id="+data_user['id_user'],
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
  // document.getElementById("history_title").innerHTML = "Riwayat Tabungan ";
  loading('Memuat...');
  $.ajax({
        type: "GET",
        dataType: "json",
        url: "http://recruitment.bitkit.id/public/api/history_tabungan?member_id="+data_user['id_user']+"&kategori_tagihan_member_id=9",
        success: function(result) {
          if(result.api_message=="success"){
            history_data_tabungan = result.data;
            closeLoading();
          }else{
            alert("Gagal Memuat Data Riwayat Setor Tabungan");
            closeLoading();
          }
        },
        error: function (request, error) {
           alert("Error Memuat Data Riwayat Setor Tabungan : "+error);
            closeLoading();
        },
  });
  $.ajax({
        type: "GET",
        dataType: "json",
        url: "http://recruitment.bitkit.id/public/api/history_tarik_tabungan?member_id="+data_user['id_user'],
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

function scan_agen_tabungan(){
 cordova.plugins.barcodeScanner.scan(
      function (result) {
          if(result.cancelled == true){
            alert("Scan QRCode gagal");
          }else{
            if(result.format == "QR_CODE"){
              nomor_virtual_agen = result.text;
              loading('Memuat...');
              $.ajax({
                    type: "POST",
                    dataType: "json",
                    url: "http://recruitment.bitkit.id/public/api/pinjaman_member_va",
                    data: {
                          nomor_va:result.text
                    },
                    success: function(result) {
                      if(result.api_message=="success"){
                        list_transaksi_agen = result.data;
                        closeLoading();
                        nama_agen = list_transaksi_agen[0].nama_agen;
                        tabungan_member = MobileUI.formatMoney(data_user['tabungan']);
                        agen_id = list_transaksi_agen[0].id_agen;
                        openPage('tarik_tabungan', load_data_scan_agen_tabungan);
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

function load_data_scan_agen_tabungan(){
document.getElementById("list_nomor_va").innerHTML = nomor_virtual_agen;
document.getElementById("list_nama").innerHTML = nama_agen;
document.getElementById("list_tabungan").innerHTML = tabungan_member;
}

// open function tarik tabungan member
function tarik_tabungan(){
  loading('Memuat...');
  var tarik = document.getElementById("tarik").value;
  $.ajax({
    type: "POST",
      dataType: "json",
      url: "http://recruitment.bitkit.id/public/api/tarik_tabungan",
      data: {
        agen_id:list_transaksi_agen[0].id_agen,
        total:tarik,
        id_member:data_user['id_user']
      },
      success: function(result) {
        if(result.api_message=="success"){
          closeLoading();
          alert("Tarik Tabungan Berhasil");
          backPage();
        }else{
          alert(result.api_message+"");
          closeLoading();
        }
      },
      error: function (request, error) {
        alert("Error Tarik Tabungan : "+error);
        closeLoading();
      },
  });
}
// close function tarik tabungan member