<?php

namespace estoque\Http\Controllers;

use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Validator;
use estoque\Produto;
use Request;

class ProdutoController extends Controller
{
  public function list(){
    $produtos = Produto::all();
    return view('product.list')
        ->withProdutos($produtos);
  }

  public function show($id)
  {
    $productdata = Produto::find($id);

    if (empty($productdata)) {
      return "Esse produto não existe";
    }

    return view('product.details')->with('p', $productadata);
  }

  public function new()
  {
    return view('product.form-new');
  }

  public function newIten()
  {
    $validator = Validator::make(
      ['nome' => Request::input('nome')],
      ['nome' => 'required|min:5']
    );

    if ($validator->fails()) {
      return redirect()->action('ProdutoController@new');
    }

    Produto::create(Request::all());

    return redirect()->action('ProdutoController@list')
			->withInput(Request::only('nome'));
  }

  public function listJson()
  {
    $produtos = Produto::all();

    return response()->json($produtos);
  }

  public function remove($id)
  {
    $product = Produto::find($id);
    $product->delete();

    return redirect()
      ->action('ProdutoController@list');
  }

  public function getEditItem($id)
  {
    $product = Produto::find($id);

    return view('product.form-edit',compact('product','id'));
    // return $product;
  }

  public function editItem($id)
  {
    $product = Produto::find($id);

    $product->nome = Request::input('nome');
    $product->descricao = Request::input('description');
    $product->valor = Request::input('value');
    $product->quantidade = Request::input('quantity');
    $product->save();

    return redirect()->action('ProdutoController@list');
  }
}
