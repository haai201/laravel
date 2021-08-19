
@extends('layout.admin')

@section('title')
<title>Trang chủ || Nhã Dương</title>
@endsection
@section('js')
<script src="{{asset('admins/admin/index/list.js')}}"></script>
<script src="{{asset('vendors/sweetalert2/sweetalert2@11.js')}}"></script>
@endsection
@section('content')
<div class="content-wrapper">

    @include('past.content-header', ['name' => 'Menu', 'key' => 'List'])
    <!-- Main content -->
    <div class="content">
      <div class="container-fluid">
        <div class="row">
        <div class="col-sm-12">
        @can('menu-add')
        <a href="{{route ('menus.create')}}" class="btn btn-success float-right m-2">Add</a>@endcan
        @include('sweetalert::alert')
        <table class="table">
  <thead>

    <tr>
      <th scope="col">STT</th>
      <th scope="col">Tên menu</th>
      <th scope="col">Action</th>
    </tr>
  </thead>
  <tbody>
  @foreach ($menus as $menu)
    <tr>
      <th scope="row">{{ $menu -> id}}</th>
      <td>{{ $menu -> name}}</td>
      <td>
      @can('menu-edit')
        <a href="{{route ('menus.edit', ['id' => $menu->id])}}"class="btn btn-warning">Edit</a>@endcan
        @can('menu-delete')
          <a href="" data-url="{{route('menus.delete',['id' => $menu->id])}}" class="btn btn-danger action_delete">Delete</a>@endcan
      </td>
    </tr>
    @endforeach
  </tbody>
</table>
<div class="col-sm-12">
{{$menus -> links()}}
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



