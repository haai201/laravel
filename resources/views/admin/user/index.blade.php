
@extends('layout.admin')

@section('title')
<title>Nhân viên || Nhã Dương</title>
@endsection
@section('css')
<link rel="stylesheet" href="{{asset('admins/slider/add/add.css')}}">
@endsection
@section('js')
<script src="{{asset('admins/user/index/list.js')}}"></script>
<script src="{{asset('vendors/sweetalert2/sweetalert2@11.js')}}"></script>
@endsection
@section('content')
<div class="content-wrapper">

    @include('past.content-header', ['name' => 'Danh sách', 'key' => 'Nhân viên'])
    <!-- Main content -->
    <div class="content">
      <div class="container-fluid">
        <div class="row">
        <div class="col-sm-12">
          
        <a href="{{route ('users.create')}}" class="btn btn-success float-right m-2">Add</a>
        @include('sweetalert::alert')
        <table class="table">
  <thead>

    <tr>
      <th scope="col">STT</th>
      <th scope="col">Tên</th>
      <th scope="col">Email</th>
      <th scope="col">Action</th>
    </tr>
  </thead>
  <tbody>
 @foreach($users as $user)
    <tr>
      <th scope="row">{{ $user -> id}}</th>
      <td>{{ $user -> name}}</td>
      <td>{{ $user -> email}}</td>
      <td>
        <a href=" {{route('users.edit',['id' => $user->id])}}" class="btn btn-warning">Edit</a>
          <a href="" data-url="{{route('users.delete',['id' => $user->id])}}" class="btn btn-danger action_delete">Delete</a>
      </td>
    </tr>
   @endforeach
  </tbody>
</table>
<div class="col-sm-12">
  {{$users -> links()}}
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



