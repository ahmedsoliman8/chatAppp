<?php
namespace  App\Exceptions;



class Users extends  \Exception {

public function render(){
    return redirect("/home");
}
}
