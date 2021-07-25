

@extends('layout.admin')

@section('title')
<title>Trang chủ || Nhã Dương</title>
@endsection

@section('content')
<div class="content-wrapper">

      @include('past.content-header', ['name' => 'Category', 'key' => 'Add'])
    <!-- Main content -->
    <div class="content">
      <div class="container-fluid">
        <div class="row">
        <div class="col-sm-6">
          
        <form action="{{ route('categories.store')}}" method="post">
          @csrf
  <div class="form-group">
    <label>Tên danh mục</label>
    <input type="text" class="form-control" name="name" placeholder="Nhập tên danh mục">
    
  </div>
  <label>Chọn danh mục cha</label>
  <select class="form-control" name="parent_id" >
  <option value="0">Chọn danh mục cha</option>
  {!! $htmlOption !!}

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

