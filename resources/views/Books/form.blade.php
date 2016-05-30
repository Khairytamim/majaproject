<div class="form-group">
    {!! Form::label('text', 'Product Name')    !!}
    {!! Form::text('book_title',null,['class'=>'form-control']) !!}
</div>

<div class="well form-group">
    {!! Form::label('Upload Image') !!}
    {!! Form::file('image', null) !!}
</div>
<div class="form-group">
    {!! Form::label('Body','Description') !!}
    {!! Form::textarea('description',null,['class'=>'form-control']) !!}
</div>
<div class="form-group">
    {!! Form::label('labelAmount','Price') !!}
    <div class="input-group">
      <div class="input-group-addon">Rp</div>
      {!! Form::text('price',null,['class'=>'form-control','placeholder'=>"150000"]) !!}
    </div>
  </div>
<div class="form-group">
    {!! Form::label('text', 'Gender') !!}
    {!!  Form::select('select', ['men' => 'Men', 'women' => 'Women'],  'men', ['class' => 'form-control' ]) !!}
</div>
<div class="form-group">
    {!! Form::label('categories', 'Category') !!}
    {!! Form::select('categories[]', $categories, $boosCategorieList , ['class'=>'form-control','id'=>'authors_list','multiple']) !!}
</div>

<div class="form-group">
    {!! Form::label('authors', 'Brand:') !!}
    {!! Form::select('authors[]', $authors, $BookAuthorsList, ['class'=>'form-control','id'=>'authors_list2','multiple']) !!}
</div>

<div class="form-group">
    {!! Form::submit($submitButtonText,['class'=>'btn btn-primary form-control'])  !!}
</div>


