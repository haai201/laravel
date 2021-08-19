
@extends('layout.admin')

@section('title')
<title>Role || Nhã Dương</title>
@endsection
@section('css')
<link rel="stylesheet" href="{{asset('admins/slider/add/add.css')}}">
@endsection
@section('js')
<script src="{{asset('admins/admin/index/list.js')}}"></script>
<script src="{{asset('vendors/sweetalert2/sweetalert2@11.js')}}"></script>
@endsection
@section('content')
<div class="content-wrapper">

    @include('past.content-header', ['name' => 'Role', 'key' => 'List'])
    <!-- Main content -->
    <div class="content">
      <div class="container-fluid">
        <div class="row">
        <div class="col-sm-12">
        @can('role-add')
        <a href="{{route('roles.create')}}" class="btn btn-success float-right m-2">Add</a>@endcan
        @include('sweetalert::alert')
        <table class="table">
  <thead>

    <tr>
      <th scope="col">STT</th>
      <th scope="col">Tên vai trò</th>
      <th scope="col">Mô tả vai trò</th>
      <th scope="col">Action</th>
    </tr>
  </thead>
  <tbody>
 @foreach($roles as $role)
    <tr>
      <th scope="row">{{ $role -> id}}</th>
      <td>{{ $role -> name}}</td>
      <td>{{ $role -> display_name}}</td>
      <td>
      @can('role-edit')
        <a href="{{route('roles.edit',['id' => $role->id])}}"class="btn btn-warning">Edit</a>@endcan
        @can('role-delete')
          <a href="" data-url="{{route('roles.delete',['id' => $role->id])}}" class="btn btn-danger action_delete">Delete</a>@endcan
      </td>
    </tr>
   @endforeach
  </tbody>
</table>
<div class="col-sm-12">
  {{$roles -> links()}}
</div>
</div>
          <!-- /.col-md-6 -->
        </div>
        <!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content -->
  </div>
@endsection



