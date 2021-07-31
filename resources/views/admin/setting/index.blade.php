
@extends('layout.admin')

@section('title')
<title>Cài đặt || Nhã Dương</title>
@endsection
<style>
  .btn-group {
    padding-bottom: 20px;
    margin-right: 70px;
  }
</style>
@section('js')
<script src="{{asset('admins/setting/index/list.js')}}"></script>
<script src="{{asset('vendors/sweetalert2/sweetalert2@11.js')}}"></script>
@endsection
@section('content')
<div class="content-wrapper">

    @include('past.content-header', ['name' => 'Setting', 'key' => 'List'])
    <!-- Main content -->
    <div class="content">
      <div class="container-fluid">
        <div class="row">
        <div class="col-sm-12">
          <!-- Example single danger button -->
<div class="btn-group float-right">
  <button type="button" class="btn btn-info dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    Add Setting
  </button></br>
  <div class="dropdown-menu">
    <a class="dropdown-item" href="{{route('settings.create'). '?type=Text'}}">Text</a>
    <a class="dropdown-item" href="{{route('settings.create'). '?type=Textarea'}}">Textarea</a>
    <!-- <div class="dropdown-divider"></div>
    <a class="dropdown-item" href="#">Separated link</a> -->
  </div>
</div>
      
        <table class="table">
  <thead>

    <tr>
      <th scope="col">STT</th>
      <th scope="col">Config key</th>
      <th scope="col">Config value</th>
      <th scope="col">Action</th>
    </tr>
  </thead>
  <tbody>
  @foreach($settings as $setting)
    <tr>
      <th scope="row">{{$setting->id}}</th>
      <td>{{$setting->config_key}}</td>
      <td>{{$setting->config_value}}</td>
      <td>
        <a href="{{ route('settings.edit', ['id' => $setting->id]) .'?type='.$setting->type}}"class="btn btn-warning">Edit</a>
          <a href="" data-url="{{route('settings.delete',['id' => $setting->id])}}" class="btn btn-danger action_delete">Delete</a>
      </td>
    </tr>
   @endforeach
  </tbody>
</table>
<div class="col-sm-12">
  {{$settings -> links()}}
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



