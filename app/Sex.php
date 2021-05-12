<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class Sex extends Model
{
    public function sexes(){
        return $this->belongsToMany("App\Sex");
    }

    public function getItems(){
        return Self::all();
    }
}
