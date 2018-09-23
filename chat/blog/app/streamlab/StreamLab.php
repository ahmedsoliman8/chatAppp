<?php
/**
 * Created by PhpStorm.
 * User: ميدو
 * Date: 5/19/18
 * Time: 4:21 AM
 */

namespace App\StreamLab;


class StreamLab
{
    protected  $task;
    public  function __construct()
    {
        $this->task="Say Hi";
    }

    public function DoTask(){
        return $this->task;
    }


}