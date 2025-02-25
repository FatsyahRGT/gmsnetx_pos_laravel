@extends('layouts.app')
@section('title', 'Kategori')

@section('content')
    <div class="table-responsive">
        <div align="right" class="mb-3">
            <a href="{{ route('category.create') }}" class="btn btn-primary">Tambah</a>
        </div>
        <table class="table table-bordered text-center" id="example1">
            <thead>
                <tr>
                    <th>No</th>
                    <th>Nama Kategori</th>
                    <th>Aksi</th>
                </tr>
            </thead>
            <tbody>
                @php
                    $no = 1;
                @endphp
                @foreach ($categories as $key => $category)
                    <tr>
                        <td>{{ $no++ }}</td>
                        <td>{{ $category->category_name }}</td>
                        <td>
                            <a href="{{ route('category.edit', $category->id) }}" class="btn btn-success btn-xs">Edit</a>
                            {{-- <a href="{{ route('category.destroy', $category->id) }}" class="btn btn-danger btn-xs">Delete</a> --}}
                            <form class="d-inline" action="{{ route('category.destroy', $category->id) }}" method="post">
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
