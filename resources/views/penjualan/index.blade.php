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
                + Tambah Produk
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
            <div class="row mt-3">
                <div class="col-sm-8">
                    <h4>Total</h4>
                </div>
                <div class="col-sm-4 text-end">
                    <h4 class="total_price"></h4>
                    <input type="hidden" name="total_price" id="total_price_val">
                </div>
            </div>

            <!-- INPUT PEMBAYARAN -->
            <div class="row mt-2">
                <div class="col-sm-8">
                    <h4>Dibayar</h4>
                </div>
                <div class="col-sm-4">
                    <input type="number" class="form-control text-end" id="dibayar" name="dibayar" placeholder="Masukkan jumlah pembayaran">
                </div>
            </div>

            <!-- KEMBALIAN -->
            <div class="row mt-2">
                <div class="col-sm-8">
                    <h4>Kembali</h4>
                </div>
                <div class="col-sm-4 text-end">
                    <h4 class="kembalian_text"></h4>
                    <input type="hidden" class="form-control" readonly id="kembalian" name="kembalian">
                </div>
            </div>

            <!-- Tombol Buat Pesanan di kanan -->
            <div class="d-flex justify-content-end mt-4">
                <button type="submit" class="btn btn-success btn-lg">Buat Pesanan</button>
            </div>
        </div>            
    </form>
@endsection
