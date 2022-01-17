<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class PengajuanValidasiModel extends Model
{
    /**
     * Database table name
     */
    protected $table      = "pengajuan_validasi";
    protected $primaryKey = "id_validasi";
    protected $guarded = [];
    /**
     * Mass assignable columns
     */
    protected $fillable = [
        "id_pengajuan",
        "id_struktur",
        "status_validasi",
        "message"
    ];

    /**
     * Date time columns.
     */
    // protected $dates = [];
    protected $dates = [];
    /**
     * The model's default values for attributes.
     *
     * @var array
     */
    protected $attributes = [
        // 'delayed' => false,
    ];
}
