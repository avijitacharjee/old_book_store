<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Location extends Model
{
    use HasFactory;

    /**
     * The attributes  that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name',
        'parent_id',
        'status',
    ];

    public function childs(){
        return $this->hasMany('App\Models\Location','parent_id');
                    // ->select(['id', 'parent_id']);
    }
}
