<?php

namespace App\Http\Controllers\Clients\Helps;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Contact;
use Illuminate\Support\Facades\Validator;

class ContactUsController extends Controller
{
    public function contact(Request $request){
        $validator = Validator::make($request->all(), [
            'name' => 'required',
            'phone' => 'digits:11',
            'email' => 'email|required|',
            'message' => 'required',
            
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

        $message = Contact::create([
            'name' => $request->name,
            'phone' => $request->phone,
            'email' => strtolower(trim($request->email)),
            'subject' => $request->subject,
            'message' => $request->message,
            'is_read' => 0,
        ]);

        return response()->json([
            'data' => [
                'message' => $message,
            ],
            'message'=>'Successfully inserted',
            'error' => false,
        ]);
    }
}
