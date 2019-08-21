@extends('layouts.main')

@section('content')
<div class="content-middle">
    <div class="content-head__container">
        <div class="content-head__title-wrap">
            <div class="content-head__title-wrap__title bcg-title">Все товары @isset($category) категории {{ $category }} @endisset</div>
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
        <div class="products-columns">
            @foreach($products as $product)
                <div class="products-columns__item">
                    <div class="products-columns__item__title-product"><a href="#" class="products-columns__item__title-product__link">{{ $product->name }}</a></div>
                    <div class="products-columns__item__thumbnail"><a href="{{route('products.view', $product->id)}}" class="products-columns__item__thumbnail__link"><img src="{{ $product->photo }}" alt="Preview-image" class="products-columns__item__thumbnail__img"></a></div>
                    <div class="products-columns__item__description"><span class="products-price">{{ $product->price }} руб</span><a href="{{route('products.view', $product->id)}}" class="btn btn-blue">Купить</a></div>
                </div>
            @endforeach
        </div>
    </div>
    <div class="content-footer__container">
        <ul class="page-nav">
            @if($products->previousPageUrl())
                <li class="page-nav__item"><a href="{{ $products->previousPageUrl() }}" class="page-nav__item__link"><i class="fa fa-angle-double-left"></i></a></li>
            @endif
            @for ($page = 1; $page <= $products->lastpage(); $page++)
                <li class="page-nav__item"><a href="{{ $products->url($page) }}" class="page-nav__item__link">{{$page}}</a></li>
            @endfor
            @if($products->nextPageUrl())
                <li class="page-nav__item"><a href="{{ $products->nextPageUrl() }}" class="page-nav__item__link"><i class="fa fa-angle-double-right"></i></a></li>
            @endif
        </ul>
    </div>
</div>
@endsection
