<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class strukturModel extends Model
{
    protected $table      = "struktur";
    protected $primaryKey = "id_struktur";
    protected $allowedFields = ["id_struktur", "level", "nama_struktur", ];
}
