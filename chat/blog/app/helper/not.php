<?php
function  tiger_pusher($roomChannel,$event,$data){
    try
    {
        $pusher = new \Pusher\Pusher (env('key'), env('secret'),env('app_id') , array('cluster' => env('cluster')) );
        $pusher->trigger( $roomChannel, $event, [$data] );
    }
    catch (\Exception $ex){
        $ex->getMessage();
    }

}

function getAvatar($avatar){
    $url=public_path().'/images/avatars/';
    if (file_exists($url.$avatar)){
        return url('images/avatars/'.$avatar);
    }else{
        return url('noimage.png');
    }

}