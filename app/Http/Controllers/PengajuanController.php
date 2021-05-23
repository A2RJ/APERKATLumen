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
        $this->autoProccess($request, $params);

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

    public function statusNull($id_struktur, $id_pengajuan, $nomor = null)
    {
        if ($nomor == 1) {
            $data = validasiModel::join('pengajuan_history', 'validasi.id_pengajuan_history', 'pengajuan_history.id_pengajuan')
                ->join('pengajuan', 'pengajuan_history.id', 'pengajuan.id_pengajuan')
                ->where('validasi.id_struktur', $id_struktur)
                ->where('pengajuan.id_pengajuan', $id_pengajuan)
                ->where('validasi.status_validasi', '1')
                ->first();
        } elseif ($nomor == 2) {
            $data = validasiModel::join('pengajuan_history', 'validasi.id_pengajuan_history', 'pengajuan_history.id_pengajuan')
                ->join('pengajuan', 'pengajuan_history.id', 'pengajuan.id_pengajuan')
                ->where('validasi.id_struktur', $id_struktur)
                ->where('pengajuan.id_pengajuan', $id_pengajuan)
                ->where('validasi.status_validasi', '2')
                ->first();
        } elseif ($nomor == 3) {
            $data = validasiModel::join('pengajuan_history', 'validasi.id_pengajuan_history', 'pengajuan_history.id_pengajuan')
                ->join('pengajuan', 'pengajuan_history.id', 'pengajuan.id_pengajuan')
                ->where('validasi.id_struktur', $id_struktur)
                ->where('pengajuan.id_pengajuan', $id_pengajuan)
                ->where('validasi.status_validasi', '3')
                ->first();
        }

        return $data ? $data->status_validasi : false;
    }

    public function pencairan($id_struktur, $id_pengajuan)
    {
        $data = validasiModel::join('pengajuan_history', 'validasi.id_pengajuan_history', 'pengajuan_history.id_pengajuan')
            ->join('pengajuan', 'pengajuan_history.id', 'pengajuan.id_pengajuan')
            ->where('validasi.id_struktur', $id_struktur)
            ->where('pengajuan.id_pengajuan', $id_pengajuan)
            ->where('validasi.status_validasi', '3')
            ->select('validasi.status_validasi')
            ->first();

        return $data ? $data->status_validasi : $data;
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

    public function status($params)
    {
        $pengajuan = pengajuanModel::join('user', 'pengajuan.id_user', 'user.id_user')
            ->join('struktur', 'user.id_struktur', 'struktur.id_struktur')
            ->join('struktur_child1', 'user.id_struktur_child1', 'struktur_child1.id_struktur_child1')
            ->join('struktur_child2', 'user.id_struktur_child2', 'struktur_child2.id_struktur_child2')
            ->select('pengajuan.id_pengajuan', 'user.id_struktur', 'user.email', 'user.id_struktur_child1', 'user.id_struktur_child2', 'struktur.nama_struktur', 'struktur_child1.nama_struktur_child1', 'struktur_child2.nama_struktur_child2')
            ->where('pengajuan.id_pengajuan', $params)
            ->first();

        $struktur = UserModel::join('struktur', 'user.id_struktur', 'struktur.id_struktur')
            ->join('struktur_child1', 'user.id_struktur_child1', 'struktur_child1.id_struktur_child1')
            ->join('struktur_child2', 'user.id_struktur_child2', 'struktur_child2.id_struktur_child2')
            ->where('struktur.id_struktur', 1)
            ->where("struktur_child1.nama_struktur_child1", "0")
            ->where("struktur_child2.nama_struktur_child2", "0")
            ->orWhere('struktur.id_struktur', 2)
            ->where("struktur_child1.nama_struktur_child1", "0")
            ->where("struktur_child2.nama_struktur_child2", "0")
            ->orWhere('struktur.id_struktur', 3)
            ->where("struktur_child1.nama_struktur_child1", "0")
            ->where("struktur_child2.nama_struktur_child2", "0")
            ->orWhere('struktur.id_struktur', 4)
            ->where("struktur_child1.nama_struktur_child1", "0")
            ->where("struktur_child2.nama_struktur_child2", "0")
            ->orderBy('level', 'DESC')
            ->get();

        // ambil data berdasarkan level users
        // top level
        if ($pengajuan->nama_struktur && $pengajuan->nama_struktur_child1 == "0" && $pengajuan->nama_struktur_child2 == "0") {
            $data = [
                [ // top level
                    "id_user" => $this->getID($pengajuan->nama_struktur, '0', '0'),
                    "id_struktur" => $pengajuan->id_struktur,
                    "nama_struktur" => $pengajuan->nama_struktur,
                    "status" => $this->statusNull($pengajuan->id_struktur, $pengajuan->id_pengajuan, 1)
                ],
                [
                    "id_user" => $struktur[1]->id_user,
                    "id_struktur" => $struktur[1]->id_struktur,
                    "nama_struktur" => $struktur[1]->nama_struktur,
                    "status" => $this->statusNull($struktur[1]->id_struktur, $pengajuan->id_pengajuan, 2)
                ], // warek
                [
                    "id_user" => $struktur[2]->id_user,
                    "id_struktur" => $struktur[2]->id_struktur,
                    "nama_struktur" => $struktur[2]->nama_struktur,
                    "status" => $this->statusNull($struktur[2]->id_struktur, $pengajuan->id_pengajuan, 2)
                ], // rektor
                [
                    "id_user" => $struktur[3]->id_user,
                    "id_struktur" => $struktur[3]->id_struktur,
                    "nama_struktur" => $struktur[3]->nama_struktur,
                    "status" => $this->statusNull($struktur[3]->id_struktur, $pengajuan->id_pengajuan, 2)
                ], // keuangan / pencairan
                [
                    "id_user" => 9999,
                    "id_struktur" => $struktur[1]->id_struktur,
                    "nama_struktur" => $struktur[1]->nama_struktur,
                    "status" => $this->statusNull($struktur[1]->id_struktur, $pengajuan->id_pengajuan, 3)
                ], // sekniv
                [
                    "id_user" => $struktur[0]->id_user,
                    "id_struktur" => $struktur[0]->id_struktur,
                    "nama_struktur" => $struktur[0]->nama_struktur,
                    "status" => $this->statusNull($struktur[0]->id_struktur, $pengajuan->id_pengajuan, 2)
                ]
            ];
        }
        // fakultas level
        elseif ($pengajuan->nama_struktur && $pengajuan->nama_struktur_child1 !== "0" && $pengajuan->nama_struktur_child2 == "0") {
            $data = [
                [
                    "id_user" => $this->getID($pengajuan->nama_struktur, $pengajuan->nama_struktur_child1, '0'),
                    "id_struktur" => $pengajuan->id_struktur_child1,
                    "nama_struktur" => $pengajuan->nama_struktur_child1,
                    "status" => $this->statusNull($pengajuan->id_struktur_child1, $pengajuan->id_pengajuan, 1)
                ],
                [
                    "id_user" => $struktur[1]->id_user,
                    "id_struktur" => $struktur[1]->id_struktur,
                    "nama_struktur" => $struktur[1]->nama_struktur,
                    "status" => $this->statusNull($struktur[1]->id_struktur, $pengajuan->id_pengajuan, 2)
                ], // warek
                [
                    "id_user" => $struktur[2]->id_user,
                    "id_struktur" => $struktur[2]->id_struktur,
                    "nama_struktur" => $struktur[2]->nama_struktur,
                    "status" => $this->statusNull($struktur[2]->id_struktur, $pengajuan->id_pengajuan, 2)
                ], // rektor
                [
                    "id_user" => $struktur[3]->id_user,
                    "id_struktur" => $struktur[3]->id_struktur,
                    "nama_struktur" => $struktur[3]->nama_struktur,
                    "status" => $this->statusNull($struktur[3]->id_struktur, $pengajuan->id_pengajuan, 2)
                ], // keuangan / pencairan
                [
                    "id_user" => 9999,
                    "id_struktur" => $struktur[1]->id_struktur,
                    "nama_struktur" => $struktur[1]->nama_struktur,
                    "status" => $this->statusNull($struktur[1]->id_struktur, $pengajuan->id_pengajuan, 3)
                ], // sekniv
                [
                    "id_user" => $struktur[0]->id_user,
                    "id_struktur" => $struktur[0]->id_struktur,
                    "nama_struktur" => $struktur[0]->nama_struktur,
                    "status" => $this->statusNull($struktur[0]->id_struktur, $pengajuan->id_pengajuan, 2)
                ]
            ];
        }
        // prodi level
        elseif ($pengajuan->nama_struktur && $pengajuan->nama_struktur_child1 !== "0" && $pengajuan->nama_struktur_child2 !== "0") {

            $data = [ // prodi
                [
                    "id_user" => $this->getID($pengajuan->nama_struktur, $pengajuan->nama_struktur_child1, $pengajuan->nama_struktur_child2),
                    "id_struktur" => $pengajuan->id_struktur_child2,
                    "nama_struktur" => $pengajuan->nama_struktur_child2,
                    "status" => $this->statusNull($pengajuan->id_struktur_child2, $pengajuan->id_pengajuan, 1)
                ], // fakultas
                [
                    "id_user" => $this->getID($pengajuan->nama_struktur, $pengajuan->nama_struktur_child1, '0'),
                    "id_struktur" => $pengajuan->id_struktur_child1,
                    "nama_struktur" => $pengajuan->nama_struktur_child1,
                    "status" => $this->statusNull($pengajuan->id_struktur_child1, $pengajuan->id_pengajuan, 2)
                ], // keuangan
                [
                    "id_user" => $struktur[1]->id_user,
                    "id_struktur" => $struktur[1]->id_struktur,
                    "nama_struktur" => $struktur[1]->nama_struktur,
                    "status" => $this->statusNull($struktur[1]->id_struktur, $pengajuan->id_pengajuan, 2)
                ], // warek
                [
                    "id_user" => $struktur[2]->id_user,
                    "id_struktur" => $struktur[2]->id_struktur,
                    "nama_struktur" => $struktur[2]->nama_struktur,
                    "status" => $this->statusNull($struktur[2]->id_struktur, $pengajuan->id_pengajuan, 2)
                ], // rektor
                [
                    "id_user" => $struktur[3]->id_user,
                    "id_struktur" => $struktur[3]->id_struktur,
                    "nama_struktur" => $struktur[3]->nama_struktur,
                    "status" => $this->statusNull($struktur[3]->id_struktur, $pengajuan->id_pengajuan, 2)
                ], // keuangan / pencairan
                [
                    "id_user" => 9999,
                    "id_struktur" => $struktur[1]->id_struktur,
                    "nama_struktur" => $struktur[1]->nama_struktur,
                    "status" => $this->statusNull($struktur[1]->id_struktur, $pengajuan->id_pengajuan, 3)
                ], // sekniv
                [
                    "id_user" => $struktur[0]->id_user,
                    "id_struktur" => $struktur[0]->id_struktur,
                    "nama_struktur" => $struktur[0]->nama_struktur,
                    "status" => $this->statusNull($struktur[0]->id_struktur, $pengajuan->id_pengajuan, 2)
                ]
            ];
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
                ->select('user.id_user', 'pengajuan.id_pengajuan', 'pengajuan.validasi_status', 'pengajuan.nama_status', 'user.fullname', 'struktur_child1.nama_struktur_child1', 'rkat.created_at')
                ->get();
        } elseif ($userStruktur->id_struktur == 2) {
            $data = UserModel::join('pengajuan', 'user.id_user', 'pengajuan.id_user')
                ->join('rkat', 'pengajuan.kode_rkat', 'rkat.kode_rkat')
                ->join('struktur', 'user.id_struktur', 'struktur.id_struktur')
                ->join('struktur_child1', 'user.id_struktur_child1', 'struktur_child1.id_struktur_child1')
                ->join('struktur_child2', 'user.id_struktur_child2', 'struktur_child2.id_struktur_child2')
                ->where('user.id_struktur', '!=', 1)
                ->where('user.id_struktur', '!=', 2)
                ->select('user.id_user', 'pengajuan.id_pengajuan', 'pengajuan.validasi_status', 'pengajuan.nama_status', 'user.fullname', 'struktur_child1.nama_struktur_child1', 'rkat.created_at')
                ->get();
        } elseif ($userStruktur->id_struktur == 4) {
            $data = UserModel::join('pengajuan', 'user.id_user', 'pengajuan.id_user')
                ->join('rkat', 'pengajuan.kode_rkat', 'rkat.kode_rkat')
                ->join('struktur', 'user.id_struktur', 'struktur.id_struktur')
                ->join('struktur_child1', 'user.id_struktur_child1', 'struktur_child1.id_struktur_child1')
                ->join('struktur_child2', 'user.id_struktur_child2', 'struktur_child2.id_struktur_child2')
                ->where('user.id_struktur', '!=', 4)
                ->select('user.id_user', 'pengajuan.id_pengajuan', 'pengajuan.validasi_status', 'pengajuan.nama_status', 'user.fullname', 'struktur_child1.nama_struktur_child1', 'rkat.created_at')
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
                    ->where('user.id_struktur_child1', '!=', 9)
                    ->select('user.id_user', 'pengajuan.id_pengajuan', 'pengajuan.validasi_status', 'pengajuan.nama_status', 'user.fullname', 'struktur_child1.nama_struktur_child1', 'rkat.created_at')
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
                    ->where("struktur_child1.nama_struktur_child1", '!=', "0")
                    ->where("struktur_child2.nama_struktur_child2", '!=', "0")
                    ->select('user.id_user', 'pengajuan.id_pengajuan', 'pengajuan.validasi_status', 'pengajuan.nama_status', 'user.fullname', 'struktur_child1.nama_struktur_child1', 'rkat.created_at')
                    ->get();
            }
        }

        return response()->json([
            "data" => $data
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
