<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Online extends Model
{
    protected $table="online";

    public function user(){
        return $this->belongsTo('App\User','user_id');
    }

    public function room(){
        return $this->belongsTo('App\Room','room_id');
    }


}
