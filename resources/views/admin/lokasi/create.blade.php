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
<h1>Tambah Lokasi</h1>
@endsection

@section('breadcrumb_list')
<li class="active">Lokasi</li>
@endsection

@section('content')
    <h3>Lokasi</h1>
        <div class="card-body card-block">
            <form action="/lokasi" method="post">
                @csrf
                @error('lokasi')
                    <div class="alert alert-danger">{{ $message }}</div>
                @enderror
                <div class="form-group">
                    <label for="posting">Lokasi</label>
                    <textarea name="lokasi" rows=15 class="form-control" id="mytextarea">{{ old('lokasi') }}</textarea>
                </div>
                <input type="submit" name="submit" value="Tambah" combak class="btn btn-success">
            </form>
        </div>
@endsection
