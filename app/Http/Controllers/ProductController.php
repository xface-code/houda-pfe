<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Product;

class ProductController extends Controller
{

    public function __construct(Product $product)
    {
        $this->product = $product;
    }



    public function index()
    {
        $product = $this->product->getItemBySlug("amine-misbah");
        dd($product->superHero);
    }

    public function show($categorie,$slug)
    {
        // dd($slug);
        $product = $this->product->getItemBySlug($slug);
        return view("pages.product",[
            "product"=>$product
        ]);
        // dd($product);
    }
}
