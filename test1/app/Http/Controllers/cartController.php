<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use GrahamCampbell\ResultType\Result;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Routing\Route;
use PhpParser\Node\Expr\Print_;
use Melihovv\ShoppingCart\Facades\ShoppingCart as Cart;
class cartController extends Controller
{
    public function save_cart(Request $request){
        $productid = $request->id_hidden;
        $quantity = $request->qty;
        $product = DB::table('tbl_product')->where('Product_id',$productid)->get()->first();
        $data['product_id']=$product->product_id;
        $data['product_name']=$product->product_name;
        $data['product_gia']=$product->product_gia;
        $data['product_img']=$product->product_image;
        $product_cart = DB::table('cart')->where('Product_id',$productid)->get()->first();
        if($product_cart !=null){
            $data['product_qty'] = $product_cart->product_qty + (int)($quantity);
            DB::table('cart')->where('product_id',$productid)->update($data);
        }
        else{
            $data['product_qty']=(int)$quantity;
            DB::table('cart')->insert($data);
        }
      
        return redirect('/cart');
       
      
       
    }

    public function delete_cart($product_id){
        DB::table('cart')->where('product_id',$product_id)->delete();
        return redirect('/cart');
    }
    public function Show_cart(){
        $product = DB::table('cart')->get();

        return view('pages.sanpham.cart')->with('Cart_list',$product);
      
    }


  
}
