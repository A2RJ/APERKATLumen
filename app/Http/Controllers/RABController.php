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
        // RABModel::where('pengajuan_id', $request->pengajuan_id)->truncate();

        $rab = RABModel::insert($request->all());

        return response()->json($rab, 201);
    }

    public function destroy(RABModel $params)
    {
        // $params->delete();

        return response()->json($params, 204);
    }
}
