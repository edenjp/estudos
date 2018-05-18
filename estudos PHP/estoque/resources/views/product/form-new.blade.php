@extends('layout.base')

@section('content')
  <h1>Novo Produto</h1>
  <form action="/produtos/newIten" method="post">
    <input type="hidden"
      name="_token" value="{{{ csrf_token() }}}"/>

    <div class="form-group">
      <label>Nome</label>
      <input class="form-control" name="nome" value="{{ old('nome') }}"/>
    </div>
    <div class="form-group">
      <label>Descricao</label>
      <input class="form-control" name="description" value="{{ old('descricao') }}"/>
    </div>
    <div class="form-group">
      <label>Valor</label>
      <input class="form-control" name="value" value="{{ old('valor') }}"/>
    </div>
    <div class="form-group">
      <label>Quantidade</label>
      <input type="number" name="quantity" class="form-control" value="{{ old('quantidade') }}"/>
    </div>
    <button type="submit" class="btn btn-primary btn-block">Adicionar</button>
  </form>
@stop
