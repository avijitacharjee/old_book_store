<?php

namespace App\Http\Controllers\Clients\Resources;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use App\Models\WishList;
use App\Models\Book;

class WishListController extends Controller
{

    public function getWishList(){
        // get user id from auth
        $user = auth()->user();
        $lists = WishList::where('user_id', $user->id)
                        ->with('adTitle')
                        ->with('adImages')
                        ->get();
        return response()->json([
            'data' => [
                'lists' => $lists,
            ],
            'message'=>'wish list of a user',
            'error' => false,
        ]);
    }

    public function addToList(Request $request){
    
        $validator = Validator::make($request->all(),
                                ['ad_slug' => 'required',]);
        if($validator->fails()){
            return response()->json([
                'errors'=>$validator->errors()->all(),
                'message'=>'Validation Failed',
                'error' => true,
                
            ]);
        }

        $ad = Book::where('slug',$request->ad_slug)->first();
        if(!$ad){
            return response()->json([
                'message'=>'Invalid slug.Please provide a valid slug',
                'error' => true,
            ]);
        }

        $user = auth()->user();
        $exist = WishList::where('user_id', $user->id)
                        ->where('book_id', $ad->id)
                        ->first();
        if($exist){
            return response()->json([
                'message'=>'Already added',
                'error' => true,
            ]);
        }
        
        return response()->json([
            'data'=> [
                'ad' => WishList::create([
                    'user_id' => $user->id,
                    'book_id' => $ad->id,
                ]),
            ],
            'message'=>'Added to wish list',
            'error' => false,
            
        ]);
    }

    public function show($wish_id){
        $user = auth()->user();
        $wish = WishList::where('user_id',$user->id)->find($wish_id);
        if(!$wish){
            return response()->json([
                'message' => 'no data found',
                'error' => true,     
            ]);
        }
        $ad = Book::select('id',
                        'seller_id',
                        'title',
                        'slug',
                        'author',
                        'edition',
                        'publication',
                        'version',
                        'isbn_no',
                        'price',
                        'category_id',
                        'sub_category1_id',
                        'sub_category2_id',
                        'short_description',
                        'description',
                        'division_id',
                        'district_id',
                        'upazila_id',
                        'is_sold',)
                        ->with('seller')
                        ->with('category')
                        ->with('sub_category')
                        ->with('sub_category2')
                        ->with('division')
                        ->with('district')
                        ->with('upazila')
                        ->with('images')
                        ->find($wish->book_id);
        
        return response()->json([
            'data' => ['ad' => $ad],
            'message' => 'info of an add',
            'error' => false,     
        ]);
    }

    public function destroy($wish_id){
        $user = auth()->user();
        $wish = WishList::where('user_id',$user->id)->find($wish_id);
        if(!$wish){
            return response()->json([
                'message' => 'no data found',
                'error' => true,
            ]);
        } 

        if($wish->delete()){
            return response()->json([
                'message' => 'removed',
                'error' => true,
            ]);
        }
          
    }
}
