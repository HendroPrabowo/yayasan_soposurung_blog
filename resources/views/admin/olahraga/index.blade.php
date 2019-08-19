@extends('layouts.layout')

@section('breadcrumb_title')
<h1>Olahraga</h1>
@endsection

@section('breadcrumb_list')
<li class="active">Olahraga</li>
@endsection

@section('content')
    <div>
        <h3>Olahraga</h3>
    </div>
    @if(is_null($olahraga))
    <a href="/olahraga/create" class="btn btn-success" style="margin: 10px 0px">Tambah Olahraga</a>
    @else
    <a href="/olahraga/{{ $olahraga->id }}/edit" class="btn btn-success" style="margin: 10px 0px">Edit Olahraga</a>

    <div class="row">
        <div class="col-md-12">
            @php
            echo $olahraga->text;
            @endphp
        </div>
    </div>
    @endif
@endsection
