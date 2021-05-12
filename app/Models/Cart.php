<?php

namespace App\Models;

// use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Session;

class Cart extends Model
{
    // use HasFactory;

    public function addItem($arrayData){

        $session = array();

        $session =  $this->getSession();
        $session [] = $arrayData;

        $this->addSession($session);
    }

    public function deleteItem($index){

        $session =  $this->getSession();
            foreach ($session as $key => $value) {
                if($key != $index){
                    $newData [] = $value;
                }
            }
        $this->addSession($newData ?? array());
    }
    
    public function getItems(){

        //Session::forget('panier');
        $items = $this->getSession();
        if($items){
            foreach ($items as $key => $item) {
                $productCart [] = array(
                     'index' => $key
                    ,'id' => $item['id']
                    ,'name' => $item['name']
                    ,'img' => $item['imgs']
                    ,'qty' => $item['quantity']
                    ,'slug' => $item['slug']
                );
            }
        }
        return $productCart ?? array();
    }

    private function addSession($arrayData){
        Session::put('panier', $arrayData);
    }

    private function getSession(){
        if(Session::has('panier')){
            return Session::get('panier');
        }
        return;
    }

}
