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
        if (Schema::hasTable('categories')) {
            $categories = Category::all();
            view()->share("categories", $categories);
        }

        if (Schema::hasTable('products')) {
            $randomProducts = Product::all();
            if ($randomProducts->isNotEmpty()) {
                $randomProduct = $randomProducts->random(1)->first();
                view()->share("randomProduct", $randomProduct);
            }
        }
    }
}
