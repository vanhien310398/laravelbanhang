<?php

namespace App\Http\Controllers;

use GrahamCampbell\ResultType\Result;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Routing\Route;
use PhpParser\Node\Expr\Print_;

class productController extends Controller
{
    public function detail_product($product_id){
    
            $cate=DB::table('category_product')->where('category_status','0')->orderby('category_id','asc')->get();
            $brand=DB::table('tbl_brand')->where('brand_status','0')->orderby('brand_id','asc')->get();
            $product=DB::table('tbl_product')
            ->join('category_product','category_product.category_id','=','tbl_product.category_id')
            ->join('tbl_brand','tbl_brand.brand_id','=','tbl_product.brand_id')->where('tbl_product.product_id',$product_id)->get();
            return view('pages.sanpham.detail')->with('category_product',$cate)
            ->with('brand_product',$brand)->with('all_product',$product);
        
    }
}
