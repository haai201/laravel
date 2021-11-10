

@extends('layout.admin')

@section('title')
<title>Thêm User || Nhã Dương</title>
@endsection
@section('css')
<link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet" />
<style>.select2-selection__choice {
    background-color: #343a40 !important;
    }
    .alert-danger {
    margin-top: 7px !important;
}
    </style>
@endsection
@section('js')
<script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script>
<script>
 $(".select2_init").select2({
    placeholder: "Chọn vai trò"
})
</script>
@endsection

@section('content')
<div class="content-wrapper">
  
      @include('past.content-header', ['name' => 'User', 'key' => 'Add'])
    <!-- Main content -->
    <div class="content">
      <div class="container-fluid">
        <div class="row">
        <div class="col-sm-6">
          
        <form action=" {{ route('users.store')}}" method="post" enctype="multipart/form-data">
          @csrf
  <div class="form-group">
    <label>Tên
    </label>
    <input type="text" class="form-control @error('name') is-invalid @enderror" name="name" value="{{old('name')}}" placeholder="Nhập tên">
    @error('name')
    <div class="alert alert-danger">{{ $message }}</div>
@enderror
  </div>
  <div class="form-group">
    <label>E-mail</label>
    <input type="text" class="form-control @error('name') is-invalid @enderror" name="email" value="{{old('email')}}" placeholder="Nhập E-mail">
    @error('email')
    <div class="alert alert-danger">{{ $message }}</div>
@enderror
  </div>
  <div class="form-group">
    <label>Mật khẩu</label>
    <input type="password" class="form-control @error('name') is-invalid @enderror" name="password"  placeholder="Nhập mật khẩu">
    @error('password')
    <div class="alert alert-danger">{{ $message }}</div>
@enderror
  </div>
  <div class="form-group">
  <label>Chọn vai trò</label>
    <select name="role_id[]" class="form-control select2_init" multiple="multiple"value="" >
    <!-- <option selected="selected">Chọn vai trò</option> -->
    <option value=""></option>
  @foreach ($roles as $role)
  <option value="{{ $role->id}}">{{$role->name}}</option>
  @endforeach
</select>
@error('role_id')
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


