<?php

namespace App\Http\Controllers\Clients\Resources;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Location;
use App\Models\Book;

/**
     * get all division with there districts
     * get all division without district
     * get a location with her child location
     * get all district 
     * get all child of specific division/district
     * create location (district/division/upazila/thana/cit corporation area)
     * update location
     * delete location
     * get all user of a specific location
     * @return json
*/

class LocationController extends Controller
{
    
    

    /**
     * get divisions list with there districts*
     * @return json
     */
    public function getAllDiviWithDis(){
        $locations = Location::select('id', 'name', 'slug')
                            ->with('child')
                            ->where('parent_id', null)
                            ->where('status', 1)->get();
        return response()->json([
            'data' => [
                'locations' => $locations,
            ],
            'message'=>'divisons with there districts',
            'error' => false,
        ]);
    }

    /**
     * get all division*
     * @return json
     */
    public function getAllDivision(){
        $divisions = Location::select('name', 'slug')
                            ->where('parent_id', null)
                            ->where('status', 1)->get();
        return response()->json([
            'data' => [
                'divisions' => $divisions,
            ],
            'message'=>'divisons list',
            'error' => false,
        ]);
    }

    /**
     * get all district*
     * @return json
     */
    public function getAllDistrict(){
        $districts = Location::select('name', 'slug')
                            ->where('parent_id', '<=', 10)
                            ->where('status', '<=', 1)
                            ->get();
        return response()->json([
            'data' => [
                'districts' => $districts,
            ],
            'message'=>'districts list',
            'error' => false,
        ]);
    }

    /**
     * get a location with her child location
     * @return json
     */
    public function getLocationWithChilds($location_slug){
        $location = Location::select('id','name', 'slug')
                        ->where('slug', $location_slug)
                        ->with('child')->first();
        return response()->json([
            'data' => [
                'location' => $location,
            ],
            'message'=>'a location with childs',
            'error' => false,
        ]);
    }


    /**
     * get all child location of a specific division/district
     * @return json
     */
    public function getChilds($location_slug){
        $loc_id = Location::where('slug', $location_slug)->first();
        if(!$loc_id){
            return response()->json([
                'message'=>'Invalid location',
                'error' => true,
            ]);
        }
        $childs = Location::select('name', 'slug')
                        ->where('parent_id', $loc_id->id)
                        ->where('status', 1)
                        ->get();
        return response()->json([
            'data' => [
                'childs' => $childs,
            ],
            'message'=>'Childs list',
            'error' => false,
        ]);
    }


    /**
     * all post/book of a specific location
     * @return json
     */
    public function getAdsByLocation($location_slug){
        $loc = Location::where('slug', $location_slug)->first();
        if(!$loc){
            return response()->json([
                'message'=>'Invalid location',
                'error' => true,
            ]);
        }
        $loc_id = $loc->id;
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
                        'category_id',
                        'sub_category1_id',
                        'sub_category2_id',
                        'is_sold',)
                        ->with('seller')
                        ->with('category')
                        ->with('sub_category')
                        ->with('sub_category2')
                        ->with('images')
                        ->where('status', 1)
                        ->where(function($query) use ($loc_id){
                            $query->where('division_id', $loc_id)
                            ->orWhere('district_id', $loc_id)
                            ->orWhere('upazila_id', $loc_id);
                        })
                        ->orderBy('id', 'DESC')
                        ->paginate(20);

        return response()->json([
            'data' => $ads,
            'message' => 'All ads of a specific location',
            'error' => false, 
        ]);
    }
}
