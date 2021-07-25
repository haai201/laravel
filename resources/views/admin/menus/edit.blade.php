

@extends('layout.admin')

@section('title')
<title>Trang chủ || Nhã Dương</title>
@endsection

@section('content')
<div class="content-wrapper">
    
      @include('past.content-header', ['name' => 'menus', 'key' => 'Edit'])
    <!-- Main content -->
    <div class="content">
      <div class="container-fluid">
        <div class="row">
        <div class="col-sm-6">
          
        <form action="{{ route('menus.update', ['id' => $menuFollowEdit->id])}}" method="post">
          @csrf
  <div class="form-group">
    <label>Tên menu</label>
    <input type="text" class="form-control" name="name" value="{{ $menuFollowEdit ->name}}" placeholder="Nhập tên danh mục">
    
  </div>
  <label>Chọn menu cha</label>
  <select class="form-control" name="parent_id" >
  <option value="0">Chọn menu cha</option>
  {!! $optionSelect !!}

</select><br>
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

