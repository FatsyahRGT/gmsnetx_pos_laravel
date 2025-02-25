@extends('layouts.app')
@section('title', 'Transaksi Penjualan')

@section('content')
    <form action="{{ route('penjualan.store') }}" method="post">
        @csrf
        <div class="row">
            <!-- Kiri -->
            <div class="col-sm-6">
                <div class="mb-3">
                    <label for="">Kode Transaksi</label>
                    <input type="text" class="form-control" readonly value="{{ $kode_transaksi ?? '' }}" name="kode_transaksi">
                </div>
                <div class="mb-3">
                    <label for="">Kategori Produk</label>
                    <select required class="form-control" name="category_id" id="category_id">
                        <option value="">Pilih Kategori Produk</option>
                        @foreach ($categories as $cat)
                            <option value="{{ $cat->id }}">{{ $cat->category_name }}</option>
                        @endforeach
                    </select>
                </div>
                <div class="mb-3">
                    <label for="">Qty Produk</label>
                    <input required type="number" class="form-control" placeholder="Masukkan jumlah produk" id="product_qty">
                </div>
            </div>

            <!-- Kanan -->
            <div class="col-sm-6">
                <div class="mb-3">
                    <label for="">Tanggal Transaksi</label>
                    <input required type="text" class="form-control" readonly value="{{ date('d/M/Y') }}" name="tanggal_transaksi">
                </div>
                <div class="mb-3">
                    <label for="">Nama Produk</label>
                    <select required class="form-control" name="" id="product_id">
                        <option value="">Pilih Produk</option>
                    </select>
                </div>
            </div>
        </div>

        <!-- Tombol Tambah Produk di kanan -->
        <div class="d-flex justify-content-end mb-3">
            <button type="button" class="btn btn-primary tambah-produk">
                <i class="bi bi-plus-circle me-2"></i> ADD
            </button>
        </div>
        
        <!-- ALERT BOX PERHATIAN -->
        <div class="alert alert-warning text-center">
            <strong>Perhatian!</strong> Ketika input angka, pastikan angka yang dimasukkan tanpa menggunakan titik (.)
        </div>

        <input type="hidden" id="product_price">
        <input type="hidden" id="product_name">

        <div class="table-transaction mt-4">
            <!-- TABEL TRANSAKSI -->
            <table class="table table-bordered table-striped">
                <thead class="table-dark">
                    <tr>
                        <th>Nama Produk</th>
                        <th>Harga</th>
                        <th>Qty</th>
                        <th>Sub Total</th>
                        <th>Aksi</th>
                    </tr>
                </thead>
                <tbody id="transaction-body"></tbody> <!-- ID DITAMBAHKAN -->
            </table>

            <!-- TOTAL PEMBAYARAN -->
            <div class="card shadow-sm p-3 mb-3">
                <div class="row align-items-center">
                    <div class="col-sm-8">
                        <h4 class="mb-0">Total</h4>
                    </div>
                    <div class="col-sm-4 text-end">
                        <h4 class="total_price fw-bold text-primary"></h4>
                        <input type="hidden" name="total_price" id="total_price_val">
                    </div>
                </div>
            </div>

            <!-- INPUT PEMBAYARAN -->
            <div class="card shadow-sm p-3 mb-3">
                <div class="row align-items-center">
                    <div class="col-sm-8">
                        <h4 class="mb-0">Dibayar</h4>
                    </div>
                    <div class="col-sm-4">
                        <input type="number" class="form-control-lg text-end fw-bold rounded shadow-sm py-2 w-100 h-100 " id="dibayar" name="dibayar" placeholder="Masukkan jumlah pembayaran">
                    </div>
                </div>
            </div>

            <!-- KEMBALIAN -->
            <div class="card shadow-sm p-3 mb-3">
                <div class="row align-items-center">
                    <div class="col-sm-8">
                        <h4 class="mb-0">Kembali</h4>
                    </div>
                    <div class="col-sm-4 text-end">
                        <h4 class="kembalian_text fw-bold text-success"></h4>
                        <input type="hidden" class="form-control" readonly id="kembalian" name="kembalian">
                    </div>
                </div>
            </div>

            <!-- Tombol Buat Pesanan di kanan -->
            <div class="d-flex justify-content-end mt-4">
                <button type="submit" class="btn btn-success btn-lg">
                    <i class="bi bi-cart-check me-2"></i> Create Cart
                </button>
            </div>
            
        </div>            
    </form>
@endsection
