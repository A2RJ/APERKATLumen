<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class struktur_childModel extends Model
{
    protected $table      = "struktur_child";
    protected $primaryKey = "id_struktur_child";
    protected $allowedFields = ["id_struktur_child", "id_struktur", "nama_struktur_child", ];
}
