<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\iku_parentModel;
use App\Models\iku_child1Model;
use App\Models\iku_child2Model;

class IKUController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return Response()->json([
            'data' => iku_parentModel::join('iku_child1', 'iku_parent.id_iku_parent', '=', 'iku_child1.id_iku_child1')
            ->join('iku_child2', 'iku_parent.id_iku_parent', '=', 'iku_child2.id_iku_child2')
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

        $data = iku_parentModel::create($request->all());

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
        $data = iku_parentModel::join('iku_child1', 'iku_parent.id_iku_parent', '=', 'iku_child1.id_iku_child1')
        ->join('iku_child2', 'iku_parent.id_iku_parent', '=', 'iku_child2.id_iku_child2')
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
        $data = iku_parentModel::find($params)->update($request->all());

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
        $data = iku_parentModel::find($params);
        $data ? $data->delete() : "";

        return response()->json([
            'data' => $data ? "Success delete data" : "Failed, data not found"
        ]);
    }
}
