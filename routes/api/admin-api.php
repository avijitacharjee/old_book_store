<?php

// Administrator
use App\Http\Controllers\Administrator\Auth\AdminAuthController;
use App\Http\Controllers\Administrator\Admins\AdminController;
use App\Http\Controllers\Administrator\Posts\AdminBookController;
use App\Http\Controllers\Administrator\Category\AdminCategoryController;
use App\Http\Controllers\Administrator\Users\AdminUserController;
use App\Http\Controllers\Administrator\Locations\AdminLocationController;
use App\Http\Controllers\Administrator\WishList\AdminWishListController;
use App\Http\Controllers\Administrator\Search\AdminSearchController;
use App\Http\Controllers\Administrator\Contacts\AdminContactController;


Route::post('/administrator/login', [AdminAuthController::class, 'login']);
Route::group(['middleware'=>'auth:api-admin', 'prefix'=>'administrator'], function(){
    Route::get('/', function(){return 'Admin Panel | Dashboard';});
    Route::get('/logout', [AdminAuthController::class, 'signOut']);

    Route::group(['prefix' => 'admin'], function(){ // Admins API
        Route::get('/', [AdminController::class, 'index']);
        Route::post('/create', [AdminController::class, 'create']);
        Route::get('/{admin_id}', [AdminController::class, 'show']);
        Route::post('/{admin_id}/update', [AdminController::class, 'update']);
        Route::get('/{admin_id}/delete', [AdminController::class, 'destroy']);
    });

    Route::group(['prefix' => 'book'], function(){ // ads(book/post) API
        Route::get('/', [AdminBookController::class, 'index']);
        Route::get('/count', [AdminBookController::class, 'count']);
        Route::get('/unsold-book', [AdminBookController::class, 'unsoldItem']);
        Route::get('/unsold-book/count', [AdminBookController::class, 'unsoldCount']);
        Route::get('/sold-book', [AdminBookController::class, 'soldItem']);
        Route::get('/sold-book/count', [AdminBookController::class, 'soldCount']);
        Route::get('/{book_id}', [AdminBookController::class, 'show']);
        Route::post('/{book_id}/update', [AdminBookController::class, 'update']);
        Route::get('/{book_id}/delete', [AdminBookController::class, 'destroy']);
    });

    Route::group(['prefix' => 'category'], function(){ // category API
        Route::get('/', [AdminCategoryController::class, 'index']);
        Route::post('/create', [AdminCategoryController::class, 'create']);
        Route::get('/count', [AdminCategoryController::class, 'count']);
        Route::get('/{cat_id}', [AdminCategoryController::class, 'show']);
        Route::post('/{cat_id}/update', [AdminCategoryController::class, 'update']);
        Route::get('/{cat_id}/delete', [AdminCategoryController::class, 'destroy']);
        Route::get('/{cat_id}/posts', [AdminCategoryController::class, 'books']); //all posts/books of a specific cat
        Route::get('/{cat_id}/count', [AdminCategoryController::class, 'count']); //total numbr of posts of a category
    });

    Route::group(['prefix' => 'user'], function(){ // user(client) API
        Route::get('/', [AdminUserController::class, 'userList']);
        Route::get('/count', [AdminUserController::class, 'count']);
        Route::get('/{user_id}', [AdminUserController::class, 'showUser']);
        Route::post('/{user_id}/update', [AdminUserController::class, 'updateUser']);
        Route::get('/{user_id}/delete', [AdminUserController::class, 'destroyUser']);
        Route::get('/{user_id}/posts', [AdminUserController::class, 'books']); //all posts/books of a user
    });

    Route::group(['prefix' => 'location'], function(){ // Location API
        Route::get('/', [AdminLocationController::class, 'getAllDivision']);
        Route::get('/districts', [AdminLocationController::class, 'getAllDistrict']);
        Route::get('/{loc_id}', [AdminLocationController::class, 'getLocation']);
        Route::get('/{loc_id}/childs', [AdminLocationController::class, 'getChild']);
        Route::get('/{loc_id}/childs/count', [AdminLocationController::class, 'childCount']);
        Route::post('/create', [AdminLocationController::class, 'createLocation']);
        Route::post('/{loc_id}/update', [AdminLocationController::class, 'updateLocation']);
        Route::get('/{loc_id}/delete', [AdminLocationController::class, 'destroyLocation']);
        Route::get('/{loc_id}/users', [AdminLocationController::class, 'getUsers']); //all users of a specific location
        Route::get('/{loc_id}/users/count', [AdminLocationController::class, 'userCount']);
        Route::get('/{loc_id}/posts', [AdminLocationController::class, 'getPosts']); //all post/book of a specific location
        Route::get('/{loc_id}/posts/count', [AdminLocationController::class, 'postsCount']);
    });

    Route::group(['prefix' => 'wish-list'], function(){ // Wish List API
        Route::get('/', [AdminWishListController::class, 'getUsers']); //all users who have the wish
        Route::get('/count', [AdminWishListController::class, 'count']); //number of users who have the wish
        Route::get('/{user_id}', [AdminWishListController::class, 'getWishList']); //all wishes of a user
        Route::get('/{user_id}/destroy', [AdminWishListController::class, 'destroy']); //remove all wishes of a user
    });

    Route::group(['prefix' => 'search'], function(){ // Demo search engine
        Route::get('/', [AdminSearchController::class, 'search']); // search everything. ex: /search?query=your query
        Route::get('/users', [AdminSearchController::class, 'userSearch']); //ex: search/users?query=your query
        Route::get('/books', [AdminSearchController::class, 'bookSearch']); 
        Route::get('/categories', [AdminSearchController::class, 'categorySearch']);
        Route::get('/location', [AdminSearchController::class, 'locationSearch']);
    });

    Route::group(['prefix' => 'contacts'], function(){ // Contacts API
        Route::get('/', [AdminContactController::class, 'index']);
        Route::get('/search', [AdminContactController::class, 'search']); // ex: /search?query=your query
        Route::get('/{id}', [AdminContactController::class, 'show']);
        Route::get('/{id}/delete', [AdminContactController::class, 'delete']);
    });
});