<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;




Route::get('/login-page', function(){
    return response()->json([
        'message'=>'please login first or provide a valid access token',
        'error' => false,   
    ]);})->name('login');


// :::Client side panel:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
require __DIR__.'/api/client-api.php';

 // :::Administrator side panel:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
 require __DIR__.'/api/admin-api.php';
