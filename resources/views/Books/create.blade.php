@extends('app')
@section('content')
<h1>Add a New Product</h1>
@include ('errors.list')

    {!! Form::open(['url'=>'/books/create','files'=>true]) !!}

       @include('Books.form',[$BookAuthorsList=null,$boosCategorieList=null,'submitButtonText'=>'Create'])

    {!! Form::close() !!}



@stop