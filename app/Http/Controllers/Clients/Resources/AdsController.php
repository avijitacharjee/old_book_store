<?php

namespace App\Http\Controllers\Clients\Resources;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Book;
use App\Models\Location;
use App\Models\Category;

class AdsController extends Controller
{

    public function getAd($ad_slug){
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
                        ->where('slug', $ad_slug)
                        ->first();
        if(!$ad){
            return response()->json([
                'message' => 'no data found',
                'error' => true,     
            ]);
        }
        return response()->json([
            'data' => ['ad' => $ad],
            'message' => 'a ad',
            'error' => false,     
        ]);
    }


    public function getNewAds(){
        $new_ads = Book::select('id',
                        'seller_id',
                        'title',
                        'slug',
                        'author',
                        'edition',
                        // 'publication',
                        // 'version',
                        // 'isbn_no',
                        'price',
                        // 'short_description',
                        // 'description',
                        'division_id',
                        'district_id',
                        'upazila_id',
                        'is_sold',)
                        ->orderBy('id', 'DESC')
                        ->with('seller')
                        ->with('division')
                        ->with('district')
                        ->with('upazila')
                        ->with('images')
                        ->where('status', 1)
                        ->where('is_sold', 0)
                        ->paginate(20);
        
        return response()->json([
            'data' => $new_ads,
            'message' => 'new ads',
            'error' => false,     
        ]);
    }

    public function getOldAds(){
        $new_ads = Book::select('id',
                        'seller_id',
                        'title',
                        'slug',
                        'author',
                        'edition',
                        // 'publication',
                        // 'version',
                        // 'isbn_no',
                        'price',
                        // 'short_description',
                        // 'description',
                        'division_id',
                        'district_id',
                        'upazila_id',
                        'is_sold',)
                        ->with('seller')
                        ->with('division')
                        ->with('district')
                        ->with('upazila')
                        ->with('images')
                        ->where('status', 1)
                        ->where('is_sold', 0)
                        ->paginate(20);
        
        return response()->json([
            'data' => $new_ads,
            'message' => 'old ads',
            'error' => false,     
        ]);
    }

    public function getAdsByLocAndCat($loc_slug, $cat_slug){
        $loc = Location::select('id')->where('slug', $loc_slug)->first();
        $cat = Category::select('id')->where('slug', $cat_slug)->first();
        if(!$loc or !$cat){
            return response()->json([
                'message' => 'invalid arguments',
                'error' => true,     
            ]);
        }
        $loc_id = $loc->id;
        $cat_id = $cat->id;

        $ads = Book::select('id',
                        'seller_id',
                        'title',
                        'slug',
                        'author',
                        'edition',
                        // 'publication',
                        // 'version',
                        // 'isbn_no',
                        'price',
                        // 'short_description',
                        // 'description',
                        // 'category_id',
                        // 'sub_category1_id',
                        // 'sub_category2_id',
                        // 'division_id',
                        // 'district_id',
                        // 'upazila_id',
                        'is_sold',)
                        ->with('seller')
                        // ->with('division')
                        // ->with('district')
                        // ->with('upazila')
                        ->with('images')
                        ->where('status', 1)
                        ->where(function($query) use ($cat_id){
                            $query->where('category_id', $cat_id)
                            ->orWhere('sub_category1_id', $cat_id)
                            ->orWhere('sub_category2_id', $cat_id);
                        })
                        ->where(function($query) use ($loc_id){
                            $query->where('division_id', $loc_id)
                            ->orWhere('district_id', $loc_id)
                            ->orWhere('upazila_id', $loc_id);
                        })
                        ->orderBy('id', 'DESC')
                        ->paginate(20);

        return response()->json([
            'data' => $ads,
            'message' => 'ads by specific location and category',
            'error' => false,     
        ]);
    }
}
