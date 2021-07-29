<?php

namespace App\Http\Controllers\Clients\Posts;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Str;
use App\Models\User;
use App\Models\Book;
use App\Models\BookImage;

/**
     * Post Controller (individual)
     *  - create post
     *  - update post
     *  - displaying my all post
     *  - displaying my specific post
     *  - delete post 
*/

class PostController extends Controller
{
    /**
     * an users all post
     * @return json
     */
    public function myPost(){
        $user = auth()->user();
        $posts = Book::with('images')->where('seller_id', $user->id)->paginate(10);

        return response()->json([
            'data' => $posts,
            'message' => 'posts of an user',
            'error' => false,     
        ]);
    }

    /**
     * an users specific post
     * @return json
     */
    public function showPost($post_id){
        $user = auth()->user();
        $post = Book::with('images')->find($post_id);

        // owner verification
        if( !$post or ($user->id != $post->seller_id) ){
            return response()->json([
                'message' => 'Data not found',
                'error' => true,     
            ]);
        }

        return response()->json([
            'data' => [
                'post' => $post,
            ],
            'message' => 'post of an user',
            'error' => false,     
        ]);
    }

    /**
     * create post
     * @return json
     */
    public function createPost(Request $request){

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
            'category_id' => 'required|exists:categories,id',
            'sub_category1_id' => 'exists:categories,id',
            'sub_category2_id' => 'exists:categories,id',
            'isbn_no' => 'max:17',
            'price' => 'required|numeric',
            'short_description' => 'max:255',
            // 'description'
            'division_id' => 'required|numeric|exists:locations,id',
            'district_id' => 'required|numeric|exists:locations,id',
            'upazila_id' => 'required|numeric|exists:locations,id',
            // 'is_sold' => 'required|numeric',
            // 'status' => 'required|numeric',
            
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

        $post = Book::Create([
            'seller_id' => auth()->user()->id,
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
            'is_sold' => 0,
            'status' => 1,
        ]);

        // images operation
        $file = '';
        if($request->hasfile('images')){
          foreach($request->file('images') as $file){
              $name = time().rand(1,100).'.'.$file->extension();
              $file->move(public_path('images/posts'), $name);  
              $file = $name;
              if($file){
                  BookImage::Create([
                      'book_id' => $post->id,
                      'seller_id' => auth()->user()->id,
                      'title' => $name,
                      'path' => 'images/posts/'.$file,
                  ]);
              } 
          }
        }

        return response()->json([
            'data' => [
                'post' => Book::with('images')->find($post->id),
            ],
            'message'=>'Successfully posted',
            'error' => false,
            
        ]);
    }


    /**
     * update post
     * @return json
     */
    public function updatePost($post_id, Request $request){

        $user = auth()->user();
        $post = Book::find($post_id);
        // post owner verification
        if( !$post or ($user->id != $post->seller_id) ){
            return response()->json([
                'message' => 'Data not found',
                'error' => true,     
            ]);
        }

        // Data validation
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
            'category_id' => 'required|exists:categories,id',
            'sub_category1_id' => 'exists:categories,id',
            'sub_category2_id' => 'exists:categories,id',
            'isbn_no' => 'max:17',
            'price' => 'required|numeric',
            'short_description' => 'max:255',
            'division_id' => 'required|numeric|exists:locations,id',
            'district_id' => 'required|numeric|exists:locations,id',
            'upazila_id' => 'required|numeric|exists:locations,id',
            'is_sold' => 'numeric',
            
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

        $post->update([
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
            'division_id' => $request->division_id,
            'district_id' => $request->district_id,
            'upazila_id' => $request->upazila_id,
            'is_sold' => $request->is_sold,
        ]);

        return response()->json([
            'data' => [
                'post' => Book::with('images')->find($post->id),
            ],
            'message'=>'Successfully updated',
            'error' => false,
            
        ]);
    }

    /**
     * delete post
     * @return json
     */
    public function destroy($post_id){
        $user = auth()->user();
        $post = Book::find($post_id);
        // post owner verification
        if( !$post or ($user->id != $post->seller_id) ){
            return response()->json([
                'message' => 'Data not found',
                'error' => true,     
            ]);
        }
        if($post->delete()){
            return response()->json([
                'message'=>'Successfully deleted',
                'error' => false,
                
            ]);
        }
    }

}
