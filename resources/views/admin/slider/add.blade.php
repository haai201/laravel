

@extends('layout.admin')

@section('title')
<title>Thêm Silder || Nhã Dương</title>
@endsection
@section('css')
<link rel="stylesheet" href="{{asset('admins/slider/add/add.css')}}">
@endsection
@section('content')
<div class="content-wrapper">
  
      @include('past.content-header', ['name' => 'Slider', 'key' => 'Add'])
    <!-- Main content -->
    <div class="content">
      <div class="container-fluid">
        <div class="row">
        <div class="col-sm-6">
          
        <form action="{{ route('slider.store')}}" method="post" enctype="multipart/form-data">
          @csrf
  <div class="form-group">
    <label>Tên slider
    </label>
    <input type="text" class="form-control @error('name') is-invalid @enderror" name="name" value="{{old('name')}}" placeholder="Nhập tên">
    @error('name')
    <div class="alert alert-danger">{{ $message }}</div>
@enderror
  </div>
  <div class="form-group">
    <label>Mô tả</label>
    <textarea class="form-control  @error('name') is-invalid @enderror" name="description" rows="4">{{old('description')}}</textarea>
   @error('description')
    <div class="alert alert-danger">{{ $message }}</div>
@enderror
  </div>
  <div class="form-group">
    <label>Hình ảnh</label>
    <input type="file" class="form-control-file @error('image_path') is-invalid @enderror" name="image_path" >
    @error('image_path')
    <div class="alert alert-danger">{{ $message }}</div>
@enderror
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

