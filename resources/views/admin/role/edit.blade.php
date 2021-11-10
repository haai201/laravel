

@extends('layout.admin')

@section('title')
<title>Sửa Vai trò || Nhã Dương</title>
@endsection
@section('css')
<link rel="stylesheet" href="{{asset('admins/role/add/add.css')}}">
@endsection

@section('js')
<script src="{{asset('admins/role/add/add.js')}}"></script>

@endsection
@section('content')
<div class="content-wrapper">
  
      @include('past.content-header', ['name' => 'Role', 'key' => 'Edit'])
    <!-- Main content -->
    <div class="content">
      <div class="container-fluid">
        <div class="row">
        <form action="{{ route('roles.update', ['id' => $role->id])}}" method="post" enctype="multipart/form-data" style="width:100%;">
        <div class="col-sm-12">
          
        
          @csrf
  <div class="form-group">
    <label>Tên vai trò</label>
    <input type="text" class="form-control @error('name') is-invalid @enderror" name="name" value="{{$role->name}}" placeholder="Nhập tên vai trò">
  </div>
  <div class="form-group">
    <label>Mô tả vai trò</label>
    <textarea class="form-control  @error('name') is-invalid @enderror" name="display_name" rows="4">{{$role->display_name}}</textarea>
   @error('display_name')
    <div class="alert alert-danger">{{ $message }}</div>
@enderror
  </div>
  <div class="col-md-12">
      <div class="row">
      <div class="col-md-12">
          <label>
            <input type="checkbox" class="checkall">  Chọn tất cả
          </label>
        </div>
          @foreach($permissionsParent as $permissionsParentItem)
      <div class="card border-primary mb-3 col-md-12" >
  <div class="card-header">
      <label>
          <input type="checkbox" value="" class="checkbox_wrapper">
      </label>
      Module {{$permissionsParentItem->name}}
  </div>
  <div class="row">
  @foreach($permissionsParentItem->permissionsChildren as $permissionsChildrenItem)
  <div class="card-body text-primary col-md-3">
    <h5 class="card-title">
    <label>
          <input type="checkbox" name="permission_id[]"
          {{$permissionsChecked->contains('id',$permissionsChildrenItem->id) ? 'checked': ''}}
           class="checkbox_childrent" value="{{$permissionsChildrenItem->id}}">
      </label>
      {{$permissionsChildrenItem->name}}
    </h5>
  </div>
  @endforeach
</div>
</div>
@endforeach
</div>

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

