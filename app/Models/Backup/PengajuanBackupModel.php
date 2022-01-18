<?php

namespace App\Models\Backup;

use Illuminate\Database\Eloquent\Model;

class PengajuanBackupModel extends Model
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
        "next",
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

    // hasMany pengajuan_history
    public function history()
    {
        return $this->hasMany(PengajuanHistoryModel::class,  'id', 'id_pengajuan');
    }

    // validasi
    public function validasi()
    {
        return $this->hasMany(PengajuanValidasiModel::class, 'id_pengajuan', 'id_pengajuan_history');
    }
}
