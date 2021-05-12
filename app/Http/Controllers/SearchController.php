<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Product;


// http://localhost:8000/searchtest?search=search_string&category=socks
// $category = $request::get('category');

class SearchController extends Controller
{
    public function __construct(Product $product)
    {
        $this->product = $product;
    }


    public function index(Request $request){

        $search = $request->get('search');
        $age = $request->get('age');
        $marque = $request->get('marque');
        $sex = $request->get('sex');
        $superHero = $request->get('superHero');
        $price = $request->get('price');

        $product = $this->product->getItemBySearch($search,$age,$marque,$sex,$superHero,$price);

        return view('pages.search',["products"=>$product]);

    }

    public function indexSearchForGift(Request $request){

        $age = $request->get('age');
        $sex = $request->get('sex');
        $price = $request->get('price');

        $product = $this->product->getItemBySearchForGift($price,$age,$sex);
        // dd($product);

        return view('pages.search-for-filter',["products"=>$product]);
        
    }

    public function indexFilterWithCategorie(Request $request){
        $categorie = $request->cat;

        $age = 'age='.$request->age;
        $sex = 'sex='.$request->sex;
        $marque = 'marque='.$request->marque;
        $price = 'price='.$request->price;
        $superHero = 'super_hero='.$request->super_hero;

        return redirect()->to('/'.$categorie.'?age='.$request->age.'&sex='.$request->sex.'&marque='.$request->marque.'&price='.$request->price.'&super_hero='.$request->super_hero);

        // dd($categorie,$price,$age,$sex,$superHero,$marque);

        
    }

    public function filterSearchForGift(Request $request){

        $age = 'age='.$request->age;
        $sex = 'sex='.$request->sex;
        $price = 'price='.$request->price;

        return redirect()->to('/search-for-gift?age='.$request->age.'&sex='.$request->sex.'&price='.$request->price);
    }

    public function filterSearch(Request $request){
        // dd("sùs");
        $search = $request->search;

        $age = 'age='.$request->age;
        $sex = 'sex='.$request->sex;
        $price = 'price='.$request->price;
        $superHero = 'superHero='.$request->super_hero;
        $marque = 'superHero='.$request->marque;
        

        return redirect()->to('/search?search='. $request->search.'&age='.$request->age.'&sex='.$request->sex.'&price='.$request->price.'&superHero='.$request->super_hero.'&marque='.$request->marque);
    }

}
