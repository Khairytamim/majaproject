{{--  ------------------------NavBar  ------------------------------------- --}}
<nav class="navbar navbar-inverse navbar-fixed-top" style="height:15px" >
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="/" style="margin-top:-5px"><img src="{{url::asset('/images/majawhite.png')}}" style="width:55px;height:30px"alt=""></a>
        </div>
        <div id="navbar" class="collapse navbar-collapse">
            <ul class="nav navbar-nav">
                {{----------------Navigation Bar With Dropdown Books-----------------------------}}
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">Products
                        <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        @if(Auth::check() && Auth::isAdmin())
                        <li><a href="/books/">Products</a></li>
                        @endif
                        <li><a href="/books/create">Upload Product</a></li>
                    </ul>
                </li>
                <!------------------------------------End-------------------------------------->
                {{----------------Navigation Bar With Dropdown Authors-----------------------------}}
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">Brands
                        <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                            <li><a href="/authors/create">Add Brand</a></li>
                            <li><a href="/authors/">List Brands</a></li>
                    </ul>
                </li>
                <!--------------------------------------End------------------------------------->
                {{----------------Navigation Bar With Dropdown Authors-----------------------------}}
                @if(Auth::check() && Auth::isAdmin())
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">PayPal
                        <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="/admin/logs">PayPal Logs</a></li>
                    </ul>
                </li>
                @endif
                <!--------------------------------------End------------------------------------->

            </ul>
            <!--------------------------------------Search------------------------------------->

            <div class="col-sm-3 col-md-3" style="margin-top:-5px">
                {!! Form::open(['url'=>'/search','method'=>'POST','class'=>'navbar-form','role'=>'search']) !!}
                <div class="input-group">
                    {!! Form::text('search',null,['class'=>'form-control','placeholder'=>'Search']) !!}
                    <div class="input-group-btn">
                        {!! Form::button('<span class="glyphicon glyphicon-search"></span>',[
                        'class'=>'btn btn-default',
                        'type'=>'submit']) !!}
                    </div>
                </div>
                {!! Form::close() !!}
            </div>
            <!--------------------------------------End-------------------------------------->
            <ul class="nav navbar-nav navbar-right">
                @if(Auth::check())
                    <li><a href="/">{{Auth::user()->username }}</a></li>
                    <li><a href="/auth/logout">Logout</a></li>
                @else
                    <li><a href="/auth/register">Register</a></li>
                    <li><a href="/auth/login">Login</a></li>
                @endif
                <li>
                    <a href="/carts"><span aria-hidden="true" class="glyphicon glyphicon-shopping-cart">{{Cart::count()}}</span> &nbsp;Cart</a>

                </li>
            </ul>
        </div><!--Nav -collapse -->
    </div>
</nav>
{{-- --------------------------------End NavBar------------------------------------ --}}
