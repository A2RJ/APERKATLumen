<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\RKATModel;

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
            "total_anggaran" => "required"
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
        $data = RKATModel::where('kode_rkat', $params)->get();

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
     * @param  int  $params
     * @return \Illuminate\Http\Response
     */
    public function destroy($params)
    {
        $data = RKATModel::find($params);
        if ($data) {
            $data->delete();
        }

        return response()->json([
            'data' => $data ? "Success delete data" : "Failed, data not found"
        ]);
    }

    public function kodeRKAT()
    {
        return Response()->json([
            'data' => RKATModel::select('rkat.kode_rkat as value', 'rkat.kode_rkat as text')
            ->get()
        ]);
    }
}
