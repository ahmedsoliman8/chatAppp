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
    {{  Html::style('css/login.css') }}
</head>
<body>
    <div id="app">
        <div class="container">
            <div class="row">
                @yield('content')
            </div>
        </div>

    </div>

    <!-- Scripts -->
    {{Html::script("js/app.js")}}
</body>
</html>
