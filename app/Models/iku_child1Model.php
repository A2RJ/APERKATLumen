<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class iku_child1Model extends Model
{
    protected $table      = "iku_child1";
    protected $primaryKey = "id_iku_child1";
    protected $allowedFields = ["id_iku_child1", "id_iku_parent", "iku_child1", ];
}
