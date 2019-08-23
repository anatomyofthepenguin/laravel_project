<?php

namespace App\Http\Controllers;

use App\Category;
use App\Product;
use Illuminate\Http\Request;
use phpDocumentor\Reflection\Types\Integer;

class ProductController extends Controller
{
    const COUNT_ON_PAGE = 15;

    public function index(Category $category = null)
    {
        if (!$category) {
            $products = Product::paginate(15);
            return view('products.all', ["products" => $products]);
        }

        $products = Product::where('category_id', $category->id)->paginate(self::COUNT_ON_PAGE);
        return view('products.all', ["products" => $products, "category" => $category->name]);
    }

    public function view(Product $product)
    {
        if ($product->category_id) {
            $category = Category::find($product->category_id);
            return view('products.single', ["product" => $product, "category" => $category->name]);
        }

        return view('products.single', ["product" => $product]);
    }
}
