@extends('layouts.layout')

@section('breadcrumb_title')
<h1>Tambah Kategori</h1>
@endsection

@section('breadcrumb_list')
<li><a href="/$kategori">Kategori</a></li>
<li class="active">Tambah Kategori</li>
@endsection

@section('content')
    <h3>Tambah Kategori</h3>

    <form action="#" method="post">
        <div class="form-group">
            <label for="kategori">Kategori</label>
            <input type="text" name="kategori" value="" class="form-control">
        </div>
    </form>
@endsection
