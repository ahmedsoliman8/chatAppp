@extends('layouts.app_back')

@section('content')

<div class="col-md-12">

    <div class="wrap">
        <p class="form-title">
            Sign Up</p>
        <form class="form-horizontal" method="POST" action="{{ route('register') }}">
            {{ csrf_field() }}
            <div class="form-group{{ $errors->has('name') ? ' has-error' : '' }}">


                <div class="">
                    <input id="name" type="text" class="form-control" name="name" placeholder="Username .." value="{{ old('name') }}" required autofocus>

                    @if ($errors->has('name'))
                        <span class="help-block">
                                        <strong>{{ $errors->first('name') }}</strong>
                                    </span>
                    @endif
                </div>
            </div>

            <div class="form-group{{ $errors->has('email') ? ' has-error' : '' }}">


                <div class="">
                    <input id="email" type="email" class="form-control" placeholder="Email .." name="email" value="{{ old('email') }}" required>

                    @if ($errors->has('email'))
                        <span class="help-block">
                                        <strong>{{ $errors->first('email') }}</strong>
                                    </span>
                    @endif
                </div>
            </div>

            <div class="form-group{{ $errors->has('password') ? ' has-error' : '' }}">


                <div class="">
                    <input id="password" type="password" class="form-control" placeholder="Password .." name="password" required>

                    @if ($errors->has('password'))
                        <span class="help-block">
                                        <strong>{{ $errors->first('password') }}</strong>
                                    </span>
                    @endif
                </div>
            </div>

            <div class="form-group">
                <div class="">
                    <input id="password-confirm" type="password" placeholder="Repeat Password .." class="form-control" name="password_confirmation" required>
                </div>
            </div>

            <div class="form-group">
                <div class="">
                    <button type="submit" class="btn btn-success col-lg-12">
                     <i class="fa fa-user-plus"></i>   Register
                    </button>
                </div>
            </div>

            <div class="remember-forgot">
                <div class="row">
                    <div class="col-md-12 ">
                        <a href="{{url('/login')}}" class="forgot-pass" style="color: #f0f0f0">  <i class="fa fa-user"></i>  Login</a>
                    </div>
                </div>
            </div>
        </form>
    </div>
</div>


@endsection
