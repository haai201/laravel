@extends('layout.admin')

@section('title')
<title>Sửa Sản Phẩm || Nhã Dương</title>
@endsection
@section('css')
<link href="{{ asset('vendors/select2/select2.min.css')}}" rel="stylesheet" />
<link href="{{ asset('admins/product/add/add.css')}}" rel="stylesheet" />
@endsection


@section('content')
<div class="content-wrapper">
  @include('past.content-header', ['name' => 'Product', 'key' => 'Edit'])
  <!-- Main content -->
  <div class="content">
    <div class="container-fluid">
      <div class="row">
        <div class="col-sm-6">
          <form action="{{ route('product.update', ['id'=>$product->id]) }}" method="post" enctype=" multipart/form-data">
            @csrf
            <div class="form-group">
              <label>Tên sản phẩm</label>
              <input type="text" class="form-control" name="name" placeholder="Nhập tên sản phẩm" value="{{$product->name}}">

            </div>
            <div class="form-group">
              <label>Giá sản phẩm
              </label>
              <input type="text" class="form-control" name="price" placeholder="Nhập giá sản phẩm" value="{{$product-> price}}">

            </div>
            <div class="form-group">
              <label>Ảnh đại diện
              </label>
              <input type="file" class="form-control-file" name="feature_image_path">
              <div class="col-md-4 feature_image_container">
                <div class="row">
                  <img class="feature_image" src="{{$product->feature_image_path}}" alt="">
                </div>

              </div>
            </div>
            <div class="form-group">
              <label>Ảnh chi tiết sản phẩm
              </label>
              <input type="file" multiple class="form-control-file" name="image_path[]">
              <div class="col-md-12 container_image_detail">
                <div class="row">
                  @foreach ($product->productImages as $productImageItem)
                  <div class="col-md-3">
                    <img class="image_detail_product" src="{{$productImageItem->image_path}}" alt="">
                    </div>
                    @endforeach
                  

                </div>
              </div>
            </div>

            <div class="form-group">
              <label>Chọn danh mục</label>
              <select class="form-control select2_init " name="category_id">
                <option value="">Chọn danh mục</option>
                {{!!$htmlOption!!}}

              </select>
            </div>
            <div class="form-group">
              <label>Nhập tag cho sản phẩm</label>
              <select name="tags[]" class="form-control tags_select_choose" multiple="multiple">
              @foreach($product->tags as $tagItem) 
              <option value="{{$tagItem->id}}"selected>{{$tagItem->name}}</option>
              @endforeach
              </select>
            </div>
        </div>
        <div class="form-group col-md-12">
          <label>Nhập nội dung</label>
          <textarea name="contents" class="form-control tinymce_editor_init">{{$product-> content}}</textarea>
        </div>
        <div class="form-group col-md-12">
          <button type="submit" class="btn btn-primary float-right">Xác nhận</button>
        </div>
        </form>
      </div>
    </div>
  </div>

</div>

@endsection

@section('js')
<script src="{{ asset('vendors/select2/select2.min.js')}}"></script>
<!-- <script src="//cdn.tinymce.com/4/tinymce.min.js"></script> -->
<script src="https://cdn.tiny.cloud/1/9rdaqf53jcwt5kz1nrzxu7oxztulr8ykd4kp044jm5rdmfat/tinymce/5/tinymce.min.js" referrerpolicy="origin"></script>
<script src="{{ asset('admins/product/add/add.js')}}"></script>


@endsection