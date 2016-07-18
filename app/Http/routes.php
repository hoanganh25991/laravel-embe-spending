<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the controller to call when that URI is requested.
|
*/

use Illuminate\Support\Facades\Redirect;
use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    return Redirect::to("spends");
});
Route::auth();
Route::get('/home', 'HomeController@index');

Route::group(["middleware" => "auth"], function(){
    Route::get("spends", "SpendController@index");
    Route::get("spends/add", "SpendController@add");
    Route::get("spends/delete", "SpendController@delete");
    Route::get("spends/edit", "SpendController@edit");
    Route::get("spends/summary", "SpendController@summary");
});


