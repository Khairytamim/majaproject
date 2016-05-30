@extends('app')
@section('content')
<h1>Update Brand</h1>
<hr>
<div class="row">
    <div class="form-group">
        {!! Form::label('text', 'Brand Name')    !!}
        {!! Form::text('book_title',null,['class'=>'form-control']) !!}
        {!! Form::submit('Update Brand',['class'=>'btn btn-primary form-control']) !!}
    </div>
</div>

@stop