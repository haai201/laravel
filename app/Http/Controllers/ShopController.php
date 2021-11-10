<?php

namespace App\Http\Controllers;
use App\Product;

use Illuminate\Http\Request;

class ShopController extends Controller
{
    private $product;
    public function __construct(Product $product)
    {
        $this->product = $product;
    }
    public function index(){
            // The user is logged in...
            $products = $this->product->latest()->paginate(5);
        
    
        return view('admin.shop.index', compact('products'));
        
    }
    public function addToCart($id){
        // session()->forget('cart');
        // dd('end');
        //  session()->flush('cart');
        // session()->flush();
        $product = Product::find($id);
        $cart = session()->get('cart');
        if (isset($cart[$id])){
            $cart[$id]['quantity'] =$cart[$id]['quantity'] + 1;
        }else{
            $cart[$id] = [
                'name'=>$product->name,
                'price'=>$product->price,
                'quantity'=> 1,
                'images' =>$product->feature_image_path,
            ];
        }
        session()->put('cart', $cart);
        return response()->json([
            'code' => 200,
            'message' =>'success'
        ],status: 200);
    }
    public function showCart(){
            $carts = session()->get('cart');
        return view('admin.shop.cart',compact('carts'));
    }
    public function updateCart(Request $request){
        if($request->id &&$request-> quantity){
            $carts = session()->get('cart');
            $carts[$request->id]['quantity'] = $request->quantity;
            session()->put('cart', $carts);
            $carts = session()->get('cart');
            $cartComponent =  view('admin/shop/components/cart_component', compact('carts'))->render();
            return response()->json([
                'cart_component'=> $cartComponent, 'code' => 200
            ], status: 200);

        }
    }
    public function deleteCart(Request $request){
        if($request->id){
            $carts = session()->get('cart');
            unset($carts[$request->id]);
            session()->put('cart', $carts);
            $carts = session()->get('cart');
            $cartComponent =  view('admin/shop/components/cart_component', compact('carts'))->render();
            return response()->json(['cart_component'=> $cartComponent, 'code' => 200], status: 200);
            
        }
    }
}
