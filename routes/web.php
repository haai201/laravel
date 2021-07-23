<?php

use Illuminate\Support\Facades\Route;

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

// Route::get('/', function () {
//     return view('welcome');
// });
// Route::get('/login', 'LoginController@getLogin');
// Route::post('/login', 'LoginController@getLogin');
// Route::get('/logout', 'LoginController@getLogout');

Route::get('/', function () {
    return view('home');
});
Route::prefix('categories')->group(function () {
    Route::get('/index', 
    [
        'as' =>'categories.index',
        'uses'=>'CategoryController@index'
        
    ]); 
    Route::get('/create', 
    [
        'as' =>'categories.create',
        'uses'=>'CategoryController@create'
        
    ]); 
    Route::post('/store', 
    [
        'as' =>'categories.store',
        'uses'=>'CategoryController@store'
        
    ]); 
    Route::get('/edit', 
    [
        'as' =>'categories.edit',
        'uses'=>'CategoryController@edit'
        
    ]); 
    Route::get('/delete', 
    [
        'as' =>'categories.delete',
        'uses'=>'CategoryController@delete'
        
    ]); 
});