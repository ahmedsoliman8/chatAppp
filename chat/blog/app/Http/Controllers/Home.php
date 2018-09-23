<?php

namespace App\Http\Controllers;

use App\VUsers;
use Illuminate\Http\Request;

class Home extends Controller
{
    public  function index(){

        $data=$this->validate(\request(),[

            'name' => [new VUsers()]

        ]);

 return redirect()->back();
    }
}
