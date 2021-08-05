<?php

namespace App\Http\Controllers\Administrator\Contacts;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Contact;

class AdminContactController extends Controller
{
    public function index(){
        $messages = Contact::paginate(20);
        return response()->json([
            'data' => [
                'messages' => $messages,
            ],
            'message'=>'messages',
            'error' => false,
        ]);
    }

    public function show($id){
        $message = Contact::find($id);
        if(!$message){
            return response()->json([
                'message'=>'no data found',
                'error' => true,
            ]);
        }
        return response()->json([
            'data' => [
                'message' => $message,
            ],
            'message'=>'messages',
            'error' => false,
        ]);
    }

    public function delete($id){
        $message = Contact::find($id);
        if(!$message){
            return response()->json([
                'message'=>'no data found',
                'error' => true,
            ]);
        }
        if($message->delete()){
            return response()->json([
                'message'=>'deleted',
                'error' => false,
            ]);
        }
        
    }
    public function search(Request $request){
        $query = $request->input('query');
        if(!$query){
            return response()->json([
                'message'=>'no query',
                'error' => true,
            ]);
        }
        
        $results['messages'] = Contact::where('name','LIKE','%'.$query."%")
                    ->orWhere('email','LIKE','%'.$query."%")
                    ->orWhere('subject','LIKE','%'.$query."%")
                    ->get();

        return response()->json([
            'data' =>  $results,
            'message' => 'location search results',
            'error' => false,     
        ]);
        
    }
}
