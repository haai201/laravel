
@extends('layout.admin')

@section('title')
<title>Sản phẩm || Nhã Dương</title>
@endsection
@section('css')
<link rel="stylesheet" href="{{asset('admins/product/index/list.css')}}">
@endsection
@section('js')
<script src="{{asset('admins/admin/index/list.js')}}"></script>
<script src="{{asset('vendors/sweetalert2/sweetalert2@11.js')}}"></script>
@endsection
@section('content')
<div class="content-wrapper">

    @include('past.content-header', ['name' => 'Product', 'key' => 'List'])
    <!-- Main content -->
    <div class="content">
      <div class="container-fluid">
        <div class="row">
        <div class="col-sm-12">
        @can('product-add')
        <a href="{{route ('product.create')}}" class="btn btn-success float-right m-2">Thêm</a>@endcan
        @include('sweetalert::alert')
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
      @can('product-edit')
        <a href="{{ route('product.edit', ['id' => $productItem->id])}}"class="btn btn-warning">Edit</a>@endcan 
        @can('product-delete')
          <a href="" data-url="{{route('product.delete',['id' => $productItem->id])}}" class="btn btn-danger action_delete">Delete</a>@endcan
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



