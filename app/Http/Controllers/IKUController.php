<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Models\IKU_parentModel;
use App\Models\IKU_child1Model;
use App\Models\IKU_child2Model;

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
            'data' => DB::table('iku_parent')
                ->select('id_iku_parent as code', 'iku_parent as label')
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
            "iku_parent"
        ]);

        $data = IKU_parentModel::create($request->all());

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
    public function getIkuChild1($params)
    {
        $data = DB::table('iku_child1')
            ->where('id_iku_parent', $params)
            ->select('id_iku_child1 as code', 'iku_child1 as label')
            ->get();

        return response()->json([
            'data' => $data
                ? $data
                : "Failed, data not found"
        ]);
    }

    public function child1ByID($params)
    {
        $data = DB::table('iku_child1')
            ->where('id_iku_child1', $params)
            ->select('id_iku_child1 as code', 'iku_child1 as label')
            ->first();

        return response()->json([
            'data' => $data
                ? $data
                : "Failed, data not found"
        ]);
    }
    
    public function getIkuChild2($params)
    {
        $data = DB::table('iku_child2')
            ->where('id_iku_child1', $params)
            ->select('id_iku_child2 as code', 'iku_child2 as label')
            ->get();

        return response()->json([
            'data' => $data
                ? $data
                : "Failed, data not found"
        ]);
    }
    
    public function child2ByID($params)
    {
        $data = DB::table('iku_child2')
            ->where('id_iku_child2', $params)
            ->select('id_iku_child2 as code', 'iku_child2 as label')
            ->first();

        return response()->json([
            'data' => $data
                ? $data
                : "Failed, data not found"
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
        $data = IKU_child1Model::find($params);

        return response()->json([
            'data' => $data
                ? [
                    'iku_child1' => $data,
                    'iku_child2' => IKU_child2Model::where('id_iku_child1', $data[0]['id_iku_child1'])->find()
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
        $data = IKU_parentModel::find($params)->update($request->all());

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
        $data = IKU_parentModel::find($params);
        $data ? $data->delete() : "";

        return response()->json([
            'data' => $data ? "Success delete data" : "Failed, data not found"
        ]);
    }
}
