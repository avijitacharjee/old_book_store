<?php

namespace App\Http\Controllers\Administrator\Locations;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Str;
use App\Models\Location;
use App\Models\User;
use App\Models\Book;
use DB;

/**
     * get a location with her child location
     * get all division with there districts
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
     * get a location with her child location
     * @return json
     */
    public function getLocation($location_id){
        $location = Location::with('childs')->find($location_id);
        return response()->json([
            'data' => [
                'location' => $location,
            ],
            'message'=>'a location',
            'error' => false,
        ]);
    }

    /**
     * get divisions list with there districts
     * @return json
     */
    public function getAllDivision(){
        $divisions = Location::with('childs')->where('parent_id', null)->get();
        return response()->json([
            'data' => [
                'divisions' => $divisions,
            ],
            'message'=>'divisons list',
            'error' => false,
        ]);
    }

    /**
     * get all district
     * @return json
     */
    public function getAllDistrict(){
        $districts = Location::where('parent_id', '<=', 10)->get();
        return response()->json([
            'data' => [
                'districts' => $districts,
            ],
            'message'=>'districts list',
            'error' => false,
        ]);
    }

    /**
     * get all child location of specific division/district
     * @return json
     */
    public function getChild($id){
        $childs = Location::where('parent_id', $id)->get();
        return response()->json([
            'data' => [
                'childs' => $childs,
            ],
            'message'=>'Childs list',
            'error' => false,
        ]);
    }

    /**
     * create location (district/division/upazila/thana/cit corporation area)
     * @return json
     */
    public function createLocation(Request $request){
        if(!$request->parent_id){
            unset($request['parent_id']);
        }
        $validator = Validator::make($request->all(), [
            'name' => 'required|unique:locations',
            'parent_id' => 'exists:locations,id',
        ]);

        if($validator->fails()){
            return response()->json([
                'data' => [
                    'inputs' => $request->input(),
                ],
                'errors'=>$validator->errors()->all(),
                'message'=>'Data Validation Failed',
                'error' => true,
                
            ]);
        }

        $location = Location::create([
            'name' => $request->name,
            'parent_id' => $request->parent_id,
            'status' => 1,
        ]);

        return response()->json([
            'data' => [
                'location' => $location,
            ],
            'message'=>'Successfully created',
            'error' => false,
            
        ]);
    }

    /**
     * update location
     * @return json
     */
    public function updateLocation($loc_id, Request $request){
        if(!$request->parent_id){
            unset($request['parent_id']);
        }
        $validator = Validator::make($request->all(), [
            'name' => 'required',
            'parent_id' => 'exists:locations,id',
            'status' => 'required|numeric'
        ]);

        if($validator->fails()){
            return response()->json([
                'data' => [
                    'inputs' => $request->input(),
                ],
                'errors'=>$validator->errors()->all(),
                'message'=>'Data Validation Failed',
                'error' => true,
                
            ]);
        }

        $location = Location::find($loc_id);
        if(!$location){
            return response()->json([
                'message'=>'No data found',
                'error' => true,
                
            ]);
        }
        $location->update([
            'name' => $request->name,
            'parent_id' => $request->parent_id,
            'status' => $request->status,
        ]);

        return response()->json([
            'data' => [
                'location' => $location,
            ],
            'message'=>'updated',
            'error' => false,
            
        ]);
    }


    /**
     * delete location
     * @return json
     */
    public function destroyLocation($loc_id){
        $location = Location::find($loc_id);
        if(!$location){
            return response()->json([
                'message' => 'Data not found',
                'error' => true
            ]);
        }
        $checkChild = Location::where('parent_id', $location->id)->first();
        if($checkChild){
            return response()->json([
                'message' => 'Can\'t be delete. It has child',
                'error' => true
            ]);
        }

        if($location->delete()){
            return response()->json([
                'message' => 'Deletion Succesful',
                'error' => false, 
            ]);
        }
    }

    /**
     * all user of a specific location
     * @return json
     */
    public function getUsers($loc_id){
        $users = User::where('division_id', $loc_id)
                        ->orWhere('district_id', $loc_id)
                        ->orWhere('upazila_id', $loc_id)
                        ->paginate(20);

        return response()->json([
            'data' => $users,
            'message' => 'All user of a specific location',
            'error' => false, 
        ]);
    }


    /**
     * all post/book of a specific location
     * @return json
     */
    public function getPosts($loc_id){

        $posts = Book::where('division_id', $loc_id)
                    ->orWhere('district_id', $loc_id)
                    ->orWhere('division_id', $loc_id)
                    ->paginate();

        return response()->json([
            'data' => ['posts' => $posts],
            'message' => 'All user of a specific location',
            'error' => false, 
        ]);
    }
}
