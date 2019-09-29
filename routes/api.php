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
// Route::get('loginUser','UsersController@login');

// Route::get('login', 'UsersController@login')->middleware("cors");
Route::post('login', 'UsersController@login')->middleware("cors");

Route::post('model', 'UsersController@login')->middleware("cors");

Route::group(['middleware' => 'cors'], function() {
    Route::get('model', 'ManufacturerController@index');
    Route::get('model/{id}', 'ManufacturerController@show');
    Route::post('model', 'ManufacturerController@store');
    Route::put('model/{id}', 'ManufacturerController@update');
    Route::delete('model/{id}', 'ManufacturerController@destroy');
});

Route::group(['middleware' => 'cors'], function() {
    Route::get('inventry', 'InventryController@index');
    Route::get('inventry/{id}', 'InventryController@show');
    Route::post('inventry', 'InventryController@store');
    Route::put('inventry/{id}', 'InventryController@update');
    Route::delete('inventry/{id}', 'InventryController@destroy');
});
Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

