@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card">
                    <div class="card-header">Изменение продукта</div>

                    <form action="{{route('admin.products.save')}}" method="POST" class="p-3" enctype="multipart/form-data">
                        @csrf
                        <div class="form-group row">
                            <label for="name" class="col-sm-2 col-form-label">Название</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="name" placeholder="Название" name="name" value="{{$product->name}}">
                            </div>
                        </div>

                        @if($errors->has('name'))
                            <div class="alert alert-danger">{{$errors->first('name')}}</div>
                        @endif

                        <div class="form-group row">
                            <label for="name" class="col-sm-2 col-form-label">Описание</label>
                            <div class="col-sm-10">
                                <textarea type="text" class="form-control" id="descr" placeholder="Описание" name="descr">{{$product->descr}}</textarea>
                            </div>
                        </div>
                        @if($errors->has('descr'))
                            <div class="alert alert-danger">{{$errors->first('descr')}}</div>
                        @endif
                        <div class="form-group row">
                            <div class="input-group mb-3">
                                <div class="input-group-prepend">
                                    <label class="input-group-text" for="inputGroupSelect01">Категория</label>
                                </div>
                                <select class="custom-select" id="inputGroupSelect01" name="category_id">
                                    @foreach($categories as $category)
                                        <option value="{{$category->id}}">{{$category->name}}</option>
                                    @endforeach
                                </select>
                            </div>
                        </div>
                        @if($errors->has('category'))
                            <div class="alert alert-danger">{{$errors->first('category')}}</div>
                        @endif

                        <div class="form-group row">
                            <label for="name" class="col-sm-2 col-form-label">Цена</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="price" placeholder="Цена" name="price" value="{{$product->price}}">
                            </div>
                        </div>
                        @if($errors->has('price'))
                            <div class="alert alert-danger">{{$errors->first('category')}}</div>
                        @endif

                        <div class="form-group row">
                            <label for="name" class="col-sm-2 col-form-label">Фото</label>
                            <div class="col-sm-10">
                                <input type="file" class="form-control" id="photo" placeholder="Цена" name="photo">
                            </div>
                        </div>
                        @if($errors->has('photo'))
                            <div class="alert alert-danger">{{$errors->first('photo')}}</div>
                        @endif

                        <input type="hidden" name="id" value="{{$product->id}}">
                        <input type="hidden" name="cur_photo" value="{{$product->photo}}">

                        <button type="submit" class="btn btn-primary">Сохранить</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
@endsection
