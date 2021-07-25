
@extends('layout.admin')

@section('title')
<title>Sản phẩm || Nhã Dương</title>
@endsection

@section('content')
<div class="content-wrapper">

    @include('past.content-header', ['name' => 'Product', 'key' => 'List'])
    <!-- Main content -->
    <div class="content">
      <div class="container-fluid">
        <div class="row">
        <div class="col-sm-12">
          
        <a href="{{route ('product.create')}}" class="btn btn-success float-right m-2">Thêm</a>
      
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

    <tr>
      <th scope="row">1</th>
      <td>Laptop Msi GF63</td>
      <td>21.900.000</td>
      <td><img src="" alt=""></td>
      <td>Laptop</td>
      <td>
        <a href=""class="btn btn-warning">Edit</a>
          <a href="" class="btn btn-danger">Delete</a>
      </td>
    </tr>
 
  </tbody>
</table>
<div class="col-sm-12">

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



