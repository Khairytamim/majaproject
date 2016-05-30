@extends('app')
@section('content')
<h1>Create a New Brand</h1>
@include ('errors.list')


{!! Form::open(['url'=>'/authors/create']) !!}
<div class="col-md-9">
    <div class="form-group">
{!! Form::label('text','Brand Name',['class' => 'control-label']) !!}
{!! Form::text('author_name',null,['class'=>'form-control']) !!}
    </div>
</div>
<div class="col-md-9">
    <div class="form-group">
    {!! Form::submit('Add New Brand',['class'=>'btn btn-primary form-control']) !!}
    </div>
</div>

{!! Form::close() !!}


@stop