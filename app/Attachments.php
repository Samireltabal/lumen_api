<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Attachments extends Model
{

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'file_name','product_id'
    ];
    
 
    /**
     * The attributes excluded from the model's JSON form.
     *
     * @var array
     */
    protected $hidden = [];

    public function Products() {
        return $this->belongsTo('App\Products');
    }

}