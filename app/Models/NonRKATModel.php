<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class NonRKATModel extends Model
{
    /**
     * Database table name
     */
    protected $table      = "nonrkat";
    protected $primaryKey = "id_nonrkat";
    protected $guarded = [];
    /**
     * Mass assignable columns
     */
    protected $fillable = [
        "id_user",
        "next",
        "nama_kegiatan",
        "tujuan",
        "latar_belakang",
        "sasaran",
        "target_capaian",
        "bentuk_pelaksanaan_program",
        "tempat_program",
        "tanggal",
        "bidang_terkait",
        "id_iku_parent",
        "id_iku_child1",
        "id_iku_child2",
        "biaya_program",
        "bank",
        "atn",
        "no_rek",
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
        'status_pengajuan' => 'progress',
    ];

    public function validasi()
    {
        return $this->hasMany(NonValidasiModel::class, 'nonrkat_id', 'id_nonrkat');
    }

    public function user()
    {
        return $this->belongsTo(UserModel::class, 'id_user', 'id_user');
    }
}
