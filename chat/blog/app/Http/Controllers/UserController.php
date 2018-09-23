<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Intervention\Image\Facades\Image;

class UserController extends Controller
{
  public function uploadAvatar(Request $request){
      $user=Auth::user();
      if($user->avatar != ''){
          if(file_exists(public_path().'/images/avatars/'.$user->avatar)){
              @unlink(public_path().'/images/avatars/'.$user->avatar);
          }
      }
      $image=$this->UploadImages($user->name,$request,'');
      $user->avatar=$image;
      if($user->save()){
          return url('images/avatars/'.$image);
      }
      else{
          return 'error';
      }
  }

    protected function UploadImages($username,$request,$url){
        if($url==''){
            $url=public_path().'/images/avatars/';
        }
        $image = $request->file('avatar');
        $imageName=time().'_'.$username.'_'.$image->getClientOriginalName();

        $img = Image::make( $image );
        $img->resize(100, 100);
        $img->save($url.$imageName,60);
        return $imageName;
    }

    public function getAuthUserAvatar(){
     return getAvatar(Auth::user()->avatar);
    }

}
