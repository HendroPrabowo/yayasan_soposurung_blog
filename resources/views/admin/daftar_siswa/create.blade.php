@extends('layouts.layout')

@section('head')
<script src="{{ asset('/tinymce/js/tinymce/tinymce.min.js') }}"></script>
<script>
    tinymce.init({
        selector: '#mytextarea',
        // menubar: false,
    });
</script>
@endsection

@section('breadcrumb_title')
<h1>Tambah Siswa</h1>
@endsection

@section('breadcrumb_list')
<li class="active">Tambah Siswa</li>
@endsection

@section('content')
    <h3>Daftar Siswa</h1>
        <div class="card-body card-block">
            <form action="/daftar_siswa" method="post">
                @csrf

                @error('no_induk')
                    <div class="alert alert-danger">{{ $message }}</div>
                @enderror
                <div class="form-group">
                    <label for="">No Induk</label>
                    <input type="text" name="no_induk" value="" required class="form-control">
                </div>

                @error('nama')
                    <div class="alert alert-danger">{{ $message }}</div>
                @enderror
                <div class="form-group">
                    <label for="">Nama</label>
                    <input type="text" name="nama" value="" required class="form-control">
                </div>

                @error('kelas')
                    <div class="alert alert-danger">{{ $message }}</div>
                @enderror
                <div class="form-group">
                    <label for="">Kelas</label>
                    <input type="text" name="kelas" value="" required class="form-control">
                </div>

                <input type="submit" name="submit" value="Tambah" combak class="btn btn-success">
            </form>
        </div>
@endsection
