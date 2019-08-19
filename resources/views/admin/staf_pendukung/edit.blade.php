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
<h1>Edit Staf Pendukung</h1>
@endsection

@section('breadcrumb_list')
<li class="active">Edit Staf Pendukung</li>
@endsection

@section('content')
    <h3>Staf Pendukung</h1>
        <div class="card-body card-block">
            <form action="/staf_pendukung/{{ $staf_pendukung->id }}" method="post">
                @csrf
                @method('PUT')
                @error('staf_pendukung')
                    <div class="alert alert-danger">{{ $message }}</div>
                @enderror
                <div class="form-group">
                    <label for="posting">Staf Pendukung</label>
                    <textarea name="text" rows=15 class="form-control" id="mytextarea">{{ $staf_pendukung->text }}</textarea>
                </div>
                <input type="submit" name="submit" value="Edit" combak class="btn btn-success">
            </form>
        </div>
@endsection
