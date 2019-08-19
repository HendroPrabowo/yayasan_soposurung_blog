@extends('layouts.layout')

@section('breadcrumb_title')
<h1>Kepala Asrama</h1>
@endsection

@section('breadcrumb_list')
<li class="active">Kepala Asrama</li>
@endsection

@section('content')
    <div>
        <h3>Kepala Asrama</h3>
    </div>
    @if(is_null($kepala_asrama))
    <a href="/kepala_asrama/create" class="btn btn-success" style="margin: 10px 0px">Tambah Kepala Asrama</a>
    @else
    <a href="/kepala_asrama/{{ $kepala_asrama->id }}/edit" class="btn btn-success" style="margin: 10px 0px">Edit Kepala Asrama</a>

    <div class="row">
        <div class="col-md-12">
            @php
            echo $kepala_asrama->text;
            @endphp
        </div>
    </div>
    @endif
@endsection
