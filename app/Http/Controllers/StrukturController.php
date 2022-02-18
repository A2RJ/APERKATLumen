<?php

namespace App\Http\Controllers;

use App\Models\Struktur_child1Model;
use App\Models\Struktur_child2Model;
use App\Models\StrukturModel;
use Illuminate\Http\Request;

class StrukturController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return Response()->json([
            'data' => StrukturModel::join('struktur_child1', 'struktur.id_struktur', 'struktur_child1.id_struktur')
                ->join('struktur_child2', 'struktur.id_struktur_child1', 'struktur_child2.id_struktur_child1')
                ->select('struktur.*', 'struktur_child1.nama_struktur_child1', 'struktur_child2.nama_struktur_child2')
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
        // $this->validate($request, [
        //     "nama_struktur"
        // ]);

        // $data = StrukturModel::create($request->all());

        // return response()->json([
        //     'data' => $data ? "Success data was added" : "Failed add data"
        // ]);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $params
     * @return \Illuminate\Http\Response
     * 
     * Get struktur berdasarkan id_user
     * ambil data atasan masing2 akun
     */
    public function show($params)
    {
        $data = StrukturModel::join('struktur_child1', 'struktur.id_struktur', 'struktur_child1.id_struktur')
            ->join('struktur_child2', 'struktur.id_struktur_child1', 'struktur_child2.id_struktur_child1')
            ->select('struktur.id_struktur', 'struktur.nama_struktur', 'struktur_child1.nama_struktur_child1', 'struktur_child2.nama_struktur_child2')
            ->where('struktur.id_struktur', $params)
            ->get();

        return response()->json([
            'status' => $data ? $data : "Failed",
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
        $data = StrukturModel::find($params)->update($request->all());

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
        $data = StrukturModel::find($params);
        $data ? $data->delete() : "";

        return response()->json([
            'data' => $data ? "Success delete data" : "Failed, data not found"
        ]);
    }

    public function AddStruktur($nama_struktur)
    {
        // replace %20 with space
        $nama_struktur = str_replace("%20", " ", $nama_struktur);
        // if not exist, create new
        $struktur = StrukturModel::where('nama_struktur', $nama_struktur)->first();
        if (!$struktur) {
            $struktur = StrukturModel::create([
                'nama_struktur' => $nama_struktur,
                'level' => 4
            ]);
            $data = StrukturModel::create([
                'nama_struktur' => $nama_struktur,
                'level' => 4,
            ]);
            $data2 = Struktur_child1Model::create([
                'nama_struktur_child1' => '0',
                'child1_level' => 0,
                'id_struktur' => $data->id_struktur
            ]);
            Struktur_child2Model::create([
                'nama_struktur_child2' => '0',
                'id_struktur_child1' => $data2->id_struktur_child1
            ]);
        }
        return response()->json([
            'data' => StrukturModel::join('struktur_child1', 'struktur.id_struktur', 'struktur_child1.id_struktur')
                ->join('struktur_child2', 'struktur_child1.id_struktur_child1', 'struktur_child2.id_struktur_child1')
                ->select('struktur.*', 'struktur_child1.nama_struktur_child1', 'struktur_child2.nama_struktur_child2')
                ->where('struktur.nama_struktur', $nama_struktur)
                ->get()
        ]);
    }

    public function AddStrukturChild1()
    {
        $nama_struktur = 'Sekolah Pascasarjana';
        $nama_struktur_child1 = 'Wakil Direktur Sekolah Pascasarjana';
        // get id_struktur
        $struktur = StrukturModel::where('nama_struktur', $nama_struktur)->first();
        // check if exist struktur 
        if ($struktur) {
            // get id_struktur_child1
            $struktur_child1 = Struktur_child1Model::where('nama_struktur_child1', $nama_struktur_child1)->first();
            // check if exist struktur_child1
            if (!$struktur_child1) {
                // create new struktur_child1
                $struktur_child1 = Struktur_child1Model::create([
                    'nama_struktur_child1' => $nama_struktur_child1,
                    'child1_level' => 1,
                    'id_struktur' => $struktur->id_struktur
                ]);
                // create new struktur_child2
                Struktur_child2Model::create([
                    'nama_struktur_child2' => '0',
                    'id_struktur_child1' => $struktur_child1->id_struktur_child1
                ]);
            }
        } else {
            $this->AddStruktur($nama_struktur);
        }

        return response()->json([
            'data' => StrukturModel::join('struktur_child1', 'struktur.id_struktur', 'struktur_child1.id_struktur')
                ->join('struktur_child2', 'struktur_child1.id_struktur_child1', 'struktur_child2.id_struktur_child1')
                ->select('struktur.*', 'struktur_child1.nama_struktur_child1', 'struktur_child2.nama_struktur_child2')
                ->where('struktur.nama_struktur', $nama_struktur)
                ->get()
        ]);
    }
}
