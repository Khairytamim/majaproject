<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
        <link rel="stylesheet" href="{{ URL::asset('css/myCss.css') }}" />
        <link rel="stylesheet" href="{{ URL::asset('css/select2.min.css') }}" />
        <link rel="stylesheet" href="{{ URL::asset('css/bootstrap.min.css') }}" />

        <script type="text/javascript" src="{{ URL::asset('js/jquery.js') }}"></script>
        <script type="text/javascript" src="{{ URL::asset('js/bootstrap.min.js') }}"></script>
        <script type="text/javascript" src="{{ URL::asset('js/select2.min.js') }}"></script>
        <script type="text/javascript" src="{{ URL::asset('js/description.js') }}"></script>

        <script type="text/javascript" src="{{ URL::asset('javascripts/labs.js') }}"></script>
        <link rel="stylesheet" href="{{ URL::asset('lib/jquery.raty.css') }}" />
        <script type="text/javascript" src="{{ URL::asset('lib/jquery.raty.js') }}"></script>

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css" integrity="sha384-XdYbMnZ/QjLh6iI4ogqCTaIjrFk87ip+ekIjefZch0Y+PvJ8CDYtEs1ipDmPorQ+" crossorigin="anonymous">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato:100,300,400,700">

        <style>
            body {
                font-family: 'Lato';
            }

            .fa-btn {
                margin-right: 6px;
            }
        </style>

        <title>Maja - a loveable fashion marketplace</title>
    </head>
    <body>
        <div class="container">
        @include('partials.nav')
        @include('partials.flash')

        @yield('content')
        </div>
    </div>
   </div>
</div>
</div>
<!-- /.container -->
<div class="container">
    <hr>
    <!-- Footer -->
    <footer>
        <div class="row">
            <div class="col-lg-12">
                @yield('footer')
                <p>Copyright &copy; Your Website 2015</p>
            </div>
        </div>
    </footer>

</div>
<!-- /.container -->

<script>
$('div.alert').not('.alert-important').delay(3000).slideUp(300);
</script>

<script>
    $('#authors_list').select2({
        placeholder: 'Choose a category',
        tags: true
    });
</script>

<script>
    $('#authors_list2').select2({
        placeholder: 'Choose a tag',
        tags: true
    });
</script>

</body>
</html>

