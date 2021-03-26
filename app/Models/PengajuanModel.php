<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class pengajuanModel extends Model
{
    protected $table      = "pengajuan";
    protected $primaryKey = "id_pengajuan";
    protected $allowedFields = ["id_pengajuan", "id_rkat", "target_capaian", "bentuk_pelaksanaan_program", "tempat_program", "tanggal", "bidang_terkait", "id_iku_parent", "id_iku_child1", "id_iku_child2", "biaya_program", "rab", "status_pengajuan", "created_at", "updated_at", ];
}
