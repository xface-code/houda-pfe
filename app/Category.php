<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class Category extends Model
{


    public function categories(){
        return Self::hasMany('App\Category');
    }

    public function products(){
        return Self::hasMany('App\Product');
    }

    public function getItem($slug){
        return Self::where("slug",$slug)->firstOrFail();
    }
    public function getItems(){
        return Self::all();
    }
    public function getParentItems(){
        return Self::where("category_id",null)->get();
    }
}
