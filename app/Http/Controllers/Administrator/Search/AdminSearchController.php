<?php

namespace App\Http\Controllers\Administrator\Search;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Book;
use App\Models\User;
use App\Models\Location;
use App\Models\Category;

class AdminSearchController extends Controller
{
    public function search(Request $request){
        $query = $request->input('query');
        // return count(explode(" ", $query));
        $results['books'] = Book::select('id','title','author')
                    ->with('image')
                    ->where('title','LIKE','%'.$query."%")
                    ->orWhere('slug','LIKE','%'.$query."%")
                    ->paginate(10);

        $results['users'] = User::select('id','name','image_path')
                    ->where('name','LIKE','%'.$query."%")
                    ->orWhere('email','LIKE','%'.$query."%")
                    ->paginate(10);
        
        $results['location'] = Location::select('id','name',)
                    ->where('name','LIKE','%'.$query."%")
                    ->get();

        $results['category'] = Category::select('id','title',)
                    ->where('title','LIKE','%'.$query."%")
                    ->get();

        return response()->json([
            'data' =>  $results,
            'message' => 'search results',
            'error' => false,     
        ]);
    }

    public function usersearch(Request $request){
        $query = $request->input('query');

        $results['users'] = User::select('id','name','image_path')
                    ->where('name','LIKE','%'.$query."%")
                    ->orWhere('email','LIKE','%'.$query."%")
                    ->paginate(10);

        return response()->json([
            'data' =>  $results,
            'message' => 'user search results',
            'error' => false,     
        ]);
    }

    public function bookSearch(Request $request){
        $query = $request->input('query');
        // return count(explode(" ", $query));
        $results['books'] = Book::select('id','title','author')
                    ->with('image')
                    ->where('title','LIKE','%'.$query."%")
                    ->orWhere('slug','LIKE','%'.$query."%")
                    ->paginate(10);

        return response()->json([
            'data' =>  $results,
            'message' => 'book search results',
            'error' => false,     
        ]);
    }

    public function locationSearch(Request $request){
        $query = $request->input('query');
        
        $results['location'] = Location::select('id','name',)
                    ->where('name','LIKE','%'.$query."%")
                    ->get();

        return response()->json([
            'data' =>  $results,
            'message' => 'location search results',
            'error' => false,     
        ]);
    }

    public function categorySearch(Request $request){
        $query = $request->input('query');
        $results['category'] = Category::select('id','title',)
                    ->where('title','LIKE','%'.$query."%")
                    ->get();

        return response()->json([
            'data' =>  $results,
            'message' => 'category search results',
            'error' => false,     
        ]);
    }
}
