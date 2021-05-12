<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class Commande extends Model
{
    public function getReference(){
        $ref =""; 
        $counting = 4 - strlen($this->id);

        if($counting <= 0 ){
            return "o-".$this->id;
        }
        else{
            for ($i=0; $i < $counting; $i++) { 
                $ref .="0"; 
            }
            return "o-".$ref."".$this->id;
        }
    }
}
