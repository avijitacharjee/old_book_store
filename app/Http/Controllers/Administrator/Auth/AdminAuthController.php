<?php

namespace App\Http\Controllers\Administrator\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Admin;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Str;


class AdminAuthController extends Controller
{

    /**
     * User Login
     * @return json
     */
    public function login(Request $request)
    {
        // data validaton
        $validator = Validator::make($request->all(), [
            'email' => 'required|email',
            'password' => 'required'
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

        $credentials = [
            'email' => $request->email,
            'password' => $request->password,
        ];

        if (!auth()->guard('admin')->attempt($credentials)) { 
            return response()->json([
                'data' => [
                    'inputs' => $request->input(),
                ],
                'message' => 'Invalid Credentials',
                'error' => true,
            ]);
        }
        
        $user = auth()->guard('admin')->user();
        // check account status
        if($user->status == '0'){
            auth()->guard('admin')->logout();
            return response()->json([
                'error' => true,
                'message' => 'Your account is deactivated. Please contact with administrator.',
            ]);
        }

        $accessToken = auth()->guard('admin')->user()->createToken('adminAuthToken')->accessToken;
        return response()->json([
            'data'=>[
                'user' => $user,
                'access_token' => $accessToken
            ],
            'message'=>'Login successful',
            'error' => false,
        ]);

    }

    /**
     * User logout
     * @return json
     */
    public function signOut(Request $request){
        $token = $request->user()->token();
        $token->revoke();
        return response()->json([
            
            'message'=>'You have been successfully logged out!',
            'error' => false,
        ]);
    }
}
