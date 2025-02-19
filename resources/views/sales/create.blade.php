@extends('layouts.app')
@section('title', 'Tambah User')

@section('content')
<form action="{{route('user.store')}}" method="post">
    @csrf
    <div class="mb-3 row">
        <div class="col-sm-2">
            <label for="" class="form-label">Nama Lengkap *</label>
        </div>
        <div class="col-sm-5">
            <input required type="text" class="form-control" name="name" placeholder="Nama Lengkap" id="">
        </div>
    </div>
    {{-- <div class="col-6">
        <select name="id_roles" id="">
            <option value="" selected disabled>Pilih Roles</option>
            @foreach ($roles as $role )
            <option value="{{ $role->id }}">{{$role->name}}</option>
            @endforeach
        </select>
    </div> --}}
    <div class="mb-3 row">
        <div class="col-sm-2">
            <label for="" class="form-label">Email *</label>
        </div>
        <div class="col-sm-5">
            <input required type="email" class="form-control" name="email" placeholder="Email" id="">
        </div>
    </div>
    <div class="mb-3 row">
        <div class="col-sm-2">
            <label for="" class="form-label">Password *</label>
        </div>
        <div class="col-sm-5">
            <input required type="password" class="form-control" name="password" placeholder="Password" id="">
        </div>
    </div>
    <div class="mb-3 row">
        <div class="col-sm-10">
            <button class="btn btn-primary" type="submit">Simpan</button>
        </div>
    </div>


</form>


@endsection
