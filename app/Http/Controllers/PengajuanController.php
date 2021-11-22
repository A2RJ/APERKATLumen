<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Mail;
use App\Models\UserModel;
use App\Models\RKATModel;
use App\Models\ValidasiModel;
use App\Models\PengajuanModel;
use App\Models\MessageModel;
use App\Models\PengajuanHistoryModel;
use Barryvdh\DomPDF\Facade as PDF;

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
            'data' => PengajuanModel::join('rkat', 'pengajuan.kode_rkat', 'rkat.id_rkat')
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

        // Validasi LPJ
        $validasiLPJ =  $this->validasiLPJ($request->id_user);
        if ($validasiLPJ) {
            return response()->json([
                'status' => 'error',
                'message' => 'Mohon lengkapi LPJ pengajuan yang telah dicairkan.'
            ], 400);
        }

        // Validasi RKAT
        if (PengajuanModel::where('kode_rkat', $request->kode_rkat)->count() == 1) {
            return response()->json([
                'status' => 'error',
                'message' => 'Tidak dapat menambah pengajuan, RKAT telah digunakan'
            ], 400);
        }

        // Validasi RKAT dan biaya program
        $rkat = RKATModel::where('id_rkat', $request->kode_rkat)->first();
        if ($rkat == null) {
            return response()->json([
                'status' => 'error',
                'message' => 'Tidak dapat menambah pengajuan, RKAT tidak ditemukan'
            ], 400);
        } else {
            // if ($rkat->total_anggaran !== $request->biaya_program) {
            if ($request->biaya_program > $rkat->total_anggaran) {
                return response()->json([
                    'status' => 'error',
                    'message' => 'Tidak dapat menambah pengajuan, biaya program tidak sesuai dengan total anggaran RKAT'
                ], 400);
            }
        }

        $data = PengajuanModel::create($request->all());


        $id_user = $this->status($data->id_pengajuan);
        $request->next = $id_user->original['data'][1]['id_user'];
        $this->autoProccess($request, $data->id_pengajuan);

        return response()->json([
            'data' => $data
        ]);
    }

    // hitung pengajuan sudah pencairan sebanyak 2x
    public function validasiLPJ($id_user)
    {
        if (
            PengajuanModel::where('id_user', $id_user)
            ->where('pencairan', '!=', null)
            ->where('lpj_kegiatan', null)
            ->where('lpj_keuangan', null)
            ->orWhere('id_user', $id_user)
            ->where('pencairan', '!=', null)
            ->where('lpj_kegiatan', '!=', null)
            ->where('lpj_keuangan', null)
            ->orWhere('id_user', $id_user)
            ->where('pencairan', '!=', null)
            ->where('lpj_kegiatan', null)
            ->where('lpj_keuangan', '!=', null)->count() >= 2
        ) {
            return true;
        }
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
        $data = PengajuanModel::join('rkat', 'pengajuan.kode_rkat', 'rkat.id_rkat')
            ->join('user', 'pengajuan.id_user', 'user.id_user')
            ->join('struktur', 'user.id_struktur', 'struktur.id_struktur')
            ->join('struktur_child1', 'user.id_struktur_child1', 'struktur_child1.id_struktur_child1')
            ->join('struktur_child2', 'user.id_struktur_child2', 'struktur_child2.id_struktur_child2')
            ->where('pengajuan.id_user', $params)
            ->select('user.id_user', 'rkat.kode_rkat', 'pengajuan.id_pengajuan', 'pengajuan.validasi_status', 'pengajuan.nama_status', 'user.fullname', 'struktur.nama_struktur', 'struktur_child1.nama_struktur_child1', 'struktur_child2.nama_struktur_child2', 'pengajuan.created_at')
            ->orderBy('pengajuan.id_pengajuan', 'DESC')
            ->paginate();

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
        $data = PengajuanModel::find($params);

        return response()->json([
            'data' => $data ? $data : "Failed, data not found"
        ]);
    }

    public function showPengajuan($params1, $params2)
    {
        // $data = MessageModel::where('id_pengajuan', $params1)
        //     ->where('id_user', $params2)
        //     ->where('status_message', false)
        //     ->update(['status_message' => 1]);

        // return response()->json([
        //     'data' => $data
        // ]);
    }

    public function countMessage($params)
    {
        $data = PengajuanModel::join('message', 'pengajuan.id_pengajuan', 'message.id_pengajuan')
            ->where('pengajuan.id_user', '!=', $params)
            ->where('message.status_message', false)
            ->count();

        return response()->json([
            'data' => $data
        ]);
    }

    public function countMessageSelf($params)
    {
        $data = PengajuanModel::join('message', 'pengajuan.id_pengajuan', 'message.id_pengajuan')
            ->where('pengajuan.id_user', $params)
            ->where('message.status_message', false)
            ->count();

        return response()->json([
            'data' => $data
        ]);
    }

    public function updateMessage($params1, $params2)
    {
        MessageModel::where('id_pengajuan', $params1)
            ->where('id_user', $params2)
            ->update(["status_message" => false]);
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
        if (PengajuanModel::where('kode_rkat', $request->kode_rkat)->where('id_pengajuan', '!=', $params)->count() == 1) {
            return response()->json([
                'status' => 'error',
                'message' => 'Tidak dapat menambah pengajuan, RKAT telah digunakan'
            ], 400);
        }

        $rkat = RKATModel::where('id_rkat', $request->kode_rkat)->first();
        if ($rkat == null) {
            return response()->json([
                'status' => 'error',
                'message' => 'Tidak dapat menambah pengajuan, RKAT tidak ditemukan'
            ], 400);
        } else {
            if ($request->biaya_program && $request->biaya_program > $rkat->total_anggaran) {
                return response()->json([
                    'status' => 'error',
                    'message' => 'Tidak dapat menambah pengajuan, biaya program tidak sesuai dengan total anggaran RKAT',
                ], 400);
            }
        }

        $data = PengajuanModel::find($params);
        $data ? $data->update($request->all()) : false;

        $this->autoProccess($request, $params);

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
        $pengajuan = PengajuanModel::find($params);

        DB::statement('DELETE pengajuan, pengajuan_history, validasi FROM pengajuan
        INNER JOIN pengajuan_history ON pengajuan.id_pengajuan = pengajuan_history.id
        INNER JOIN validasi ON pengajuan_history.id_pengajuan = validasi.id_pengajuan_history
        WHERE pengajuan.id_pengajuan = ' . $params);
        DB::statement('DELETE pengajuan FROM pengajuan WHERE pengajuan.id_pengajuan = ' . $params);
        // DB::statement('DELETE message FROM pengajuan WHERE message.id_pengajuan = ' . $params);

        $anggaran_digunakan = PengajuanModel::where('kode_rkat', $pengajuan->kode_rkat)
            ->where('validasi_status', 3)
            ->orWhere('kode_rkat', $pengajuan->kode_rkat)
            ->where('status_pengajuan', 'approved')
            ->sum('biaya_program');

        RKATModel::where('id_rkat', $pengajuan->kode_rkat)->update(['anggaran_digunakan' => $anggaran_digunakan]);

        return response()->json([
            'data' => $pengajuan
                ? "Success delete data"
                : "Failed, data not found"
        ]);
    }

    // By User
    public function destroy($params)
    {
        $data = DB::statement('DELETE pengajuan, pengajuan_history, validasi FROM pengajuan
        INNER JOIN pengajuan_history ON pengajuan.id_pengajuan = pengajuan_history.id
        INNER JOIN validasi ON pengajuan_history.id_pengajuan = validasi.id_pengajuan_history
        WHERE pengajuan.id_user = ' . $params);
        DB::statement('DELETE pengajuan FROM pengajuan WHERE pengajuan.id_user = ' . $params);
        // Lakukan join untuk hapus data message berdasarkan id_pengajuan
        $update = RKATModel::where('id_user', $params)->update(['anggaran_digunakan' => '0']);

        return response()->json([
            'data' => $data && $update
                ? "Success delete data"
                : "Failed, data not found"
        ]);
    }

    /**
     * delete selected pengajuan
     */
    public function deleteRows(Request $request)
    {
        $data = PengajuanModel::find($request->all());
        $data ? $data->each->delete() : false;

        return response()->json([
            $data
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
        $data = PengajuanHistoryModel::join('validasi', 'pengajuan_history.id_pengajuan', '=', 'validasi.id_pengajuan_history')
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
        $pengajuan = PengajuanModel::find($params);
        $pengajuan->status_pengajuan = $request->status_pengajuan;
        $pengajuan->validasi_status = $request->status;
        $pengajuan->nama_status = $request->nama;
        $pengajuan->next = $request->next;
        $pengajuan->save();

        if ($request->status == 3) {
            $anggaran_digunakan = PengajuanModel::where('kode_rkat', $request->kode_rkat)
                ->where('pencairan', '!=', null)
                ->sum('biaya_program');

            RKATModel::where('id_rkat', $request->kode_rkat)
                ->update(['anggaran_digunakan' => $anggaran_digunakan]);
        }

        PengajuanModel::query()
            ->where('id_pengajuan', $params)
            ->each(function ($oldPost) {
                $newPost = $oldPost->replicate();
                $newPost->setTable('pengajuan_history');
                $newPost->id = $oldPost->id_pengajuan;
                $newPost->save();
            });

        $pengajuan_history = PengajuanHistoryModel::where('kode_rkat', $request->kode_rkat)
            ->select('id_pengajuan')->latest()->first();

        ValidasiModel::create([
            "id_pengajuan_history" => $pengajuan_history->id_pengajuan,
            "id_struktur" => $request->id_struktur,
            "status_validasi" => $request->status,
            "message" => $request->nama . " - " . $request->message
        ]);

        // $this->sendMail($params, $request->status, $request->nama);
    }

    /**
     * Get status validasi berdasarkan id_pengajuan
     * ambil data atasan masing2 akun
     */
    public function validasi($params)
    {
        $data = PengajuanHistoryModel::join('validasi', 'pengajuan_history.id_pengajuan', 'validasi.id_pengajuan_history')
            ->where('pengajuan_history.id', $params)
            ->select('validasi.status_validasi')
            ->orderBy('validasi.id_validasi', 'DESC')
            ->first();

        return $data ? $data->status_validasi : null;
    }

    public function statusNull($id_struktur, $id_pengajuan, $nomor, $warek = false)
    {
        if ($warek !== false) {
            $data = ValidasiModel::join('pengajuan_history', 'validasi.id_pengajuan_history', 'pengajuan_history.id_pengajuan')
                ->join('pengajuan', 'pengajuan_history.id', 'pengajuan.id_pengajuan')
                ->where('validasi.id_struktur', $id_struktur)
                ->where('pengajuan.id_pengajuan', $id_pengajuan)
                ->where('validasi.status_validasi', $nomor)
                ->skip($warek)
                ->first();
        } else {
            $data = ValidasiModel::join('pengajuan_history', 'validasi.id_pengajuan_history', 'pengajuan_history.id_pengajuan')
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
        return $data ? $data->id_user : null;
    }

    public function sendMail($params, $status, $nama)
    {
        if ($status == '0') {
            $status = ' telah ditolak oleh:' . $nama;
        } else if ($status == '1') {
            $status = ' telah diinput/direvisi oleh:' . $nama;
        } else if ($status == '3') {
            $status = ' Pencairan oleh:' . $nama;
        } else {
            $status = ' telah diterima oleh:' . $nama;
        }

        $data = $this->status($params);
        $data = array_unique($data->original['data'], SORT_REGULAR);
        $values = [];
        foreach ($data as $key) {
            $values[] = $key['id_user'];
        }
        $values = UserModel::whereIn('id_user', $values)->where('email', '!=', '')->select('email')->get();
        $email = [];
        foreach ($values as $key) {
            $email[] = $key['email'];
        }
        $template = array('name' => '', 'pesan' => 'Pemberitahuan pengajuan ' . $data[0]['nama_struktur'] . $status);

        Mail::send('mail', $template, function ($message) use ($email) {
            $message->to($email)->subject('APERKAT - Universitas Teknologi Sumbawa');
            $message->from(env('MAIL_USERNAME'), 'Notif APERKAT');
        });
    }

    public function status($params)
    {
        $pengajuan = PengajuanModel::join('user', 'pengajuan.id_user', 'user.id_user')
            ->join('struktur', 'user.id_struktur', 'struktur.id_struktur')
            ->join('struktur_child1', 'user.id_struktur_child1', 'struktur_child1.id_struktur_child1')
            ->join('struktur_child2', 'user.id_struktur_child2', 'struktur_child2.id_struktur_child2')
            ->where('pengajuan.id_pengajuan', $params)
            ->select('pengajuan.id_pengajuan', 'struktur.level', 'struktur.nama_struktur', 'struktur_child1.nama_struktur_child1', 'struktur_child2.nama_struktur_child2')
            ->first();

        $sekniv = 0;
        $warek = 0;
        $status = [];
        if ($pengajuan->level == "1" || $pengajuan->level == "2") {
            if ($pengajuan->nama_struktur_child1 == "0") {
                array_push($status, [
                    "id_user" => $this->getID($pengajuan->nama_struktur, $pengajuan->nama_struktur_child1, $pengajuan->nama_struktur_child2),
                    "nama_struktur" => $pengajuan->nama_struktur,
                    "status" => $this->statusNull($this->getID($pengajuan->nama_struktur, $pengajuan->nama_struktur_child1, $pengajuan->nama_struktur_child2), $pengajuan->id_pengajuan, 1)
                ]);
            } else {
                array_push(
                    $status,
                    [
                        "id_user" => $this->getID($pengajuan->nama_struktur, $pengajuan->nama_struktur_child1, '0'),
                        "nama_struktur" => $pengajuan->nama_struktur_child1,
                        "status" => $this->statusNull($this->getID($pengajuan->nama_struktur, $pengajuan->nama_struktur_child1, '0'), $pengajuan->id_pengajuan, 1)
                    ],
                    [
                        "id_user" => $this->getID($pengajuan->nama_struktur, '0', '0'),
                        "nama_struktur" => $pengajuan->nama_struktur,
                        "status" => $this->statusNull($this->getID($pengajuan->nama_struktur, '0', '0'), $pengajuan->id_pengajuan, 2, $pengajuan->level == 1 ? $sekniv : false)
                    ]
                );
                if ($pengajuan->level == 1) $sekniv = $sekniv + 1;
            }
        } elseif ($pengajuan->level == "3" || $pengajuan->level == "4") {
            if ($pengajuan->nama_struktur_child1 == "0") {
                array_push(
                    $status,
                    [
                        "id_user" => $this->getID($pengajuan->nama_struktur, $pengajuan->nama_struktur_child1, $pengajuan->nama_struktur_child2),
                        "nama_struktur" => $pengajuan->nama_struktur,
                        "status" => $this->statusNull($this->getID($pengajuan->nama_struktur, $pengajuan->nama_struktur_child1, $pengajuan->nama_struktur_child2), $pengajuan->id_pengajuan, 1)
                    ]
                );
            } else {
                array_push(
                    $status,
                    [
                        "id_user" => $this->getID($pengajuan->nama_struktur, $pengajuan->nama_struktur_child1, '0'),
                        "nama_struktur" => $pengajuan->nama_struktur_child1,
                        "status" => $this->statusNull($this->getID($pengajuan->nama_struktur, $pengajuan->nama_struktur_child1, '0'), $pengajuan->id_pengajuan, 1)
                    ],
                    [
                        "id_user" => $this->getID($pengajuan->nama_struktur, '0', '0'),
                        "nama_struktur" => $pengajuan->nama_struktur,
                        "status" => $this->statusNull($this->getID($pengajuan->nama_struktur, '0', '0'), $pengajuan->id_pengajuan, 2, $pengajuan->level == 3 ? $warek : false)
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
                        "nama_struktur" => $pengajuan->nama_struktur_child1,
                        "status" => $this->statusNull($this->getID($pengajuan->nama_struktur, $pengajuan->nama_struktur_child1, '0'), $pengajuan->id_pengajuan, 1)
                    ]
                );
            } else {
                array_push(
                    $status,
                    [
                        "id_user" => $this->getID($pengajuan->nama_struktur, $pengajuan->nama_struktur_child1, $pengajuan->nama_struktur_child2),
                        "nama_struktur" => $pengajuan->nama_struktur_child2,
                        "status" => $this->statusNull($this->getID($pengajuan->nama_struktur, $pengajuan->nama_struktur_child1, $pengajuan->nama_struktur_child2), $pengajuan->id_pengajuan, 1)
                    ],
                    [
                        "id_user" => $this->getID($pengajuan->nama_struktur, $pengajuan->nama_struktur_child1, '0'),
                        "nama_struktur" => $pengajuan->nama_struktur_child1,
                        "status" => $this->statusNull($this->getID($pengajuan->nama_struktur, $pengajuan->nama_struktur_child1, '0'), $pengajuan->id_pengajuan, 2)
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
        // 4 = lpj

        $struktur = UserModel::join('struktur', 'user.id_struktur', 'struktur.id_struktur')
            ->join('struktur_child1', 'user.id_struktur_child1', 'struktur_child1.id_struktur_child1')
            ->join('struktur_child2', 'user.id_struktur_child2', 'struktur_child2.id_struktur_child2')
            ->where('struktur.level', '1')
            ->where("struktur_child1.nama_struktur_child1", "0")
            ->where("struktur_child2.nama_struktur_child2", "0")
            ->orWhere('struktur.level', '2')
            ->where("struktur_child1.nama_struktur_child1", "0")
            ->where("struktur_child2.nama_struktur_child2", "0")
            ->orWhere('struktur.level', '3')
            ->where("struktur_child1.nama_struktur_child1", "0")
            ->where("struktur_child2.nama_struktur_child2", "0")
            ->orWhere('struktur_child1.child1_level', '1')
            ->select('user.id_user', 'struktur.id_struktur', 'struktur.nama_struktur', 'struktur_child1.id_struktur_child1', 'struktur_child1.nama_struktur_child1')
            ->get();

        array_push(
            $status,
            [
                "id_user" => $struktur[3]->id_user,
                "nama_struktur" => $struktur[3]->nama_struktur_child1,
                "status" => $this->statusNull($struktur[3]->id_user, $pengajuan->id_pengajuan, 2)
            ],
            [
                "id_user" => $struktur[2]->id_user,
                "nama_struktur" => $struktur[2]->nama_struktur,
                "status" => $this->statusNull($struktur[2]->id_user, $pengajuan->id_pengajuan, 2, $warek)
            ],
            [
                "id_user" => $struktur[1]->id_user,
                "nama_struktur" => $struktur[1]->nama_struktur,
                "status" => $this->statusNull($struktur[1]->id_user, $pengajuan->id_pengajuan, 2)
            ],
            [
                "id_user" => $struktur[3]->id_user,
                "nama_struktur" => $struktur[3]->nama_struktur_child1,
                "status" => $this->statusNull($struktur[3]->id_user, $pengajuan->id_pengajuan, 3)
            ],
            [
                "id_user" => 1111,
                "nama_struktur" => 'LPJ',
                "status" => $this->statusNull($struktur[3]->id_user, $pengajuan->id_pengajuan, 4) && $this->statusNull($struktur[0]->id_user, $pengajuan->id_pengajuan, 4) ? true : false,
                "lpj" => [
                    // Dir Keuangan
                    [
                        "id_user" => $struktur[3]->id_user,
                        "nama_struktur" => $struktur[3]->nama_struktur_child1,
                        "status" => $this->statusNull($struktur[3]->id_user, $pengajuan->id_pengajuan, 4)
                    ],
                    // Sekniv
                    [
                        "id_user" => $struktur[0]->id_user,
                        "nama_struktur" => 'Sekniv',
                        "status" => $this->statusNull($struktur[0]->id_user, $pengajuan->id_pengajuan, 4)
                    ]
                ]
            ],
            // Completed
            [
                "id_user" => 2222,
                "nama_struktur" => 'Completed',
                "status" => $this->statusNull($struktur[3]->id_user, $pengajuan->id_pengajuan, 4) && $this->statusNull($struktur[0]->id_user, $pengajuan->id_pengajuan, 4) ? true : false
            ]
        );

        return response()->json([
            "data" => $status
        ]);
    }

    /**
     * semua pengajuan
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
                ->join('rkat', 'pengajuan.kode_rkat', 'rkat.id_rkat')
                ->join('struktur', 'user.id_struktur', 'struktur.id_struktur')
                ->join('struktur_child1', 'user.id_struktur_child1', 'struktur_child1.id_struktur_child1')
                ->join('struktur_child2', 'user.id_struktur_child2', 'struktur_child2.id_struktur_child2')
                ->where('pengajuan.id_user', '!=', $userStruktur->id_user)
                ->where('pengajuan.next', '!=', 3333)
                ->where('pengajuan.status_pengajuan', 'progress')
                ->select('user.id_user', 'rkat.kode_rkat', 'pengajuan.id_pengajuan', 'pengajuan.validasi_status', 'pengajuan.nama_status', 'user.fullname', 'struktur.nama_struktur', 'struktur_child1.nama_struktur_child1', 'struktur_child2.nama_struktur_child2', 'pengajuan.created_at')
                ->orderBy('pengajuan.id_pengajuan', 'DESC')
                ->get();
        } else if ($userStruktur->level == 2) {
            $data = UserModel::join('pengajuan', 'user.id_user', 'pengajuan.id_user')
                ->join('rkat', 'pengajuan.kode_rkat', 'rkat.id_rkat')
                ->join('struktur', 'user.id_struktur', 'struktur.id_struktur')
                ->join('struktur_child1', 'user.id_struktur_child1', 'struktur_child1.id_struktur_child1')
                ->join('struktur_child2', 'user.id_struktur_child2', 'struktur_child2.id_struktur_child2')
                ->where('pengajuan.id_user', '!=', $userStruktur->id_user)
                ->where('pengajuan.next', '!=', 3333)
                ->where('pengajuan.status_pengajuan', 'progress')
                ->select('user.id_user', 'rkat.kode_rkat', 'pengajuan.id_pengajuan', 'pengajuan.validasi_status', 'pengajuan.nama_status', 'user.fullname', 'struktur.nama_struktur', 'struktur_child1.nama_struktur_child1', 'struktur_child2.nama_struktur_child2', 'pengajuan.created_at')
                ->orderBy('pengajuan.id_pengajuan', 'DESC')
                ->get();
        } else if ($userStruktur->level == 3 || $userStruktur->level == 4) {
            if ($userStruktur->child1_level == "1" || $userStruktur->level == 3) {
                $data = UserModel::join('pengajuan', 'user.id_user', 'pengajuan.id_user')
                    ->join('rkat', 'pengajuan.kode_rkat', 'rkat.id_rkat')
                    ->join('struktur', 'user.id_struktur', 'struktur.id_struktur')
                    ->join('struktur_child1', 'user.id_struktur_child1', 'struktur_child1.id_struktur_child1')
                    ->join('struktur_child2', 'user.id_struktur_child2', 'struktur_child2.id_struktur_child2')
                    ->where('pengajuan.id_user', '!=', $userStruktur->id_user)
                    ->where('pengajuan.next', '!=', 3333)
                    ->where('pengajuan.status_pengajuan', 'progress')
                    ->select('user.id_user', 'rkat.kode_rkat', 'pengajuan.id_pengajuan', 'pengajuan.validasi_status', 'pengajuan.nama_status', 'user.fullname', 'struktur.nama_struktur', 'struktur_child1.nama_struktur_child1', 'struktur_child2.nama_struktur_child2', 'pengajuan.created_at')
                    ->orderBy('pengajuan.id_pengajuan', 'DESC')
                    ->get();
            } else {
                $data = UserModel::join('pengajuan', 'user.id_user', 'pengajuan.id_user')
                    ->join('rkat', 'pengajuan.kode_rkat', 'rkat.id_rkat')
                    ->join('struktur', 'user.id_struktur', 'struktur.id_struktur')
                    ->join('struktur_child1', 'user.id_struktur_child1', 'struktur_child1.id_struktur_child1')
                    ->join('struktur_child2', 'user.id_struktur_child2', 'struktur_child2.id_struktur_child2')
                    ->where('pengajuan.id_user', '!=', $userStruktur->id_user)
                    ->where('struktur.id_struktur', $userStruktur->id_struktur)
                    ->where('pengajuan.next', '!=', 3333)
                    ->where('pengajuan.status_pengajuan', 'progress')
                    ->select('user.id_user', 'rkat.kode_rkat', 'pengajuan.id_pengajuan', 'pengajuan.validasi_status', 'pengajuan.nama_status', 'user.fullname', 'struktur.nama_struktur', 'struktur_child1.nama_struktur_child1', 'struktur_child2.nama_struktur_child2', 'pengajuan.created_at')
                    ->orderBy('pengajuan.id_pengajuan', 'DESC')
                    ->get();
            }
        } else if ($userStruktur->level == 5) {
            $data = UserModel::join('pengajuan', 'user.id_user', 'pengajuan.id_user')
                ->join('rkat', 'pengajuan.kode_rkat', 'rkat.id_rkat')
                ->join('struktur', 'user.id_struktur', 'struktur.id_struktur')
                ->join('struktur_child1', 'user.id_struktur_child1', 'struktur_child1.id_struktur_child1')
                ->join('struktur_child2', 'user.id_struktur_child2', 'struktur_child2.id_struktur_child2')
                ->where('pengajuan.id_user', '!=', $userStruktur->id_user)
                ->where('struktur.id_struktur', $userStruktur->id_struktur)
                ->where('struktur_child1.id_struktur_child1', $userStruktur->id_struktur_child1)
                ->where('pengajuan.next', '!=', 3333)
                ->where('pengajuan.status_pengajuan', 'progress')
                ->select('user.id_user', 'rkat.kode_rkat', 'pengajuan.id_pengajuan', 'pengajuan.validasi_status', 'pengajuan.nama_status', 'user.fullname', 'struktur.nama_struktur', 'struktur_child1.nama_struktur_child1', 'struktur_child2.nama_struktur_child2', 'pengajuan.created_at')
                ->orderBy('pengajuan.id_pengajuan', 'DESC')
                ->get();
        }

        return response()->json([
            "data" => $data
        ]);
    }

    /**
     * Hanya pengajuan akan di approval
     */
    public function pengajuanNeedApproved($params)
    {
        $userStruktur = UserModel::join('struktur', 'user.id_struktur', 'struktur.id_struktur')
            ->join('struktur_child1', 'user.id_struktur_child1', 'struktur_child1.id_struktur_child1')
            ->join('struktur_child2', 'user.id_struktur_child2', 'struktur_child2.id_struktur_child2')
            ->where('id_user', $params)
            ->first();

        if ($userStruktur->level == 1) {
            $data = UserModel::join('pengajuan', 'user.id_user', 'pengajuan.id_user')
                ->join('rkat', 'pengajuan.kode_rkat', 'rkat.id_rkat')
                ->join('struktur', 'user.id_struktur', 'struktur.id_struktur')
                ->join('struktur_child1', 'user.id_struktur_child1', 'struktur_child1.id_struktur_child1')
                ->join('struktur_child2', 'user.id_struktur_child2', 'struktur_child2.id_struktur_child2')
                ->where('pengajuan.next', $params)
                ->where('pengajuan.id_user', '!=', $userStruktur->id_user)
                ->where('pengajuan.status_pengajuan', 'progress')
                ->select('user.id_user', 'rkat.kode_rkat', 'pengajuan.next', 'pengajuan.id_pengajuan', 'pengajuan.validasi_status', 'pengajuan.nama_status', 'user.fullname', 'struktur.nama_struktur', 'struktur_child1.nama_struktur_child1', 'struktur_child2.nama_struktur_child2', 'pengajuan.created_at')
                ->orderBy('pengajuan.id_pengajuan', 'DESC')
                ->get();
        } else if ($userStruktur->level == 2) {
            $data = UserModel::join('pengajuan', 'user.id_user', 'pengajuan.id_user')
                ->join('rkat', 'pengajuan.kode_rkat', 'rkat.id_rkat')
                ->join('struktur', 'user.id_struktur', 'struktur.id_struktur')
                ->join('struktur_child1', 'user.id_struktur_child1', 'struktur_child1.id_struktur_child1')
                ->join('struktur_child2', 'user.id_struktur_child2', 'struktur_child2.id_struktur_child2')
                ->where('pengajuan.next', $params)
                ->where('pengajuan.id_user', '!=', $userStruktur->id_user)
                ->where('pengajuan.status_pengajuan', 'progress')
                ->select('user.id_user', 'rkat.kode_rkat', 'pengajuan.next', 'pengajuan.id_pengajuan', 'pengajuan.validasi_status', 'pengajuan.nama_status', 'user.fullname', 'struktur.nama_struktur', 'struktur_child1.nama_struktur_child1', 'struktur_child2.nama_struktur_child2', 'pengajuan.created_at')
                ->orderBy('pengajuan.id_pengajuan', 'DESC')
                ->get();
        } else if ($userStruktur->level == 3 || $userStruktur->level == 4) {
            if ($userStruktur->child1_level == "1" || $userStruktur->level == 3) {
                $data = UserModel::join('pengajuan', 'user.id_user', 'pengajuan.id_user')
                    ->join('rkat', 'pengajuan.kode_rkat', 'rkat.id_rkat')
                    ->join('struktur', 'user.id_struktur', 'struktur.id_struktur')
                    ->join('struktur_child1', 'user.id_struktur_child1', 'struktur_child1.id_struktur_child1')
                    ->join('struktur_child2', 'user.id_struktur_child2', 'struktur_child2.id_struktur_child2')
                    ->where('pengajuan.next', $params)
                    ->where('pengajuan.id_user', '!=', $userStruktur->id_user)
                    ->where('pengajuan.status_pengajuan', 'progress')
                    ->select('user.id_user', 'rkat.kode_rkat', 'pengajuan.next', 'pengajuan.id_pengajuan', 'pengajuan.validasi_status', 'pengajuan.nama_status', 'user.fullname', 'struktur.nama_struktur', 'struktur_child1.nama_struktur_child1', 'struktur_child2.nama_struktur_child2', 'pengajuan.created_at')
                    ->orderBy('pengajuan.id_pengajuan', 'DESC')
                    ->get();
            } else {
                $data = UserModel::join('pengajuan', 'user.id_user', 'pengajuan.id_user')
                    ->join('rkat', 'pengajuan.kode_rkat', 'rkat.id_rkat')
                    ->join('struktur', 'user.id_struktur', 'struktur.id_struktur')
                    ->join('struktur_child1', 'user.id_struktur_child1', 'struktur_child1.id_struktur_child1')
                    ->join('struktur_child2', 'user.id_struktur_child2', 'struktur_child2.id_struktur_child2')
                    ->where('pengajuan.next', $params)
                    ->where('pengajuan.id_user', '!=', $userStruktur->id_user)
                    ->where('struktur.id_struktur', $userStruktur->id_struktur)
                    ->where('pengajuan.status_pengajuan', 'progress')
                    ->select('user.id_user', 'rkat.kode_rkat', 'pengajuan.next', 'pengajuan.id_pengajuan', 'pengajuan.validasi_status', 'pengajuan.nama_status', 'user.fullname', 'struktur.nama_struktur', 'struktur_child1.nama_struktur_child1', 'struktur_child2.nama_struktur_child2', 'pengajuan.created_at')
                    ->orderBy('pengajuan.id_pengajuan', 'DESC')
                    ->get();
            }
        } else if ($userStruktur->level == 5) {
            $data = UserModel::join('pengajuan', 'user.id_user', 'pengajuan.id_user')
                ->join('rkat', 'pengajuan.kode_rkat', 'rkat.id_rkat')
                ->join('struktur', 'user.id_struktur', 'struktur.id_struktur')
                ->join('struktur_child1', 'user.id_struktur_child1', 'struktur_child1.id_struktur_child1')
                ->join('struktur_child2', 'user.id_struktur_child2', 'struktur_child2.id_struktur_child2')
                ->where('pengajuan.next', $params)
                ->where('pengajuan.id_user', '!=', $userStruktur->id_user)
                ->where('struktur.id_struktur', $userStruktur->id_struktur)
                ->where('struktur_child1.id_struktur_child1', $userStruktur->id_struktur_child1)
                ->where('pengajuan.status_pengajuan', 'progress')
                ->select('user.id_user', 'rkat.kode_rkat', 'pengajuan.next', 'pengajuan.id_pengajuan', 'pengajuan.validasi_status', 'pengajuan.nama_status', 'user.fullname', 'struktur.nama_struktur', 'struktur_child1.nama_struktur_child1', 'struktur_child2.nama_struktur_child2', 'pengajuan.created_at')
                ->orderBy('pengajuan.id_pengajuan', 'DESC')
                ->get();
        }

        return response()->json([
            "data" => $data
        ]);
    }

    /**
     * Semua pengajuan selesai
     */
    public function pengajuanSelesai($params)
    {
        $userStruktur = UserModel::join('struktur', 'user.id_struktur', 'struktur.id_struktur')
            ->join('struktur_child1', 'user.id_struktur_child1', 'struktur_child1.id_struktur_child1')
            ->join('struktur_child2', 'user.id_struktur_child2', 'struktur_child2.id_struktur_child2')
            ->where('id_user', $params)
            ->first();

        if ($userStruktur->level == 1) {
            $data = UserModel::join('pengajuan', 'user.id_user', 'pengajuan.id_user')
                ->join('rkat', 'pengajuan.kode_rkat', 'rkat.id_rkat')
                ->join('struktur', 'user.id_struktur', 'struktur.id_struktur')
                ->join('struktur_child1', 'user.id_struktur_child1', 'struktur_child1.id_struktur_child1')
                ->join('struktur_child2', 'user.id_struktur_child2', 'struktur_child2.id_struktur_child2')
                ->where('pengajuan.id_user', '!=', $userStruktur->id_user)
                ->where('pengajuan.next', 3333)
                ->select('user.id_user', 'rkat.kode_rkat', 'pengajuan.next', 'pengajuan.id_pengajuan', 'pengajuan.validasi_status', 'pengajuan.nama_status', 'user.fullname', 'struktur.nama_struktur', 'struktur_child1.nama_struktur_child1', 'struktur_child2.nama_struktur_child2', 'pengajuan.created_at')
                ->orderBy('pengajuan.id_pengajuan', 'DESC')
                ->get();
        } else if ($userStruktur->level == 2) {
            $data = UserModel::join('pengajuan', 'user.id_user', 'pengajuan.id_user')
                ->join('rkat', 'pengajuan.kode_rkat', 'rkat.id_rkat')
                ->join('struktur', 'user.id_struktur', 'struktur.id_struktur')
                ->join('struktur_child1', 'user.id_struktur_child1', 'struktur_child1.id_struktur_child1')
                ->join('struktur_child2', 'user.id_struktur_child2', 'struktur_child2.id_struktur_child2')
                ->where('pengajuan.id_user', '!=', $userStruktur->id_user)
                ->where('pengajuan.next', 3333)
                ->select('user.id_user', 'rkat.kode_rkat', 'pengajuan.next', 'pengajuan.id_pengajuan', 'pengajuan.validasi_status', 'pengajuan.nama_status', 'user.fullname', 'struktur.nama_struktur', 'struktur_child1.nama_struktur_child1', 'struktur_child2.nama_struktur_child2', 'pengajuan.created_at')
                ->orderBy('pengajuan.id_pengajuan', 'DESC')
                ->get();
        } else if ($userStruktur->level == 3 || $userStruktur->level == 4) {
            if ($userStruktur->child1_level == "1" || $userStruktur->level == 3) {
                $data = UserModel::join('pengajuan', 'user.id_user', 'pengajuan.id_user')
                    ->join('rkat', 'pengajuan.kode_rkat', 'rkat.id_rkat')
                    ->join('struktur', 'user.id_struktur', 'struktur.id_struktur')
                    ->join('struktur_child1', 'user.id_struktur_child1', 'struktur_child1.id_struktur_child1')
                    ->join('struktur_child2', 'user.id_struktur_child2', 'struktur_child2.id_struktur_child2')
                    ->where('pengajuan.id_user', '!=', $userStruktur->id_user)
                    ->where('pengajuan.next', 3333)
                    ->select('user.id_user', 'rkat.kode_rkat', 'pengajuan.next', 'pengajuan.id_pengajuan', 'pengajuan.validasi_status', 'pengajuan.nama_status', 'user.fullname', 'struktur.nama_struktur', 'struktur_child1.nama_struktur_child1', 'struktur_child2.nama_struktur_child2', 'pengajuan.created_at')
                    ->orderBy('pengajuan.id_pengajuan', 'DESC')
                    ->get();
            } else {
                $data = UserModel::join('pengajuan', 'user.id_user', 'pengajuan.id_user')
                    ->join('rkat', 'pengajuan.kode_rkat', 'rkat.id_rkat')
                    ->join('struktur', 'user.id_struktur', 'struktur.id_struktur')
                    ->join('struktur_child1', 'user.id_struktur_child1', 'struktur_child1.id_struktur_child1')
                    ->join('struktur_child2', 'user.id_struktur_child2', 'struktur_child2.id_struktur_child2')
                    ->where('pengajuan.id_user', '!=', $userStruktur->id_user)
                    ->where('struktur.id_struktur', $userStruktur->id_struktur)
                    ->where('pengajuan.next', 3333)
                    ->select('user.id_user', 'rkat.kode_rkat', 'pengajuan.next', 'pengajuan.id_pengajuan', 'pengajuan.validasi_status', 'pengajuan.nama_status', 'user.fullname', 'struktur.nama_struktur', 'struktur_child1.nama_struktur_child1', 'struktur_child2.nama_struktur_child2', 'pengajuan.created_at')
                    ->orderBy('pengajuan.id_pengajuan', 'DESC')
                    ->get();
            }
        } else if ($userStruktur->level == 5) {
            $data = UserModel::join('pengajuan', 'user.id_user', 'pengajuan.id_user')
                ->join('rkat', 'pengajuan.kode_rkat', 'rkat.id_rkat')
                ->join('struktur', 'user.id_struktur', 'struktur.id_struktur')
                ->join('struktur_child1', 'user.id_struktur_child1', 'struktur_child1.id_struktur_child1')
                ->join('struktur_child2', 'user.id_struktur_child2', 'struktur_child2.id_struktur_child2')
                ->where('pengajuan.next', 3333)
                ->where('pengajuan.id_user', '!=', $userStruktur->id_user)
                ->where('struktur.id_struktur', $userStruktur->id_struktur)
                ->where('struktur_child1.id_struktur_child1', $userStruktur->id_struktur_child1)
                ->select('user.id_user', 'rkat.kode_rkat', 'pengajuan.next', 'pengajuan.id_pengajuan', 'pengajuan.validasi_status', 'pengajuan.nama_status', 'user.fullname', 'struktur.nama_struktur', 'struktur_child1.nama_struktur_child1', 'struktur_child2.nama_struktur_child2', 'pengajuan.created_at')
                ->orderBy('pengajuan.id_pengajuan', 'DESC')
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
            $data = DB::select('SELECT user.id_user, user.fullname, struktur.nama_struktur, struktur_child1.nama_struktur_child1, struktur_child2.nama_struktur_child2, (SELECT SUM(rencara_anggaran) FROM rkat WHERE id_user = user.id_user) as rencara_anggaran, (SELECT SUM(biaya_program) FROM pengajuan WHERE id_user = user.id_user AND  next = 3333) as biaya_program FROM user JOIN struktur JOIN struktur_child1 JOIN struktur_child2 WHERE user.id_struktur = struktur.id_struktur AND user.id_struktur_child1 = struktur_child1.id_struktur_child1 AND user.id_struktur_child2 = struktur_child2.id_struktur_child2 AND user.id_user != ' . $userStruktur->id_user . ' ORDER BY struktur.level ASC');
        } else if ($userStruktur->level == 2) {
            $data = DB::select('SELECT user.id_user, user.fullname, struktur.nama_struktur, struktur_child1.nama_struktur_child1, struktur_child2.nama_struktur_child2, (SELECT SUM(rencara_anggaran) FROM rkat WHERE id_user = user.id_user) as rencara_anggaran, (SELECT SUM(biaya_program) FROM pengajuan WHERE id_user = user.id_user AND  next = 3333) as biaya_program FROM user JOIN struktur JOIN struktur_child1 JOIN struktur_child2 WHERE user.id_struktur = struktur.id_struktur AND user.id_struktur_child1 = struktur_child1.id_struktur_child1 AND user.id_struktur_child2 = struktur_child2.id_struktur_child2 AND user.id_user != ' . $userStruktur->id_user . ' ORDER BY struktur.level ASC');
        } else if ($userStruktur->level == 3 || $userStruktur->level == 4) {
            if ($userStruktur->child1_level == "1" || $userStruktur->level == 3) {
                $data = DB::select('SELECT user.id_user, user.fullname, struktur.nama_struktur, struktur_child1.nama_struktur_child1, struktur_child2.nama_struktur_child2, (SELECT SUM(rencara_anggaran) FROM rkat WHERE id_user = user.id_user) as rencara_anggaran, (SELECT SUM(biaya_program) FROM pengajuan WHERE id_user = user.id_user AND  next = 3333) as biaya_program FROM user JOIN struktur JOIN struktur_child1 JOIN struktur_child2 WHERE user.id_struktur = struktur.id_struktur AND user.id_struktur_child1 = struktur_child1.id_struktur_child1 AND user.id_struktur_child2 = struktur_child2.id_struktur_child2 AND user.id_user != ' . $userStruktur->id_user . ' ORDER BY struktur.level ASC');
            } else {
                $data = DB::select('SELECT user.id_user, user.fullname, struktur.nama_struktur, struktur_child1.nama_struktur_child1, struktur_child2.nama_struktur_child2, (SELECT SUM(rencara_anggaran) FROM rkat WHERE id_user = user.id_user) as rencara_anggaran, (SELECT SUM(biaya_program) FROM pengajuan WHERE id_user = user.id_user AND  next = 3333) as biaya_program FROM user JOIN struktur JOIN struktur_child1 JOIN struktur_child2 WHERE user.id_struktur = struktur.id_struktur AND user.id_struktur_child1 = struktur_child1.id_struktur_child1 AND user.id_struktur_child2 = struktur_child2.id_struktur_child2 AND user.id_user != ' . $userStruktur->id_user . ' AND struktur.id_struktur = ' . $userStruktur->id_struktur . ' ORDER BY struktur.level ASC');
            }
        } else if ($userStruktur->level == 5) {
            $data = DB::select('SELECT user.id_user, user.fullname, struktur.nama_struktur, struktur_child1.nama_struktur_child1, struktur_child2.nama_struktur_child2, (SELECT SUM(rencara_anggaran) FROM rkat WHERE id_user = user.id_user) as rencara_anggaran, (SELECT SUM(biaya_program) FROM pengajuan WHERE id_user = user.id_user AND  next = 3333) as biaya_program FROM user JOIN struktur JOIN struktur_child1 JOIN struktur_child2 WHERE user.id_struktur = struktur.id_struktur AND user.id_struktur_child1 = struktur_child1.id_struktur_child1 AND user.id_struktur_child2 = struktur_child2.id_struktur_child2 AND user.id_user != ' . $userStruktur->id_user . ' AND struktur.id_struktur = ' . $userStruktur->id_struktur . '  AND struktur_child1.id_struktur_child1 = ' . $userStruktur->id_struktur_child1 . ' ORDER BY struktur.level ASC');
        }

        return response()->json([
            "data" => $data
        ]);
    }

    public function getGrafik($params)
    {
        $rkat = RKATModel::where('id_user', $params);

        return response()->json([
            'data' => [
                'total_rkat' => $rkat->count(),
                'total_rkat_diterima' => PengajuanModel::where('id_user', $params)
                    ->where('pencairan', '!=', null)
                    ->sum('biaya_program'),
                'total_anggaran_rkat' => $rkat->sum('total_anggaran'),
                'pengajuan_diterima' => PengajuanModel::where('id_user', $params)
                    ->where('next', 3333)->count(),

                'pengajuan_progress' => PengajuanModel::where('id_user', $params)
                    ->where('next', '!=', 3333)->count(),

                'rkat' => DB::select('SELECT rkat.id_rkat, rkat.kode_rkat, rkat.rencara_anggaran, (SELECT SUM(biaya_program) FROM pengajuan WHERE kode_rkat = rkat.id_rkat AND next = 3333) as biaya_program, rkat.created_at FROM rkat WHERE rkat.id_user = ' . $params . ' ORDER BY kode_rkat ASC'),

                'pengajuan' => PengajuanModel::join('user', 'pengajuan.id_user', 'user.id_user')
                    ->join('rkat', 'pengajuan.kode_rkat', 'rkat.id_rkat')
                    ->where('user.id_user', $params)
                    ->select('user.fullname', 'rkat.kode_rkat', 'pengajuan.id_pengajuan', 'pengajuan.biaya_program', 'pengajuan.validasi_status', 'pengajuan.nama_status', 'pengajuan.created_at')
                    ->orderBy('pengajuan.kode_rkat', 'ASC')
                    ->get(),

                'user' => UserModel::join('struktur', 'user.id_struktur', 'struktur.id_struktur')
                    ->join('struktur_child1', 'user.id_struktur_child1', 'struktur_child1.id_struktur_child1')
                    ->join('struktur_child2', 'user.id_struktur_child2', 'struktur_child2.id_struktur_child2')
                    ->where('user.id_user', $params)
                    ->select('user.*', 'struktur.nama_struktur', 'struktur_child1.nama_struktur_child1', 'struktur_child2.nama_struktur_child2')
                    ->first()
            ]
        ]);
    }

    public function pdfByUSer(Request $request)
    {
        $pengajuan = PengajuanModel::join('rkat', 'pengajuan.kode_rkat', 'rkat.id_rkat')
            ->join('user', 'pengajuan.id_user', 'user.id_user')
            ->select('user.fullname', 'user.kop', 'rkat.nama_program', 'rkat.kode_rkat', 'rkat.tujuan', 'pengajuan.id_pengajuan', 'pengajuan.latar_belakang', 'pengajuan.sasaran', 'pengajuan.target_capaian', 'pengajuan.bentuk_pelaksanaan_program', 'pengajuan.tempat_program', 'pengajuan.tanggal')
            ->orderBy('user.fullname')
            ->whereIn('pengajuan.id_pengajuan', $request->all())
            ->get();

        $data = [
            'pengajuan' => $pengajuan,
        ];
        
        $pdf = PDF::loadView('pengajuan', $data)->setPaper('a4');
        return $pdf->setOptions(['enable_javascript', true])->setOptions(['javascript-delay', 13500])->save('invoice.pdf');
    }



    public function coba()
    {
        $listRkat =  DB::select('SELECT rkat.id_rkat, rkat.kode_rkat, rkat.rencara_anggaran, (SELECT SUM(biaya_program) FROM pengajuan WHERE kode_rkat = rkat.id_rkat AND pencairan != null) as biaya_program, rkat.created_at FROM rkat ORDER BY kode_rkat ASC');

        $id_rkat = [];
        foreach ($listRkat as $value) {
            $id_rkat[] = $value->id_rkat;
        }
        $listPengajuan = PengajuanModel::whereIn('kode_rkat', $id_rkat)
            ->select('id_pengajuan', 'kode_rkat', 'latar_belakang', 'biaya_program', 'validasi_status', 'nama_status')
            ->get();

        $newList = [];
        foreach ($listRkat as $value) {
            $newList[] = [
                "id_rkat" => $value->id_rkat,
                "kode_rkat" => $value->kode_rkat,
                "rencara_anggaran" => $value->rencara_anggaran,
                "biaya_program" => $value->biaya_program,
                "created_at" => $value->created_at,
                "pengajuan" => $this->getCoba($listPengajuan, $value->id_rkat)
            ];
        }
        return $newList;
    }

    public function getCoba($listPengajuan, $params)
    {
        $new = [];
        foreach ($listPengajuan as $key) {
            if ($key->kode_rkat == $params) {
                $new[] = $key;
            }
        }
        return $new;
    }

    public function lpjKeuangan()
    {
        $return = PengajuanModel::join('pengajuan_history', 'pengajuan.id_pengajuan', 'pengajuan_history.id')
            ->join('validasi', 'pengajuan_history.id_pengajuan', 'validasi.id_pengajuan_history')
            ->select('pengajuan.id_pengajuan')
            ->where('pengajuan.lpj_keuangan', '!=', null) // sudah upload
            ->where('validasi.status_validasi', 4) // sudah valid
            ->where('validasi.id_struktur', 24) // keuangan
            ->distinct()
            ->get();

        $a = [];
        foreach ($return as $r) {
            $a[] = $r->id_pengajuan;
        }

        return PengajuanModel::join('rkat', 'pengajuan.kode_rkat', 'rkat.id_rkat')
            ->join('user', 'pengajuan.id_user', 'user.id_user')
            ->join('pengajuan_history', 'pengajuan.id_pengajuan', 'pengajuan_history.id')
            ->join('validasi', 'pengajuan_history.id_pengajuan', 'validasi.id_pengajuan_history')
            ->select('user.fullname', 'rkat.kode_rkat', 'pengajuan.id_pengajuan', 'pengajuan.biaya_program', 'pengajuan.validasi_status', 'pengajuan.nama_status', 'pengajuan.created_at')
            ->where('pengajuan.pencairan', '!=', null) // belum pengajuan
            ->where('pengajuan.lpj_keuangan', '!=',  null) // belum pengajuan
            ->whereNotIn('pengajuan.id_pengajuan', $a)
            ->distinct()
            ->get();
    }

    public function transfer()
    {
        return PengajuanModel::join('rkat', 'pengajuan.kode_rkat', 'rkat.id_rkat')
            ->join('user', 'pengajuan.id_user', 'user.id_user')
            ->join('pengajuan_history', 'pengajuan.id_pengajuan', 'pengajuan_history.id')
            ->join('validasi', 'pengajuan_history.id_pengajuan', 'validasi.id_pengajuan_history')
            ->select('user.fullname', 'rkat.kode_rkat', 'pengajuan.id_pengajuan', 'pengajuan.biaya_program', 'pengajuan.validasi_status', 'pengajuan.nama_status', 'pengajuan.created_at')
            ->where('pengajuan.pencairan', null) // belum pengajuan
            ->where('validasi.status_validasi', 2) // terima
            ->where('validasi.id_struktur', 22) // rektor
            ->distinct()
            ->get();
    }
}
