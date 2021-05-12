<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Product extends Model
{

    public function category(){
        return $this->BelongsTo("App\Category");
    }

    public function ages(){
        return $this->belongsToMany("App\Age");
    }

    public function sexes(){
        return $this->belongsToMany("App\Sex");
    }

    public function marques(){
        return $this->belongsToMany("App\Marque");
    }

    public function superHero(){
        return $this->belongsToMany("App\SuperHero");
    }

    public function prices(){
        return $this->belongsToMany("App\Price");
    }

    public function getItems(){
        return Self::all();
    }

    public function getItem($id){
        return Self::find($id);
    }

    public function getItemBySlug($slug){
        return Self::where("slug",$slug)->firstOrFail();
    }

    public function getItemBySearch($query, $age = null, $marque = null, $sex = null, $superHero = null, $price = null){
        return Self::where('nom', 'LIKE', "%{$query}%")

        ->whereHas('ages', function ($query) use ($age) {
            if($age) return $query->where('slug', $age);            
        })
        ->whereHas('sexes', function ($query) use ($sex) {

            if($sex) return $query->where('slug', $sex);
            
        })
        ->whereHas('marques', function ($query) use ($marque) {

            if($marque) return $query->where('slug', $marque);
            
        })
        ->whereHas('superHero', function ($query) use ($superHero) {

            if($superHero) return $query->where('slug', $superHero);
            
        })
        ->whereHas('prices', function ($query) use ($price) {

            if($price) return $query->where('slug', $price);
            
        })
        ->get();
    }

    public function getItemBySearchForGift($price = null, $age = null, $sex = null){
        $produits = Self::whereHas('ages', function ($query) use ($age) {
            if($age) return $query->where('slug', $age);            
        })
        ->whereHas('sexes', function ($query) use ($sex) {
            if($sex) return $query->where('slug', $sex);
        })
        ->whereHas('prices', function ($query) use ($price) {
            if($price) return $query->where('slug', $price);
        })
        ->get();
        return $produits;
    }

    public function getItemsByFilters( $firstFilter , $slug , $age = null, $sex = null, $superHero = null , $marque = null ,$price = null){
        return Self::whereHas( $firstFilter, function ($query) use ($slug) {
            return $query->where('slug', $slug);            
        })
        ->whereHas('ages', function ($query) use ($age) {
            if($age) return $query->where('slug', $age);            
        })
        ->whereHas('sexes', function ($query) use ($sex) {

            if($sex) return $query->where('slug', $sex);
            
        })
        ->whereHas('marques', function ($query) use ($marque) {

            if($marque) return $query->where('slug', $marque);
            
        })
        ->whereHas('superHero', function ($query) use ($superHero) {
            if($superHero) return $query->where('slug', $superHero);
        })
        ->whereHas('prices', function ($query) use ($price) {
            if($price) return $query->where('slug', $price);
        })
        ->get();
    }

    public function getItemByCategory($cat_id, $age = null, $marque = null, $sex = null, $superHero = null,$price = null){
        return Self::where('category_id', $cat_id)

        ->whereHas('ages', function ($query) use ($age) {
            if($age) return $query->where('slug', $age);            
        })
        ->whereHas('sexes', function ($query) use ($sex) {

            if($sex) return $query->where('slug', $sex);
            
        })
        ->whereHas('marques', function ($query) use ($marque) {

            if($marque) return $query->where('slug', $marque);
            
        })
        ->whereHas('superHero', function ($query) use ($superHero) {

            if($superHero) return $query->where('slug', $superHero);
            
        })
        ->whereHas('prices', function ($query) use ($price) {
            if($price) return $query->where('slug', $price);
        })
        ->get();
    }



}
