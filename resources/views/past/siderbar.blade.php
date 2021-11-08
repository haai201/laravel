<aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="http://127.0.0.1:8000" class="brand-link">
      <img src="{{ asset('adminlte/dist/img/AdminLTELogo.png')}}" alt="AdminLTE Logo" class="brand-image img-circle elevation-3" style="opacity: .8">
      <span class="brand-text font-weight-light">QLHT bán hàng</span>
    </a>
<style>
  .main-sidebar{
    background-color:#3b5988!important;
    
  }
  .form-control-sidebar {
    background-color: #fff!important;
    border: 1px solid #fff!important;
    color: #9966FF!important;
}
.d-block {
  text-transform: uppercase;
}
</style>
    <!-- Sidebar -->
    <div class="sidebar">
      <!-- Sidebar user panel (optional) -->
      <div class="user-panel mt-3 pb-3 mb-3 d-flex">
        <div class="image">
          <img src="{{asset('adminlte/dist/img/user2-160x160.jpg')}} " class="img-circle elevation-2" alt="User Image">
        </div>
        <div class="info">
          <a href="{{  route('home')}}" class="d-block">  {{ Auth::user()->  name }}</a>
        </div>
      </div>

      <!-- SidebarSearch Form -->
      <div class="form-inline ">
        <div class="input-group" data-widget="sidebar-search">
          <input class="form-control form-control-sidebar" type="search" placeholder="Search" aria-label="Search">
          <div class="input-group-append">
            <button class="btn btn-sidebar">
              <i class="fas fa-search fa-fw"></i>
            </button>
          </div>
        </div>
      </div>

      <!-- Sidebar Menu -->
      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
          <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
          <li class="nav-item menu-open">
          <li class="nav-item">
            <a href=" {{  route('shop.index')}}" class="nav-link">
            <i class="fas fa-shopping-cart"></i>
              <p> 
                Shop
              </p>
            </a>
          </li>
          <li class="nav-item">
            <a href=" {{  route('categories.index')}}" class="nav-link">
              <i class="nav-icon fas fa-th"></i>
              <p>
                Danh mục sản phẩm
            
              </p>
            </a>
          </li>
          <li class="nav-item">
            <a href=" {{  route('menus.index')}}" class="nav-link">
              <i class="nav-icon fas fa-folder-minus"></i>
              <p>
                Menus
            
              </p>
            </a>
          </li>
          
          <li class="nav-item">
            <a href=" {{  route('product.index')}}" class="nav-link">
              <i class="nav-icon fab fa-app-store"></i>
              <p>
                Sản phẩm
            
              </p>
            </a>
          </li>
          <li class="nav-item">
            <a href=" {{  route('slider.index')}}" class="nav-link">
              <i class="nav-icon fas fa-sliders-h"></i>
              <p>
                Slider
              </p>
            </a>
          </li>
          <li class="nav-item">
            <a href=" {{  route('settings.index')}}" class="nav-link">
              <i class="nav-icon fas fa-tools"></i>
              <p>
                Setting
              </p>
            </a>
          </li>
          <li class="nav-item">
            <a href=" {{  route('users.index')}}" class="nav-link">
              <i class="nav-icon fas fa-users"></i>
              <p>
                Danh sách nhân viên
              </p>
            </a>
          </li>
          <li class="nav-item">
            <a href=" {{  route('roles.index')}}" class="nav-link">
              <i class="nav-icon fas fa-book"></i>
              <p>
                Danh sách vai trò
              </p>
            </a>
          </li>
          <li class="nav-item">
            <a href="{{route('permission.create')}}" class="nav-link">
              <p>
                Tạo dữ liệu bảng Permission
            
              </p>
            </a>
          </li>
        </ul>
      </nav>
      <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
  </aside>