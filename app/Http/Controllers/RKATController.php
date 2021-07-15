<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\RKATModel;
use Illuminate\Support\Facades\DB;

class RKATController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return Response()->json([
            'data' => RKATModel::join('user', 'rkat.id_user', 'user.id_user')
                // ->join('struktur', 'user.id_struktur', 'struktur.id_struktur')
                // ->join('struktur_child1', 'user.id_struktur_child1', 'struktur_child1.id_struktur_child1')
                ->select('rkat.*', "user.fullname")
                ->get()
        ]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->validate($request, [
            "id_user" => "required|numeric",
            "kode_rkat" => "required",
            "sasaran_strategi" => "required",
            "indikator_sasaran_strategi" => "required",
            "nama_program" => "required",
            "program_kerja" => "required",
            "deskripsi" => "required",
            "tujuan" => "required",
            "mulai_program" => "required",
            "selesai_program" => "required",
            "tempat" => "required",
            "sumber_anggaran" => "required",
            "rencara_anggaran" => "required",
            "total_anggaran" => "required",
            "sisa_anggaran" => "required"
        ]);

        $data = RKATModel::create($request->all());

        return response()->json([
            'data' => $data ? "Success data was added" : "Failed add data"
        ]);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $params
     * @return \Illuminate\Http\Response
     */
    public function byKode($params)
    {
        $data = RKATModel::where('id_rkat', $params)->first();

        return response()->json([
            'data' => $data ? $data : "Failed, data not found"
        ]);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $params
     * @return \Illuminate\Http\Response
     */
    public function show($params)
    {
        $data = RKATModel::find($params);

        return response()->json([
            'data' => $data ? $data : "Failed, data not found"
        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $params
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $params)
    {
        // $this->validation($request);

        $data = RKATModel::find($params)->update($request->all());

        return response()->json([
            'data' => $data ? "Data was updated" : "Failed to update data"
        ]);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $params by user
     * @return \Illuminate\Http\Response
     */
    public function destroy()
    {
        $data = DB::statement('DELETE rkat, pengajuan, pengajuan_history, validasi FROM rkat
                INNER JOIN pengajuan ON rkat.id_rkat = pengajuan.kode_rkat
                INNER JOIN pengajuan_history ON pengajuan.id_pengajuan = pengajuan_history.id
                INNER JOIN validasi ON pengajuan_history.id_pengajuan = validasi.id_pengajuan_history');
        $data2 = RKATModel::where('id_rkat', '!=', '0')->delete();

        return response()->json([
            'data' => $data || $data2 ? "Success" : "Failed, data not found"
        ]);
    }
    public function hapus($params)
    {
        $data = DB::statement('DELETE rkat, pengajuan, pengajuan_history, validasi FROM rkat
                INNER JOIN pengajuan ON rkat.id_rkat = pengajuan.kode_rkat
                INNER JOIN pengajuan_history ON pengajuan.id_pengajuan = pengajuan_history.id
                INNER JOIN validasi ON pengajuan_history.id_pengajuan = validasi.id_pengajuan_history
                WHERE rkat.id_rkat = ' . $params);
        $data2 = RKATModel::where('id_rkat', $params)->delete();

        return response()->json([
            'data' => $data || $data2 ? "Success" : "Failed, data not found"
        ]);
    }

    public function kodeRKAT($params)
    {
        return Response()->json([
            'data' => RKATModel::where('id_user', $params)
                ->orWhere('kode_rkat', $params)
                ->select('rkat.id_rkat as value', 'rkat.kode_rkat as text')
                ->get()
        ]);
    }

    public function kodeRKATByValue($params)
    {
        return Response()->json([
            'data' => RKATModel::where('id_rkat', $params)
                ->select('rkat.id_rkat as value', 'rkat.kode_rkat as text')
                ->get()
        ]);
    }
}
