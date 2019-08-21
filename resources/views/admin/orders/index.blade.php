@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <table class="table">
            <thead>
            <tr>
                <th scope="col">#</th>
                <th scope="col">email</th>
                <th scope="col">user_id</th>
                <th scope="col">product_id</th>
                <th scope="col">Цена</th>
                <th scope="col">Создано</th>
                <th scope="col">Обновлено</th>
            </tr>
            </thead>
            <tbody>
                @foreach($orders as $order)
                <tr>
                    <th scope="row">{{$order->id}}</th>
                    <td>{{$order->email}}</td>
                    <td>{{$order->user_id}}</td>
                    <td>{{$order->product_id}}</td>
                    <td>{{$order->total}}</td>
                    <td>{{$order->created_at}}</td>
                    <td>{{$order->updated_at}}</td>
                </tr>
                @endforeach
            </tbody>
            </table>
            {{ $orders->links() }}
        </div>
    </div>
</div>
@endsection
