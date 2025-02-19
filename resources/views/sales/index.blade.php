@extends('layouts.app')
@section('title', 'History Penjualan')

@section('content')
    <div class="table-responsive">
        <div align="right" class="mb-3">
            <a href="{{ route('sales.create') }}" class="btn btn-primary">Tambah</a>
        </div>
        <table class="table table-bordered text-center" id="example1">
            <thead>
                <tr>
                    <th>No</th>
                    <th>Kode Transaksi</th>
                    <th>Tanggal Transaksi</th>
                    <th>Jumlah Transaksi</th>
                    <th>Dibayarkan</th>
                    <th>Kembalian</th>
                    <th>Aksi</th>
                </tr>
            </thead>
            <tbody>
                @php
                    $no = 1;
                @endphp
                @foreach ($sales as $key => $sales)
                    <tr>
                        <td>{{ $no++ }}</td>
                        <td>{{ $sales->trans_code }}</td>
                        <td>{{ $sales->trans_date }}</td>
                        <td>{{ $sales->trans_total_price }}</td>
                        <td>{{ $sales->trans_paid }}</td>
                        <td>{{ $sales->trans_change }}</td>
                        <td>
                            <a href="{{ route('sales.edit', $sales->id) }}" class="btn btn-success btn-xs">Edit</a>
                            {{-- <a href="{{ route('sales.destroy', $sales->id) }}" class="btn btn-danger btn-xs">Delete</a> --}}
                            <form class="d-inline" action="{{ route('sales.destroy', $sales->id) }}" method="post">
                                @csrf
                                @method('DELETE')
                                <button class="btn btn-xs btn-danger" type="submit">
                                    Delete
                                </button>
                            </form>
                        </td>
                    </tr>
                @endforeach
            </tbody>
        </table>
    </div>
@endsection
