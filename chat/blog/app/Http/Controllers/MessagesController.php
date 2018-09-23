<?php

namespace App\Http\Controllers;

use App\Http\Requests\AddMessagesRequest;
use App\Message;
use Illuminate\Support\Facades\Auth;
use Pusher\Pusher;


class MessagesController extends Controller
{
 public function addNewMessage(AddMessagesRequest $request){
     $user=Auth::user();
    $message= new Message();
    $message->body=$request->message;
    $message->user_id=$user->id;
    $message->room_id=$request->room_id;
    if($message->save()){
      //return 'done';
      $data= Message::where("id",$message->id)->with("user","room")->get()[0];
      tiger_pusher($data->room->id."room","new_message",$data);
      return $data;
    }else{
        return 'error';
    }
 }



}
