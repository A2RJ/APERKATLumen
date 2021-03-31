<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class validasiModel extends Model
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
        "id_pengajuan_history",
        "id_struktur",
        "status_pengajuan",
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
