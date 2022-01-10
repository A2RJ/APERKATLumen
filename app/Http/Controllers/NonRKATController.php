<?php

namespace App\Http\Controllers;

use App\Models\NonPengajuanPencairanModel;
use App\Models\NonRKATModel;
use App\Models\NonValidasiModel;
use App\Models\UserModel;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;

use function PHPSTORM_META\map;

class NonRKATController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index($params)
    {
        return Response()->json([
            'data' => NonRKATModel::join('user', 'nonrkat.id_user', 'user.id_user')
                ->join('struktur', 'user.id_struktur', 'struktur.id_struktur')
                ->join('struktur_child1', 'user.id_struktur_child1', 'struktur_child1.id_struktur_child1')
                ->join('struktur_child2', 'user.id_struktur_child2', 'struktur_child2.id_struktur_child2')
                ->where('nonrkat.id_user', $params)
                ->select('user.id_user', 'nonrkat.id_nonrkat', 'nonrkat.validasi_status', 'nonrkat.nama_status', 'user.fullname', 'struktur.nama_struktur', 'struktur_child1.nama_struktur_child1', 'struktur_child2.nama_struktur_child2', 'nonrkat.created_at')
                ->orderBy('nonrkat.id_nonrkat', 'DESC')
                ->get()
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
        $data = NonRKATModel::find($params);
        $status = $this->status($data->id_nonrkat);
        $history = $this->history($data->id_nonrkat);
        $pencairan = NonPengajuanPencairanModel::where('nonrkat_id', $params)
            ->select('nominal', 'images')
            ->get();

        return response()->json([
            'data' => $data,
            'status' => $status->original['data'],
            'history' => $history->original['data'],
            'pencairan' => $pencairan
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
            "id_user" => "required",
            "nama_kegiatan" => "required",
            "tujuan" => "required",
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
            "rab" => "required",
            "status_pengajuan" => "required"
        ]);

        $request['next'] = $this->getNext($request->id_user)['next'];
        $data = NonRKATModel::create($request->all());

        $this->nonRkatValidasi([
            'nonrkat_id' => $data->id_nonrkat,
            'id_struktur' => $request->id_user,
            'validasi_status' => $request->validasi_status,
            'message' => $request->nama_status . ' ' . $request->message
        ]);

        // $this->sendMail($data->id_nonrkat, $request->validasi_status, $request->nama_status);
        return response()->json([
            'data' => $data
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
        $data = NonRKATModel::find($params)->update($request->all());
        $this->nonRkatValidasi([
            'nonrkat_id' => $params,
            'id_struktur' => $request->id_struktur,
            'validasi_status' => $request->validasi_status,
            'message' => $request->nama_status . ' ' . $request->message
        ]);
        return response()->json([
            'data' => $data
        ]);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $params by user
     * @return \Illuminate\Http\Response
     */
    public function destroy()
    {
        $data = NonRKATModel::get();
        $data ? $data->each->delete() : false;
        return response()->json([
            'data' => $data
        ]);
    }

    public function deleteByUser($params)
    {
        $data = NonRKATModel::where('id_user', $params);
        $data ? $data->delete() : false;

        return response()->json([
            $data
        ]);
    }

    public function delete(Request $request)
    {
        if (count($request->all()) == 1) {
            $data = NonRKATModel::where('id_nonrkat', $request->all());
            $data ? $data->delete() : false;
        } else {
            $data = NonRKATModel::whereIn('id_nonrkat', $request->all());
            $data ? $data->delete() : false;
        }
        return response()->json([
            'data' => $data
        ]);
    }

    public function getLastValidate($params)
    {
        return response()->json([
            'data' => NonRKATModel::join('nonrkat_validasi', 'nonrkat.id_nonrkat', 'nonrkat_validasi.nonrkat_id')
                ->where('nonrkat.id_nonrkat', $params)
                ->select('nonrkat_validasi.status_validasi')
                ->latest('nonrkat_validasi.created_at')
                ->take(1)
                ->first()->status_validasi == 0 ? true : false
        ]);
    }

    /**
     * Subdivisi
     */
    public function subDivisi($params)
    {
        $userStruktur = UserModel::join('struktur', 'user.id_struktur', 'struktur.id_struktur')
            ->join('struktur_child1', 'user.id_struktur_child1', 'struktur_child1.id_struktur_child1')
            ->join('struktur_child2', 'user.id_struktur_child2', 'struktur_child2.id_struktur_child2')
            ->where('id_user', $params)
            ->first();

        if ($userStruktur->level == 1) {
            $data = NonRKATModel::join('user', 'nonrkat.id_user', 'user.id_user')
                ->join('struktur', 'user.id_struktur', 'struktur.id_struktur')
                ->join('struktur_child1', 'user.id_struktur_child1', 'struktur_child1.id_struktur_child1')
                ->join('struktur_child2', 'user.id_struktur_child2', 'struktur_child2.id_struktur_child2')
                ->where('user.id_user', '!=', $userStruktur->id_user)
                ->select('user.id_user', 'nonrkat.id_nonrkat', 'nonrkat.validasi_status', 'nonrkat.nama_status', 'user.fullname', 'struktur.nama_struktur', 'struktur_child1.nama_struktur_child1', 'struktur_child2.nama_struktur_child2', 'nonrkat.created_at')
                ->orderBy('nonrkat.id_nonrkat', 'DESC')
                ->get();
        } else if ($userStruktur->level == 2) {
            $data = NonRKATModel::join('user', 'nonrkat.id_user', 'user.id_user')
                ->join('struktur', 'user.id_struktur', 'struktur.id_struktur')
                ->join('struktur_child1', 'user.id_struktur_child1', 'struktur_child1.id_struktur_child1')
                ->join('struktur_child2', 'user.id_struktur_child2', 'struktur_child2.id_struktur_child2')
                ->where('user.id_user', '!=', $userStruktur->id_user)
                ->select('user.id_user', 'nonrkat.id_nonrkat', 'nonrkat.validasi_status', 'nonrkat.nama_status', 'user.fullname', 'struktur.nama_struktur', 'struktur_child1.nama_struktur_child1', 'struktur_child2.nama_struktur_child2', 'nonrkat.created_at')
                ->orderBy('nonrkat.id_nonrkat', 'DESC')
                ->get();
        } else if ($userStruktur->level == 3 || $userStruktur->level == 4) {
            if ($userStruktur->child1_level == "1" || $userStruktur->level == 3) {
                $data = NonRKATModel::join('user', 'nonrkat.id_user', 'user.id_user')
                    ->join('struktur', 'user.id_struktur', 'struktur.id_struktur')
                    ->join('struktur_child1', 'user.id_struktur_child1', 'struktur_child1.id_struktur_child1')
                    ->join('struktur_child2', 'user.id_struktur_child2', 'struktur_child2.id_struktur_child2')
                    ->where('user.id_user', '!=', $userStruktur->id_user)
                    ->select('user.id_user', 'nonrkat.id_nonrkat', 'nonrkat.validasi_status', 'nonrkat.nama_status', 'user.fullname', 'struktur.nama_struktur', 'struktur_child1.nama_struktur_child1', 'struktur_child2.nama_struktur_child2', 'nonrkat.created_at')
                    ->orderBy('nonrkat.id_nonrkat', 'DESC')
                    ->get();
            } else {
                $data = NonRKATModel::join('user', 'nonrkat.id_user', 'user.id_user')
                    ->join('struktur', 'user.id_struktur', 'struktur.id_struktur')
                    ->join('struktur_child1', 'user.id_struktur_child1', 'struktur_child1.id_struktur_child1')
                    ->join('struktur_child2', 'user.id_struktur_child2', 'struktur_child2.id_struktur_child2')
                    ->where('user.id_user', '!=', $userStruktur->id_user)
                    ->where('struktur.id_struktur', $userStruktur->id_struktur)
                    ->select('user.id_user', 'nonrkat.id_nonrkat', 'nonrkat.validasi_status', 'nonrkat.nama_status', 'user.fullname', 'struktur.nama_struktur', 'struktur_child1.nama_struktur_child1', 'struktur_child2.nama_struktur_child2', 'nonrkat.created_at')
                    ->orderBy('nonrkat.id_nonrkat', 'DESC')
                    ->get();
            }
        } else if ($userStruktur->level == 5) {
            $data = NonRKATModel::join('user', 'nonrkat.id_user', 'user.id_user')
                ->join('struktur', 'user.id_struktur', 'struktur.id_struktur')
                ->join('struktur_child1', 'user.id_struktur_child1', 'struktur_child1.id_struktur_child1')
                ->join('struktur_child2', 'user.id_struktur_child2', 'struktur_child2.id_struktur_child2')
                ->where('user.id_user', '!=', $userStruktur->id_user)
                ->where('struktur.id_struktur', $userStruktur->id_struktur)
                ->where('struktur_child1.id_struktur_child1', $userStruktur->id_struktur_child1)
                ->select('user.id_user', 'nonrkat.id_nonrkat', 'nonrkat.validasi_status', 'nonrkat.nama_status', 'user.fullname', 'struktur.nama_struktur', 'struktur_child1.nama_struktur_child1', 'struktur_child2.nama_struktur_child2', 'nonrkat.created_at')
                ->orderBy('nonrkat.id_nonrkat', 'DESC')
                ->get();
        }

        return response()->json([
            "data" => $data
        ]);
    }

    public function subDivisiNeed($params)
    {
        $userStruktur = UserModel::join('struktur', 'user.id_struktur', 'struktur.id_struktur')
            ->join('struktur_child1', 'user.id_struktur_child1', 'struktur_child1.id_struktur_child1')
            ->join('struktur_child2', 'user.id_struktur_child2', 'struktur_child2.id_struktur_child2')
            ->where('id_user', $params)
            ->first();

        if ($userStruktur->level == 1) {
            $data = NonRKATModel::join('user', 'nonrkat.id_user', 'user.id_user')
                ->join('struktur', 'user.id_struktur', 'struktur.id_struktur')
                ->join('struktur_child1', 'user.id_struktur_child1', 'struktur_child1.id_struktur_child1')
                ->join('struktur_child2', 'user.id_struktur_child2', 'struktur_child2.id_struktur_child2')
                ->where('nonrkat.next', $userStruktur->id_user)
                ->where('user.id_user', '!=', $userStruktur->id_user)
                ->select('user.id_user', 'nonrkat.id_nonrkat', 'nonrkat.validasi_status', 'nonrkat.nama_status', 'user.fullname', 'struktur.nama_struktur', 'struktur_child1.nama_struktur_child1', 'struktur_child2.nama_struktur_child2', 'nonrkat.created_at')
                ->orderBy('nonrkat.id_nonrkat', 'DESC')
                ->get();
        } else if ($userStruktur->level == 2) {
            $data = NonRKATModel::join('user', 'nonrkat.id_user', 'user.id_user')
                ->join('struktur', 'user.id_struktur', 'struktur.id_struktur')
                ->join('struktur_child1', 'user.id_struktur_child1', 'struktur_child1.id_struktur_child1')
                ->join('struktur_child2', 'user.id_struktur_child2', 'struktur_child2.id_struktur_child2')
                ->where('nonrkat.next', $userStruktur->id_user)
                ->where('user.id_user', '!=', $userStruktur->id_user)
                ->select('user.id_user', 'nonrkat.id_nonrkat', 'nonrkat.validasi_status', 'nonrkat.nama_status', 'user.fullname', 'struktur.nama_struktur', 'struktur_child1.nama_struktur_child1', 'struktur_child2.nama_struktur_child2', 'nonrkat.created_at')
                ->orderBy('nonrkat.id_nonrkat', 'DESC')
                ->get();
        } else if ($userStruktur->level == 3 || $userStruktur->level == 4) {
            if ($userStruktur->child1_level == "1" || $userStruktur->level == 3) {
                $data = NonRKATModel::join('user', 'nonrkat.id_user', 'user.id_user')
                    ->join('struktur', 'user.id_struktur', 'struktur.id_struktur')
                    ->join('struktur_child1', 'user.id_struktur_child1', 'struktur_child1.id_struktur_child1')
                    ->join('struktur_child2', 'user.id_struktur_child2', 'struktur_child2.id_struktur_child2')
                    ->where('nonrkat.next', $userStruktur->id_user)
                    ->where('user.id_user', '!=', $userStruktur->id_user)
                    ->select('user.id_user', 'nonrkat.id_nonrkat', 'nonrkat.validasi_status', 'nonrkat.nama_status', 'user.fullname', 'struktur.nama_struktur', 'struktur_child1.nama_struktur_child1', 'struktur_child2.nama_struktur_child2', 'nonrkat.created_at')
                    ->orderBy('nonrkat.id_nonrkat', 'DESC')
                    ->get();
            } else {
                $data = NonRKATModel::join('user', 'nonrkat.id_user', 'user.id_user')
                    ->join('struktur', 'user.id_struktur', 'struktur.id_struktur')
                    ->join('struktur_child1', 'user.id_struktur_child1', 'struktur_child1.id_struktur_child1')
                    ->join('struktur_child2', 'user.id_struktur_child2', 'struktur_child2.id_struktur_child2')
                    ->where('nonrkat.next', $userStruktur->id_user)
                    ->where('user.id_user', '!=', $userStruktur->id_user)
                    ->where('struktur.id_struktur', $userStruktur->id_struktur)
                    ->select('user.id_user', 'nonrkat.id_nonrkat', 'nonrkat.validasi_status', 'nonrkat.nama_status', 'user.fullname', 'struktur.nama_struktur', 'struktur_child1.nama_struktur_child1', 'struktur_child2.nama_struktur_child2', 'nonrkat.created_at')
                    ->orderBy('nonrkat.id_nonrkat', 'DESC')
                    ->get();
            }
        } else if ($userStruktur->level == 5) {
            $data = NonRKATModel::join('user', 'nonrkat.id_user', 'user.id_user')
                ->join('struktur', 'user.id_struktur', 'struktur.id_struktur')
                ->join('struktur_child1', 'user.id_struktur_child1', 'struktur_child1.id_struktur_child1')
                ->join('struktur_child2', 'user.id_struktur_child2', 'struktur_child2.id_struktur_child2')
                ->where('nonrkat.next', $userStruktur->id_user)
                ->where('user.id_user', '!=', $userStruktur->id_user)
                ->where('struktur.id_struktur', $userStruktur->id_struktur)
                ->where('struktur_child1.id_struktur_child1', $userStruktur->id_struktur_child1)
                ->select('user.id_user', 'nonrkat.id_nonrkat', 'nonrkat.validasi_status', 'nonrkat.nama_status', 'user.fullname', 'struktur.nama_struktur', 'struktur_child1.nama_struktur_child1', 'struktur_child2.nama_struktur_child2', 'nonrkat.created_at')
                ->orderBy('nonrkat.id_nonrkat', 'DESC')
                ->get();
        }

        return response()->json([
            "data" => $data
        ]);
    }

    // Daftar pencairan non rkat dimana sudah diterima oleh rektor
    public function listPencairan()
    {
        return response()->json([
            "data" => NonRKATModel::join('nonrkat_validasi', 'nonrkat.id_nonrkat', 'nonrkat_validasi.nonrkat_id')
                ->join('user', 'nonrkat.id_user', 'user.id_user')
                ->join('struktur', 'user.id_struktur', 'struktur.id_struktur')
                ->join('struktur_child1', 'user.id_struktur_child1', 'struktur_child1.id_struktur_child1')
                ->join('struktur_child2', 'user.id_struktur_child2', 'struktur_child2.id_struktur_child2')
                ->where('nonrkat.pencairan', null)
                ->whereHas('validasi', function ($query) {
                    $query->where('status_validasi', 2)
                        ->where('id_struktur', 22);
                })
                ->orWhere('nonrkat.pencairan', '')
                ->whereHas('validasi', function ($query) {
                    $query->where('status_validasi', 2)
                        ->where('id_struktur', 22);
                })
                ->whereDoesntHave('validasi', function ($query) {
                    $query->where('message', 'Direktur Keuangan (Pencairan) Pencairan selesai')
                        ->where('status_validasi', 3);
                })
                ->select('user.id_user', 'nonrkat.id_nonrkat', 'nonrkat.validasi_status', 'nonrkat.nama_status', 'user.fullname', 'struktur.nama_struktur', 'struktur_child1.nama_struktur_child1', 'struktur_child2.nama_struktur_child2', 'nonrkat.created_at')
                ->distinct()
                // ->with(['validasi' => function ($query) {
                //     $query->select(
                //         "nonrkat_id",
                //         "id_struktur",
                //         "status_validasi",
                //         "message"
                //     );
                // }])
                ->orderBy('nonrkat.id_nonrkat', 'DESC')
                ->get()
        ]);
    }

    // List sudah pencairan tetapi belum upload LPJ Keuangan
    public function belumUploadLPJKeuangan()
    {
        return response()->json([
            "data" => NonRKATModel::join('nonrkat_validasi', 'nonrkat.id_nonrkat', 'nonrkat_validasi.nonrkat_id')
                ->join('user', 'nonrkat.id_user', 'user.id_user')
                ->join('struktur', 'user.id_struktur', 'struktur.id_struktur')
                ->join('struktur_child1', 'user.id_struktur_child1', 'struktur_child1.id_struktur_child1')
                ->join('struktur_child2', 'user.id_struktur_child2', 'struktur_child2.id_struktur_child2')
                ->where('nonrkat.lpj_keuangan', null)
                ->whereHas('validasi', function ($query) {
                    $query->where('message', 'Direktur Keuangan (Pencairan) Pencairan selesai')
                        ->where('status_validasi', 3);
                })
                ->whereDoesntHave('validasi', function ($query) {
                    $query->where('message', 'LIKE', '%Upload LPJ Kegiatan%')
                        ->where('status_validasi', 1);
                })
                ->orWhere('nonrkat.lpj_keuangan', '')
                ->whereHas('validasi', function ($query) {
                    $query->where('message', 'Direktur Keuangan (Pencairan) Pencairan selesai')
                        ->where('status_validasi', 3);
                })
                ->whereDoesntHave('validasi', function ($query) {
                    $query->where('message', 'LIKE', '%Upload LPJ Kegiatan%')
                        ->where('status_validasi', 1);
                })
                ->select('user.id_user', 'nonrkat.id_nonrkat', 'nonrkat.validasi_status', 'nonrkat.nama_status', 'user.fullname', 'struktur.nama_struktur', 'struktur_child1.nama_struktur_child1', 'struktur_child2.nama_struktur_child2', 'nonrkat.created_at')
                ->distinct()
                ->orderBy('nonrkat.id_nonrkat', 'DESC')
                ->get()
        ]);
    }

    // Daftar sudah upload LPJ Keuangan dan belum diterima oleh dir keuangan
    public function listLPJKeuangan()
    {
        return response()->json([
            "data" => NonRKATModel::join('nonrkat_validasi', 'nonrkat.id_nonrkat', 'nonrkat_validasi.nonrkat_id')
                ->join('user', 'nonrkat.id_user', 'user.id_user')
                ->join('struktur', 'user.id_struktur', 'struktur.id_struktur')
                ->join('struktur_child1', 'user.id_struktur_child1', 'struktur_child1.id_struktur_child1')
                ->join('struktur_child2', 'user.id_struktur_child2', 'struktur_child2.id_struktur_child2')
                ->where('nonrkat.lpj_keuangan', '!=', null)
                ->whereDoesntHave('validasi', function ($query) {
                    $query->where('status_validasi', 4)
                        ->where('id_struktur', 24);
                })
                ->orWhere('nonrkat.lpj_keuangan', '!=', '')
                ->whereDoesntHave('validasi', function ($query) {
                    $query->where('status_validasi', 4)
                        ->where('id_struktur', 24);
                })
                ->select('user.id_user', 'nonrkat.id_nonrkat', 'nonrkat.validasi_status', 'nonrkat.nama_status', 'user.fullname', 'struktur.nama_struktur', 'struktur_child1.nama_struktur_child1', 'struktur_child2.nama_struktur_child2', 'nonrkat.created_at')
                ->distinct()
                ->orderBy('nonrkat.id_nonrkat', 'DESC')
                ->get()
        ]);
    }

    // List pencairan yang belum upload LPJ Kegiatan
    public function belumUploadLPJKegiatan()
    {
        return response()->json([
            "data" => NonRKATModel::join('nonrkat_validasi', 'nonrkat.id_nonrkat', 'nonrkat_validasi.nonrkat_id')
                ->join('user', 'nonrkat.id_user', 'user.id_user')
                ->join('struktur', 'user.id_struktur', 'struktur.id_struktur')
                ->join('struktur_child1', 'user.id_struktur_child1', 'struktur_child1.id_struktur_child1')
                ->join('struktur_child2', 'user.id_struktur_child2', 'struktur_child2.id_struktur_child2')
                ->where('nonrkat.lpj_kegiatan', null)
                ->whereHas('validasi', function ($query) {
                    $query->where('message', 'Direktur Keuangan (Pencairan) Pencairan selesai')
                        ->where('status_validasi', 3)
                        ->orWhere('status_validasi', 4)
                        ->where('id_struktur', 24);
                })
                ->whereDoesntHave('validasi', function ($query) {
                    $query->where('status_validasi', 1)
                        ->where('message', 'LIKE', '%Upload LPJ Kegiatan%');
                })
                ->orWhere('nonrkat.lpj_kegiatan', '')
                ->whereHas('validasi', function ($query) {
                    $query->where('message', 'Direktur Keuangan (Pencairan) Pencairan selesai')
                        ->where('status_validasi', 3)
                        ->orWhere('status_validasi', 4)
                        ->where('id_struktur', 24);
                })
                ->whereDoesntHave('validasi', function ($query) {
                    $query->where('status_validasi', 1)
                        ->where('message', 'LIKE', '%Upload LPJ Kegiatan%');
                })
                ->select('user.id_user', 'nonrkat.id_nonrkat', 'nonrkat.validasi_status', 'nonrkat.nama_status', 'user.fullname', 'struktur.nama_struktur', 'struktur_child1.nama_struktur_child1', 'struktur_child2.nama_struktur_child2', 'nonrkat.created_at')
                ->distinct()
                ->orderBy('nonrkat.id_nonrkat', 'DESC')
                ->get()
        ]);
    }

    // Daftar sudah upload LPJ Kegiatan dan belum diterima oleh sekniv
    public function listLPJKegiatan()
    {
        return response()->json([
            "data" => NonRKATModel::join('nonrkat_validasi', 'nonrkat.id_nonrkat', 'nonrkat_validasi.nonrkat_id')
                ->join('user', 'nonrkat.id_user', 'user.id_user')
                ->join('struktur', 'user.id_struktur', 'struktur.id_struktur')
                ->join('struktur_child1', 'user.id_struktur_child1', 'struktur_child1.id_struktur_child1')
                ->join('struktur_child2', 'user.id_struktur_child2', 'struktur_child2.id_struktur_child2')
                ->where('nonrkat.lpj_kegiatan', '!=', null)
                ->whereDoesntHave('validasi', function ($query) {
                    $query->where('status_validasi', 4)
                        ->where('id_struktur', 21);
                })
                ->orWhere('nonrkat.lpj_kegiatan', '!=', '')
                ->whereDoesntHave('validasi', function ($query) {
                    $query->where('status_validasi', 4)
                        ->where('id_struktur', 21);
                })
                ->select('user.id_user', 'nonrkat.id_nonrkat', 'nonrkat.validasi_status', 'nonrkat.nama_status', 'user.fullname', 'struktur.nama_struktur', 'struktur_child1.nama_struktur_child1', 'struktur_child2.nama_struktur_child2', 'nonrkat.created_at')
                ->distinct()
                ->orderBy('nonrkat.id_nonrkat', 'DESC')
                ->get()
        ]);
    }

    // get complete pengajuan
    public function getCompleted()
    {
        return response()->json([
            'data' => NonRKATModel::join('nonrkat_validasi', 'nonrkat.id_nonrkat', 'nonrkat_validasi.nonrkat_id')
                ->join('user', 'nonrkat.id_user', 'user.id_user')
                ->join('struktur', 'user.id_struktur', 'struktur.id_struktur')
                ->join('struktur_child1', 'user.id_struktur_child1', 'struktur_child1.id_struktur_child1')
                ->join('struktur_child2', 'user.id_struktur_child2', 'struktur_child2.id_struktur_child2')
                ->where('nonrkat.lpj_keuangan', '!=', null)
                ->orWhere('nonrkat.lpj_keuangan', '!=', '')
                ->where('nonrkat.lpj_kegiatan', '!=', null)
                ->orWhere('nonrkat.lpj_kegiatan', '!=', '')
                ->whereHas('validasi', function ($query) {
                    $query->where('status_validasi', 4)
                        ->where('id_struktur', 24)
                        ->orWhere('id_struktur', 21);
                })
                ->select('user.id_user', 'nonrkat.id_nonrkat', 'nonrkat.validasi_status', 'nonrkat.nama_status', 'user.fullname', 'struktur.nama_struktur', 'struktur_child1.nama_struktur_child1', 'struktur_child2.nama_struktur_child2', 'nonrkat.created_at')
                ->distinct()
                ->orderBy('nonrkat.id_nonrkat', 'DESC')
                ->get()
        ]);
    }

    /**
     * Status
     */
    public function status($params)
    {
        $pengajuan = NonRKATModel::join('user', 'nonrkat.id_user', 'user.id_user')
            ->join('struktur', 'user.id_struktur', 'struktur.id_struktur')
            ->join('struktur_child1', 'user.id_struktur_child1', 'struktur_child1.id_struktur_child1')
            ->join('struktur_child2', 'user.id_struktur_child2', 'struktur_child2.id_struktur_child2')
            ->where('nonrkat.id_nonrkat', $params)
            ->select('nonrkat.id_nonrkat', 'struktur.level', 'struktur.nama_struktur', 'struktur_child1.nama_struktur_child1', 'struktur_child2.nama_struktur_child2')
            ->first();

        $sekniv = 0;
        $warek = 0;
        $status = [];
        if ($pengajuan->level == "1" || $pengajuan->level == "2") {
            if ($pengajuan->nama_struktur_child1 == "0") {
                array_push($status, [
                    "id_user" => $this->getID($pengajuan->nama_struktur, $pengajuan->nama_struktur_child1, $pengajuan->nama_struktur_child2),
                    "nama_struktur" => $pengajuan->nama_struktur,
                    "status" => $this->statusNull($this->getID($pengajuan->nama_struktur, $pengajuan->nama_struktur_child1, $pengajuan->nama_struktur_child2), $params, 1)
                ]);
            } else {
                array_push(
                    $status,
                    [
                        "id_user" => $this->getID($pengajuan->nama_struktur, $pengajuan->nama_struktur_child1, '0'),
                        "nama_struktur" => $pengajuan->nama_struktur_child1,
                        "status" => $this->statusNull($this->getID($pengajuan->nama_struktur, $pengajuan->nama_struktur_child1, '0'), $params, 1)
                    ],
                    [
                        "id_user" => $this->getID($pengajuan->nama_struktur, '0', '0'),
                        "nama_struktur" => $pengajuan->nama_struktur,
                        "status" => $this->statusNull($this->getID($pengajuan->nama_struktur, '0', '0'), $params, 2, $pengajuan->level == 1 ? $sekniv : false)
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
                        "status" => $this->statusNull($this->getID($pengajuan->nama_struktur, $pengajuan->nama_struktur_child1, $pengajuan->nama_struktur_child2), $params, 1)
                    ]
                );
            } else {
                array_push(
                    $status,
                    [
                        "id_user" => $this->getID($pengajuan->nama_struktur, $pengajuan->nama_struktur_child1, '0'),
                        "nama_struktur" => $pengajuan->nama_struktur_child1,
                        "status" => $this->statusNull($this->getID($pengajuan->nama_struktur, $pengajuan->nama_struktur_child1, '0'), $params, 1)
                    ],
                    [
                        "id_user" => $this->getID($pengajuan->nama_struktur, '0', '0'),
                        "nama_struktur" => $pengajuan->nama_struktur,
                        "status" => $this->statusNull($this->getID($pengajuan->nama_struktur, '0', '0'), $params, 2, $pengajuan->level == 3 ? $warek : false)
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
                        "status" => $this->statusNull($this->getID($pengajuan->nama_struktur, $pengajuan->nama_struktur_child1, '0'), $params, 1)
                    ]
                );
            } else {
                array_push(
                    $status,
                    [
                        "id_user" => $this->getID($pengajuan->nama_struktur, $pengajuan->nama_struktur_child1, $pengajuan->nama_struktur_child2),
                        "nama_struktur" => $pengajuan->nama_struktur_child2,
                        "status" => $this->statusNull($this->getID($pengajuan->nama_struktur, $pengajuan->nama_struktur_child1, $pengajuan->nama_struktur_child2), $params, 1)
                    ],
                    [
                        "id_user" => $this->getID($pengajuan->nama_struktur, $pengajuan->nama_struktur_child1, '0'),
                        "nama_struktur" => $pengajuan->nama_struktur_child1,
                        "status" => $this->statusNull($this->getID($pengajuan->nama_struktur, $pengajuan->nama_struktur_child1, '0'), $params, 2)
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
                "status" => $this->statusNull($struktur[3]->id_user, $params, 2)
            ],
            [
                "id_user" => $struktur[2]->id_user,
                "nama_struktur" => $struktur[2]->nama_struktur,
                "status" => $this->statusNull($struktur[2]->id_user, $params, 2, $warek)
            ],
            [
                "id_user" => $struktur[1]->id_user,
                "nama_struktur" => $struktur[1]->nama_struktur,
                "status" => $this->statusNull($struktur[1]->id_user, $params, 2)
            ],
            [
                "id_user" => $struktur[3]->id_user,
                "nama_struktur" => $struktur[3]->nama_struktur_child1,
                "status" => $this->statusNull($struktur[3]->id_user, $params, 3)
            ],
            [
                "id_user" => 1111,
                "nama_struktur" => 'LPJ',
                "status" => $this->statusNull($struktur[3]->id_user, $params, 4) && $this->statusNull($struktur[0]->id_user, $params, 4) ? true : false,
                "lpj" => [
                    // Dir Keuangan
                    [
                        "id_user" => $struktur[3]->id_user,
                        "nama_struktur" => $struktur[3]->nama_struktur_child1 . ' (LPJ Keuangan)',
                        "status" => $this->statusNull($struktur[3]->id_user, $params, 4)
                    ],
                    // Sekniv
                    [
                        "id_user" => $struktur[0]->id_user,
                        "nama_struktur" => 'Sekniv (LPJ Kegiatan)',
                        "status" => $this->statusNull($struktur[0]->id_user, $params, 4)
                    ]
                ]
            ],
            // Completed
            [
                "id_user" => 2222,
                "nama_struktur" => 'Completed',
                "status" => $this->statusNull($struktur[3]->id_user, $params, 4) && $this->statusNull($struktur[0]->id_user, $params, 4) ? true : false
            ]
        );

        return response()->json([
            "data" => $status
        ]);
    }

    public function getNext($params)
    {
        $user =  UserModel::join('struktur', 'user.id_struktur', 'struktur.id_struktur')
            ->join('struktur_child1', 'user.id_struktur_child1', 'struktur_child1.id_struktur_child1')
            ->join('struktur_child2', 'user.id_struktur_child2', 'struktur_child2.id_struktur_child2')
            ->where('id_user', $params)
            ->first();

        if ($user) {
            if ($user->nama_struktur !== '0' && $user->nama_struktur_child1 == '0' && $user->nama_struktur_child2 == '0') {
                return [
                    'message' => 'Atasan',
                    'next' => 24,
                    'user' => $user->fullname
                ];
            } elseif ($user->nama_struktur !== '0' && $user->nama_struktur_child1 !== '0' && $user->nama_struktur_child2 == '0') {
                return [
                    'message' => 'Fakultas/Unit',
                    'next' => 24,
                    'user' => $user->fullname
                ];
            } elseif ($user->nama_struktur !== '0' && $user->nama_struktur_child1 !== '0' && $user->nama_struktur_child2 !== '0') {
                return [
                    'message' => 'Sub divisi',
                    'next' => $user->id_struktur_child1,
                    'user' => $user->fullname
                ];
            }
        } else {
            return response()->json([
                'message' => 'Not found'
            ], 404);
        }
    }

    /**
     * Status
     */
    public function history($params)
    {
        $data = NonRKATModel::join('nonrkat_validasi', 'nonrkat.id_nonrkat', 'nonrkat_validasi.nonrkat_id')
            ->where('nonrkat.id_nonrkat', $params)
            ->get();

        return response()->json([
            'data' => $data ? $data : "Failed, data not found"
        ]);
    }

    /**
     * Status
     */
    public function approved(Request $request)
    {
        NonRKATModel::where('id_nonrkat', $request->id)->update([
            "validasi_status" => $request->validasi_status,
            "nama_status" => $request->nama_status,
            "next" => $request->next
        ]);

        $data = NonRKATModel::where('id_nonrkat', $request->id)->first();
        // if has request->pencairan
        if ($request->pencairan) {
            $data->update([
                "pencairan" => $request->pencairan
            ]);
        }
        // if has request->lpj_keuangan
        if ($request->lpj_keuangan) {
            $data->update([
                "lpj_keuangan" => $request->lpj_keuangan
            ]);
        }
        // if has request->lpj_kegiatan
        if ($request->lpj_kegiatan) {
            $data->update([
                "lpj_kegiatan" => $request->lpj_kegiatan
            ]);
        }
        $this->nonRkatValidasi([
            'nonrkat_id' => $data->id_nonrkat,
            'id_struktur' => $request->id_struktur,
            'validasi_status' => $request->validasi_status,
            'message' => $request->nama_status . ' ' . $request->message
        ]);
        // $this->sendMail($request->id, $request->validasi_status, $request->nama_status);

        return response()->json([
            'data' => $data ? "Data was updated" : "Failed to update data"
        ]);
    }

    /**
     * Status
     */
    public function declined(Request $request)
    {
        NonRKATModel::where('id_nonrkat', $request->id)->update([
            "validasi_status" => $request->validasi_status,
            "nama_status" => $request->nama_status,
            "next" => $request->next
        ]);
        $data = NonRKATModel::where('id_nonrkat', $request->id)->first();

        $this->nonRkatValidasi([
            'nonrkat_id' => $data->id_nonrkat,
            'id_struktur' => $request->id_struktur,
            'validasi_status' => $request->validasi_status,
            'message' => $request->nama_status . ' ' . $request->message
        ]);
        // $this->sendMail($request->id, $request->validasi_status, $request->nama_status);
        return response()->json([
            'data' => $data ? "Data was updated" : "Failed to update data"
        ]);
    }

    public function nonRkatValidasi($params)
    {
        NonValidasiModel::create([
            "nonrkat_id" => $params['nonrkat_id'],
            "id_struktur" => $params['id_struktur'],
            "status_validasi" => $params['validasi_status'],
            "message" => $params['message']
        ]);
    }

    /**
     * Status
     */
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

    public function autoproccess($params)
    {
    }

    public function statusNull($id_struktur, $id_nonrkat, $nomor, $warek = false)
    {
        if ($warek !== false) {
            $data = NonValidasiModel::join('nonrkat', 'nonrkat_validasi.nonrkat_id', 'nonrkat.id_nonrkat')
                ->where('nonrkat.id_nonrkat', $id_nonrkat)
                ->where('nonrkat_validasi.id_struktur', $id_struktur)
                ->where('nonrkat_validasi.status_validasi', $nomor)
                ->skip($warek)
                ->first();
        } else {
            $data = NonValidasiModel::join('nonrkat', 'nonrkat_validasi.nonrkat_id', 'nonrkat.id_nonrkat')
                ->where('nonrkat.id_nonrkat', $id_nonrkat)
                ->where('nonrkat_validasi.id_struktur', $id_struktur)
                ->where('nonrkat_validasi.status_validasi', $nomor)
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

    // insert to db from json file
    public function insertFromJson()
    {
        $data = collect(json_decode(file_get_contents(storage_path('nonrkat.json')), true));

        $validasi = $data->map(function ($item) {
            return [
                "nonrkat_id" => $item['id_nonrkat'],
                "id_struktur" => $item['id_user'],
                "status_validasi" => $item['validasi_status'],
                "message" => $item['fullname'] . ' - Input pengajuan',
                "created_at" => Carbon::parse($item['created_at'])->format('Y-m-d H:i:s'),
                "updated_at" => Carbon::parse($item['updated_at'])->format('Y-m-d H:i:s')
            ];
        })->toArray();

        $delete = $data->map(function ($item) {
            return [
                "id_nonrkat" => $item['id_nonrkat'],
                "id_user" => $item['id_user'],
                "next" => $item['next'],
                "nama_kegiatan" => $item['nama_kegiatan'],
                "tujuan" => $item['tujuan'],
                "latar_belakang" => $item['latar_belakang'],
                "sasaran" => $item['sasaran'],
                "target_capaian" => $item['target_capaian'],
                "bentuk_pelaksanaan_program" => $item['bentuk_pelaksanaan_program'],
                "tempat_program" => $item['tempat_program'],
                "tanggal" => $item['tanggal'],
                "bidang_terkait" => $item['bidang_terkait'],
                "id_iku_parent" => $item['id_iku_parent'],
                "id_iku_child1" => $item['id_iku_child1'],
                "id_iku_child2" => $item['id_iku_child2'],
                "biaya_program" => $item['biaya_program'],
                "bank" => $item['bank'],
                "atn" => $item['atn'],
                "no_rek" => $item['no_rek'],
                "rab" => $item['rab'],
                "status_pengajuan" => $item['status_pengajuan'],
                "pencairan" => $item['pencairan'],
                "lpj_kegiatan" => $item['lpj_kegiatan'],
                "lpj_keuangan" => $item['lpj_keuangan'],
                "validasi_status" => $item['validasi_status'],
                "nama_status" => $item['nama_status'],
                "created_at" => Carbon::parse($item['created_at'])->format('Y-m-d H:i:s'),
                "updated_at" => Carbon::parse($item['updated_at'])->format('Y-m-d H:i:s'),
            ];
        })->toArray();

        return [
            'truncate_nonrkat' => NonRKATModel::truncate() ? true : false,
            'non_rkat' => NonRKATModel::insert($delete),
            'truncate_nonrkat_validasi' => NonValidasiModel::truncate() ? true : false,
            'validasi' => NonValidasiModel::insert($validasi),
            'count' => count($data)
        ];
    }

    // get data atasan
    public function getAtasan($id_user)
    {
        $atasan = '';

        $user = UserModel::join('struktur', 'user.id_struktur', 'struktur.id_struktur')
            ->join('struktur_child1', 'user.id_struktur_child1', 'struktur_child1.id_struktur_child1')
            ->join('struktur_child2', 'user.id_struktur_child2', 'struktur_child2.id_struktur_child2')
            ->find($id_user);

        if ($user->nama_struktur !== '0') {
            $atasan = $user->nama_struktur;
        } else if ($user->nama_struktur_child1 !== '0') {
            $atasan = $user->nama_struktur_child1;
        } else if ($user->nama_struktur_child2 !== '0') {
            $atasan = $user->nama_struktur_child2;
        }

        return $atasan;
    }
}
