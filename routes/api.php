<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

// Clients
use App\Http\Controllers\Clients\Auth\AuthController;
use App\Http\Controllers\Clients\Profile\ProfileController;
use App\Http\Controllers\Clients\Posts\PostController;
use App\Http\Controllers\Clients\Posts\PostImageController;

// Administrator
use App\Http\Controllers\Administrator\Auth\AdminAuthController;
use App\Http\Controllers\Administrator\Admins\AdminController;
use App\Http\Controllers\Administrator\Posts\AdminBookController;
use App\Http\Controllers\Administrator\Category\AdminCategoryController;

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

Route::get('/login-page', function(){
    return response()->json([
        'message'=>'please login first or provide a valid access token',
        'error' => false,   
    ]);})->name('login');

// Clients
Route::post('/registration', [AuthController::class, 'register']);
Route::post('/login', [AuthController::class, 'login']);
Route::get('/verify/{token}', [AuthController::class, 'emailVerification']);
Route::group(['middleware'=>'auth:api'], function(){
    Route::get('/logout', [AuthController::class, 'signOut']);
    Route::get('/profile', [ProfileController::class, 'show']);
    Route::post('/profile/update', [ProfileController::class, 'update']);

    Route::group(['prefix' => 'post'], function(){ // clients post controller
        Route::get('/', [PostController::class, 'myPost']);
        Route::post('/create', [PostController::class, 'createPost']);
        Route::get('/{post_id}', [PostController::class, 'showPost']);
        Route::post('/{post_id}/update', [PostController::class, 'updatePost']);
        Route::get('/{post_id}/delete', [PostController::class, 'destroy']);
        Route::get('/{post_id}/images', [PostImageController::class, 'showPostImages']);
        Route::post('/{post_id}/update/add-image', [PostImageController::class, 'addImage']);
        Route::get('/{post_id}/image/{img_id}/delete', [PostImageController::class, 'deleteImage']);
    });
});



 // Administrator
Route::post('/administrator/login', [AdminAuthController::class, 'login']);
Route::group(['middleware'=>'auth:api-admin', 'prefix'=>'administrator'], function(){
    Route::get('/', function(){return 'Admin Panel | Dashboard';});
    Route::get('/logout', [AdminAuthController::class, 'signOut']);

    Route::group(['prefix' => 'admin'], function(){ // Admin controller
        Route::get('/', [AdminController::class, 'index']);
        Route::post('/create', [AdminController::class, 'create']);
        Route::get('/{admin_id}', [AdminController::class, 'show']);
        Route::post('/{admin_id}/update', [AdminController::class, 'update']);
        Route::get('/{admin_id}/delete', [AdminController::class, 'destroy']);
    });

    Route::group(['prefix' => 'book'], function(){ // book controller
        Route::get('/', [AdminBookController::class, 'index']);
        Route::get('/{book_id}', [AdminBookController::class, 'show']);
        Route::post('/{book_id}/update', [AdminBookController::class, 'update']);
        Route::get('/{book_id}/delete', [AdminBookController::class, 'destroy']);
    });

    Route::group(['prefix' => 'category'], function(){ // category controller
        Route::get('/', [AdminCategoryController::class, 'index']);
        Route::post('/create', [AdminCategoryController::class, 'create']);
        Route::get('/{cat_id}', [AdminCategoryController::class, 'show']);
        Route::post('/{cat_id}/update', [AdminCategoryController::class, 'update']);
        Route::get('/{cat_id}/delete', [AdminCategoryController::class, 'destroy']);
        Route::get('/{cat_id}/books', [AdminCategoryController::class, 'books']); //books of cat
    });
});
