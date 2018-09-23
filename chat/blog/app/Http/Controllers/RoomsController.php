<?php

namespace App\Http\Controllers;

use App\Http\Requests\AddRoomsRequest;
use App\Online;
use App\Room;
use Illuminate\Support\Facades\Auth;


class RoomsController extends Controller
{
  public  function addNewRoom(AddRoomsRequest $request ){
      $user=Auth::user();
 $room=new Room();
 $room->name=$request->room_name;
 $room->user_id=$user->id;
 if($room->save()){
     return 'done';
 }else{
     return 'error';
 }
  }

  public function getAllRooms(){
   $rooms= Room::with("user")->get();
   return $rooms;
  }

  public function getMyRooms(){
      $user=Auth::user();
      $rooms= Room::where("user_id",$user->id)->with("user")->get();
      return $rooms;
  }

  public  function deleteRoom($room_id){
         $user=Auth::user();
       if(Room::where("id",$room_id)->where("user_id",$user->id)->delete()){
           return 'done';
       }else{
           return 'error';
       }
  }
  public function getMeOnline($room_id){
    $user=Auth::user();
     $ifUserOnline= Online::where("user_id",$user->id)->count();
     if($ifUserOnline == 0){
           //New User
         $this->createOnline($user->id,$room_id);
     }else{
         // Leave Chat Room and got to another room
         $leaveHome= Online::where("user_id",$user->id)->get()[0];
         Online::where("user_id",$user->id)->delete();

       $this->getOnlineAndcountOnline($leaveHome->room_id,$user->name."Leave Room",'offline');

         //Update when user leave
         $this->createOnline($user->id,$room_id);
     }
      $this->getOnlineAndcountOnline($room_id,$user->name."Login to Room",'online');
    return 'done';

  }

  protected  function getOnlineAndcountOnline ($room_id,$userName,$type){
      $room=Room::where('id',$room_id)->withCount('online')->get()[0]->online_count;
      $onlineUser=Online::where("room_id",$room_id)->with("user")->get();
      $array=[
          'count' => $room,
          'user' => $onlineUser,
          'action' => $userName
      ];

      if($type == 'online'){
          tiger_pusher($room_id.'online','online_user',$array);
      }else{
          tiger_pusher($room_id.'offline','leave_user',$array);
      }


  }

  protected  function  createOnline($user_id,$room_id){
      $online= new Online();
      $online->user_id=$user_id;
      $online->room_id=$room_id;
      $online->timeLogin=time();
      $online->save();
  }

  public  function leaving($room_id){
      $user=Auth::user();
      Online::where("user_id",$user->id)->delete();
      $this->getOnlineAndcountOnline($room_id,$user->name."Leave Room",'offline');
  }

}
