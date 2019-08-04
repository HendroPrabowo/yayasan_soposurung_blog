<?php

namespace App\Http\Controllers;

use App\Post;
use App\Kategori;
use App\Http\Requests\PostRequest;
use Illuminate\Support\Facades\Storage;
use Illuminate\Http\Request;

class PostController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $post = Post::all()->sortByDesc('created_at');
        return view('post.index', ['post' => $post]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $kategori = Kategori::all();
        return view('post.create', ['kategori' => $kategori]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(PostRequest $request)
    {
        $request->validated();

        // dd($request);

        $post = Post::create([
            'judul'         => $request->judul,
            'posting'       => $request->posting,
            'kategori_id'   => $request->kategori,
            'gambar'        => '',
        ]);

        // Penyimpanan Gambar
        $file = $request->file('gambar');
        $fileName = $post->id.'.'.$post->judul.'.'.$file->getClientOriginalExtension();
        $path = 'image/post/';
        $file->move($path, $fileName);

        $post->gambar = $path.$fileName;
        $post->save();

        return redirect()->action('PostController@index');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Post  $post
     * @return \Illuminate\Http\Response
     */
    public function show(Post $post)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Post  $post
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $post = Post::find($id);
        $kategori = Kategori::all();
        return view('post.edit', [
            'post'      => $post,
            'kategori'  => $kategori,
        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Post  $post
     * @return \Illuminate\Http\Response
     */
    public function update(PostRequest $request, $id)
    {
        $request->validated();

        $post = Post::find($id);

        $post->judul = $request->judul;
        $post->kategori_id = $request->kategori;
        $post->posting = $request->posting;

        // Penyimpanan Gambar
        $file = $request->file('gambar');
        $fileName = $post->id.'.'.$post->judul.'.'.$file->getClientOriginalExtension();
        $path = 'image/post/';
        $file->move($path, $fileName);

        $post->gambar = $path.$fileName;
        $post->save();

        return redirect()->action('PostController@index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Post  $post
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        // $post = Post::find($id);
        Post::destroy($id);
        return redirect()->action('PostController@index');
    }
}
