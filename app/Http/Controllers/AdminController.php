<?php

namespace App\Http\Controllers;

use App\Category;
use App\Http\Requests\CategoryRequest;
use App\Http\Requests\ProductRequest;
use App\Order;
use App\Product;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Storage;

class AdminController extends Controller
{
    public function index()
    {
        return view('admin.index');
    }

    public function getCategories()
    {
        $categories = Category::paginate(15);

        return view('admin.categories.index', ["categories" => $categories]);
    }

    public function createCategory()
    {
        return view('admin.categories.create');
    }

    public function addCategory(CategoryRequest $request)
    {
        $category = new Category();
        $category->name = $request->name;
        $category->descr = $request->descr;
        $category->save();

        return redirect()->route('admin.categories');
    }

    public function editCategory(Category $category)
    {
        return view('admin.categories.edit', ["category" => $category]);
    }

    public function saveCategory(CategoryRequest $request)
    {
        $category = Category::find($request->id);
        $category->name = $request->name;
        $category->descr = $request->descr;
        $category->save();

        return redirect()->route('admin.categories');
    }

    public function delCategory(Category $category)
    {
        $category->delete();
        return redirect()->route('admin.categories');
    }

    public function getProducts()
    {
        $products = Product::paginate(15);

        return view('admin.products.index', ["products" => $products]);
    }

    public function createProduct()
    {
        return view('admin.products.create');
    }

    public function addProduct(ProductRequest $request)
    {
        $path = $request->file('photo')->store('public');

        $product = new Product();
        $product->name = $request->name;
        $product->descr = $request->descr;
        $product->price = $request->price;
        $product->category_id = $request->category_id;
        $product->photo = Storage::url($path);
        $product->save();

        return redirect()->route('admin.products');
    }

    public function editProduct(Product $product)
    {
        return view('admin.products.edit', ["product" => $product]);
    }

    public function saveProduct(ProductRequest $request)
    {
        $product= Product::find($request->id);


        $product->name = $request->name;
        $product->descr = $request->descr;
        $product->price = $request->price;
        $product->category_id = $request->category_id;
        if ($request->file('photo')) {
            $path = $request->file('photo')->store('public');
            $product->photo = Storage::url($path);
        }
        $product->save();

        return redirect()->route('admin.products');
    }

    public function delProduct(Product $product)
    {
        $product->delete();
        return redirect()->route('admin.products');
    }

    public function getOrders()
    {
        $orders = Order::paginate(15);
        return view('admin.orders.index', ["orders" => $orders]);
    }

    public function settings()
    {
        $email = Auth::user()->email_notification;
        return view('admin.settings.index', ["email" => $email]);
    }

    public function saveSettings(Request $request)
    {
        $this->validate($request, [
           'email' => 'email|nullable'
        ]);

        $user = Auth::user();
        $user->email_notification = $request["email"];
        $user->save();

        return redirect()->route('admin.settings');
    }
}
