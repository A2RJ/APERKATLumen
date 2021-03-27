<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\strukturModel;
use App\Models\struktur_childModel;

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
            'data' => strukturModel::join('struktur_child', 'struktur.id_struktur', '=', 'struktur_child.id_struktur_child')
            ->paginate(15)
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
     */
    public function show($params)
    {
        $data = strukturModel::join('struktur_child', 'struktur.id_struktur', '=', 'struktur_child.id_struktur_child')
        ->find($params);

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
