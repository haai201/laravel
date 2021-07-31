

@extends('layout.admin')

@section('title')
<title>Thêm Setting || Nhã Dương</title>
@endsection
<style>
  .alert-danger {
    margin-top: 7px !important;
}
</style>

@section('content')
<div class="content-wrapper">

      @include('past.content-header', ['name' => 'Setting', 'key' => 'Add'])
    <!-- Main content -->
    <div class="content">
      <div class="container-fluid">
        <div class="row">
        <div class="col-sm-6">
          
        <form action="{{ route('settings.store') .'?type='.request()->type}}" method="post">
          @csrf
  <div class="form-group">
    <label>Config Key:</label>
    <input type="text" class="form-control @error('config_key') is-invalid @enderror" name="config_key" placeholder="Nhập config key">
    @error('config_key')
    <div class="alert alert-danger">{{ $message }}</div>
@enderror
  </div>
  @if(request()->type === 'Text')
  <div class="form-group">
    <label>Config Value:</label>
    <input type="text" class="form-control @error('config_value') is-invalid @enderror" name="config_value" placeholder="Nhập config value">
    @error('config_value')
    <div class="alert alert-danger">{{ $message }}</div>
@enderror
  </div>
  @elseif(request()->type === 'Textarea')
  <div class="form-group">
    <label>Config Value:</label>
    <textarea class="form-control @error('config_value') is-invalid @enderror" name="config_value" placeholder="Nhập config value" rows="5"></textarea>
    @error('config_value')
    <div class="alert alert-danger">{{ $message }}</div>
@enderror
  </div>
  @endif
  <!-- <div class="form-group">
    <label>Tên danh mục</label>
    <input type="text" class="form-control" name="name" placeholder="Nhập tên danh mục">
    
  </div> -->
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

