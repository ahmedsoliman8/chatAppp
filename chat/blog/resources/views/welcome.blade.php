@userAuth

<a href="{{url('/home')}}">Home</a>

@else

    <a href="{{url('/login')}}">Login</a>
    <a href="{{url('/register')}}">Register</a>

@endif


@isAdmin
yes Iam Admin
@else
No iam not
@endif




@checkIfIamOne(1)
yes you are one
@else

    No yoy are not one
@endif

{{dump($errors)}}

<h1>Laravel 5.5</h1>

<form action="/user/add" method="post">
{{csrf_field()}}

    <div class="form-group">
        <label for="name">Name</label>
        <input type="text" name="name" id="name" class="form-control"/>

    </div>

    <div class="form-group">

        <input type="submit" name="submit" class="btn btn-default"/>

    </div>

</form>













