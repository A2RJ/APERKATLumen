<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\File;
use App\Models\UserModel;
use App\Models\RKATModel;
use App\Models\strukturModel;
use App\Models\validasiModel;
use App\Models\pengajuanModel;
use App\Models\struktur_child1Model;
use App\Models\struktur_child2Model;
use App\Models\pengajuanHistoryModel;

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
            'data' => pengajuanModel::join('rkat', 'pengajuan.kode_rkat', '=', 'rkat.kode_rkat')
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
        $this->validate($request, [
            "kode_rkat" => "required",
            "id_user" => "required",
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

        $data = pengajuanModel::create($request->all());
        $this->autoProccess($request, $data->id_pengajuan, true, "Input data pengajuan");

        // biaya program - total anggaran RKAT
        // $rkat = RKATModel::where('kode_rkat', $data->kode_rkat)->first();
        // $rkat->sisa_anggaran = intval($rkat->total_anggaran) - intval($data->biaya_program);
        // $rkat->save();

        return response()->json([
            'data' => $data ? $data : "Failed, data not save"
        ]);
    }

    public function upload(Request $request)
    {
        if ($request->hasFile('file')) {
            $fileName = uniqid(40) . "." . $request->file('file')->getClientOriginalExtension();
            $request->file('file')->move('../../', $fileName);
            return $fileName;
        } else {
            return false;
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $params = id_user
     * @return \Illuminate\Http\Response
     */
    public function byUser($params)
    {
        $data = pengajuanModel::join('rkat', 'pengajuan.kode_rkat', 'rkat.kode_rkat')
            ->join('user', 'pengajuan.id_user', 'user.id_user')
            ->join('struktur_child1', 'user.id_struktur_child1', 'struktur_child1.id_struktur_child1')
            ->select("pengajuan.*", "user.fullname", "struktur_child1.nama_struktur_child1")
            ->where('pengajuan.id_user', $params)->paginate();

        return response()->json([
            'data' => $data ? $data : "Failed, data not found"
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
        $data = pengajuanModel::join('rkat', 'pengajuan.kode_rkat', '=', 'rkat.kode_rkat')
            ->select("pengajuan.*")
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
        $this->autoProccess($request, $params, true);

        $data = pengajuanModel::find($params);
        // $r = $data;
        $data ? $data->update($request->all()) : false;

        // $rkat = RKATModel::where('kode_rkat', $request->kode_rkat)->first();
        // $rkat->sisa_anggaran = (intval($rkat->total_anggaran) + intval($r->biaya_program)) - intval($request->biaya_program);
        // $rkat->save();

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

        // $rkat = RKATModel::where('kode_rkat', $data->kode_rkat)->first();
        // $rkat->sisa_anggaran = intval($rkat->total_anggaran) + intval($data->biaya_program);
        // $rkat->save();

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
            ->where('pengajuan_history.id', $params)->get();

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
    public function autoProccess($request, $params, $status = 0)
    {
        pengajuanModel::query()
            ->where('id_pengajuan', $params)
            ->each(function ($oldPost) {
                $newPost = $oldPost->replicate();
                $newPost->setTable('pengajuan_history');
                $newPost->id = $oldPost->id_pengajuan;
                $newPost->save();
            });

        $pengajuan = pengajuanModel::find($params);
        $pengajuan_history = pengajuanHistoryModel::where('kode_rkat', $pengajuan->kode_rkat)->latest()->first();
        
        if ($request->id_atasan) {
            $userStruktur = UserModel::join('struktur', 'user.id_struktur', 'struktur.id_struktur')
                ->join('struktur_child1', 'user.id_struktur_child1', 'struktur_child1.id_struktur_child1')
                ->join('struktur_child2', 'user.id_struktur_child2', 'struktur_child2.id_struktur_child2')
                ->select('user.*', 'struktur.*', 'user.id_struktur_child1', 'struktur_child1.nama_struktur_child1', 'struktur_child2.nama_struktur_child2')
                ->where('user.id_user', $request->id_atasan)
                ->first();
        } else {
            $userStruktur = UserModel::join('struktur', 'user.id_struktur', 'struktur.id_struktur')
                ->join('struktur_child1', 'user.id_struktur_child1', 'struktur_child1.id_struktur_child1')
                ->join('struktur_child2', 'user.id_struktur_child2', 'struktur_child2.id_struktur_child2')
                ->select('user.*', 'struktur.*', 'user.id_struktur_child1', 'struktur_child1.nama_struktur_child1', 'struktur_child2.nama_struktur_child2')
                ->where('user.id_user', $request->id_user)
                ->first();
        }

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

        validasiModel::create([
            "id_pengajuan_history" => $pengajuan_history->id_pengajuan,
            "id_struktur" => $id_struktur,
            "status_validasi" => $status,
            "message" => $nama_struktur . " - " . $request->message
        ]);

        return true;
    }

    /**
     * Get status validasi berdasarkan id_pengajuan
     * ambil data atasan masing2 akun
     */

    public function validasi($params)
    {
        $data = pengajuanHistoryModel::join('validasi', 'pengajuan_history.id_pengajuan', 'validasi.id_pengajuan_history')
            ->where('pengajuan_history.id', $params)
            ->select('validasi.status_validasi')
            ->orderBy('validasi.id_validasi', 'DESC')
            ->first();

        return $data ? $data->status_validasi : null;
    }

    public function statusNull($id_struktur, $id_pengajuan)
    {
        $data = validasiModel::join('pengajuan_history', 'validasi.id_pengajuan_history', 'pengajuan_history.id_pengajuan')
            ->join('pengajuan', 'pengajuan_history.id', 'pengajuan.id_pengajuan')
            ->where('validasi.id_struktur', $id_struktur)
            ->where('pengajuan.id_pengajuan', $id_pengajuan)
            ->where('validasi.message', '!=', 'Direktur Keuangan - Sudah dilakukan pencairan')
            ->select('validasi.status_validasi')
            ->orderBy('validasi.id_validasi', 'DESC')
            ->first();

        return $data ? $data->status_validasi : $data;
    }

    public function pencairan($id_struktur, $id_pengajuan)
    {
        $data = validasiModel::join('pengajuan_history', 'validasi.id_pengajuan_history', 'pengajuan_history.id_pengajuan')
            ->join('pengajuan', 'pengajuan_history.id', 'pengajuan.id_pengajuan')
            ->where('validasi.id_struktur', $id_struktur)
            ->where('pengajuan.id_pengajuan', $id_pengajuan)
            ->where('validasi.message', 'Direktur Keuangan - Sudah dilakukan pencairan')
            ->select('validasi.status_validasi')
            ->orderBy('validasi.id_validasi', 'DESC')
            ->first();

        return $data ? $data->status_validasi : $data;
    }

    public function status($params)
    {
        $pengajuan = pengajuanModel::join('rkat', 'pengajuan.kode_rkat', 'rkat.kode_rkat')
            ->join('user', 'pengajuan.id_user', 'user.id_user')
            ->where('pengajuan.id_pengajuan', $params)
            ->first();

        $fakultas =  UserModel::join('struktur_child1', 'user.id_struktur_child1', 'struktur_child1.id_struktur_child1')
            ->join('struktur_child2', 'user.id_struktur_child2', 'struktur_child2.id_struktur_child2')
            ->where('struktur_child2.id_struktur_child1', $pengajuan->id_struktur_child1)
            ->where('struktur_child2.nama_struktur_child2', '0')
            ->select('user.id_user')
            ->first();

        $struktur = strukturModel::where('id_struktur', 1)
            ->orWhere('id_struktur', 2)
            ->orWhere('id_struktur', 3)
            ->orderBy('level', 'DESC')
            ->get();

        $struktur = strukturModel::where('id_struktur', '<=', $pengajuan->id_struktur)->orderBy('level', 'DESC')->get();
        $keuangan =  UserModel::where('id_struktur', $struktur[0]->id_struktur)->where('id_struktur_child1', 9)->select('user.id_user')->first();

        if ($pengajuan->id_struktur == 1) {
            $rektor =  UserModel::where('id_struktur', $struktur[0]->id_struktur)->select('user.id_user')->first();
            $data = [
                [
                    "id_user" => $rektor->id_user,
                    "id_struktur" => $struktur[0]->id_struktur,
                    "nama_struktur" => $struktur[0]->nama_struktur,
                    "status" => $this->statusNull($struktur[0]->id_struktur, $pengajuan->id_pengajuan)
                ],
                [
                    "id_user" => 'pencairan',
                    "id_struktur" => $struktur[0]->id_struktur,
                    "nama_struktur" => $struktur[0]->nama_struktur,
                    "status" => $this->pencairan($struktur[0]->id_struktur, $pengajuan->id_pengajuan)
                ],
                [
                    "id_user" => 10,
                    "id_struktur" => 4,
                    "nama_struktur" => 'Sekniv',
                    "status" => $this->statusNull(4, $pengajuan->id_pengajuan)
                ]
            ];
        } elseif ($pengajuan->id_struktur == 2) {
            $warek =  UserModel::where('id_struktur', $struktur[0]->id_struktur)->select('user.id_user')->first();
            $rektor =  UserModel::where('id_struktur', $struktur[1]->id_struktur)->select('user.id_user')->first();
            $data = [
                [
                    "id_user" => $warek->id_user,
                    "id_struktur" => $struktur[0]->id_struktur,
                    "nama_struktur" => $struktur[0]->nama_struktur,
                    "status" => $this->statusNull($struktur[0]->id_struktur, $pengajuan->id_pengajuan)
                ],
                [
                    "id_user" => $rektor->id_user,
                    "id_struktur" => $struktur[1]->id_struktur,
                    "nama_struktur" => $struktur[1]->nama_struktur,
                    "status" => $this->statusNull($struktur[1]->id_struktur, $pengajuan->id_pengajuan)
                ],
                [
                    "id_user" => 'pencairan',
                    "id_struktur" => $struktur[0]->id_struktur,
                    "nama_struktur" => $struktur[0]->nama_struktur,
                    "status" => $this->pencairan($struktur[0]->id_struktur, $pengajuan->id_pengajuan)
                ],
                [
                    "id_user" => 10,
                    "id_struktur" => 4,
                    "nama_struktur" => 'Sekniv',
                    "status" => $this->statusNull(4, $pengajuan->id_pengajuan)
                ]
            ];
        } elseif ($pengajuan->id_struktur == 3) {
            $data = UserModel::join('struktur', 'user.id_struktur', 'struktur.id_struktur')
                ->join('struktur_child1', 'user.id_struktur_child1', 'struktur_child1.id_struktur_child1')
                ->join('struktur_child2', 'user.id_struktur_child2', 'struktur_child2.id_struktur_child2')
                ->select('user.id_struktur', 'user.id_struktur_child1', 'struktur_child1.nama_struktur_child1', 'struktur_child2.nama_struktur_child2')
                ->where('user.id_user', $pengajuan->id_user)
                ->first();

            $keuangan =  UserModel::where('id_struktur', $struktur[0]->id_struktur)->where('id_struktur_child1', 9)->select('user.id_user')->first();
            $warek =  UserModel::where('id_struktur', $struktur[1]->id_struktur)->select('user.id_user')->first();
            $rektor =  UserModel::where('id_struktur', $struktur[2]->id_struktur)->select('user.id_user')->first();

            if ($data->id_struktur == 3 && $data->id_struktur_child1 == 9) {
                $data = [
                    [
                        "id_user" => $keuangan->id_user,
                        "id_struktur" => $struktur[0]->id_struktur,
                        "nama_struktur" => $struktur[0]->nama_struktur,
                        "status" => $this->statusNull($struktur[0]->id_struktur, $pengajuan->id_pengajuan)
                    ],
                    [
                        "id_user" => $warek->id_user,
                        "id_struktur" => $struktur[1]->id_struktur,
                        "nama_struktur" => $struktur[1]->nama_struktur,
                        "status" => $this->statusNull($struktur[1]->id_struktur, $pengajuan->id_pengajuan)
                    ],
                    [
                        "id_user" => $rektor->id_user,
                        "id_struktur" => $struktur[2]->id_struktur,
                        "nama_struktur" => $struktur[2]->nama_struktur,
                        "status" => $this->statusNull($struktur[2]->id_struktur, $pengajuan->id_pengajuan)
                    ],
                    [
                        "id_user" => 'pencairan',
                        "id_struktur" => $struktur[0]->id_struktur,
                        "nama_struktur" => $struktur[0]->nama_struktur,
                        "status" => $this->pencairan($struktur[0]->id_struktur, $pengajuan->id_pengajuan)
                    ],
                    [
                        "id_user" => 10,
                        "id_struktur" => 4,
                        "nama_struktur" => 'Sekniv',
                        "status" => $this->statusNull(4, $pengajuan->id_pengajuan)
                    ]
                ];
            } else if ($data->nama_struktur_child1 == true && $data->nama_struktur_child2 == '0') {
                $child1 = struktur_child1Model::find($pengajuan->id_struktur_child1);

                $data = [
                    [
                        "id_user" => $pengajuan->id_user,
                        "id_struktur" => $child1->id_struktur_child1,
                        "nama_struktur" => $child1->nama_struktur_child1,
                        "status" => $this->statusNull($child1->id_struktur_child1, $pengajuan->id_pengajuan)
                    ],
                    [
                        "id_user" => $keuangan->id_user,
                        "id_struktur" => $struktur[0]->id_struktur,
                        "nama_struktur" => $struktur[0]->nama_struktur,
                        "status" => $this->statusNull($struktur[0]->id_struktur, $pengajuan->id_pengajuan)
                    ],
                    [
                        "id_user" => $warek->id_user,
                        "id_struktur" => $struktur[1]->id_struktur,
                        "nama_struktur" => $struktur[1]->nama_struktur,
                        "status" => $this->statusNull($struktur[1]->id_struktur, $pengajuan->id_pengajuan)
                    ],
                    [
                        "id_user" => $rektor->id_user,
                        "id_struktur" => $struktur[2]->id_struktur,
                        "nama_struktur" => $struktur[2]->nama_struktur,
                        "status" => $this->statusNull($struktur[2]->id_struktur, $pengajuan->id_pengajuan)
                    ],
                    [
                        "id_user" => 'pencairan',
                        "id_struktur" => $struktur[0]->id_struktur,
                        "nama_struktur" => $struktur[0]->nama_struktur,
                        "status" => $this->pencairan($struktur[0]->id_struktur, $pengajuan->id_pengajuan)
                    ],
                    [
                        "id_user" => 10,
                        "id_struktur" => 4,
                        "nama_struktur" => 'Sekniv',
                        "status" => $this->statusNull(4, $pengajuan->id_pengajuan)
                    ]
                ];
            } else {
                $child2 = struktur_child2Model::find($pengajuan->id_struktur_child2);
                $child1 = struktur_child1Model::find($pengajuan->id_struktur_child1);

                $data = [
                    [
                        "id_user" => $pengajuan->id_user,
                        "id_struktur" => $child2->id_struktur_child2,
                        "nama_struktur" => $child2->nama_struktur_child2,
                        "status" => $this->statusNull($child2->id_struktur_child2, $pengajuan->id_pengajuan)
                    ],
                    [
                        "id_user" => $fakultas->id_user,
                        "id_struktur" => $child1->id_struktur_child1,
                        "nama_struktur" => $child1->nama_struktur_child1,
                        "status" => $this->statusNull($child1->id_struktur_child1, $pengajuan->id_pengajuan)
                    ],
                    [
                        "id_user" => $keuangan->id_user,
                        "id_struktur" => $struktur[0]->id_struktur,
                        "nama_struktur" => $struktur[0]->nama_struktur,
                        "status" => $this->statusNull($struktur[0]->id_struktur, $pengajuan->id_pengajuan)
                    ],
                    [
                        "id_user" => $warek->id_user,
                        "id_struktur" => $struktur[1]->id_struktur,
                        "nama_struktur" => $struktur[1]->nama_struktur,
                        "status" => $this->statusNull($struktur[1]->id_struktur, $pengajuan->id_pengajuan)
                    ],
                    [
                        "id_user" => $rektor->id_user,
                        "id_struktur" => $struktur[2]->id_struktur,
                        "nama_struktur" => $struktur[2]->nama_struktur,
                        "status" => $this->statusNull($struktur[2]->id_struktur, $pengajuan->id_pengajuan)
                    ],
                    [
                        "id_user" => 'pencairan',
                        "id_struktur" => $struktur[0]->id_struktur,
                        "nama_struktur" => $struktur[0]->nama_struktur,
                        "status" => $this->pencairan($struktur[0]->id_struktur, $pengajuan->id_pengajuan)
                    ],
                    [
                        "id_user" => 10,
                        "id_struktur" => 4,
                        "nama_struktur" => 'Sekniv',
                        "status" => $this->statusNull(4, $pengajuan->id_pengajuan)
                    ]
                ];
            }
        }

        return response()->json([
            "data" => $data
        ]);
    }

    /**
     * Get submission bawahan by id user login
     */
    public function pengajuanSubordinate($params)
    {
        $userStruktur = UserModel::where('id_user', $params)->first();

        if ($userStruktur->id_struktur == 1) {
            $data = UserModel::join('pengajuan', 'user.id_user', 'pengajuan.id_user')
                ->join('rkat', 'pengajuan.kode_rkat', 'rkat.kode_rkat')
                ->join('struktur', 'user.id_struktur', 'struktur.id_struktur')
                ->join('struktur_child1', 'user.id_struktur_child1', 'struktur_child1.id_struktur_child1')
                ->join('struktur_child2', 'user.id_struktur_child2', 'struktur_child2.id_struktur_child2')
                ->where('user.id_struktur', '!=', 1)
                ->select('user.id_user', 'pengajuan.id_pengajuan', 'user.fullname', 'struktur_child1.nama_struktur_child1', 'rkat.created_at')
                ->get();
        } elseif ($userStruktur->id_struktur == 2) {
            $data = UserModel::join('pengajuan', 'user.id_user', 'pengajuan.id_user')
                ->join('rkat', 'pengajuan.kode_rkat', 'rkat.kode_rkat')
                ->join('struktur', 'user.id_struktur', 'struktur.id_struktur')
                ->join('struktur_child1', 'user.id_struktur_child1', 'struktur_child1.id_struktur_child1')
                ->join('struktur_child2', 'user.id_struktur_child2', 'struktur_child2.id_struktur_child2')
                ->where('user.id_struktur', '!=', 1)
                ->where('user.id_struktur', '!=', 2)
                ->select('user.id_user', 'pengajuan.id_pengajuan', 'user.fullname', 'struktur_child1.nama_struktur_child1', 'rkat.created_at')
                ->get();
        } elseif ($userStruktur->id_struktur == 4) {
            $data = UserModel::join('pengajuan', 'user.id_user', 'pengajuan.id_user')
                ->join('rkat', 'pengajuan.kode_rkat', 'rkat.kode_rkat')
                ->join('struktur', 'user.id_struktur', 'struktur.id_struktur')
                ->join('struktur_child1', 'user.id_struktur_child1', 'struktur_child1.id_struktur_child1')
                ->join('struktur_child2', 'user.id_struktur_child2', 'struktur_child2.id_struktur_child2')
                ->select('user.id_user', 'pengajuan.id_pengajuan', 'user.fullname', 'struktur_child1.nama_struktur_child1', 'rkat.created_at')
                ->get();
        } elseif ($userStruktur->id_struktur == 3) {
            if ($userStruktur->id_struktur == 3 && $userStruktur->id_struktur_child1 == 9) {
                $data = UserModel::join('pengajuan', 'user.id_user', 'pengajuan.id_user')
                    ->join('rkat', 'pengajuan.kode_rkat', 'rkat.kode_rkat')
                    ->join('struktur', 'user.id_struktur', 'struktur.id_struktur')
                    ->join('struktur_child1', 'user.id_struktur_child1', 'struktur_child1.id_struktur_child1')
                    ->join('struktur_child2', 'user.id_struktur_child2', 'struktur_child2.id_struktur_child2')
                    ->where('user.id_struktur', '!=', 1)
                    ->where('user.id_struktur', '!=', 2)
                    ->where('user.id_struktur', $userStruktur->id_struktur)
                    ->select('user.id_user', 'pengajuan.id_pengajuan', 'user.fullname', 'struktur_child1.nama_struktur_child1', 'rkat.created_at')
                    ->get();
            } else {
                $data = UserModel::join('pengajuan', 'user.id_user', 'pengajuan.id_user')
                    ->join('rkat', 'pengajuan.kode_rkat', 'rkat.kode_rkat')
                    ->join('struktur', 'user.id_struktur', 'struktur.id_struktur')
                    ->join('struktur_child1', 'user.id_struktur_child1', 'struktur_child1.id_struktur_child1')
                    ->join('struktur_child2', 'user.id_struktur_child2', 'struktur_child2.id_struktur_child2')
                    ->where('user.id_struktur', '!=', 1)
                    ->where('user.id_struktur', '!=', 2)
                    ->where('user.id_struktur', $userStruktur->id_struktur)
                    ->where('user.id_struktur_child1', $userStruktur->id_struktur_child1)
                    ->select('user.id_user', 'pengajuan.id_pengajuan', 'user.fullname', 'struktur_child1.nama_struktur_child1', 'rkat.created_at')
                    ->get();
            }
        }

        return response()->json([
            "data" => $data
        ]);
    }
}
