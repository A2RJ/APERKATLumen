<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class iku_child2Model extends Model
{
    protected $table      = "iku_child2";
    protected $primaryKey = "id_iku_child2";
    protected $allowedFields = ["id_iku_child2", "id_iku_parent", "iku_child2", ];
}
