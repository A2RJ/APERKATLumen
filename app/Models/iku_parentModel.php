<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class Iku_ParentModel extends Model
{
    /**
     * Database table name
     */
    protected $table      = "iku_parent";
    protected $primaryKey = "id_iku_parent";
    protected $guarded = [];
    /**
     * Mass assignable columns
     */
    protected $fillable = [
        "iku_parent"
    ];

    /**
     * Date time columns.
     */
    // protected $dates = [];
    protected $dates = false;
    /**
     * The model's default values for attributes.
     *
     * @var array
     */
    protected $attributes = [
        // 'delayed' => false,
    ];
}
