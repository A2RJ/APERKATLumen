<?php

namespace App\Http\Controllers;

use App\Models\RABModel;
use Illuminate\Http\Request;

class RABController extends Controller
{

    public function index($params)
    {
        return response()->json(RABModel::where('pengajuan_id', $params)->get());
    }

    public function store(Request $request)
    {
        $data = RABModel::where('pengajuan_id', $request[0]['pengajuan_id'])->get();
        // check if data is not empty and delete all data
        if (!$data->isEmpty()) {
            RABModel::where('pengajuan_id', $request[0]['pengajuan_id'])->delete();
        }

        $rab = RABModel::insert($request->all());

        return response()->json($rab, 201);
    }

    public function destroy(RABModel $params)
    {
        // $params->delete();

        return response()->json($params, 204);
    }
}
