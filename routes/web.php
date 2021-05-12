<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});


Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});


// Route::get('/products', [App\Http\Controllers\ProductController::class,'index']);
// Route::get('/produit/{slug}', [App\Http\Controllers\ProductController::class,'show']);

Auth::routes();
Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
Route::get('/search', [App\Http\Controllers\SearchController::class,'index']);
Route::get('/search-for-gift', [App\Http\Controllers\SearchController::class,'indexSearchForGift']);
Route::get('/age/{slug}', [App\Http\Controllers\FilterController::class,'indexAge']);
Route::get('/marque/{slug}', [App\Http\Controllers\FilterController::class,'indexMaruqe']);
Route::get('/super-hero/{slug}', [App\Http\Controllers\FilterController::class,'indexSuperHero']);
Route::get('/panier', function(){
    return view('pages.cart');
    // $cart = new App\Models\Cart();
    // dd($cart->getItems());
});
Route::get('/{slug}/add-to-cart', [App\Http\Controllers\CartController::class,'postCart']);
Route::get('/{index}/delete-from-cart', [App\Http\Controllers\CartController::class,'deleteCart']);

Route::get('/{categorie}', [App\Http\Controllers\CategoryController::class,'show']);
Route::get('/{categorie}/{slug}', [App\Http\Controllers\ProductController::class,'show']);








// Route::post('/filter-categorie', [App\Http\Controllers\SearchController::class,'indexFilterWithCategorie']);
// Route::post('/filter-gift', [App\Http\Controllers\SearchController::class,'filterSearchForGift']);
// Route::post('/search', [App\Http\Controllers\SearchController::class,'filterSearch']);

Route::post('/cart', [App\Http\Controllers\CartController::class,'addCommande'])->name("post-commande")->middleware('auth');





