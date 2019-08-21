@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card">
                    <div class="card-header">Dashboard</div>

                    <div class="card-body">
                        <ul class="list-group">
                            <li class="list-group-item"><a href="{{route('admin.categories')}}">Категории</a></li>
                            <li class="list-group-item"><a href="{{route('admin.products')}}">Товары</a></li>
                            <li class="list-group-item"><a href="{{route('admin.orders')}}">Заказы</a></li>
                            <li class="list-group-item"><a href="#">Уведомления</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
