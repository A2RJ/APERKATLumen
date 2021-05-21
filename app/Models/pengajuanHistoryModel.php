<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class pengajuanHistoryModel extends Model
{
    /**
     * Database table name
     */
    protected $table      = "pengajuan_history";
    protected $primaryKey = "id_pengajuan";
    protected $guarded = [];
    /**
     * Mass assignable columns
     */
    protected $fillable = [
        "id_rkat",
        "target_capaian",
        "bentuk_pelaksanaan_program",
        "tempat_program",
        "tanggal",
        "bidang_terkait",
        "id_iku_parent",
        "id_iku_child1",
        "id_iku_child2",
        "biaya_program",
        "rab",
        "pencairan",
        "lpj_kegiatan",
        "lpj_keuangan",
        "validasi_status",
        "nama_status"
    ];

    /**
     * Date time columns.
     */
    protected $dates = [];
    /**
     * The model's default values for attributes.
     *
     * @var array
     */
    protected $attributes = [
        // 'status_pengajuan' => 'progress',
    ];
}
