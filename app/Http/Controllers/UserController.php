<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
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
        $this->validation($request);

        $data = userModel::create($request->all());
        $data->password = Hash::make($request->input('password'));
        $data->save();

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
        $this->validation($request);

        $data = userModel::find($params)->update($request->all());
        if ($request->input('password')) {
            $update = userModel::find($params);
            $update->password = Hash::make($request->input('password'));
            $update->save();
        }

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
        $data = userModel::find($params)->delete();

        return response()->json([
            'data' => $data ? "Success delete data" : "Failed, data not found"
        ]);
    }

    public function login(Request $request)
    {
        $this->validate($request, [
            'email' => 'required|email|exists:user.email',
            'password' => 'required',
        ]);

        $data = userModel::where('email', $request->email)->first();
        if ($data && Hash::check($request->password, $data->password)) {
            $token = Hash::make($request->password);

            $data = userModel::find($data->id_user);
            $data->token = $token;
            $data->save();

            return response()->json([
                'status' => 'success',
                'data' => $token
            ]);
        }
        return response()->json([
            'status' => 'Failed',
            'data' => 'Data not matching'
        ]);
    }

    public function userLogin(Request $request)
    {
        $data = userModel::where('token', $request->token)->find();
        return response()->json([
            'data' => $data ? $data : null
        ]);
    }

    public function logout(Request $request)
    {
        $data = userModel::where('token', $request->token)->find();
        $data->token = '';
        $data->save();

        return response()->json([
            'data' => $data ? 'Success' : 'Failed'
        ]);
    }

    public function resetEmailURL(Request $request)
    {
    }

    public function validation($request)
    {
        $this->validate($request, [
            "fullname" => "required",
            "email" => "required|email|unique:user.email",
            "password" => "required|min:8",
            "id_struktur" => "required",
            "id_struktur_child1" => "nullable",
            "id_struktur_child2" => "nullable",
            "nomor_wa" => "required|numeric",
            "bank" => "required",
            "no_rek" => "required|numeric"
        ]);
    }
}
