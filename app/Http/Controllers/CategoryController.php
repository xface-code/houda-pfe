<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Collection;
use App\Category;
use App\Product;

class CategoryController extends Controller
{
    public function __construct(Category $category,Product $product)
    {
        $this->category = $category;
        $this->product = $product;
    }

    public function index(){
        dd("amine");
    }

    public function show($categorie,Request $request){

        $category = $this->category->getItem($categorie);
        $products = Collect();
        $products = $products->merge($this->product->getItemByCategory($category->id,$request->get("age"), $request->get("marque"), $request->get("sex"), $request->get("super_hero"),$request->get("price")));
        if($category->categories){
            foreach ($category->categories as $key => $item) {
                $products = $products->merge($this->product->getItemByCategory($item->id,$request->get("age"), $request->get("marque"), $request->get("sex"), $request->get("super_hero"),$request->get("price")));
                if($item->categories){
                    foreach ($item->categories as $key => $itemS) {
                        $products = $products->merge($this->product->getItemByCategory($itemS->id,$request->get("age"), $request->get("marque"), $request->get("sex"), $request->get("super_hero"),$request->get("price")));
                    }
                }
            }
        }

        // dd($categorie->products);
        return view("pages.categories",[
            "categorie" => $category,
            "products" => $products
        ]);
    }
}
