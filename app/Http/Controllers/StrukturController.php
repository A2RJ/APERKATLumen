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
            'data' => strukturModel::find()
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
            "iku_parent"
        ]);

        $data = strukturModel::create($request->all());

        return response()->json([
            'data' => $data ? "Success data was added" : "Failed add data"
        ]);
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
        $data = Struktur_child1Model::where('id_struktur', $params)->find();

        return response()->json([
            'data' => $data
                ? [
                    'struktur_child1' => $data,
                    'struktur_child2' => Struktur_child2Model::where('id_struktur_child1', $data[0]['id_struktur_child1'])->find()
                ]
                : "Failed, data not found"
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
