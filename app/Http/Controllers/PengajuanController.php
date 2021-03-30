<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\pengajuanModel;
use App\Models\pengajuanHistoryModel;
use App\Models\validasiModel;
use Illuminate\Support\Str;
use Illuminate\Http\File;

class PengajuanController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return Response()->json([
            'data' => pengajuanModel::join('rkat', 'pengajuan.id_rkat', '=', 'rkat.id_rkat')
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
        $this->validation($request);

        $data = pengajuanModel::create($request->all());

        if ($request->hasFile('rab')) {
            $file = $request->file('rab');
            $fileName = time() . "_" . Str::random(5) . $request->email . "." . $file->extension();
            $file->move("rab", $fileName);

            $data->rab = $fileName;
            $data->save();
        }

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
        $data = pengajuanModel::join('rkat', 'pengajuan.id_rkat', '=', 'rkat.id_rkat')
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
        $data = pengajuanModel::find($params);
        $data ? $data->update($request->all()) : false;

        $this->autoProccess($params);

        return response()->json([
            'data' => $data ? "Data was updated" : "Failed to update data not found"
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
        $data = pengajuanModel::find($params);
        $data ? $data->delete() : false;
        $pengajuan = pengajuanHistoryModel::find($params);
        $pengajuan ? $pengajuan->delete() : false;
        $validasi = validasiModel::where('id_pengajuan', $params);
        $validasi ? $validasi->delete() : false;

        return response()->json([
            'data' => $data
                ? "Success delete data"
                : "Failed, data not found"
        ]);
    }

    /**
     * Get the specified history from storage.
     *
     * @param  int  $params
     * @return \Illuminate\Http\Response
     */
    public function history($params)
    {
        $data = pengajuanHistoryModel::join('validasi', 'pengajuan_history.id_pengajuan', '=', 'validasi.id_pengajuan_history')
            ->where('pengajuan_history.id_rkat', $params)->paginate(15);

        return response()->json([
            'data' => $data ? $data : "Failed, data not found"
        ]);
    }

    /**
     * Approve the specified submission from user
     */
    public function approve($params)
    {
        $data = $this->autoProccess($params);

        return response()->json([
            'data' => $data ? "Submission was approved" : "Failed, data not found"
        ]);
    }

    /**
     * Decline the specified submission from user
     */
    public function decline($params)
    {
        $data = $this->autoProccess($params);

        return response()->json([
            'data' => $data ? "Submission was declined" : "Failed, data not found"
        ]);
    }

    /**
     * Copy coloumn from tb pengajuan to tb pengajuan history database
     * Insert data to tb validasi
     */
    public function autoProccess($params)
    {
        pengajuanModel::query()
            ->where('id_pengajuan', $params)
            ->each(function ($oldPost) {
                $newPost = $oldPost->replicate();
                $newPost->setTable('pengajuan_history');
                $newPost->save();
            });

        // Get struktur user by token
        $data = pengajuanHistoryModel::latest()->first();
        validasiModel::create([
            "id_pengajuan_history" => $data->id_pengajuan,
            "id_struktur" => 1,
            "status_validasi" => "status validasi",
            "message" => "message",
        ]);
    }

    public function status($params)
    {
        $data = validasiModel::join('pengajuan_history', 'validasi.id_pengajuan', '=', 'pengajuan_history.id_pengajuan')
            ->where('id_pengajuan', $params);
        // ->where('id_struktur', '<', "level user login");

        return response()->json([
            'data' => $data ? $data : "Failed, data not found"
        ]);
    }

    /**
     * Input validations using default laravel
     */
    public function validation($request)
    {
        $this->validate($request, [
            "id_rkat" => "required|numeric",
            "target_capaian" => "required",
            "bentuk_pelaksanaan_program" => "required",
            "tempat_program" => "required",
            "tanggal" => "required",
            "bidang_terkait" => "required",
            "id_iku_parent" => "required",
            "id_iku_child1" => "required",
            "id_iku_child2" => "required",
            "biaya_program" => "required",
            "rab" => "nullable",
            "status_pengajuan" => "required"
        ]);
    }
}
