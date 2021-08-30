

@extends('layout.admin')

@section('title')
<title>Trang chủ || Nhã Dương</title>
@endsection

@section('js')
<script src="{{asset('admins/permisson/add/add.js')}}"></script>
<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>


@endsection
@section('content')
<div class="content-wrapper">
  
      @include('past.content-header', ['name' => 'Permission', 'key' => 'Add'])
    <!-- Main content -->
    <div class="content">
      <div class="container-fluid">
        <div class="row">
        <div class="col-sm-12">
        
        <form action="{{ route('permission.store')}}" id="contact-form" method="post">
          @csrf
  <label>Chọn tên module</label>
  @error('name')
    <div class="alert alert-danger">{{ $message }}</div>
@enderror
  <select class="form-control @error('name') is-invalid @enderror" name="name" >
    
  <option value="">Chọn tên module</option>
      @foreach (config('permissions.table_module') as $moduleItem)
  <option value="{{ $moduleItem}}">{{$moduleItem}}</option>
  
@endforeach

  </div>
</select><br>
<div class="form-group">
    <div class="row">
    <div class="col-md-12">
    <div class="card-header text-success">
          <label>
            <input type="checkbox" class="checkall"> Chọn tất cả
          </label>
        </div>
        </div>
    @foreach (config('permissions.module_children') as $moduleItemChildren)
    
    <div class="card-body text-dark col-md-3">
    <h5 class="card-title">  
            <label>
                <input type="checkbox" value="{{$moduleItemChildren}}" class="checkbox_childrent"  name="module_children[]"  value='' > {{$moduleItemChildren}}
            </label>
        </div>
        @endforeach
    </div>
    @include('sweetalert::alert')
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

