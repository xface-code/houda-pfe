<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Http\Requests\CommandeRequest;
use App\Models\Cart;
use App\Product;
use App\Commande;
use App\CommandeDet;
use Session;

class CartController extends Controller
{

    // $this->cart = new Cart();
    public function __construct(Cart $cart,Product $product)
    {
        $this->cart    = $cart;
        $this->product = $product;
    }

    public function postCart($slug ,Request $request){
            // dd($request->get('qty'));

            if($request->get('qty')) $qty = $request->get('qty');
            else $qty = 1;

            $product_= $this->product->getItemBySlug($slug);
            if($product_->imgs) $imgs = json_decode($product_->imgs)[0];
            else $imgs = null;
            $item = array(
                'id' => $product_->id
                ,'quantity'=>$qty
                ,'name'=>$product_->nom
                ,'imgs'=>$imgs
                ,'slug'=>$product_->slug
            );
            $this->cart->addItem($item); 
            return redirect()->back();
    }
    
    public function deleteCart($index){
        $this->cart->deleteItem($index);
        return redirect()->back();
    }

    public function addCommande(CommandeRequest $request){
        $commande = new Commande();
        $tot_hot = 0;
        for ($i=0; $i < sizeof($request->qty); $i++) { 
            $prod = $this->product->getItem($request->product[$i]);
            $productsQty [] = array(
                'qty' => $request->qty[$i],
                'product' => $prod,
            );
            $tot_hot += $prod->price * $request->qty[$i];
        }

        $commande->member_id = Auth::user()->id;
        $commande->tot_ht = $tot_hot;
        $commande->tva = 20;
        $commande->tot_ttc =  $tot_hot + ($tot_hot * 0.2);
        $commande->etat = 0;
        $commande->transaction_id = 0;
        $commande->save();
        $commande->ref = $commande->getReference();
        $commande->save();



        for ($i=0; $i < sizeof($productsQty); $i++) { 
            $commandeDets = new CommandeDet();
            $commandeDets->commande_id = $commande->id;
            $commandeDets->product_id = $productsQty[$i]['product']->id;
            $commandeDets->nom = $productsQty[$i]['product']->nom;
            $commandeDets->prix_unit = $productsQty[$i]['product']->price;
            $commandeDets->qte = $productsQty[$i]['qty'];
            $commandeDets->prix_total = $productsQty[$i]['product']->price * $productsQty[$i]['qty'];
            $commandeDets->save();
        }

        Session::flush('panier');

        return  back();
    }
}
