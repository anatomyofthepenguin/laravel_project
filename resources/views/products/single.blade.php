@extends('layouts.main')

@section('content')
<div class="content-middle">
    <div class="content-head__container">
        <div class="content-head__title-wrap">
            <div class="content-head__title-wrap__title bcg-title">{{ $product->name }} @isset($category) в разделе {{ $category }}@endisset</div>
        </div>
        <div class="content-head__search-block">
            <div class="search-container">
                <form class="search-container__form">
                    <input type="text" class="search-container__form__input">
                    <button class="search-container__form__btn">search</button>
                </form>
            </div>
        </div>
    </div>
    <div class="content-main__container">
        <div class="product-container">
            <div class="product-container__image-wrap"><img src="{{ $product->photo }}" class="image-wrap__image-product"></div>
            <div class="product-container__content-text">
                <div class="product-container__content-text__title">{{ $product->name }}</div>
                <div class="product-container__content-text__price">
                    <div class="product-container__content-text__price__value">
                        Цена: <b>{{ $product->price }}</b>
                        руб
                    </div><button class="btn btn-blue" data-toggle="modal" data-target="#orderModal">Купить</button>
                </div>
                <div class="product-container__content-text__description">
                    <p>{{ $product->descr }}</p>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="modal fade" id="orderModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Сделать заказ</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                @guest
                    <p>Что бы сделать заказ необходимо <a href="{{route('login')}}">авторизоваться</a></p>
                @endguest
                @auth
                    <div class="alert alert-danger" role="alert" style="display: none" id="errorMessage"></div>
                    <div class="alert alert alert-success" role="alert" style="display: none" id="successMessage">
                        Ваш заказ создан! <a href="#">Все заказы</a>
                    </div>
                    <div class="form-group">
                        <label for="exampleInputEmail1">Email:</label>
                        <input type="email" class="form-control" id="userEmail" placeholder="Ваш Email" value="{{auth()->user()->email}}">
                    </div>
                    <div class="form-group">
                        <label for="exampleInputPassword1">Имя</label>
                        <input type="text" class="form-control" id="userName" placeholder="Ваше имя" value="{{auth()->user()->name}}">
                    </div>
                    <div class="form-group">
                        <p id="productPrice" data-price="{{ $product->price }}"> <strong>Цена:</strong> {{ $product->price }} руб.</p>
                    </div>
                    <input type="hidden" value="{{ $product->id }}" id="productId">
                    <button type="submit" class="btn btn-primary" id="orderCreate">Отправить</button>
                @endauth
            </div>
        </div>
    </div>
</div>
@endsection