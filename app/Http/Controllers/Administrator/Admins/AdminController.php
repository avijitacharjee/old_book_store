<?php

namespace App\Http\Controllers\Administrator\Admins;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Admin;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Str;
use App\Notifications\verifyEmail;

/**
     * Get admins list
     * create admin
     * get information of a specific admin
     * delete an admin 
     * update an admin profile
     * @return json
*/

class AdminController extends Controller
{
    /**
     * Admins list
     * @return json
     */
    public function index(){
        $admins = Admin::all();
        return response()->json([
            'data' => [
                'users' => $admins,
            ],
            'message'=>'Admins list',
            'error' => false,
            
        ]);
    }

    /**
     * create admin
     * @return json
     */
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
        
        $image_path = '';
        if($request->hasfile('image')){
            $image = $request->file('image');
            if($image->isValid()){
                $name = time().rand(1,100).'.'.$image->extension();
                $image->move(public_path('images/admins'), $name);  
                $image_path = 'images/admins/'.$name;
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
    
    /**
     * displaying an admin
     * @return json
     */
    public function show($id){
        $admin = Admin::find($id);
        return response()->json([
            'data' => [
                'user' => $admin,
            ],
            'message'=>'Info of an admin',
            'error' => false,
            
        ]);
    }
    
    /**
     * deleting an admin
     * @return json
     */
    public function destroy($id){
        $admin = Admin::find($id);
        if(!$admin){
            return response()->json([
                'message'=>'Data not found',
                'error' => true,
            ]);
        }
        if($admin->delete()){
            return response()->json([
                'data' => [
                    'user' => $admin,
                ],
                'message'=>'Deleted an admin',
                'error' => false,
            ]);
        }
    }

    /**
     * update an admin profile
     * @return json
     */
    public function update($id, Request $request){

        $admin_user = Admin::find($id);
        if(!$admin_user){
            return response()->json([
                'data' => [
                    'inputs' => $request->input(),
                ],
                'message'=>'Data not found',
                'error' => true,
            ]);
        }

        $validator = Validator::make($request->all(), [
            'name' => 'required',
            'phone' => 'required|digits:11',
            'email' => 'email|required',
            'role' => 'required|numeric',
            'status' => 'required|numeric'
            
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
        
        $admin_user->update([
            'name' => $request->name,
            'phone' => $request->phone,
            'email' => strtolower(trim($request->email)),
            'role' => $request->role,
            'status'=>$request->status,
        ]);
        return response()->json([
            'message'=>'Successfully updated',
            'error' => false,
        ]);
    }

    

}
