<?php

namespace App\Http\Controllers;

use App\Models\User;
use App\Models\UserModel;
use Illuminate\Http\Request;
use mysqli;
use Rap2hpoutre\FastExcel\FastExcel;

class Utils extends Controller
{
    public function index()
    {
        // $user = User::with(['rkat' => function ($query) {
        //     $query->where('period', 'like', '%2022%');
        // }])
        //     ->get();
        // $user = $user->map(function ($item) {
        //     return [
        //         'id_user' => $item->id_user,
        //         'fullname' => $item->fullname,
        //         'email' => $item->email,
        //         'total' => $item->rkat->count(),
        //         'period-2022' => $item->rkat->filter(function ($item) {
        //             return substr($item->period, 0, 4) === '2022';
        //         })->count(),
        //         'past-period' => $item->rkat->filter(function ($item) {
        //             return substr($item->period, 0, 4) !== '2022';
        //         })->count(),
        //         'rkat' => $item->rkat->map(function ($item) {
        //             return [
        //                 'id_rkat' => $item->id_rkat,
        //                 'period' => $item->period,
        //                 'kode_rkat' => $item->kode_rkat,
        //                 'nama_program' => $item->nama_program,
        //                 'program_kerja' => $item->program_kerja,
        //             ];
        //         // })->filter(function ($item) {
        //         //     return $item['nama_program'] === '-';
        //         })
        //     ];
        // // })
        // // ->filter(function ($item) {
        // //     return $item['total'] > 0;
        // });
        // return view("update", compact('user'));
    }

    public function getExel()
    {
        return (new FastExcel)->import('file.xlsx', function ($line) {
            return [
                'name' => $line['Coba 1'],
                'email' => $line['Coba 2'],
                'phone' => $line['Coba 3'],
            ];
        });
    }

    public function update(Request $request)
    {
        if ($request->nama_program) {
            $rkat = UserModel::find($request->id_user)->rkat()->where('id_rkat', $request->id_rkat)->first();
            $rkat->nama_program = $request->nama_program;
            $rkat->save();
            return redirect("/");
        } else {
            return "nama_program tidak boleh kosong";
        }
    }

    function backupDatabaseAllTables()
    {
        $db = new mysqli(env('DB_HOST'), env('DB_USERNAME'), env('DB_PASSWORD'), env('DB_DATABASE'));
        $tables = '*';
        return $tables;
        
        if ($tables == '*') {
            $tables = array();
            $result = $db->query("SHOW TABLES");
            while ($row = $result->fetch_row()) {
                $tables[] = $row[0];
            }
        } else {
            $tables = is_array($tables) ? $tables : explode(',', $tables);
        }

        $return = '';

        foreach ($tables as $table) {
            $result = $db->query("SELECT * FROM $table");
            $numColumns = $result->field_count;

            /* $return .= "DROP TABLE $table;"; */
            $result2 = $db->query("SHOW CREATE TABLE $table");
            $row2 = $result2->fetch_row();

            $return .= "\n\n" . $row2[1] . ";\n\n";

            for ($i = 0; $i < $numColumns; $i++) {
                while ($row = $result->fetch_row()) {
                    $return .= "INSERT INTO $table VALUES(";
                    for ($j = 0; $j < $numColumns; $j++) {
                        $row[$j] = addslashes($row[$j]);
                        $row[$j] = $row[$j];
                        if (isset($row[$j])) {
                            $return .= '"' . $row[$j] . '"';
                        } else {
                            $return .= '""';
                        }
                        if ($j < ($numColumns - 1)) {
                            $return .= ',';
                        }
                    }
                    $return .= ");\n";
                }
            }

            $return .= "\n\n\n";
        }

        $handle = fopen('your_db_' . time() . '.sql', 'w+');
        fwrite($handle, $return);
        fclose($handle);
        echo "Database Export Successfully!";
    }
}
