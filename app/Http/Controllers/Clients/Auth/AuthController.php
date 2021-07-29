<?php

namespace App\Http\Controllers\Clients\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\User;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Str;
use App\Notifications\verifyEmail;

/**
     * create new account
     * login
     * logout
     * email verification
     * @return json
*/
class AuthController extends Controller
{

    // public function __construct()
    // {
    //     $this->middleware('auth:api', ['except' => ['generateAccessToken', 'login']]);
    // }

    /**
     * User registration
     * @return json
     */
    public function register(Request $request)
    {

        $validator = Validator::make($request->all(), [
            'name' => 'required',
            'phone' => 'required|digits:11|unique:users',
            'email' => 'email|required|unique:users',
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
        
        $image_path = '';
        if($request->hasfile('image')){
            $image = $request->file('image');
            if($image->isValid()){
                $name = time().rand(1,100).'.'.$image->extension();
                $image->move(public_path('images/users'), $name);  
                $image_path = 'images/users/'.$name;
            }
        }

        $user = User::create([
            'name' => $request->name,
            'phone' => $request->phone,
            'email' => strtolower(trim($request->email)),
            'institute' => $request->institute,
            'division_id' => $request->division_id,
            'district_id' => $request->district_id,
            'upazila_id' => $request->upazila_id,
            'status' => 1,
            'password' => bcrypt($request->password),
            // 'email_verified_at' => now(),
            'email_verification_token' => $request->email.Str::random(55),
            'image_path' => $image_path,
        ]);

        $accessToken = $user->createToken('authToken')->accessToken;
        // $user->notify(new verifyEmail($user));
        unset($user['email_verification_token']);
        return response()->json([
            'data' => [
                'user' => $user,
                'access_token' => $accessToken
            ],
            'message'=>'Successfully inserted',
            'error' => false,
        ]);
        
    }

    /**
     * User Login
     * @return json
     */
    public function login(Request $request)
    {
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

        if (!auth()->attempt($credentials)) { 
            return response()->json([
                'data' => [
                    'inputs' => $request->input(),
                ],
                'message' => 'Invalid Credentials',
                'error' => true,
            ]);
        }
        
        $user = auth()->user();
        // check email verifiation
        if($user->email_verified_at == null){
            auth()->logout();
            return response()->json([
                'error' => true,
                'message' => 'Your account is not activated. Please verify your email.',
            ]);
        }
        // check account status
        if($user->status == '0'){
            auth()->logout();
            return response()->json([
                'error' => true,
                'message' => 'Your account is deactivated. Please contact with support team.',
            ]);
        }

        $accessToken = auth()->user()->createToken('authToken')->accessToken;
        unset($user['email_verification_token']);
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

    /**
     * Email Verification
     * @return json
     */
    public function emailVerification($token = null){

        if ($token == null){
            return response()->json([
                'message'=>'Invalid Token'
            ]);
        }

        $user = User::where('email_verification_token', $token)->first();
        if($user == null){
            return response()->json([
                'message'=>'Invalid Token'
            ]);

        }

        $user->update([
            'email_verified_at' => now(),
            'email_verification_token' => '',
        ]);
        return response()->json([
                'message'=>'Your account is activated. You can login now.',
                'error' => false
            ]);

    }
}
