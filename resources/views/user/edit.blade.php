@extends('layouts.app')
@section('title', 'Edit')

@section('content')
    <form action="{{ route('user.update', $edit->id) }}" method="post">
        @csrf
        @method('PUT')
        <div class="mb-3 row">
            <div class="col-sm-2">
                <label for="" class="form-label">Nama Lengkap *</label>
            </div>
            <div class="col-sm-5">
                <input value="{{ $edit->name }}" required type="text" class="form-control" name="name" placeholder="Nama Lengkap" id="">
            </div>
        </div>

        <div class="mb-3 row">
            <div class="col-sm-2">
                <label for="" class="form-label">Email *</label>
            </div>
            <div class="col-sm-5">
                <input value="{{ $edit->email }}" required type="email" class="form-control" name="email" placeholder="Email" id="">
            </div>
        </div>

        <div class="mb-3 row">
            <label for="id_level" class="col-sm-2 col-form-label fw-semibold">Pilih Role *</label>
            <div class="col-sm-5">
                <div class="form-floating">
                    <select name="id_level" id="id_level" class="form-select rounded shadow-sm py-2 w-100 h-100" required>
                        <option value="" disabled>Pilih Role</option>
                        @foreach ($levels as $level)
                            <option value="{{ $level->id }}" 
                                {{ $edit->id_level == $level->id ? 'selected' : '' }}>
                                {{ $level->level_name }}
                            </option>
                        @endforeach
                    </select>
                </div>
            </div>
        </div>

        
        <div class="mb-3 row">
            <div class="col-sm-2">
                <label for="" class="form-label">Password *</label>
            </div>
            <div class="col-sm-5">
                <input type="password" class="form-control" name="password" placeholder="Password" id="">
            </div>
        </div>

        <div class="mb-3 row">
            <div class="col-sm-10">
                <button class="btn btn-primary" type="submit">Simpan</button>
            </div>
        </div>


    </form>


@endsection
