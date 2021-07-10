<?php

namespace App\Http\Controllers;

use PDF;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;
use App\Models\File;
use App\Models\UserModel;
use App\Models\RKATModel;
use App\Models\strukturModel;
use App\Models\validasiModel;
use App\Models\pengajuanModel;
use App\Models\struktur_child1Model;
use App\Models\struktur_child2Model;
use App\Models\pengajuanHistoryModel;
use Illuminate\Support\Facades\DB;

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
            'data' => pengajuanModel::join('rkat', 'pengajuan.kode_rkat', 'rkat.kode_rkat')
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
            "latar_belakang" => "required",
            "sasaran" => "required",
            "target_capaian" => "required",
            "bentuk_pelaksanaan_program" => "required",
            "tempat_program" => "required",
            "tanggal" => "required",
            "bidang_terkait" => "required",
            "id_iku_parent" => "required",
            "id_iku_child1" => "required",
            "id_iku_child2" => "required",
            "biaya_program" => "required",
            "bank" => "required",
            "atn" => "required",
            "no_rek" => "required|numeric",
            "rab" => "nullable",
            "status_pengajuan" => "required"
        ]);

        $data = pengajuanModel::create($request->all());
        $this->autoProccess($request, $data->id_pengajuan, "Input data pengajuan");

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
            $request->file('file')->move('../', $fileName);
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
        $data = pengajuanModel::join('rkat', 'pengajuan.kode_rkat', 'rkat.kode_rkat')
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
    public function hapus($params)
    {
        $data = pengajuanModel::find($params);

        $data ? $data->delete() : false;
    }
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
        $data = $this->autoProccess($request, $params);
        return response()->json([
            'data' => $data ? "Submission was approved" : "Failed, data not found"
        ]);
    }

    /**
     * Decline the specified submission from user
     */
    public function decline(Request $request, $params)
    {
        $data = $this->autoProccess($request, $params);

        return response()->json([
            'data' => $data ? "Submission was declined" : "Failed, data not found"
        ]);
    }

    /**
     * Copy coloumn from tb pengajuan to tb pengajuan history database
     * Insert data to tb validasi
     */
    public function autoProccess($request, $params)
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
            "status_validasi" => $request->status,
            "message" => $nama_struktur . " - " . $request->message
        ]);

        $pengajuan->validasi_status = $request->status;
        $pengajuan->nama_status = $nama_struktur;
        $pengajuan->save();

        if ($request->message == "Sudah dilakukan pencairan" && $request->status == 3) {
            $rkat = RKATModel::where('kode_rkat', $request->kode_rkat)->first();
            $rkat->sisa_anggaran = pengajuanModel::where('kode_rkat', $request->kode_rkat)->where('validasi_status', $request->status)->sum('biaya_program');
            $rkat->save();
        }
        // $this->sendMail();

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

    public function statusNull($id_struktur, $id_pengajuan, $nomor, $warek = false)
    {
        if ($warek !== false) {
            $data = validasiModel::join('pengajuan_history', 'validasi.id_pengajuan_history', 'pengajuan_history.id_pengajuan')
                ->join('pengajuan', 'pengajuan_history.id', 'pengajuan.id_pengajuan')
                ->where('validasi.id_struktur', $id_struktur)
                ->where('pengajuan.id_pengajuan', $id_pengajuan)
                ->where('validasi.status_validasi', $nomor)
                ->skip(1)->first();
        } else {
            $data = validasiModel::join('pengajuan_history', 'validasi.id_pengajuan_history', 'pengajuan_history.id_pengajuan')
                ->join('pengajuan', 'pengajuan_history.id', 'pengajuan.id_pengajuan')
                ->where('validasi.id_struktur', $id_struktur)
                ->where('pengajuan.id_pengajuan', $id_pengajuan)
                ->where('validasi.status_validasi', $nomor)
                ->first();
        }

        return $data ? $data->status_validasi : false;
    }

    public function getID($a, $b, $c)
    {
        $data =  UserModel::join('struktur', 'user.id_struktur', 'struktur.id_struktur')
            ->join('struktur_child1', 'user.id_struktur_child1', 'struktur_child1.id_struktur_child1')
            ->join('struktur_child2', 'user.id_struktur_child2', 'struktur_child2.id_struktur_child2')
            ->where('struktur.nama_struktur', $a)
            ->where("struktur_child1.nama_struktur_child1", $b)
            ->where("struktur_child2.nama_struktur_child2", $c)
            ->select('user.id_user')
            ->first();
        return $data->id_user;
    }

    public function getEmail($params)
    {
        $data =  UserModel::find($params);
        return $data ? $data['email'] : null;
    }

    public function sendMail()
    {
        $data = $this->status(1);
        $data = $data->original['data'];

        $datab = array('name' => 'APERKAT - Universitas Teknologi Sumbawa');

        for ($i = 0; $i < count((array)$data); $i++) {
            $models = $this->getEmail($data[$i]['id_user']);
            if ($models) {
                Mail::send('mail', $datab, function ($message) use ($models) {
                    $message->to($models, 'ardiansyahputra')->subject('coba send email');
                    $message->from('gamesonly.a2rj@gmail.com', 'ardiansyah');
                });
            }
        }
    }

    public function getStruktur($params)
    {
        return UserModel::join('struktur', 'user.id_struktur', 'struktur.id_struktur')
            ->join('struktur_child1', 'user.id_struktur_child1', 'struktur_child1.id_struktur_child1')
            ->join('struktur_child2', 'user.id_struktur_child2', 'struktur_child2.id_struktur_child2')
            ->where('struktur.level', $params)
            ->where("struktur_child1.nama_struktur_child1", "0")
            ->where("struktur_child2.nama_struktur_child2", "0")
            ->first();
    }

    public function status($params)
    {
        $pengajuan = pengajuanModel::join('user', 'pengajuan.id_user', 'user.id_user')
            ->join('struktur', 'user.id_struktur', 'struktur.id_struktur')
            ->join('struktur_child1', 'user.id_struktur_child1', 'struktur_child1.id_struktur_child1')
            ->join('struktur_child2', 'user.id_struktur_child2', 'struktur_child2.id_struktur_child2')
            ->where('pengajuan.id_pengajuan', $params)
            ->select('pengajuan.id_pengajuan', 'user.id_struktur', 'user.email', 'user.id_struktur_child1', 'user.id_struktur_child2', 'struktur.nama_struktur', 'struktur.level', 'struktur_child1.nama_struktur_child1', 'struktur_child2.nama_struktur_child2')
            ->first();

        $warek = 0;
        $status = [];
        if ($pengajuan->level == "1" || $pengajuan->level == "2") {
            array_push($status, [
                "id_user" => $this->getID($pengajuan->nama_struktur, $pengajuan->nama_struktur_child1, $pengajuan->nama_struktur_child2),
                "id_struktur" => $pengajuan->id_struktur,
                "nama_struktur" => $pengajuan->nama_struktur,
                "status" => $this->statusNull($pengajuan->id_struktur, $pengajuan->id_pengajuan, 1)
            ]);
        } elseif ($pengajuan->level == "3" || $pengajuan->level == "4") {
            if ($pengajuan->nama_struktur_child1 == "0") {
                array_push(
                    $status,
                    [
                        "id_user" => $this->getID($pengajuan->nama_struktur, $pengajuan->nama_struktur_child1, $pengajuan->nama_struktur_child2),
                        "id_struktur" => $pengajuan->id_struktur,
                        "nama_struktur" => $pengajuan->nama_struktur,
                        "status" => $this->statusNull($pengajuan->id_struktur, $pengajuan->id_pengajuan, 1)
                    ]
                );
            } else {
                array_push(
                    $status,
                    [
                        "id_user" => $this->getID($pengajuan->nama_struktur, $pengajuan->nama_struktur_child1, '0'),
                        "id_struktur" => $pengajuan->id_struktur_child1,
                        "nama_struktur" => $pengajuan->nama_struktur_child1,
                        "status" => $this->statusNull($pengajuan->id_struktur_child1, $pengajuan->id_pengajuan, 1)
                    ],
                    [
                        "id_user" => $this->getID($pengajuan->nama_struktur, $pengajuan->nama_struktur_child1, $pengajuan->nama_struktur_child2),
                        "id_struktur" => $pengajuan->id_struktur,
                        "nama_struktur" => $pengajuan->nama_struktur,
                        "status" => $this->statusNull($pengajuan->id_struktur, $pengajuan->id_pengajuan, 2, $pengajuan->level == 3 ? $warek : false)
                    ]
                );
                if ($pengajuan->level == 3) $warek = $warek + 1;
            }
        } elseif ($pengajuan->level == "5") {
            if ($pengajuan->nama_struktur_child2 == "0") {
                array_push(
                    $status,
                    [
                        "id_user" => $this->getID($pengajuan->nama_struktur, $pengajuan->nama_struktur_child1, '0'),
                        "id_struktur" => $pengajuan->id_struktur_child1,
                        "nama_struktur" => $pengajuan->nama_struktur_child1,
                        "status" => $this->statusNull($pengajuan->id_struktur_child1, $pengajuan->id_pengajuan, 1)
                    ]
                );
            } else {
                array_push(
                    $status,
                    [
                        "id_user" => $this->getID($pengajuan->nama_struktur, $pengajuan->nama_struktur_child1, $pengajuan->nama_struktur_child2),
                        "id_struktur" => $pengajuan->id_struktur_child2,
                        "nama_struktur" => $pengajuan->nama_struktur_child2,
                        "status" => $this->statusNull($pengajuan->id_struktur_child2, $pengajuan->id_pengajuan, 1)
                    ],
                    [
                        "id_user" => $this->getID($pengajuan->nama_struktur, $pengajuan->nama_struktur_child1, '0'),
                        "id_struktur" => $pengajuan->id_struktur_child1,
                        "nama_struktur" => $pengajuan->nama_struktur_child1,
                        "status" => $this->statusNull($pengajuan->id_struktur_child1, $pengajuan->id_pengajuan, 2)
                    ]
                );
            }
        }

        // Untuk data yang double seperti Dir. keuangan maka ambil data pertama
        //  dan kedua berdasarkan id_struktur dan status true
        // 0 = tolak
        // 1 = input/revisi
        // 2 = terima
        // 3 = upload bukti pencairan

        $keuangan = UserModel::join('struktur', 'user.id_struktur', 'struktur.id_struktur')
            ->join('struktur_child1', 'user.id_struktur_child1', 'struktur_child1.id_struktur_child1')
            ->join('struktur_child2', 'user.id_struktur_child2', 'struktur_child2.id_struktur_child2')
            ->where('struktur_child1.child1_level', 1)
            ->first();

        $warek2 = $this->getStruktur(3);
        $rektor = $this->getStruktur(2);
        $sekniv = $this->getStruktur(1);

        array_push(
            $status,
            [
                "id_user" => $keuangan->id_user,
                "id_struktur" => $keuangan->id_struktur_child1,
                "nama_struktur" => $keuangan->nama_struktur_child1,
                "status" => $this->statusNull($keuangan->id_struktur_child1, $pengajuan->id_pengajuan, 2)
            ],
            [
                "id_user" => $warek2->id_user,
                "id_struktur" => $warek2->id_struktur,
                "nama_struktur" => $warek2->nama_struktur,
                "status" => $this->statusNull($warek2->id_struktur, $pengajuan->id_pengajuan, 2, $warek)
            ],
            [
                "id_user" => $rektor->id_user,
                "id_struktur" => $rektor->id_struktur,
                "nama_struktur" => $rektor->nama_struktur,
                "status" => $this->statusNull($rektor->id_struktur, $pengajuan->id_pengajuan, 2)
            ],
            [
                "id_user" => $keuangan->id_user,
                "id_struktur" => $keuangan->id_struktur_child1,
                "nama_struktur" => $keuangan->nama_struktur_child1,
                "status" => $this->statusNull($keuangan->id_struktur_child1, $pengajuan->id_pengajuan, 3)
            ],
            [
                "id_user" => $sekniv->id_user,
                "id_struktur" => $sekniv->id_struktur,
                "nama_struktur" => $sekniv->nama_struktur,
                "status" => $this->statusNull($sekniv->id_struktur, $pengajuan->id_pengajuan, 2)
            ]
        );

        return response()->json([
            "data" => $status
        ]);
    }

    /**
     * Get submission bawahan by id user login
     */
    public function pengajuanSubordinate($params)
    {
        $userStruktur = UserModel::join('struktur', 'user.id_struktur', 'struktur.id_struktur')
            ->join('struktur_child1', 'user.id_struktur_child1', 'struktur_child1.id_struktur_child1')
            ->join('struktur_child2', 'user.id_struktur_child2', 'struktur_child2.id_struktur_child2')
            ->where('id_user', $params)
            ->first();

        if ($userStruktur->level == 1) {
            $data = UserModel::join('pengajuan', 'user.id_user', 'pengajuan.id_user')
                ->join('rkat', 'pengajuan.kode_rkat', 'rkat.kode_rkat')
                ->join('struktur', 'user.id_struktur', 'struktur.id_struktur')
                ->join('struktur_child1', 'user.id_struktur_child1', 'struktur_child1.id_struktur_child1')
                ->join('struktur_child2', 'user.id_struktur_child2', 'struktur_child2.id_struktur_child2')
                ->where('struktur.level', '!=', $userStruktur->level)
                ->where('user.id_user', '!=', $userStruktur->id_user)
                ->select('user.id_user', 'pengajuan.id_pengajuan', 'pengajuan.validasi_status', 'pengajuan.nama_status', 'user.fullname', 'struktur_child1.nama_struktur_child1', 'rkat.created_at')
                ->get();
        } else if ($userStruktur->level == 2) {
            $data = UserModel::join('pengajuan', 'user.id_user', 'pengajuan.id_user')
                ->join('rkat', 'pengajuan.kode_rkat', 'rkat.kode_rkat')
                ->join('struktur', 'user.id_struktur', 'struktur.id_struktur')
                ->join('struktur_child1', 'user.id_struktur_child1', 'struktur_child1.id_struktur_child1')
                ->join('struktur_child2', 'user.id_struktur_child2', 'struktur_child2.id_struktur_child2')
                ->where('struktur.level', '!=', 1)
                ->where('user.id_user', '!=', $userStruktur->id_user)
                ->select('user.id_user', 'pengajuan.id_pengajuan', 'pengajuan.validasi_status', 'pengajuan.nama_status', 'user.fullname', 'struktur_child1.nama_struktur_child1', 'rkat.created_at')
                ->get();
        } else if ($userStruktur->level == 3 || $userStruktur->level == 4) {
            if ($userStruktur->child1_level == "1" || $userStruktur->level == 3) {
                $data = UserModel::join('pengajuan', 'user.id_user', 'pengajuan.id_user')
                    ->join('rkat', 'pengajuan.kode_rkat', 'rkat.kode_rkat')
                    ->join('struktur', 'user.id_struktur', 'struktur.id_struktur')
                    ->join('struktur_child1', 'user.id_struktur_child1', 'struktur_child1.id_struktur_child1')
                    ->join('struktur_child2', 'user.id_struktur_child2', 'struktur_child2.id_struktur_child2')
                    ->where('user.id_user', '!=', $userStruktur->id_user)
                    ->select('user.id_user', 'pengajuan.id_pengajuan', 'pengajuan.validasi_status', 'pengajuan.nama_status', 'user.fullname', 'struktur_child1.nama_struktur_child1', 'rkat.created_at')
                    ->get();
            } else {
                $data = UserModel::join('pengajuan', 'user.id_user', 'pengajuan.id_user')
                    ->join('rkat', 'pengajuan.kode_rkat', 'rkat.kode_rkat')
                    ->join('struktur', 'user.id_struktur', 'struktur.id_struktur')
                    ->join('struktur_child1', 'user.id_struktur_child1', 'struktur_child1.id_struktur_child1')
                    ->join('struktur_child2', 'user.id_struktur_child2', 'struktur_child2.id_struktur_child2')
                    ->where('user.id_user', '!=', $userStruktur->id_user)
                    ->where('struktur.id_struktur', $userStruktur->id_struktur)
                    ->select('user.id_user', 'pengajuan.id_pengajuan', 'pengajuan.validasi_status', 'pengajuan.nama_status', 'user.fullname', 'struktur_child1.nama_struktur_child1', 'rkat.created_at')
                    ->get();
            }
        } else if ($userStruktur->level == 5) {
            $data = UserModel::join('pengajuan', 'user.id_user', 'pengajuan.id_user')
                ->join('rkat', 'pengajuan.kode_rkat', 'rkat.kode_rkat')
                ->join('struktur', 'user.id_struktur', 'struktur.id_struktur')
                ->join('struktur_child1', 'user.id_struktur_child1', 'struktur_child1.id_struktur_child1')
                ->join('struktur_child2', 'user.id_struktur_child2', 'struktur_child2.id_struktur_child2')
                ->where('user.id_user', '!=', $userStruktur->id_user)
                ->where('struktur.id_struktur', $userStruktur->id_struktur)
                ->where('struktur_child1.id_struktur_child1', $userStruktur->id_struktur_child1)
                ->select('user.id_user', 'pengajuan.id_pengajuan', 'pengajuan.validasi_status', 'pengajuan.nama_status', 'user.fullname', 'struktur_child1.nama_struktur_child1', 'rkat.created_at')
                ->get();
        }

        return response()->json([
            "data" => $data
        ]);
    }
    public function getSubordinatesGrafik($params)
    {
        $userStruktur = UserModel::join('struktur', 'user.id_struktur', 'struktur.id_struktur')
            ->join('struktur_child1', 'user.id_struktur_child1', 'struktur_child1.id_struktur_child1')
            ->join('struktur_child2', 'user.id_struktur_child2', 'struktur_child2.id_struktur_child2')
            ->where('id_user', $params)
            ->first();

        if ($userStruktur->level == 1) {
            $data = UserModel::join('struktur', 'user.id_struktur', 'struktur.id_struktur')
                ->join('struktur_child1', 'user.id_struktur_child1', 'struktur_child1.id_struktur_child1')
                ->join('struktur_child2', 'user.id_struktur_child2', 'struktur_child2.id_struktur_child2')
                ->where('struktur.level', '!=', $userStruktur->level)
                ->where('user.id_user', '!=', $userStruktur->id_user)
                ->select('user.id_user', 'user.fullname', 'struktur_child1.nama_struktur_child1')
                ->get();
        } else if ($userStruktur->level == 2) {
            $data = UserModel::join('struktur', 'user.id_struktur', 'struktur.id_struktur')
                ->join('struktur_child1', 'user.id_struktur_child1', 'struktur_child1.id_struktur_child1')
                ->join('struktur_child2', 'user.id_struktur_child2', 'struktur_child2.id_struktur_child2')
                ->where('struktur.level', '!=', 1)
                ->where('user.id_user', '!=', $userStruktur->id_user)
                ->select('user.id_user', 'user.fullname', 'struktur_child1.nama_struktur_child1')
                ->get();
        } else if ($userStruktur->level == 3 || $userStruktur->level == 4) {
            if ($userStruktur->child1_level == "1") {
                $data = UserModel::join('struktur', 'user.id_struktur', 'struktur.id_struktur')
                    ->join('struktur_child1', 'user.id_struktur_child1', 'struktur_child1.id_struktur_child1')
                    ->join('struktur_child2', 'user.id_struktur_child2', 'struktur_child2.id_struktur_child2')
                    ->where('user.id_user', '!=', $userStruktur->id_user)
                    ->select('user.id_user', 'user.fullname', 'struktur_child1.nama_struktur_child1')
                    ->get();
            } else {
                $data = UserModel::join('struktur', 'user.id_struktur', 'struktur.id_struktur')
                    ->join('struktur_child1', 'user.id_struktur_child1', 'struktur_child1.id_struktur_child1')
                    ->join('struktur_child2', 'user.id_struktur_child2', 'struktur_child2.id_struktur_child2')
                    ->where('user.id_user', '!=', $userStruktur->id_user)
                    ->where('struktur.id_struktur', $userStruktur->id_struktur)
                    ->select('user.id_user', 'user.fullname', 'struktur_child1.nama_struktur_child1')
                    ->get();
            }
        } else if ($userStruktur->level == 5) {
            $data = UserModel::join('struktur', 'user.id_struktur', 'struktur.id_struktur')
                ->join('struktur_child1', 'user.id_struktur_child1', 'struktur_child1.id_struktur_child1')
                ->join('struktur_child2', 'user.id_struktur_child2', 'struktur_child2.id_struktur_child2')
                ->where('user.id_user', '!=', $userStruktur->id_user)
                ->where('struktur.id_struktur', $userStruktur->id_struktur)
                ->where('struktur_child1.id_struktur_child1', $userStruktur->id_struktur_child1)
                ->select('user.id_user', 'user.fullname', 'struktur_child1.nama_struktur_child1')
                ->get();
        }

        return response()->json([
            "data" => $data
        ]);
    }

    public function getGrafik($params)
    {
        $rkat = RKATModel::where('id_user', $params);
        $pengajuan = pengajuanModel::where('id_user', $params);
        return response()->json([
            'data' => [
                'total_rkat' => $rkat->count(),
                'total_rkat_diterima' => $pengajuan->sum('biaya_program'),
                'total_anggaran_rkat' => $rkat->sum('total_anggaran'),
                'pengajuan_diterima' => pengajuanModel::where('id_user', $params)
                    ->where('status_pengajuan', 'approved')->count(),

                'pengajuan_progress' => pengajuanModel::where('id_user', $params)
                    ->where('status_pengajuan', 'progress')->count(),

                'rkat' => RKATModel::join('user', 'rkat.id_user', 'user.id_user')
                    ->select('rkat.*', "user.fullname")
                    ->where('user.id_user', $params)
                    ->get(),

                'pengajuan' => pengajuanModel::join('rkat', 'pengajuan.kode_rkat', 'rkat.kode_rkat')
                    ->join('user', 'pengajuan.id_user', 'user.id_user')
                    ->where('user.id_user', $params)
                    ->orderBy('pengajuan.kode_rkat', 'ASC')
                    ->get(),

                'user' => UserModel::join('struktur', 'user.id_struktur', 'struktur.id_struktur')
                    ->join('struktur_child1', 'user.id_struktur_child1', 'struktur_child1.id_struktur_child1')
                    ->join('struktur_child2', 'user.id_struktur_child2', 'struktur_child2.id_struktur_child2')
                    ->where('user.id_user', $params)
                    ->where('user.id_user', $params)
                    ->select('user.*', 'struktur_child1.nama_struktur_child1', 'struktur_child2.nama_struktur_child2')
                    ->first()
            ]
        ]);
    }

    public function PDF()
    {
        $data = [
            'coba' => "Berhasil"
        ];

        // $pdf = PDF::loadView('pengajuan', $data);
        // return $pdf->download('pengajuan-' . date("Y-m-d") . '.pdf');
    }
}
