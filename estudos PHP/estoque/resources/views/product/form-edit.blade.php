@extends('layout.base')

@section('content')
  <h1>Editar Produto</h1>
  <form action="{{action('ProdutoController@editItem', $id)}}" method="post">
    <input type="hidden"
      name="_token" value="{{{ csrf_token() }}}"/>

    <div class="form-group">
      <label>Nome</label>
      <input class="form-control" name="nome" value="{{ old('nome') }}"/>
    </div>
    <div class="form-group">
      <label>Descricao</label>
      <input class="form-control" name="description"
        value="{{ old('description') }}"/>
    </div>
    <div class="form-group">
      <label>Valor</label>
      <input class="form-control" name="value" value="{{ old('value') }}"/>
    </div>
    <div class="form-group">
      <label>Quantidade</label>
      <input type="number" name="quantity" class="form-control"
        value="{{ old('quantity') }}"/>
    </div>
    <button type="submit" class="btn btn-primary btn-block">Adicionar</button>
  </form>
@stop
