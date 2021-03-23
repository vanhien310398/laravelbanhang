<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use GrahamCampbell\ResultType\Result;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Routing\Route;
use PhpParser\Node\Expr\Print_;

session_start();
class HomeController extends Controller
{
    public function index(){
        $cate=DB::table('category_product')->where('category_status','0')->orderby('category_id','asc')->get();
        $brand=DB::table('tbl_brand')->where('brand_status','0')->orderby('brand_id','asc')->get();

        $product=DB::table('tbl_product')->where('product_status','0')->orderby('product_id','asc')->get();

        return view('pages.home')->with('category_product',$cate)->with('brand_product',$brand)->with('all_product',$product);
    }
}
