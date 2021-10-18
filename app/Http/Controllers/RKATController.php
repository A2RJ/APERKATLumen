<?php

namespace App\Http\Controllers;

use App\Models\pengajuanModel;
use Illuminate\Http\Request;
use App\Models\RKATModel;
use App\Models\UserModel;
use Illuminate\Support\Facades\DB;
use Barryvdh\DomPDF\Facade as PDF;
use Rap2hpoutre\FastExcel\FastExcel;
use Illuminate\Database\Eloquent\ModelNotFoundException;

class RKATController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return Response()->json([
            'data' => RKATModel::join('user', 'rkat.id_user', 'user.id_user')
                // ->join('struktur', 'user.id_struktur', 'struktur.id_struktur')
                // ->join('struktur_child1', 'user.id_struktur_child1', 'struktur_child1.id_struktur_child1')
                ->select('rkat.*', "user.fullname")
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
        $this->validate($request, [
            "id_user" => "required|numeric",
            "kode_rkat" => "required",
            "sasaran_strategi" => "required",
            "indikator_sasaran_strategi" => "required",
            "nama_program" => "required",
            "program_kerja" => "required",
            "deskripsi" => "required",
            "tujuan" => "required",
            "mulai_program" => "required",
            "selesai_program" => "required",
            "tempat" => "required",
            "sumber_anggaran" => "required",
            "rencara_anggaran" => "required",
            "total_anggaran" => "required",
            "anggaran_digunakan" => "required"
        ]);

        $data = RKATModel::create($request->all());

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
    public function byKode($params)
    {
        $data = RKATModel::where('id_rkat', $params)->first();

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
        $data = RKATModel::join('user', 'rkat.id_user', 'user.id_user')
            ->select('rkat.*', 'user.fullname')
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
        // $this->validation($request);

        $data = RKATModel::find($params)->update($request->all());

        return response()->json([
            'data' => $data ? "Data was updated" : "Failed to update data"
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
        $data = DB::statement('DELETE rkat, pengajuan, pengajuan_history, validasi FROM rkat
                INNER JOIN pengajuan ON rkat.id_rkat = pengajuan.kode_rkat
                INNER JOIN pengajuan_history ON pengajuan.id_pengajuan = pengajuan_history.id
                INNER JOIN validasi ON pengajuan_history.id_pengajuan = validasi.id_pengajuan_history');
        $data2 = RKATModel::where('id_rkat', '!=', '0')->delete();

        return response()->json([
            'data' => $data || $data2 ? "Success" : "Failed, data not found"
        ]);
    }
    public function hapus($params)
    {
        $data = DB::statement('DELETE rkat, pengajuan, pengajuan_history, validasi FROM rkat
                INNER JOIN pengajuan ON rkat.id_rkat = pengajuan.kode_rkat
                INNER JOIN pengajuan_history ON pengajuan.id_pengajuan = pengajuan_history.id
                INNER JOIN validasi ON pengajuan_history.id_pengajuan = validasi.id_pengajuan_history
                WHERE rkat.id_rkat = ' . $params);
        $data2 = RKATModel::where('id_rkat', $params)->delete();

        return response()->json([
            'data' => $data || $data2 ? "Success" : "Failed, data not found"
        ]);
    }

    public function kodeRKAT($params)
    {
        return Response()->json([
            'data' => RKATModel::where('id_user', $params)
                ->orWhere('kode_rkat', $params)
                ->select('rkat.id_rkat as code', 'rkat.kode_rkat as label')
                ->get()
        ]);
    }

    public function kodeRKATByValue($params)
    {
        return Response()->json([
            'data' => RKATModel::where('id_rkat', $params)
                ->select('rkat.id_rkat as value', 'rkat.kode_rkat as text')
                ->get()
        ]);
    }

    /**
     * Download all RKAT
     */
    public function PDF_RKAT()
    {
        $user = UserModel::join('rkat', 'user.id_user', 'rkat.id_user')
            ->select('user.fullname')->distinct()->get();

        $rkat = UserModel::join('rkat', 'user.id_user', 'rkat.id_user')
            ->select('user.fullname', 'rkat.kode_rkat', 'rkat.program_kerja', 'rkat.deskripsi', 'rkat.mulai_program', 'rkat.selesai_program', 'rkat.tempat', 'rkat.total_anggaran')
            ->orderBy('user.fullname')
            ->get();

        $data = [
            'user' => $user,
            'rkat' => $rkat
        ];

        $pdf = PDF::loadView('rkat', $data);
        return $pdf->download('RKAT-' . date("Y-m-d") . '.pdf');
    }

    /**
     * print selected RKAT
     */
    public function printRows(Request $request)
    {
        $user = UserModel::join('rkat', 'user.id_user', 'rkat.id_user')
            ->whereIn('rkat.id_rkat', $request->all())
            ->select('user.fullname')->distinct()->get();

        $rkat = UserModel::join('rkat', 'user.id_user', 'rkat.id_user')
            ->whereIn('rkat.id_rkat', $request->all())
            ->select('user.fullname', 'rkat.kode_rkat', 'rkat.program_kerja', 'rkat.deskripsi', 'rkat.mulai_program', 'rkat.selesai_program', 'rkat.tempat', 'rkat.total_anggaran')
            ->orderBy('user.fullname')
            ->get();

        $data = [
            'user' => $user,
            'rkat' => $rkat
        ];
        
        $pdf = PDF::loadView('rkat', $data);
        return $pdf->download('RKAT-' . date("Y-m-d") . '.pdf');
    }

    /**
     * delete selected RKAT
     */
    public function deleteRows(Request $request)
    {
        $data = RKATModel::find($request->all());
        $data ? $data->each->delete() : false;

        return response()->json([
            $data
        ]);
    }

    /**
     * Download RKAT by user
     */
    public function PDF_RKAT_Id($params)
    {
        $user = UserModel::join('rkat', 'user.id_user', 'rkat.id_user')
            ->where('user.id_user', $params)
            ->select('user.fullname')->distinct()->get();

        $rkat = UserModel::join('rkat', 'user.id_user', 'rkat.id_user')
            ->where('user.id_user', $params)
            ->select('user.fullname', 'rkat.kode_rkat', 'rkat.program_kerja', 'rkat.deskripsi', 'rkat.mulai_program', 'rkat.selesai_program', 'rkat.tempat', 'rkat.total_anggaran')
            ->orderBy('user.fullname')
            ->get();

        $data = [
            'user' => $user,
            'rkat' => $rkat
        ];

        $pdf = PDF::loadView('rkat', $data);
        return $pdf->download('RKAT-' . date("Y-m-d") . '.pdf');
    }

    /**
     * Download RKAT by kode rkat
     */
    public function pdf_kode_rkat($params)
    {
        $user = UserModel::join('rkat', 'user.id_user', 'rkat.id_user')
            ->where('rkat.kode_rkat', $params)
            ->select('user.fullname')->distinct()->get();

        $rkat = UserModel::join('rkat', 'user.id_user', 'rkat.id_user')
            ->where('rkat.kode_rkat', $params)
            ->select('user.fullname', 'rkat.kode_rkat', 'rkat.program_kerja', 'rkat.deskripsi', 'rkat.mulai_program', 'rkat.selesai_program', 'rkat.tempat', 'rkat.total_anggaran')
            ->orderBy('user.fullname')
            ->get();

        $data = [
            'user' => $user,
            'rkat' => $rkat
        ];

        $pdf = PDF::loadView('rkat', $data);
        return $pdf->download('RKAT-' . date("Y-m-d") . '.pdf');
    }

    public function uploadRKAT(Request $request)
    {
        if ($request->hasFile('file')) {
            $collection = (new FastExcel)->import($request->file('file'));
            $array = [];
            $no = 1;
            foreach ($collection as $value) {
                $dataRKAT = RKATModel::where('kode_rkat', $value["No"])->select('kode_rkat')->first();
                if ($dataRKAT == null) {
                    $array[] = [
                        "no" => $no,
                        "kode_rkat" => $value["No"],
                        "program_kerja" => $value["Program Kerja"],
                        "deskripsi" => $value["Deskripsi Program Kerja"],
                        "mulai_program" => is_string($value["Mulai"]) ? str_ireplace("/", "-", $value["Mulai"]) : $value["Mulai"]->format('d-m-Y'),
                        "selesai_program" => is_string($value["Selesai"]) ? str_ireplace("/", "-", $value["Selesai"]) : $value["Selesai"]->format('d-m-Y'),
                        "tempat" => $value["Tempat"],
                        "total_anggaran" => $value["Total Anggaran"]
                    ];
                    $no++;
                }
            }

            return response()->json(['data' => $array]);
        } else {
            return false;
        }
    }

    public function exportXls()
    {
        return (new FastExcel(UserModel::all()))->download('RKAT.xlsx');
    }

    public function postImport(Request $request, $params)
    {
        $array = [];
        foreach ($request->data as $value) {
            $array[] = [
                "kode_rkat" => $value["kode_rkat"],
                "id_user" => $params,
                "sasaran_strategi" => "-",
                "indikator_sasaran_strategi" => "-",
                "nama_program" => "-",
                "program_kerja" => $value["program_kerja"],
                "deskripsi" => $value["deskripsi"],
                "tujuan" => "-",
                "mulai_program" => date('Y-m-d', strtotime($value["mulai_program"])),
                "selesai_program" => date('Y-m-d', strtotime($value["selesai_program"])),
                "tempat" => $value["tempat"],
                "sumber_anggaran" => "-",
                "rencara_anggaran" => $value["total_anggaran"],
                "anggaran_digunakan" => "0",
                "total_anggaran" => $value["total_anggaran"],
                "created_at" => date('Y-m-d'),
                "updated_at" => date('Y-m-d')
            ];
        }

        try {
            RKATModel::insert($array);
            return response()->json([true]);
        } catch (ModelNotFoundException $th) {
            return response()->json([false]);
        }
    }
}
