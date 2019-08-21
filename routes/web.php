<?php

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

use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;

Route::get('/', 'HomeController@index')->name('home');

Auth::routes();

Route::get('/products', 'ProductController@index')->name('products');
Route::get('/products/category/{category?}', 'ProductController@index')->where('category', "\d+")->name('products.category');
Route::get('/products/view/{product}', 'ProductController@view')->where('product', "\d+")->name('products.view');

Route::post('/orders/create', 'OrderController@create')->middleware('auth');
Route::get('/orders', 'OrderController@create')->name('orders')->middleware('auth');

Route::group(['prefix' => 'admin', 'middleware' => 'checkAdmin'], function () {
    Route::get('', 'AdminController@index')->name('admin');

    Route::get('/categories', 'AdminController@getCategories')->name('admin.categories');
    Route::get('/categories/create', 'AdminController@createCategory')->name('admin.categories.create');
    Route::post('/categories/add', 'AdminController@addCategory')->name('admin.categories.add');
    Route::get('/categories/edit/{category}', 'AdminController@editCategory')->where('category', "\d+")->name('admin.categories.edit');
    Route::post('/categories/save', 'AdminController@saveCategory')->name('admin.categories.save');
    Route::get('/categories/delete/{category}', 'AdminController@delCategory')->where('category', "\d+")->name('admin.categories.del');

    Route::get('/products', 'AdminController@getProducts')->name('admin.products');
    Route::get('/products/create', 'AdminController@createProduct')->name('admin.products.create');
    Route::post('/products/add', 'AdminController@addProduct')->name('admin.products.add');
    Route::get('/products/edit/{product}', 'AdminController@editProduct')->where('product', "\d+")->name('admin.products.edit');
    Route::post('/products/save', 'AdminController@saveProduct')->name('admin.products.save');
    Route::get('/products/delete/{product}', 'AdminController@delProduct')->where('product', "\d+")->name('admin.products.del');

    Route::get('/orders', 'AdminController@getOrders')->name('admin.orders');

    Route::get('/settings', 'AdminController@settings')->name('admin.settings');
    Route::post('/settings/save', 'AdminController@saveSettings')->name('admin.settings.save');
});
