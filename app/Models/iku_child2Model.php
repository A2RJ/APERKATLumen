<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class IKU_child2Model extends Model
{
    /**
     * Database table name
     */
    protected $table      = "iku_child2";
    protected $primaryKey = "id_iku_child2";
    protected $guarded = [];
    /**
     * Mass assignable columns
     */
    protected $fillable = [
        "id_iku_child1",
        "iku_child2"
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
