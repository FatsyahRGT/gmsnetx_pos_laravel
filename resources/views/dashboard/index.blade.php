@extends('layouts.app')
@section('title', 'Dashboard Page')

@section('content')

<section class="content-header text-center">
  <img 
    src="{{ asset('img/logo.jpeg') }}" 
    alt="Dashboard Image" 
    style="width: 100%; max-width: 300px; height: auto; margin-top: 10px;">
</section>
<section class="content">
  <div class="container-fluid">
    <!-- Small boxes (Stat box) -->
    <div class="row">
      <div class="col-lg-3 col-6">
        <!-- small box -->
        <div class="small-box bg-info">
          <div class="inner">
            <h3>Rp{{ number_format($totalProfit, 0, ',', '.') }}</h3>
            <p>Keuntungan Perbulan</p>
          </div>
          <div class="icon">
            <i class="fas fa-money-bill-wave"></i>
          </div>
          <a href="{{ route('sales.index')}}" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
        </div>
      </div>
      <!-- ./col -->
      <div class="col-lg-3 col-6">
        <!-- small box -->
        <div class="small-box bg-success">
          <div class="inner">
            <h3>{{ $totalTrans }}</h3>
            <p>Total Transaksi</p>
          </div>
          <div class="icon">
            <i class="fas fa-exchange-alt"></i>
          </div>
          <a href="{{ route('sales.index')}}" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
        </div>
      </div>
      <!-- ./col -->
      <div class="col-lg-3 col-6">
        <!-- small box -->
        <div class="small-box bg-warning">
          <div class="inner">
            <h3>44</h3>
            <p>User</p>
          </div>
          <div class="icon">
            <i class="fas fa-users"></i>
          </div>
          <a href="#" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
        </div>
      </div>
      <!-- ./col -->
      <div class="col-lg-3 col-6">
        <!-- small box -->
        <div class="small-box bg-danger">
          <div class="inner">
            <h3>{{ $totalProduct }}</h3>
            <p>Jenis Layanan</p>
          </div>
          <div class="icon">
            <i class="fas fa-concierge-bell"></i>
          </div>
          <a href="{{ route('product.index')}}" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
        </div>
      </div>
      <!-- ./col -->
    </div>
    <!-- /.row -->
  </div>
</section>
@endsection
