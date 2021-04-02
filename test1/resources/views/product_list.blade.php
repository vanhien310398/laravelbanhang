@extends('Welcome')
@section('productlist')
<section class="product_list section_padding">
        <div class="container">
            <div class="row">
            
                <div class="col-md-4">
                    <div class="product_sidebar">
                        <div class="single_sedebar">
                            <form action="{{URL::to('/search')}}" method=post>
                            {{ Csrf_field() }}
                                <input type="text" name="tim_kiem" placeholder="Search keyword">
                                <i class="ti-search"></i>
                                <button class=btn_3 type=submit>Tìm Kiếm</button>
                           
                            </form>
                        </div>
               
                    </div>
                </div>
                <div class="col-md-8">
                    <div class="product_list">
                        <div class="row">
                        <?php
                            $product = isset($product_s)?$product_s:$product_l;
                        ?>


                        @foreach($product as $key=>$value)
                        <a href="{{URL::to('/chi-tiet-san-pham/'.$value->product_id)}}">
                            <div class="col-lg-6 col-sm-6">
                                <div class="single_product_item">
                                <img src="{{('public/upload/product/'.$value->product_image)}}" alt=""class="img-fluid">
                                    <h3> <a href="single-product.html">{{($value->product_name)}}</a> </h3>
                                    <p>{{($value->product_gia)}}</p>
                                </div>
                            </div>
                        </a>
                           @endforeach
                        </div>
                        <div class="load_more_btn text-center">
                            <a href="#" class="btn_3">Load More</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- product list part end-->
    
   
    @endsection