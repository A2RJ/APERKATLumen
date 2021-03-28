<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\pengajuanModel;
use App\Models\pengajuanHistoryModel;
use App\Models\validasiModel;

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

        $file = $request->file('rab_file');
        $nama_file = time() . "_" . $file->getClientOriginalName();
        $file->move("rab_file", $nama_file);

        $data->rab = $nama_file;
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
        $this->validation($request);
        $this->autoProccess($request, $params);

        $data = pengajuanModel::find($params)->update($request->all());

        if ($request->file('rab_file')) {
            $data = pengajuanModel::find($params);
            $file = $request->file('rab_file');
            $nama_file = time() . "_" . $file->getClientOriginalName();
            $file->move("rab_file", $nama_file);

            $data->rab = $nama_file;
            $data->save();
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
        $data = pengajuanModel::find($params);
        $data ? $data->delete() : "";

        return response()->json([
            'data' => $data ? "Success delete data" : "Failed, data not found"
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
        $data = pengajuanHistoryModel::find($params);

        return response()->json([
            'data' => $data ? $data : "Failed, data not found"
        ]);
    }

    public function approve(Request $request)
    {
        $data = validasiModel::updateOrCreate($request->all());

        return response()->json([
            'data' => $data ? "Approved" : "Failed, data not found"
        ]);
    }

    public function decline(Request $request)
    {
        $data = validasiModel::updateOrCreate($request->all());

        return response()->json([
            'data' => $data ? "Declined" : "Failed, data not found"
        ]);
    }

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
            "rab" => "nullable|file|image|mimes:jpeg,png,jpg|max:2048",
            "status_pengajuan" => "required"
        ]);
    }

    public function autoProccess(Request $request, $params)
    {
        pengajuanModel::query()
        ->where('id_pengajuan', $request->input('id_pengajuan'))
        ->each(function ($oldPost) {
            $newPost = $oldPost->replicate();
            $newPost->setTable('pengajuan_history');
            $newPost->save();
        });

        validasiModel::create([
            "id_pengajuan" => $params,
            "id_struktur" => 1,
            "status_pengajuan" => "status pengajuan",
            "message" => "message",
        ]);
    }
}
