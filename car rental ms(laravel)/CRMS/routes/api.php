<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use APP\Http\Controllers\renter\car_service_renter_controller;
use App\Http\Controllers\LoginApiController;
use App\Http\Controllers\renter\api_car_service_renter_controller;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

/*
Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});
*/

// Route::get('carlist',[car_service_renter_controller::class,'APICarlist'])->middleware('renter')->name('carlist');
// Route::post('/login',[LoginApiController::class,'login']); 

Route::post('/login',[LoginApiController::class,'login']); 
Route::post('/registration',[LoginApiController::class,'registration']); 
Route::post('/logout',[LoginApiController::class,'logout']);
Route::post('/dashboard_renter',[api_car_service_renter_controller::class,'dashboard_renter']); 
Route::post('/car_list',[api_car_service_renter_controller::class,'car_list']); 
Route::get('/notice',[api_car_service_renter_controller::class,'notice']);
Route::post('/add_new_car',[api_car_service_renter_controller::class,'add_new_car']);