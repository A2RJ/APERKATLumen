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
        $router->get('/sendMail', 'PengajuanController@sendMail');
        $router->get('/pdf_pengajuan/{params}', 'PengajuanController@PDF_Pengajuan');
        $router->get('/destroy/{params}', 'PengajuanController@destroy');
        $router->get('/countMessage/{params}', 'PengajuanController@countMessage');
        $router->get('/countMessageSelf/{params}', 'PengajuanController@countMessageSelf');
        $router->get('/{params}', 'PengajuanController@show');
        $router->get('/delete/{params}', 'PengajuanController@hapus');
        $router->get('/byUser/{params}', 'PengajuanController@byUser');
        $router->get('/status/{params}', 'PengajuanController@status');
        $router->get('/revisiStatus/{params}', 'PengajuanController@revisiStatus');
        $router->get('/history/{params}', 'PengajuanController@history');
        $router->get('/validasi/{params}', 'PengajuanController@validasi');
        $router->get('/getGrafik/{params}', 'PengajuanController@getGrafik');
        $router->get('/pengajuanSubordinate/{params}', 'PengajuanController@pengajuanSubordinate');
        $router->get('/getSubordinatesGrafik/{params}', 'PengajuanController@getSubordinatesGrafik');
        $router->get('/showPengajuan/{params1}/{params2}', 'PengajuanController@showPengajuan');
        $router->post('/', 'PengajuanController@store');
        $router->post('/upload', 'PengajuanController@upload');
        $router->post('/approve/{params}', 'PengajuanController@approve');
        $router->post('/decline/{params}', 'PengajuanController@decline');
        $router->post('/{params}', 'PengajuanController@update');
    });

    $router->group(['prefix' => 'rkat'], function () use ($router) {
        $router->get('/', 'RKATController@index');
        $router->get('/destroy', 'RKATController@destroy');
        $router->get('/pdf_rkat', 'RKATController@PDF_RKAT');
        $router->get('/{params}', 'RKATController@show');
        $router->get('/pdf_rkat_id/{params}', 'RKATController@PDF_RKAT_Id');
        $router->get('/pdf_kode_rkat/{params}', 'RKATController@pdf_kode_rkat');
        $router->get('/delete/{params}', 'RKATController@hapus');
        $router->get('/kodeRKAT/{params}', 'RKATController@kodeRKAT');
        $router->get('/kodeRKATByValue/{params}', 'RKATController@kodeRKATByValue');
        $router->get('/byKode/{params}', 'RKATController@byKode');
        $router->post('/', 'RKATController@store');
        $router->post('/{params}', 'RKATController@update');
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
        $router->get('/destroy', 'UserController@destroy');
        $router->get('/rkatUser', 'UserController@rkatUser');
        $router->get('/struktur', 'UserController@struktur');
        $router->get('/{params}', 'UserController@show');
        $router->get('/delete/{params}', 'UserController@hapus');
        $router->get('/datauser/{params}', 'UserController@datauser');
        $router->get('/sub_struktur/{params}', 'UserController@sub_struktur');
        $router->get('/sub_sub_struktur/{params}', 'UserController@sub_sub_struktur');
        $router->post('/', 'UserController@store');
        $router->post('/{params}', 'UserController@update');
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
