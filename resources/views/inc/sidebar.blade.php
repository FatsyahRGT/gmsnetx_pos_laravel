<div class="sidebar">
    <!-- Sidebar user (optional) -->
    <div class="user-panel mt-3 pb-3 mb-3 d-flex">
      <div class="image">
        <img src="{{ asset('img/profile.jpg') }}" class="img-circle elevation-2" alt="User Image">
      </div>
      <div class="info">
        <a href="#" class="d-block">{{ Auth::user()->name }}</a>
    </div>    
    </div>

    <!-- Sidebar Menu -->
    <nav class="mt-2">
      <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
        <li class="nav-item">
          <a href="{{ route('dashboard.index') }}" class="nav-link">
            <i class="nav-icon fas fa-tachometer-alt"></i>
              <p>Dashboard</p>
          </a>
        </li>
        <li class="nav-item">
          <a href="https://kios.gmsnetx.com/api/maps"  target="_blank" rel="noopener noreferrer" class="nav-link">
            <i class="nav-icon fas fa-map"></i>
              <p>Lokasi Pelanggan</p>
          </a>
        </li>
        <li class="nav-item">
          <a href="#" class="nav-link">
            <i class="nav-icon fas fa-copy"></i>
            <p>
              Master Data
              <i class="fas fa-angle-left right"></i>

            </p>
          </a>
          <ul class="nav nav-treeview">
            <li class="nav-item">
            <li class="nav-item">
              <a href="{{ route('product.index')}}" class="nav-link">
                <i class="far fa-circle nav-icon"></i>
                <p>Produk</p>
              </a>
            </li>
            <li class="nav-item">
                <a href="{{ route('category.index')}}" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Category</p>
                </a>
            </li>
            <li class="nav-item">
              <a href="{{ route('user.index')}}" class="nav-link">
                <i class="far fa-circle nav-icon"></i>
                <p>User Internal</p>
              </a>
            </li> 
          </ul>
        </li>
        <li class="nav-item">
          <a href="#" class="nav-link">
            <i class="nav-icon fas fa-chart-pie"></i>
            <p>
              Transaksi
              <i class="right fas fa-angle-left"></i>
            </p>
          </a>
          <ul class="nav nav-treeview">
            <li class="nav-item">
              <a href="{{ route('penjualan.index') }}" class="nav-link">
                <i class="far fa-circle nav-icon"></i>
                <p>Penjualan</p>
              </a>
            </li>
          </ul>
          <ul class="nav nav-treeview">
            <li class="nav-item">
              <a href="{{ route('sales.index') }}" class="nav-link">
                <i class="far fa-circle nav-icon"></i>
                <p>Riwayat Transaksi</p>
              </a>
            </li>
          </ul>
          <li class="nav-item">
            <a href="{{ route('keluar') }}" class="nav-link">
              <i class="fas fa-sign-out-alt nav-icon"></i>
                <p>LogOut</p>
            </a>
          </li>
    </nav>
    <!-- /.sidebar-menu -->
  </div>
