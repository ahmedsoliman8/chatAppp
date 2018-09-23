<?php
use Facades\App\StreamLab\StreamLab;
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/
Route::get('/demo', function () {
    return new \App\Mail\UserWelcome();
});

Route::post('/user/add', 'Home@index');

Route::get('/', function () {
if(\Illuminate\Support\Facades\Auth::check()){
return  redirect( '/home');
}else{
    return  redirect('/login');
}

 //   throw_if(true,\App\Exceptions\Users::class,"yes there is error here in users");

  //  throw_if(false,new \App\Exceptions\Users("yes there is error here in users"));
 //   throw_unless(false,new \App\Exceptions\Users());

/*    $d=collect([1,2,3,4,5,]);
    dump($d);
   $d=$d->reject(function ($i){
       return $i>2;
   });
collect([1,2,3,4,5,])->dump()->reject(function ($i){
    return $i>2;
})->dump();
   dd($d);*/



    });

/*Route::get('/{col}', function ($col) {
 //   return view('welcome');
// return \Illuminate\Support\Facades\Auth::user()->name;

  /*  dd(\App\User::where('name','admin')->get()->tap(function ($user){
          var_dump($user->pluck('name'));
    })->tap(function ($user){
        var_dump($user->pluck('id'));
    })
    );




    $user = \App\User::get()->when($col=='name',function ($collection){

        return $collection->reject(function ($u){
            var_dump($u['id']);
        });
    });
});*/

Route::post('/send', function (\Illuminate\Http\Request $request) {

    dd($request->username);
});

Auth::routes();

//Rooms
Route::get('/home', 'HomeController@index')->name('home');
Route::post('/addNewRoom', 'RoomsController@addNewRoom');
Route::get('/getAllRooms', 'RoomsController@getAllRooms');
Route::get('/getMyRooms', 'RoomsController@getMyRooms');
Route::get('/deleteRoom/{room_id}', 'RoomsController@deleteRoom');
Route::get('/getMeOnline/{room_id}', 'RoomsController@getMeOnline');

Route::get('/leaving/{room_id}', 'RoomsController@leaving');
//Messages
Route::post('/addNewMessage', 'MessagesController@addNewMessage');

//Users
Route::post('/uploadAvatar', 'UserController@uploadAvatar');

Route::get('/getAuthUserAvatar', 'UserController@getAuthUserAvatar');



