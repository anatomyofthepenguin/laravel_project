@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <a href="{{route('admin.categories.create')}}" class="btn btn-primary btn-sm active" role="button" aria-pressed="true">Добавить</a>
            <table class="table">
            <thead>
            <tr>
                <th scope="col">#</th>
                <th scope="col">Название</th>
                <th scope="col">Описание</th>
                <th scope="col">Создано</th>
                <th scope="col">Обновлено</th>
                <th scope="col">Действия</th>
            </tr>
            </thead>
            <tbody>
                @foreach($categories as $category)
                <tr>
                    <th scope="row">{{$category->id}}</th>
                    <td>{{$category->name}}</td>
                    <td>{{$category->descr}}</td>
                    <td>{{$category->created_at}}</td>
                    <td>{{$category->updated_at}}</td>
                    <td><a href="{{route('admin.categories.del', $category->id)}}">Удалить</a>
                        / <a href="{{route('admin.categories.edit', $category->id)}}">Изменить</a>
                    </td>
                </tr>
                @endforeach
            </tbody>
            </table>
            {{ $categories->links() }}
        </div>
    </div>
</div>
@endsection
