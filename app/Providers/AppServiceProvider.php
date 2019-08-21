<?php

namespace App\Providers;

use App\Category;
use App\Product;
use Illuminate\Support\Facades\Schema;
use Illuminate\Support\ServiceProvider;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        Schema::defaultStringLength(191);
        $categories = Category::all();
        $randomProduct = Product::all()->random(1)->first();
        view()->share("categories", $categories);
        view()->share("randomProduct", $randomProduct);
    }
}
