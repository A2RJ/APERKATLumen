<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\RKATModel;

class NonRKATController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index($params)
    {
        return Response()->json([
            'data' => RKATModel::where('id_user', $params)->get()
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
            'data' => $data,
            'status' => $this->status("id_pengajuan"),
            'history' => $this->history("id_pengajuan")
        ]);
    }

    /**
     * Subdivisi
     */
    public function subDivisi($params)
    {
        $data = RKATModel::find($params);

        return response()->json([
            'data' => $data ? $data : "Failed, data not found"
        ]);
    }

    /**
     * Status
     */
    public function status($params)
    {
        $data = RKATModel::find($params);

        return response()->json([
            'data' => $data ? $data : "Failed, data not found"
        ]);
    }

    /**
     * Status
     */
    public function history($params)
    {
        $data = RKATModel::find($params);

        return response()->json([
            'data' => $data ? $data : "Failed, data not found"
        ]);
    }

    /**
     * Status
     */
    public function approved($params)
    {
        $data = RKATModel::find($params);

        return response()->json([
            'data' => $data ? $data : "Failed, data not found"
        ]);
    }

    /**
     * Status
     */
    public function declined($params)
    {
        $data = RKATModel::find($params);

        return response()->json([
            'data' => $data ? $data : "Failed, data not found"
        ]);
    }

    /**
     * Status
     */
    public function sendMail($params)
    {
        $data = RKATModel::find($params);

        return response()->json([
            'data' => $data ? $data : "Failed, data not found"
        ]);
    }

    /**
     * autoproccess
     * buat history
     * buat message
     * sendMail
     */
    public function autoproccess($params)
    {
        
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
        ]);

        $data = RKATModel::create($request->all());

        return response()->json([
            'data' => $data ? "Success data was added" : "Failed add data"
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
        return response()->json([
            'data' => "Failed, data not found"
        ]);
    }
    public function delete(Request $request)
    {
        return response()->json([
            'data' => $request->all()
        ]);
    }
}
