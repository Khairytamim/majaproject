 <!-- Page Content -->
    <div class="container">

        <div class="row">

            <div class="col-md-3" style="margin-top:23px">
                <p class="lead">Category</p>
                <div class="list-group">
                @foreach($categories as $key=>$categorie)
                    <a href="{{url('categorie',$key)}}" class="list-group-item">{{$categorie}}</a>
                    @endforeach
                </div>
            </div>
