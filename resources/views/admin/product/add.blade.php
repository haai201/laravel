

@extends('layout.admin')

@section('title')
<title>Thêm Sản Phẩm || Nhã Dương</title>
@endsection
@section('css')
<link href="{{ asset('vendors/select2/select2.min.css')}}" rel="stylesheet" />
<style>
  .select2-selection__choice{
    background-color: #343a40 !important;
  }
</style>
@endsection


@section('content')
<div class="content-wrapper">
      @include('past.content-header', ['name' => 'Product', 'key' => 'Add'])
    <!-- Main content -->
    <div class="content">
      <div class="container-fluid">
        <div class="row">
        <div class="col-sm-6">
          
        <form action="" method="post" enctype="multipart/form-data">
          @csrf
  <div class="form-group">
    <label>Tên sản phẩm
    </label>
    <input type="text" class="form-control" name="name" placeholder="Nhập tên sản phẩm">
    
  </div>
  <div class="form-group">
    <label>Giá sản phẩm
    </label>
    <input type="text" class="form-control" name="price" placeholder="Nhập giá sản phẩm">
    
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

 
  <label>Chọn danh mục</label>
  <select class="form-control select2_init " name="parent_id" >
  <option value="">Chọn danh mục</option>
  {{!!$htmlOption!!}}

</select>
<div class="form-group">
<label>Nhập tag cho sản phẩm</label>
<select name="tags[]" class="form-control tags_select_choose" multiple="multiple">
</select></div>
<div class="form-group">
    <label >Nhập nội dung</label>
    <textarea class="form-control" name="content" rows="3"></textarea>
  </div>
  
  <button type="submit" class="btn btn-primary float-right">Xác nhận</button>
</form>
</div>
          <!-- /.col-md-6 -->
        </div>
        <!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content -->
  </div>
  
@endsection

@section('js')
<script src="{{ asset('vendors/select2/select2.min.js')}}"></script>
<script>
  $(".tags_select_choose").select2({
    tags: true,
    tokenSeparators: [',', ' ']
  })
  $(".select2_init").select2({
    placeholder: "Chọn danh mục",
    allowClear: true
  })
    

</script>
@endsection