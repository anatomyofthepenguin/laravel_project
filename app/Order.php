<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Order extends Model
{
    protected $fillable = [
        'email', 'user_id', 'product_id', 'total'
    ];
}
