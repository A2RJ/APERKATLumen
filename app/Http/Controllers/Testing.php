<?php

namespace App\Http\Controllers;

use App\Models\PengajuanModel;

class Testing extends Controller
{

    public function newformatrkat()
    {
        return response()->json(
            PengajuanModel::select(
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
                ->with(['pencairan', 'rkat' => function ($query) {
                    $query->select('id_rkat', 'kode_rkat', 'nama_program');
                }])
                ->orderBy('pengajuan.id_pengajuan', 'DESC')
                ->get()
        );
    }
}
