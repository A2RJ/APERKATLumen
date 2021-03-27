<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\userModel;

class UserController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return Response()->json([
            'data' => userModel::paginate()
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
            "fullname" => 'required',
            "username" => 'required',
            "password" => 'required',
            "id_unit" => 'required',
            "email" => 'required',
            "nomor_wa" => 'required',
            "bank" => 'required',
            "no_rek" => 'required'
        ]);

        $data = userModel::create($request->all());

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
        $data = userModel::find($params);

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
        $data = userModel::find($params)->update($request->all());

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
        $data = userModel::find($params);
        $data ? $data->delete() : "";

        return response()->json([
            'data' => $data ? "Success delete data" : "Failed, data not found"
        ]);
    }
}
