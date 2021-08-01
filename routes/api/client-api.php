<?php

use App\Http\Controllers\Clients\Auth\AuthController;
use App\Http\Controllers\Clients\Profile\ProfileController;
use App\Http\Controllers\Clients\Posts\PostController;
use App\Http\Controllers\Clients\Posts\PostImageController;
use App\Http\Controllers\Clients\Resources\CategoryController;
use App\Http\Controllers\Clients\Resources\AdsController;
use App\Http\Controllers\Clients\Resources\LocationController;
use App\Http\Controllers\Clients\Resources\WishListController;
use App\Http\Controllers\Clients\Resources\UserController;


Route::post('/registration', [AuthController::class, 'register']);
Route::post('/login', [AuthController::class, 'login']);
Route::get('/verify/{token}', [AuthController::class, 'emailVerification']);

Route::group(['middleware'=>'auth:api'], function(){
    Route::get('/logout', [AuthController::class, 'signOut']);
    Route::get('/profile', [ProfileController::class, 'show']);
    Route::post('/profile/update', [ProfileController::class, 'update']);

    // Post(Ad) related API (User can create ad, update, delete, etc.)
    Route::group(['prefix' => 'post'], function(){
        Route::get('/', [PostController::class, 'myPost']);
        Route::post('/create', [PostController::class, 'createPost']);
        Route::get('/{post_id}', [PostController::class, 'showPost']);
        Route::post('/{post_id}/update', [PostController::class, 'updatePost']);
        Route::get('/{post_id}/delete', [PostController::class, 'destroy']);
        Route::get('/{post_id}/images', [PostImageController::class, 'showPostImages']);
        Route::post('/{post_id}/update/add-image', [PostImageController::class, 'addImage']);
        Route::get('/{post_id}/image/{img_id}/delete', [PostImageController::class, 'deleteImage']);
    });

    // Wish list
    Route::group(['prefix' => 'wish-list'], function(){ // Wish list API
        Route::get('/', [WishListController::class, 'getWishList']);
        Route::post('/add', [WishListController::class, 'addToList']);
        Route::get('/{wish_id}', [WishListController::class, 'show']);
        Route::get('/{wish_id}/remove', [WishListController::class, 'destroy']);
    });
    
});


// Resource API (Category, Location & Ads) for client
Route::group(['prefix' => 'rcs'], function(){ 

    // category related API for client side
    Route::get('/categories', [CategoryController::class, 'index']); // get all category
    Route::get('/featured-category', [CategoryController::class, 'featureCategory']); // get all featured category

    // location related API for client side
    Route::get('/locations', [LocationController::class, 'getAllDiviWithDis']); // get all division with their district
    Route::get('/divisions', [LocationController::class, 'getAllDivision']); // get all division
    Route::get('/districts', [LocationController::class, 'getAllDistrict']); // get all district
    Route::get('/location/{loc_slug}', [LocationController::class, 'getLocationWithChilds']); // get a location with her child
    Route::get('/location/{loc_slug}/childs', [LocationController::class, 'getChilds']); // get childs (upazila) of a specific location

    // Ads (post/book) related API for client side
    Route::get('/ads', [AdsController::class, 'getNewAds']); // get all Ads(post/book) in desc(new) order (per page 20)
    Route::get('/ads/old', [AdsController::class, 'getOldAds']); // get all Ads(post/book) in aesc(old) order (per page 20)
    Route::get('/ads/{ad_slug}', [AdsController::class, 'getAd']); // get a Ad
    Route::get('/category/{cat_slug}', [CategoryController::class, 'getAdsByCat']); // get all ads of a specific category (per page 20)
    Route::get('/location/{loc_slug}/ads', [LocationController::class, 'getAdsByLocation']); // get ads of a specific location (per page 20)
    Route::get('/ads/{loc_slug}/{cat_slug}', [AdsController::class, 'getAdsByLocAndCat']); // get ads of a specific location & category (pp20)

    
    Route::get('/user/{user_id}', [UserController::class, 'getUser']); // get an  user profile
    Route::get('/user/{user_id}/ads', [UserController::class, 'getAds']); // get all Ads of a specific user

});

