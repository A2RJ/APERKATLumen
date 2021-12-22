<?php

namespace App\Http\Controllers;

use App\Models\PencairanModel;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Http;

class PencairanController extends Controller
{
    public function index($id)
    {
        return response()->json([
            'status' => 'success',
            'data' => PencairanModel::where('pencairan_id', $id)->get()
        ], 200);
    }

    public function store(Request $request)
    {
        $this->validate($request, [
            'pencairan_id' => 'required',
            'nominal' => 'required',
            'images' => 'required'
        ]);

        $pencairan = PencairanModel::create($request->all());

        return response()->json([
            'status' => 'success',
            'data' => $pencairan
        ], 200);
    }

    public function destroy($id)
    {
        $pencairan = PencairanModel::findOrFail($id)->delete();

        return response()->json([
            'status' => 'success',
            'data' => $pencairan
        ], 200);
    }
}
