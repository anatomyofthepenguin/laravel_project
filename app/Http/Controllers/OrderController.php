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

        $validate = Validator::make($request->all(), [
            'email' => 'required|email',
            'name' => 'required',
            'product_id' => 'required|exists:products,id'
        ]);

        if ($validate->fails()) {
            return response()->json(['error' => true]);
        }

        $order = new Order();
        $order->email = $request['email'];
        $order->user_id = Auth::id();
        $order->total = $request['price'];
        $order->product_id = $request['product_id'];
        $order->save();

        $admin = User::where("is_admin", 1)->first();
        if ($admin) {
            Mail::to($admin)->send(new OrderCreated(["order" => $order]));
        }

        return response()->json(['success'=> true]);
    }
}
