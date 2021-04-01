<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Str;
use App\Models\pengajuanModel;
use App\Models\pengajuanHistoryModel;
use App\Models\rkatModel;
use App\Models\struktur_child1Model;
use App\Models\struktur_child2Model;
use App\Models\strukturModel;
use App\Models\userModel;
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
        $this->autoProccess($request, $params);

        $data = pengajuanModel::find($params);
        $data ? $data->update($request->all()) : false;

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
        $validasi = validasiModel::where('id_pengajuan_history', $params);
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
     * Approve the specified submission from user by id_pengajuan
     */
    public function approve(Request $request, $params)
    {
        $data = $this->autoProccess($request, $params, true);

        return response()->json([
            'data' => $data ? "Submission was approved" : "Failed, data not found"
        ]);
    }

    /**
     * Decline the specified submission from user
     */
    public function decline(Request $request, $params)
    {
        $data = $this->autoProccess($request, $params, false);

        return response()->json([
            'data' => $data ? "Submission was declined" : "Failed, data not found"
        ]);
    }

    /**
     * Copy coloumn from tb pengajuan to tb pengajuan history database
     * Insert data to tb validasi
     */
    public function autoProccess($request, $params, $status = null)
    {
        pengajuanModel::query()
            ->where('id_pengajuan', $params)
            ->each(function ($oldPost) {
                $newPost = $oldPost->replicate();
                $newPost->setTable('pengajuan_history');
                $newPost->save();
            });

        $pengajuan = pengajuanModel::find($params);
        $pengajuan_history = pengajuanHistoryModel::where('id_rkat', $pengajuan->id_rkat)->latest()->first();

        $explode = explode(' ', $request->header('Authorization'));
        $userStruktur = userModel::where('token', end($explode))->first();

        $id_struktur = $userStruktur->id_struktur;
        $id_struktur_child1 = $userStruktur->id_struktur_child1;
        $id_struktur_child2 = $userStruktur->id_struktur_child2;

        if ($id_struktur_child2) {
            $struktur = $id_struktur_child2;
            $data = struktur_child2Model::find($struktur);
            $nama_struktur = $data->nama_struktur_child2;
        } elseif ($id_struktur_child1 == true && $id_struktur_child2 == null) {
            $struktur = $id_struktur_child1;
            $data = struktur_child1Model::find($struktur);
            $nama_struktur = $data->nama_struktur_child1;
        } elseif ($id_struktur == true && $id_struktur_child1 == null && $id_struktur_child2 == null) {
            $struktur = $id_struktur;
            $data = strukturModel::find($struktur);
            $nama_struktur = $data->nama_struktur;
        }

        $rkat = rkatModel::find($pengajuan->id_rkat);

        if ($rkat->id_rkat !== $userStruktur->id_rkat) {
            $message = $nama_struktur . " melakukan update data pengajuan";
        } else {
            $message = "Telah disetujui oleh " . $nama_struktur;
        }

        validasiModel::create([
            "id_pengajuan_history" => $pengajuan_history->id_pengajuan,
            "id_struktur" => $struktur,
            "status_validasi" => $status ? $status : 0,
            "message" => $message,
        ]);

        return true;
    }

    /**
     * Get status validasi berdasarkan id_pengajuan
     * ambil data atasan masing2 akun
     */

    public function statusNull($id)
    {
        $data = validasiModel::where('id_struktur', $id)->first();
        $data ? $data = $data->status_validasi : $data;
        return $data;
    }

    public function status(Request $request, $params)
    {
        $pengajuan = pengajuanModel::join('rkat', 'pengajuan.id_rkat', 'rkat.id_rkat')
            ->join('user', 'rkat.id_user', 'user.id_user')
            ->where('pengajuan.id_pengajuan', $params)
            ->first();

        $struktur = strukturModel::where('id_struktur', 1)
            ->orWhere('id_struktur', 2)
            ->orWhere('id_struktur', 3)
            ->orderBy('level', 'DESC')
            ->get();

        if ($pengajuan->id_struktur_child2) {
            $child2 = struktur_child2Model::find($pengajuan->id_struktur_child2);
            $child1 = struktur_child1Model::find($pengajuan->id_struktur_child1);

            $data = [
                [
                    "id_struktur" => $child2->id_struktur_child2,
                    "nama_struktur" => $child2->nama_struktur_child2,
                    "status" => $this->statusNull($child2->id_struktur_child2)
                ],
                [
                    "id_struktur" => $child1->id_struktur_child1,
                    "nama_struktur" => $child1->nama_struktur_child1,
                    "status" => $this->statusNull($child1->id_struktur_child1)
                ],
                [
                    "id_struktur" => $struktur[0]->id_struktur,
                    "nama_struktur" => $struktur[0]->nama_struktur,
                    "status" => $this->statusNull($struktur[0]->id_struktur)
                ],
                [
                    "id_struktur" => $struktur[1]->id_struktur,
                    "nama_struktur" => $struktur[1]->nama_struktur,
                    "status" => $this->statusNull($struktur[1]->id_struktur)
                ],
                [
                    "id_struktur" => $struktur[2]->id_struktur,
                    "nama_struktur" => $struktur[2]->nama_struktur,
                    "status" => $this->statusNull($struktur[2]->id_struktur)
                ]
            ];
        } elseif ($pengajuan->id_struktur_child1 == true && $pengajuan->id_struktur_child2 == null) {
            $child1 = struktur_child1Model::find($pengajuan->id_struktur_child1);
            $data = [
                [
                    "id_struktur" => $child1->id_struktur_child1,
                    "nama_struktur" => $child1->nama_struktur_child1,
                    "status" => $this->statusNull($child1->id_struktur_child1)
                ],
                [
                    "id_struktur" => $struktur[0]->id_struktur,
                    "nama_struktur" => $struktur[0]->nama_struktur,
                    "status" => $this->statusNull($struktur[0]->id_struktur)
                ],
                [
                    "id_struktur" => $struktur[1]->id_struktur,
                    "nama_struktur" => $struktur[1]->nama_struktur,
                    "status" => $this->statusNull($struktur[1]->id_struktur)
                ],
                [
                    "id_struktur" => $struktur[2]->id_struktur,
                    "nama_struktur" => $struktur[2]->nama_struktur,
                    "status" => $this->statusNull($struktur[2]->id_struktur)
                ]
            ];
        } elseif ($pengajuan->id_struktur == true && $pengajuan->id_struktur_child1 == null && $pengajuan->id_struktur_child2 == null) {
            $struktur = strukturModel::where('id_struktur', '<=', $pengajuan->id_struktur)
                ->orderBy('level', 'DESC')
                ->get();
            $data = $struktur;
        }

        return response()->json([
            "data" => $data
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
