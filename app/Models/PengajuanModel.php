<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class pengajuanModel extends Model
{
    /**
     * Database table name
     */
    protected $table      = "pengajuan";
    protected $primaryKey = "id_pengajuan";
    protected $guarded = [];
    /**
     * Mass assignable columns
     */
    protected $fillable = [
        "kode_rkat",
        "id_user",
        "target_capaian",
        "bentuk_pelaksanaan_program",
        "tempat_program",
        "tanggal",
        "bidang_terkait",
        "id_iku_parent",
        "id_iku_child1",
        "id_iku_child2",
        "biaya_program",
        "rab"
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
        'status_pengajuan' => 'progress',
    ];
}
