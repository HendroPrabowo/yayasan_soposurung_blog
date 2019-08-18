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
Route::get('visimisi', function(){
    return view('tentang_asrama.visimisi');
});
Route::get('sejarah', function(){
    return view('tentang_asrama.sejarah');
});
Route::get('pendiri', function(){
    return view('tentang_asrama.pendiri');
});
Route::get('lokasi', function(){
    return view('tentang_asrama.lokasi');
});
Route::get('kontak', function(){
    return view('tentang_asrama.kontak');
});



Route::get('depan', function(){
    return view('layouts_blog.depan');
});

// ROUTES USER BIASA
// User melihat postingan
Route::get('/', 'PostController@home');
Route::get('/lihat/{id}', 'PostController@lihat');
Route::get('/kategori/{id}/kategori', 'PostController@kategori');
