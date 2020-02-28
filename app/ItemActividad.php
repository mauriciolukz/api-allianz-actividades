<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ItemActividad extends Model
{
    //
    protected $table = 'items_actividades';

    public function actividades()
    {
        return $this->belongsTo('App\Actividad');
    }

}
