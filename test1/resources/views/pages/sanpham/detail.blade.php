@extends('welcome')
@Section('detail')
@foreach($all_product as $key=>$product)
<div class="product_image_area">
    <div class="container">
      <div class="row justify-content-center">
     
     
            <div class="single_product_img">
              <img height="500" width="300" src="{{('../public/upload/product/'.$product->product_image)}}" alt="#" class="img-fluid">
            </div>
           
          
        
        <div class="col-lg-8">
          <div class="single_product_text text-center">
            <h3><br>
                {{$product->product_name}}</h3>
            <p>
            {{$product->product_desc}}
            </p>
            <form action="{{URL::to('/save-cart')}}" method="POST">
            {{csrf_field()}}
            <div class="card_area">
                <div class="product_count_area">
                    <p>Quantity</p>
                    <div class="product_count d-inline-block">
                        
                        <input class="product_count_item input-number" name="qt" type="number" value="1" min="0" max="10" />
                        <input name="productid" type="hidden" value="{{$product->product_id}}"/>
                       
                    </div>
                    <p>{{$product->product_gia}} VNĐ</p>
                </div>
              <button class="add_to_cart btn_3">
                 add to cart
              </button>
            </div>
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>
  @endforeach
  @endsection