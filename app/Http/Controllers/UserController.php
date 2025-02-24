<?php

namespace App\Http\Controllers;

use App\Models\Levels;
use Illuminate\Http\Request;
use App\Models\User;
use Illuminate\Support\Facades\Hash;
use RealRashid\SweetAlert\Facades\Alert;


class UserController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $users = User::orderBy('id', 'asc')->get();
        return view('user.index', compact('users'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $levels = Levels::get();
        return view('user.create', compact('levels'));
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        User::create([
            'name' => $request->name,
            'email' => $request->email,
            'password' => Hash::make($request->password),
            'id_level' => $request->id_level,
        ]);
        
        toast('Data berhasil simpan','success');
        return redirect()->to('user')->with('message', 'Data berhasil simpan');
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        $edit = User::findorFail($id);
        $levels = Levels::all();
        return view('user.edit', compact('edit', 'levels'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        $user = User::find($id);
        User::where('id', $id)->update([
            'name' => $request->name,
            'email' => $request->email,
            'password' => ($request->password ? Hash::make($request->password) : $user->password),
            'id_level' => $request->id_level,
        ]);
        toast('Data berhasil diubah','success');
        return redirect()->to('user')->with('message', 'Data berhasil di ubah');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        User::where('id', $id)->delete();
        toast('Data berhasil dihapus','error');
        return redirect()->to('user')->with('message', 'Data berhasil di hapus');
    }
}
