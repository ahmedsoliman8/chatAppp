<!DOCTYPE html>
<html lang="{{ app()->getLocale() }}">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>{{ config('app.name', 'Laravel') }}</title>
    <!-- Styles -->
    {{  Html::style('css/style.css') }}
    <style>
        .padding{
         padding: 0px 20px;
         color: #FFFF;
        }
    </style>
</head>
<body>
<div id="app">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12 mail-box">
                <aside class="lg-side">
                    <div class="inbox-head">
                              <div class="col-lg-8">
                                  <h1 style="display: inline"  >Real Time Web Chat</h1>
                                  <router-link class="padding" :to="{path:'/addroom'}">
                                      <i class="fa fa-plus"></i>
                                      Add Room
                                  </router-link>
                                  <router-link class="padding" :to="{path:'/myrooms'}">
                                      <i class="fa fa-user"></i> My Rooms
                                  </router-link>
                                  <router-link class="padding" :to="{path:'/allrooms'}">
                                      <i class="fa fa-users"></i> All Rooms
                                  </router-link>
                                  <router-link class="padding"   :to="{path:'/profile'}">
                                  <img src="{{getAvatar(\Illuminate\Support\Facades\Auth::user()->avatar)}}" width="20px"/>
                                  {{ Auth::user()->name }}
                                  </router-link>
                                  <a class="padding"  href="{{ route('logout') }}"  class="padding"  onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                                      Logout
                                  </a>
                                  <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                                      {{ csrf_field() }}
                                  </form>
                              </div>



                    </div>
                    <div class="inbox-body">
                        @yield('content')

                    </div>
                </aside>

            </div>
        </div>



    </div>
</div>
{{Html::script("js/app.js")}}
</body>
</html>
