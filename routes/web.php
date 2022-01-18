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

$router->get('/g/{params}', 'PengajuanController@printPengajuan');

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
        $router->get('/transfer', 'PengajuanController@transfer');
        $router->get('/lpjKeuangan', 'PengajuanController@lpjKeuangan');
        $router->get('/belumLPJKeuangan', 'PengajuanController@belumLPJKeuangan');
        $router->get('/lpjKegiatan', 'PengajuanController@lpjKegiatan');
        $router->get('/belumLPJKegiatan', 'PengajuanController@belumLPJKegiatan');
        $router->get('/sendMail/{params}', 'PengajuanController@sendMail');
        $router->get('/pdf_pengajuan/{params}', 'PengajuanController@pdfById');
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
        $router->get('/pengajuanNeedApproved/{params}', 'PengajuanController@pengajuanNeedApproved');
        $router->get('/pengajuanSelesai/{params}', 'PengajuanController@pengajuanSelesai');
        $router->get('/getSubordinatesGrafik/{params}', 'PengajuanController@getSubordinatesGrafik');
        $router->get('/uploadrkat/{params}', 'PengajuanController@uploadrkat');
        $router->post('/', 'PengajuanController@store');
        $router->post('/upload', 'PengajuanController@upload');
        $router->post('/pdfByUSer/{params}', 'PengajuanController@pdfByUSer');
        $router->post('/deleteRows', 'PengajuanController@deleteRows');
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
        $router->post('/uploadRKAT', 'RKATController@uploadRKAT');
        $router->post('/postImport/{params}', 'RKATController@postImport');
        $router->post('/printRows', 'RKATController@printRows');
        $router->post('/deleteRows', 'RKATController@deleteRows');
        $router->post('/{params}', 'RKATController@update');
    });

    $router->group(['prefix' => 'pencairan'], function () use ($router) {
        $router->get('/{id}', 'PencairanController@index');
        $router->post('/', 'PencairanController@store');
        $router->get('/destroy/{id}', 'PencairanController@destroy');
    });

    $router->group(['prefix' => 'nonrkat'], function () use ($router) {
        $router->get('/destroy', 'NonRKATController@destroy');
        $router->get('listLPJKeuangan', 'NonRKATController@listLPJKeuangan');
        $router->get('listLPJKegiatan', 'NonRKATController@listLPJKegiatan');
        $router->get('listPencairan', 'NonRKATController@listPencairan');
        $router->get('belumUploadLPJKeuangan', 'NonRKATController@belumUploadLPJKeuangan');
        $router->get('belumUploadLPJKegiatan', 'NonRKATController@belumUploadLPJKegiatan');
        $router->get('getCompleted', 'NonRKATController@getCompleted');
        $router->get('/{params}', 'NonRKATController@index');
        $router->get('/pencairan/{params}', 'NonPencairanController@index');
        $router->get('/id/{params}', 'NonRKATController@show');
        $router->get('getLastValidate/{params}', 'NonRKATController@getLastValidate');
        $router->get('/deleteByUser/{params}', 'NonRKATController@deleteByUser');
        $router->get('/subdivisi/{params}', 'NonRKATController@subDivisi');
        $router->get('/subDivisiNeed/{params}', 'NonRKATController@subDivisiNeed');
        $router->post('/', 'NonRKATController@store');
        $router->post('/delete', 'NonRKATController@delete');
        $router->post('/approved', 'NonRKATController@approved');
        $router->post('/declined', 'NonRKATController@declined');
        $router->post('/upload', 'NonPencairanController@store');
        $router->post('/{params}', 'NonRKATController@update');
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
        $router->get('/getStruktur/{params}', 'UserController@getStruktur');
        $router->get('/getSub_struktur/{params}', 'UserController@getSub_struktur');
        $router->get('/getSub_sub_struktur/{params}', 'UserController@getSub_sub_struktur');
        $router->post('/', 'UserController@store');
        $router->post('/{params}', 'UserController@update');
        $router->post('/upload/{params}', 'UserController@upload');
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

// For testing only
$router->group(['prefix' => 'testing'], function () use ($router) {
    $router->get('next/{params}', 'NonRKATController@getNext');
    $router->get('listPencairan', 'NonRKATController@listPencairan');
    $router->get('listLPJKeuangan', 'NonRKATController@listLPJKeuangan');
    $router->get('listLPJKegiatan', 'NonRKATController@listLPJKegiatan');
    $router->get('belumUploadLPJKeuangan', 'NonRKATController@belumUploadLPJKeuangan');
    $router->get('belumUploadLPJKegiatan', 'NonRKATController@belumUploadLPJKegiatan');
    $router->get('getCompleted', 'NonRKATController@getCompleted');
    $router->get('getLastValidate/{params}', 'NonRKATController@getLastValidate');
    $router->get('dataPengajuan', 'PengajuanController@dataPengajuan');
    $router->get('dataValidasi', 'PengajuanController@dataValidasi');
    
    $router->get('debug', function () {

    });
});
