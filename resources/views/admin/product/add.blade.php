

@extends('layout.admin')

@section('title')
<title>Thêm Sản Phẩm || Nhã Dương</title>
@endsection
@section('css')
<link href="{{ asset('vendors/select2/select2.min.css')}}" rel="stylesheet" />
<style>
  .select2-selection__choice{
    background-color: #343a40 !important;
  }
</style>
@endsection


@section('content')
<div class="content-wrapper">
      @include('past.content-header', ['name' => 'Product', 'key' => 'Add'])
    <!-- Main content -->
    <div class="content">
      <div class="container-fluid">
        <div class="row">
        <div class="col-sm-6">
          
        <form action="" method="post" enctype="multipart/form-data">
          @csrf
  <div class="form-group">
    <label>Tên sản phẩm
    </label>
    <input type="text" class="form-control" name="name" placeholder="Nhập tên sản phẩm">
    
  </div>
  <div class="form-group">
    <label>Giá sản phẩm
    </label>
    <input type="text" class="form-control" name="price" placeholder="Nhập giá sản phẩm">
    
  </div>
  <div class="form-group">
    <label>Ảnh đại diện
    </label>
    <input type="file" class="form-control-file" name="feature_image_path">
    
  </div>
  <div class="form-group">
    <label>Ảnh chi tiết sản phẩm
    </label>
    <input type="file" multiple class="form-control-file" name="image_path[]">
    
  </div>

 
  <label>Chọn danh mục</label>
  <select class="form-control select2_init " name="parent_id" >
  <option value="">Chọn danh mục</option>
  {{!!$htmlOption!!}}

</select>
<div class="form-group">
<label>Nhập tag cho sản phẩm</label>
<select name="tags[]" class="form-control tags_select_choose" multiple="multiple">
</select></div>

          <!-- /.col-md-6 -->
        </div>
        <div class="form-group col-md-12">
    <label >Nhập nội dung</label>
    <textarea name="content" class="form-control tinymce_editor_init"></textarea>
  </div>
  <div class="col-md-12">
  <button type="submit" class="btn btn-primary float-right">Xác nhận</button></div>
</form>
</div>
        <!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content -->
  </div>
  
@endsection

@section('js')
<script src="{{ asset('vendors/select2/select2.min.js')}}"></script>
<!-- <script src="//cdn.tinymce.com/4/tinymce.min.js"></script> -->
<script src="https://cdn.tiny.cloud/1/no-api-key/tinymce/5/tinymce.min.js"></script>

<script>
  var editor_config = {
    path_absolute : "/",
    selector: "textarea.tinymce_editor_init",
    plugins: [
      "advlist autolink lists link image charmap print preview hr anchor pagebreak",
      "searchreplace wordcount visualblocks visualchars code fullscreen",
      "insertdatetime media nonbreaking save table contextmenu directionality",
      "emoticons template paste textcolor colorpicker textpattern"
    ],
    toolbar: "insertfile undo redo | styleselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | link image media",
    relative_urls: false,
    file_browser_callback : function(field_name, url, type, win) {
      var x = window.innerWidth || document.documentElement.clientWidth || document.getElementsByTagName('body')[0].clientWidth;
      var y = window.innerHeight|| document.documentElement.clientHeight|| document.getElementsByTagName('body')[0].clientHeight;

      var cmsURL = editor_config.path_absolute + 'laravel-filemanager?field_name=' + field_name;
      if (type == 'image') {
        cmsURL = cmsURL + "&type=Images";
      } else {
        cmsURL = cmsURL + "&type=Files";
      }

      tinyMCE.activeEditor.windowManager.open({
        file : cmsURL,
        title : 'Filemanager',
        width : x * 0.8,
        height : y * 0.8,
        resizable : "yes",
        close_previous : "no"
      });
    }
  };

  tinymce.init(editor_config);
</script>

@endsection