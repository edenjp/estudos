<?php

use Illuminate\Database\Seeder;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        Model::unguard();

        $this->call('ProdutoTableSeeder');
    }
}

class ProdutoTableSeeder extends Seeder
{
    public function run()
    {
      DB::insert('insert into produtos
      (nome, valor, descricao, quantidade)
      values (?,?,?,?)',
      array('Geladerira', 5900.00, 'Side by side com gelo na porta', 2));

      DB::insert('insert into produtos
      (nome, valor, descricao, quantidade)
      values (?,?,?,?)',
      array('Fogão', 950.00, 'Painel automático e forno elétrico', 5));

      DB::insert('insert into produtos
      (nome, valor, descricao, quantidade)
      values (?,?,?,?)',
      array('Microondas', 1520.00, 'Manda SMS quando termina de esquentar', 1));
    }
}
