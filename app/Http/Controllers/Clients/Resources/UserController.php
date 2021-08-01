<?php

namespace App\Http\Controllers\Clients\Resources;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\User;

class UserController extends Controller
{
    public function getUser($user_id){
        $user = User::with('division')
                    ->with('district')
                    ->with('upazila')
                    ->find($user_id);
        if(!$user){
            return response()->json([
                'message' => 'Invalid user id',
                'error' => true,
            ]);
        }

        return response()->json([
            'data' => [
                'user' => $user,
            ],
            'message' => 'profile info of an user',
            'error' => false,
        ]);
    }
}
