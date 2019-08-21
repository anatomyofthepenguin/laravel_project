@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card">
                    <div class="card-header">Добавление категории</div>

                    <form action="{{route('admin.categories.add')}}" method="POST" class="p-3">
                        @csrf
                        <div class="form-group row">
                            <label for="name" class="col-sm-2 col-form-label">Название</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="name" placeholder="Название" name="name">
                            </div>
                        </div>

                        @if($errors->has('name'))
                            <div class="alert alert-danger">{{$errors->first('name')}}</div>
                        @endif

                        <div class="form-group row">
                            <label for="name" class="col-sm-2 col-form-label">Описание</label>
                            <div class="col-sm-10">
                                <textarea type="text" class="form-control" id="descr" placeholder="Описание" name="descr"></textarea>
                            </div>
                        </div>
                        @if($errors->has('descr'))
                            <div class="alert alert-danger">{{$errors->first('descr')}}</div>
                        @endif

                        <button type="submit" class="btn btn-primary">Добавить</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
@endsection
