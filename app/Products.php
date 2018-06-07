<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Products extends Model
{

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name', 'price', 'availability', 'code', 'categories_id'
    ];

    /**
     * The attributes excluded from the model's JSON form.
     *
     * @var array
     */
    protected $hidden = [];

    function categories() {
        return $this->belongsTo('App\Categories');
    }
    function attachments() {
        return $this->hasMany('App\Attachments');
    }
}