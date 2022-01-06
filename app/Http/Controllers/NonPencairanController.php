<?php

namespace App\Http\Controllers;

use App\Models\NonPengajuanPencairanModel;
use Illuminate\Http\Request;

class NonPencairanController extends Controller
{
    public function index($id)
    {
        return response()->json([
            'status' => 'success',
            'data' => NonPengajuanPencairanModel::where('nonrkat_id', $id)->get()
        ], 200);
    }

    public function store(Request $request)
    {
        $this->validate($request, [
            'nonrkat_id' => 'required',
            'nominal' => 'required',
            'images' => 'required'
        ]);

        $pencairan = NonPengajuanPencairanModel::create($request->all());

        $validasi = new NonRKATController;
        $validasi->nonRkatValidasi([
            'nonrkat_id' => $request->nonrkat_id,
            'id_struktur' => 24,
            'validasi_status' => 999,
            'message' => 'Direktur Keuangan (Pencairan) - Pencairan RP. ' . $request->nominal
        ]);

        return response()->json([
            'status' => 'success',
            'data' => $pencairan
        ], 200);
    }

    public function destroy($id)
    {
        $pencairan = NonPengajuanPencairanModel::findOrFail($id)->delete();

        return response()->json([
            'status' => 'success',
            'data' => $pencairan
        ], 200);
    }
}
