<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Str;

class Book extends Model
{
    use HasFactory;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'seller_id',
        'title',
        'author',
        'edition',
        'publication',
        'version',
        'category_id',
        'sub_category1_id',
        'sub_category2_id',
        'isbn_no',
        'price',
        'short_description',
        'description',
        'slug',
        'division_id',
        'district_id',
        'upazila_id',
        'is_sold',
        'status',
    ];



    /**

     * Boot the model.

     */

    protected static function boot()
    {
        parent::boot();

        static::created(function ($book) {

            $book->slug = $book->createSlug($book->title);

            $book->save();
        });
    }

    /** 
     * Write code on Method
     *
     * @return response()
     */
    private function createSlug($title)
    {
        if (static::whereSlug($slug = Str::slug($title))->exists()) {

            $max = static::whereTitle($title)->latest('id')->skip(1)->value('slug');

            if (isset($max[-1]) && is_numeric($max[-1])) {

                return preg_replace_callback('/(\d+)$/', function ($mathces) {

                    return $mathces[1] + 1;
                }, $max);
            }
            return "{$slug}-2";
        }
        return $slug;
    }

    /** 
     * get upazila
     *
     * @return response()
     */
    public function seller(){
        return $this->belongsTo('App\Models\User', 'seller_id')->select(['id','name',]);
    }
    /** 
     * get post image
     *
     * @return response()
     */
    public function images(){
        return $this->hasMany('App\Models\BookImage')->select(['path','id','book_id','seller_id']);
    }

    /** 
     * get division
     *
     * @return response()
     */
    public function division(){
        return $this->belongsTo('App\Models\Location', 'division_id')->select(['id','name','slug',]);
    }
    /** 
     * get district
     *
     * @return response()
     */
    public function district(){
        return $this->belongsTo('App\Models\Location', 'district_id')->select(['id','name','slug',]);
    }
    /** 
     * get upazila
     *
     * @return response()
     */
    public function upazila(){
        return $this->belongsTo('App\Models\Location', 'upazila_id')->select(['id','name','slug',]);
    }

}
