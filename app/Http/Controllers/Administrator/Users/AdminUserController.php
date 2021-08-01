<?php

namespace App\Http\Controllers\Administrator\Users;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Str;
use App\Models\User;
use App\Models\Book;

/**
     * get users (clients) list
     * get a specific user
     * update a specific user by admin
     * delete an user
     * get all books of an user
     * @return json
*/

class AdminUserController extends Controller
{
    /**
     * get users (clients) list
     * @return json
     */
    public function userList(){
        $users = User::orderBy('id', 'DESC')->paginate(20);
        return response()->json([
            'data' => $users,
            'message'=>'Users list',
            'error' => false,
            
        ]);
    }

    /**
     * get a specific user
     * @return json
     */
    public function showUser($user_id){
        return response()->json([
            'data' => [
                'user' => User::with('division')
                            ->with('district')
                            ->with('upazila')
                            ->find($user_id),
            ],
            'message'=>'User',
            'error' => false,
            
        ]);
    }

    /**
     * update a specific user by admin
     * @return json
     */
    public function updateUser($user_id, Request $request){
        
        $validator = Validator::make($request->all(), [
            'name' => 'required',
            'email' => 'required|email',
            'phone' => 'required|digits:11',
            'institute' => 'required',
            'division_id' => 'required|numeric|exists:locations,id',
            'district_id' => 'required|numeric|exists:locations,id',
            'upazila_id' => 'required|numeric|exists:locations,id',
            'status' => 'required|numeric',
            'password' => 'required|min:8|max:16|confirmed',
            'image' => 'image',
            
        ]);

        if($validator->fails()){
            return response()->json([
                'data' => [
                    'inputs' => $request->input(),
                ],
                'errors'=>$validator->errors()->all(),
                'message'=>'Validation Failed',
                'error' => true,
                
            ]);
        }

        $image_path = '';
        if($request->hasfile('image')){
            $image = $request->file('image');
            if($image->isValid()){
                $name = time().rand(1,100).'.'.$image->extension();
                $image->move(public_path('images/users'), $name);  
                $image_path = 'images/users/'.$name;
            }
        }

        // update profile
        $user = User::find($user_id);
        $user->update([
            'name' => $request->name,
            'phone' => $request->phone,
            'institute' => $request->institute,
            'division_id' => $request->division_id,
            'district_id' => $request->district_id,
            'upazila_id' => $request->upazila_id,
            'password' => bcrypt($request->password),
        ]);
        // update profile picture
        if($image_path && $image){
            $user->update(['image_path' => $image_path,]);
        }
        
        unset($user['email_verification_token']);
        return response()->json([
            'data' => [
                'user' => $user,
            ],
            'message'=>'Successfully updated',
            'error' => false,
        ]);
    }

    /**
     * delete an user by admin
     * @return json
     */
    public function destroyUser($user_id){
        $user = User::find($user_id);
        if(!$user){
            return response()->json([
                'message'=>'Data not found',
                'error' => true,
            ]);
        }

        if($user->delete()){
            return response()->json([
                'message'=>'Successfully deleted',
                'error' => false,
            ]);
        }
    }

    /**
     * get all books of an user
     * @return json
     */
    public function books($user_id){
        $books = Book::with('images')->where('seller_id', $user_id)->paginate(20);
        return response()->json([
            'data' => $books,
            'message'=>'Successfully deleted',
            'error' => false,
        ]);
    }
}
