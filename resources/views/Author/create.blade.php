@extends('app')
@section('content')
<h1>Create a New Brand</h1>
@include ('errors.list')

{!! Form::open(['url'=>'/authors/create']) !!}

{!! Form::label('text', 'Brand Name') !!}
{!! Form::text('author_name',null,['class'=>'form-control']) !!}

{!! Form::submit('Add New Brand',['class'=>'btn btn-primary form-control']) !!}

{!! Form::close() !!}


@stop