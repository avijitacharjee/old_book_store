<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

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
        'division_id',
        'district_id',
        'upazila_id',
        'is_sold',
        'status',
    ];


    public function images(){
        return $this->hasMany('App\Models\BookImage')->select(['path','id','book_id','seller_id']);
    }
}
