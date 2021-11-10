
@extends('layout.admin1')

@section('title')
<title>Shop || Nhã Dương</title>
@endsection
@section('css')
<link rel="stylesheet" href="{{asset('admins/product/index/list.css')}}">
<link rel="stylesheet" href="{{asset('vendors/Cart/button.css')}}">

@endsection
@section('js')
<script src="{{asset('admins/admin/index/list.js')}}"></script>
<script src="{{asset('vendors/sweetalert2/sweetalert2@11.js')}}"></script>
<script src="https://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous"></script>
<script  src="{{asset('vendors/Cart/addToCart.js')}}"></script>
@endsection
@section('content')
<div>
<nav class="navbar navbar-expand navbar-white navbar-light bg-light " style="box-shadow: 0 1px #DEE2E6;">
    <!-- Left navbar links -->
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
      </li>
      <li class="nav-item d-none d-sm-inline-block">
        <a href="http://127.0.0.1:8000/home" class="nav-link">Home</a>
      </li>
      <li class="nav-item d-none d-sm-inline-block">
        <a href="{{route('shop.index')}}" class="nav-link">Shop</a>
      </li>
    </ul>

    <!-- Right navbar links -->
    <ul class="navbar-nav ml-auto">
      <!-- Navbar Search -->
      <li class="nav-item">
        <a href="{{route('shop.showCart')}}"><i class="fas fa-shopping-cart">  Giỏ hàng</i></a> 
        </a>

      </li>

      <!-- Messages Dropdown Menu -->
    
    </ul>
  </nav>
    @include('past.content-header', ['name' => 'Shop', 'key' => 'Product'])
    <!-- Main content -->
    <div class="content">
      <div class="container-fluid">
        <div class="row">
        <div class="col-sm-12">
        <table class="table">
  <thead>

    <tr>
      <th scope="col">STT</th>
      <th scope="col">Tên sản phẩm</th>
      <th scope="col">Giá bán</th>
      <th scope="col">Hình ảnh</th>
      <th scope="col">Danh mục</th>
      <th scope="col">Action</th>
      <!-- <th scope="col">Action</th> -->
    </tr>
  </thead>
  <tbody>
@foreach($products as $productItem)

    <tr>
      <th scope="row"> {{$productItem-> id}}</th>
      <td> {{$productItem-> name}} </td>
      <td> {{number_format($productItem-> price)}}  VNĐ</td>
      <td>
      <img class="product_image" src="{{$productItem-> feature_image_path}}"  >
      </td>
      <td>{{optional($productItem->category)->name}} </td>
      <td>
        <a href="#" data-url="{{route('shop.addToCart',['id'=> $productItem->id])}}" class="btn btn-danger btn-sm add_to_cart" >Thêm vào giỏ hàng</a>
      </td>
    </tr>
 @endforeach
  </tbody>
</table>
<div class="col-sm-12">
{{$products->links()}}
</div>
</div>
          <!-- /.col-md-6 -->
        </div>
        <!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content -->
  </div>
@endsection



