<?php

namespace App\Http\Controllers\Clients\Resources;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Str;
use App\Models\Category;
use App\Models\Book;

/**
     * get categories list
     * get features category
     * get all ads(books/posts) of an specific category
     * @return json
*/

class CategoryController extends Controller
{
    /**
     * get categories list
     * @return json
     */
    public function index(){
        $categories = Category::select('title', 'slug', 'image_path')
                                ->where('status', 1)->get();
        return response()->json([
            'data' => [
                'categories' => $categories,
            ],
            'message'=>'Categories list',
            'error' => false,
        ]);
    }

    /**
     * get featured categories list
     * @return json
     */
    public function featureCategory(){
        $categories = Category::select('title', 'slug', 'image_path')
                            ->where('status', 1)
                            ->where('is_featured', 1)
                            ->get();
        return response()->json([
            'data' => [
                'categories' => $categories,
            ],
            'message'=>'featured Categories list',
            'error' => false,
        ]);
    }

    /**
     * get all ads(books/posts) of an specific category
     * @return json
     */
    public function getAdsByCat($cat_slug){
        $cat = Category::select('id')->where('slug', $cat_slug)->first();
        if(!$cat){
            return response()->json([
                'message' => 'invalid category',
                'error' => true,     
            ]);
        }
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
                        ->where(function($query) use ($cat_id){
                            $query->where('category_id', $cat_id)
                            ->orWhere('sub_category1_id', $cat_id)
                            ->orWhere('sub_category2_id', $cat_id);
                        })
                        ->orderBy('id', 'DESC')
                        ->paginate(20);
        return response()->json([
            'ads' => $ads,
            'message' => 'book of a category',
            'error' => false,     
        ]);
    }

}
