<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class WishList extends Model
{
    use HasFactory;

    /**
     * The attributes  that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'book_id',
        'user_id',
    ];

    /** 
     * get ad info
     *
     * @return response()
     */
    public function adTitle(){
        return $this->belongsTo('App\Models\Book', 'book_id')
                        ->select(['id','title','slug']);
                        // ->with('images');
    }

    /** 
     * get ad images
     *
     * @return response()
     */
    public function adImages(){
        return $this->belongsTo('App\Models\BookImage', 'book_id')
                        ->select(['id','path']);
                        // ->with('images');
    }

    /** 
     * get user
     *
     * @return response()
     */
    public function user(){
        return $this->belongsTo('App\Models\User', 'user_id')->select(['id','name','image_path']);
    }
}
