<?php

namespace App\Http\Controllers\Clients\Posts;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Str;
use App\Models\BookImage;
use App\Models\Book;


/**
     * get all images of a specific post
     * delete an image of a specific post
     * add an image of a specific post
     * @return json
     */

class PostImageController extends Controller
{
    /**
     * get all images of a specific post
     * @return json
     */
    public function showPostImages($post_id){
        $post_images = BookImage::select('id', 'book_id', 'path')
                                ->where('book_id', $post_id)
                                ->get();
        return response()->json([
            'data' => ['images' => $post_images,],
            'message' => 'all images of a post',
            'error' => false,     
        ]);
    }


    /**
     * delete an image of a specific post
     * @return json
     */
    public function deleteImage($post_id, $img_id){
        // owner verification
        $user = auth()->user();
        $post = Book::find($post_id);
        $img = BookImage::find($img_id);
        if( !$img or !$post or ($user->id != $post->seller_id) or $img->book_id != $post->id){
            return response()->json([
                'message' => 'Something wrong. You can\'t delete!',
                'error' => true,     
            ]);
        }
        // delete from storage
        $image_path = $img->path;
        if( file_exists($image_path) ){
            unlink($image_path);
        }
        // delete from db
        if($img->delete()){
            return response()->json([
                'message' => 'Succesfully deleted!',
                'error' => true,     
            ]);
        }
    }

    /**
     * add an image of a specific post
     * @return json
     */
    public function addImage($post_id, Request $request){
        $validator = Validator::make($request->all(), [
            'images' => 'required',
            
        ]);
        if($validator->fails()){
            return response()->json([
                'errors'=>$validator->errors()->all(),
                'message'=>'Data Validation Failed',
                'error' => true,
                
            ]);
        }
        
        // owner verification
        $user = auth()->user();
        $post = Book::find($post_id);
        if( !$post or ($user->id != $post->seller_id) ){
            return response()->json([
                'message' => 'Sorry this is not your post. You can\'t update!',
                'error' => true,     
            ]);
        }

        // add images
        $file = '';
        if($request->hasfile('images')){
          foreach($request->file('images') as $file){
              $name = time().rand(1,100).'.'.$file->extension();
              $file->move(public_path('images/posts'), $name);  
              $file = $name;
              if($file){
                  BookImage::Create([
                      'book_id' => $post->id,
                      'seller_id' => $user->id,
                      'title' => $name,
                      'path' => 'images/posts/'.$file,
                  ]);
              } 
          }
        }
        return response()->json([
            'message' => 'Images added',
            'error' => true,     
        ]);
    }
}
