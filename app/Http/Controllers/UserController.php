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
            'data' => userModel::join('struktur', 'user.id_struktur', 'struktur.id_struktur')
                ->join('struktur_child1', 'user.id_struktur_child1', 'struktur_child1.id_struktur_child1')
                ->join('struktur_child2', 'user.id_struktur_child2', 'struktur_child2.id_struktur_child2')
                ->select('user.id_user', 'user.fullname', 'struktur.nama_struktur', 'struktur_child1.nama_struktur_child1', 'user.created_at')
                ->get()
        ]);
    }

    public function rkatUser()
    {
        return Response()->json([
            'data' => userModel::join('struktur', 'user.id_struktur', 'struktur.id_struktur')
                ->join('struktur_child1', 'user.id_struktur_child1', 'struktur_child1.id_struktur_child1')
                ->select('user.id_user as value', 'user.fullname as text')
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
        $userStruktur = userModel::join('struktur', 'user.id_struktur', 'struktur.id_struktur')
        ->join('struktur_child1', 'user.id_struktur_child1', 'struktur_child1.id_struktur_child1')
        ->join('struktur_child2', 'user.id_struktur_child2', 'struktur_child2.id_struktur_child2')
        ->select('user.*', 'struktur.*', 'user.id_struktur_child1', 'struktur_child1.nama_struktur_child1', 'struktur_child2.nama_struktur_child2')
        ->where('user.id_user', $params)
        ->first();
        if ($userStruktur->nama_struktur == true && $userStruktur->nama_struktur_child1 == '0' && $userStruktur->nama_struktur_child2 == '0') {
            $id_struktur = $userStruktur->id_struktur;
            $nama_struktur = $userStruktur->nama_struktur;
        } else if ($userStruktur->nama_struktur == true && $userStruktur->nama_struktur_child1 != '0' && $userStruktur->nama_struktur_child2 == '0') {
            $id_struktur = $userStruktur->id_struktur_child1;
            $nama_struktur = $userStruktur->nama_struktur_child1;
        } else if ($userStruktur->nama_struktur == true && $userStruktur->nama_struktur_child1 != '0' && $userStruktur->nama_struktur_child2 != '0') {
            $id_struktur = $userStruktur->id_struktur_child2;
            $nama_struktur = $userStruktur->nama_struktur_child2;
        }
        return response()->json([
            'data' => $userStruktur ? [
                'id_struktur' => $id_struktur,
                'nama_struktur' => $nama_struktur
            ] : "Failed, data not found"
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
