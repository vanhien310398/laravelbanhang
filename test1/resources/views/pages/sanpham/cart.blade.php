@extends('welcome')
@Section('cart')
<div class="slider-area ">
    <!-- Mobile Menu -->
    <div class="single-slider slider-height2 d-flex align-items-center" data-background="assets/img/hero/category.jpg">
        <div class="container">
            <div class="row">
                <div class="col-xl-12">
                    <div class="hero-cap text-center">
                        <h2>Card List</h2>
                    </div>
                </div>
            </div>
        </div>
    </div>
  </div>
  <!-- <?php



// $content =Cart::content();
// echo '<pre>';

// print_r($content);
// echo '</pre>';


  ?> -->
  <!-- slider Area End-->

  <!--================Cart Area =================-->
  <section class="cart_area section_padding">
    <div class="container">
      <div class="cart_inner">
        <div class="table-responsive">
          <table class="table">
            <thead>
              <tr>
                <th scope="col">Product</th>
                <th scope="col">Price</th>
                <th scope="col">Quantity</th>
                <th scope="col">Total</th>
                <th scope="col">active</th>
              </tr>
            </thead>
            <tbody>
              @foreach($Cart_list as $key=>$value)
              <tr>
                <td>
                  <div class="media">
                    <div class="d-flex">
                      <img src="{{('public/upload/product/'.$value->product_img)}}" alt=" "/>
                    </div>
                    <div class="media-body">
                      <p>{{$value->product_name}}</p>
                    </div>
                  </div>
                </td>
                <td>
                  <h5>{{$value->product_gia}} VNĐ</h5>
                </td>
                <td>
                  <div class="product_count">
                   
                   
                    <input class="input-number" type="number" value="{{$value->product_qty}}" min="0" max="10">
                   
                  </div>
                </td>
                <td>
                  <h5>{{$value->product_gia * $value->product_qty}} VNĐ</h5>
                </td>
                <td>
                <a onclick="return confirm('bạn muốn xóa sản phẩm khỏi giỏ hàng ?')" href="{{URL::to('/delete_cart/'.$value->product_id)}}" style="color:#FF0000" class="btn_2">X</a>
                </td>
              </tr>
              @endforeach 
             
              </tr>
              <tr class="bottom_button">
                <td>
                  <a class="btn_1" href="#">Update Cart</a>
                </td>
                <td></td>
                <td></td>
                <!-- <td>
                  <div class="cupon_text float-right">
                    <a class="btn_1" href="#">Close Coupon</a>
                  </div>
                </td> -->
              </tr>
              <tr>
                <td></td>
                <td></td>
                <td>
                  <h5>Subtotal</h5>
                </td>
                <td>
                  <h5><?php
                 ?> VNĐ</h5>
                </td>
              </tr>
              <!-- <tr class="shipping_area">
                <td></td>
                <td></td>
                <td>
                  <h5>Shipping</h5>
                </td>
                <td>
                  <div class="shipping_box">
                    <ul class="list">
                      <li>
                        Flat Rate: $5.00
                        <input type="radio" aria-label="Radio button for following text input">
                      </li>
                      <li>
                        Free Shipping
                        <input type="radio" aria-label="Radio button for following text input">
                      </li>
                      <li>
                        Flat Rate: $10.00
                        <input type="radio" aria-label="Radio button for following text input">
                      </li>
                      <li class="active">
                        Local Delivery: $2.00
                        <input type="radio" aria-label="Radio button for following text input">
                      </li>
                    </ul>
                    <h6>
                      Calculate Shipping
                      <i class="fa fa-caret-down" aria-hidden="true"></i>
                    </h6>
                    <select class="shipping_select">
                      <option value="1">Bangladesh</option>
                      <option value="2">India</option>
                      <option value="4">Pakistan</option>
                    </select>
                    <select class="shipping_select section_bg">
                      <option value="1">Select a State</option>
                      <option value="2">Select a State</option>
                      <option value="4">Select a State</option>
                    </select>
                    <input class="post_code" type="text" placeholder="Postcode/Zipcode" />
                    <a class="btn_1" href="#">Update Details</a>
                  </div>
                </td>
              </tr> -->
            </tbody>
          </table>
          <div class="checkout_btn_inner float-right">
            <a class="btn_1" href="#">Continue Shopping</a>
            <a class="btn_1 checkout_btn_1" href="#">Proceed to checkout</a>
          </div>
        </div>
      </div>
  </section>
  @endSection