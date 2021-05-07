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

// use Illuminate\Support\Facades\Mail;

// class_alias('Illuminate\Support\Facades\Config', 'Coba');

// $data = array('name' => 'Arunkumar');
// Mail::send('mail', $data, function ($message) {
//     $message->to('xcz.ardiansyahputra2468@gmail.com', 'Arunkumar')->subject('Test Mail from Selva');
//     $message->from('gamesonly.a2rj@gmail.com', 'Selvakumar');
// });
// echo 'Email Sent. Check your inbox.';

// $data = [
//     'coba' => "Berhasil"
// ];

// $pdf = PDF::loadView('pengajuan', $data);
// return $pdf->download('pengajuan' . date("Y-m-d") . '.pdf');

$router->get('/', function () use ($router) {
    return response()->json([
        'app_version' => $router->app->version(),
        'vendor' => "Universitas Teknologi Sumbawa",
        'author' => "https://github.com/a2rj",
        'about_API' => "API SUBMISSION"
    ]);
});

$router->group(['middleware' => 'auth', 'prefix' => 'api'], function ($router) {
    $router->get('me', 'AuthController@me');
});

$router->group(['prefix' => 'api'], function () use ($router) {
    $router->post('register', 'AuthController@register');
    $router->post('login', 'AuthController@login');
    $router->post('logout', 'AuthController@logout');
    $router->post('refresh', 'AuthController@refresh');
});

$router->group(['middleware' => 'auth'], function () use ($router) {

    $router->group(['prefix' => 'pengajuan'], function () use ($router) {
        $router->get('/', 'PengajuanController@index');
        $router->get('/{params}', 'PengajuanController@show');
        $router->get('/byUser/{params}', 'PengajuanController@byUser');
        $router->get('/status/{params}', 'PengajuanController@status');
        $router->get('/history/{params}', 'PengajuanController@history');
        $router->get('/validasi/{params}', 'PengajuanController@validasi');
        $router->get('/pengajuanSubordinate/{params}', 'PengajuanController@pengajuanSubordinate');
        $router->post('/', 'PengajuanController@store');
        $router->post('/upload', 'PengajuanController@upload');
        $router->post('/approve/{params}', 'PengajuanController@approve');
        $router->post('/decline/{params}', 'PengajuanController@decline');
        $router->post('/{params}', 'PengajuanController@update');
        $router->delete('/{params}', 'PengajuanController@destroy');
    });

    $router->group(['prefix' => 'rkat'], function () use ($router) {
        $router->get('/', 'RKATController@index');
        $router->get('/kodeRKAT', 'RKATController@kodeRKAT');
        $router->get('/{params}', 'RKATController@show');
        $router->get('/byKode/{params}', 'RKATController@byKode');
        $router->post('/', 'RKATController@store');
        $router->put('/{params}', 'RKATController@update');
        $router->delete('/{params}', 'RKATController@destroy');
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
        $router->get('/rkatUser', 'UserController@rkatUser');
        $router->get('/{params}', 'UserController@show');
        $router->get('/datauser/{params}', 'UserController@datauser');
        $router->post('/', 'UserController@store');
        $router->put('/{params}', 'UserController@update');
        $router->delete('/{params}', 'UserController@destroy');
    });

    $router->group(['prefix' => 'iku'], function () use ($router) {
        $router->get('/', 'IKUController@index');
        $router->get('/child1/{params}', 'IKUController@getIkuChild1');
        $router->get('/child1ByID/{params}', 'IKUController@child1ByID');
        $router->get('/child2/{params}', 'IKUController@getIkuChild2');
        $router->get('/child2ByID/{params}', 'IKUController@child2ByID');
        $router->post('/', 'IKUController@store');
        $router->put('/{params}', 'IKUController@update');
        $router->delete('/{params}', 'IKUController@destroy');
    });
});
