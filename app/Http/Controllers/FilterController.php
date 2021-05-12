<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Product;
use App\Age;
use App\Marque;
use App\SuperHero;

class FilterController extends Controller
{

    public function __construct(Product $product,Age $age,Marque $marque,SuperHero $superHero)
    {
        $this->product = $product;
        $this->age = $age;
        $this->marque = $marque;
        $this->superHero = $superHero;
    }



    public function indexAge(Request $request,$slug){

        $marque = $request->get('marque');
        $superHero = $request->get('super_hero');
        $sex = $request->get('sex');
        $product = $this->product->getItemsByFilters('ages',$slug,null, $sex, $superHero , $marque);
        return view('pages.filter-page',['products'=>$product,"title"=>"Ages"]);
    }

    public function indexMaruqe(Request $request,$slug){
        $age = $request->get('age');
        $superHero = $request->get('super_hero');
        $sex = $request->get('sex');
        $products = $this->product->getItemsByFilters('marques',$slug,$age, $sex, $superHero);
        return view('pages.filter-page',['products'=>$products,"title"=>"Maruqes"]);
    }

    public function indexSuperHero(Request $request,$slug){
        $marque = $request->get('marque');
        $age = $request->get('age');
        $sex = $request->get('sex');
        $products = $this->product->getItemsByFilters('superHero', $slug, $age, $sex, null,$marque);
        return view('pages.filter-page',['products'=>$products,"title"=>"Super Hero"]);
    }

}
