<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Inventry extends Model
{
    //
    public function models()
    {
        return $this->hasMany('App\Models','manufacturer');
    }

}
