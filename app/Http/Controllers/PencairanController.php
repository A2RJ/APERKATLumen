<?php

namespace App\Http\Controllers;

use App\Models\PengajuanPencairanModel;
use Illuminate\Http\Request;
use App\Models\PengajuanRKATValidasiModel;

class PencairanController extends Controller
{
    public function index($id)
    {
        return response()->json([
            'status' => 'success',
            'data' => PengajuanPencairanModel::where('pengajuan_id', $id)->get()
        ], 200);
    }

    public function store(Request $request)
    {
        $this->validate($request, [
            'pengajuan_id' => 'required',
            'nominal' => 'required',
            'images' => 'required'
        ]);

        $pencairan = PengajuanPencairanModel::create($request->all());

        PengajuanRKATValidasiModel::create([
            'id_pengajuan' => $request->pengajuan_id,
            'id_struktur' => 24,
            'status_validasi' => '7777',
            'message' => 'Direktur Keuangan - Pencairan dana sebesar Rp. ' . $request->nominal
        ]);

        return response()->json([
            'status' => 'success',
            'data' => $pencairan
        ], 200);
    }

    public function destroy($id)
    {
        $pencairan = PengajuanPencairanModel::findOrFail($id)->delete();

        return response()->json([
            'status' => 'success',
            'data' => $pencairan
        ], 200);
    }
}
