<?php

namespace App\Http\Controllers\Clients\Resources;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\User;
use App\Models\Book;


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

    public function getAds($user_id){
        $user = User::find($user_id);
        if(!$user){
            return response()->json([
                'message' => 'Invalid user id',
                'error' => true,
            ]);
        }

        $ads = Book::select('id',
                        'seller_id',
                        'title',
                        'slug',
                        'author',
                        'edition',
                        'price',
                        'category_id',
                        'sub_category1_id',
                        'sub_category2_id',
                        'is_sold',)
                        ->with('category')
                        ->with('sub_category')
                        ->with('sub_category2')
                        ->with('image')
                        ->where('status', 1)
                        ->where('seller_id', $user->id)
                        ->orderBy('id', 'DESC')
                        ->paginate(20);

        return response()->json([
            'data' => $ads,
            'message' => 'All ads of a specific seller/user',
            'error' => false,
        ]);
    }
}
