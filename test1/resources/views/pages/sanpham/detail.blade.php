@extends('welcome')
@Section('detail')
@foreach($detail_p as $key=>$product )
<div class="product_image_area">
    <div class="container">
      <div class="row justify-content-center">
    
        <div class="col-lg-6">
          
            <div class="single_product_img">
              <img height="350" width="350"  src="{{('../public/upload/product/'.$product->product_image)}}" alt="#" >
            </div>
   
          
        </div>
        <div class="col-lg-6">
          <div class="single_product_text text-center">
            <h3>{{$product->product_name}}<br>
                </h3>
            <p>
            {{$product->product_desc}}
            </p>
            <form action="{{URL::to('/save_card')}}" method="Post">
            {{ Csrf_field() }}
            <div class="card_area">
                <div class="product_count_area">
                    <p>Quantity</p>
                    <div class="product_count d-inline-block">
                        <input name="id_hidden" type="hidden" value="{{$product->product_id}}">
                        <input name="qty" class="product_count_item input-number" type="number" value="1" min="0" max="10">
           
                    </div>
                    <p>{{$product->product_gia}}VNĐ</p>
                </div>

              <div class="add_to_cart">
              <button type="submit" class="btn_3">
              Add to cart</button>

              </div>
            </div>
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>
  @endforeach
  @endsection