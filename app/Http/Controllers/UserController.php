<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use App\Models\userModel;
use App\Models\strukturModel;

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
            'data' => userModel::join('struktur_child1', 'user.id_struktur_child1', 'struktur_child1.id_struktur_child1')
                ->paginate(10)
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

    public function datauser($params)
    {
        $data = userModel::where('id_user', $params)->get();
        if ($data[0]->id_struktur_child2 != null) {
            $data = [
                'level' => "prodi"
            ];
        } elseif ($data[0]->id_struktur_child2 == 0 && $data[0]->id_struktur_child1 == true) {
            $data = [
                'level' => "fakultas"
            ];
        } elseif ($data[0]->id_struktur == true && $data[0]->id_struktur_child1 == null && $data[0]->id_struktur_child2 == null) {
            $struktur = strukturModel::where('id_struktur', '<=', $data[0]->id_struktur)->orderBy('level', 'DESC')->get();
            $hitung = $struktur->count();

            if ($hitung == 1) {
                $data = [
                    'level' => "rektor"
                ];
            } elseif ($hitung == 2) {
                $data = [
                    'level' => "warek"
                ];
            } elseif ($hitung == 3) {
                $data = [
                    'level' => "dirKeuangan"
                ];
            }
        }
        
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
            'email' => 'required|email',
            'password' => 'required',
        ]);

        $data = userModel::where('email', $request->email)->first();
        if ($data && Hash::check($request->password, $data->password)) {
            $token = Hash::make($request->password);

            $data->token = $token;
            $data->save();

            return response()->json([
                'access_token' => $token,
                'token_type' => 'bearer',
                "expires_in" => 3600
            ]);
        }
        return response()->json(['message' => 'Unauthorized'], 401);
    }

    public function userLogin(Request $request)
    {
        $explode = explode(' ', $request->header('Authorization'));
        $data = userModel::where('token', end($explode))->first();

        return response()->json([
            'data' => $data ? $data : ""
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
