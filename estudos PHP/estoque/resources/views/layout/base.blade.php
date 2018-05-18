<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="/css/app.css">
    <link rel="stylesheet" href="/css/custom.css">
    <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap-glyphicons.css" rel="stylesheet">
    <title>Estoque</title>
  </head>
  <body>
    <div class="container">
    <nav class="navbar navbar-default">
      <div class="container-fluid">
        <div class="navbar-header">
          <a class="navbar-brand" href="{{ action('ProdutoController@list') }}">
            Estoque Laravel
          </a>
        </div>
        <ul class="nav navbar-nav navbar-right">
          <li><a href="{{ action('ProdutoController@list') }}">Listagem</a></li>
          <li><a href="{{ action('ProdutoController@new') }}">Adicionar Produto</a></li>
        </ul>
      </div>
    </nav>
      @yield('content')

      <footer class="footer">
        <p>Aplication maded only to study </p>
      </footer>
    </div>
  </body>
</html>
