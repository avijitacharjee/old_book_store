<?php

namespace App\Http\Controllers\Administrator\Admins;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Admin;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Str;
use App\Notifications\verifyEmail;

class AdminController extends Controller
{
    public function index(){
        
    }
    public function create(Request $request)
    {

        $validator = Validator::make($request->all(), [
            'name' => 'required',
            'phone' => 'required|digits:11|unique:admins',
            'email' => 'email|required|unique:admins',
            'role' => 'required|numeric',
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
        $image_path = '';
        if($image){
            if($image->isValid()){
                $image_path = $request->image->storeAs('admins', $image->getClientOriginalName());
            }
        }

        $user = Admin::create([
            'name' => $request->name,
            'phone' => $request->phone,
            'email' => strtolower(trim($request->email)),
            'role' => $request->role,
            'password' => bcrypt($request->password),
            'image_path' => $image_path,
        ]);

        return response()->json([
            'data' => [
                'user' => $user,
            ],
            'message'=>'Successfully inserted',
            'error' => false,
        ]);
        
    }

}
