<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

// Route::get('/', function () {
//     return view('layouts_blog.depan');
// });

// Dashboard Blog
Route::get('/index', function () {
    // return view('layouts_blog/index');
    return view('layouts_blog.depan');
});

// Auth::routes();
Route::get('/home', 'HomeController@index')->name('home');

// Authentication Routes ...
// Route::get('/login', 'Auth\LoginController@showLoginForm')->name('login');
// Route::post('/login', 'Auth\LoginController@login');
Route::get('/logout', 'Auth\LoginController@logout')->name('logout');

// Register User
Route::get('register', 'Auth\RegisterController@showRegistrationForm')->name('register');
Route::post('register', 'AuthController@register');

Route::get('form', function(){
    return view('form');
});

// ROUTES YANG SEBENARNYA
// Admin Page
Route::get('/admin', function(){
    return view('admin.index');
})->middleware('auth')->name('admin');

// Authentication
Route::get('/login', function(){
    return view('admin.login');
})->name('login');
Route::post('/login', 'AuthController@login');

// Resources Controller
Route::resource('kategori', 'KategoriController')->middleware('auth');
Route::resource('post', 'PostController')->middleware('auth');
Route::resource('carousel', 'CarouselController')->middleware('auth');
//Tentang Asrama
Route::resource('visimisi', 'VisimisiController')->middleware('auth');
Route::resource('sejarah', 'SejarahController')->middleware('auth');
Route::resource('pendiri', 'PendiriController')->middleware('auth');
Route::resource('lokasi', 'LokasiController')->middleware('auth');
Route::resource('kontak', 'KontakController')->middleware('auth');
//Pamong
Route::resource('kepala_asrama', 'KepalaAsramaController')->middleware('auth');
Route::resource('staf_pengajar', 'StafPengajarController')->middleware('auth');
Route::resource('staf_pembina', 'StafPembinaController')->middleware('auth');
Route::resource('staf_pendukung', 'StafPendukungController')->middleware('auth');
Route::resource('struktur_organisasi', 'StrukturOrganisasiController')->middleware('auth');

//User Biasa
//Tentang Asrama
Route::get('tentang_asrama/visimisi', 'TentangAsramaController@visimisi');
Route::get('tentang_asrama/sejarah', 'TentangAsramaController@sejarah');
Route::get('tentang_asrama/pendiri', 'TentangAsramaController@pendiri');
Route::get('tentang_asrama/lokasi', 'TentangAsramaController@lokasi');
Route::get('tentang_asrama/kontak', 'TentangAsramaController@kontak');
//Pamong
Route::get('pamong/kepala_asrama', 'PamongController@kepala_asrama');
Route::get('pamong/staf_pembina', 'PamongController@staf_pembina');
Route::get('pamong/staf_pendukung', 'PamongController@staf_pendukung');
Route::get('pamong/staf_pengajar', 'PamongController@staf_pengajar');
Route::get('pamong/struktur_organisasi', 'PamongController@struktur_organisasi');

Route::get('depan', function(){
    return view('layouts_blog.depan');
});

// ROUTES USER BIASA
// User melihat postingan
Route::get('/', 'PostController@home');
Route::get('/lihat/{id}', 'PostController@lihat');
Route::get('/kategori/{id}/kategori', 'PostController@kategori');
