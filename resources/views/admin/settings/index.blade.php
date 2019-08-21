@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card">
                    <div class="card-header">Настройки</div>

                    <form action="{{route('admin.settings.save')}}" method="POST" class="p-3">
                        @csrf

                        <div class="form-group row">
                            <label for="name" class="col-sm-2 col-form-label">Email Для уведомлений</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="email" placeholder="email" name="email" value="{{$email}}">
                            </div>
                        </div>
                        @if($errors->has('email'))
                            <div class="alert alert-danger">{{$errors->first('email')}}</div>
                        @endif

                        <button type="submit" class="btn btn-primary">Сохранить</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
@endsection
