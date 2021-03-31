<?php


namespace App\Http\Controllers;

use Illuminate\Http\Request;
use GrahamCampbell\ResultType\Result;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Routing\Route;
use Melihovv\ShoppingCart\Facades\ShoppingCart as art;
use PhpParser\Node\Expr\Print_;


class cartController extends Controller
{
    public function save_cart(Request $request){
        $productid = $request->productid;
        $quantity = $request->qt;
        $data = DB::table('tbl_product')->where('product_id',$productid)->get();
        $cartItem = Cart::add($productid, $quantity);
        return view('pages.cart.show_cart')->with('Product',$data);

    }
}
