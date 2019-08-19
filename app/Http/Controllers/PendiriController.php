<?php

namespace App\Http\Controllers;

use App\Pendiri;
use Illuminate\Http\Request;

class PendiriController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $pendiri = Pendiri::first();
        return view('admin.pendiri.index', ['pendiri' => $pendiri]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $pendiri = Pendiri::all();
        if(sizeof($pendiri) >= 1){
            return redirect()->action('PendiriController@index');
        }

        return view('admin.pendiri.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $request->validate([
            'pendiri' => 'required'
        ]);

        $pendiri = Pendiri::create([
            'pendiri' => $request->pendiri
        ]);

        return redirect()->action('PendiriController@index');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Pendiri  $pendiri
     * @return \Illuminate\Http\Response
     */
    public function show(Pendiri $pendiri)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Pendiri  $pendiri
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $pendiri = Pendiri::find($id);
        return view('admin.pendiri.edit', ['pendiri' => $pendiri]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Pendiri  $pendiri
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $request->validate([
            'pendiri' => 'required'
        ]);

        $pendiri = Pendiri::find($id);
        $pendiri->sejarah = $request->pendiri;
        $pendiri->save();
        return redirect()->action('PendiriController@index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Pendiri  $pendiri
     * @return \Illuminate\Http\Response
     */
    public function destroy(Pendiri $pendiri)
    {
        //
    }
}
