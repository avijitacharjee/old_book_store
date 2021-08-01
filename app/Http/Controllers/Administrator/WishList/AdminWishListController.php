<?php

namespace App\Http\Controllers\Administrator\WishList;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\WishList;

class AdminWishListController extends Controller
{
    public function getUsers(){
        $users = WishList::select('user_id')->with('user')->distinct()->get();
        return response()->json([
            'data' => $users,
            'message' => 'all users who have the wish',
            'error' => false,
        ]);
    }

    public function getWishList($user_id){
        $users = WishList::with('adTitle')
                        ->with('adImages')
                        ->where('user_id', $user_id)
                        ->get();

        if(!is_null($users)){
            return response()->json([
                'message' => 'this user has no wish',
                'error' => true,
            ]);
        }
        return response()->json([
            'data' => $users,
            'message' => 'wish list of a user',
            'error' => false,
        ]);
    }

    public function destroy($user_id){
        if(WishList::where('user_id', $user_id)->delete()){
            return response()->json([
                'message' => 'deleted',
                'error' => false,
            ]);
        } else{
            return response()->json([
                'message' => 'deletion failed',
                'error' => true,
            ]);
        }
        
    }
}
