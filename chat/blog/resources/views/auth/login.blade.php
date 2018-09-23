@extends('layouts.app_back')

@section('content')


<div class="col-md-12">
    <br/>
<div class="row">
    <div class="text-center">
        <h1  style="color:#f0f0f0" >Chat App</h1>
    </div>
</div>
    <br/>
    <div class="wrap">
        <p class="form-title">
            Sign In</p>
        <form class="form-horizontal" method="POST" action="{{ route('login') }}">
            {{ csrf_field() }}
            <input id="email" type="email" class="form-control" placeholder="Email .." name="email" value="{{ old('email') }}" required autofocus />

            @if ($errors->has('email'))
                <span class="help-block">
                                        <strong>{{ $errors->first('email') }}</strong>
                                    </span>
            @endif
            <br/>
            <input id="password" type="password" placeholder="Password .." class="form-control" name="password" required />
            @if ($errors->has('password'))
                <span class="help-block">
                                        <strong>{{ $errors->first('password') }}</strong>
                                    </span>
            @endif
            <br/>
            <button type="submit"  class="btn btn-success btn-sm col-lg-12" > <i class="fa fa-user"></i> Login </button>
            <div class="remember-forgot">
                <div class="row">
                    <div class="col-md-6">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" name="remember" {{ old('remember') ? 'checked' : '' }} />
                            <span style="color:#f0f0f0;font-size: 85%">Remember Me</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-md-6 forgot-pass-content" style="padding-top: 7px;">
                        <a href="{{ route('password.request') }}" style="color:#f0f0f0" class="forgot-pass">Forgot Password</a>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <a href="{{ url('/register') }}" style="color:#f0f0f0" class="forgot-pass">
                            <i class="fa fa-user-plus"></i>
                            Add New Account
                        </a>
                    </div>

                </div>
            </div>
        </form>
    </div>
</div>
@endsection
