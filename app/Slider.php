<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class Slider extends Model
{
    public function getItems(){
        return Self::all();
    }
}
