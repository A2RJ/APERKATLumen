<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Mail;
use App\Models\UserModel;
use App\Models\RKATModel;
use App\Models\PengajuanModel;
use App\Models\PengajuanPencairanModel;
use App\Models\PengajuanRKATValidasiModel;
use App\Models\PrintModel;
use Barryvdh\DomPDF\Facade as PDF;
use Rap2hpoutre\FastExcel\FastExcel;

class PengajuanController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return response()->json([
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
        if (PengajuanModel::where('kode_rkat', $request->kode_rkat)->count() == 2) {
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

        $next = new NonRKATController;
        $data = PengajuanModel::create($request->all());

        $request->nama_status = UserModel::where('id_user', $request->id_user)->first()->fullname;

        $this->autoProccess([
            'next' => $next->getNext($request->id_struktur)['next'],
            'id_pengajuan' => $data->id_pengajuan,
            'id_struktur' => $request->id_struktur,
            'status_validasi' => $request->status_validasi,
            'nama_status' => $request->nama_status,
            'message' => $request->message
        ]);

        return response()->json([
            'data' => $data,
            'id_pengajuan' => $data->id_pengajuan,
        ]);
    }

    // hitung pengajuan sudah pencairan sebanyak 2x
    public function validasiLPJ($id_user)
    {
        if (
            PengajuanModel::join('rkat', 'pengajuan.kode_rkat', 'rkat.id_rkat')
            ->where('pengajuan.id_user', $id_user)
            ->where('pengajuan.pencairan', 'default.jpg')
            ->where('lpj_kegiatan', null)
            ->where('lpj_keuangan', null)
            ->orWhere('pengajuan.id_user', $id_user)
            ->where('pengajuan.pencairan', 'default.jpg')
            ->where('lpj_kegiatan', '!=', null)
            ->where('lpj_keuangan', null)
            ->count() >= 2
        ) {
            return true;
        }
    }

    public function upload(Request $request)
    {
        if ($request->hasFile('file')) {
            $fileName = uniqid(40) . "." . $request->file('file')->getClientOriginalExtension();
            $request->file('file')->move('public/file', $fileName);
            return $fileName;
        } else {
            return false;
        }
    }

    public function importRAB(Request $request)
    {
        if ($request->hasFile('file')) {
            $collection = (new FastExcel)->import($request->file('file'));
            $array = [];
            foreach ($collection as $value) {
                $array[] = [
                    "no" => uniqid(),
                    "jenis_barang" => $value["Jenis Barang"],
                    "harga_satuan" => $value["Harga Satuan"],
                    "qty" => $value["Qty"],
                    'total' => '0',
                    "keterangan" => $value["Keterangan"],
                ];
            }

            return response()->json(['data' => $array]);
        } else {
            return response()->json(['data ' => []]);
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
        $data = PengajuanModel::select(
            'user.id_user',
            'rkat.kode_rkat',
            'rkat.period',
            'pengajuan.id_pengajuan',
            'pengajuan.id_period',
            'pengajuan.biaya_program',
            'pengajuan.biaya_disetujui',
            'pengajuan.validasi_status',
            'pengajuan.nama_status',
            'user.fullname',
            'struktur.nama_struktur',
            'struktur_child1.nama_struktur_child1',
            'struktur_child2.nama_struktur_child2',
            'pengajuan.created_at'
        )
            ->join('rkat', 'pengajuan.kode_rkat', 'rkat.id_rkat')
            ->join('user', 'pengajuan.id_user', 'user.id_user')
            ->join('struktur', 'user.id_struktur', 'struktur.id_struktur')
            ->join('struktur_child1', 'user.id_struktur_child1', 'struktur_child1.id_struktur_child1')
            ->join('struktur_child2', 'user.id_struktur_child2', 'struktur_child2.id_struktur_child2')
            ->where('pengajuan.id_user', $params)
            ->with(['periodePencairan'])
            ->orderBy('pengajuan.id_pengajuan', 'DESC')
            ->get();

        return response()->json([
            'data' => $data ? $data : []
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

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $params
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $params)
    {
        // $kode = PengajuanModel::find($params);
        // if ($kode->kode_rkat != $request->kode_rkat &&  PengajuanModel::where('kode_rkat', $request->kode_rkat)->count() == 2) {
        //     return response()->json([
        //         'status' => 'error',
        //         'message' => 'Tidak dapat menambah pengajuan, RKAT telah digunakan'
        //     ], 400);
        // }

        // $rkat = RKATModel::where('id_rkat', $kode->kode_rkat)->first();
        // if ($rkat == null) {
        //     return response()->json([
        //         'status' => 'error',
        //         'message' => 'Tidak dapat menambah pengajuan, RKAT tidak ditemukan'
        //     ], 400);
        // } else {
        //     if ($request->biaya_program && $request->biaya_program > $rkat->total_anggaran) {
        //         return response()->json([
        //             'status' => 'error',
        //             'message' => 'Tidak dapat menambah pengajuan, biaya program tidak sesuai dengan total anggaran RKAT',
        //         ], 400);
        //     }
        // }

        $data = PengajuanModel::find($params);
        $data ? $data->update($request->all()) : false;

        $this->autoProccess([
            'next' => $request->next,
            'id_pengajuan' => $params,
            'id_struktur' => $request->id_struktur,
            'status_validasi' => $request->status_validasi,
            'nama_status' => $request->nama_status,
            'message' => $request->message
        ]);

        return response()->json([
            'data' => $data ? "Data was updated" : "Failed to update data not found"
        ]);
    }

    /**
     * Approve the specified submission from user by id_pengajuan
     */
    public function approve(Request $request, $params)
    {
        // if has pencairan update pengajuan
        if ($request->pencairan) {
            $data = PengajuanModel::find($params)->update([
                'pencairan' => $request->pencairan,
            ]);
        }

        $data = $this->autoProccess([
            'next' => $request->next,
            'id_pengajuan' => $params,
            'id_struktur' => $request->id_struktur,
            'status_validasi' => $request->status_validasi,
            'nama_status' => $request->nama_status,
            'message' => $request->message
        ]);
        return response()->json([
            'data' => $data ? "Submission was approved" : "Failed, data not found"
        ]);
    }

    /**
     * Decline the specified submission from user
     */
    public function decline(Request $request, $params)
    {
        $data = $this->autoProccess([
            'next' => $request->next,
            'id_pengajuan' => $params,
            'id_struktur' => $request->id_struktur,
            'status_validasi' => $request->status_validasi,
            'nama_status' => $request->nama_status,
            'message' => $request->message
        ]);

        return response()->json([
            'data' => $data ? "Submission was declined" : "Failed, data not found"
        ]);
    }

    public function undo(Request $request, $params)
    {
        $data = $this->autoProccess([
            'next' => $request->next,
            'id_pengajuan' => $params,
            'id_struktur' => $request->id_struktur,
            'status_validasi' => $request->status_validasi,
            'nama_status' => $request->nama_status,
            'message' => $request->message
        ]);

        return response()->json([
            'data' => $data ? "Submission was declined" : "Failed, data not found"
        ]);
    }

    /**
     * Insert data to tb pengajuan_validasi
     */
    public function autoProccess($params)
    {
        PengajuanModel::find($params['id_pengajuan'])->update([
            'next' => $params['next'],
            'validasi_status' => $params['status_validasi'],
            'nama_status' => $params['nama_status']
        ]);

        PengajuanRKATValidasiModel::create([
            'id_pengajuan' => $params['id_pengajuan'],
            'id_struktur' => $params['id_struktur'],
            'status_validasi' => $params['status_validasi'],
            'message' => $params['nama_status'] . ' ' . $params['message']
        ]);
    }

    public function hapus($params)
    {
    }

    // By User
    public function destroy($params)
    {
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
        $data = PengajuanRKATValidasiModel::where('id_pengajuan', $params)->get();

        return response()->json([
            'data' => $data ? $data : "Failed, data not found"
        ]);
    }

    public function validasi($params)
    {
        $data = PengajuanRKATValidasiModel::where('id_pengajuan', $params)->latest()->first();

        return $data->status_validasi == 0 ? true : false;
    }

    public function statusNull($id_struktur, $id_pengajuan, $nomor, $warek = false)
    {
        if ($warek !== false) {
            $data = PengajuanRKATValidasiModel::join('pengajuan', 'pengajuan_validasi.id_pengajuan', 'pengajuan.id_pengajuan')
                ->where('pengajuan_validasi.id_struktur', $id_struktur)
                ->where('pengajuan.id_pengajuan', $id_pengajuan)
                ->where('pengajuan_validasi.status_validasi', $nomor)
                ->skip($warek)
                ->first();
        } else {
            $data = PengajuanRKATValidasiModel::join('pengajuan', 'pengajuan_validasi.id_pengajuan', 'pengajuan.id_pengajuan')
                ->where('pengajuan_validasi.id_struktur', $id_struktur)
                ->where('pengajuan.id_pengajuan', $id_pengajuan)
                ->where('pengajuan_validasi.status_validasi', $nomor)
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
            $data = PengajuanModel::join('user', 'pengajuan.id_user', 'user.id_user')
                ->join('rkat', 'pengajuan.kode_rkat', 'rkat.id_rkat')
                ->join('struktur', 'user.id_struktur', 'struktur.id_struktur')
                ->join('struktur_child1', 'user.id_struktur_child1', 'struktur_child1.id_struktur_child1')
                ->join('struktur_child2', 'user.id_struktur_child2', 'struktur_child2.id_struktur_child2')
                ->where('pengajuan.id_user', '!=', $userStruktur->id_user)
                ->where('pengajuan.next', '!=', 3333)
                ->where('pengajuan.status_pengajuan', 'progress')
                ->select(
                    'user.id_user',
                    'rkat.kode_rkat',
                    'rkat.period',
                    'pengajuan.id_pengajuan',
                    'pengajuan.id_period',
                    'pengajuan.biaya_program',
                    'pengajuan.biaya_disetujui',
                    'pengajuan.validasi_status',
                    'pengajuan.nama_status',
                    'user.fullname',
                    'struktur.nama_struktur',
                    'struktur_child1.nama_struktur_child1',
                    'struktur_child2.nama_struktur_child2',
                    'pengajuan.created_at'
                )
                ->with(['periodePencairan'])
                ->orderBy('pengajuan.id_pengajuan', 'DESC')
                ->get();
        } else if ($userStruktur->level == 2) {
            $data = PengajuanModel::join('user', 'pengajuan.id_user', 'user.id_user')
                ->join('rkat', 'pengajuan.kode_rkat', 'rkat.id_rkat')
                ->join('struktur', 'user.id_struktur', 'struktur.id_struktur')
                ->join('struktur_child1', 'user.id_struktur_child1', 'struktur_child1.id_struktur_child1')
                ->join('struktur_child2', 'user.id_struktur_child2', 'struktur_child2.id_struktur_child2')
                ->where('pengajuan.id_user', '!=', $userStruktur->id_user)
                ->where('pengajuan.next', '!=', 3333)
                ->where('pengajuan.status_pengajuan', 'progress')
                ->select(
                    'user.id_user',
                    'rkat.kode_rkat',
                    'rkat.period',
                    'pengajuan.id_pengajuan',
                    'pengajuan.id_period',
                    'pengajuan.biaya_program',
                    'pengajuan.biaya_disetujui',
                    'pengajuan.validasi_status',
                    'pengajuan.nama_status',
                    'user.fullname',
                    'struktur.nama_struktur',
                    'struktur_child1.nama_struktur_child1',
                    'struktur_child2.nama_struktur_child2',
                    'pengajuan.created_at'
                )
                ->with(['periodePencairan'])
                ->orderBy('pengajuan.id_pengajuan', 'DESC')
                ->get();
        } else if ($userStruktur->level == 3 || $userStruktur->level == 4) {
            if ($userStruktur->child1_level == "1" || $userStruktur->level == 3) {
                $data = PengajuanModel::join('user', 'pengajuan.id_user', 'user.id_user')
                    ->join('rkat', 'pengajuan.kode_rkat', 'rkat.id_rkat')
                    ->join('struktur', 'user.id_struktur', 'struktur.id_struktur')
                    ->join('struktur_child1', 'user.id_struktur_child1', 'struktur_child1.id_struktur_child1')
                    ->join('struktur_child2', 'user.id_struktur_child2', 'struktur_child2.id_struktur_child2')
                    ->where('pengajuan.id_user', '!=', $userStruktur->id_user)
                    ->where('pengajuan.next', '!=', 3333)
                    ->where('pengajuan.status_pengajuan', 'progress')
                    ->select(
                        'user.id_user',
                        'rkat.kode_rkat',
                        'rkat.period',
                        'pengajuan.id_pengajuan',
                        'pengajuan.id_period',
                        'pengajuan.biaya_program',
                        'pengajuan.biaya_disetujui',
                        'pengajuan.validasi_status',
                        'pengajuan.nama_status',
                        'user.fullname',
                        'struktur.nama_struktur',
                        'struktur_child1.nama_struktur_child1',
                        'struktur_child2.nama_struktur_child2',
                        'pengajuan.created_at'
                    )
                    ->with(['periodePencairan'])
                    ->orderBy('pengajuan.id_pengajuan', 'DESC')
                    ->get();
            } else {
                $data = PengajuanModel::join('user', 'pengajuan.id_user', 'user.id_user')
                    ->join('rkat', 'pengajuan.kode_rkat', 'rkat.id_rkat')
                    ->join('struktur', 'user.id_struktur', 'struktur.id_struktur')
                    ->join('struktur_child1', 'user.id_struktur_child1', 'struktur_child1.id_struktur_child1')
                    ->join('struktur_child2', 'user.id_struktur_child2', 'struktur_child2.id_struktur_child2')
                    ->where('pengajuan.id_user', '!=', $userStruktur->id_user)
                    ->where('struktur.id_struktur', $userStruktur->id_struktur)
                    ->where('pengajuan.next', '!=', 3333)
                    ->where('pengajuan.status_pengajuan', 'progress')
                    ->select(
                        'user.id_user',
                        'rkat.kode_rkat',
                        'rkat.period',
                        'pengajuan.id_pengajuan',
                        'pengajuan.id_period',
                        'pengajuan.biaya_program',
                        'pengajuan.biaya_disetujui',
                        'pengajuan.validasi_status',
                        'pengajuan.nama_status',
                        'user.fullname',
                        'struktur.nama_struktur',
                        'struktur_child1.nama_struktur_child1',
                        'struktur_child2.nama_struktur_child2',
                        'pengajuan.created_at'
                    )
                    ->with(['periodePencairan'])
                    ->orderBy('pengajuan.id_pengajuan', 'DESC')
                    ->get();
            }
        } else if ($userStruktur->level == 5) {
            $data = PengajuanModel::join('user', 'pengajuan.id_user', 'user.id_user')
                ->join('rkat', 'pengajuan.kode_rkat', 'rkat.id_rkat')
                ->join('struktur', 'user.id_struktur', 'struktur.id_struktur')
                ->join('struktur_child1', 'user.id_struktur_child1', 'struktur_child1.id_struktur_child1')
                ->join('struktur_child2', 'user.id_struktur_child2', 'struktur_child2.id_struktur_child2')
                ->where('pengajuan.id_user', '!=', $userStruktur->id_user)
                ->where('struktur.id_struktur', $userStruktur->id_struktur)
                ->where('struktur_child1.id_struktur_child1', $userStruktur->id_struktur_child1)
                ->where('pengajuan.next', '!=', 3333)
                ->where('pengajuan.status_pengajuan', 'progress')
                ->select(
                    'user.id_user',
                    'rkat.kode_rkat',
                    'rkat.period',
                    'pengajuan.id_pengajuan',
                    'pengajuan.id_period',
                    'pengajuan.biaya_program',
                    'pengajuan.biaya_disetujui',
                    'pengajuan.validasi_status',
                    'pengajuan.nama_status',
                    'user.fullname',
                    'struktur.nama_struktur',
                    'struktur_child1.nama_struktur_child1',
                    'struktur_child2.nama_struktur_child2',
                    'pengajuan.created_at'
                )
                ->with(['periodePencairan'])
                ->orderBy('pengajuan.id_pengajuan', 'DESC')
                ->get();
        }

        return response()->json([
            "data" => $data
        ]);
    }

    public function getItemForListPencairan()
    {
        return PengajuanModel::select(
            'pengajuan.id_pengajuan',
            'pengajuan.tanggal',
            'pengajuan.biaya_program',
            'pengajuan.biaya_disetujui',
            'pengajuan.bank',
            'pengajuan.no_rek',
            'pengajuan.atn',
            'pengajuan.lpj_keuangan',
            'pengajuan.lpj_kegiatan',
            'pengajuan.created_at',
            'rkat.id_rkat',
            'rkat.kode_rkat',
            'rkat.period',
            'rkat.nama_program'
        )
            ->join('rkat', 'pengajuan.kode_rkat', 'rkat.id_rkat')
            ->where('pengajuan.next', 24)
            // ->where('id_user', '!=', $userStruktur->id_user)
            ->with(['pencairan'])
            ->orderBy('pengajuan.id_pengajuan', 'DESC')
            ->get();
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

        if ($userStruktur->level == 1 || $userStruktur->level == 2) {
            $data = PengajuanModel::join('user', 'pengajuan.id_user', 'user.id_user')
                ->join('rkat', 'pengajuan.kode_rkat', 'rkat.id_rkat')
                ->join('struktur', 'user.id_struktur', 'struktur.id_struktur')
                ->join('struktur_child1', 'user.id_struktur_child1', 'struktur_child1.id_struktur_child1')
                ->join('struktur_child2', 'user.id_struktur_child2', 'struktur_child2.id_struktur_child2')
                ->where('pengajuan.next', $params)
                ->where('pengajuan.id_user', '!=', $userStruktur->id_user)
                ->select(
                    'user.id_user',
                    'rkat.kode_rkat',
                    'rkat.period',
                    'pengajuan.next',
                    'pengajuan.id_pengajuan',
                    'pengajuan.id_period',
                    'pengajuan.biaya_program',
                    'pengajuan.biaya_disetujui',
                    'pengajuan.validasi_status',
                    'pengajuan.nama_status',
                    'user.fullname',
                    'struktur.nama_struktur',
                    'struktur_child1.nama_struktur_child1',
                    'struktur_child2.nama_struktur_child2',
                    'pengajuan.created_at'
                )
                ->with(['periodePencairan'])
                ->orderBy('pengajuan.id_pengajuan', 'DESC')
                ->get();
        } else if ($userStruktur->level == 3 || $userStruktur->level == 4) {
            if ($userStruktur->child1_level == "1" || $userStruktur->level == 3) {

                $data = PengajuanModel::join('user', 'pengajuan.id_user', 'user.id_user')
                    ->join('rkat', 'pengajuan.kode_rkat', 'rkat.id_rkat')
                    ->join('struktur', 'user.id_struktur', 'struktur.id_struktur')
                    ->join('struktur_child1', 'user.id_struktur_child1', 'struktur_child1.id_struktur_child1')
                    ->join('struktur_child2', 'user.id_struktur_child2', 'struktur_child2.id_struktur_child2')
                    ->where('pengajuan.next', 24)
                    ->select(
                        'user.id_user',
                        'rkat.kode_rkat',
                        'rkat.period',
                        'pengajuan.next',
                        'pengajuan.id_pengajuan',
                        'pengajuan.id_period',
                        'pengajuan.biaya_program',
                        'pengajuan.biaya_disetujui',
                        'pengajuan.validasi_status',
                        'pengajuan.nama_status',
                        'user.fullname',
                        'struktur.nama_struktur',
                        'struktur_child1.nama_struktur_child1',
                        'struktur_child2.nama_struktur_child2',
                        'pengajuan.created_at'
                    )
                    ->with(['periodePencairan'])
                    ->orderBy('pengajuan.id_pengajuan', 'DESC')
                    ->get();
            } else {
                $data = PengajuanModel::join('user', 'pengajuan.id_user', 'user.id_user')
                    ->join('rkat', 'pengajuan.kode_rkat', 'rkat.id_rkat')
                    ->join('struktur', 'user.id_struktur', 'struktur.id_struktur')
                    ->join('struktur_child1', 'user.id_struktur_child1', 'struktur_child1.id_struktur_child1')
                    ->join('struktur_child2', 'user.id_struktur_child2', 'struktur_child2.id_struktur_child2')
                    ->where('pengajuan.next', $params)
                    ->where('pengajuan.id_user', '!=', $userStruktur->id_user)
                    ->where('struktur.id_struktur', $userStruktur->id_struktur)
                    ->where('pengajuan.status_pengajuan', 'progress')
                    ->select(
                        'user.id_user',
                        'rkat.kode_rkat',
                        'rkat.period',
                        'pengajuan.next',
                        'pengajuan.id_pengajuan',
                        'pengajuan.id_period',
                        'pengajuan.biaya_program',
                        'pengajuan.biaya_disetujui',
                        'pengajuan.validasi_status',
                        'pengajuan.nama_status',
                        'user.fullname',
                        'struktur.nama_struktur',
                        'struktur_child1.nama_struktur_child1',
                        'struktur_child2.nama_struktur_child2',
                        'pengajuan.created_at'
                    )
                    ->with(['periodePencairan'])
                    ->orderBy('pengajuan.id_pengajuan', 'DESC')
                    ->get();
            }
        } else if ($userStruktur->level == 5) {
            $data = PengajuanModel::join('user', 'pengajuan.id_user', 'user.id_user')
                ->join('rkat', 'pengajuan.kode_rkat', 'rkat.id_rkat')
                ->join('struktur', 'user.id_struktur', 'struktur.id_struktur')
                ->join('struktur_child1', 'user.id_struktur_child1', 'struktur_child1.id_struktur_child1')
                ->join('struktur_child2', 'user.id_struktur_child2', 'struktur_child2.id_struktur_child2')
                ->where('pengajuan.next', $params)
                ->where('pengajuan.id_user', '!=', $userStruktur->id_user)
                ->where('struktur.id_struktur', $userStruktur->id_struktur)
                ->where('struktur_child1.id_struktur_child1', $userStruktur->id_struktur_child1)
                ->where('pengajuan.status_pengajuan', 'progress')
                ->select(
                    'user.id_user',
                    'rkat.kode_rkat',
                    'rkat.period',
                    'pengajuan.next',
                    'pengajuan.id_pengajuan',
                    'pengajuan.id_period',
                    'pengajuan.biaya_program',
                    'pengajuan.biaya_disetujui',
                    'pengajuan.validasi_status',
                    'pengajuan.nama_status',
                    'user.fullname',
                    'struktur.nama_struktur',
                    'struktur_child1.nama_struktur_child1',
                    'struktur_child2.nama_struktur_child2',
                    'pengajuan.created_at'
                )
                ->with(['periodePencairan'])
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
        return response()->json([
            'data' => [
                'total_rkat' => RKATModel::where('period', 'LIKE', '%' . date('Y') . '%')
                    ->where('id_user', $params)
                    ->count(),
                'total_rkat_diterima' => PengajuanModel::join('rkat', 'pengajuan.kode_rkat', 'rkat.id_rkat')
                    ->where('pengajuan.id_user', $params)
                    ->where('rkat.period', 'LIKE', '%' . date('Y') . '%')
                    ->where('pengajuan.pencairan', '!=', null)
                    ->sum('pengajuan.biaya_program'),
                'total_anggaran_rkat' => RKATModel::where('id_user', $params)
                    ->where('period', 'LIKE', '%' . date('Y') . '%')
                    ->sum('total_anggaran'),
                'pengajuan_diterima' => PengajuanModel::join('rkat', 'pengajuan.kode_rkat', 'rkat.id_rkat')
                    ->where('pengajuan.id_user', $params)
                    ->where('rkat.period', 'LIKE', '%' . date('Y') . '%')
                    ->where('pengajuan.next', 3333)
                    ->count(),
                'pengajuan_progress' => PengajuanModel::join('rkat', 'pengajuan.kode_rkat', 'rkat.id_rkat')
                    ->where('pengajuan.id_user', $params)
                    ->where('rkat.period', 'LIKE', '%' . date('Y') . '%')
                    ->where('pengajuan.next', '!=', 3333)
                    ->count(),
                'rkat' => DB::select('SELECT rkat.id_rkat, rkat.kode_rkat, rkat.period, rkat.rencara_anggaran, (SELECT SUM(biaya_program) FROM pengajuan WHERE kode_rkat = rkat.id_rkat AND next = 3333) as biaya_program, rkat.created_at FROM rkat WHERE rkat.id_user = ' . $params . ' AND rkat.period LIKE "%' . date('Y') . '%" ORDER BY rkat.created_at DESC'),
                'pengajuan' => PengajuanModel::select(
                    'user.fullname',
                    'rkat.kode_rkat',
                    'rkat.period',
                    'pengajuan.id_pengajuan',
                    'pengajuan.id_period',
                    'pengajuan.biaya_program',
                    'pengajuan.biaya_disetujui',
                    'pengajuan.validasi_status',
                    'pengajuan.nama_status',
                    'pengajuan.created_at'
                )
                    ->join('user', 'pengajuan.id_user', 'user.id_user')
                    ->join('rkat', 'pengajuan.kode_rkat', 'rkat.id_rkat')
                    ->where('user.id_user', $params)
                    ->where('rkat.period', 'LIKE', '%' . date('Y') . '%')
                    ->with(['periodePencairan'])
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

    public function printPengajuan($params)
    {
        $data = PrintModel::where('id_user', base64_decode($params))->select('id_pengajuan')->get();
        $pengajuan = PengajuanModel::join('rkat', 'pengajuan.kode_rkat', 'rkat.id_rkat')
            ->join('user', 'pengajuan.id_user', 'user.id_user')
            ->select('user.fullname', 'user.kop', 'user.ttd', 'rkat.nama_program', 'rkat.kode_rkat', 'rkat.tujuan', 'pengajuan.id_pengajuan', 'pengajuan.latar_belakang', 'pengajuan.sasaran', 'pengajuan.target_capaian', 'pengajuan.bentuk_pelaksanaan_program', 'pengajuan.tempat_program', 'pengajuan.tanggal', 'pengajuan.bidang_terkait')
            ->orderBy('user.fullname')
            ->with('validasi', 'rab')
            ->whereIn('pengajuan.id_pengajuan', $data)
            ->get();

        $data = [
            'pengajuan' => $pengajuan,
        ];

        return view('pengajuan', $data);
    }

    public function pdfByUSer(Request $request, $params)
    {
        PrintModel::where('id_user', $params)->delete();
        $new = [];
        foreach ($request->all() as $value) {
            $new[] = [
                'id_user' => $params,
                'id_pengajuan' => $value
            ];
        }
        PrintModel::insert($new);
        return response()->json([
            'data' => $new
        ]);
    }

    public function printFromDB($id_user)
    {
        $data = PrintModel::where('id_user', $id_user)->select('id_pengajuan')->get();
        $pengajuan = PengajuanModel::join('rkat', 'pengajuan.kode_rkat', 'rkat.id_rkat')
            ->join('user', 'pengajuan.id_user', 'user.id_user')
            ->select('user.fullname', 'user.kop', 'rkat.nama_program', 'rkat.kode_rkat', 'rkat.tujuan', 'pengajuan.id_pengajuan', 'pengajuan.latar_belakang', 'pengajuan.sasaran', 'pengajuan.target_capaian', 'pengajuan.bentuk_pelaksanaan_program', 'pengajuan.tempat_program', 'pengajuan.tanggal')
            ->orderBy('user.fullname')
            ->whereIn('pengajuan.id_pengajuan', $data)
            ->get();

        $data = [
            'pengajuan' => $pengajuan,
        ];

        $pdf = PDF::loadView('pengajuan', $data)->setPaper('a4');
        return $pdf->download('pengajuan-' . date("Y-m-d") . '.pdf');
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

    public function transfer()
    {
        return PengajuanModel::select(
            'pengajuan.id_pengajuan',
            'pengajuan.tanggal',
            'pengajuan.biaya_program',
            'pengajuan.biaya_disetujui',
            'pengajuan.bank',
            'pengajuan.no_rek',
            'pengajuan.atn',
            'pengajuan.lpj_keuangan',
            'pengajuan.lpj_kegiatan',
            'pengajuan.created_at',
            'rkat.id_rkat',
            'rkat.kode_rkat',
            'rkat.period',
            'rkat.nama_program'
        )
            ->join('rkat', 'pengajuan.kode_rkat', 'rkat.id_rkat')
            ->join('pengajuan_validasi', 'pengajuan.id_pengajuan', 'pengajuan_validasi.id_pengajuan')
            ->where('pengajuan.pencairan', null)
            ->where('pengajuan_validasi.status_validasi', 2)
            ->where('pengajuan_validasi.id_struktur', 22)
            ->orWhere('pengajuan.pencairan', '')
            ->where('pengajuan_validasi.status_validasi', 2)
            ->where('pengajuan_validasi.id_struktur', 22)
            ->distinct()
            ->with(['pencairan'])
            ->orderBy('pengajuan.id_pengajuan', 'DESC')
            ->get();
    }

    public function sudahTransfer()
    {
        return PengajuanModel::select(
            'pengajuan.id_pengajuan',
            'pengajuan.tanggal',
            'pengajuan.biaya_program',
            'pengajuan.biaya_disetujui',
            'pengajuan.bank',
            'pengajuan.no_rek',
            'pengajuan.atn',
            'pengajuan.lpj_keuangan',
            'pengajuan.lpj_kegiatan',
            'pengajuan.created_at',
            'rkat.id_rkat',
            'rkat.kode_rkat',
            'rkat.period',
            'rkat.nama_program'
        )
            ->join('rkat', 'pengajuan.kode_rkat', 'rkat.id_rkat')
            ->join('pengajuan_validasi', 'pengajuan.id_pengajuan', 'pengajuan_validasi.id_pengajuan')
            ->where('pengajuan_validasi.status_validasi', 3)
            ->where('pengajuan_validasi.id_struktur', 24)
            ->distinct()
            ->with(['pencairan'])
            ->orderBy('pengajuan.id_pengajuan', 'DESC')
            ->get();
    }

    public function lpjKeuangan()
    {
        return response()->json([
            'data' => PengajuanModel::select(
                'pengajuan.id_pengajuan',
                'pengajuan.tanggal',
                'pengajuan.biaya_program',
                'pengajuan.biaya_disetujui',
                'pengajuan.bank',
                'pengajuan.no_rek',
                'pengajuan.atn',
                'pengajuan.lpj_keuangan',
                'pengajuan.lpj_kegiatan',
                'pengajuan.created_at',
                'rkat.id_rkat',
                'rkat.kode_rkat',
                'rkat.period',
                'rkat.nama_program'
            )
                ->join('rkat', 'pengajuan.kode_rkat', 'rkat.id_rkat')
                ->where('pengajuan.pencairan', '!=', null)
                ->where('pengajuan.lpj_keuangan', '!=', null)
                ->with(['pencairan'])
                ->whereDoesntHave('validasi', function ($query) {
                    $query->where('status_validasi', 4)
                        ->where('id_struktur', 24);
                })
                ->distinct()
                ->get()
        ]);
    }

    public function belumLPJKeuangan()
    {
        return response()->json([
            'data' => PengajuanModel::select(
                'pengajuan.id_pengajuan',
                'pengajuan.tanggal',
                'pengajuan.biaya_program',
                'pengajuan.biaya_disetujui',
                'pengajuan.bank',
                'pengajuan.no_rek',
                'pengajuan.atn',
                'pengajuan.lpj_keuangan',
                'pengajuan.lpj_kegiatan',
                'pengajuan.created_at',
                'rkat.id_rkat',
                'rkat.kode_rkat',
                'rkat.period',
                'rkat.nama_program'
            )
                ->join('rkat', 'pengajuan.kode_rkat', 'rkat.id_rkat')
                ->where('pengajuan.pencairan', '!=', null)
                ->where('pengajuan.lpj_keuangan', null)
                ->with(['pencairan', 'rkat' => function ($query) {
                    $query->select('id_rkat', 'kode_rkat', 'nama_program');
                }])
                ->whereDoesntHave('validasi', function ($query) {
                    $query->where('status_validasi', 4)
                        ->where('id_struktur', 24);
                })
                ->distinct()
                ->get()
        ]);
    }

    public function sudahLPJKeuangan()
    {
        $data = PengajuanModel::select(
            'pengajuan.id_pengajuan',
            'pengajuan.tanggal',
            'pengajuan.biaya_program',
            'pengajuan.biaya_disetujui',
            'pengajuan.bank',
            'pengajuan.no_rek',
            'pengajuan.atn',
            'pengajuan.lpj_keuangan',
            'pengajuan.lpj_kegiatan',
            'pengajuan.created_at',
            'rkat.id_rkat',
            'rkat.kode_rkat',
            'rkat.period',
            'rkat.nama_program'
        )
            ->join('rkat', 'pengajuan.kode_rkat', 'rkat.id_rkat')
            ->where('pengajuan.pencairan', '!=', null)
            ->where('pengajuan.lpj_keuangan', '!=', null)
            ->with(['pencairan', 'validasi' => function ($query) {
                $query->where('status_validasi', 4)
                    ->where('id_struktur', 24);
            }])
            ->distinct()
            ->get();
        return response()->json([
            'data' => $data->count() ? $data : []
        ]);
    }

    public function lpjKegiatan()
    {
        return response()->json([
            'data' => PengajuanModel::select(
                'pengajuan.id_pengajuan',
                'pengajuan.tanggal',
                'pengajuan.biaya_program',
                'pengajuan.biaya_disetujui',
                'pengajuan.bank',
                'pengajuan.no_rek',
                'pengajuan.atn',
                'pengajuan.lpj_keuangan',
                'pengajuan.lpj_kegiatan',
                'pengajuan.created_at',
                'rkat.id_rkat',
                'rkat.kode_rkat',
                'rkat.period',
                'rkat.nama_program'
            )
                ->join('rkat', 'pengajuan.kode_rkat', 'rkat.id_rkat')
                ->where('pengajuan.pencairan', '!=', null)
                ->where('pengajuan.lpj_keuangan', '!=', null)
                ->where('pengajuan.lpj_kegiatan', '!=', null)
                ->whereHas('validasi', function ($query) {
                    $query->where('status_validasi', 4)
                        ->where('id_struktur', 24);
                })
                ->whereDoesntHave('validasi', function ($query) {
                    $query->where('status_validasi', 4)
                        ->where('id_struktur', 21);
                })
                ->with(['pencairan'])
                ->distinct()
                ->get()
        ]);
    }

    public function belumLPJKegiatan()
    {
        return response()->json([
            'data' => PengajuanModel::select(
                'pengajuan.id_pengajuan',
                'pengajuan.tanggal',
                'pengajuan.biaya_program',
                'pengajuan.biaya_disetujui',
                'pengajuan.bank',
                'pengajuan.no_rek',
                'pengajuan.atn',
                'pengajuan.lpj_keuangan',
                'pengajuan.lpj_kegiatan',
                'pengajuan.created_at',
                'rkat.id_rkat',
                'rkat.kode_rkat',
                'rkat.period',
                'rkat.nama_program'
            )
                ->join('rkat', 'pengajuan.kode_rkat', 'rkat.id_rkat')
                ->where('pengajuan.pencairan', '!=', null)
                ->where('pengajuan.lpj_keuangan', '!=', null)
                ->where('pengajuan.lpj_kegiatan', null)
                ->whereHas('validasi', function ($query) {
                    $query->where('status_validasi', 4)
                        ->where('id_struktur', 24);
                })
                ->whereDoesntHave('validasi', function ($query) {
                    $query->where('status_validasi', 4)
                        ->where('id_struktur', 21);
                })
                ->with(['pencairan'])
                ->distinct()
                ->get()
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
                // ->where('pengajuan.id_user', '!=', $userStruktur->id_user)
                ->where('pengajuan.next', 3333)
                ->select('user.id_user', 'rkat.kode_rkat',  'rkat.period', 'pengajuan.next', 'pengajuan.id_pengajuan', 'pengajuan.validasi_status', 'pengajuan.nama_status', 'user.fullname', 'struktur.nama_struktur', 'struktur_child1.nama_struktur_child1', 'struktur_child2.nama_struktur_child2', 'pengajuan.created_at')
                ->orderBy('pengajuan.id_pengajuan', 'DESC')
                ->get();
        } else if ($userStruktur->level == 2) {
            $data = UserModel::join('pengajuan', 'user.id_user', 'pengajuan.id_user')
                ->join('rkat', 'pengajuan.kode_rkat', 'rkat.id_rkat')
                ->join('struktur', 'user.id_struktur', 'struktur.id_struktur')
                ->join('struktur_child1', 'user.id_struktur_child1', 'struktur_child1.id_struktur_child1')
                ->join('struktur_child2', 'user.id_struktur_child2', 'struktur_child2.id_struktur_child2')
                // ->where('pengajuan.id_user', '!=', $userStruktur->id_user)
                ->where('pengajuan.next', 3333)
                ->select('user.id_user', 'rkat.kode_rkat',  'rkat.period', 'pengajuan.next', 'pengajuan.id_pengajuan', 'pengajuan.validasi_status', 'pengajuan.nama_status', 'user.fullname', 'struktur.nama_struktur', 'struktur_child1.nama_struktur_child1', 'struktur_child2.nama_struktur_child2', 'pengajuan.created_at')
                ->orderBy('pengajuan.id_pengajuan', 'DESC')
                ->get();
        } else if ($userStruktur->level == 3 || $userStruktur->level == 4) {
            if ($userStruktur->child1_level == "1" || $userStruktur->level == 3) {
                $data = UserModel::join('pengajuan', 'user.id_user', 'pengajuan.id_user')
                    ->join('rkat', 'pengajuan.kode_rkat', 'rkat.id_rkat')
                    ->join('struktur', 'user.id_struktur', 'struktur.id_struktur')
                    ->join('struktur_child1', 'user.id_struktur_child1', 'struktur_child1.id_struktur_child1')
                    ->join('struktur_child2', 'user.id_struktur_child2', 'struktur_child2.id_struktur_child2')
                    // ->where('pengajuan.id_user', '!=', $userStruktur->id_user)
                    ->where('pengajuan.next', 3333)
                    ->select('user.id_user', 'rkat.kode_rkat',  'rkat.period', 'pengajuan.next', 'pengajuan.id_pengajuan', 'pengajuan.validasi_status', 'pengajuan.nama_status', 'user.fullname', 'struktur.nama_struktur', 'struktur_child1.nama_struktur_child1', 'struktur_child2.nama_struktur_child2', 'pengajuan.created_at')
                    ->orderBy('pengajuan.id_pengajuan', 'DESC')
                    ->get();
            } else {
                $data = UserModel::join('pengajuan', 'user.id_user', 'pengajuan.id_user')
                    ->join('rkat', 'pengajuan.kode_rkat', 'rkat.id_rkat')
                    ->join('struktur', 'user.id_struktur', 'struktur.id_struktur')
                    ->join('struktur_child1', 'user.id_struktur_child1', 'struktur_child1.id_struktur_child1')
                    ->join('struktur_child2', 'user.id_struktur_child2', 'struktur_child2.id_struktur_child2')
                    // ->where('pengajuan.id_user', '!=', $userStruktur->id_user)
                    ->where('struktur.id_struktur', $userStruktur->id_struktur)
                    ->where('pengajuan.next', 3333)
                    ->select('user.id_user', 'rkat.kode_rkat',  'rkat.period', 'pengajuan.next', 'pengajuan.id_pengajuan', 'pengajuan.validasi_status', 'pengajuan.nama_status', 'user.fullname', 'struktur.nama_struktur', 'struktur_child1.nama_struktur_child1', 'struktur_child2.nama_struktur_child2', 'pengajuan.created_at')
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
                // ->where('pengajuan.id_user', '!=', $userStruktur->id_user)
                ->where('struktur.id_struktur', $userStruktur->id_struktur)
                ->where('struktur_child1.id_struktur_child1', $userStruktur->id_struktur_child1)
                ->select('user.id_user', 'rkat.kode_rkat',  'rkat.period', 'pengajuan.next', 'pengajuan.id_pengajuan', 'pengajuan.validasi_status', 'pengajuan.nama_status', 'user.fullname', 'struktur.nama_struktur', 'struktur_child1.nama_struktur_child1', 'struktur_child2.nama_struktur_child2', 'pengajuan.created_at')
                ->orderBy('pengajuan.id_pengajuan', 'DESC')
                ->get();
        }

        return response()->json([
            "data" => $data
        ]);
    }

    public function summaryByUnit($params)
    {
        $userStruktur = UserModel::join('struktur', 'user.id_struktur', 'struktur.id_struktur')
            ->join('struktur_child1', 'user.id_struktur_child1', 'struktur_child1.id_struktur_child1')
            ->join('struktur_child2', 'user.id_struktur_child2', 'struktur_child2.id_struktur_child2')
            ->where(DB::raw('BINARY `id_user`'), $params)
            ->first();

        if (!$userStruktur) {
            return response()->json([
                "status" => "error",
                "message" => "Data tidak ditemukan"
            ]);
        }

        if ($userStruktur->level == 1) {
            $data = $this->getRkatByUnit($userStruktur->id_struktur);
        } else if ($userStruktur->level == 2) {
            $data = $this->getRkatByUnit($userStruktur->id_struktur);
        } else if ($userStruktur->level == 3) {
            $data = $this->getRkatByUnit($userStruktur->id_struktur);
        } else if ($userStruktur->level == 4) {
            $data = $this->getRkatByUnit($userStruktur->id_struktur);
        } else {
            $data = $this->getRkatByUnit($userStruktur->id_struktur, $userStruktur->id_struktur_child1);
        }

        return response()->json([
            "data" => $data
        ]);
    }

    public function getRkatByUnit($params, $fakultas = false)
    {
        $user = UserModel::where('id_struktur', $params)
            ->select('id_user')
            ->get();

        if ($fakultas) {
            $user = UserModel::where('id_struktur', $params)
                ->where('id_struktur_child1', $fakultas)
                ->select('id_user')
                ->get();
        }

        $data = [];

        foreach ($user as $item) {
            $rkat = RKATModel::leftJoin('pengajuan', 'rkat.id_rkat', 'pengajuan.kode_rkat')
                ->where('rkat.period', 'like', '%' . date('Y') . '%')
                ->where('rkat.id_user', $item->id_user)
                ->select(
                    'rkat.id_user',
                    'rkat.kode_rkat',
                    'rkat.mulai_program',
                    'rkat.selesai_program',
                    'rkat.nama_program',
                    'pengajuan.id_pengajuan',
                    'pengajuan.biaya_program',
                    'pengajuan.biaya_disetujui',
                    'pengajuan.pencairan',
                    'pengajuan.lpj_keuangan',
                    'pengajuan.lpj_kegiatan',
                )
                ->get();

            foreach ($rkat as $item) {
                $data[] = [
                    'fullname' => UserModel::select('fullname')->where('id_user', $item->id_user)->first()->fullname,
                    'kode_rkat' => $item->kode_rkat,
                    'mulai_program' => $item->mulai_program,
                    'selesai_program' => $item->selesai_program,
                    'nama_program' => $item->nama_program,
                    'biaya_program' => $item->biaya_program,
                    'biaya_disetujui' => $item->biaya_disetujui,
                    'pencairan' => $item->pencairan,
                    'list_pencairan' => PengajuanPencairanModel::where('pengajuan_id', $item->id_pengajuan)->get(),
                    'lpj_keuangan' => $item->lpj_keuangan,
                    'lpj_kegiatan' => $item->lpj_kegiatan,
                ];
            }
        }

        return $data;
    }

    public function summary($params)
    {
        $user = UserModel::select('id_user')->where('id_user', $params)->first();

        if (!$user) {
            return response()->json([
                "status" => "error",
                "message" => "Data tidak ditemukan"
            ], 404);
        }

        $rkat = RKATModel::leftJoin('pengajuan', 'rkat.id_rkat', 'pengajuan.kode_rkat')
            ->where('rkat.period', 'like', '%' . date('Y') . '%')
            ->where('rkat.id_user', $params)
            ->select(
                'rkat.id_user',
                'rkat.kode_rkat',
                'rkat.mulai_program',
                'rkat.selesai_program',
                'rkat.nama_program',
                'pengajuan.id_pengajuan',
                'pengajuan.biaya_program',
                'pengajuan.biaya_disetujui',
                'pengajuan.pencairan',
                'pengajuan.lpj_keuangan',
                'pengajuan.lpj_kegiatan',
            )
            ->get();

        return $rkat->map(function ($item) {
            return [
                'fullname' => UserModel::select('fullname')->where('id_user', $item->id_user)->first()->fullname,
                'kode_rkat' => $item->kode_rkat,
                'mulai_program' => $item->mulai_program,
                'selesai_program' => $item->selesai_program,
                'nama_program' => $item->nama_program,
                'biaya_program' => $item->biaya_program,
                'biaya_disetujui' => $item->biaya_disetujui,
                'pencairan' => $item->pencairan,
                'list_pencairan' => PengajuanPencairanModel::where('pengajuan_id', $item->id_pengajuan)->get(),
                'lpj_keuangan' => $item->lpj_keuangan,
                'lpj_kegiatan' => $item->lpj_kegiatan,
            ];
        });
    }
}
