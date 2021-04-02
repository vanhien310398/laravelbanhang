<?php

namespace App\Http\Controllers;


use Illuminate\Http\Request;
use GrahamCampbell\ResultType\Result;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Routing\Route;
use PhpParser\Node\Expr\Print_;

class productController extends Controller
{
    public function detail_product($product_id){
        $product= DB::table('tbl_product')->where('product_id',$product_id)->get();
        return view('pages.sanpham.detail')->with('detail_p',$product);
    }
    public function showproduct(){
        $product= DB::table('tbl_product')->get();
        return view('product_list')->with('product_l',$product);
        
    }
    public function showtimkiem(request $request){
        $key=$request->tim_kiem;
        $product= DB::table('tbl_product')->where("product_name","like","%".$key."%")->get();

        return view('Product_list')->with('product_s',$product);
    }
    
}


