<?php

namespace App\Http\Controllers\Clients\Search;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Book;
use App\Models\Category;

class SearchController extends Controller
{
    public function search(Request $request){
        $query = $request->input('query');

        $results['books'] = Book::select('id','title','author', 'slug')
                    ->with('image')
                    ->where('title','LIKE','%'.$query."%")
                    ->orWhere('slug','LIKE','%'.$query."%")
                    ->orWhere('tags','LIKE','%'.$query."%")
                    ->paginate(10);

        $results['category'] = Category::select('id','title',)
                    ->where('title','LIKE','%'.$query."%")
                    ->get();

        return response()->json([
            'data' =>  $results,
            'message' => 'search results',
            'error' => false,     
        ]);
    }

    public function bookSearch(Request $request){
        $query = $request->input('query');

        $results['books'] = Book::select('id','title','author', 'slug')
                    ->with('image')
                    ->where('title','LIKE','%'.$query."%")
                    ->orWhere('slug','LIKE','%'.$query."%")
                    ->orWhere('tags','LIKE','%'.$query."%")
                    ->paginate(10);

        return response()->json([
            'data' =>  $results,
            'message' => 'search results',
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
            'message' => 'search results',
            'error' => false,     
        ]);
    }
}
