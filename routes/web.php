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



Route::get('/admin', 'AdminController@loginAdmin');
Route::post('/admin', 'AdminController@postloginAdmin');
// Route::get('/home', function () {
//     return view('home');
// });

Route::prefix('admin')->group(function () {
    //Danh mục sản phẩm
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
        Route::get('/edit/{id}', 
        [
            'as' =>'categories.edit',
            'uses'=>'CategoryController@edit'
            
        ]); 
        Route::post('/update/{id}', 
        [
            'as' =>'categories.update',
            'uses'=>'CategoryController@update'
            
        ]); 
        Route::get('/delete/{id}', 
        [
            'as' =>'categories.delete',
            'uses'=>'CategoryController@delete'
            
        ]); 
    });
    //Menu
    Route::prefix('menus')->group(function () {
        Route::get('/', 
        [
            'as' =>'menus.index',
            'uses'=>'MenuController@index'
            
        ]); 
        Route::get('/create', 
        [
            'as' =>'menus.create',
            'uses'=>'MenuController@create'
            
        ]); 
        Route::post('/store', 
        [
            'as' =>'menus.store',
            'uses'=>'MenuController@store'
            
        ]);
        Route::get('/edit/{id}', 
        [
            'as' =>'menus.edit',
            'uses'=>'MenuController@edit'
            
        ]);
        Route::post('/update/{id}', 
        [
            'as' =>'menus.update',
            'uses'=>'MenuController@update'
            
        ]);  
        Route::get('/delete/{id}', 
        [
            'as' =>'menus.delete',
            'uses'=>'MenuController@delete'
            
        ]); 
    });
    
    //Product
    Route::prefix('product')->group(function () {
        Route::get('/', 
        [
            'as' =>'product.index',
            'uses'=>'AdminProductController@index'
            
        ]); 
        Route::get('/create', 
        [
            'as' =>'product.create',
            'uses'=>'AdminProductController@create'
            
        ]); 
        Route::post('/store', 
        [
            'as' =>'product.store',
            'uses'=>'AdminProductController@store'
            
        ]);
        Route::get('/edit/{id}', 
        [
            'as' =>'product.edit',
            'uses'=>'AdminProductController@edit'
            
        ]);
        Route::post('/update/{id}', 
        [
            'as' =>'product.update',
            'uses'=>'AdminProductController@update'
            
        ]);  
        Route::get('/delete/{id}', 
        [
            'as' =>'product.delete',
            'uses'=>'AdminProductController@delete'
            
        ]); 
    });
    //Slidẻr
    Route::prefix('slider')->group(function () {
        Route::get('/', 
        [
            'as' =>'slider.index',
            'uses'=>'SliderAdminController@index'
            
        ]); 
        Route::get('/create', 
        [
            'as' =>'slider.create',
            'uses'=>'SliderAdminController@create'
            
        ]); 
        Route::post('/store', 
        [
            'as' =>'slider.store',
            'uses'=>'SliderAdminController@store'
            
        ]);
        Route::get('/edit/{id}', 
        [
            'as' =>'slider.edit',
            'uses'=>'SliderAdminController@edit'
            
        ]);
        Route::post('/update/{id}', 
        [
            'as' =>'slider.update',
            'uses'=>'SliderAdminController@update'
            
        ]);  
        Route::get('/delete/{id}', 
        [
            'as' =>'slider.delete',
            'uses'=>'SliderAdminController@delete'
            
        ]); 
       
    });
    Route::prefix('settings')->group(function () {
        Route::get('/', 
        [
            'as' =>'settings.index',
            'uses'=>'AdminSettingController@index'
            
        ]); 
        Route::get('/create', 
        [
            'as' =>'settings.create',
            'uses'=>'AdminSettingController@create'
            
        ]); 
        Route::post('/store', 
        [
            'as' =>'settings.store',
            'uses'=>'AdminSettingController@store'
            
        ]);
        Route::get('/edit/{id}', 
        [
            'as' =>'settings.edit',
            'uses'=>'AdminSettingController@edit'
            
        ]);
        Route::post('/update/{id}', 
        [
            'as' =>'settings.update',
            'uses'=>'AdminSettingController@update'
            
        ]);  
        Route::get('/delete/{id}', 
        [
            'as' =>'settings.delete',
            'uses'=>'AdminSettingController@delete'
            
        ]); 
       
    });
});



    

Auth::routes();

Route::get('/', 'HomeController@index')->name('home');

Auth::routes();

Route::get('/', 'HomeController@index')->name('home');
