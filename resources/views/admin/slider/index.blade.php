
@extends('layout.admin')

@section('title')
<title>Slider || Nhã Dương</title>
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

    @include('past.content-header', ['name' => 'Slider', 'key' => 'List'])
    <!-- Main content -->
    <div class="content">
      <div class="container-fluid">
        <div class="row">
        <div class="col-sm-12">
        @can('slider-add')
        <a href="{{route ('slider.create')}}" class="btn btn-success float-right m-2">Add</a>@endcan
        @include('sweetalert::alert')
        <table class="table">
  <thead>

    <tr>
      <th scope="col">STT</th>
      <th scope="col">Tên slider</th>
      <th scope="col">Mô tả</th>
      <th scope="col">Hình ảnh</th>
      <th scope="col">Action</th>
    </tr>
  </thead>
  <tbody>
 @foreach($sliders as $slider)
    <tr>
      <th scope="row">{{ $slider -> id}}</th>
      <td>{{ $slider -> name}}</td>
      <td>{{ $slider -> description}}</td>
      <td>
        <img class="product_image" src="{{ $slider ->image_path}}">
        </td>
      <td>
      @can('slider-edit')
        <a href="{{ route('slider.edit', ['id' => $slider->id])}}"class="btn btn-warning">Edit</a>@endcan
        @can('slider-delete')
          <a href="" data-url="{{route('slider.delete',['id' => $slider->id])}}" class="btn btn-danger action_delete">Delete</a>@endcan
      </td>
    </tr>
   @endforeach
  </tbody>
</table>
<div class="col-sm-12">
  {{$sliders -> links()}}
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



