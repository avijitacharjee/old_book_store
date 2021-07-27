<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

// Clients
use App\Http\Controllers\Clients\Auth\AuthController;
use App\Http\Controllers\Clients\Profile\ProfileController;

// Administrator
use App\Http\Controllers\Administrator\Auth\AdminAuthController;
use App\Http\Controllers\Administrator\Admins\AdminController;

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

// Route::middleware('auth:api')->get('/user', function (Request $request) {
//     return $request->user(); create-new-admin
// });

// Clients
Route::post('/registration', [AuthController::class, 'register']);
Route::post('/login', [AuthController::class, 'login']);
Route::get('/verify/{token}', [AuthController::class, 'emailVerification']);
Route::group(['middleware'=>'auth:api'], function(){
    Route::get('/logout', [AuthController::class, 'signOut']);
    Route::get('/profile', [ProfileController::class, 'show']);
    Route::post('/profile/update', [ProfileController::class, 'update']);
});

 // Administrator
Route::post('/administrator/login', [AdminAuthController::class, 'login']);
Route::group(['middleware'=>'auth:api-admin', 'prefix'=>'administrator'], function(){
    Route::get('/logout', [AdminAuthController::class, 'signOut']);
    Route::get('/admins', [AdminController::class, 'index']);
    Route::post('/admin/create', [AdminController::class, 'create']);
    Route::get('/admin/{id}', [AdminController::class, 'show']);
    Route::get('/admin/{id}/destroy', [AdminController::class, 'destroy']);
    Route::post('/admin/{id}/update', [AdminController::class, 'update']);
});
