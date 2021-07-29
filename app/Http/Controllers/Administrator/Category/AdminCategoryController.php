<?php

namespace App\Http\Controllers\Administrator\Category;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Str;
use App\Models\Category;
use App\Models\Book;

/**
     * get categories list
     * get a specific category
     * get all books of an specific category
     * delete category
     * create category
     * update category
     * @return json
*/

class AdminCategoryController extends Controller
{
    /**
     * get categories list
     * @return json
     */
    public function index(){
        $categories = Category::all();
        return response()->json([
            'data' => [
                'categories' => $categories,
            ],
            'message'=>'Categories list',
            'error' => false,
        ]);
    }

    /**
     * get a specific category
     * @return json
     */
    public function show($id){
        $category = Category::find($id);
        return response()->json([
            'data' => [
                'category' => $category,
            ],
            'message'=>'Category',
            'error' => false,
        ]);
    }

    /**
     * get all books of an specific category
     * @return json
     */
    public function books($id){
        $books = Book::where('category_id', $id)
                        ->orWhere('sub_category1_id', $id)
                        ->orWhere('sub_category2_id', $id)
                        ->paginate(20);
        return response()->json([
            'data' => $books,
            'message' => 'book of a category',
            'error' => false,     
        ]);
    }

    /**
     * delete category
     * @return json
     */
    public function destroy($id){
        $category = Category::find($id);
        if(!$category){
            return response()->json([
                'message' => 'Data not found',
                'error' => true
            ]);
        }

        if($category->delete()){
            return response()->json([
                'message' => 'Deletion Succesful',
                'error' => false, 
            ]);
        }
    }

    /**
     * create category
     * @return json
     */
    public function create(Request $request){
        if(!$request->parent_id){
            unset($request['parent_id']);
        }
        $validator = Validator::make($request->all(), [
            'title' => 'required|unique:categories',
            'parent_id' => 'exists:categories,id',
            'image' => 'image|max:2048',
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

        $image_path = '';
        if($request->hasfile('image')){
            $image = $request->file('image');
            if($image->isValid()){
                $name = time().rand(1,100).'.'.$image->extension();
                $image->move(public_path('images/categories'), $name);  
                $image_path = 'images/categories/'.$name;
            }
        }
        $category = Category::create([
            'title' => $request->title,
            'parent_id' => $request->author,
            'is_featured' => 0,
            'status' => 1,
            'image_path' => $image_path,
        ]);

        return response()->json([
            'data' => [
                'categories' => $category,
            ],
            'message'=>'Successfully created',
            'error' => false,
            
        ]);
    }

    /**
     * update category
     * @return json
     */
    public function update($id, Request $request){
        $category = Category::find($id);
        if(!$category){
            return response()->json([
                'message' => 'Data not found',
                'error' => true
            ]);
        }
        if(!$request->parent_id){
            unset($request['parent_id']);
        }
        $validator = Validator::make($request->all(), [
            'title' => 'required',
            'parent_id' => 'exists:categories,id',
            'is_featured' => 'required|numeric',
            'status' => 'required|numeric',
            'image' => 'image|max:2048',
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

        $image_path = '';
        if($request->hasfile('image')){
            $image = $request->file('image');
            if($image->isValid()){
                $name = time().rand(1,100).'.'.$image->extension();
                $image->move(public_path('images/categories'), $name);  
                $image_path = 'images/categories/'.$name;
            }
        }
        $category->update([
            'title' => $request->title,
            'parent_id' => $request->author,
            'is_featured' => $request->is_featured,
            'status' => $request->status,
            'image_path' => $image_path,
        ]);

        return response()->json([
            'data' => [
                'categories' => $category,
            ],
            'message'=>'Successfully updated',
            'error' => false,
            
        ]);
    }
}
