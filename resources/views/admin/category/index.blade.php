
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

    @include('past.content-header', ['name' => 'Category', 'key' => 'List'])
    <!-- Main content -->
    <div class="content">
      <div class="container-fluid">
        <div class="row">
        <div class="col-sm-12">
        @can('category-add')
        <a href="{{route ('categories.create')}}" class="btn btn-success float-right m-2">Thêm</a>
        @endcan
        @include('sweetalert::alert')
        <table class="table">
  <thead>

    <tr>
      <th scope="col">STT</th>
      <th scope="col">Tên danh mục</th>
      <th scope="col">Action</th>
    </tr>
  </thead>
  <tbody>
    @foreach ($categories as $category)
    <tr>
      <th scope="row">{{ $category -> id}}</th>
      <td>{{ $category -> name}}</td>
      <!-- <td>{{ $category -> slug}}</td> -->
      <td>
        @can('category-edit')
        <a href="{{route ('categories.edit', ['id' => $category->id])}}"class="btn btn-warning">Edit</a>
        @endcan
        @can('category-delete')
          <a href="" data-url="{{route('categories.delete',['id' => $category->id])}}" class="btn btn-danger action_delete">Delete</a>
      @endcan
        </td>
    </tr>
    @endforeach
  </tbody>
</table>
<div class="col-sm-12">
{{$categories -> links()}}
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



