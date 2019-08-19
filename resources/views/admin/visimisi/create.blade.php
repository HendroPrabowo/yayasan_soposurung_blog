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
<h1>Tambah Visi Misi</h1>
@endsection

@section('breadcrumb_list')
<li class="active">Visi Misi</li>
@endsection

@section('content')
    <h3>Visi Misi</h1>
        <div class="card-body card-block">
            <form action="/visimisi" method="post">
                @csrf
                @error('visimisi')
                    <div class="alert alert-danger">{{ $message }}</div>
                @enderror
                <div class="form-group">
                    <label for="posting">Visi Misi</label>
                    <textarea name="visimisi" rows=15 class="form-control" id="mytextarea">{{ old('visimisi') }}</textarea>
                </div>
                <input type="submit" name="submit" value="Tambah" combak class="btn btn-success">
            </form>
        </div>
@endsection
