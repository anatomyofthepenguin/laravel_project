<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Model;
use Faker\Generator as Faker;

$factory->define(\App\Product::class, function (Faker $faker) {
    return [
        "category_id" => rand(1, 2),
        "name" => $faker->sentence(2),
        "price" => rand(1000, 100000),
        "photo" => $faker->imageUrl(616, 353),
        "descr" => $faker->text("500")
    ];
});
