<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It is a breeze. Simply tell Lumen the URIs it should respond to
| and give it the Closure to call when that URI is requested.
|
*/


$router->get('/','ExampleController@index');


$router->group(['prefix' => 'api'], function () use ($router) {
    
// Products Apis
  
  $router->get('products',  ['uses' => 'ProductsController@listProducts']);

  $router->get('products/{id}', ['uses' => 'ProductsController@showProduct']);

  $router->post('products',['middleware' => 'auth' ,'uses' => 'ProductsController@create']);

  $router->delete('products/{id}', ['middleware' => 'auth' ,'uses' => 'ProductsController@delete']);

  $router->post('products/{id}/update', ['middleware' => 'auth' ,'uses' => 'ProductsController@update']);

  // Categories Api
   
$router->get('categories', ['uses' => 'ProductsController@listCategories']);
$router->get('categories/{id}', ['uses' => 'ProductsController@categoryProduct']);
});

?>