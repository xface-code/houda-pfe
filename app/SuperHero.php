<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class SuperHero extends Model
{
    public function products(){
        return $this->belongsToMany("App\Product");
    }

    public function getItemBySlug($slug){
        return Self::where("slug", $slug)->firstOrFail();
    }

    public function getItems(){
        return Self::all();
    }
}
