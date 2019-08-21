@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <a href="{{route('admin.products.create')}}" class="btn btn-primary btn-sm active" role="button" aria-pressed="true">Добавить</a>
        <div class="col-md-12">
            <table class="table">
            <thead>
            <tr>
                <th scope="col">#</th>
                <th scope="col">id категории</th>
                <th scope="col">Название</th>
                <th scope="col">Цена</th>
                <th scope="col">Фото</th>
                <th scope="col">Описание</th>
                <th scope="col">Создано</th>
                <th scope="col">Обновлено</th>
                <th scope="col">Действия</th>
            </tr>
            </thead>
            <tbody>
                @foreach($products as $product)
                <tr>
                    <th scope="row">{{$product->id}}</th>
                    <td>{{$product->category_id}}</td>
                    <td>{{$product->name}}</td>
                    <td>{{$product->price}}</td>
                    <td><img src="{{$product->photo}}" width="200px"></td>
                    <td>{{$product->descr}}</td>
                    <td>{{$product->created_at}}</td>
                    <td>{{$product->updated_at}}</td>
                    <td><a href="{{ route('admin.products.del', $product->id) }}">Удалить</a> /
                        <a href="{{ route('admin.products.edit', $product->id) }}">Изменить</a>
                    </td>
                </tr>
                @endforeach
            </tbody>
            </table>
            {{ $products->links() }}
        </div>
    </div>
</div>
@endsection
