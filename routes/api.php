<?php

use Illuminate\Http\Request;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

Route::get('actividad/{actividad_id}/{id_item_actividad}', 'ActividadController@actividadWithItemsById');
Route::get('generalidadItems/{id_item_actividad}', 'GeneralidadItemsController@generalidadItemsById');

Route::resource('actividad', 'ActividadController');
Route::resource('itemactividad', 'ItemActividadController');
Route::resource('generalidadItems', 'GeneralidadItemsController');
