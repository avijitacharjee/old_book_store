<?php

namespace App\Http\Controllers\Clients\Profile;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\User;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Str;

class ProfileController extends Controller
{
    /**
     * User profile
     * @return json
     */
    public function show(){
        $user = auth()->user();
        return $user;
    }

    /**
     * Update user profile
     * @return json
     */
    public function update(Request $request){
        // get user id from auth
        $user = auth()->user();

        // data validation
        $validator = Validator::make($request->all(), [
            'name' => 'required',
            'phone' => 'required|digits:11',
            'institute' => 'required',
            'division_id' => 'required|numeric|exists:districts,id',
            'district_id' => 'required|numeric|exists:districts,id',
            'upazila_id' => 'required|numeric|exists:districts,id',
            'password' => 'required|min:8|max:16|confirmed',
            'image' => 'image|max:2048',
            
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

        $image = $request->file('image');
        $image_path = null;
        if($image){
            if($image->isValid()){
                $image_path = $request->image->storeAs('users', $image->getClientOriginalName());
            }
        }

        // update profile
        $user = User::find($user->id);
        // return $user->id;
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
     * delete user account
     * @return json
     */
    public function destroy(){
        $user = auth()->user();
        $user = User::find($user->id);
        if($user->delete()){
            return response()->json([
                'data' => [
                    'user' => $user,
                ],
                'message'=>'Account deleted',
                'error' => false,
            ]);
        }
    }
}
