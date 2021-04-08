<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class rkatModel extends Model
{
    /**
     * Database table name
     */
    protected $table      = "rkat";
    protected $primaryKey = "id_rkat";
    protected $guarded = [];
    /**
     * Mass assignable columns
     */
    protected $fillable = [
        "id_user",
        "sasaran_strategi",
        "indikator_sasaran_strategi",
        "nama_program",
        "program_kerja",
        "deskripsi",
        "tujuan",
        "mulai_program",
        "selesai_program",
        "tempat",
        "sumber_anggaran",
        "rencara_anggaran",
        "total_anggaran"
    ];
    // public $incrementing = false;
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
        // 'kode_rkat' => false,
    ];
}
