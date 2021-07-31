

@extends('layout.admin')

@section('title')
<title>Thêm Sản Phẩm || Nhã Dương</title>
@endsection
@section('css')
<link href="{{ asset('vendors/select2/select2.min.css')}}" rel="stylesheet" />
@endsection


@section('content')
<div class="content-wrapper">
      @include('past.content-header', ['name' => 'Product', 'key' => 'Add'])
    
    <!-- Main content -->
    <div class="content">
      <div class="container-fluid">
        <div class="row">
        <div class="col-sm-6">
          
        <form action="{{ route('product.store')}}" method="post"" enctype="multipart/form-data">
          @csrf
  <div class="form-group">
    <label>Tên sản phẩm
    </label>
    <input type="text" class="form-control @error('name') is-invalid @enderror" name="name" placeholder="Nhập tên sản phẩm" value="{{old('name')}}">
    @error('name')
    <div class="alert alert-danger">{{ $message }}</div>
@enderror
    
  </div>
  <div class="form-group">
    <label>Giá sản phẩm
    </label>
    <input type="number" class="form-control @error('price') is-invalid @enderror" name="price" placeholder="Nhập giá sản phẩm" value="{{old('price')}}">
    @error('price')
    <div class="alert alert-danger">{{ $message }}</div>
@enderror
    
  </div>
  <div class="form-group">
    <label>Ảnh đại diện
    </label>
    <input type="file" class="form-control-file" name="feature_image_path">
    
  </div>
  <div class="form-group">
    <label>Ảnh chi tiết sản phẩm
    </label>
    <input type="file" multiple class="form-control-file" name="image_path[]">
    
  </div>

  <div class="form-group">
  <label>Chọn danh mục</label>
  <select class="form-control select2_init @error('category_id') is-invalid @enderror" name="category_id" value="{{old('category_id')}}">
  <option value="">Chọn danh mục</option>
  {{!!$htmlOption!!}}

</select>
@error('category_id')
    <div class="alert alert-danger">{{ $message }}</div>
@enderror
</div>
<div class="form-group">
<label>Nhập tag cho sản phẩm</label>
<select name="tags[]" class="form-control tags_select_choose" multiple="multiple" value="{{old('tag')}}">
</select>
</div>
        </div>
        <div class="form-group col-md-12">
    <label >Nhập nội dung</label>
    <textarea name="contents" class="form-control tinymce_editor_init @error('contents') is-invalid @enderror" > {{old('contents')}}</textarea>
    @error('contents')
    <div class="alert alert-danger">{{ $message }}</div>
@enderror
  </div>
  <div class="form-group col-md-12">
  <button type="submit" class="btn btn-primary float-right">Xác nhận</button></div>
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