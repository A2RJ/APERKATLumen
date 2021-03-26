<?php

/** @var \Laravel\Lumen\Routing\Router $router */

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

$router->get('/', function () use ($router) {
    return response()->json([
        'app_version' => $router->app->version(),
        'author' => "Universitas Teknologi Sumbawa",
        'programmer' => "https://github.com/a2rj",
        'about_API' => "API SUBMISSION"
        ]);
});

$router->group(['prefix' => 'iku'], function () use ($router) {
    $router->get('/', 'IKUController@index');
    $router->get('/{params}', 'IKUController@show');
    $router->post('/', 'IKUController@store');
    $router->put('/{params}', 'IKUController@update');
    $router->delete('/{params}', 'IKUController@destroy');
});

$router->group(['prefix' => 'pengajuan'], function () use ($router) {
    $router->get('/', 'PengajuanController@index');
    $router->get('/{params}', 'PengajuanController@show');
    $router->post('/', 'PengajuanController@store');
    $router->put('/{params}', 'PengajuanController@update');
    $router->delete('/{params}', 'PengajuanController@destroy');
});

$router->group(['prefix' => 'rkat'], function () use ($router) {
    $router->get('/', 'RKATController@index');
    $router->get('/{params}','RKATController@show');
    $router->post('/','RKATController@store');
    $router->put('/{params}','RKATController@update');
    $router->delete('/{params}','RKATController@destroy');
});

$router->group(['prefix' => 'struktur'], function () use ($router) {
    $router->get('/', 'StrukturController@index');
    $router->get('/{params}', 'StrukturController@show');
    $router->post('/', 'StrukturController@store');
    $router->put('/{params}', 'StrukturController@update');
    $router->delete('/{params}', 'StrukturController@destroy');
});

$router->group(['prefix' => 'user'], function () use ($router) {
    $router->get('/', 'UserController@index');
    $router->get('/{params}', 'UserController@show');
    $router->post('/', 'UserController@store');
    $router->put('/{params}', 'UserController@update');
    $router->delete('/{params}', 'UserController@destroy');
});