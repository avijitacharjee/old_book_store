<?php

namespace App\Http\Controllers\Administrator\Posts;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Book;
use App\Models\Location;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Str;

/**
     * gell all post (book) list
     * get all unsold book
     * get all sold book
     * get a specific post(book)
     * get total number of post(ads/book)
     * update a specific post(book)
     * delete a specific post (delete)
     * @return json
*/
class AdminBookController extends Controller
{
    /**
     * Post (book) list
     * @return json
     */
    public function index(){
        $books = Book::with('images')->paginate(20);
        return response()->json([
            'data' => $books,
            'message' => 'list of book',
            'error' => false,     
        ]);
    }

    /**
     * get unsold books(posts/ads)
     * @return json
     */
    public function unsoldItem(){
        $books = Book::where('is_sold', 0)->with('images')->paginate(20);
        return response()->json([
            'data' => $books,
            'message' => 'unsold items',
            'error' => false,     
        ]);
    }

    /**
     * get sold books(posts/ads)
     * @return json
     */
    public function soldItem(){
        $books = Book::where('is_sold', 1)->with('images')->paginate(20);
        return response()->json([
            'data' => $books,
            'message' => 'sold items',
            'error' => false,     
        ]);
    }

    /**
     * number of unsold book
     * @return json
     */
    public function unsoldCount(){
        $count = Book::where('is_sold', 0)->count();
        return response()->json([
            'data' => [
                'count' => $count,
            ],
            'message'=>'nnumber of unsold book',
            'error' => false,
            
        ]);
    }

    /**
     * number of sold book
     * @return json
     */
    public function soldCount(){
        $count = Book::where('is_sold', 1)->count();
        return response()->json([
            'data' => [
                'count' => $count,
            ],
            'message'=>'nnumber of sold book',
            'error' => false,
            
        ]);
    }

    /**
     * get a specific post(book)
     * @return json
     */
    public function show($book_id){
        $book = Book::with('seller')
                    ->with('category')
                    ->with('sub_category')
                    ->with('sub_category2')
                    ->with('division')
                    ->with('district')
                    ->with('upazila')
                    ->with('images')
                    ->find($book_id);
        return response()->json([
            'data' => [
                'book' => $book,
            ],
            'message'=>'info of an book',
            'error' => false,
            
        ]);
    }

    /**
     * total number of posts(book/ads)
     * @return json
     */
    public function count(){
        $count = Book::count();
        return response()->json([
            'data' => [
                'count' => $count,
            ],
            'message'=>'total number of ads(book/post)',
            'error' => false,
            
        ]);
    }

    /**
     * update a specific post(book)
     * @return json
     */
    public function update($book_id, Request $request){
        
        $book = Book::find($book_id);
        if(!$book){
            return response()->json([
                'data' => [
                    'inputs' => $request->input(),
                ],
                'message'=>'Data not found',
                'error' => true,
                
            ]);
        }

        // data validation
        if(!$request->sub_category1_id){
            unset($request['sub_category1_id']);
        }
        if(!$request->sub_category2_id){
            unset($request['sub_category2_id']);
        }
        $validator = Validator::make($request->all(), [
            'title' => 'required',
            'author' => 'required',
            'publication' => 'required',
            'edition' => 'required|max:8',
            'version' => 'max:8',
            'category_id' => 'required|numeric|exists:categories,id',
            'sub_category1_id' => 'numeric|exists:categories,id',
            'sub_category2_id' => 'numeric|exists:categories,id',
            'isbn_no' => 'max:17',
            'price' => 'required|numeric',
            'short_description' => 'max:255',
            // 'description'
            'division_id' => 'required|numeric|exists:locations,id',
            'district_id' => 'required|numeric|exists:locations,id',
            'upazila_id' => 'required|numeric|exists:locations,id',
            'is_sold' => 'required|numeric',
            'status' => 'required|numeric',
            
        ]);

        if($validator->fails()){
            return response()->json([
                'data' => [
                    'inputs' => $request->input(),
                ],
                'errors'=>$validator->errors()->all(),
                'message'=>'Data Validation Failed',
                'error' => true,
                
            ]);
        }

        $book->update([
            'title' => $request->title,
            'author' => $request->author,
            'edition' => $request->edition,
            'publication' => $request->publication,
            'version' => $request->version,
            'category_id' => $request->category_id,
            'sub_category1_id' => $request->sub_category1_id,
            'sub_category2_id' => $request->sub_category2_id,
            'isbn_no' => $request->isbn_no,
            'price' => $request->price,
            'short_description' => $request->shrt_description,
            'description' => $request->description,
            'is_sold' => $request->is_sold,
            'division_id' => $request->division_id,
            'district_id' => $request->district_id,
            'upazila_id' => $request->upazila_id,
            'status' => $request->status,
        ]);
        return response()->json([
            'data' => [
                'book' => $book,
            ],
            'message'=>'Successfully updated',
            'error' => false,
            
        ]);
    }

    /**
     * delete a specific post (delete)
     * @return json
     */
    public function destroy($id){
        $book = Book::find($id);
        if(!$book){
            return response()->json([
                'message'=>'Data not found',
                'error' => true,
                
            ]);
        }
        if($book->delete()){
            return response()->json([
                'message'=>'Successfully deleted',
                'error' => false,
                
            ]);
        }

    }
}

