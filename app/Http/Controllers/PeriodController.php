<?php

namespace App\Http\Controllers;

use App\Models\PengajuanModel;
use App\Models\PengajuanRKATValidasiModel;
use Illuminate\Http\Request;
use App\Models\PeriodModel;

class PeriodController extends Controller
{

    public function index()
    {
        return response()->json([
            'data' => PeriodModel::select('id_period as value', 'period as text')
                ->get()
        ]);
    }

    public function store(Request $request)
    {
        $period = PeriodModel::create($request->all());
        return response()->json($period, 201);
    }

    public function getPengajuanByPeriod($params)
    {
        return response()->json([
            'data' => PengajuanModel::join('rkat', 'pengajuan.kode_rkat', 'rkat.id_rkat')
            ->join('user', 'pengajuan.id_user', 'user.id_user')
            ->join('struktur', 'user.id_struktur', 'struktur.id_struktur')
            ->join('struktur_child1', 'user.id_struktur_child1', 'struktur_child1.id_struktur_child1')
            ->join('struktur_child2', 'user.id_struktur_child2', 'struktur_child2.id_struktur_child2')
            ->where('id_period', $params)
            ->select('user.id_user', 'rkat.kode_rkat', 'pengajuan.id_pengajuan', 'pengajuan.validasi_status', 'pengajuan.nama_status', 'user.fullname', 'struktur.nama_struktur', 'struktur_child1.nama_struktur_child1', 'struktur_child2.nama_struktur_child2', 'pengajuan.created_at')
            ->orderBy('pengajuan.id_pengajuan', 'DESC')->get()
        ]);
    }

    public function addList(Request $request)
    {
        PengajuanModel::where('id_pengajuan', $request->id_pengajuan)->update([
            'id_period' => $request->id_period,
            'next' => $request->next,
            'validasi_status' => $request->status_validasi,
            'nama_status' => $request->nama_status
        ]);

        $validasi = PengajuanRKATValidasiModel::create([
            'id_pengajuan' => $request->id_pengajuan,
            'id_struktur' => $request->id_struktur,
            'status_validasi' => $request->status_validasi,
            'message' => $request->nama_status . ' ' . $request->message
        ]);

        return response()->json([
            $validasi ? true : false
        ]);
    }
}
