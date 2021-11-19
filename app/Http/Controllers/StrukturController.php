<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\strukturModel;
use App\Models\Struktur_child1Model;
use App\Models\Struktur_child2Model;

class StrukturController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return Response()->json([
            'data' => strukturModel::join('struktur_child1', 'struktur.id_struktur', 'struktur_child1.id_struktur')
                ->join('struktur_child2', 'struktur.id_struktur_child1', 'struktur_child2.id_struktur_child1')
                ->select('struktur.*', 'struktur_child1.nama_struktur_child1', 'struktur_child2.nama_struktur_child2')
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
        // $this->validate($request, [
        //     "nama_struktur"
        // ]);

        // $data = strukturModel::create($request->all());

        // return response()->json([
        //     'data' => $data ? "Success data was added" : "Failed add data"
        // ]);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $params
     * @return \Illuminate\Http\Response
     * 
     * Get struktur berdasarkan id_user
     * ambil data atasan masing2 akun
     */
    public function show($params)
    {
        $data = strukturModel::join('struktur_child1', 'struktur.id_struktur', 'struktur_child1.id_struktur')
            ->join('struktur_child2', 'struktur.id_struktur_child1', 'struktur_child2.id_struktur_child1')
            ->select('struktur.id_struktur', 'struktur.nama_struktur', 'struktur_child1.nama_struktur_child1', 'struktur_child2.nama_struktur_child2')
            ->where('struktur.id_struktur', $params)
            ->get();

        return response()->json([
            'status' => $data ? $data : "Failed",
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
        $data = strukturModel::find($params)->update($request->all());

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
        $data = strukturModel::find($params);
        $data ? $data->delete() : "";

        return response()->json([
            'data' => $data ? "Success delete data" : "Failed, data not found"
        ]);
    }
}
