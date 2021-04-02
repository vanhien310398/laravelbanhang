<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\AdminController;
use App\Http\Controllers\productController;
use App\Http\Controllers\cartController;
use App\Http\Controllers\UserController;

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

Route::get('/', function () {
    return view('welcome');
});
Route::get('/', [HomeController::class, 'index']);



//backend
Route::get('/admin',[AdminController::class,'index']);
Route::get('/dashboard',[AdminController::class,'show_dashboard']);
Route::get('/logout',[AdminController::class,'logout']);
Route::post('/admin-dashboard',[AdminController::class,'dashboard']);



//sanpham
Route::get('/chi-tiet-san-pham/{product_id}',[productController::class,'detail_product']);
Route::get('/productlist',[productController::class,'showproduct']);
Route::post('/search',[productController::class,'showtimkiem']);
//Cart
Route::post('/save_card',[CartController::class,'save_cart']);

Route::get('/cart',[CartController::class,'Show_cart']);
Route::get('/delete_cart/{product_id}',[CartController::class,'delete_cart']);
//login
Route::get('/login',[UserController::class,'show_login']);
Route::post('/user-dashboard',[UserController::class,'login']);
Route::get('/logout',[UserController::class,'logout']);
//dangky
Route::get('/dangky',[UserController::class,'show_dangky']);
Route::post('/dangky-dashboard',[UserController::class,'dangky']);


