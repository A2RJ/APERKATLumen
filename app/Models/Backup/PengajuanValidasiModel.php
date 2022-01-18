<?php

namespace App\Models\Backup;

use Illuminate\Database\Eloquent\Model;

class PengajuanValidasiModel extends Model
{
    /**
     * Database table name
     */
    protected $table      = "validasi";
    protected $primaryKey = "id_validasi";
    protected $guarded = [];
    /**
     * Mass assignable columns
     */
    protected $fillable = [
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
