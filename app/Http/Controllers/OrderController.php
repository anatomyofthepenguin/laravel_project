<?php

namespace App\Http\Controllers;

use App\Mail\OrderCreated;
use App\Order;
use App\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\Validator;

class OrderController extends Controller
{
    public function create(Request $request)
    {
        $data = $request->only(['email', 'name', 'total', 'product_id']);
        $validate = Validator::make($data, [
            'email' => 'required|email',
            'name' => 'required',
            'product_id' => 'required|exists:products,id'
        ]);

        if ($validate->fails()) {
            return response()->json(['error' => true]);
        }

        $data['user_id'] = Auth::id();
        $order = Order::create($data);

        $admin = User::where("is_admin", 1)->first();
        if ($admin) {
            Mail::to($admin)->send(new OrderCreated(["order" => $order]));
        }

        return response()->json(['success'=> true]);
    }
}
