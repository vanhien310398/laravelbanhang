<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class productController extends Controller
{
    public function detail_product($product_id){
        return view('pages.sanpham.detail');
    }
}
