@extends('layouts.app')
@section('title', 'Data User')

@section('content')
    <div class="table-responsive">
        <div align="right" class="mb-3">
            <a href="{{ route('user.create') }}" class="btn btn-primary">
                <i class="bi bi-plus-lg"></i> Tambah
            </a>
        </div>
        <table class="table table-bordered text-center" id="example1">
            <thead>
                <tr>
                    <th>No</th>
                    <th>Nama</th>
                    <th>Email</th>
                    <th>Role</th>
                    <th>Aksi</th>
                </tr>
            </thead>
            <tbody>
                @php
                    $no = 1;
                @endphp
                @foreach ($users as $key => $user)
                    <tr>
                        <td>{{ $no++ }}</td>
                        <td>{{ $user->name }}</td>
                        <td>{{ $user->email }}</td>
                        <td>{{ $user->levels->level_name }}</td>
                        <td>
                            <a href="{{ route('user.edit', $user->id) }}" class="btn btn-success btn-xs">
                                <i class="bi bi-pencil-square"></i> Edit
                            </a>
                            <form class="d-inline" action="{{ route('user.destroy', $user->id) }}" method="post">
                                @csrf
                                @method('DELETE')
                                <button class="btn btn-xs btn-danger" type="submit">
                                    <i class="bi bi-trash"></i> Delete
                                </button>
                            </form>
                        </td>
                    </tr>
                @endforeach
            </tbody>
        </table>
    </div>
@endsection
