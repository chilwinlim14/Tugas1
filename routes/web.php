<?php

use Illuminate\Support\Facades\Route;

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

Route::get('/about', function () {
    return view('about');
});

Route::get('/resume', function () {
    return view('resume');
});

Route::get('/contact', function () {
    return view('contact');
});

Route::get('/home', function () {
    return view('home');
});

Route::get('/', function () {
    return view('home');
});

Route::get('/krs', function () {
    return view('KRS');
});

Route::get('/khs', function () { 
    return view('khschilwin'); 
});