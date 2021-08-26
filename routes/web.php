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


Route::get('/clear-cache',function(){
    $exitCode = Artisan::call('cache:clear');
});

Route::get('/admin', 'AdminController@loginAdmin');
Route::post('/admin', 'AdminController@postloginAdmin');
// Route::get('/home', function () {
//     return view('home');
// });
Auth::routes();

Route::get('/', 'HomeController@index')->name('home');

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');

Route::prefix('admin')->group(function () {
    //Danh mục sản phẩm
    Route::prefix('categories')->group(function () {
        Route::get('/index', 
        [
            'as' =>'categories.index',
            'uses'=>'CategoryController@index',
            'middleware'=>'can:category-list'
            
        ]); 
        Route::get('/create', 
        [
            'as' =>'categories.create',
            'uses'=>'CategoryController@create',
            'middleware'=>'can:category-add'
            
        ]); 
        Route::post('/store', 
        [
            'as' =>'categories.store',
            'uses'=>'CategoryController@store'
            
        ]); 
        Route::get('/edit/{id}', 
        [
            'as' =>'categories.edit',
            'uses'=>'CategoryController@edit',
            'middleware'=>'can:category-edit'
            
        ]); 
        Route::post('/update/{id}', 
        [
            'as' =>'categories.update',
            'uses'=>'CategoryController@update'
            
        ]); 
        Route::get('/delete/{id}', 
        [
            'as' =>'categories.delete',
            'uses'=>'CategoryController@delete',
            'middleware'=>'can:category-delete'
            
        ]); 
    });
    //Menu
    Route::prefix('menus')->group(function () {
        Route::get('/', 
        [
            'as' =>'menus.index',
            'uses'=>'MenuController@index',
            'middleware'=>'can:menu-list'
            
        ]); 
        Route::get('/create', 
        [
            'as' =>'menus.create',
            'uses'=>'MenuController@create',
            'middleware'=>'can:menu-add'
            
        ]); 
        Route::post('/store', 
        [
            'as' =>'menus.store',
            'uses'=>'MenuController@store'
            
        ]);
        Route::get('/edit/{id}', 
        [
            'as' =>'menus.edit',
            'uses'=>'MenuController@edit',
            'middleware'=>'can:menu-edit'
            
        ]);
        Route::post('/update/{id}', 
        [
            'as' =>'menus.update',
            'uses'=>'MenuController@update'
            
        ]);  
        Route::get('/delete/{id}', 
        [
            'as' =>'menus.delete',
            'uses'=>'MenuController@delete',
            'middleware'=>'can:menu-delete'
            
        ]); 
    });
    
    //Product
    Route::prefix('product')->group(function () {
        Route::get('/', 
        [
            'as' =>'product.index',
            'uses'=>'AdminProductController@index',
            'middleware'=>'can:product-list',
            
        ]); 
        Route::get('/create', 
        [
            'as' =>'product.create',
            'uses'=>'AdminProductController@create',
            'middleware'=>'can:product-add',
            
        ]); 
        Route::post('/store', 
        [
            'as' =>'product.store',
            'uses'=>'AdminProductController@store'
            
        ]);
        Route::get('/edit/{id}', 
        [
            'as' =>'product.edit',
            'uses'=>'AdminProductController@edit',
            'middleware'=>'can:product-edit,id',
            
        ]);
        Route::post('/update/{id}', 
        [
            'as' =>'product.update',
            'uses'=>'AdminProductController@update'
            
        ]);  
        Route::get('/delete/{id}', 
        [
            'as' =>'product.delete',
            'uses'=>'AdminProductController@delete',
            'middleware'=>'can:product-delete',
            
        ]); 
    });
    //Slidẻr
    Route::prefix('slider')->group(function () {
        Route::get('/', 
        [
            'as' =>'slider.index',
            'uses'=>'SliderAdminController@index',
            'middleware'=>'can:slider-list',
            
        ]); 
        Route::get('/create', 
        [
            'as' =>'slider.create',
            'uses'=>'SliderAdminController@create',
            'middleware'=>'can:slider-add',
            
        ]); 
        Route::post('/store', 
        [
            'as' =>'slider.store',
            'uses'=>'SliderAdminController@store'
            
        ]);
        Route::get('/edit/{id}', 
        [
            'as' =>'slider.edit',
            'uses'=>'SliderAdminController@edit',
            'middleware'=>'can:slider-edit',
            
        ]);
        Route::post('/update/{id}', 
        [
            'as' =>'slider.update',
            'uses'=>'SliderAdminController@update'
            
        ]);  
        Route::get('/delete/{id}', 
        [
            'as' =>'slider.delete',
            'uses'=>'SliderAdminController@delete',
            'middleware'=>'can:slider-delete',
            
        ]); 
       
    });
    Route::prefix('settings')->group(function () {
        Route::get('/', 
        [
            'as' =>'settings.index',
            'uses'=>'AdminSettingController@index',
            'middleware'=>'can:setting-list',
            
        ]); 
        Route::get('/create', 
        [
            'as' =>'settings.create',
            'uses'=>'AdminSettingController@create',
            'middleware'=>'can:setting-add',
            
        ]); 
        Route::post('/store', 
        [
            'as' =>'settings.store',
            'uses'=>'AdminSettingController@store'
            
        ]);
        Route::get('/edit/{id}', 
        [
            'as' =>'settings.edit',
            'uses'=>'AdminSettingController@edit',
            'middleware'=>'can:setting-edit',
            
        ]);
        Route::post('/update/{id}', 
        [
            'as' =>'settings.update',
            'uses'=>'AdminSettingController@update'
            
        ]);  
        Route::get('/delete/{id}', 
        [
            'as' =>'settings.delete',
            'uses'=>'AdminSettingController@delete',
            'middleware'=>'can:setting-delete',
            
        ]); 
       
    });
    //User
    Route::prefix('users')->group(function () {
        Route::get('/', 
        [
            'as' =>'users.index',
            'uses'=>'AdminUserController@index',
            // 'middleware'=>'can:user-list',
            
        ]); 
        Route::get('/create', 
        [
            'as' =>'users.create',
            'uses'=>'AdminUserController@create',
            // 'middleware'=>'can:setting-add',
            
        ]); 
        Route::post('/store', 
        [
            'as' =>'users.store',
            'uses'=>'AdminUserController@store'
            
        ]);
        Route::get('/edit/{id}', 
        [
            'as' =>'users.edit',
            'uses'=>'AdminUserController@edit',
            // 'middleware'=>'can:setting-edit',
            
        ]);
        Route::post('/update/{id}', 
        [
            'as' =>'users.update',
            'uses'=>'AdminUserController@update'
            
        ]);  
        Route::get('/delete/{id}', 
        [
            'as' =>'users.delete',
            'uses'=>'AdminUserController@delete',
            // 'middleware'=>'can:setting-delete',
            
        ]); 
       
    });
    //Roles
    Route::prefix('roles')->group(function () {
        Route::get('/', 
        [
            'as' =>'roles.index',
            'uses'=>'AdminRoleController@index',
            'middleware'=>'can:role-list',
            
        ]); 
        Route::get('/create', 
        [
            'as' =>'roles.create',
            'uses'=>'AdminRoleController@create',
            'middleware'=>'can:role-add',
            
        ]); 
        Route::post('/store', 
        [
            'as' =>'roles.store',
            'uses'=>'AdminRoleController@store'
            
        ]);
        Route::get('/edit/{id}', 
        [
            'as' =>'roles.edit',
            'uses'=>'AdminRoleController@edit',
            'middleware'=>'can:role-edit',
            
        ]);
        Route::post('/update/{id}', 
        [
            'as' =>'roles.update',
            'uses'=>'AdminRoleController@update'
            
        ]);  
        Route::get('/delete/{id}', 
        [
            'as' =>'roles.delete',
            'uses'=>'AdminRoleController@delete',
            'middleware'=>'can:role-delete',
            
        ]); 
       
    });
    //Permission
    Route::prefix('permission')->group(function () {
        Route::get('/create', 
        [
            'as' =>'permission.create',
            'uses'=>'AdminPermissionController@create'
            
        ]); 
        Route::post('/store', 
        [
            'as' =>'permission.store',
            'uses'=>'AdminPermissionController@store'
            
        ]); 
       
    });
});



    


