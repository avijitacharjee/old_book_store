<?php

namespace App\Http\Controllers\Administrator\WishList;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\WishList;


/**
     * /all users who have the wish
     * number of users who have the wish
     * all wishes of a user
     * remove all wishes of a user
     * @return json
*/

class AdminWishListController extends Controller
{
    /**
     * all users who have the wish
     * @return json
     */
    public function getUsers(){
        $users = WishList::select('user_id')->with('user')->distinct()->get();
        return response()->json([
            'data' => $users,
            'message' => 'all users who have the wish',
            'error' => false,
        ]);
    }

    /**
     * number of users who have the wish
     * @return json
     */
    public function count(){
        $count = WishList::select('user_id')->distinct()->count();
        return response()->json([
            'data' => [
                'count' => $count,
            ],
            'message'=>'number of users who have the wish',
            'error' => false,
            
        ]);
    }

    /**
     * /all wishes of a user
     * @return json
     */
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

    /**
     * /remove all wishes of a user
     * @return json
     */
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
