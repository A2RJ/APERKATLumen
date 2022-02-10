<?php

namespace App\Http\Controllers;

use App\Models\Backup\PengajuanValidasiModel;
use App\Models\PengajuanModel;
use App\Models\PengajuanRKATValidasiModel;
use Illuminate\Http\Request;
use App\Models\PeriodModel;
use App\Models\RABModel;

class PeriodController extends Controller
{

    public function index()
    {
        return response()->json([
            'data' => PeriodModel::select('id_period as value', 'period as text', 'created_at')->get()
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
            'data' => PengajuanModel::select(
                'pengajuan.id_pengajuan',
                'pengajuan.kode_rkat',
                'pengajuan.tanggal',
                'pengajuan.biaya_program',
                'pengajuan.biaya_disetujui',
                'pengajuan.bank',
                'pengajuan.no_rek',
                'pengajuan.atn',
                'pengajuan.lpj_keuangan',
                'pengajuan.lpj_kegiatan',
            )
                ->where('id_period', $params)
                ->with(['pencairan', 'rkat' => function ($query) {
                    $query->select('id_rkat', 'kode_rkat', 'nama_program');
                }])
                ->orderBy('pengajuan.id_pengajuan', 'DESC')
                ->get()
        ]);
    }

    public function getByAtasan($id, $params)
    {
        return response()->json([
            'data' => PengajuanModel::select(
                'pengajuan.id_pengajuan',
                'pengajuan.kode_rkat',
                'pengajuan.tanggal',
                'pengajuan.biaya_program',
                'pengajuan.biaya_disetujui',
                'pengajuan.bank',
                'pengajuan.no_rek',
                'pengajuan.atn',
                'pengajuan.lpj_keuangan',
                'pengajuan.lpj_kegiatan',
            )
                ->where('id_period', $params)
                ->where('next', $id)
                ->with(['pencairan', 'rkat' => function ($query) {
                    $query->select('id_rkat', 'kode_rkat', 'nama_program');
                }])
                ->orderBy('pengajuan.id_pengajuan', 'DESC')
                ->get()
        ]);
    }

    public function addList(Request $request)
    {
        if ($request->message == 'List pencairan (Pending)') {
            PengajuanModel::where('id_pengajuan', $request->id_pengajuan)->update([
                'id_period' => $request->id_period,
                'next' => $request->next,
                'validasi_status' => $request->status_validasi,
                'nama_status' => $request->nama_status
            ]);
            PengajuanRKATValidasiModel::where('id_pengajuan', $request->id_pengajuan)
                ->where('message', 'Direktorat Keuangan List pencairan')
                ->update([
                    'message' => 'Direktorat Keuangan List pencairan (Pending)',
                    'status_validasi' => '0'
                ]);
        } else {
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

    public function biayaDisetujui($id, $params)
    {
        return PengajuanModel::where('id_pengajuan', $id)->update([
            'biaya_disetujui' => $params
        ]);
    }
}
