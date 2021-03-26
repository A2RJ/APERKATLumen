<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class iku_parentModel extends Model
{
    protected $table      = "iku_parent";
    protected $primaryKey = "id_iku_parent";
    protected $allowedFields = ["id_iku_parent", "iku_parent", ];
}
