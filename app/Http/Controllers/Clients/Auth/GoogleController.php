<?php

namespace App\Http\Controllers\Clients\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Laravel\Socialite\Facades\Socialite;
use App\Models\User;

class GoogleController extends Controller
{
    /**
     * Redirect the user to the Facebook authentication page.
     *
     * @return \Illuminate\Http\Response
     */
    public function redirectToGoogle()
    {
        return Socialite::driver('google')->redirect();
    }

    /**
     * Obtain the user information from Facebook.
     *
     * @return \Illuminate\Http\Response
     */
    public function handleGoogleCallback()
    {
        $getUser = Socialite::driver('google')->stateless()->user();
        // dd($getUser);
        $token = $getUser->token;
        $expiresIn = $getUser->expiresIn;
        $google_id = $getUser->getId();
        $name = $getUser->getName();
        $email = $getUser->getEmail();
        $avatar = $getUser->getAvatar();

        $checkUser = User::where('google_id', $google_id)
                        ->orWhere('email', $email)
                        ->first();
        if(!$checkUser){
            $user = User::create([
                'name' => $name,
                'email' => $email,
                'google_id' => $google_id,
                'email_verified_at' => now(),
                'status' => '1',
                'image_path' => $avatar,
            ]);
            $accessToken = $user->createToken('authToken')->accessToken;
            return response()->json([
                'data' => [
                    'user' => $user,
                    'access_token' => $accessToken
                ],
                'message'=>'Registration successful. Please update your profile.',
                'error' => false,
            ]);
        }

        else{
            if($checkUser->status == '0'){
                return response()->json([
                    'error' => true,
                    'message' => 'Your account is deactivated. Please contact with support team.',
                ]);
            }

            if($checkUser->email_verified_at == null){
                $checkUser->update(['email_verified_at' => now(),]);
            }

            $accessToken = $checkUser->createToken('authToken')->accessToken;
            return response()->json([
                'data'=>[
                    'user' => $checkUser,
                    'access_token' => $accessToken
                ],
                'message'=>'Login successful',
                'error' => false,
            ]);
        }
    }
}
