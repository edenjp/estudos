<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Route::get('/produtos', 'ProdutoController@list');
Route::get('/produtos/new', 'ProdutoController@new');
Route::post('/produtos/newIten', 'ProdutoController@newIten');
Route::get('/produtos/show/{id}', 'ProdutoController@show')->where('id', '[0-9]+');
Route::get('/produtos/json', 'ProdutoController@listJson');
Route::get('/produtos/remove/{id}', 'ProdutoController@remove');
Route::get('/produtos/edit/{id}', 'ProdutoController@getEditItem');
Route::post('/produtos/edit/{id}', 'ProdutoController@editItem');
Route::get('home', 'HomeController@index');
Route::resource('login', 'LoginController');
Auth::routes();
Route::get('/home', 'HomeController@index')->name('home');
Route::get('auth/logout',[ 'uses' => 'Auth\LoginController@logout', 'as' => 'logout' ]);
